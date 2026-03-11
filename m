Return-Path: <devicetree+bounces-274327-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GAjgBJbGsWnvFAAAu9opvQ
	(envelope-from <devicetree+bounces-274327-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 20:46:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A2A426997C
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 20:46:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 29070314C203
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 19:44:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEC113164AA;
	Wed, 11 Mar 2026 19:44:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F247D2D73B5
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 19:44:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773258287; cv=none; b=FB4Ns/YLOftXH6S7lLhtxgb7++ZfuhG6YnxlmUmhJWHKvqxuPgRB93O40VLEySdIUdaoCk20FFQgkZu3pN4YJcviD+0xeJntpLSXmJWgkU4t9iRXtxj/B923x9NfxRiHfu5Y9X6VpVQeRJxB9Xzs/EqpEK1XIODZKe7mciUBi2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773258287; c=relaxed/simple;
	bh=L2s7bOr55jaBbXvz74eqFCrTb0rxRJtxsxw10f92K0I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=poDqQqcS6KIO4dIgw7NrDx72vn5yGwaJO/nam4A5vtAn0tdeIzJ/NUkthuo8jvSzKGE57JnvlTqa4FOZWXfu0490nAem93kqMBWiWTHXClW7Dcblcx5rmFDFVccOLTDJ0GEJPn+iBkEE6A3oM7F7i3PoDjYoW14HOa4urmJHiw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4ED9916F2
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 12:44:39 -0700 (PDT)
Received: from [192.168.0.1] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 4FDBF3F694
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 12:44:45 -0700 (PDT)
Date: Wed, 11 Mar 2026 19:42:29 +0000
From: Liviu Dudau <liviu.dudau@arm.com>
To: Cunyuan Liu <cunyuan.liu@cixtech.com>
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	neil.armstrong@linaro.org, heiko@sntech.de, marex@nabladev.com,
	dev@kael-k.io, prabhakar.mahadev-lad.rj@bp.renesas.com,
	andre.przywara@arm.com, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	cix-kernel-upstream@cixtech.com
Subject: Re: [PATCH 3/3] drm/komeda: Add support for Arm China Linlon-D6
Message-ID: <abHFpSd0LLuNxLHo@e142607>
References: <20260311055506.12023-1-cunyuan.liu@cixtech.com>
 <20260311055506.12023-4-cunyuan.liu@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260311055506.12023-4-cunyuan.liu@cixtech.com>
X-Spamd-Result: default: False [0.64 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[arm.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274327-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,sntech.de,nabladev.com,kael-k.io,bp.renesas.com,arm.com,lists.freedesktop.org,vger.kernel.org,cixtech.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[liviu.dudau@arm.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cixtech.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,arm.com:email]
X-Rspamd-Queue-Id: 8A2A426997C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 11, 2026 at 01:55:06PM +0800, Cunyuan Liu wrote:
> Arm China Linlon-D6 is register-compatible with the Mali-D71 display
> pipeline for the purpose of basic modesetting.
> 
> On Linlon-D6, the PRODUCT_ID register is located at the same offset as on
> Mali-D71 and reports 0x0060. The IP also exposes the same Komeda top-level
> block layout expected by the existing d71_identify() probing flow, so we
> can reuse the D71 function table to bring up the display engine.
> 
> Signed-off-by: Cunyuan Liu <cunyuan.liu@cixtech.com>

Reviewed-by: Liviu Dudau <liviu.dudau@arm.com>

Best regards,
Liviu

> ---
>  drivers/gpu/drm/arm/display/include/malidp_product.h | 1 +
>  drivers/gpu/drm/arm/display/komeda/d71/d71_dev.c     | 1 +
>  drivers/gpu/drm/arm/display/komeda/komeda_drv.c      | 1 +
>  3 files changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/arm/display/include/malidp_product.h b/drivers/gpu/drm/arm/display/include/malidp_product.h
> index 16a8a2c22c42..6f954bcdf40e 100644
> --- a/drivers/gpu/drm/arm/display/include/malidp_product.h
> +++ b/drivers/gpu/drm/arm/display/include/malidp_product.h
> @@ -20,6 +20,7 @@
>  /* Mali-display product IDs */
>  #define MALIDP_D71_PRODUCT_ID	0x0071
>  #define MALIDP_D32_PRODUCT_ID	0x0032
> +#define LINLONDP_D6_PRODUCT_ID	0x0060
>  
>  union komeda_config_id {
>  	struct {
> diff --git a/drivers/gpu/drm/arm/display/komeda/d71/d71_dev.c b/drivers/gpu/drm/arm/display/komeda/d71/d71_dev.c
> index 80973975bfdb..f105e3a2dce2 100644
> --- a/drivers/gpu/drm/arm/display/komeda/d71/d71_dev.c
> +++ b/drivers/gpu/drm/arm/display/komeda/d71/d71_dev.c
> @@ -628,6 +628,7 @@ d71_identify(u32 __iomem *reg_base, struct komeda_chip_info *chip)
>  	switch (product_id) {
>  	case MALIDP_D71_PRODUCT_ID:
>  	case MALIDP_D32_PRODUCT_ID:
> +	case LINLONDP_D6_PRODUCT_ID:
>  		funcs = &d71_chip_funcs;
>  		break;
>  	default:
> diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_drv.c b/drivers/gpu/drm/arm/display/komeda/komeda_drv.c
> index 358c1512b087..4bb5f250e95e 100644
> --- a/drivers/gpu/drm/arm/display/komeda/komeda_drv.c
> +++ b/drivers/gpu/drm/arm/display/komeda/komeda_drv.c
> @@ -104,6 +104,7 @@ static int komeda_platform_probe(struct platform_device *pdev)
>  static const struct of_device_id komeda_of_match[] = {
>  	{ .compatible = "arm,mali-d71", .data = d71_identify, },
>  	{ .compatible = "arm,mali-d32", .data = d71_identify, },
> +	{ .compatible = "armchina,linlon-d6", .data = d71_identify, },
>  	{},
>  };
>  
> -- 
> 2.53.0
> 

-- 
====================
| I would like to |
| fix the world,  |
| but they're not |
| giving me the   |
 \ source code!  /
  ---------------
    ¯\_(ツ)_/¯

