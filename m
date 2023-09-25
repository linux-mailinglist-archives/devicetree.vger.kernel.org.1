Return-Path: <devicetree+bounces-3119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9477AD618
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 12:35:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 1108FB2096A
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 10:35:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82FDC11CA1;
	Mon, 25 Sep 2023 10:35:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 046B710A30
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 10:35:00 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7C059B;
	Mon, 25 Sep 2023 03:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1695638097;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=N1XjsbOLUrCaYG/ML8RqCAw8B02xn80IeyAz4zoZb9Y=;
	b=oNfvTMtcislzH9Ifjxb2kICyDM7Yvdu+tCyTVcsD2IWGrPS7P170n5oXZ9iwjpg4lWC3JR
	qaiCu1j2jAoRky8Vzeu4xZy34IlMwZpSbKmo6BQfmQTDQCOK1FV0n00I5L0OvoYZkL9p+e
	UG8sL/xV9Y5PXI9wwM9CrNU1huQFVOU=
Message-ID: <a8a68baa0b1abfaeb9aa51d0095f4a4a62ec65fd.camel@crapouillou.net>
Subject: Re: [RFC PATCH v3 4/7] drm/panel: nv3052c: Add Fascontek FS035VG158
 LCD display
From: Paul Cercueil <paul@crapouillou.net>
To: John Watts <contact@jookia.org>
Cc: dri-devel@lists.freedesktop.org, Neil Armstrong
 <neil.armstrong@linaro.org>,  Jessica Zhang <quic_jesszhan@quicinc.com>,
 Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>,  Daniel
 Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>,  Shawn Guo <shawnguo@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Chris Morgan <macromorgan@hotmail.com>, Jagan Teki
 <jagan@edgeble.ai>, Christophe Branchereau <cbranchereau@gmail.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Mon, 25 Sep 2023 12:34:55 +0200
In-Reply-To: <ZRFXd3F7eit7x4aJ@titan>
References: <20230925021059.451019-1-contact@jookia.org>
	 <20230925021059.451019-5-contact@jookia.org>
	 <ebd5808fe3029e46376aea3c25d3770a6b406fdc.camel@crapouillou.net>
	 <ZRFRFXCKTIb9x7GW@titan>
	 <d63b2a7bf2bbabe41b8e45a6c0a4dc0b1e117bdd.camel@crapouillou.net>
	 <ZRFXd3F7eit7x4aJ@titan>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Le lundi 25 septembre 2023 =C3=A0 19:48 +1000, John Watts a =C3=A9crit=C2=
=A0:
> On Mon, Sep 25, 2023 at 11:43:26AM +0200, Paul Cercueil wrote:
> > From what I can see, you have a panel with a NV3052C chip, so the
> > existing initialization sequence should already work.
>=20
> It has some differences that I don't know if are important.

Unless you can explain what they do and why they are needed, I'd say
they are not important :)

>=20
> > The NV3052C datasheet does not give any settings for a 640x480
> > panel, I
> > only see suggested settings for a 720x1280 vertical panel.
> >=20
> > Unless you have a min/max range specified, the values you see in
> > there
> > are only suggestions for a working setup, that doesn't mean they
> > are
> > the only recommended ones.
>=20
> The panel datasheet has these values.

Again, doesn't mean that you have to use these.

From what I can see, all you need to support your Fascontek panel with
the nv3052c driver, is to add the SPI ID and compatible strings.

Cheers,
-Paul

