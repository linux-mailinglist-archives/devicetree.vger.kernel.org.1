Return-Path: <devicetree+bounces-103118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 68663979A2B
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 05:50:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 167691F22672
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 03:50:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E14681798C;
	Mon, 16 Sep 2024 03:50:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=uniontech.com header.i=@uniontech.com header.b="MkWzbuIW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgeu1.qq.com (smtpbgeu1.qq.com [52.59.177.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E34DEEDD;
	Mon, 16 Sep 2024 03:50:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=52.59.177.22
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726458612; cv=none; b=OlHx01EzcZzVPhu6kzbvXClFK/fztk2qgu10l36O7k+JRaz69sp9qvny7um8eGdELiYtyWJBQfgouUn7KDh7D0tXfDte4lIlvE4GssetnXIXAghFrht0C9fOH4/fVAU1PkkpCD4g1I9vb6h6B6IM+HeDcVV9lyqGBMMkcExyT0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726458612; c=relaxed/simple;
	bh=/HSGhOJ6oxm31APw53/JajkR0x+QvXiRffyiK/sw6WU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NAE1yCG2CYaaY3UthWrwMSNYmU36OU/RzPyPlhMWigNum4IBCaHuST7F+lHoAjvMcUA4PdU3W177atTCF1S00rqYvO9BWHO78HyV/46uew2VsbWtnmoszqZt/FTEf1t34Et6CihjtvZqrLuRq1+5b9f/RF3pGroptBgLbsGpbis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=uniontech.com; spf=pass smtp.mailfrom=uniontech.com; dkim=pass (1024-bit key) header.d=uniontech.com header.i=@uniontech.com header.b=MkWzbuIW; arc=none smtp.client-ip=52.59.177.22
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=uniontech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=uniontech.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uniontech.com;
	s=onoh2408; t=1726458606;
	bh=/HSGhOJ6oxm31APw53/JajkR0x+QvXiRffyiK/sw6WU=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=MkWzbuIWNp8SUvbde61TH4u4MzR9WQrWOA5h6MFmexIOM/HJyzokM8iNdKDqBR2lO
	 Y5e21zSGRDPjStblIar/XUoh9mkwSjuYP/6FkfePpKkgKZ88+vgd7BmaqBLHNQyJoO
	 o0oB0NVFfe9GLdWdEicrSZDkSpc74EpKBOOpRIdY=
X-QQ-mid: bizesmtpip3t1726458601tp21eho
X-QQ-Originating-IP: HtYYiAInNuBdcxwnvE2xIpXJ67YUULyhw7Le9dNePGI=
Received: from [IPV6:240e:36c:df7:ef00:7c16:95 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 16 Sep 2024 11:49:58 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 1
X-BIZMAIL-ID: 18235409677583047621
Message-ID: <FF9FEEE9165DCFD8+8587e98d-b14d-4281-b664-0c7a4eb361ae@uniontech.com>
Date: Mon, 16 Sep 2024 11:49:57 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6.6 v2 1/4] riscv: dts: starfive: add assigned-clock* to
 limit frquency
To: Greg KH <gregkh@linuxfoundation.org>
Cc: stable@vger.kernel.org, sashal@kernel.org, william.qiu@starfivetech.com,
 emil.renner.berthing@canonical.com, conor.dooley@microchip.com,
 xingyu.wu@starfivetech.com, walker.chen@starfivetech.com, robh@kernel.org,
 hal.feng@starfivetech.com, kernel@esmil.dk, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, richardcochran@gmail.com,
 netdev@vger.kernel.org
References: <3A31C289BC240955+20240912025539.1928223-1-wangyuli@uniontech.com>
 <2024091350-lapdog-tarot-0130@gregkh>
From: WangYuli <wangyuli@uniontech.com>
Content-Language: en-US
Autocrypt: addr=wangyuli@uniontech.com; keydata=
 xjMEZoEsiBYJKwYBBAHaRw8BAQdAyDPzcbPnchbIhweThfNK1tg1imM+5kgDBJSKP+nX39DN
 IVdhbmdZdWxpIDx3YW5neXVsaUB1bmlvbnRlY2guY29tPsKJBBMWCAAxFiEEa1GMzYeuKPkg
 qDuvxdofMEb0C+4FAmaBLIgCGwMECwkIBwUVCAkKCwUWAgMBAAAKCRDF2h8wRvQL7g0UAQCH
 3mrGM0HzOaARhBeA/Q3AIVfhS010a0MZmPTRGVfPbwD/SrncJwwPAL4GiLPEC4XssV6FPUAY
 0rA68eNNI9cJLArOOARmgSyJEgorBgEEAZdVAQUBAQdA88W4CTLDD9fKwW9PB5yurCNdWNS7
 VTL0dvPDofBTjFYDAQgHwngEGBYIACAWIQRrUYzNh64o+SCoO6/F2h8wRvQL7gUCZoEsiQIb
 DAAKCRDF2h8wRvQL7sKvAP4mBvm7Zn1OUjFViwkma8IGRGosXAvMUFyOHVcl1RTgFQEAuJkU
 o9ERi7qS/hbUdUgtitI89efbY0TVetgDsyeQiwU=
