Return-Path: <devicetree+bounces-247647-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F313CC9CDD
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 00:31:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D1EED302DB40
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 23:31:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 677C118BC3D;
	Wed, 17 Dec 2025 23:31:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=probably.group header.i=@probably.group header.b="aH9uNQNk"
X-Original-To: devicetree@vger.kernel.org
Received: from m1-out-mua-15.websupport.sk (m1-out-mua-15.websupport.sk [45.13.137.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4675288AD;
	Wed, 17 Dec 2025 23:31:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.13.137.24
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766014302; cv=none; b=bD/nzq0gSXEVyRtwU1r1H4kAo35C0WUnW30PimIS7lcm4x5TRjEhUDwAo2fV92Rf3qRpmGAd80+4ebyQU6BRFSHvQUpwJth4UrMNrvcAkyP+LsNn22BTHJpTRwRJwKVt0VSPUuzptWv1n4U2y5UtypQN4o4BW28NRzOJ6sIKF6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766014302; c=relaxed/simple;
	bh=bo+dyNjiHmVDqcv1a3rC7/baqK4g5oX2u9VbWLgFJfk=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=NXtq49Zw2mWIVg71uqcRjS0PJ6hCEqgXZGTsFcCaMJ8+5deaP1lQB/BB62zwzo78c8v7B2oBqwcfuONrFrhReRcOXqcQIgNfM9u08BYIG2MqNsuhseo76vlK0pRmr3/5KF9f4s58bz+InDyTjmEiUu4Gvi47cYsJePtWf2CUgjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=probably.group; spf=pass smtp.mailfrom=probably.group; dkim=pass (2048-bit key) header.d=probably.group header.i=@probably.group header.b=aH9uNQNk; arc=none smtp.client-ip=45.13.137.24
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=probably.group
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=probably.group
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=probably.group;
	s=mail; t=1766014290;
	bh=N2mq0Gx7GZeTynP2HqywdZDBMJbkGwWK5LlhAShzLmQ=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=aH9uNQNkP+QzUUguji0xI1K+VchucuyeSDKy/54IGGTCPJC2kPIDnxalJ+VxlrCDy
	 1UR5LDchY6sRTknWwHKo9UKeCM8BSqkV5doFIsRvsd0Zqp9UeV3eOkUv2bR67bQrim
	 cv5+ObQZntiuEtbW4yeGhw3Lax1q6VADwJp1LxDuX5P/NnhJsrLyp4d7HYAwd+pdp7
	 I0mM8VOsOLFD5HivqkwVN8fKz1D3Ivp9qvnfdsSh2pxKtKXHh83splYpjoZpfN0mcG
	 bymuITuTmDGwXf/PdwTU8MqAtdIrFgQ3ElS5bth7/+g4FSGrPf0DLSeFhwaqs40c/u
	 OB0I/7mjG4UuQ==
Received: from m1-u6-ing.websupport.sk (unknown [10.30.6.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	by m1-out-mua-15.websupport.sk (Postfix) with ESMTPS id 4dWqnG2CSGz1Md5;
	Thu, 18 Dec 2025 00:31:30 +0100 (CET)
X-Authenticated-Sender: mh@probably.group
Authentication-Results: m1-u6-ing.websupport.sk;
	auth=pass smtp.auth=mh@probably.group smtp.mailfrom=mh@probably.group
Received: from smtpclient.apple (unknown [109.164.127.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: mh@probably.group)
	by m1-u6-ing.websupport.sk (Postfix) with ESMTPSA id 4dWqnF0STBzdMvK;
	Thu, 18 Dec 2025 00:31:28 +0100 (CET)
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.300.41.1.7\))
Subject: Re: [PATCH] arm64: dts: rockchip: enable dual 2.5GbE on Rock 5T
From: =?utf-8?B?Ik1hcnRpbiBIb2xvdnNrw70gKFByb2JhYmx5IE5vdGhpbmcgcy5yLm8u?=
 =?utf-8?B?KSI=?= <mh@probably.group>
In-Reply-To: <176580661874.1441131.12947657582985645446.b4-ty@sntech.de>
Date: Thu, 18 Dec 2025 00:31:18 +0100
Cc: Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <7A2ADADA-3FD8-4AAE-B7D8-9137399FBE6E@probably.group>
References: <96516D1F-9787-47FE-A67E-4745D11D9207@probably.group>
 <176580661874.1441131.12947657582985645446.b4-ty@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
X-Mailer: Apple Mail (2.3864.300.41.1.7)
X-Out-Spamd-Result: default: False [0.40 / 1000.00];
	MV_CASE(0.50)[];
	MIME_GOOD(-0.10)[text/plain];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:44489, ipnet:109.164.0.0/17, country:CZ];
	ARC_NA(0.00)[];
	RCVD_COUNT_ZERO(0.00)[0];
	RCPT_COUNT_SEVEN(0.00)[8];
	HAS_X_AS(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+]
X-Out-Rspamd-Queue-Id: 4dWqnF0STBzdMvK
X-Rspamd-Action: no action
X-Out-Rspamd-Server: m1-rspamd-out-5
X-purgate-type: clean
X-purgate-Ad: Categorized by eleven eXpurgate (R) https://www.eleven.de
X-purgate: This mail is considered clean (visit https://www.eleven.de for further information)
X-purgate: clean
X-purgate-size: 1109
X-purgate-ID: 155908::1766014290-C0FE6043-56D75A65/0/0

Perfect, thanks a lot!

> On 15. 12. 2025, at 14:51, Heiko Stuebner <heiko@sntech.de> wrote:
>=20
>=20
> On Fri, 12 Dec 2025 17:23:35 +0100, "Martin Holovsk=C3=BD (Probably =
Nothing s.r.o. )" wrote:
>> The Radxa Rock 5T board features two RTL8125B 2.5GbE Ethernet =
controllers
>> connected via PCIe lanes pcie2x1l0 (fe170000) and pcie2x1l2 =
(fe190000).
>> Currently only one interface is functional because the PCIe =
controller
>> nodes lack the necessary reset GPIO configuration.
>>=20
>> Without the reset-gpios property, the RTL8125B PHYs remain in reset =
state
>> and are not enumerated by the PCIe bus. This results in only one =
Ethernet
>> interface being detected, or none at all depending on U-Boot =
initialization.
>>=20
>> [...]
>=20
> Applied, thanks!
>=20
> [1/1] arm64: dts: rockchip: enable dual 2.5GbE on Rock 5T
>      commit: 96029ffeccf677b1e4baa98f30909a83a485b6d7
>=20
> I've resorted both the pcie phandles as well as the pinctrl entries
> pcie2-0 comes before pcie2-1 etc :-) .
>=20
> Best regards,
> --=20
> Heiko Stuebner <heiko@sntech.de>


