Return-Path: <devicetree+bounces-297739-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cKJ0DxAJBmrFdwIAu9opvQ
	(envelope-from <devicetree+bounces-297739-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 19:40:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C850D5456F4
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 19:40:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EA934300599A
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 17:40:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E9DF347FC8;
	Thu, 14 May 2026 17:40:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eegDZ2IV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69FBC34404E
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 17:40:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778780429; cv=none; b=ttCz1BvKK3HD7ypE1HKIpJgApDI7uVc/IC9Yt7z5EuyODo8qPw4yQhbTBmgjsxZM4fr7eTOAAARjqMCxJROiG0EZqnkWpL5KyI8XgvvUdAjLZa0mtkkNjbL5mKfzLE0EPjzl6YD8zyF3p3GhpxHEj9EjrZnc9Ab9v8yaMySprz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778780429; c=relaxed/simple;
	bh=c1ezc6FWuTR15R5uDPCzL/WyMmIYtLCdcnBnSRs8GlI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=H2lwaUB0MWI7BG25sOGr1HlewyB7fzsIjCRfxLCSmcelguQJ/zR5Vo11OBQByz4A0h7CG/UZdrcbipWV6VXU4darb1q8FJkQxYj4BEmlPiLnpIXsRNcA4c7nCqHR8ipaZo3T6OupZqUDLid5w+80RTupQDQ7GTBXuDkX5vKvOr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eegDZ2IV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B50A4C2BCB3;
	Thu, 14 May 2026 17:40:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778780429;
	bh=c1ezc6FWuTR15R5uDPCzL/WyMmIYtLCdcnBnSRs8GlI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=eegDZ2IVLlYeIb4/VlvIlW5ClmHaXrhnIp8rn0HlMNAFHMcABbkXzrszAnIQZ61m9
	 QUzkJjZGL+HHqk6P68aPl3XuoZBfhT2ZGCpUln1zZU2ZjrGU9aSRP14ZmH2KgDWNgL
	 gfFhlEOv3hYNmLmcVbUumQKi6Nm+CfTrWV7NXicd469tncD4mAuo8ue6kfAG+TaWy0
	 IhDYJvnWyLZuo7wVmDtI5JDbJbdL6DGuFgqhSIUhGtlc6fJCyTst0AoA1yVLNT8HXk
	 BVEPr/uZJ3kpd7M9utkE2Ut66ehS5je5BK16RbmH4fONToiC6Wk6SiK9NDLKg+L/+I
	 q99Zqll+FW41w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/3] clk: qcom: ipq5210: Use icc-clk for enabling NoC
 related clocks
Reply-To: sashiko-reviews@lists.linux.dev
To: "Varadarajan Narayanan" <varadarajan.narayanan@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260514-icc-ipq5210-v1-2-b5070dfbe460@oss.qualcomm.com>
References: <20260514-icc-ipq5210-v1-2-b5070dfbe460@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 17:40:27 +0000
Message-Id: <20260514174028.B50A4C2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: C850D5456F4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297739-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,smtp.kernel.org:mid,lists.linux.dev:replyto,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sashiko.dev:url];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Unconditional use of `icc_sync_state` causes a build failure when `=
CONFIG_INTERCONNECT` is disabled.
--

commit 37903a411799e24a2be5123849fd59d7fd96d50a
Author: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>

clk: qcom: ipq5210: Use icc-clk for enabling NoC related clocks

This commit uses the icc-clk framework to enable NoC related clocks, adding
interconnect provider configurations. It introduces icc_hws mappings and
sets the sync_state callback to icc_sync_state.

> diff --git a/drivers/clk/qcom/gcc-ipq5210.c b/drivers/clk/qcom/gcc-ipq521=
0.c
> index 3a786a21bdff5..1111da24b512b 100644
> --- a/drivers/clk/qcom/gcc-ipq5210.c
> +++ b/drivers/clk/qcom/gcc-ipq5210.c
[ ... ]
> @@ -2642,6 +2657,7 @@ static struct platform_driver gcc_ipq5210_driver =
=3D {
>  	.driver =3D {
>  		.name   =3D "qcom,gcc-ipq5210",
>  		.of_match_table =3D gcc_ipq5210_match_table,
> +		.sync_state =3D icc_sync_state,

Will this cause a build failure when CONFIG_INTERCONNECT is disabled?

Looking at include/linux/interconnect-provider.h, icc_sync_state is only
declared when CONFIG_INTERCONNECT is enabled, and there appears to be no
empty inline stub provided for the disabled case.=20

If this driver is compiled without the interconnect framework (for instance,
during a COMPILE_TEST), does it result in an undeclared identifier error?

>  	},
>  };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260514-icc-ipq521=
0-v1-0-b5070dfbe460@oss.qualcomm.com?part=3D2

