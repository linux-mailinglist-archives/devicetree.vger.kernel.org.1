Return-Path: <devicetree+bounces-96201-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA1C95D1A8
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 17:39:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C134D1C21F55
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 15:39:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 479A318BB8D;
	Fri, 23 Aug 2024 15:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=yahoo.com header.i=@yahoo.com header.b="RRxns7tD"
X-Original-To: devicetree@vger.kernel.org
Received: from sonic308-20.consmr.mail.sg3.yahoo.com (sonic308-20.consmr.mail.sg3.yahoo.com [106.10.241.210])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A8618A6DD
	for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 15:37:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=106.10.241.210
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724427442; cv=none; b=B62NOMl+YDro+6X38XTT5gDw6Gsx/ktWJux373VNOgwqt9XxirB7GQgRw5Rzdu5IeE8b8UYFolx6BoSBseNyZuwbPJ58m8ozqYBpLarGqCAEhSt4hJ7g/t3CRaLEp33+u+vop/R/25hF+ivMTodMyZIS+5CnfSEwHvht9LRhZ6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724427442; c=relaxed/simple;
	bh=EvWnEstgQATqKW3BUa2ZbWYElOR368N4CPw+/7ahwHA=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=sj5d7QCrGnM/CoKap4TATIFz8E+rr50C3vq4fqaFL3kdlK6iMHmDPbcZqHSAzLALEE4axA+H/3wK2SsdVnmUPDj6XubE1EE0qOQ8zMpjQ4IhW1pQ//t/R5xBcutCUk0I/vaHapD/NrTSPEq0h7vRung7yApD0FQ7eQT1Rm9gjJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=yahoo.com; spf=pass smtp.mailfrom=yahoo.com; dkim=pass (2048-bit key) header.d=yahoo.com header.i=@yahoo.com header.b=RRxns7tD; arc=none smtp.client-ip=106.10.241.210
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=yahoo.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1724427438; bh=EvWnEstgQATqKW3BUa2ZbWYElOR368N4CPw+/7ahwHA=; h=Subject:From:To:Cc:Date:In-Reply-To:References:From:Subject:Reply-To; b=RRxns7tDuueSwscuKSlErrmKODM5jKga5t3TgNxR47E95Umg9kixOK9bBs0OAgsEYcUhAXTLzDRydBnjPxcnhFEcIcry9hQ2Sieu3yvaPqX/nLbShNgtWxxVEU957qbYPbpHh1HlD8HcB0MRkzOAwaLtDI2NZI0IQlHg+zI8URvs2lKCxC93c2ef1EtwXQSG24SNo/2x+pnSjOwc177oIdAr0Gs93vE+1hJeHELr8QvKC8f2DFtwU3Zqxl+cjRsoCosfafP4Z/ZBnZXT87b7bQlFO0MhOfx5zhD7cisdC75v+P7fisX2dY0S3BBaCSex2eezomPuk03juhSJ+J5AZw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1724427438; bh=bnctnjCB6gkgIiYYwqsIunLBCc7NrIMAtIGBPtWJAfC=; h=X-Sonic-MF:Subject:From:To:Date:From:Subject; b=T9h4WtMo691L25uc8z9Cy3O5cTVFfuPPx1MU4HFC9bANmfXFWRKVSdhnySME5AD7PIe0boEdmVjU32PNKlMluUfXt68/PPKS54KrXb67PoWhMabTtvxzUq/54QMeBXDwBs3UA248IWL7lmDYSXPCVNlpBKInOVKuLT6OOJigywPmyQ/K703XoRC7vIS8hj/0L66kH6HDjNRI6iJBc0OxkhjOIrVfSm73NeTaRffYzEM4WcicIWPPnHPEi+/3Y4mXJ576LWGPVBYN+71mSY9tbZzyGHeP0oyCtvM4k1VGigXlfYfaqX1uBNdrEIuamse8e+i8xFCjBoTec0M6fgR0yA==
X-YMail-OSG: EwKlNdEVM1nqzMuBm_EYd08MufrKnsg5aedQ51_js20FBOjW2nez9Krtr4wCsiN
 sXB1ls7CSQhPfapGwXyV_eoffEcJfRmxI4tbHEjOZYI04nQUmHn2UkmgzGkIH6MGjYsGktWT1DZ9
 02pDL4zDYirSqMaGtvGyhH8ZKq7HtQv57LAhf40eoKq9UK_5M5GogkvaMZswcLVLlqwiVIutlV_w
 vIvSpK3w33nzF0vopPBfbkXdCk8.37ovYp23mYCG4RAt_HTVsTEqNQDm6kspyYc_OP6ytHZkxpXr
 1navpOBD37Z6GPgPLmbm4dgxmKAtaXHSsgfEIQRJZKmEgLa9QqAIFYuoJQoo.3N_crTRKzx.vO94
 YE4KWBcn.YR.dKd_1MzDytplepT_tuRkBku93rcvBtVJHxAwHod11PRcIXQykiSxHHPczQr9suEk
 BJP9CytNfYS0QislIAUHzM3N0R4Tt0he0BjgODrjZGjjY3XawVi8Aiu2xQRLjTEy6tTYqylLbrxU
 oyEhyEiOmgcHJMNVMuPp1UaIO2oBCygTQwpOX_zDC9QNDIX_.WwakamjmJhY8jdnScl8_9Z_aaKs
 Ngb5_dNTiZ1oaFG_ph3E6O0TqXfJFD43yeC2k2TJcfQ8lM1B_4ZWfjXXk_2mjYJgxuUldloslmKb
 EvpfGpk6fVTatDT5GwaJHNv4MPfaPsTvtwuOO64pWR2vsJfj4RjGDASC3Kkw08XsNoboPQvPrHTM
 3QfRMBUMLor8uG5pnxsNkw97pJdnmW_Sf87U8wRWz4QgxEaaEF1uU0vNRy3fmlLtb63bnPV.vKwE
 btJPpfX5NPrJEZ_nuHJGSYO2HUO.4ssMXaMjbAxWcBj9GdlV6ATquzJ_v.GCaFht.I4SQTpVlux3
 bRXLfQArzXssBgrp8HyC15O9bxyG.OtJvTlPrWtt1He10WU3fpFHNEMJyC.CUPdRuK8Ad1VCIowG
 zPaulu0SVFAY36gaLhBPrmWZT1QlotnK2NJgmoZr8hvOddPFh_3IAK8r6bGYrPJ0Dvs3gw1CfRyL
 vK36k3LB2tIC7ZF5SA5aX6To6PrP6QI.aPopvitFnyXa8a_NGz1vnz8CPmAmamka2YGKYe6cI9Qt
 wJiUaZVUN9pA2OjyVQ7PlQInLApC9qK72T_6oz6Y5cQGDpCvw7sadgAjFE28lWJhkisIVeNrYkVr
 bA05Vmd4QQCDInIalvjbbCGpsyFhOOQhdOUAtSXZdW_fq87AEnP.KmoJ_zdPMTFJtnCo.Rns.rhF
 rzbzxnLpFW_MgKe0aTF_7eGdgyZ9xzAaOOvsz8q1tWDjnWNi2IPOEwz5WojPYGUNy9PTaHXJ04cq
 Pr37AapW4XCX6r8MgysJ53IGNH1.SJuoTuHuw4IQqMQEzhbviWf1O_wBeUTHto7TD4vbdoQVYhIe
 31v9asil8ouwWJrHwE71iPJX_CNN6d0j9VKUPZ79RCszjLUzDDWBSlYO3l3pk6Mhjje.8SlzFaCE
 JLb4uOT0ZimfXkj5I1s771bhjg6WWQNoeAmdaq3m0j40soiVI6BfmtxgPHi1CwcrirxMk3NpihYd
 4YIcID04vkx1O_Ip.xZo.AttatSSPW588XwpfvMQe0I9ldkl82AB7oHXC5HtXNNIpXpLF5huMrFK
 7VQi_xwhmXsLPQ58bpKIQUz.4V_UHzBlMPgPn_M5Ow68B.ombwcHdSBwDYdoEqvSPOJd5Vrlk1bT
 s5i9zTb99hqfmp6riVG9z1LWVdQek_9k2qUSGbMBCpTCiBFnwza9Gn84u5SatXWfwqzZwf.oaKMU
 agQiala.GrxSDA.MNzVh9G147xU0hxteykBHk03koSAUgaQ9q4X96KfSC0xNCQt6rPtHyjWHhvNh
 V0a3rgp49.x4dbxKMOovZ1q1BYEIPCFP2Yn2tYdkIUxhX3p9ZCk40kHZqIVt47y214b0rNruvPVr
 vUHZEi10WA7WbKCRYktHRPPal.rMY8WZJcuN2_1MdXAendKouS9Nhb8fWQjOujIP6EG.LO4xxyGq
 o3gDBr59H0v0ZU6OujM9pBuF_6.RUiRAUFVH7KLzw96WUfMpM9nPXkNTAxAZxCWN1q5r2j7vft8r
 tPBKN1PDwmLDdo_nycQPFcjFenFl9hsZr1PUg1Bhblfq6VAXSODLsXJhO27CUbhzN4dqSRQrGK2w
 TQBtQhv9FgMFQZnqZY9OigI7IKekUFXV9iHlvI0eQk_f6nZL.Rf4lZTYO_aUFdVWIGP3UGCQk4S7
 _D3I-
