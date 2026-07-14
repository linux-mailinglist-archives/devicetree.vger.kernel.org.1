Return-Path: <devicetree+bounces-325827-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nrz6DbaaVWo/qwAAu9opvQ
	(envelope-from <devicetree+bounces-325827-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 04:11:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 816957504C8
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 04:11:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=QU4GExuJ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325827-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325827-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 61D19302AC00
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 02:10:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2061B37B03C;
	Tue, 14 Jul 2026 02:10:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89CC6377004
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 02:10:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783995012; cv=none; b=LOjWrYzjJi7kWowpHF2p48+574aQFbH4EdahCTofWfSe8tu0+hWkQAJGBr/rD4x0mdwZSRWRjh+fZdzkx8AGfsPg2hY0ODnrl9aNvYYH3D7r02cggUB7UHaujG2V5X4UMvlqLNOuEc6Idd+K79SirEbQ/+x6Wf16iwPlX99yS7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783995012; c=relaxed/simple;
	bh=v77U3lpjXIiazrhQ/r8RmwBtSGBO6UaauckxZBdXvi0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=X8NtkTr2NXOH+JNRjPD5kFURxmrcuyhJ4DCN3y4szdfOff1m8+RYroDIB6TQ1Hn5X024BroIPujOts4M6dLAi51GaEpvRwnMYzziKDFvvkfOgEAude+hsP9ONuYfrPOV+OgRDsDDYSwenGviuMHJx5iYy14cdpneRK/M2KWni34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QU4GExuJ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5145A1F000E9;
	Tue, 14 Jul 2026 02:10:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783995009;
	bh=UtAFxUk35o+N6jU3C46VhZ9RvJ92m4AJYLj5yJE57Mw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QU4GExuJFpwjKXEd2IRd76329wXsGOXqtE6gbYTMEwJy4v8A+hjHofmW2Q0eo0dd0
	 RdMOl8ocI8rRiRr1H55XzLaBufKcAWF5ZBtVf9BLT732yv0VQtnIoji6v3nPmtE0om
	 2KHPioF9bGE3kbU7vB4ejfqCL8MEU4+Pa6CUO7cbl7iiJJoXXm/ddmY8D9hJq+n9J5
	 /+TW/NPi3BToqqJXr2ry5Z/TBktFgUEOsXecZuaacQUbsMmew+XbzqFGqLm6BmuT4j
	 sdJvOQM0gtmUWl4ZkB8UtUyJX2SHbqAIRe4HQXdEuQvYCsTnF/HZr2UWs7vaJbagMT
	 RX2Ci/kDt+6Tg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: shikra: Add coresight nodes
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jie Gan" <jie.gan@oss.qualcomm.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260714-add-coresight-nodes-for-shikra-v1-2-b1cf85962455@oss.qualcomm.com>
References: <20260714-add-coresight-nodes-for-shikra-v1-0-b1cf85962455@oss.qualcomm.com>
 <20260714-add-coresight-nodes-for-shikra-v1-2-b1cf85962455@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 02:10:08 +0000
Message-Id: <20260714021009.5145A1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-325827-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jie.gan@oss.qualcomm.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,qualcomm.com:email,smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 816957504C8

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The ETM device tree nodes use the `arm,coresight-etm4x-sysreg` com=
patible string while simultaneously specifying a memory-mapped `reg` proper=
ty, which inadvertently forces the Linux driver to use MMIO and bypasses sy=
sreg access.
--

--- Patch [2]: [PATCH 2/2] arm64: dts: qcom: shikra: Add coresight nodes ---
commit 24d3e76ff822f220e7ce3ce7c925342e5bd6c189
Author: Jie Gan <jie.gan@oss.qualcomm.com>

arm64: dts: qcom: shikra: Add coresight nodes

This commit adds DT nodes for the CoreSight debug and trace subsystem on the
Qualcomm Shikra SoC.

> diff --git a/arch/arm64/boot/dts/qcom/shikra.dtsi b/arch/arm64/boot/dts/q=
com/shikra.dtsi
> index 4e5bc9e17c8ed..84c906be16a93 100644
> --- a/arch/arm64/boot/dts/qcom/shikra.dtsi
> +++ b/arch/arm64/boot/dts/qcom/shikra.dtsi

[ ... ]

> +		etm@9040000 {
> +			compatible =3D "arm,coresight-etm4x-sysreg";
> +			reg =3D <0x0 0x09040000 0x0 0x1000>;

[Severity: High]
Does combining "arm,coresight-etm4x-sysreg" with a memory-mapped reg proper=
ty
cause the driver to incorrectly fall back to MMIO mode?

Since this compatible string is meant for sysreg-only access, providing the
reg property violates the DT bindings. This forces the coresight-etm4x
platform driver into an MMIO fallback mode and skips sysreg initialization.

Because it binds to the platform driver instead of the AMBA primecell drive=
r,
won't it miss AMBA PM and UCI ID initialization? Accessing an unpowered or
improperly clocked CoreSight MMIO region could cause bus errors or silent
probe failures.

This same pattern also appears in the other ETM nodes added by this patch
(etm@9140000, etm@9240000, and etm@9340000).

> +
> +			clocks =3D <&rpmcc RPM_SMD_QDSS_CLK>;
> +			clock-names =3D "apb_pclk";
> +			cpu =3D <&cpu0>;
> +			qcom,skip-power-up;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714-add-coresi=
ght-nodes-for-shikra-v1-0-b1cf85962455@oss.qualcomm.com?part=3D2

