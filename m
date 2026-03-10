Return-Path: <devicetree+bounces-273610-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +PEcHD42sGkKhQIAu9opvQ
	(envelope-from <devicetree+bounces-273610-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 16:18:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA16253228
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 16:18:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8ED23302927A
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:17:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFE0730FC06;
	Tue, 10 Mar 2026 15:16:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=pta2002.com header.i=pta2002@pta2002.com header.b="YX91xCk2"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-of-o56.zoho.com (sender4-of-o56.zoho.com [136.143.188.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 732FB2BD11
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 15:16:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.56
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773155811; cv=pass; b=MGOKjiZUPDQJhOrPzZY5ULPFGb8THCux1jow2/WkICOQ3042UegvAXZn3v+LTbyhBXYdXuLTi/b47YL0WEHG4CAJNV6JNP6GjhMt/guToXpZiAgjfZrnH79LI6gBvTgHsbLigQ7NY1G2tt7pvuXkAobKP9FlAfuxyPFbn3W8DzM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773155811; c=relaxed/simple;
	bh=vxhmCkxdR3No9ve4HIxTYiLql+6u3sGdp+tOLkNxmRs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Gdt4UhJ9+gO1v7DyqgXzxEeBtLhZvnU2IyHM7L5A5WgME6GS7vIJQceywrFva/D1bjANTJO7B+Bd2SMcRltSRY/EIG71REEN5E1IqKYHbAbiqYOzq/K6B8Iq4J+008YKnW2k2+2q020vK7bE0pnSiPZ3bsQiAlcdhupDtA1xVSk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=pta2002.com; spf=fail smtp.mailfrom=pta2002.com; dkim=fail (0-bit key) header.d=pta2002.com header.i=pta2002@pta2002.com header.b=YX91xCk2 reason="key not found in DNS"; arc=pass smtp.client-ip=136.143.188.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=pta2002.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=pta2002.com
ARC-Seal: i=1; a=rsa-sha256; t=1773155806; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=My9q5wA6JCYcOq3GwksDpbhCfSrQrNbWFvJWEaNHGK3fh5O//MS1woxS8aWKvVcT0/yuwyEtWG6Xm6QgFquFrnIp9bvMFX2ZKVX5coTtfzzaJ+FONXBLfsan5bZLdoCMd2yuhEt3y3XwlgqOLRtc16QFFISxsNL+9b+Oilx/5OE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1773155806; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=1ZxpAj35byR6TQ3nM9neCGTwEH97bcalVH2DZu6972E=; 
	b=YvlbySsgdyzhXaBm9BDHQ+PspXgY9+Ci/975YlptD9YfHHorVZhvVTi4D55GmZie/AA53v+/S5Jx+0MWVGALrIYR/GajYP1pfqcHfnoMFPh4dzA8HlD/+srmNfvguR9s7OB+sOBrDsqg6kW6Yz8w2o6j3A7g8fK1Bc3tKyzNHqU=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=pta2002.com;
	spf=pass  smtp.mailfrom=pta2002@pta2002.com;
	dmarc=pass header.from=<pta2002@pta2002.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1773155806;
	s=zoho; d=pta2002.com; i=pta2002@pta2002.com;
	h=MIME-Version:References:In-Reply-To:From:From:Date:Date:Message-ID:Subject:Subject:To:To:Cc:Cc:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=1ZxpAj35byR6TQ3nM9neCGTwEH97bcalVH2DZu6972E=;
	b=YX91xCk2e4x/dovGjUQTR/J4caOZJUnu3Wl9gH/AqM3j+RpRwXShJ5RIOYfgpvB8
	NSakOUETBk17LsNnMvqtkM+pt9ZVgHe6AEwiXRXE46nrwA3zHQMHm7qo8Na3CRlD4vl
	OwM2JmUqlYYHcTGbet5fvbvtK7hDE7luL7Uf1DGI=
Received: by mx.zohomail.com with SMTPS id 1773155803976342.0504247300905;
	Tue, 10 Mar 2026 08:16:43 -0700 (PDT)
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-8cb3bae8d3eso1219688385a.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 08:16:43 -0700 (PDT)
X-Gm-Message-State: AOJu0YwIMzu/cgQRzyyfTC0UiInmFzAcQ115Zj0k1jmkvwT/QTP4E2eF
	u3b4CZAWhPSgdkMEZ0zdfNQB5BfGsom9X6mFz+nMOOKAgYBeeYkpnJe9qXNArleoXi69iM4tLdK
	uVNxH+U+GTnrk5dMF4LPjHAJyzkq8siw=
X-Received: by 2002:ad4:5d6a:0:b0:899:f78e:d733 with SMTP id
 6a1803df08f44-89a30a5e93bmr225894656d6.19.1773155802990; Tue, 10 Mar 2026
 08:16:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260304-radxa-r5-itx-hdmirx-v2-1-6567e9e3298b@pta2002.com> <9638846.rMLUfLXkoz@phil>
In-Reply-To: <9638846.rMLUfLXkoz@phil>
From: Pedro Alves <pta2002@pta2002.com>
Date: Tue, 10 Mar 2026 15:16:31 +0000
X-Gmail-Original-Message-ID: <CAAEXfUVU86E0jmh1AyjsejnpKutD=5No=kv8Aid6fnCDJuHc7w@mail.gmail.com>
X-Gm-Features: AaiRm51zN46HfOKYv24Pqj3C_wPKGA8XlgjBcO75Q4XopjpPttYiB_EocE5nLDM
Message-ID: <CAAEXfUVU86E0jmh1AyjsejnpKutD=5No=kv8Aid6fnCDJuHc7w@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: configure hdmirx in Rock 5 ITX
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-ZohoMailClient: External
X-Rspamd-Queue-Id: 1BA16253228
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.36 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[pta2002.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[pta2002.com:~];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-273610-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	R_DKIM_PERMFAIL(0.00)[pta2002.com:s=zoho];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pta2002@pta2002.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-0.922];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,radxa.com:url,mail.gmail.com:mid]
X-Rspamd-Action: no action

Hi,

Thanks for taking a look.

On 10/03/2026 08:48, Heiko Stuebner wrote:
> Am Mittwoch, 4. M=C3=A4rz 2026, 21:44:39 Mitteleurop=C3=A4ische Normalzei=
t schrieb Pedro Alves:
>> +&hdmi_receiver {
>> +    pinctrl-0 =3D <&hdmim1_rx_cec &hdmim1_rx_hpdin &hdmim1_rx_scl &hdmi=
m1_rx_sda &hdmirx_det>;
>
> are you sure the hdmim1_rx_hpdin is routed?
> Because that is gpio3_D4 while your hpd-gpios below is gpio1_c6.

I took a look at both the Radxa 5 ITX schematic[1] and at the RK3588
datasheet[2]. As far as I can tell, the pin is indeed routed.

The schematic calls it HDMIIRX_HDPOUT_H, on gpio3_d4, and it seems to be
controlling pin 19 of the HDMI port via HDMI_RX_HPD_PORT (see page 31).
The hpd-gpios meanwhile is a GPIO that's used to detect when an HDMI
cable is plugged in (goes low when there's voltage on
VCC5V_HDMIRX_PORT), but since this has no fixed pin in hardware, the pin
choice seems like it can be rather arbitrary by Radxa, who wired it to
gpio1_c6.

>> +    pinctrl-names =3D "default";
>> +    hpd-gpios =3D <&gpio1 RK_PC6 GPIO_ACTIVE_LOW>;
>
> Also please provide a pinctrl setting for the gpio hpd pin.

Sure, I'll take care of this and send a follow-up.

[1]: https://dl.radxa.com/rock5/5itx/v1110/radxa_rock_5itx_v1110_schematic.=
pdf
[2]: https://wiki.friendlyelec.com/wiki/images/e/ee/Rockchip_RK3588_Datashe=
et_V1.6-20231016.pdf

Regards,
Pedro

