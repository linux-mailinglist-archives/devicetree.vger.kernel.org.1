Return-Path: <devicetree+bounces-315920-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rs8iLggBPmqJ+QgAu9opvQ
	(envelope-from <devicetree+bounces-315920-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 06:33:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1310A6CA1F6
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 06:33:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=LtFnCnnC;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315920-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315920-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DB7DD3065901
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 04:31:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D4072F8E87;
	Fri, 26 Jun 2026 04:31:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66072211A14
	for <devicetree@vger.kernel.org>; Fri, 26 Jun 2026 04:31:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782448309; cv=none; b=njfKvX4DAap+IwyFVW3i5ffNJNngVmGYYVLx2Y0Wok3/WbfV5SRjYmtCcisg5EEJcJNAhq8RThn0p7svpG1FAVMoGkTo4Ci2b3OB0NwCMr+RKxJ+/A3luCtD79PRQib9yyhkrIWAQ1dGOu71QHNJa2DmS58+iSJkNz2Q8dfdbaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782448309; c=relaxed/simple;
	bh=zfhI0Ex1QaNwtg3+opWWAmhQMm6yY+0QWo9kHlOaFUI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Whas+T2kGo9eLt6UM+Bkl2G4/+kv1dnGZ7InI5lHPvh6oNvU2ptTHirMz82kUD2dZYDhmEumF9bVD25d6md0Q3YU07VsBoj+D1d1A42g7nswoUEgNtCAFB1yjzMe77C5SsH9VRtrg2PDuwfu+kidGF2q8C+sVcYBmnHbasQLEXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LtFnCnnC; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 961401F000E9;
	Fri, 26 Jun 2026 04:31:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782448307;
	bh=Bgmi6zSEujXTb4re2lYtP/mnmFfy4YsAC2o/Emg4+qk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=LtFnCnnCshpauUoB0UOJNPtyK1uX0WPw9CECVj2csac774qwJeFt6RLVZTswiL6g1
	 HPNvdrdDnFQJseTEmt06zhVMmlhoX7QTY1iXD7ZLs6W1VUbLQvB76rkcOCpKAsk7r+
	 z650XELIapXE5aslNBa3Ux/jH9tnjekxXeOT0hf8PyHdMaBWh30dyCDVpJyDvl7BkZ
	 6fMJPSAMwmiAO+PmKs+9Rr3LjTHaJOSCG2asA778HA6bf6/CLT/aH4xxdpTFjrhs3f
	 VZmuAMuxwcEzfQ+4gEeJF5i9qCVsd/k4IvdCFMmmpZEL/ugLaH9q16A+beB3/M1PSF
	 PKYm/BMnITn3Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: socfpga: agilex5: update channel
 interrupts for gmac1 and gmac2
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dinh Nguyen" <dinguyen@kernel.org>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260626042541.1091774-2-dinguyen@kernel.org>
References: <20260626042541.1091774-1-dinguyen@kernel.org>
 <20260626042541.1091774-2-dinguyen@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 26 Jun 2026 04:31:46 +0000
Message-Id: <20260626043146.961401F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-315920-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:dinguyen@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1310A6CA1F6

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Incomplete DT update: gmac0 is left with an invalid interrupt co=
unt that will fail dtbs validation.
--

commit ce31f4c657e3508e9aef68e6da54a09c1d243026
Author: Dinh Nguyen <dinguyen@kernel.org>

arm64: dts: socfpga: agilex5: update channel interrupts for gmac1 and gmac2

Populate the gmac1 and gmac2 interrupt list to support 8 TX/RX queue
pairs.

> diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi b/arch/arm64/=
boot/dts/intel/socfpga_agilex5.dtsi
> index 02e62d954e949..140e4bf9fb155 100644
> --- a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
> +++ b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
> @@ -670,8 +670,40 @@ gmac1: ethernet@10820000 {
>  			compatible =3D "altr,socfpga-stmmac-agilex5",
>  				     "snps,dwxgmac-2.10";
>  			reg =3D <0x10820000 0x3500>;

[Severity: Medium]
Should gmac0 also be updated to include 17 interrupts?

Looking earlier in the same file, gmac0 uses the exact same
"altr,socfpga-stmmac-agilex5" compatible string, but this patch
leaves it configured with only a single interrupt:

arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi:
	gmac0: ethernet@10810000 {
		compatible =3D "altr,socfpga-stmmac-agilex5",
			     "snps,dwxgmac-2.10";
		reg =3D <0x10810000 0x3500>;
		interrupts =3D <GIC_SPI 190 IRQ_TYPE_LEVEL_HIGH>;
		interrupt-names =3D "macirq";
                ...
	}

Since the device tree binding strictly requires 17 interrupts for this
specific compatible string, won't skipping gmac0 result in dtbs_check
validation errors and leave its queues without dedicated interrupts at
runtime?

> -			interrupts =3D <GIC_SPI 207 IRQ_TYPE_LEVEL_HIGH>;
> -			interrupt-names =3D "macirq";
> +			interrupts =3D <GIC_SPI 207 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH>,
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260626042541.1091=
774-1-dinguyen@kernel.org?part=3D2

