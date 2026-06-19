Return-Path: <devicetree+bounces-313900-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZHUCCTtnNWqFvQYAu9opvQ
	(envelope-from <devicetree+bounces-313900-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 17:58:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 865A16A6E45
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 17:58:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=F4mL0eRA;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313900-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313900-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CEC92303ACED
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 15:55:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F6C53BA22C;
	Fri, 19 Jun 2026 15:53:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37EDC3B7B91;
	Fri, 19 Jun 2026 15:53:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781884407; cv=none; b=A9/NC41/CJH3AZdNgWiUfX+Abdjgw458izG25+Dv06nwae3BckU4lqGzUIGtM0kS7Ajsx7oBeLEDtL5zaft5DpG0EGDzvnqbkej3UGME30CQ4+qLIKZvv65dM4tdayM/yWskaOVr7hMJ0rhpcka/+M+tFHhHoEEQyFR6KS2YamA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781884407; c=relaxed/simple;
	bh=Zj0RmC3oEHi+GRckBhaKlSuyW7YMCOd7Na9XTmipi6U=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=oEDXYSVcLvGENatSqUNNWhA9hfEc/gl2bl+0b4kTi/Yx0LH+PQrRR0NKdZV55Po0Q1nqGq5SxOQbpbReKc7VOVSZMs9ZSLF6TdJMaBXWFuZ0xtsQmQc3nsPPemCsBzIKCH5Yk2P/typq+M7HlUPMh+MwtMNWjpwIdAAZWOQF5FY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4mL0eRA; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 406721F000E9;
	Fri, 19 Jun 2026 15:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781884402;
	bh=Zj0RmC3oEHi+GRckBhaKlSuyW7YMCOd7Na9XTmipi6U=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=F4mL0eRAEZVA+K/ksTQdqCpcWVeM0etV1B+nBqTV0+vyeN+/39yDUGICigBHzMbiB
	 nEW4wYMRzVbO+uLCkHn15WpsSw2mt2j/c9exX1Q88QVpmxYzBnQSjMSb1waiNHFq90
	 DUIkoKTq+6UltjRvePYFFFGqJ01vODgME/t8k585ryrL9jSwyWNyNfC5UlYN8APKGY
	 kJJMaRq67W07QAROfMINOhfELz7saBoOaQB6L9OT8xMYbZQQ6E35cqzRjayvtyCNUq
	 eaGVJm4owzCMsXAKHVXf5Ap/GvX5I94ahHnUiECf7P/puRPkr/3pgreWBwamqD2hZ1
	 elITjzhb40T/w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 09/11] ARM: configs: lpc*: Remove NOMMU platform support
Reply-To: sashiko-reviews@lists.linux.dev
To: Frank.Li@oss.nxp.com
Cc: Frank.Li@kernel.org, imx@lists.linux.dev, robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260619-dts_cleanup_arm_mcore-v1-9-0101795a2662@nxp.com>
References: <20260619-dts_cleanup_arm_mcore-v1-0-0101795a2662@nxp.com>
 <20260619-dts_cleanup_arm_mcore-v1-9-0101795a2662@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 19 Jun 2026 15:53:21 +0000
Message-Id: <20260619155322.406721F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-313900-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid,nxp.com:email];
	FORGED_RECIPIENTS(0.00)[m:Frank.Li@oss.nxp.com,m:Frank.Li@kernel.org,m:imx@lists.linux.dev,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 865A16A6E45

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The commit message incorrectly categorizes LPC32xx as a NOMMU plat=
form, using this false premise to justify deleting its defconfig and suppor=
t.
--

commit dd95b6d6b05d88a43de62ac58a8d3da5f10168ac
Author: Frank Li <Frank.Li@nxp.com>

ARM: configs: lpc*: Remove NOMMU platform support

This commit removes the lpc18xx and lpc32xx default configurations,
justifying the removal by stating that commercial users of these NOMMU
platforms have migrated to RTOS solutions.

> Commercial users and hardware vendors migrated to Zephyr or other RTOS
> solutions years ago, leaving the NOMMU platform support effectively
> unused and unmaintained.

[ ... ]

> diff --git a/arch/arm/configs/lpc32xx_defconfig b/arch/arm/configs/lpc32x=
x_defconfig
> deleted file mode 100644
> index b9e2e603cd95e..0000000000000
> --- a/arch/arm/configs/lpc32xx_defconfig
> +++ /dev/null
> @@ -1,192 +0,0 @@
> -CONFIG_SYSVIPC=3Dy
[ ... ]
> -CONFIG_EXPERT=3Dy
> -# CONFIG_ARCH_MULTI_V7 is not set
> -CONFIG_ARCH_LPC32XX=3Dy

[Severity: High]
Is the commit message description accurate for LPC32xx?

While LPC18xx is a NOMMU platform, LPC32xx is based on the ARM926EJ-S
processor which features a Memory Management Unit (MMU) and runs standard
Linux rather than an RTOS.

Unlike lpc18xx_defconfig which explicitly unsets CONFIG_MMU, this
configuration leaves CONFIG_MMU enabled by default and relies on standard
Linux features like CONFIG_SYSVIPC.

Could removing an MMU-capable platform under the assumption that it is a
deprecated NOMMU target bypass the proper evaluation process for standard
Linux platforms?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260619-dts_cleanu=
p_arm_mcore-v1-0-0101795a2662@nxp.com?part=3D9

