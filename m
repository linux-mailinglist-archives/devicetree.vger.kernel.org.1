Return-Path: <devicetree+bounces-309483-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tKmkHzYYKWoiQgMAu9opvQ
	(envelope-from <devicetree+bounces-309483-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 09:54:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1739A666CF2
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 09:54:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=DVzaL8oj;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309483-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309483-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EE2DF3050DC2
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 07:53:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 994AA3932FD;
	Wed, 10 Jun 2026 07:53:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70630388E69
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 07:53:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781078032; cv=none; b=OH9QAm1Dk+yyazs/8ASBFv50z/7MRJ/YcStpRldspvmkAkhcPPYL5ecqfFxkXM33LxLTk29K9Drhvn99zUgyxL30F8ca1/Zz3BB2yhsyOTulLFqECxRxuTvbn9I6Ias49L4EM6KJ5f50vG63JXrWgiWvcHUOZHi2VP5Rl139u6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781078032; c=relaxed/simple;
	bh=TE2mSlkKJ3a0UQ86s/EDswWrC3NwYJ/X2NMVQYYHCxg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=aKAmjY3AicBJBqvFibNf60iDNkLvnDKDk+j+HpjvvPQW3N0VElb1GlPr7lb0BfmBkOrZBiSsn66xpxmgy91vUnL633Um1e7EqevKd0YEO0vqx3oCusRo5xlF6aRgrcN+9zE8ebfPVHVhiKQx4Ti6o0Zv9GdWKvbIAeR7nOBGEmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DVzaL8oj; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CCB741F00899;
	Wed, 10 Jun 2026 07:53:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781078031;
	bh=TtZvPafSbGqVx/tSgYTxoCn/RcXXmv+XEUkANrEfnqU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=DVzaL8ojt05K+xbOoSoAD61l67qZY4HhpUprA3CvMUY/aeQ1CETIjlfjlbfBMAF5t
	 wwaD2rvtdEdzm6tcx0B+WsB+v8+O4yNADFTpvslJ1YjTemQ8l2kyttUQ5UuzqW/pzK
	 elhLMnmkQRiYvOBdUMl4UPdMW8ZzRSK2xbrhQ2kvcR6Nr/2i/KyoTDW+ukGVNYAvQs
	 Wsxcnw8/8yp63gyVXaihyoRsYNyLRWT7gZizere6X7TBeCcAHyYXeLyNfUmpS37m2e
	 kWPN966uEInK8cOENxG61gxrckBgxhu20v0GLXiFBdWW4No3LcihQpaSSTkBX3YU6G
	 UcdNAboypVF4Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 8/8] arm64: dts: qcom: arduino-imola: Describe NVMEM
 layout for WiFi/BT addresses
Reply-To: sashiko-reviews@lists.linux.dev
To: "Loic Poulain" <loic.poulain@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260609-block-as-nvmem-v4-8-45712e6b22c6@oss.qualcomm.com>
References: <20260609-block-as-nvmem-v4-8-45712e6b22c6@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Jun 2026 07:53:50 +0000
Message-Id: <20260610075350.CCB741F00899@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-309483-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:loic.poulain@oss.qualcomm.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,qualcomm.com:email,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1739A666CF2

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Adding `compatible =3D "fixed-partitions"` to the `partitions-boot=
1` node causes the block layer OF partition parser to process the `nvmem-la=
yout` child node as a partition. Since `nvmem-layout` lacks a `reg` propert=
y, `of_get_property(np, "reg", &len)` in `block/partitions/of.c` returns NU=
LL and leaves the stack variable `len` uninitialized. This leads to either =
a boot-time kernel panic (if the uninitialized `len` happens to satisfy `le=
n / sizeof(*reg) =3D=3D a_cells + s_cells`, causing an unconditional NULL p=
ointer dereference of `reg` in `of_read_number()`) or an `-EINVAL` error th=
at aborts partition scanning for the entire `mmcblk0boot0` block device.
--

commit 1fb34b213f52de7d901295d011ead6f3136f8d92
Author: Loic Poulain <loic.poulain@oss.qualcomm.com>

arm64: dts: qcom: arduino-imola: Describe NVMEM layout for WiFi/BT addresses

This commit adds NVMEM cell definitions for WiFi and Bluetooth MAC addresses
to the eMMC boot1 partition on Arduino Uno-Q. It modifies the SDHC1 node to
declare a fixed-partitions block with an nvmem-layout.

> diff --git a/arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts b/arch/ar=
m64/boot/dts/qcom/qrb2210-arduino-imola.dts
> index bf088fa9807f0..128c7a7e76b5b 100644
> --- a/arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts
> +++ b/arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts
> @@ -409,7 +409,40 @@ &sdhc_1 {
[ ... ]
> +	card@0 {
> +		compatible =3D "mmc-card";
> +		reg =3D <0>;
> +
> +		partitions-boot1 {
> +			compatible =3D "fixed-partitions";
> +
> +			#address-cells =3D <1>;
> +			#size-cells =3D <1>;
> +
> +			nvmem-layout {

[Severity: High]
Does adding compatible =3D "fixed-partitions" here cause the block layer
OF partition parser to process the nvmem-layout child node as a partition?

Since nvmem-layout lacks a reg property, this appears to trigger an issue
in block/partitions/of.c where of_get_property(np, "reg", &len) returns
NULL and leaves the stack variable len uninitialized.

Depending on the uninitialized stack value, couldn't this cause either a
boot-time kernel panic due to a NULL pointer dereference in
of_read_number(), or an -EINVAL error that aborts partition scanning for
the entire mmcblk0boot0 block device?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609-block-as-n=
vmem-v4-0-45712e6b22c6@oss.qualcomm.com?part=3D8

