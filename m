Return-Path: <devicetree+bounces-69003-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4381C8CE4D8
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 13:26:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0011C281F03
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 11:26:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDFF186AE7;
	Fri, 24 May 2024 11:26:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DWOZeX6T"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA4278593B
	for <devicetree@vger.kernel.org>; Fri, 24 May 2024 11:26:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716549977; cv=none; b=HdDbu0cnHEdUDMceivkf53EV3VZyV+dFITVmMnhlApWCFkFC0SrBUvNm5om7+f+RxiwKtbz+szaBIW65G3l+d8ZKEOcQjj17nf/kD3jj04JzrwfTeMnUCy4A7c11mx1nYOjTpnyDtpuEMTI/AApxEz/v0AAGqn6xi79MLrg9sRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716549977; c=relaxed/simple;
	bh=KCII9VvhTDTvyblIy2kt5S8OlDcHA9ogMutW/tsAaBo=;
	h=Date:Content-Type:MIME-Version:From:To:Cc:In-Reply-To:References:
	 Message-Id:Subject; b=pAJX4gb+iiHVM+HaDCzJiof4uNXsQ3M/TK3NKj0pKcwE22rpjuK0/doT1W68g+gFHNODsnjvas1zeZx6uSchUuBYoTaU5z1m0ikKJDzEFFfltWHug+duasbSviYg5NDPQnOpfzgHafrSFWl4/S5WnDLH2CSx6hiqCrarowkni3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DWOZeX6T; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6F28C32782;
	Fri, 24 May 2024 11:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716549977;
	bh=KCII9VvhTDTvyblIy2kt5S8OlDcHA9ogMutW/tsAaBo=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=DWOZeX6Tk0NC57W0YtgVJEZLodphgxVbDKoCA54TTdEve3netFZn6FEkvDJVMJMRu
	 I75BCayT1MSigUG96V2JCMqDyZIXGBskh14PMWMjZHCwBSxaEVTlDxGIqSNERipHHu
	 pi+kAzkDv3RIWba3/zH4WSqJ+9SWXcBd8EFCQrGjP+14OPPTLWrnToaiO0M3lGpAOf
	 HgtUp4MQbby6P/a5KPpSlLS57J4KNeL36/Pce43hcGyQdA056e1Ge2xVLW8FYUclze
	 Bz9D5Ndg4k6PMUOR8ujQEQQFpMagAa/PdQ2OI7Erki9AiRZldODLI5Yw5jVg4+96Yj
	 DNW8/ZzrK3LXw==
Date: Fri, 24 May 2024 06:26:15 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Ryan Walklin <ryan@testtoast.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>, 
 dri-devel@lists.freedesktop.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 David Airlie <airlied@gmail.com>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org, 
 Sam Ravnborg <sam@ravnborg.org>, Daniel Vetter <daniel@ffwll.ch>, 
 Hironori KIKUCHI <kikuchan98@gmail.com>
In-Reply-To: <20240524103506.187277-2-ryan@testtoast.com>
References: <20240524103506.187277-1-ryan@testtoast.com>
 <20240524103506.187277-2-ryan@testtoast.com>
Message-Id: <171654997579.661410.2485055226401871531.robh@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: display: panel: Add WL-355608-A8
 panel


On Fri, 24 May 2024 22:33:13 +1200, Ryan Walklin wrote:
> The WL-355608-A8 is a 3.5" 640x480@60Hz RGB LCD display from an unknown
> OEM, used in a number of handheld gaming devices made by Anbernic.
> 
> Add a device tree binding for the panel.
> 
> Signed-off-by: Ryan Walklin <ryan@testtoast.com>
> ---
>  .../bindings/display/panel/wl-355608-a8.yaml  | 68 +++++++++++++++++++
>  1 file changed, 68 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/wl-355608-a8.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/display/panel/wl-355608-a8.example.dtb: /example-0/spi/panel@0: failed to match any schema with compatible: ['wl_355608_a8']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20240524103506.187277-2-ryan@testtoast.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


