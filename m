Return-Path: <devicetree+bounces-11361-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE587D56E0
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 17:48:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7C50B1C209E0
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 15:48:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C3DA37CBF;
	Tue, 24 Oct 2023 15:47:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7820273E1
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 15:47:51 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C9DB1B3;
	Tue, 24 Oct 2023 08:47:46 -0700 (PDT)
Received: from i53875a19.versanet.de ([83.135.90.25] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qvJd5-0005MZ-2h; Tue, 24 Oct 2023 17:47:39 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Chris Morgan <macroalpha82@gmail.com>, linux-rockchip@lists.infradead.org,
 linux-clk@vger.kernel.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 sboyd@kernel.org, mturquette@baylibre.com, daniel@ffwll.ch,
 airlied@gmail.com, sam@ravnborg.org, neil.armstrong@linaro.org,
 conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Subject: Re: [PATCH 4/5] dt-bindings: arm: rockchip: Add Powkiddy RK2023
Date: Tue, 24 Oct 2023 17:47:37 +0200
Message-ID: <11399368.MucGe3eQFb@diego>
In-Reply-To:
 <SN6PR06MB534206AB35C00B3D003765AAA5DBA@SN6PR06MB5342.namprd06.prod.outlook.com>
References:
 <20231018161848.346947-1-macroalpha82@gmail.com> <3083498.U7HbjWM52l@diego>
 <SN6PR06MB534206AB35C00B3D003765AAA5DBA@SN6PR06MB5342.namprd06.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi Chris,

Am Freitag, 20. Oktober 2023, 17:03:08 CEST schrieb Chris Morgan:
> On Thu, Oct 19, 2023 at 07:45:17PM +0200, Heiko St=FCbner wrote:
> > Hey Chris,
> >=20
> > Am Donnerstag, 19. Oktober 2023, 16:43:56 CEST schrieb Chris Morgan:
> > > On Thu, Oct 19, 2023 at 11:21:47AM +0200, Krzysztof Kozlowski wrote:
> > > > On 18/10/2023 18:18, Chris Morgan wrote:
> > > > > From: Chris Morgan <macromorgan@hotmail.com>
> > > > >=20
> > > > > The Powkiddy RK2023 is a handheld gaming device made by Powkiddy =
and
> > > > > powered by the Rockchip RK3566 SoC.
> > > > >=20
> > > > > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > > > > ---
> > > > >  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
> > > > >  1 file changed, 5 insertions(+)
> > > > >=20
> > > > > diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml =
b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > > > index a349bf4da6bc..a6612185a7ff 100644
> > > > > --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > > > +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > > > @@ -674,6 +674,11 @@ properties:
> > > > >            - const: powkiddy,rgb30
> > > > >            - const: rockchip,rk3566
> > > > > =20
> > > > > +      - description: Powkiddy RK2023
> > > > > +        items:
> > > > > +          - const: powkiddy,rk2023
> > > >=20
> > > > This cuold be just enum in previous entry :/ but I remember we talk=
ed
> > > > about this once with Heiko.
> > >=20
> > > For hardware that requires a different device tree, is that possible?
> > > While most of the devices I've worked on for the RK3566 series are ve=
ry
> > > similar for the moment only 1 is identical (the RG353P and the RG353M)
> > > and can use the same device tree.
> >=20
> > In my reply I pointed to the Rock PI 4A/4A+/B/B+/C family, which also h=
as
> > different devicetrees but is part of the same family of device designs.
> >=20
> > So similar Powkiddy RK3568 based gaming handhelds also sound like
> > a nice family name in the description ;-) .
>=20
> Gotcha, I can do that. Would you like for me to go back and do the same
> for the Anbernic devices as well? I can do it as part of a seperate
> patch series.

that doing that for the Anberic devices would be really nice too, so
yes please :-) .

Thanks
Heiko