In-Reply-To: <2024091350-lapdog-tarot-0130@gregkh>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------SCJ1yK44mHojHxKX9ci50aO4"
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:uniontech.com:qybglogicsvrgz:qybglogicsvrgz8a-1

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------SCJ1yK44mHojHxKX9ci50aO4
Content-Type: multipart/mixed; boundary="------------0adrtLrd8lldal6V3zvoqDfe";
 protected-headers="v1"
From: WangYuli <wangyuli@uniontech.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: stable@vger.kernel.org, sashal@kernel.org, william.qiu@starfivetech.com,
 emil.renner.berthing@canonical.com, conor.dooley@microchip.com,
 xingyu.wu@starfivetech.com, walker.chen@starfivetech.com, robh@kernel.org,
 hal.feng@starfivetech.com, kernel@esmil.dk, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, richardcochran@gmail.com,
 netdev@vger.kernel.org
Message-ID: <8587e98d-b14d-4281-b664-0c7a4eb361ae@uniontech.com>
Subject: Re: [PATCH 6.6 v2 1/4] riscv: dts: starfive: add assigned-clock* to
 limit frquency
References: <3A31C289BC240955+20240912025539.1928223-1-wangyuli@uniontech.com>
 <2024091350-lapdog-tarot-0130@gregkh>
In-Reply-To: <2024091350-lapdog-tarot-0130@gregkh>

--------------0adrtLrd8lldal6V3zvoqDfe
Content-Type: multipart/mixed; boundary="------------UfvJUvQUrkWwX60bhbwUuCaX"

--------------UfvJUvQUrkWwX60bhbwUuCaX
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQpPbiAyMDI0LzkvMTMgMjA6NDIsIEdyZWcgS0ggd3JvdGU6DQo+IFBsZWFzZSByZXdvcmsg
dGhpcyBzZXJpZXMgYW5kIHNlbmQgb25seSB3aGF0IGlzIG5lZWRlZCBoZXJlLg0KDQpPSywg
anVzdCBvbmUuDQoNCkxpbms6aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzI0NzM0NTU3
OTY1OUQ4RjcrMjAyNDA5MTYwMzQ2MDMuNTkxMjAtMS13YW5neXVsaUB1bmlvbnRlY2guY29t
LyANCg0KDQpUaGFua3MsDQoNCi0tIA0KV2FuZ1l1bGkNCg==
--------------UfvJUvQUrkWwX60bhbwUuCaX
Content-Type: application/pgp-keys; name="OpenPGP_0xC5DA1F3046F40BEE.asc"
Content-Disposition: attachment; filename="OpenPGP_0xC5DA1F3046F40BEE.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----

xjMEZoEsiBYJKwYBBAHaRw8BAQdAyDPzcbPnchbIhweThfNK1tg1imM+5kgDBJSK
P+nX39DNIVdhbmdZdWxpIDx3YW5neXVsaUB1bmlvbnRlY2guY29tPsKJBBMWCAAx
FiEEa1GMzYeuKPkgqDuvxdofMEb0C+4FAmaBLIgCGwMECwkIBwUVCAkKCwUWAgMB
AAAKCRDF2h8wRvQL7g0UAQCH3mrGM0HzOaARhBeA/Q3AIVfhS010a0MZmPTRGVfP
bwD/SrncJwwPAL4GiLPEC4XssV6FPUAY0rA68eNNI9cJLArOOARmgSyJEgorBgEE
AZdVAQUBAQdA88W4CTLDD9fKwW9PB5yurCNdWNS7VTL0dvPDofBTjFYDAQgHwngE
GBYIACAWIQRrUYzNh64o+SCoO6/F2h8wRvQL7gUCZoEsiQIbDAAKCRDF2h8wRvQL
7sKvAP4mBvm7Zn1OUjFViwkma8IGRGosXAvMUFyOHVcl1RTgFQEAuJkUo9ERi7qS
/hbUdUgtitI89efbY0TVetgDsyeQiwU=3D
=3DBlkq
-----END PGP PUBLIC KEY BLOCK-----

--------------UfvJUvQUrkWwX60bhbwUuCaX--

--------------0adrtLrd8lldal6V3zvoqDfe--

--------------SCJ1yK44mHojHxKX9ci50aO4
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQRrUYzNh64o+SCoO6/F2h8wRvQL7gUCZueq5QUDAAAAAAAKCRDF2h8wRvQL7i69
AP4is2ibyrxhOUw7bDLNlaq45MONDMAKOkLJH9cGs9/sYgEA7AxRSHTXD02+jWCeihfeWB3EF0HG
2Z+NMlOXySpndgY=
=AJm7
-----END PGP SIGNATURE-----

--------------SCJ1yK44mHojHxKX9ci50aO4--

