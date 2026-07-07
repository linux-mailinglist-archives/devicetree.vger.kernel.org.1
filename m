Return-Path: <devicetree+bounces-321875-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id g2CYN6zFTGr3pQEAu9opvQ
	(envelope-from <devicetree+bounces-321875-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 11:23:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 52443719B51
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 11:23:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=VDiLJbsP;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321875-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-321875-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0F51C304E73F
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 09:16:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFBA43081BE;
	Tue,  7 Jul 2026 09:15:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A5121D63E4
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 09:15:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783415759; cv=none; b=VOHQ+ob/Wnzj5V1gqkjvAKbT/BW7BusudPS/pU0qQKCJPkU1Mu1wlSAiSqXlBrQy4U61jzSNtCHJXp1cY/dSv3TGJlkFGG5PF17NUtQWhhLK6sJxBOPHKBVLfE9mDzI235woJld9HoNF8b/o9q8n5O5UtmOYXBKqk5j0S1ahbSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783415759; c=relaxed/simple;
	bh=wvqdXRPmrJ989IxEIBMI7Fzvjd9TJdUWhDscOfAxcCA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=AAtWGPNTfBEV4aPev9MckQUK2RMshtE0KefNO/DaRerhSvcczH6MZ82X08STf7tVNGN89X4NU7u4TidZi8/eSiOMp9L+x7qvaqUA9iqAm7sz6mqMcsNQbH9eMP8ZV8tMRQ+3wlLtdEAP2D+I2M0okyCRcXblMd9r/FkJh0+N5ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VDiLJbsP; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A12D1F000E9;
	Tue,  7 Jul 2026 09:15:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783415758;
	bh=2XFkW3AHcEyWQoTpF4Oa443wz17XuqFZzUyAEeQlAO4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=VDiLJbsPbUEfi0wtXUTTcMEtl2VQlbRoqldUgFTSesmTshV7iCpg/IlqNeJ/+TGRM
	 P9kIR2nXr1AY4In/7gegKcg5AxdEUtgpiAbqPAyEVm3SaqGX97xuHTmYEHo8j3fxfT
	 WvBdX/JAWs7DzcExYRUugM/bSeg+lrliLJzCul1Gf4SLMbQJV7eLseBhU1EO2fkvO4
	 eVbQAntR7ZpY43W5jYoa1uQNjCOpzZlH2kqvfZmLrjWhk8QU2S4ahbsXBUAaN3cSgN
	 7rQ4FyB83PHGjUw4TZ76KuuDnTxkVjyCw541y/zidGmBM8YvHn/wnSQTIVWR91LGmH
	 yRXtZhSVwNM+w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 5/5] ARM: dts: rockchip: Add Alientek DLRV1126
Reply-To: sashiko-reviews@lists.linux.dev
To: "Yanan He" <grumpycat921013@gmail.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260706-rv1126-alientek-dlrv1126-v2-5-ff3176ca362b@gmail.com>
References: <20260706-rv1126-alientek-dlrv1126-v2-0-ff3176ca362b@gmail.com>
 <20260706-rv1126-alientek-dlrv1126-v2-5-ff3176ca362b@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 09:15:57 +0000
Message-Id: <20260707091558.0A12D1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-321875-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:grumpycat921013@gmail.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sashiko.dev:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 52443719B51

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] WiFi SDIO node requests `keep-power-in-suspend`, but its vmmc regu=
lator is hard-coded to cut power in suspend.
--

commit 4b7539a0242320f89cb11cc0a91f5ab56293439d
Author: Yanan He <grumpycat921013@gmail.com>

ARM: dts: rockchip: Add Alientek DLRV1126

This commit adds device tree support for the Alientek DLRV1126 board
and its CLRV1126F core module, enabling Ethernet, SD card, WiFi/BT,
and other peripherals.

> diff --git a/arch/arm/boot/dts/rockchip/rv1126-alientek-clrv1126f.dtsi b/=
arch/arm/boot/dts/rockchip/rv1126-alientek-clrv1126f.dtsi
> index 0000000000000..9bee424b17979
> --- /dev/null
> +++ b/arch/arm/boot/dts/rockchip/rv1126-alientek-clrv1126f.dtsi

[ ... ]

> +			vcc3v3_sd: LDO_REG9 {
> +				regulator-name =3D "vcc3v3_sd";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt =3D <3300000>;
> +				regulator-max-microvolt =3D <3300000>;
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};

[ ... ]

> diff --git a/arch/arm/boot/dts/rockchip/rv1126-alientek-dlrv1126.dts b/ar=
ch/arm/boot/dts/rockchip/rv1126-alientek-dlrv1126.dts
> index 0000000000000..33c6c74d08b91
> --- /dev/null
> +++ b/arch/arm/boot/dts/rockchip/rv1126-alientek-dlrv1126.dts

[ ... ]

> +&sdio {
> +	bus-width =3D <4>;
> +	cap-sdio-irq;
> +	keep-power-in-suspend;
> +	max-frequency =3D <25000000>;
> +	mmc-pwrseq =3D <&sdio_pwrseq>;
> +	non-removable;
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&sdmmc1_clk &sdmmc1_cmd &sdmmc1_bus4>;
> +	rockchip,default-sample-phase =3D <90>;
> +	vmmc-supply =3D <&vcc3v3_sd>;

[Severity: High]
Will the WiFi module fail to function after a system suspend and resume?

The sdio node requests keep-power-in-suspend, so the MMC subsystem will
skip tearing down the SDIO card during suspend. However, the vmmc-supply
regulator (vcc3v3_sd) is explicitly configured to cut power in suspend via
regulator-off-in-suspend.

Upon resume, the MMC subsystem might assume the WiFi chip retained its
state, but it would have actually lost power and reset. Could this state
mismatch wipe the firmware state and lead to SDIO timeouts?

> +	vqmmc-supply =3D <&vcc_1v8>;
> +	status =3D "okay";
> +};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260706-rv1126-ali=
entek-dlrv1126-v2-0-ff3176ca362b@gmail.com?part=3D5

