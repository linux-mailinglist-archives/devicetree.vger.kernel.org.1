Return-Path: <devicetree+bounces-291066-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0JqVLNis8GnOWwEAu9opvQ
	(envelope-from <devicetree+bounces-291066-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 14:49:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B0B485149
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 14:49:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D81D33064A83
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 12:32:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07BF442EEA9;
	Tue, 28 Apr 2026 12:32:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k3sLtSZc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70E6C42882D;
	Tue, 28 Apr 2026 12:32:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777379534; cv=none; b=LOVfTgCDrH86J5fA4/jYoKgm4B5/BA3N3lFk3VBBxHoHIXfiTyC8X/13FiL11YS31u6LfgpwBwYPDza/YnVBDtLT1V+VqmVxdmg0h8GKPANMRI2WP4dUuJ5HC6lcBaySTzkbbnqhaujhbGTQ/q1nZsI9BkB4UgiH9dqC4xD5IAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777379534; c=relaxed/simple;
	bh=x8RBNMR6z4a8pPGqv5e/gKYflWjd64vzG0RvdWIJAf0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TQWBk6nH2w9GvoRns+HuzH2sv78m12Wi+EaOwAYtgOpR7n/ee97ynLMFdAur8hNIfHUJtWsHzNza16WwXOhSPWENJEImtmMgvUhru+GFZYjAvZLtKSP1g+iI4Xv2UEC9/5Z82h0YgreTF0oydOd6GTTY2q9bNGBQxqIk8zRWums=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k3sLtSZc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C64AC2BCAF;
	Tue, 28 Apr 2026 12:32:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777379533;
	bh=x8RBNMR6z4a8pPGqv5e/gKYflWjd64vzG0RvdWIJAf0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=k3sLtSZclP2//KI5Mm8cmAvW+GVme1VFrSJqV3yi8uVcYoJDJgEvd943oDVTocobq
	 BSJZow2PeF5TLIlJG6nQ91n0rxV9geCvCsdFS+6KJv6oLChXBPNt/qeVJSJdlXkLE5
	 qzWAqh9+nlHstUWlWaeOfREK7SSzE0Vs9JHygL8gPtdoy4HhFtYaJ/lMfeTNlZ59xe
	 uxzGsnoNInei6XhY2TGxdTGZF6wAdlO9RUNBvCRKhDOc/d7YWfu2vpRERfSTgJAcDh
	 ycJjOviEvEosY82UOGcfGCLdYzzorMHfsWKQSyWvDcU/Uml5aogq9MfNfiDoT2+CeS
	 cKmC6tjed/xJQ==
Message-ID: <96705fc3-332e-4bd1-acb9-7494ca83e070@kernel.org>
Date: Tue, 28 Apr 2026 07:32:11 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: reset: altr: add COMBOPHY_RESET for Agilex5
Content-Language: en-US
To: Tanmay Kathpalia <tanmay.kathpalia@altera.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260428092615.29681-1-tanmay.kathpalia@altera.com>
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <20260428092615.29681-1-tanmay.kathpalia@altera.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 44B0B485149
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-291066-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dinguyen@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,altera.com:email]

Hi Tanmay

On 4/28/26 04:26, Tanmay Kathpalia wrote:
> Add COMBOPHY_RESET definition at index 38 for the combo PHY reset
> control on Altera Agilex5 SoCs. This reset is used by peripherals
> such as the SD/eMMC controller that share the combo PHY.
> 
> Signed-off-by: Tanmay Kathpalia <tanmay.kathpalia@altera.com>
> ---
>   include/dt-bindings/reset/altr,rst-mgr-s10.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/dt-bindings/reset/altr,rst-mgr-s10.h b/include/dt-bindings/reset/altr,rst-mgr-s10.h
> index 04c4d0c6fd34..c2505b9eb63e 100644
> --- a/include/dt-bindings/reset/altr,rst-mgr-s10.h
> +++ b/include/dt-bindings/reset/altr,rst-mgr-s10.h
> @@ -22,7 +22,7 @@
>   #define USB0_RESET		35
>   #define USB1_RESET		36
>   #define NAND_RESET		37
> -/* 38 is empty */
> +#define COMBOPHY_RESET		38
>   #define SDMMC_RESET		39
>   #define EMAC0_OCP_RESET		40
>   #define EMAC1_OCP_RESET		41

Please include the patch(es) that will make use of this change.

Thanks,
Dinh

