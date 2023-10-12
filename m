Return-Path: <devicetree+bounces-7987-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B0ED47C6655
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 09:24:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5A6D3282029
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 07:23:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CEC6DF5C;
	Thu, 12 Oct 2023 07:23:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UcQnC693"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58D27DDDC
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 07:23:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 849A3C433CA;
	Thu, 12 Oct 2023 07:23:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697095436;
	bh=hkw3GPAiv3QqU91HXOgB/Ith+aGeVqJdKk6L8jddygI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=UcQnC693fcCYJEIdqIGncIc2MkU8dRRhRl8UGYKg8UXWSmEtvl5Igbu8rz8HaKJKK
	 SLpSqhJCWU+hynzbei9nk0NTLqDvGpeEK7Dcn3Wz5MG8iI3fFPHAsd9WWjN6tYfFJH
	 24arMGPIsnrNZFTIqH+osU2fmL5YQkW8WhGDG+bJjRUgJQEO9MSK4CLo5eRrLnfIh7
	 OpEwVtdwCBfxPYZXRy188se1JThva4MmUjqTQPQeAcLriymhKVeRjvraDdV6gO7Y/T
	 k3+D6I2eT1dzLhbvQHCfOtYeC/W2/cYHg7MKjO1g+pUfAEGEYkQXDdqUlg9+jR6bw4
	 /x7nIz+GmvVJw==
Received: (nullmailer pid 3961449 invoked by uid 1000);
	Thu, 12 Oct 2023 07:23:54 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Javier Martinez Canillas <javierm@redhat.com>
Cc: Peter Robinson <pbrobinson@gmail.com>, linux-kernel@vger.kernel.org, Conor Dooley <conor@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>, David Airlie <airlied@gmail.com>, devicetree@vger.kernel.org, Maxime Ripard <mripard@kernel.org>
In-Reply-To: <20231012065822.1007930-6-javierm@redhat.com>
References: <20231012065822.1007930-1-javierm@redhat.com>
 <20231012065822.1007930-6-javierm@redhat.com>
Message-Id: <169709543435.3961410.18389221947480753316.robh@kernel.org>
Subject: Re: [PATCH v2 5/6] dt-bindings: display: Split common Solomon
 properties in their own schema
Date: Thu, 12 Oct 2023 02:23:54 -0500


On Thu, 12 Oct 2023 08:58:14 +0200, Javier Martinez Canillas wrote:
> There are DT properties that can be shared across different Solomon OLED
> Display Controller families. Split them into a separate common schema to
> avoid these properties to be duplicated in different DT bindings schemas.
> 
> Suggested-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
> ---
> 
> (no changes since v1)
> 
>  .../bindings/display/solomon,ssd-common.yaml  | 42 +++++++++++++++++++
>  .../bindings/display/solomon,ssd1307fb.yaml   | 28 +------------
>  MAINTAINERS                                   |  1 +
>  3 files changed, 44 insertions(+), 27 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/display/solomon,ssd-common.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/display/solomon,ssd-common.yaml:42:27: [error] no new line character at the end of file (new-line-at-end-of-file)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231012065822.1007930-6-javierm@redhat.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


