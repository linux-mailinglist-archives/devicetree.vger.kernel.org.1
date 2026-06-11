Return-Path: <devicetree+bounces-310183-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QVr4BNliKmpBogMAu9opvQ
	(envelope-from <devicetree+bounces-310183-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 09:25:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 746A666F5C4
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 09:25:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=MZdkiw09;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310183-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-310183-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6F9B63042901
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 07:24:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAA553644A4;
	Thu, 11 Jun 2026 07:24:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B96D734A3D6
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 07:24:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781162653; cv=none; b=FlXc1QLR5ZiP0UxrjhPrTZHqZ+3fHT4+1zZTCCeJt/HmjVx6j7EL5sKYO+6Y3IF+oM7SwEv1/DwcaYt/+VLHOBKVPDdmRMWYObXO4cP0nOqDFZ1mZMqpT3GIvyQVTPqvJLOmCSwRGdMFRgQb2+q1kqnOM/Q3k1BQ9RlKh7T1NOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781162653; c=relaxed/simple;
	bh=PjTAo4dbofqv0ye7GM5PSTrEQOzpu8oolIIqfFbEJ3c=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=kNsHUd6x9n4GXMwSqgywNbFKwy7JAny/LJjuRwQ2LQhAV4U/ujAV+Yf+7BHbqVcLz2T8+3q64ZwozYcsRpdRi6XJjqgiAnKHqUy5pss/JnQWG7Qau8MBjV70IKlFldJSF9RUIbrtlKO34qehdPL09AWDx2IVHRMzk1zL3XRWcFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZdkiw09; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2AD6F1F00893;
	Thu, 11 Jun 2026 07:24:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781162652;
	bh=Vpi36MEFsA8rNajtOkG02BOhhnUizF0oqsV0ErxqUqk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=MZdkiw09X4Bb9nCmlgr6J2uuCCza2Din1T4ntCPFQXyjXaZYvaF8u8GqHfQXq9Gg8
	 Y43xPvfhZ1HsNC7q2pVWuv6UUa18sXWdK3buH6o3gM8N4gPMNQ1Dn6uNb36tNRRUZD
	 zSvwOKE0nJCPTnbofWN3WG0kMAE5pGMCVAhcHU0CmIhVKqNDVZ6XbI6uv3IDzjlAss
	 LQikvCHv+et9w7Hp7cVySNQ+rhbrwBeiKr8jqNtIzWIdbjyjvBEmMst5Rd8Ma/QfW7
	 REhm5pFZvhbl/e2Hq4bl/aCGYCzL797aPvJUyWiJp4a4d+zm7C1T0GSPVLr0fF+prc
	 eOkVsGUeZZGwQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 37/37] arm64: dts: qcom: msm8996: Move PCIe phy and
 GPIOs to root port node
Reply-To: sashiko-reviews@lists.linux.dev
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260611-wake-v2-37-2744251b1181@oss.qualcomm.com>
References: <20260611-wake-v2-37-2744251b1181@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 11 Jun 2026 07:24:11 +0000
Message-Id: <20260611072412.2AD6F1F00893@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-310183-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:krishna.chundru@oss.qualcomm.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid,qualcomm.com:email,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 746A666F5C4

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The commit message claims to move both the 'phys' and 'phy-names=
' properties to the root port nodes, but the patch actually deletes 'phy-na=
mes' entirely.
--

commit baa70baca6b8bb3dd12472bf021f252ebb1f4c9c
Author: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>

arm64: dts: qcom: msm8996: Move PCIe phy and GPIOs to root port node

This patch moves the PCIe phy reference and GPIO properties to the root port
node from the RC controller node. It adjusts the device tree nodes and adds
labels to allow board-level overrides for the root port context.

> diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/=
qcom/msm8996.dtsi
> index 2f67e665996f3..8db1448e5e610 100644
> --- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
> @@ -1900,9 +1900,6 @@ pcie0: pcie@600000 {
>  				      <0x0c100000 0x100000>;
>  				reg-names =3D "parf", "dbi", "elbi","config";
> =20
> -				phys =3D <&pciephy_0>;
> -				phy-names =3D "pciephy";
> -
>  				#address-cells =3D <3>;
>  				#size-cells =3D <2>;
>  				ranges =3D <0x01000000 0x0 0x00000000 0x0c200000 0x0 0x100000>,

[ ... ]

> @@ -1951,7 +1948,7 @@ pcie0: pcie@600000 {
>  						"bus_master",
>  						"bus_slave";
> =20
> -				pcie@0 {
> +				pcie0_port0: pcie@0 {
>  					device_type =3D "pci";
>  					reg =3D <0x0 0x0 0x0 0x0 0x0>;
>  					bus-range =3D <0x01 0xff>;
> @@ -1959,6 +1956,8 @@ pcie@0 {
>  					#address-cells =3D <3>;
>  					#size-cells =3D <2>;
>  					ranges;
> +
> +					phys =3D <&pciephy_0>;
>  				};

[Severity: Medium]
The commit message states "Move phys and phy-names from the controller to
pcie0_port0, pcie1_port0, and pcie2_port0".

However, looking at the removal in pcie0 and the addition in pcie0_port0, it
appears phy-names was deleted but not added to the new port nodes. The same
pattern is present for pcie1_port0 and pcie2_port0.

Is the intention to drop the phy-names property completely because it is no
longer needed by the new bindings? If so, could the commit message be
updated to reflect that phy-names was removed rather than moved?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260611-wake-v2-0-=
2744251b1181@oss.qualcomm.com?part=3D37

