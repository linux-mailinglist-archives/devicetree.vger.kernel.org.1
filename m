Return-Path: <devicetree+bounces-263507-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oJOzHftLhmndLgQAu9opvQ
	(envelope-from <devicetree+bounces-263507-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 21:15:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A301030E0
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 21:15:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2BDE7300C7E9
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 20:15:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C73E6242D98;
	Fri,  6 Feb 2026 20:15:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="Bf6d99MG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [121.127.44.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3541B42A82
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 20:15:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=121.127.44.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770408948; cv=none; b=Oe08oH0lSICIvBCrsb3EBQ7zM3b4kcqNrNDs47qHwCrwdxFjykaN4dFPzjtNruyCvOhZy+dF5La+BiRYwCXZ9g6bnz/YdUUqHKPm+7bYn367+jmCsQPkY+w9Bg5fX409KRJgIlFXNCyqBnyrC3HdcHKt9IRI/RRxeIrdkcwi1Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770408948; c=relaxed/simple;
	bh=g6mOBE1DPqocsRlNMcSuLnt38f3VXQQ8NGTyYd0bDgk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kIi5f095cdfItwX8FscwJcouj65qBcSWntelVwzMsqcAzhS/otvwN7qLIawTCuNklISV2YEd+dYkcEqqwpDaXOWT+kowqjbX3YmUsHFQPBkL5TutOHAb4v2x2LmjfXlslSFZkWFSHoDK7IdSxeov0IDPawt1S6E5LbS3kBzDhLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=Bf6d99MG; arc=none smtp.client-ip=121.127.44.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1770408940;
 bh=XMcaTeWAU/r1ov1V+rxzFP/RRdvWOuinPWdt2XTYrys=;
 b=Bf6d99MGGz/W9WUCREF8JX3q+71xf/eWtGJUUlrBw84Kp/FF68ZMknxzw5UWXd9Df2MYPx9Nv
 lGXSI0KbnzaPeyBVhS4sZ3jjAFDmWtQOhXIu/rlN3hPSK6UWyn6TO6lXefJ2DGjgZy3Q1LyH7Uo
 vcYD1lzbQN+b91nHLTnzFuS1+mC/SOa7XOhri8lSz+Rhjj0nklk5KecIG02LQKmhi+htkQV7Ybq
 1kcP2NLnnBJP0DgTCAKpUOMyD3Vyl1E5aY6VdSK4CYQqYX17tCpgRYLNv0sj+qjcNgoi9r+oW+K
 qhBwYBkulG/bvn2PICdWh7PSbR7NY7vcfAenhGWZT5Sw==
X-Forward-Email-ID: 69864be7a0945f6de12e8c24
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 2.6.1
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <1e12c5de-7cca-460c-8e8a-cdea2b7c923a@kwiboo.se>
Date: Fri, 6 Feb 2026 21:15:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/11] dt-bindings: clk: rockchip: Add RV1103B clock
 header
To: Fabio Estevam <festevam@gmail.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Fabio Estevam <festevam@nabladev.com>, Stephen Boyd <sboyd@kernel.org>
References: <20260206181309.2696095-1-festevam@gmail.com>
 <20260206181309.2696095-3-festevam@gmail.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20260206181309.2696095-3-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kwiboo.se,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64];
	R_DKIM_ALLOW(-0.20)[kwiboo.se:s=fe-e1b5cab7be];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263507-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.976];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jonas@kwiboo.se,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kwiboo.se:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[rock-chips.com:email,nabladev.com:email]
X-Rspamd-Queue-Id: 73A301030E0
X-Rspamd-Action: no action

Hi Fabio,

On 2/6/2026 7:13 PM, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@nabladev.com>
> 
> Add the RV1103B clock and reset IDs.
> 
> Cc: Stephen Boyd <sboyd@kernel.org>
> Signed-off-by: Fabio Estevam <festevam@nabladev.com>
> ---
>  .../dt-bindings/clock/rockchip,rv1103b-cru.h  | 488 ++++++++++++++++++
>  1 file changed, 488 insertions(+)
>  create mode 100644 include/dt-bindings/clock/rockchip,rv1103b-cru.h
> 
> diff --git a/include/dt-bindings/clock/rockchip,rv1103b-cru.h b/include/dt-bindings/clock/rockchip,rv1103b-cru.h
> new file mode 100644
> index 000000000000..92c994185354
> --- /dev/null
> +++ b/include/dt-bindings/clock/rockchip,rv1103b-cru.h
> @@ -0,0 +1,488 @@
> +/* SPDX-License-Identifier: (GPL-2.0-only OR MIT) */
> +/*
> + * Copyright (c) 2024 Rockchip Electronics Co. Ltd.
> + * Author: Elaine Zhang <zhangqing@rock-chips.com>
> + */
> +
> +#ifndef _DT_BINDINGS_CLK_ROCKCHIP_RV1103B_H
> +#define _DT_BINDINGS_CLK_ROCKCHIP_RV1103B_H
> +
> +/* pll clocks */
> +#define PLL_GPLL				1
> +#define ARMCLK					2
> +#define PLL_DPLL				3
> +
> +/* clk (clocks) */
> +#define XIN_OSC0_HALF				5
> +#define CLK_GPLL_DIV24				6

Clock indices should start at 0 and be a continuous series without gaps.

[snip]

> +// PERICRU_SOFTRST_CON00(Offset:0xA00)
> +#define SRST_ARESETN_PERI_BIU			0x00000002
> +#define SRST_HRESETN_HPMCU_BIU			0x00000003
> +#define SRST_LSRESETN_PERI_BIU			0x00000004
> +#define SRST_PRESETN_PERI_BIU			0x00000005
> +#define SRST_PRESETN_RTC_BIU			0x00000006
> +#define SRST_HRESETN_BOOTROM			0x00000007

Reset indices should start at 0 and be a continuous series, they should
not encode register offset and bit information like downstream kernel.

Also please move the resets indices to a separate header, see most
recent Rockchip SoCs clock and reset additions, e.g. rk3528, rk3506 or
rk3562 for inspiration.

[snip]

> +#define CLK_NR_SRST				(SRST_PRESETN_CRU_PMU1 + 1)

Please drop this, not part of the binding.

Regards,
Jonas

> +#endif

