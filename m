Return-Path: <devicetree+bounces-243888-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1B2C9E1AC
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 08:57:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B86673496C5
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 07:57:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6435C29D28F;
	Wed,  3 Dec 2025 07:57:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QcvW4/s2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C15F22068F;
	Wed,  3 Dec 2025 07:57:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764748649; cv=none; b=fWpcLqneXxuWIJi/mFz0CsC1Yb/3DdoRkxjM/EbVx5KvsLRNV+05SefDp/pIUgNHlOOqoQTLgCTMqow3Eo0jrtX8bEZhkkRWVcoRC0GO5HSrXFwNjjJEVYfgmZdpfjS7gLy5/BFT6uxEoCrcgujvalv1qyxeo6ci9Wm5rxa8E8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764748649; c=relaxed/simple;
	bh=DmpitrsvxyJChA97MD5POh03xguTAl1o4n/K+C0KV1w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VbBn4LoCJJxanVxIDmimbkhnvMhjs10q/7lN0jDgeoCwxLf6EMj02PqNSku6VSF+stMVng99zwOv1LQi9Rba/SFXFg4FToDE6g2ZelgVSJaDPyCxZfrcSRplDzUmn9SpAmeq4466ITrrVS+f7oUsJ1OmC4Q9CsW7cx6njYjyyAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QcvW4/s2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 172B0C4CEFB;
	Wed,  3 Dec 2025 07:57:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764748648;
	bh=DmpitrsvxyJChA97MD5POh03xguTAl1o4n/K+C0KV1w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QcvW4/s22ujatGNYSRD/n80r8gZyk8IjqoFHbEDKhdt5YkO8JB2lw+eXCNKmJ1ANK
	 Z1v6qnf8/q2C3TH8oAjoHVgWeY1cLyiAU6slFi/i5AenvGPrBNZxFuEw1c5cvn1XRa
	 8VferID0XV20LeHH1I2jqD0u3HhpDLZFHshabw6MTPfQJLkJJWjfNEXlerzwZ+Vra1
	 S37rnqTGRw14azCPr9oRSiz/faLVq4Lbvo61cheL5IaJxBMww9zQ2ch7PPS5yG13Qj
	 A1QRqZ9bjXoHtgL3sRw2Y/P/xe8PXNfmXdFRYvNzbM4XqBnswgMBs794GLT5fLmo56
	 cQNEkS4qA19qQ==
Date: Wed, 3 Dec 2025 08:57:26 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Harikrishna Shenoy <h-shenoy@ti.com>
Cc: robh@kernel.org, Laurent.pinchart@ideasonboard.com, airlied@gmail.com, 
	andrzej.hajda@intel.com, conor+dt@kernel.org, devarsht@ti.com, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, jernej.skrabec@gmail.com, jonas@kwiboo.se, krzk+dt@kernel.org, 
	linux-kernel@vger.kernel.org, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	neil.armstrong@linaro.org, rfoss@kernel.org, s-jain1@ti.com, simona@ffwll.ch, 
	sjakhade@cadence.com, tzimmermann@suse.de, u-kumar1@ti.com, yamonkar@cadence.com, 
	pthombar@cadence.com, nm@ti.com
Subject: Re: [PATCH v4] dt-bindings: drm/bridge: Update reg-name and reg
Message-ID: <20251203-caped-bullmastiff-from-jupiter-3dcaf3@quoll>
References: <20251126092949.298530-1-h-shenoy@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251126092949.298530-1-h-shenoy@ti.com>

On Wed, Nov 26, 2025 at 02:59:49PM +0530, Harikrishna Shenoy wrote:
> Move register name constraints and reg description lists to appropriate
> compatibility sections to ensure correct register names are used with each
> compatible value. The j721e-integ registers are specific to TI SoCs and not
> required for other compatibles.
> 
> Add DSC register descriptions to align bindings with hardware capabilities.
> Structure the reg and reg-names constraints as lists according to
> compatibles using oneOf schema construct.
> 
> Fixes: 7169d082e7e6 ("dt-bindings: drm/bridge: MHDP8546 bridge binding changes for HDCP")
> Signed-off-by: Harikrishna Shenoy <h-shenoy@ti.com>
> ---
>

Thanks, looks good now!

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


