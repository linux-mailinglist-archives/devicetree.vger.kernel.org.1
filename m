Return-Path: <devicetree+bounces-277905-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +OXhOrYmvGkxtgIAu9opvQ
	(envelope-from <devicetree+bounces-277905-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 17:39:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id EE4192CEF31
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 17:39:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2DBEF30516A3
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 16:33:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 840863ECBFE;
	Thu, 19 Mar 2026 16:32:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29F2D3E8C46
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 16:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773937949; cv=none; b=a4kxl5pbC3LX0xgvELW1Qqyi3X3ijy4Kn+vW0kyNxiCjCPvkAADQVirDGOy06uUyTFLJgfV+8b9DiHQpHKgYXO+47TCZhpGBE/QwiXNGsBLrcqyoSb9kRL0oxFPEGd7RdjqAuOy5ApTHg+kPggSj38VT/0V6ozr2GdJySOJ6t0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773937949; c=relaxed/simple;
	bh=st7Bx7OxBoVg7ANlPQJRDxKU7BhZR2ill3AXnEAT8zY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=me9YDnfWN9PTGB2odC4uAwVJM3KOMPUJ9c9EuSkLDVQrfPir6tDhXDrVMwfAUnxYDmS6Rv4G8fCYckivUAUbwQMgKrggifHNzIzeUnnOXTSehig/QwKd+gvjLUaoja1GQWFDBLj4WGsbJ6f7oZFDjQSiIr2J6mp8HVnowg/WES4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 615A22247
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 09:32:17 -0700 (PDT)
Received: from [192.168.0.1] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 37E763F7BD
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 09:32:23 -0700 (PDT)
Date: Thu, 19 Mar 2026 16:32:05 +0000
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
Subject: Re: [PATCH v2 1/3] dt-bindings: vendor-prefixes: Add Arm Technology
 (China) Co., Ltd.
Message-ID: <abwlBZ0nORcTOUby@e142607>
References: <20260313033119.33686-1-cunyuan.liu@cixtech.com>
 <20260313033119.33686-2-cunyuan.liu@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260313033119.33686-2-cunyuan.liu@cixtech.com>
X-Spamd-Result: default: False [0.64 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[arm.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277905-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,sntech.de,nabladev.com,kael-k.io,bp.renesas.com,arm.com,lists.freedesktop.org,vger.kernel.org,cixtech.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[liviu.dudau@arm.com,devicetree@vger.kernel.org];
	NEURAL_SPAM(0.00)[0.541];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,arm.com:email,cixtech.com:email]
X-Rspamd-Queue-Id: EE4192CEF31
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 11:31:17AM +0800, Cunyuan Liu wrote:
> Add "armchina" vendor prefix for Arm Technology (China) Co., Ltd.
> 
> Link: https://www.armchina.com/
> 
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Cunyuan Liu <cunyuan.liu@cixtech.com>

Reviewed-by: Liviu Dudau <liviu.dudau@arm.com>

Rob, should I take the whole series through drm-misc-next or should I split the bindings
into a separate pull?

Best regards,
Liviu

> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index ee7fd3cfe203..c7ca7f43925b 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -172,6 +172,8 @@ patternProperties:
>      description: ARM Ltd.
>    "^armadeus,.*":
>      description: ARMadeus Systems SARL
> +  "^armchina,.*":
> +    description: Arm Technology (China) Co., Ltd.
>    "^armsom,.*":
>      description: ArmSoM Technology Co., Ltd.
>    "^arrow,.*":
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

