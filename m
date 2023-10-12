Return-Path: <devicetree+bounces-8141-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C2E47C6D62
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 13:53:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 24DFF1C2117B
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 11:53:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30FE224A05;
	Thu, 12 Oct 2023 11:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N++DBatt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14CD824213
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 11:53:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AAA60C433CA;
	Thu, 12 Oct 2023 11:53:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697111606;
	bh=XfvMmvJdTaMZMG3N1c9TZP8HCU2GkB8oEwA4gts662M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=N++DBattEnKEgH4U30y7XWUjy9uwbhsnZjUHqSmoNch7aCC5k2R8GEkUT8DcofRSy
	 PoLYxz6KXYe2M2TAlUDRdcIap1w0y02RIiJQXTLzxFb5HGDiivpoa2mAaZKl012GPh
	 kob3hqVON1E5X115gmKekeO2RKT4MCpzU/HiJBTnlRE8M8JPevYFlpxO7IGmGPRSZb
	 3N40Akdj9Nz5dDIFzwhW7HP8MBk1rFJdb4a7cdiehLH+QLYOc9XLD0D4e6EWJs91p/
	 ywNU4/yYAVywLVLDJUQ/fVEYCUnpWXS9ZHZRnhcMD9UWKSRTGeBzrGtlj7JuhB8rAF
	 9wwKvHzltImdQ==
Received: (nullmailer pid 286509 invoked by uid 1000);
	Thu, 12 Oct 2023 11:53:24 -0000
Date: Thu, 12 Oct 2023 06:53:24 -0500
From: Rob Herring <robh@kernel.org>
To: Javier Martinez Canillas <javierm@redhat.com>
Cc: linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, Conor Dooley <conor@kernel.org>, Peter Robinson <pbrobinson@gmail.com>, Maxime Ripard <mripard@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>, Conor Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 6/6] dt-bindings: display: Add SSD132x OLED controllers
Message-ID: <20231012115324.GB266951-robh@kernel.org>
References: <20231012065822.1007930-1-javierm@redhat.com>
 <20231012065822.1007930-7-javierm@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231012065822.1007930-7-javierm@redhat.com>

On Thu, Oct 12, 2023 at 08:58:15AM +0200, Javier Martinez Canillas wrote:
> Add a Device Tree binding schema for the OLED panels based on the Solomon
> SSD132x family of controllers.
> 
> Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
> ---
> 
> Changes in v2:
> - Remove unnecessary 'oneOf' in the SSD132x DT binding schema (Conor Dooley).
> - Remove unused DT nodes labels in the binding schema examples (Conor Dooley).
> - Split out common Solomon properties into a separate schema (Rob Herring).
> 
>  .../bindings/display/solomon,ssd132x.yaml     | 89 +++++++++++++++++++
>  MAINTAINERS                                   |  2 +-
>  2 files changed, 90 insertions(+), 1 deletion(-)
>  create mode 100644 Documentation/devicetree/bindings/display/solomon,ssd132x.yaml

Reviewed-by: Rob Herring <robh@kernel.org>

