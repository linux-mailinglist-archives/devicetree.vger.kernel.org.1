Return-Path: <devicetree+bounces-273361-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AEBeNEzcr2kzdAIAu9opvQ
	(envelope-from <devicetree+bounces-273361-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:54:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 331FC247B03
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:54:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D2B7F311B86C
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 08:48:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 352C9430BA8;
	Tue, 10 Mar 2026 08:48:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="l0wIErnC"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86D6F2773D8;
	Tue, 10 Mar 2026 08:48:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773132532; cv=none; b=L7L9sjRAt8WBc9ZNPfOVfV69i66Jj1rZviyiMQNZayr/euQFcSU6eGYq1nHIKv3aCUpLBW2cadylot6eF6zqTH9PZDCBYDPHFdxVenMAw30fkCAph28gGyR776UkKI6RUtB4cskFdCm7xznDkyWH9MyESnCRSELuNr3pPmao94I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773132532; c=relaxed/simple;
	bh=teSI91cRyupWd7NN6HwKJqFdD/E+ikTGW2oM/Aij9GI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Jzg84+shpXOQYbknVOoZPHPMQxksJx8Vpqf+w7SN1zAj1T+u97PMgzzrmVmVXm1tOrI9mo42frRjUu9yrDDReR8z8iTKBRJj5NPZSTFhqjogEipNRoAftejKjRGdA0kc3V139asUyASSSpQ4OuslkD7q45E4gjwe2/TXeW/xhHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=l0wIErnC; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=LDnvAqGNNm3WAv14lqVG/Cz8m/tMIKxrjvpf5+LfotM=; b=l0wIErnCa7VHZPHycc5wGKaUkL
	Yvz5kANYlS0XPLz/iuR2NrLGPcRURHOBzm4faD1fWbmUqHDdbBPI9z4rsa/I61cA44XbcjfQPzSQI
	3JH4sSNf+xfTq6bJE2qbkzZaR3ywZHyEXWZ4OeT/t1ncRkWfvm3Be3AY6w1bBi5Jo2GmLwbKxEmMC
	9SzOmfK47DvNw80PUtVeLGQH6/0OrqRDnDgb4kmCKe808R4hhSaTTDC4lTtu9MovXpN+i/43gjRaT
	oCZ9/2WFrq91UN5rTmSZC9LV5vi9tuUFV1EgdXUDbacu60B/wcVrDVEmRsehDCCkKEWM4Vg2mtT3s
	rQPM1bSA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Pedro Alves <pta2002@pta2002.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Pedro Alves <pta2002@pta2002.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: configure hdmirx in Rock 5 ITX
Date: Tue, 10 Mar 2026 09:48:43 +0100
Message-ID: <9638846.rMLUfLXkoz@phil>
In-Reply-To: <20260304-radxa-r5-itx-hdmirx-v2-1-6567e9e3298b@pta2002.com>
References: <20260304-radxa-r5-itx-hdmirx-v2-1-6567e9e3298b@pta2002.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Queue-Id: 331FC247B03
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273361-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sntech.de:dkim,pta2002.com:email]
X-Rspamd-Action: no action

Hi Pedro,

Am Mittwoch, 4. M=C3=A4rz 2026, 21:44:39 Mitteleurop=C3=A4ische Normalzeit =
schrieb Pedro Alves:
> The Radxa Rock 5 ITX board exposes an HDMI input exactly the same way as
> the Rock 5B, but this was not reflected in its DTS.
>=20
> Change the rk3588-rock-5-itx to configure and enable the hdmi_receiver
> and hdmi_receiver_cma nodes.
>=20
> The hot-plug detection (HPD) pin keeps the hdmirx_det name rather than
> the hdmirx_hpd name used in other boards since that is what matches the
> official schematics (HDMIIRX_DET_L).
>=20
> The configurations were confirmed to be identical on the downstream
> Radxa kernel, and this has been tested to work on a Rock 5 ITX board
> running kernel 6.19.3.
>=20
> Signed-off-by: Pedro Alves <pta2002@pta2002.com>

> +&hdmi_receiver {
> +	pinctrl-0 =3D <&hdmim1_rx_cec &hdmim1_rx_hpdin &hdmim1_rx_scl &hdmim1_r=
x_sda &hdmirx_det>;

are you sure the hdmim1_rx_hpdin is routed?
Because that is gpio3_D4 while your hpd-gpios below is gpio1_c6.

> +	pinctrl-names =3D "default";
> +	hpd-gpios =3D <&gpio1 RK_PC6 GPIO_ACTIVE_LOW>;

Also please provide a pinctrl setting for the gpio hpd pin.

Thanks a lot
Heiko

> +
> +	status =3D "okay";
> +};
> +
>  &hdptxphy1 {
>  	status =3D "okay";
>  };
>=20
> ---
> base-commit: 05f7e89ab9731565d8a62e3b5d1ec206485eeb0b
> change-id: 20260303-radxa-r5-itx-hdmirx-f4645e64f8c3
>=20
> Best regards,
>=20





