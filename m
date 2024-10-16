Return-Path: <devicetree+bounces-112053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 310B59A0E35
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 17:30:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D0FE91F231F6
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 15:30:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B820E1384B3;
	Wed, 16 Oct 2024 15:30:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b="kIUBmrS7"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F77615C13E
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 15:30:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729092648; cv=none; b=Z0IthQIBtbBcQlvVMHyl9+PA9t8rZ8zJ87LWJ9qNxYtsczOehYhk0jIIZMkhlk8Dhh9oC6d5Ynp+s2LkrQZ5k4e0y0Vh63RT5ihuMlNU63zV9KAvuEdn1zDebqG8oggFKzocn/3IZVRiBbNqLGqM/KriP8F2MSuJxgXYv9YrjJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729092648; c=relaxed/simple;
	bh=O6V2YUCPc6fHWr4MESLWUt2GuZB+iADlJqgcBHDBZfs=;
	h=From:To:References:In-Reply-To:Subject:Date:Message-ID:
	 MIME-Version:Content-Type; b=r+vxCvgcHk8h5calfSdUFCH+pF/JUc++YgZSJhETtxwr/Zw6hoP3ntdAjV3u2kIcmh6QvzvNM7pD8tWPj/GwMfUYLt6Jdygvww4E9vVIp4ofXS8lNa8aGxOnWyBmxDVylAsI7Vtp+VlaSTtzlfXjQBsFtz/XcGIYNHdmMoM/BHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de; spf=pass smtp.mailfrom=gmx.de; dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b=kIUBmrS7; arc=none smtp.client-ip=212.227.15.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1729092613; x=1729697413;
	i=markus.stockhausen@gmx.de;
	bh=HPgsuU/+qSjMMpe2lJKU0XhZVtyZLSasmGk+d6p1fPU=;
	h=X-UI-Sender-Class:From:To:References:In-Reply-To:Subject:Date:
	 Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=kIUBmrS7G5fyfOAolwUTrNuujducjcVR6184UpZU/gAvugpNEO09UB6TCQaL7UXX
	 Hjbmut7Pp6V0ke1yF0k+lvQZix6pODjqGdcRBNHllg9HGhdAqgYwmMVqTe+T9OnO4
	 MNSUv2rGASa35f0LbGqYg3aR7VkMPhch/QZHypUgDqZVElptVuwLJiSYqYbfCW8A0
	 jkRal7S66yJ3++8j+sQPUsHXaw+b9nO178qSJsRSTPRVV3HbpZF9mWu0WDFSegLWB
	 FPYdozmq5bHioz5Wzg7eQvbjvoM0epuAfZQRP/F+PG5G6X8PA24GfnMazJg68wdu7
	 xz6yRW4MUIRoqQ1hOQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from colnote55 ([94.31.70.17]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MdNcA-1ta9kC3Xjk-00eCbZ; Wed, 16
 Oct 2024 17:30:12 +0200
From: <markus.stockhausen@gmx.de>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>,
	<linux-phy@lists.infradead.org>,
	<chris.packham@alliedtelesis.co.nz>,
	<devicetree@vger.kernel.org>
References: <20241007163623.3274510-1-markus.stockhausen@gmx.de> <20241007163623.3274510-2-markus.stockhausen@gmx.de> <e0355f2b-9d77-4792-9405-14b0bf79ac32@kernel.org>
In-Reply-To: <e0355f2b-9d77-4792-9405-14b0bf79ac32@kernel.org>
Subject: AW: [PATCH v2 1/3] dt-bindings: phy: add realtek,otto-serdes PHY binding
Date: Wed, 16 Oct 2024 17:30:11 +0200
Message-ID: <002201db1fe0$4b398dc0$e1aca940$@gmx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQFmt424TDky7oOEBHAYnHfWLjuWPwFdE8X8Ac4j3w+zWHGCIA==
Content-Language: de
X-Provags-ID: V03:K1:/Zkk77incpI7NHKHUH4S1aKLq5HkHUHgQxEhVRkcZBBFlKmvRkX
 wg0UK5W5UWTFXlxpKHnE6S3eU2Gw4swrw0dcIyjlj4u1YrcwOl+JmgrV4GLM18dyopd02vT
 K9Sh9q7jwzTfSvNXnUsz1HTzzVYBqiSrs5MDJSnuyNoHBE7c+KCfxcTH+AMzGxnxEvKGoxZ
 z1NHZdHOL39ooWFN6xDyQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:fMQbmztltOA=;FPr8FEIuVovnwLFgkS6AiIyAXHY
 ToZilz2Ai6WlxO0zSIbzf9duzsVX/8pNX61aIuRTBRcp+SHhEbUfBIKKvjeczuEVE4CUpYv2U
 RkVhzlbZxfuIgLE4eKYAp6rakCMwpIyzbh/DkX4oxpe2ZtYcQksmRUfG/jovJjPOFj4wOQRt7
 gOqvq/szUzomJp//ZDcanyClyPQc34IAzYzM+3le5fvDPFBj7Xc4R/X6GENW7jcp4zCaDwkbc
 IkcOZqXhcDvSjiXHS6qFr3gFvn/zclkr5OIRQhgtNqo1WKRcT/8pu0fQWSCjFtGmv7yhHzEOv
 wg+iRSkjv29GJerEUkUlA9sKu+RVnRuFQpMBqAIs/PPJWUPbXZ04NG2dfH8ccvpauHqXwF7F4
 txBPZ1QL4dZUAe7U7ZwAs9hcj6ieM6/hVHL4/A5zzC/tpKcknwCSoL1VU2dKS8Xfxts0FErD0
 IzBMK7hp7w2y0WGQ3jKmLjxgdNGRn2PhrmgMQlgQOo04jiJPZyU4nIezOGoU4c/wQncEMFfaX
 Jks2HYKzfzZeHxPqqqOrFdPBk6C6WfQcLbVTzDqS9AeA5GHh1j1YsJEkfwXrMobxO9f/bh/vy
 mQqOO5tisc/AemsvnUY+f+peUp7h3tDzuZZUkBq4S7Tjs/oU0yOI3uRzC1t44blFkyE7PVQi7
 S1PPoTt5Dvzrpzbfi15HmbtjnGVfWF1h2/zWm9ak23eHzlxOJAevTnulQhOoMqKr0fZ8MYfcZ
 wJJhYT1Omen1KxbLD5I6glKztS2rkooU1kvhnRqrZIYSa5u1HzPEQU+2EtHczFbMbWnY/1PQx
 7e5iBN2VpHDSkOGp1RUJeKRA==

Hi Krzysztof,

with your feedback on the latest version I will take up the issues from=20
v2 once again. To be sure that I do not miss anything in upcoming v5=20
I will comment on all your feedback.=20

> > ....
> > Changes in v2:
> > - new subject
> > - removed patch command sequences
> > - renamed parameter controlled-ports to realtek,controlled-ports
>
> Changelog goes under ---.

After reading this another 4 times now I think I understand. You mean
"put changelog below signed-off-by". Will do with next patch.

> > ....
> > diff --git=20
> > a/Documentation/devicetree/bindings/phy/realtek,otto-serdes.yaml=20
> > b/Documentation/devicetree/bindings/phy/realtek,otto-serdes.yaml
> > new file mode 100644
> > index 000000000000..a72ac206b35f
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/realtek,otto-serdes.yaml
>
> Nothing improved.

In between renamed to compatible "realtek,rtl8380m-serdes.yaml". I hope
that fits the requested naming convention.

> > +  The driver exposes the SerDes registers different from the =
hardware=20
> > + but instead gives a  consistent view and programming interface. So =

> > + the RTL838x series has 6 ports and 4 pages, the  RTL839x has 14=20
> > + ports and 12 pages, the RTL930x has 12 ports and 64 pages and the=20
> > + RTL931x has
> > +  14 ports and 192 pages.
>
> Totally messed wrapping. Please wrap your code as Linux coding style.

Was restyled in between. If this is still an issue in latest version, =
please advise.

> > +  reg:
> > +    items:
> > +      description:
> > +        The primary SerDes paged register memory location. Other =
SerDes control and management
> > +        registers are distributed all over the I/O memory space and =
are identified by the driver.
>
> What happened here? I asked only about |. Why are you adding unrelated =
changes?
>
> Anyway, still not tested and still does not look any other binding.

Has been tested in between with "make dt_binding_check".

> > +  realtek,controlled-ports:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description:
> > +      A bit mask defining the ports that are actively controlled by =

> > + the driver. In case a bit is
>
> Driver? Bindings are not about drivers. Drop.
>
> I don't think you implemented my feedback.

All these have been removed.

> > +additionalProperties:
> > +  false
>
> Please open any existing binding and do it like there. Or start from =
scratch from example-schema.

Was converted to one line.

> > +
> > +examples:
> > +  - |
> > +    serdes: serdes@1b00e780 {
> > +      compatible =3D "realtek,rtl8380-serdes", =
"realtek,otto-serdes";
> > +      reg =3D <0x1b00e780 0x1200>;
> > +      controlled-ports =3D <0x003f>;
> > +      #phy-cells =3D <4>;
> > +    };
>
> One example is enough.

Only one example left.

Best regards.

Markus


