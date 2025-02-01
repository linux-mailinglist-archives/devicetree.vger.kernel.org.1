Return-Path: <devicetree+bounces-142206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 71BEBA2484E
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 11:37:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B57693A83AF
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 10:37:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A35013E41A;
	Sat,  1 Feb 2025 10:37:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="pTBB+O0K"
X-Original-To: devicetree@vger.kernel.org
Received: from out-179.mta0.migadu.com (out-179.mta0.migadu.com [91.218.175.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311EE17BA5
	for <devicetree@vger.kernel.org>; Sat,  1 Feb 2025 10:37:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738406262; cv=none; b=CylOaFWMbaGOmdGW9fQwgGjGQ9L2eI0N/Cl+FyHTrI2ivF42q0joAb6hx3+NZ8UABKQzw9hvRyGu5y78+Riuq6KT8bf06l8w1YSn1pBzsbibdvbYCPZeuHq0vFW4TUcy74w4ajZMXMQMsKhpHGEIW9mX/Nv9jSZgrdWHaUan7es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738406262; c=relaxed/simple;
	bh=PWVtKBZ4CwP0cP93Glv305Rndjv3ubM6exFB2e1HTbc=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:Cc:To:
	 References:In-Reply-To; b=r4S9X9IDvmLVqrd3lllR34v3ox4ClLt6zS0Jh6u9kTuoVebOxaGixX+UGH4mZKdDTAsB5c7Fr+YQbW4uvJ2CdBZm9lsB7FfTAYBklJ7/wTwtxpBSkU6YJowDRU40Tud0jk0ixDvmV0yo3OqUaA+zH95lG8WBFm1IB6duSVtJmjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=pTBB+O0K; arc=none smtp.client-ip=91.218.175.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1738406243;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PATAQ/9BwIrWJ3JG6zuTUGePxEvjmurrP+nZnbHjNSM=;
	b=pTBB+O0KTKCP9wTrBMgiLMyxMhEgbSIKEe7gFkbkqj+M9bU6lh7kxg5MEHk2wfS0+PVSRu
	hnf78jkW3RAFs6CGJAgLCkgHVwr440+Td5zj12/HeuPGp5EEkaGlTLFH2ghxaTuFXzsFiF
	+5VZjumqIIEwxgpbw9DzYrLP2o7CSAOMAAHbvSjn1aSApAINi8jFMyQt4VnHsTETrG9SPK
	KhbdR1yqNSfu9PPVEAisb3nuR14Ys06aNZZGV4d87nc8P0X8T1b7wv5jz/ydGSMzrBkENQ
	l8vl05ah/dbQuQeF4sRveDRHsPI6Hfjv/PImveicpK0OGSxFSA1tci0mvlkA1Q==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sat, 01 Feb 2025 10:36:37 +0000
Message-Id: <D7H1KE36MWE6.1G0PMUXEGX4XG@postmarketos.org>
Subject: Re: [PATCH 1/2] dt-bindings: arm: amlogic: add Xiaomi Mi TV Stick
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Ferass El Hafidi" <funderscore@postmarketos.org>
Cc: "Neil Armstrong" <neil.armstrong@linaro.org>, "Kevin Hilman"
 <khilman@baylibre.com>, "Jerome Brunet" <jbrunet@baylibre.com>, "Martin
 Blumenstingl" <martin.blumenstingl@googlemail.com>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, <linux-amlogic@lists.infradead.org>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <~postmarketos/upstreaming@lists.sr.ht>,
 "Artur Weber" <aweber.kernel@gmail.com>, "Karl Chan"
 <exxxxkc@getgoogleoff.me>
To: "Christian Hewitt" <christianshewitt@gmail.com>
References: <20250131200319.19996-1-funderscore@postmarketos.org>
 <20250131200319.19996-2-funderscore@postmarketos.org>
 <5D2DE475-BD47-4AAB-9638-3F1BF6C57811@gmail.com>
In-Reply-To: <5D2DE475-BD47-4AAB-9638-3F1BF6C57811@gmail.com>
X-Migadu-Flow: FLOW_OUT

On Sat Feb 1, 2025 at 5:45 AM UTC, Christian Hewitt wrote:
> > On 1 Feb 2025, at 12:03=E2=80=AFam, Ferass El Hafidi <funderscore@postm=
arketos.org> wrote:
> >=20
> > From: Ferass El Hafidi <funderscore@postmarketos.org>
> >=20
> > Add support for xiaomi-aquaman.
> >=20
> > Signed-off-by: Ferass El Hafidi <funderscore@postmarketos.org>
> > ---
> > Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
> > 1 file changed, 1 insertion(+)
> >=20
> > diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Docum=
entation/devicetree/bindings/arm/amlogic.yaml
> > index 0647851ae..0db7038b9 100644
> > --- a/Documentation/devicetree/bindings/arm/amlogic.yaml
> > +++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
> > @@ -70,6 +70,7 @@ properties:
> >           - enum:
> >               - amlogic,p241
> >               - libretech,aml-s805x-ac
> > +              - xiaomi,aquaman
>
> If this is S805Y not S805X, you should add a new binding section for
> S805Y devices, and add the board there.

Will do.  Thanks.

>
> e.g. I did this for S905L (GXLX) devices:
> https://patchwork.kernel.org/project/linux-amlogic/patch/20240604084134.3=
315841-1-christianshewitt@gmail.com/
>
> Christian
>
> >           - const: amlogic,s805x
> >           - const: amlogic,meson-gxl
> >=20
> > --=20
> > 2.47.1
> >=20
> >=20
> > _______________________________________________
> > linux-amlogic mailing list
> > linux-amlogic@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-amlogic


