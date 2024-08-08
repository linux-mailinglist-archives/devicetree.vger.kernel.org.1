Return-Path: <devicetree+bounces-92056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A92694BA8A
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 12:12:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C6C94B208DA
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 10:12:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A80311891BD;
	Thu,  8 Aug 2024 10:12:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=yahoo.com header.i=@yahoo.com header.b="pdwbpELb"
X-Original-To: devicetree@vger.kernel.org
Received: from sonic313-19.consmr.mail.sg3.yahoo.com (sonic313-19.consmr.mail.sg3.yahoo.com [106.10.240.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B01DAD528
	for <devicetree@vger.kernel.org>; Thu,  8 Aug 2024 10:11:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=106.10.240.78
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723111921; cv=none; b=sSKHq5oo6cuibUZ0yjTctDHzikupBfCsv3iCbZXABs57yZVa8xKmxmzGDbTXu6XNLeUXWByWfZphMNe3/Oru3ouJqXPN1j5gSiQQkAyzW1MZHRENBwTQkUEQ3oARi6zN036EsGmZY9ezyONjwXgSD7VNGM5AzCOmqlJs5bzO8vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723111921; c=relaxed/simple;
	bh=a0/nCekGh2WgXi/OWW+jnX8eQoFJmjmVu1/ImqeeH+s=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=kmuqb/ujBSxnKayOkJgrQ4so+PA3TwLWsHGVgDU+9ZmNftmjxkxrvoauywUcmBcqp2tPJrGpo9+REJ/UPiFA4uJjoYXrFokof7X7Natc/5MwJOKJjU7XEMkd1hfGEIgjljhEx7p+Q49t6wl57OD1XPxX1AAB8TvO+LQMmttgjdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=yahoo.com; spf=pass smtp.mailfrom=yahoo.com; dkim=pass (2048-bit key) header.d=yahoo.com header.i=@yahoo.com header.b=pdwbpELb; arc=none smtp.client-ip=106.10.240.78
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=yahoo.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1723111917; bh=YtGze27uA3MUcvh4sOOHW30uM5jDuuNft8Y//6DQec0=; h=Subject:From:To:Cc:Date:In-Reply-To:References:From:Subject:Reply-To; b=pdwbpELbnN5GnFvGrtwIkQATjSO2kri7ROvlbTcDGcbcbn0+0PeeI8jo91PGfTbKOkFVJe8VBrM4jzlbtG1Z6sCA1scSJAYSUL5mJuuZ2ruaR4wdvoaTyIR0jO9LusQmIMuBc2YVEvk/cJPdpPTsfwyHMVYf0UXQWi4gJBqNXjWyxKZHoLYFBVWuxc5xwNOriM7ph+WpLLpN7wwli5FDjDzsr/8Hwye1KXP5nC/O+Ylx/VzbVjLhPqvEb9I9ESxdRe4F7lqMIA0AIi37FRMeJ1c+afE0wTlB8k4Shw849B7pPS2tLKfJOt0yLoS2uZ+7Kh2XsciOKGYQENndFi/NLg==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1723111917; bh=+izy/Shup822lfcnUQJvgpHtFN9H/wozl+5FgLf2+mv=; h=X-Sonic-MF:Subject:From:To:Date:From:Subject; b=fSMskfWYyEQmh5JGJvmkXVhr054/AquiYemGptbM7hdkbv+lqHfdXLsdcJRswHRlh2tcqbswVNsK4Q61VKR7xMgA0V95l6WO7FkHFh9yXro788iRruBcM0+ZTZ+bmLKsmU52nmrXjoRgqhm3zVzWBQuKcrhdgTC7HRNXDSjYJ8kNMyKL70W2W05/+3zc4a68FBWu6G1mpuhOKKhPa4CMpyDXfKFTCH9cwZhAA/Wv/+xFUQXPaul9UMzbr2eszSKpj3WAGNW2xY6jBWm4/vU65CzwZctIBKbiODoV7OpYsbVwnbtIfME9/mFsY1LCech9V4exz8bGy6ad6Gm2jVhYLg==
X-YMail-OSG: Acv03P4VM1nfFzFd5SEBTrFKqCrnVrsLs2sVPTOSCCQaRZLUzFp1RQuZWd85GGh
 yNE1_TODgTXt.wxb6u9miWaYlhXWdoo41sf5eQbr5XtYAfAXeZu6RCqF8F0ZXK6y7TyOw6BcRw27
 LbTOevK1lsWIrmSJOx7_e8LepP5ffRr00YR6WEcbBp1urLQ6aVHZZ5RA4pW52mNQeXXkahEA3j7p
 0Y3afMoHwOPi6f8hjEkzfaQLHvGmouNuRpXn.ocRYSzM73po5D9Rkpozy43lQQXelTbpQFLfc.s7
 k1WKiAepxeZxFXbfV67wAfFPhz9iTbu2NQbgyEHBWTittyJC2esBiMGwBC6T3lFkHVgAveP4_q3K
 VttDqUFndYytMmSkYNH6itsacdC52REDNUOIlfwgioXqrmJ9HF3J7ApV7cuigDiKJRHRFcECx3PA
 p_xzpNr3ACnZoAoGzz1P6sf6Fpa.OeNDkzLgz4ZhoG9VDHT8cbIPCafZ3uTmzaTIo0DZY5gTsn8h
 v_2dfhbKOIly5eTg2ADamrORtz4NIlnPYKspZHNZsO0cgqrs7zjR_pUnXPFo5INqtWo4BJgJ8SVZ
 3ufgtvxiuKyJ1gEerPTsdIaoZtlrZjHgW4uwCaLhTknVzJEv39xDbJjCfwdLbo6XXH1MBTd74ol_
 My4LGpab9LSQcTfV2IQfOmwHusEL0RCaqcbMMLDzGdCgYrTJD3wqQjH8x6KANQSsV.yq3fukbudP
 3MRpV4hOA2QaybSo8.._IBu8w5FLyefHLEZTRMrmyNeYR3jdw2.mr1QrflnbCSFwVd0ssbpDsYGk
 1WZjGhqdT_QoNZUlgAukzmTcqMm_gZNnGY0UdPrOlAuFmwIMdayEyaKpeTGV0LY.IssddRpnDTEV
 0oWVilqXWQHBDcZUqrHvTgOdEN3wyZvlq9PNqQM7nivd2D9n85l3w97MMQgPO9Ci6kUlvrRWmg_M
 WqYOTqq5GAKWcFhjxZpxXWQQGhfb74D1Eap5zo29Qfngs3ry7n9oJDTaxPAlMVMRiJqqDnhIlUBD
 jNiJPMOwX.eOIZM0UZBjdSITYXpZRvyQIx6vcCDOaxaTAQVPTSKAkE0i05I.be4mMK5aQYJOXHVF
 .HiHtJvKsYx0xkZkPiIOLGXkxwsZRwal550UOyYI.Dk5LiAYw05qkyE0eaujONqcx7fzMgYELRn9
 PwTo.r0aAggcpqx4sea96q_xpbxbUb4BOgu2_4sjbFltstHcJKQd5UAScbyOaNt0LuU.gJMSGhEK
 _mbE7dysiAYZcF95indzXu_738mrj3G_ivz8RQUvUp44Jn.8m58_wkiEw4WLb8rVBdQa8ha5FpIx
 xFFNx22xSkRHRLTDsKLW7BChW8JD87GOBDkkPahey1xYSSQuScKt4hOicjGLWzwlhJ41GAK_qJ1r
 elVSxxdXF8jZk1tRViMhx.nCugoDcLVqEQTqk7e7F4vXGz.Kxvo0NB_2CoM3YwZa7gHz1pKqRG7G
 ABQksBJZmM.i7RhVjG6gEneOmn6VFx6BB2W7QvLbQrP0PgKrpVjFx67_aK3Ebrb8vYiXNqqyTjxg
 xKKpeEh4UwpAVT8TgNp0Eref..Ogfok.gRIecmUh_POfy2XHUGH7K5LL9u1Us71kcofWxc6pNAph
 XmowtCkStNU26nw0Jyneg7f_hzOhSO6hqBww2XSG_getonFjL2hlQypcVarHwbetUJtCPGes4jGL
 du.LzeyRYg7gBneOpAOmw6d9rsl3vu6dYBmefRgy.HZQKS3_5m4HuXMTHGXNrxy_h8RsbTM.pZPF
 yQJE4WaInPugdiClVPcqJkhuxR9_gsVDkRpt5BEtuHww9DwL6xWgXf3Pvcr9LQxaYwaht4w11d99
 OTzsUXYdjdcOH_.5ALg4upfOWvQpzJf0uSf8hh9ZKZ1N800NPFw3AIaWYEY3bTJDJHoLalUERz7f
 i3JaRJ0.YcARAeEt0_hzBqOmjro34zkbxaqFFDVaGK8KkG4t8wQbUB0o2QV5Igzc2fFfCeyFHVIs
 w3g1KVitzYFegJEwB.rbxPv2FCQNBCr49NPDDm7a6IZCiS4_K2O0qPFNP6sF6ZhPDvGgXlIwCYaJ
 4d10w0_71jYfjHryCnPOxcUF6xsNn2rKN6XhzEW7d2.mDtV4UxBr9kRgftjF_KltYoFyde.0PgXG
 mXW1jeBY0xIl2_Rl0x_69FWU768PrH2ZkXxxR1ul.VCC0ceX5JcTXvZ3CZppSmwTwdmMiw5OOQtD
 qyOWfpITvDCOoNYNgCOoyMRyKa4hLk79mTTLfDG5iDjeR6cwlNtjweadXvr3dXQ--
X-Sonic-MF: <kwangson@yahoo.com>
X-Sonic-ID: 4ce2f831-bb3d-44da-a703-607e492cf863
Received: from sonic.gate.mail.ne1.yahoo.com by sonic313.consmr.mail.sg3.yahoo.com with HTTP; Thu, 8 Aug 2024 10:11:57 +0000
Received: by hermes--production-sg3-fc85cddf6-kzxtv (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID 719bc7da6e47d6736d4c9dcb1b1f957f;
          Thu, 08 Aug 2024 09:51:37 +0000 (UTC)
Message-ID: <48be93dc376d115d93b9d79f157e31d7cfedea15.camel@yahoo.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: clock: exynosautov9: add dpum clock
From: Kwanghoon Son <kwangson@yahoo.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Kwanghoon Son
 <k.son@samsung.com>,  s.nawrocki@samsung.com, cw00.choi@samsung.com,
 alim.akhtar@samsung.com,  mturquette@baylibre.com, sboyd@kernel.org,
 robh@kernel.org, conor+dt@kernel.org,  tomasz.figa@gmail.com
Cc: linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Date: Thu, 08 Aug 2024 18:51:34 +0900
In-Reply-To: <1a7db82e-72ee-496c-a501-54c7dd05cd41@kernel.org>
References: <20240730111535.135301-1-k.son@samsung.com>
	 <CGME20240730111628epcas1p1148cf2853a9d2fc6decbd4ce50f23715@epcas1p1.samsung.com>
	 <20240730111535.135301-2-k.son@samsung.com>
	 <1a7db82e-72ee-496c-a501-54c7dd05cd41@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Mailer: WebService/1.1.22544 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo

On Thu, 2024-08-08 at 09:57 +0200, Krzysztof Kozlowski wrote:
> On 30/07/2024 13:15, Kwanghoon Son wrote:
> > Add dpum clock definitions and compatibles.
> >=20
> > Signed-off-by: Kwanghoon Son <k.son@samsung.com>
> > ---
> >  .../clock/samsung,exynosautov9-clock.yaml     | 19 +++++++++++++++++++
> >  .../dt-bindings/clock/samsung,exynosautov9.h  | 11 +++++++++++
> >  2 files changed, 30 insertions(+)
>=20
> > +
> > +    then:
> > +      properties:
> > +        clocks:
> > +          items:
> > +            - description: External reference clock (26 MHz)
> > +            - description: CMU_DPUM bus clock (from CMU_TOP)
> > +
> > +        clock-names:
> > +          items:
> > +            - const: oscclk
> > +            - const: dout_clkcmu_dpum_bus
>=20
> We need to stop calling input clocks by full name. Rob already pointed
> it out for GS101 and we fixed the approach there. This binding already
> uses above syntax, but I think we can start with proper approach even if
> it leads to inconsistency. So please come with description of this clock
> (not clock name - see GS101) and name, e.g. "bus".

True. I'll look over GS101 more and work in v3.

>=20
> BTW, in the future, please ping after two weeks or better even: relax,
> and help out by reviewing other patches on the mailing lists in order to
> relieve the burden of maintainers and move your patches higher up the lis=
t.

I'll keep in mind.
Thanks for advice.

Kwang.

>=20
> Best regards,
> Krzysztof
>=20


