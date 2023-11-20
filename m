Return-Path: <devicetree+bounces-17308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E8177F1FFD
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 23:11:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B52ED1C211C9
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 22:11:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 948A238FBC;
	Mon, 20 Nov 2023 22:10:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=emailprofi.seznam.cz header.i=@emailprofi.seznam.cz header.b="ZMrU7H99"
X-Original-To: devicetree@vger.kernel.org
Received: from mxb-1-390.seznam.cz (mxb-1-390.seznam.cz [IPv6:2a02:598:128:8a00::1000:390])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D2A295
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 14:10:52 -0800 (PST)
Received: from email.seznam.cz
	by smtpc-mxb-76bd9fc5fb-rdwgf
	(smtpc-mxb-76bd9fc5fb-rdwgf [2a02:598:128:8a00::1000:390])
	id 03e577931877fa470700ce11;
	Mon, 20 Nov 2023 23:10:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=emailprofi.seznam.cz; s=szn20221014; t=1700518221;
	bh=GxKicivXOwrxFLsB1AEW+vzht74xCat8MFgdq7O3bQY=;
	h=Received:Date:From:To:Cc:Subject:Message-ID:In-Reply-To:
	 References:X-Mailer:MIME-Version:Content-Type:
	 Content-Transfer-Encoding;
	b=ZMrU7H99ieeJ+M8h8GLKEGgxsi2bpXh2fB47FiyacA39af+bao66QhJ01EC+tuaFt
	 +boTFf87rJQBf41E/0J8E73LoUJ1EKKfMzEy27S0AINOb5E9PN6nBay3XqCp1ujvEU
	 9EPjCGyYICzQ3LvTEpECgHjUF0FSI0udMhFh4knAiE8RjwexV1S4XiG0qxWTsCFAEh
	 oOgv14EybAK5lZ6QWdKKspfRtbYrJDk6t3WcDO7ym5gIhsgWx4n/RS0gQS8BjyCZLX
	 8rTHp3McyjmwavoUh/DD/3+uI388KQ054vUZMOIlrntPQ5rgUy5rK8UZ69ndd3Vjlb
	 wWvJrEqOfPx/Q==
Received: from alena.lan (88.146.114.74.pe3ny.net [88.146.114.74])
	by smtpd-relay-5846f595f5-k5nnq (smtpd/2.0.15) with ESMTPA
	id ac801f9a-12d3-4f6c-ba56-9e521435f9b6;
	Mon, 20 Nov 2023 23:10:18 +0100
Date: Mon, 20 Nov 2023 23:10:17 +0100
From: Pavel =?UTF-8?B?TMO2Ymw=?= <pavel@loebl.cz>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Jernej
 Skrabec <jernej.skrabec@gmail.com>, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: arm: sunxi: Add Banana Pi P2 Zero v1.1
Message-ID: <20231120231017.614b9d61@alena.lan>
In-Reply-To: <d87bb48b-e04a-4ee4-86eb-d1533328cc74@kernel.org>
References: <20231118111418.979681-1-pavel@loebl.cz>
	<20231118111418.979681-2-pavel@loebl.cz>
	<d87bb48b-e04a-4ee4-86eb-d1533328cc74@kernel.org>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, 20 Nov 2023 10:16:55 +0100
Krzysztof Kozlowski <krzk@kernel.org> wrote:

> On 18/11/2023 12:14, Pavel L=C3=B6bl wrote:
> > Document binding for Banana Pi P2 Zero v1.1.
> >=20
> > Signed-off-by: Pavel L=C3=B6bl <pavel@loebl.cz>
> > ---
> >  Documentation/devicetree/bindings/arm/sunxi.yaml | 6 ++++++ =20
>=20
> Please use scripts/get_maintainers.pl to get a list of necessary
> people and lists to CC (and consider --no-git-fallback argument). It
> might happen, that command when run on an older kernel, gives you
> outdated entries. Therefore please be sure you base your patches on
> recent Linux kernel.
That's what I did using next-20231117 kernel source, without
--no-git-fallback argument though. The output seemed a bit long so I
have not included every line in CC. So you are saying I should address
more people next time?

Also it's not clear to me what should go to Cc: and what should go to
To: when submitting. Looking at the list there does not seem to be a
rule.

>=20
> >  1 file changed, 6 insertions(+)
> >=20
> > diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml
> > b/Documentation/devicetree/bindings/arm/sunxi.yaml index
> > 11c5ce941dd7..f3c0511cc133 100644 ---
> > a/Documentation/devicetree/bindings/arm/sunxi.yaml +++
> > b/Documentation/devicetree/bindings/arm/sunxi.yaml @@ -141,6
> > +141,12 @@ properties:
> >            - const: sinovoip,bananapi-m64
> >            - const: allwinner,sun50i-a64
> > =20
> > +      - description: BananaPi P2 Zero v1.1
> > +        items:
> > +          - const: sinovoip,bananapi-p2-zero-v1.1
> > +          - const: sinovoip,bananapi-p2-zero =20
>=20
> That's not what your DTS is saying.
>=20
> It does not look like you tested the DTS against bindings. Please run
> `make dtbs_check W=3D1` (see
> Documentation/devicetree/bindings/writing-schema.rst or
> https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sou=
rces-with-the-devicetree-schema/
> for instructions).
You are right, didn't know about this. I've fixed that for v2 (and all
the other issues reported).

Pavel