X-Sonic-MF: <kwangson@yahoo.com>
X-Sonic-ID: 647f6439-d939-4880-9632-587122546a1b
Received: from sonic.gate.mail.ne1.yahoo.com by sonic308.consmr.mail.sg3.yahoo.com with HTTP; Fri, 23 Aug 2024 15:37:18 +0000
Received: by hermes--production-sg3-fc85cddf6-pbnn7 (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID c6e6e65d284067638db024485a1b538d;
          Fri, 23 Aug 2024 14:56:42 +0000 (UTC)
Message-ID: <337666703c41856e61f4cc2dee7e69c276d5102b.camel@yahoo.com>
Subject: Re: [PATCH v3 0/3] dpum clock support for Exynos Auto v9 SoC
From: Kwanghoon Son <kwangson@yahoo.com>
To: David Virag <virag.david003@gmail.com>, Kwanghoon Son
 <k.son@samsung.com>,  Krzysztof Kozlowski <krzk@kernel.org>, Sylwester
 Nawrocki <s.nawrocki@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Alim Akhtar <alim.akhtar@samsung.com>, Michael Turquette
 <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring
 <robh@kernel.org>,  Conor Dooley <conor+dt@kernel.org>, Chanho Park
 <chanho61.park@samsung.com>, Tomasz Figa <tomasz.figa@gmail.com>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Sam Protsenko <semen.protsenko@linaro.org>,
 Jaewon Kim <jaewon02.kim@samsung.com>
Cc: linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Date: Fri, 23 Aug 2024 23:56:39 +0900
In-Reply-To: <2e4d3d180f535e57d9cb98e7bac1d14b51ffc5d4.camel@gmail.com>
References: <CGME20240809115500epcas1p44cb69cea78a73833de38eab552b204fc@epcas1p4.samsung.com>
	 <20240809-clk_dpum-v3-0-359decc30fe2@samsung.com>
	 <2e4d3d180f535e57d9cb98e7bac1d14b51ffc5d4.camel@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Mailer: WebService/1.1.22645 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo

On Thu, 2024-08-22 at 20:59 +0200, David Virag wrote:
> Hi Kwanghoon,
>=20
> On Fri, 2024-08-09 at 20:54 +0900, Kwanghoon Son wrote:
> > DPUM (Display Processing Unit Main) is main dpu for Exynosautov9.
> > =C2=A0=C2=A0=C2=A0=20
> > This patches enable clock for dpum, sysmmu(iommu).
> >=20
> > I tested using sysmmu, DPP, DECON, DP on sdk board (modetest works).
>=20
> Does this mean you are working on mainline drivers for these?

Yes. I working on decon exynosautov9 now. (maybe exynosautov920 in
future..)

> If you don't mind me asking, what state are these in?

I'm glad to.
I shift vendor code to mainline. vendor code had split directory, now I
merged to proper mainline drm directory. And it work with modetest. But
a lot of todo.. It's 'somehow' works level.

> Is DSIM being worked on?

For now No. Exynosauto series support DP, MIPI both, but SDK board is
shape of easy to test with DP. For now only modetest works through DP
port interface.

> I am asking these, because I am also working on some drivers for DPP,
> DECON, and DSIM on the Exynos7885.

Ah, that's nice. But actually I'm not involved with exynosauto or the
hardware team. (But I get board and information from them to upstream.)
So I have no idea what the Exynos7885 drm hardware has.

> Now, my DPP and DECON drivers are not even close to complete, they just
> have the bare minimum for output and vsync, using them as initialized
> by the bootloader, but I do have a semi-functional DSIM driver (well,
> existing mainline DSIM driver patched up to work on 7885) that is
> enough for controlling the DSI panel attached to my phone.

For now, I don't understands how your display works because I really
don't know about 7885. But my DPP and decon also far to complete.
(really ugly code.)

> If you are working on DPP and DECON drivers, I won't spend much time
> with those for now, as your driver for ExynosAutoV9 may help a lot with
> 7885 as well.

Here is my suggestion. I will share my code after clean up with NO-
MERGE or WIP tag ASAP. But mind that I only code kernel when have spare
time..

Could you share your code also? even It's not ready.

> If you are not working on a DSIM driver, I'll keep working on it for
> 7885. If you are, I'll have to think about how to move forward.
>=20
> Best regards,
> David

+ I added Sam Protsenko <semen.protsenko@linaro.org>
Because I also want to know maybe he has some process for drm, since he
worked on exynos850 sysmmu.

+ Alim Akhtar, Do you know some information around theses?
Especially between 7885, exynosauto?


