Return-Path: <devicetree+bounces-174287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CDBA7AACB31
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 18:39:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CBA8116450A
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 16:38:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BE49283FE2;
	Tue,  6 May 2025 16:38:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="MkWdMOIu"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F602820AB
	for <devicetree@vger.kernel.org>; Tue,  6 May 2025 16:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746549519; cv=none; b=ZyxdoN0a0/ZkHSmlBGcYTXagDsWmPknsO1hnFHJr98VkaMFoz+N/cScGweXY8RZAcFh8/57HXPpj8IBp9iBJXAtLLjQxwxdE6EbNYhe51fTYoE/6q02LyYHPHy4z3Hj1wXfKnPIalGXzCuUSsbvqWKiCpESTxfgpClhxx9NT+/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746549519; c=relaxed/simple;
	bh=YZ9decDNQnnxpsaT2NSdgxRRkOQk5BsdQyjM7wUXQ8E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=MPB7TpaAAK73acFneZ2iJ7VdUR3z/98tWUpR3TzMcjfGgvl2uG4nbuIT9ifqSkTiIRy+OPFUklcc5V05DpxkIvop1ZXg32U8FYnmKqEG34TEcSyX7dAC52pxThhwxYfTOHum0f5QWerCUFo5veZ2Sm1FkUE/daIu0OJEMrTjVYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=MkWdMOIu; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=wYQJgp+YqSaqLX+Gu3RwL9L3fPGOWiBg+qdbYxy4gD4=; b=MkWdMOIuXbNbPdrDqke9a8CvVo
	fwO/8nDlAA/RjKLAZALusRdWlAl9ik7oOTCmbecFwcgrv0oWv83AS8M45iBVGiJr24zpGmhW5fS5o
	CXc38odJNP/lT3uwlSPjgyobgDNHgLax6TUVtQpoAiNwThoVow/8RZSArpbx8QAb5GQ87u+3IEL/n
	coWcj3MWcqc6Jpm6JQoA7BZNNut/P2yxcTZJo68Z/i6SZqAw+HgSLbf8u7JA+t/Wq0aoYNdMTmXgI
	asGjoGOc8QZrq27HuZJBV6i/d6S/a2h24qfaHpOC6SpVZc21uxk8/kTvwqPnadiWVRZE1JChfNiZh
	9qnhjVXg==;
Received: from i53875a1d.versanet.de ([83.135.90.29] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uCLJM-00039w-FT; Tue, 06 May 2025 18:38:28 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Conor Dooley <conor@kernel.org>, John Clark <inindev@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh@kernel.org,
 krzysztof.kozlowski@linaro.org, conor+dt@kernel.org, jonas@kwiboo.se,
 frattaroli.nicolas@gmail.com, andrew@lunn.ch
Subject:
 Re: [PATCH v3 2/3] dt-bindings: arm: rockchip: Add Luckfox Omni3576 and
 Core3576 bindings
Date: Tue, 06 May 2025 18:38:27 +0200
Message-ID: <5007332.31r3eYUQgx@diego>
In-Reply-To: <c8114ff8-f207-4ea8-aaf1-298dcea9f030@gmail.com>
References:
 <20250506114115.613616-1-inindev@gmail.com>
 <20250506-almighty-uncork-f7a0bc42d763@spud>
 <c8114ff8-f207-4ea8-aaf1-298dcea9f030@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi John,

Am Dienstag, 6. Mai 2025, 17:54:10 Mitteleurop=C3=A4ische Sommerzeit schrie=
b John Clark:
> On 5/6/25 11:44 AM, Conor Dooley wrote:
> > On Tue, May 06, 2025 at 07:41:14AM -0400, John Clark wrote:
> >> Add device tree binding for the Luckfox Omni3576 Carrier Board with
> >> Core3576 Module, based on the Rockchip RK3576 SoC.
> >>
> >> Signed-off-by: John Clark <inindev@gmail.com>
> >> ---
> >>   Documentation/devicetree/bindings/arm/rockchip.yaml | 10 ++++++++++
> >>   1 file changed, 10 insertions(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Doc=
umentation/devicetree/bindings/arm/rockchip.yaml
> >> index 455fbb290b77..826dede32145 100644
> >> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> >> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> >> @@ -715,6 +715,16 @@ properties:
> >>             - const: lckfb,tspi-rk3566
> >>             - const: rockchip,rk3566
> >>  =20
> >> +      - description: Luckfox Core3576 Module
> >> +        items:
> >> +          - const: luckfox,core3576
> >> +          - const: rockchip,rk3576
> >> +
> >> +      - description: Luckfox Omni3576 Carrier Board
> >> +        items:
> >> +          - const: luckfox,omni3576
> >> +          - const: rockchip,rk3576
> >=20
> > Not sure this is correct, does the module not have to be attached to
> > this particular carrier to be used?
>=20
> The compute module and the carrier board together like the E25.=20
> Presumably the compute module would be used in other applications
> but the carrier board is not useful without it.
>=20
> Is the E25 done correctly here?  I can copy this format:

=46or the baseboard + module you should always have one of those

> >> +      - description: Luckfox Core3576 Module
> >> +        items:
> >> +          - const: luckfox,core3576
> >> +          - const: rockchip,rk3576
> >> +

      - description: Luckfox Core3576 based boards
        items:
          - enum:
              - luckfox,omni3576
          - const: luckfox,core3576
          - const: rockchip,rk3576

I've looked at the product page [0] now and the Core3576 module itself
can't work independently without a baseboard present, so the above should
be enough, and also allows for possible future other baseboards to be
integrated.


Heiko


[0] https://www.luckfox.com/EN-Core3576



