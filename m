Return-Path: <devicetree+bounces-310120-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ATp5Nj1GKmo6lgMAu9opvQ
	(envelope-from <devicetree+bounces-310120-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 07:23:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2C066E83A
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 07:23:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ZFJ+J+4p;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310120-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-310120-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 17B7030A3F23
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 05:15:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23C96309EE2;
	Thu, 11 Jun 2026 05:12:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5713531D730
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 05:12:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781154767; cv=none; b=AIp37vB3wtf/BanAbj4o7DbklZDxdfW2D7W/BDaivSzxtV2TYUJ84WWM8SeMOy1P+ndqDq2EAML6exJMKBzFTQccKT6e21YOySce3uHnnmA7oAdAubBYC5JTbVJJPhsU3HUkXFtUKn9sWZcDukpG+2TV/1JYdv5+p5B4nNAD9LU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781154767; c=relaxed/simple;
	bh=Vr6LPuxSnkGt/Hb14NMi3sF0wgmeo8pzq+aGpN+BmjM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=e34VXGCvOkEHJOFWTcuiiNRYUnhnGx0aDxQDqOe07oKf6664TDjMV9U4U8vbFctkW/Bv3FzHXoY6ZU1VBZELzCXVCn+nj3RQ7IW/Plzf6XTW9k0UdViKew667Jp5Vh1Hkxw7wTryI6pBZAHl9l/2pvs7Eia4lt8i5FO5DBPIYDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZFJ+J+4p; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3ACBE1F00893;
	Thu, 11 Jun 2026 05:12:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781154759;
	bh=iCm4psJwp8ZlHu2alJxagJXlqcHpX4jDQWSUrxTkdE4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ZFJ+J+4ptlW6AUNeTUB8LK0cBX4gOOp0lco8e9ULXqApkgliITcY3nDy/HhADG3x7
	 H4bbaHHPLoXu5xnxjS7uTZiKe8+1EbiZ7mOZCIRAEo/k2u8H/DfcheL7Y3OAqr8M3I
	 OZtmZ2iTf8WGIU3jHii7LkfqQ8yB1gYVu1I1cSXgwXgYyZuAJEBYB+mPh/NvwNQJHH
	 pKtdmYpTu63u3oeJCP36PxVODeDdMPLzANnpoV6osu0X4yJwgWvkwcNfmilJkCC157
	 45zK4N6eNMszBNVcDpEA7L+2NuvoMnDWFnZH8+MjJ4QLLCK9Pz40R1zJTewd5lULlp
	 Mau14sQBavPzw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 20/37] arm64: dts: qcom: msm8998: Move PCIe phy and
 GPIOs to root port node
Reply-To: sashiko-reviews@lists.linux.dev
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260611-wake-v2-20-2744251b1181@oss.qualcomm.com>
References: <20260611-wake-v2-20-2744251b1181@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 11 Jun 2026 05:12:38 +0000
Message-Id: <20260611051239.3ACBE1F00893@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-310120-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:email,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7A2C066E83A

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The patch completely drops `phy-names` instead of moving it to the =
root port node as claimed by the commit message.
--

commit ed76b5fde29c9cdbab990c6d9d7c1352cdfa8910
Author: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>

arm64: dts: qcom: msm8998: Move PCIe phy and GPIOs to root port node

This commit updates the device tree for MSM8998 by shifting the PCIe phy
and perst GPIO properties from the root complex controller node to the
root port child node. It also renames perst-gpios to reset-gpios to
align with the root port binding schema.

> diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/=
qcom/msm8998.dtsi
> --- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi

[ ... ]

> @@ -928,8 +928,6 @@ pcie0: pcie@1c00000 {
>  			#address-cells =3D <3>;
>  			#size-cells =3D <2>;
>  			num-lanes =3D <1>;
> -			phys =3D <&pcie_phy>;
> -			phy-names =3D "pciephy";
>  			status =3D "disabled";

[ ... ]

> @@ -969,9 +967,8 @@ pcie0: pcie@1c00000 {
> =20
>  			power-domains =3D <&gcc PCIE_0_GDSC>;
>  			iommu-map =3D <0x100 &anoc1_smmu 0x1480 1>;
> -			perst-gpios =3D <&tlmm 35 GPIO_ACTIVE_LOW>;
> =20
> -			pcie@0 {
> +			pcie0_port0: pcie@0 {
>  				device_type =3D "pci";
>  				reg =3D <0x0 0x0 0x0 0x0 0x0>;
>  				bus-range =3D <0x01 0xff>;
> @@ -979,6 +976,9 @@ pcie@0 {
>  				#address-cells =3D <3>;
>  				#size-cells =3D <2>;
>  				ranges;
> +
> +				phys =3D <&pcie_phy>;
> +				reset-gpios =3D <&tlmm 35 GPIO_ACTIVE_LOW>;

[Severity: Low]
The commit message explicitly states: "Move phys, phy-names, and perst-gpios
from the controller to pcie0_port0". However, it looks like phy-names was
dropped from the parent node and not added to this child node as described.

While the kernel driver's root port parsing might ignore the phy-names
property anyway, does this omission unintentionally violate the behavior
described in the commit message?

>  			};
>  		};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260611-wake-v2-0-=
2744251b1181@oss.qualcomm.com?part=3D20

