Return-Path: <devicetree+bounces-243803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 29AA1C9D1DB
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 22:49:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 079FF347FD2
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 21:49:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDEFA2F5480;
	Tue,  2 Dec 2025 21:49:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QjFXRmZe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71461222597
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 21:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764712166; cv=none; b=Ab4TWr9qEvXOEiJflm7J6M1wCtsOJ06KEFlUcPQrBO5d4AD00T0o/2zf2jrXrnR9mBPPOwM8oMFt1uIclW6GzMN/DTY5rJG/vOF/a2vtKgCfYGCbXmJzKSWw2BWhRlVUVDmrlNSGBbozQgLfI27yEnelDDmofcEHL1BP8QG5q2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764712166; c=relaxed/simple;
	bh=LFkaJRk34hFMT3zGPf62CeNicr/ONVumm8plsS/cECg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=X9wKoG6v3Hzcui0UsjJ5mQjNabhSkWRXosL2ovt5ZFEegVhkQ9ec1E5U0JMh7DXYhy4LlJUqT+KgTK3OooJ2kmojhl+evaVAiLn7S2MUYx2zgocT+NPcUzqs6UgLd1NZEJVpgtfL+nnK+f/QWMh2vnTcJctFZ64tyblT8IgBtYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QjFXRmZe; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-477a2ab455fso68565505e9.3
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 13:49:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764712162; x=1765316962; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=n+kIP6gtGKsqOgjraklH6V4RDSrQgJfU7OTGS9QrBn0=;
        b=QjFXRmZe/0hfbNxI0KrSksGBnceLoAnjVZad5Y5yk8nRT4gbiKLNWSiMu9HYj5FVCk
         Y7uR1x0lqD2n2kGyq80PAYRyVAY5ftOSNr93vT/0T6UB/XlBScQyX5zpKAX+jT4WrM1o
         u7cdqbmEXDx1syROXdAxTJ9ffhnpjsV2huXbCaZEBg8i4DQdY1y6iQckHRpsAawY2mEU
         4hp5paOrxfCRNd6ra7+Jnwj5XQ1xJAY2Sg2k0EElqgk/ghzh/eujw/ipPeiD595v7pJY
         jEmm/x3E1bMDNM2mt1N/DaNKe7pmn9XcJ36KIl3s4i3dizL21fryue7lPkqaI+tSamFO
         mhBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764712162; x=1765316962;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n+kIP6gtGKsqOgjraklH6V4RDSrQgJfU7OTGS9QrBn0=;
        b=fdINuTPT7j4A5M7xXWt3Nkg9ojA1yqXemQ+Ms0Qep/PMNi0FRnSRpRG9kh8ejPNYfr
         BmdFLxM7LQDtShwizKK2ph+jUVRItlM/B9mxLyVYGi5oiMOE9kAf43jtuQxWBpPxcA06
         j40pZHybVS8Rmkr4I83NHMsCPkex/WlgeYDO+OuAIFsfNZLwTLr+uZQ4FIe6koAPL57n
         qYYjnELGZJWIr7FwP/SjVodIHnTVo7bgIhHVdzUSRq/SiUt5ugDUbqignsOSuaYsiMYt
         tIZK/z9rrnk/tQUD6CbG6BAjWFYSJSZh48qg9YY0+PWNn/KUoWC/7FdF3RcmIEar+8YB
         XCBg==
X-Gm-Message-State: AOJu0YyYqXjTtFgfnBqJSl08MklgZkkYKpfAxk3/ZW610zxjMOCGAnZc
	pO/sGpZACTXuJEp4tQkEWa3FWsELO0Xa3hirxMNgRWtvDUsuVqY6cXMV
X-Gm-Gg: ASbGncvKswX7SQ46zdfeRCHT39Z9BuApCWyMwXvNwWTb4OEvIGG9A5LC/Xhxqxl/PqO
	qnl447/DIxCOWS1QZBx98AWfEb5HNnHvB1FBteyWHmiYTx5VbES3IMDV5CEEMeUCWvN+AK42Cg9
	iiaUdlsDN9xhAY4TX5Czqy1iw90+eEPYKU/jYcGLtuxDvA8J0MKKtC3iVX2pHGpSubwca5fhvCj
	J+RKpoq3hsdgHMrf/SR7M0b/25EKrb60LeT7uzvPQC9oJ6Sg4m4DMik42aRrksm+pQ2eODWvRZR
	L7xSF7YRQnYpVn2TQQnndFN3IRyZb6EjjXZrwF09bECDW9Bwg4zxRNgxZ+uVgmdz5vZ+xW3PJjb
	TFhZErsNwZ0uiIeM1fuz0Aq3qguNHD0naR241Pz/sJIgCy8VsHKU39/We1ACLaeR/TVyHkc2mvI
	yarRp2PvX64OhTkHaa
X-Google-Smtp-Source: AGHT+IFrEWLNz1ieD89QYmIMMt5Ad2viyCO+5nwREZjzul+F4ghiiTZJqGI4GFHbXsKJNKGzAggJAA==
X-Received: by 2002:a05:600c:35d1:b0:477:9d54:58d7 with SMTP id 5b1f17b1804b1-4792af3f010mr1059515e9.29.1764712161323;
        Tue, 02 Dec 2025 13:49:21 -0800 (PST)
Received: from owl5 ([2001:861:3201:3d10:2414:a003:57f6:445c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4792a8d37aesm9174335e9.15.2025.12.02.13.49.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Dec 2025 13:49:20 -0800 (PST)
Date: Tue, 2 Dec 2025 22:49:19 +0100
From: Gary Bisson <bisson.gary@gmail.com>
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
	linux-mediatek@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-arm-kernel@lists.infradead.org,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 0/4] Add support for Ezurio MediaTek platforms
Message-ID: <aS9e31OwQwsLvQ9l@owl5>
References: <20251201-review-v2-0-dc2df44eec7e@gmail.com>
 <176459099842.2909480.6224244901963014446.robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <176459099842.2909480.6224244901963014446.robh@kernel.org>

Hi

On Mon, Dec 01, 2025 at 06:27:02AM -0600, Rob Herring wrote:
>=20
> On Mon, 01 Dec 2025 11:23:14 +0100, Gary Bisson wrote:
> > This series adds support for Ezurio MediaTek platforms called
> > "Tungsten". It includes support for MT8370-based Tungsten 510 and
> > MT8390-based Tungsten 700 SOMs.
> >=20
> > Changelog v1 -> v2:
> > - use b4 to cc all maintainers properly
> > - squashed patches 2/3 together
> > - updated node names to be generic (pmic)
> >=20
> > Couldn't repro the schema issues sent by the bots.
> >=20
> > Regards,
> >=20
> > Gary Bisson (4):
> >   dt-bindings: vendor-prefixes: Add Ezurio LLC
> >   dt-bindings: arm: mediatek: Add Ezurio Tungsten entries
> >   arm64: dts: mediatek: add device tree for Tungsten 510 board
> >   arm64: dts: mediatek: add device tree for Tungsten 700 board
> >=20
> >  .../devicetree/bindings/arm/mediatek.yaml     |    2 +
> >  .../devicetree/bindings/vendor-prefixes.yaml  |    2 +
> >  arch/arm64/boot/dts/mediatek/Makefile         |    2 +
> >  .../dts/mediatek/mt8370-tungsten-smarc.dts    |   14 +
> >  .../dts/mediatek/mt8390-tungsten-smarc.dts    |   22 +
> >  .../dts/mediatek/mt83x0-tungsten-smarc.dtsi   | 1481 +++++++++++++++++
> >  6 files changed, 1523 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/mediatek/mt8370-tungsten-smarc.=
dts
> >  create mode 100644 arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.=
dts
> >  create mode 100644 arch/arm64/boot/dts/mediatek/mt83x0-tungsten-smarc.=
dtsi
> >=20
> > --
> > 2.43.0
> >=20
> > ---
> > Gary Bisson (4):
> >       dt-bindings: vendor-prefixes: Add Ezurio LLC
> >       dt-bindings: arm: mediatek: Add Ezurio Tungsten entries
> >       arm64: dts: mediatek: add device tree for Tungsten 510 board
> >       arm64: dts: mediatek: add device tree for Tungsten 700 board
> >=20
> >  .../devicetree/bindings/arm/mediatek.yaml          |    2 +
> >  .../devicetree/bindings/vendor-prefixes.yaml       |    2 +
> >  arch/arm64/boot/dts/mediatek/Makefile              |    2 +
> >  .../boot/dts/mediatek/mt8370-tungsten-smarc.dts    |   14 +
> >  .../boot/dts/mediatek/mt8390-tungsten-smarc.dts    |   22 +
> >  .../boot/dts/mediatek/mt83x0-tungsten-smarc.dtsi   | 1481 ++++++++++++=
++++++++
> >  6 files changed, 1523 insertions(+)
> > ---
> > base-commit: 7d0a66e4bb9081d75c82ec4957c50034cb0ea449
> > change-id: 20251201-review-750072579991
> >=20
> > Best regards,
> > --
> > Gary Bisson <bisson.gary@gmail.com>
> >=20
> >=20
> >=20
>=20
>=20
> My bot found new DTB warnings on the .dts files added or changed in this
> series.
>=20
> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
>=20
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
>=20
>   pip3 install dtschema --upgrade
>=20
>=20
> This patch series was applied (using b4) to base:
>  Base: base-commit 7d0a66e4bb9081d75c82ec4957c50034cb0ea449 not known, ig=
noring
>  Base: attempting to guess base-commit...
>  Base: tags/v6.18-rc3 (exact match)
>  Base: tags/v6.18-rc3 (use --merge-base to override)

base-commit (7d0a66e4bb9081d75c82ec4957c50034cb0ea449) is tags/v6.18, it
should appear properly for next version of the patch.

> If this is not the correct base, please add 'base-commit' tag
> (or use b4 which does this automatically)
>=20
> New warnings running 'make CHECK_DTBS=3Dy for arch/arm64/boot/dts/mediate=
k/' for 20251201-review-v2-0-dc2df44eec7e@gmail.com:
>=20
> arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dtb: i2c0-gpio-pins: p=
ins-gpio: {'pinmux': [1536], 'bias-pull-up': 203, 'drive-strength-microamp'=
: [1000]} is not of type 'array'
> 	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml
> arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dtb: pmic (mediatek,mt=
6359): '#sound-dai-cells' does not match any of the regexes: '^pinctrl-[0-9=
]+$'
> 	from schema $id: http://devicetree.org/schemas/mfd/mediatek,mt6397.yaml
> arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dtb: spmi@10027000 (me=
diatek,mt8188-spmi): pmic@6:reg:0: [6, 0, 11] is too long
> 	from schema $id: http://devicetree.org/schemas/spmi/mtk,spmi-mtk-pmif.ya=
ml
> arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dtb: spmi@10027000 (me=
diatek,mt8188-spmi): #address-cells: 2 was expected
> 	from schema $id: http://devicetree.org/schemas/spmi/mtk,spmi-mtk-pmif.ya=
ml
> arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dtb: spmi@10027000 (me=
diatek,mt8188-spmi): #size-cells: 0 was expected
> 	from schema $id: http://devicetree.org/schemas/spmi/mtk,spmi-mtk-pmif.ya=
ml
> arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dtb: spmi@10027000 (me=
diatek,mt8188-spmi): Unevaluated properties are not allowed ('#address-cell=
s', '#size-cells', 'pmic@6' were unexpected)
> 	from schema $id: http://devicetree.org/schemas/spmi/mtk,spmi-mtk-pmif.ya=
ml
> arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dtb: spmi@10027000 (me=
diatek,mt8188-spmi): pmic@6:reg:0: [6, 0, 11] is too long
> 	from schema $id: http://devicetree.org/schemas/spmi/spmi.yaml
> arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dtb: spmi@10027000 (me=
diatek,mt8188-spmi): #address-cells: 2 was expected
> 	from schema $id: http://devicetree.org/schemas/spmi/spmi.yaml
> arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dtb: spmi@10027000 (me=
diatek,mt8188-spmi): #size-cells: 0 was expected
> 	from schema $id: http://devicetree.org/schemas/spmi/spmi.yaml
> arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dtb: pmic@6 (mediatek,=
mt6315-regulator): regulators:vbuck1: Unevaluated properties are not allowe=
d ('mtk,combined-regulator', 'regulator-compatible' were unexpected)
> 	from schema $id: http://devicetree.org/schemas/regulator/mt6315-regulato=
r.yaml
> arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dtb: pmic@6 (mediatek,=
mt6315-regulator): regulators:vbuck3: Unevaluated properties are not allowe=
d ('regulator-compatible' was unexpected)
> 	from schema $id: http://devicetree.org/schemas/regulator/mt6315-regulato=
r.yaml
> arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dtb: pmic@6 (mediatek,=
mt6315-regulator): regulators:vbuck4: Unevaluated properties are not allowe=
d ('regulator-compatible' was unexpected)
> 	from schema $id: http://devicetree.org/schemas/regulator/mt6315-regulato=
r.yaml
> arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dtb: vbuck1: 'mtk,comb=
ined-regulator' does not match any of the regexes: '^#.*', '^(at25|bm|devbu=
s|dmacap|dsa|exynos|fsi[ab]|gpio-fan|gpio-key|gpio|gpmc|hdmi|i2c-gpio),.*',=
 '^(keypad|m25p|max8952|max8997|max8998|mpmc),.*', '^(pciclass|pinctrl-sing=
le|#pinctrl-single|PowerPC),.*', '^(pl022|pxa-mmc|rcar_sound|rotary-encoder=
|s5m8767|sdhci),.*', '^(simple-audio-card|st-plgpio|st-spics|ts),.*', '^100=
ask,.*', '^70mai,.*', '^8dev,.*', '^GEFanuc,.*', '^IBM,.*', '^ORCL,.*', '^S=
UNW,.*', '^[a-zA-Z0-9#_][a-zA-Z0-9#+\-._@]{0,63}$', '^[a-zA-Z0-9+\-._]*@[0-=
9a-zA-Z,]*$', '^abb,.*', '^abilis,.*', '^abracon,.*', '^abt,.*', '^acbel,.*=
', '^acelink,.*', '^acer,.*', '^acme,.*', '^actions,.*', '^actiontec,.*', '=
^active-semi,.*', '^ad,.*', '^adafruit,.*', '^adapteva,.*', '^adaptrum,.*',=
 '^adh,.*', '^adi,.*', '^adieng,.*', '^admatec,.*', '^advantech,.*', '^aero=
flexgaisler,.*', '^aesop,.*', '^airoha,.*', '^al,.*', '^alcatel,.*', '^alde=
c,.*', '^alfa-network,.*'
>  , '^allegro,.*', '^allegromicro,.*', '^alliedtelesis,.*', '^alliedvision=
,.*', '^allo,.*', '^allwinner,.*', '^alphascale,.*', '^alps,.*', '^alt,.*',=
 '^altr,.*', '^amarula,.*', '^amazon,.*', '^amcc,.*', '^amd,.*', '^amediate=
ch,.*', '^amlogic,.*', '^ampere,.*', '^amphenol,.*', '^ampire,.*', '^ams,.*=
', '^amstaos,.*', '^analogix,.*', '^anbernic,.*', '^andestech,.*', '^anvo,.=
*', '^aoly,.*', '^aosong,.*', '^apm,.*', '^apple,.*', '^aptina,.*', '^arasa=
n,.*', '^archermind,.*', '^arcom,.*', '^arctic,.*', '^arcx,.*', '^argon40,.=
*', '^ariaboard,.*', '^aries,.*', '^arm,.*', '^armadeus,.*', '^armsom,.*', =
'^arrow,.*', '^artesyn,.*', '^asahi-kasei,.*', '^asc,.*', '^asix,.*', '^asp=
eed,.*', '^asrock,.*', '^asteralabs,.*', '^asus,.*', '^atheros,.*', '^atlas=
,.*', '^atmel,.*', '^auo,.*', '^auvidea,.*', '^avago,.*', '^avia,.*', '^avi=
c,.*', '^avnet,.*', '^awinic,.*', '^axentia,.*', '^axiado,.*', '^axis,.*', =
'^azoteq,.*', '^azw,.*', '^baikal,.*', '^bananapi,.*', '^beacon,.*', '^beag=
le,.*', '^belling,.*', '^
>  bestar,.*', '^bhf,.*', '^bigtreetech,.*', '^bitmain,.*', '^blaize,.*', '=
^bluegiga,.*', '^blutek,.*', '^boe,.*', '^bosch,.*', '^boundary,.*', '^brcm=
,.*', '^broadmobi,.*', '^bsh,.*', '^bticino,.*', '^buffalo,.*', '^buglabs,.=
*', '^bur,.*', '^bytedance,.*', '^calamp,.*', '^calao,.*', '^calaosystems,.=
*', '^calxeda,.*', '^cameo,.*', '^canaan,.*', '^caninos,.*', '^capella,.*',=
 '^cascoda,.*', '^catalyst,.*', '^cavium,.*', '^cct,.*', '^cdns,.*', '^cdte=
ch,.*', '^cellwise,.*', '^ceva,.*', '^chargebyte,.*', '^checkpoint,.*', '^c=
hefree,.*', '^chipidea,.*', '^chipone,.*', '^chipspark,.*', '^chongzhou,.*'=
, '^chrontel,.*', '^chrp,.*', '^chunghwa,.*', '^chuwi,.*', '^ciaa,.*', '^ci=
rrus,.*', '^cisco,.*', '^cix,.*', '^clockwork,.*', '^cloos,.*', '^cloudengi=
nes,.*', '^cnm,.*', '^cnxt,.*', '^colorfly,.*', '^compal,.*', '^compulab,.*=
', '^comvetia,.*', '^congatec,.*', '^coolpi,.*', '^coreriver,.*', '^corpro,=
=2E*', '^cortina,.*', '^cosmic,.*', '^crane,.*', '^creative,.*', '^crystalf=
ontz,.*', '^csky,.*', '^cso
>  t,.*', '^csq,.*', '^csr,.*', '^ctera,.*', '^ctu,.*', '^cubietech,.*', '^=
cudy,.*', '^cui,.*', '^cypress,.*', '^cyx,.*', '^cznic,.*', '^dallas,.*', '=
^dataimage,.*', '^davicom,.*', '^deepcomputing,.*', '^dell,.*', '^delta,.*'=
, '^densitron,.*', '^denx,.*', '^devantech,.*', '^dfi,.*', '^dfrobot,.*', '=
^dh,.*', '^difrnce,.*', '^digi,.*', '^digilent,.*', '^dimonoff,.*', '^diode=
s,.*', '^dioo,.*', '^djn,.*', '^dlc,.*', '^dlg,.*', '^dlink,.*', '^dmo,.*',=
 '^domintech,.*', '^dongwoon,.*', '^dptechnics,.*', '^dragino,.*', '^dream,=
=2E*', '^ds,.*', '^dserve,.*', '^dynaimage,.*', '^ea,.*', '^ebang,.*', '^eb=
bg,.*', '^ebs-systart,.*', '^ebv,.*', '^eckelmann,.*', '^econet,.*', '^edge=
ble,.*', '^edimax,.*', '^edt,.*', '^ees,.*', '^eeti,.*', '^egnite,.*', '^ei=
nfochips,.*', '^eink,.*', '^elan,.*', '^element14,.*', '^elgin,.*', '^elida=
,.*', '^elimo,.*', '^elpida,.*', '^embedfire,.*', '^embest,.*', '^emcraft,.=
*', '^emlid,.*', '^emmicro,.*', '^empire-electronix,.*', '^emtrion,.*', '^e=
nbw,.*', '^enclustra,.*', '
>  ^endian,.*', '^endless,.*', '^ene,.*', '^energymicro,.*', '^engicam,.*',=
 '^engleder,.*', '^epcos,.*', '^epfl,.*', '^epson,.*', '^esp,.*', '^est,.*'=
, '^eswin,.*', '^ettus,.*', '^eukrea,.*', '^everest,.*', '^everspin,.*', '^=
evervision,.*', '^exar,.*', '^excito,.*', '^exegin,.*', '^ezchip,.*', '^ezu=
rio,.*', '^facebook,.*', '^fairchild,.*', '^fairphone,.*', '^faraday,.*', '=
^fascontek,.*', '^fastrax,.*', '^fcs,.*', '^feixin,.*', '^feiyang,.*', '^fi=
i,.*', '^firefly,.*', '^flipkart,.*', '^focaltech,.*', '^forlinx,.*', '^fou=
rsemi,.*', '^foxlink,.*', '^freebox,.*', '^freecom,.*', '^frida,.*', '^frie=
ndlyarm,.*', '^fsl,.*', '^fujitsu,.*', '^fxtec,.*', '^galaxycore,.*', '^gam=
eforce,.*', '^gardena,.*', '^gateway,.*', '^gateworks,.*', '^gcw,.*', '^ge,=
=2E*', '^geekbuying,.*', '^gef,.*', '^gehc,.*', '^gemei,.*', '^gemtek,.*', =
'^genesys,.*', '^genexis,.*', '^geniatech,.*', '^giantec,.*', '^giantplus,.=
*', '^glinet,.*', '^globalscale,.*', '^globaltop,.*', '^gmt,.*', '^gocontro=
ll,.*', '^goldelico,.*', '^
>  goodix,.*', '^google,.*', '^goramo,.*', '^gplus,.*', '^grinn,.*', '^grmn=
,.*', '^gumstix,.*', '^gw,.*', '^hannstar,.*', '^haochuangyi,.*', '^haoyu,.=
*', '^hardkernel,.*', '^hce,.*', '^headacoustics,.*', '^hechuang,.*', '^hid=
eep,.*', '^himax,.*', '^hinlink,.*', '^hirschmann,.*', '^hisi,.*', '^hisili=
con,.*', '^hit,.*', '^hitex,.*', '^holt,.*', '^holtek,.*', '^honestar,.*', =
'^honeywell,.*', '^hoperf,.*', '^hoperun,.*', '^hp,.*', '^hpe,.*', '^hsg,.*=
', '^htc,.*', '^huawei,.*', '^hugsun,.*', '^huiling,.*', '^hwacom,.*', '^hx=
t,.*', '^hycon,.*', '^hydis,.*', '^hynitron,.*', '^hynix,.*', '^hyundai,.*'=
, '^i2se,.*', '^ibm,.*', '^icplus,.*', '^idt,.*', '^iei,.*', '^ifi,.*', '^i=
litek,.*', '^imagis,.*', '^img,.*', '^imi,.*', '^inanbo,.*', '^incircuit,.*=
', '^incostartec,.*', '^indiedroid,.*', '^inet-tek,.*', '^infineon,.*', '^i=
nforce,.*', '^ingenic,.*', '^ingrasys,.*', '^injoinic,.*', '^innocomm,.*', =
'^innolux,.*', '^inside-secure,.*', '^insignal,.*', '^inspur,.*', '^intel,.=
*', '^intercontrol,.*', '
>  ^invensense,.*', '^inventec,.*', '^inversepath,.*', '^iom,.*', '^irondev=
ice,.*', '^isee,.*', '^isil,.*', '^issi,.*', '^ite,.*', '^itead,.*', '^itia=
n,.*', '^ivo,.*', '^iwave,.*', '^jadard,.*', '^jasonic,.*', '^jdi,.*', '^je=
dec,.*', '^jenson,.*', '^jesurun,.*', '^jethome,.*', '^jianda,.*', '^jide,.=
*', '^joz,.*', '^jty,.*', '^kam,.*', '^karo,.*', '^keithkoep,.*', '^keymile=
,.*', '^khadas,.*', '^kiebackpeter,.*', '^kinetic,.*', '^kingdisplay,.*', '=
^kingnovel,.*', '^kionix,.*', '^kobo,.*', '^kobol,.*', '^koe,.*', '^kontron=
,.*', '^kosagi,.*', '^kvg,.*', '^kyo,.*', '^lacie,.*', '^laird,.*', '^lamob=
o,.*', '^lantiq,.*', '^lattice,.*', '^lckfb,.*', '^lctech,.*', '^leadtek,.*=
', '^leez,.*', '^lego,.*', '^lemaker,.*', '^lenovo,.*', '^lg,.*', '^lgphili=
ps,.*', '^libretech,.*', '^licheepi,.*', '^linaro,.*', '^lincolntech,.*', '=
^lineartechnology,.*', '^linksprite,.*', '^linksys,.*', '^linutronix,.*', '=
^linux,.*', '^linx,.*', '^liontron,.*', '^liteon,.*', '^litex,.*', '^lltc,.=
*', '^logicpd,.*', '^logi
>  ctechno,.*', '^longcheer,.*', '^lontium,.*', '^loongmasses,.*', '^loongs=
on,.*', '^lsi,.*', '^luckfox,.*', '^lunzn,.*', '^luxul,.*', '^lwn,.*', '^lx=
a,.*', '^m5stack,.*', '^macnica,.*', '^mantix,.*', '^mapleboard,.*', '^mara=
ntec,.*', '^marvell,.*', '^maxbotix,.*', '^maxim,.*', '^maxlinear,.*', '^ma=
xtor,.*', '^mayqueen,.*', '^mbvl,.*', '^mcube,.*', '^meas,.*', '^mecer,.*',=
 '^mediatek,.*', '^megachips,.*', '^mele,.*', '^melexis,.*', '^melfas,.*', =
'^mellanox,.*', '^memsensing,.*', '^memsic,.*', '^menlo,.*', '^mentor,.*', =
'^meraki,.*', '^merrii,.*', '^methode,.*', '^micrel,.*', '^microchip,.*', '=
^microcrystal,.*', '^micron,.*', '^microsoft,.*', '^microsys,.*', '^microti=
ps,.*', '^mikroe,.*', '^mikrotik,.*', '^milkv,.*', '^miniand,.*', '^minix,.=
*', '^mips,.*', '^miramems,.*', '^mitsubishi,.*', '^mitsumi,.*', '^mixel,.*=
', '^miyoo,.*', '^mntre,.*', '^mobileye,.*', '^modtronix,.*', '^moortec,.*'=
, '^mosaixtech,.*', '^motorcomm,.*', '^motorola,.*', '^moxa,.*', '^mpl,.*',=
 '^mps,.*', '^mqmaker,.*'
>  , '^mrvl,.*', '^mscc,.*', '^msi,.*', '^mstar,.*', '^mti,.*', '^multi-inn=
o,.*', '^mundoreader,.*', '^murata,.*', '^mxic,.*', '^mxicy,.*', '^myir,.*'=
, '^national,.*', '^neardi,.*', '^nec,.*', '^neofidelity,.*', '^neonode,.*'=
, '^netcube,.*', '^netgear,.*', '^netlogic,.*', '^netron-dy,.*', '^netronix=
,.*', '^netxeon,.*', '^neweast,.*', '^newhaven,.*', '^newvision,.*', '^nexb=
ox,.*', '^nextthing,.*', '^ni,.*', '^nicera,.*', '^nintendo,.*', '^nlt,.*',=
 '^nokia,.*', '^nordic,.*', '^nothing,.*', '^novatech,.*', '^novatek,.*', '=
^novtech,.*', '^numonyx,.*', '^nutsboard,.*', '^nuvoton,.*', '^nvd,.*', '^n=
vidia,.*', '^nxp,.*', '^oceanic,.*', '^ocs,.*', '^oct,.*', '^okaya,.*', '^o=
ki,.*', '^olimex,.*', '^olpc,.*', '^oneplus,.*', '^onie,.*', '^onion,.*', '=
^onnn,.*', '^ontat,.*', '^opalkelly,.*', '^openailab,.*', '^opencores,.*', =
'^openembed,.*', '^openpandora,.*', '^openrisc,.*', '^openwrt,.*', '^option=
,.*', '^oranth,.*', '^orisetech,.*', '^ortustech,.*', '^osddisplays,.*', '^=
osmc,.*', '^ouya,.*', '^o
>  verkiz,.*', '^ovti,.*', '^oxsemi,.*', '^ozzmaker,.*', '^panasonic,.*', '=
^parade,.*', '^parallax,.*', '^particle,.*', '^pda,.*', '^pegatron,.*', '^p=
ericom,.*', '^pervasive,.*', '^phicomm,.*', '^phontech,.*', '^phytec,.*', '=
^picochip,.*', '^pinctrl-[0-9]+$', '^pine64,.*', '^pineriver,.*', '^pixcir,=
=2E*', '^plantower,.*', '^plathome,.*', '^plda,.*', '^plx,.*', '^ply,.*', '=
^pni,.*', '^pocketbook,.*', '^polaroid,.*', '^polyhex,.*', '^pool[0-3],.*',=
 '^portwell,.*', '^poslab,.*', '^pov,.*', '^powertip,.*', '^powervr,.*', '^=
powkiddy,.*', '^pri,.*', '^primeview,.*', '^primux,.*', '^probox2,.*', '^pr=
t,.*', '^pulsedlight,.*', '^purism,.*', '^puya,.*', '^qca,.*', '^qcom,.*', =
'^qemu,.*', '^qi,.*', '^qiaodian,.*', '^qihua,.*', '^qishenglong,.*', '^qna=
p,.*', '^quanta,.*', '^radxa,.*', '^raidsonic,.*', '^ralink,.*', '^ramtron,=
=2E*', '^raspberrypi,.*', '^raumfeld,.*', '^raydium,.*', '^rda,.*', '^realt=
ek,.*', '^relfor,.*', '^remarkable,.*', '^renesas,.*', '^rervision,.*', '^r=
etronix,.*', '^revotics,.*',=20
>  '^rex,.*', '^richtek,.*', '^ricoh,.*', '^rikomagic,.*', '^riot,.*', '^ri=
scv,.*', '^rockchip,.*', '^rocktech,.*', '^rohm,.*', '^ronbo,.*', '^ronetix=
,.*', '^roofull,.*', '^roseapplepi,.*', '^rve,.*', '^saef,.*', '^sakurapi,.=
*', '^samsung,.*', '^samtec,.*', '^sancloud,.*', '^sandisk,.*', '^satoz,.*'=
, '^sbs,.*', '^schindler,.*', '^schneider,.*', '^schulercontrol,.*', '^scio=
sense,.*', '^sdmc,.*', '^seagate,.*', '^seeed,.*', '^seirobotics,.*', '^sem=
tech,.*', '^senseair,.*', '^sensirion,.*', '^sensortek,.*', '^sercomm,.*', =
'^sff,.*', '^sgd,.*', '^sgmicro,.*', '^sgx,.*', '^sharp,.*', '^shift,.*', '=
^shimafuji,.*', '^shineworld,.*', '^shiratech,.*', '^si-en,.*', '^si-linux,=
=2E*', '^sielaff,.*', '^siemens,.*', '^sifive,.*', '^siflower,.*', '^sigma,=
=2E*', '^sii,.*', '^sil,.*', '^silabs,.*', '^silan,.*', '^silead,.*', '^sil=
ergy,.*', '^silex-insight,.*', '^siliconfile,.*', '^siliconmitus,.*', '^sil=
vaco,.*', '^simtek,.*', '^sinlinx,.*', '^sinovoip,.*', '^sinowealth,.*', '^=
sipeed,.*', '^sirf,.*', '^sis
>  ,.*', '^sitronix,.*', '^skov,.*', '^skyworks,.*', '^smartfiber,.*', '^sm=
artlabs,.*', '^smartrg,.*', '^smi,.*', '^smsc,.*', '^snps,.*', '^sochip,.*'=
, '^socionext,.*', '^solidrun,.*', '^solomon,.*', '^somfy,.*', '^sony,.*', =
'^sophgo,.*', '^sourceparts,.*', '^spacemit,.*', '^spansion,.*', '^sparkfun=
,.*', '^spinalhdl,.*', '^sprd,.*', '^square,.*', '^ssi,.*', '^sst,.*', '^ss=
tar,.*', '^st,.*', '^st-ericsson,.*', '^starfive,.*', '^starry,.*', '^start=
ek,.*', '^starterkit,.*', '^ste,.*', '^stericsson,.*', '^storlink,.*', '^st=
orm,.*', '^storopack,.*', '^summit,.*', '^sunchip,.*', '^sundance,.*', '^su=
nplus,.*', '^supermicro,.*', '^swir,.*', '^syna,.*', '^synaptics,.*', '^syn=
ology,.*', '^synopsys,.*', '^taos,.*', '^tbs,.*', '^tbs-biometrics,.*', '^t=
cg,.*', '^tcl,.*', '^tcs,.*', '^tcu,.*', '^tdo,.*', '^team-source-display,.=
*', '^technexion,.*', '^technologic,.*', '^techstar,.*', '^techwell,.*', '^=
teejet,.*', '^teltonika,.*', '^tempo,.*', '^tenda,.*', '^terasic,.*', '^tes=
la,.*', '^test,.*', '^tfc
>  ,.*', '^thead,.*', '^thine,.*', '^thingyjp,.*', '^thundercomm,.*', '^thw=
c,.*', '^ti,.*', '^tianma,.*', '^tlm,.*', '^tmt,.*', '^topeet,.*', '^topic,=
=2E*', '^topland,.*', '^toppoly,.*', '^topwise,.*', '^toradex,.*', '^toshib=
a,.*', '^toumaz,.*', '^tpk,.*', '^tplink,.*', '^tpo,.*', '^tq,.*', '^transp=
eed,.*', '^traverse,.*', '^tronfy,.*', '^tronsmart,.*', '^truly,.*', '^tsd,=
=2E*', '^turing,.*', '^tyan,.*', '^tyhx,.*', '^u-blox,.*', '^u-boot,.*', '^=
ubnt,.*', '^ucrobotics,.*', '^udoo,.*', '^ufispace,.*', '^ugoos,.*', '^ultr=
atronik,.*', '^uni-t,.*', '^uniwest,.*', '^upisemi,.*', '^urt,.*', '^usi,.*=
', '^usr,.*', '^utoo,.*', '^v3,.*', '^vaisala,.*', '^valve,.*', '^vamrs,.*'=
, '^variscite,.*', '^vdl,.*', '^vertexcom,.*', '^via,.*', '^vialab,.*', '^v=
icor,.*', '^videostrong,.*', '^virtio,.*', '^virtual,.*', '^vishay,.*', '^v=
isionox,.*', '^vitesse,.*', '^vivante,.*', '^vivax,.*', '^vocore,.*', '^voi=
pac,.*', '^voltafield,.*', '^vot,.*', '^vscom,.*', '^vxt,.*', '^wacom,.*', =
'^wanchanglong,.*', '^wand,.*
>  ', '^waveshare,.*', '^wd,.*', '^we,.*', '^welltech,.*', '^wetek,.*', '^w=
exler,.*', '^whwave,.*', '^wi2wi,.*', '^widora,.*', '^wiligear,.*', '^wills=
emi,.*', '^winbond,.*', '^wingtech,.*', '^winlink,.*', '^winsen,.*', '^wins=
tar,.*', '^wirelesstag,.*', '^wits,.*', '^wlf,.*', '^wm,.*', '^wobo,.*', '^=
wolfvision,.*', '^x-powers,.*', '^xen,.*', '^xes,.*', '^xiaomi,.*', '^xicor=
,.*', '^xillybus,.*', '^xingbangda,.*', '^xinpeng,.*', '^xiphera,.*', '^xln=
x,.*', '^xnano,.*', '^xunlong,.*', '^xylon,.*', '^yadro,.*', '^yamaha,.*', =
'^yes-optoelectronics,.*', '^yic,.*', '^yiming,.*', '^ylm,.*', '^yna,.*', '=
^yones-toptech,.*', '^ys,.*', '^ysoft,.*', '^yuridenki,.*', '^yuzukihd,.*',=
 '^zarlink,.*', '^zealz,.*', '^zeitec,.*', '^zidoo,.*', '^zii,.*', '^ziniti=
x,.*', '^zkmagic,.*', '^zte,.*', '^zyxel,.*'
> 	from schema $id: http://devicetree.org/schemas/vendor-prefixes.yaml
> arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dtb: scp@10720000 (med=
iatek,mt8188-scp-dual): reg-names: ['cfg'] is too short
> 	from schema $id: http://devicetree.org/schemas/remoteproc/mtk,scp.yaml
> arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dtb: scp@10720000 (med=
iatek,mt8188-scp-dual): reg: [[0, 275906560, 0, 917504]] is too short
> 	from schema $id: http://devicetree.org/schemas/remoteproc/mtk,scp.yaml
> arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dtb: scp@10720000 (med=
iatek,mt8188-scp-dual): reg-names: ['cfg'] is too short
> 	from schema $id: http://devicetree.org/schemas/remoteproc/mtk,scp.yaml
> arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dtb: mmc@11250000 (med=
iatek,mt8188-mmc): Unevaluated properties are not allowed ('cap-sdio-async-=
int', 'eint-gpios', 'enable-sdio-wakeup' were unexpected)
> 	from schema $id: http://devicetree.org/schemas/mmc/mtk-sd.yaml
> arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dtb: codec@1a (wlf,wm8=
962): 'AVDD-supply' is a required property
> 	from schema $id: http://devicetree.org/schemas/sound/wlf,wm8962.yaml
> arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dtb: codec@1a (wlf,wm8=
962): 'CPVDD-supply' is a required property
> 	from schema $id: http://devicetree.org/schemas/sound/wlf,wm8962.yaml
> arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dtb: codec@1a (wlf,wm8=
962): 'DBVDD-supply' is a required property
> 	from schema $id: http://devicetree.org/schemas/sound/wlf,wm8962.yaml
> arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dtb: codec@1a (wlf,wm8=
962): 'DCVDD-supply' is a required property
> 	from schema $id: http://devicetree.org/schemas/sound/wlf,wm8962.yaml
> arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dtb: codec@1a (wlf,wm8=
962): 'MICVDD-supply' is a required property
> 	from schema $id: http://devicetree.org/schemas/sound/wlf,wm8962.yaml
> arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dtb: codec@1a (wlf,wm8=
962): 'PLLVDD-supply' is a required property
> 	from schema $id: http://devicetree.org/schemas/sound/wlf,wm8962.yaml
> arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dtb: codec@1a (wlf,wm8=
962): 'SPKVDD1-supply' is a required property
> 	from schema $id: http://devicetree.org/schemas/sound/wlf,wm8962.yaml
> arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dtb: codec@1a (wlf,wm8=
962): 'SPKVDD2-supply' is a required property
> 	from schema $id: http://devicetree.org/schemas/sound/wlf,wm8962.yaml
> arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dtb: i2c@11e01000 (med=
iatek,mt8188-i2c): pinctrl-names: ['default', 'default'] has non-unique ele=
ments
> 	from schema $id: http://devicetree.org/schemas/pinctrl/pinctrl-consumer.=
yaml
> arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dtb: panel-dsi0 (tianm=
a,tm070jdhg30): 'power-supply' is a required property
> 	from schema $id: http://devicetree.org/schemas/display/panel/panel-simpl=
e.yaml
> arch/arm64/boot/dts/mediatek/mt8370-tungsten-smarc.dtb: i2c0-gpio-pins: p=
ins-gpio: {'pinmux': [1536], 'bias-pull-up': 203, 'drive-strength-microamp'=
: [1000]} is not of type 'array'
> 	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml
> arch/arm64/boot/dts/mediatek/mt8370-tungsten-smarc.dtb: pmic (mediatek,mt=
6359): '#sound-dai-cells' does not match any of the regexes: '^pinctrl-[0-9=
]+$'
> 	from schema $id: http://devicetree.org/schemas/mfd/mediatek,mt6397.yaml
> arch/arm64/boot/dts/mediatek/mt8370-tungsten-smarc.dtb: spmi@10027000 (me=
diatek,mt8188-spmi): pmic@6:reg:0: [6, 0, 11] is too long
> 	from schema $id: http://devicetree.org/schemas/spmi/mtk,spmi-mtk-pmif.ya=
ml
> arch/arm64/boot/dts/mediatek/mt8370-tungsten-smarc.dtb: spmi@10027000 (me=
diatek,mt8188-spmi): #address-cells: 2 was expected
> 	from schema $id: http://devicetree.org/schemas/spmi/mtk,spmi-mtk-pmif.ya=
ml
> arch/arm64/boot/dts/mediatek/mt8370-tungsten-smarc.dtb: spmi@10027000 (me=
diatek,mt8188-spmi): #size-cells: 0 was expected
> 	from schema $id: http://devicetree.org/schemas/spmi/mtk,spmi-mtk-pmif.ya=
ml
> arch/arm64/boot/dts/mediatek/mt8370-tungsten-smarc.dtb: spmi@10027000 (me=
diatek,mt8188-spmi): Unevaluated properties are not allowed ('#address-cell=
s', '#size-cells', 'pmic@6' were unexpected)
> 	from schema $id: http://devicetree.org/schemas/spmi/mtk,spmi-mtk-pmif.ya=
ml
> arch/arm64/boot/dts/mediatek/mt8370-tungsten-smarc.dtb: spmi@10027000 (me=
diatek,mt8188-spmi): pmic@6:reg:0: [6, 0, 11] is too long
> 	from schema $id: http://devicetree.org/schemas/spmi/spmi.yaml
> arch/arm64/boot/dts/mediatek/mt8370-tungsten-smarc.dtb: spmi@10027000 (me=
diatek,mt8188-spmi): #address-cells: 2 was expected
> 	from schema $id: http://devicetree.org/schemas/spmi/spmi.yaml
> arch/arm64/boot/dts/mediatek/mt8370-tungsten-smarc.dtb: spmi@10027000 (me=
diatek,mt8188-spmi): #size-cells: 0 was expected
> 	from schema $id: http://devicetree.org/schemas/spmi/spmi.yaml
> arch/arm64/boot/dts/mediatek/mt8370-tungsten-smarc.dtb: pmic@6 (mediatek,=
mt6315-regulator): regulators:vbuck1: Unevaluated properties are not allowe=
d ('mtk,combined-regulator', 'regulator-compatible' were unexpected)
> 	from schema $id: http://devicetree.org/schemas/regulator/mt6315-regulato=
r.yaml
> arch/arm64/boot/dts/mediatek/mt8370-tungsten-smarc.dtb: pmic@6 (mediatek,=
mt6315-regulator): regulators:vbuck3: Unevaluated properties are not allowe=
d ('regulator-compatible' was unexpected)
> 	from schema $id: http://devicetree.org/schemas/regulator/mt6315-regulato=
r.yaml
> arch/arm64/boot/dts/mediatek/mt8370-tungsten-smarc.dtb: pmic@6 (mediatek,=
mt6315-regulator): regulators:vbuck4: Unevaluated properties are not allowe=
d ('regulator-compatible' was unexpected)
> 	from schema $id: http://devicetree.org/schemas/regulator/mt6315-regulato=
r.yaml
> arch/arm64/boot/dts/mediatek/mt8370-tungsten-smarc.dtb: vbuck1: 'mtk,comb=
ined-regulator' does not match any of the regexes: '^#.*', '^(at25|bm|devbu=
s|dmacap|dsa|exynos|fsi[ab]|gpio-fan|gpio-key|gpio|gpmc|hdmi|i2c-gpio),.*',=
 '^(keypad|m25p|max8952|max8997|max8998|mpmc),.*', '^(pciclass|pinctrl-sing=
le|#pinctrl-single|PowerPC),.*', '^(pl022|pxa-mmc|rcar_sound|rotary-encoder=
|s5m8767|sdhci),.*', '^(simple-audio-card|st-plgpio|st-spics|ts),.*', '^100=
ask,.*', '^70mai,.*', '^8dev,.*', '^GEFanuc,.*', '^IBM,.*', '^ORCL,.*', '^S=
UNW,.*', '^[a-zA-Z0-9#_][a-zA-Z0-9#+\-._@]{0,63}$', '^[a-zA-Z0-9+\-._]*@[0-=
9a-zA-Z,]*$', '^abb,.*', '^abilis,.*', '^abracon,.*', '^abt,.*', '^acbel,.*=
', '^acelink,.*', '^acer,.*', '^acme,.*', '^actions,.*', '^actiontec,.*', '=
^active-semi,.*', '^ad,.*', '^adafruit,.*', '^adapteva,.*', '^adaptrum,.*',=
 '^adh,.*', '^adi,.*', '^adieng,.*', '^admatec,.*', '^advantech,.*', '^aero=
flexgaisler,.*', '^aesop,.*', '^airoha,.*', '^al,.*', '^alcatel,.*', '^alde=
c,.*', '^alfa-network,.*'
>  , '^allegro,.*', '^allegromicro,.*', '^alliedtelesis,.*', '^alliedvision=
,.*', '^allo,.*', '^allwinner,.*', '^alphascale,.*', '^alps,.*', '^alt,.*',=
 '^altr,.*', '^amarula,.*', '^amazon,.*', '^amcc,.*', '^amd,.*', '^amediate=
ch,.*', '^amlogic,.*', '^ampere,.*', '^amphenol,.*', '^ampire,.*', '^ams,.*=
', '^amstaos,.*', '^analogix,.*', '^anbernic,.*', '^andestech,.*', '^anvo,.=
*', '^aoly,.*', '^aosong,.*', '^apm,.*', '^apple,.*', '^aptina,.*', '^arasa=
n,.*', '^archermind,.*', '^arcom,.*', '^arctic,.*', '^arcx,.*', '^argon40,.=
*', '^ariaboard,.*', '^aries,.*', '^arm,.*', '^armadeus,.*', '^armsom,.*', =
'^arrow,.*', '^artesyn,.*', '^asahi-kasei,.*', '^asc,.*', '^asix,.*', '^asp=
eed,.*', '^asrock,.*', '^asteralabs,.*', '^asus,.*', '^atheros,.*', '^atlas=
,.*', '^atmel,.*', '^auo,.*', '^auvidea,.*', '^avago,.*', '^avia,.*', '^avi=
c,.*', '^avnet,.*', '^awinic,.*', '^axentia,.*', '^axiado,.*', '^axis,.*', =
'^azoteq,.*', '^azw,.*', '^baikal,.*', '^bananapi,.*', '^beacon,.*', '^beag=
le,.*', '^belling,.*', '^
>  bestar,.*', '^bhf,.*', '^bigtreetech,.*', '^bitmain,.*', '^blaize,.*', '=
^bluegiga,.*', '^blutek,.*', '^boe,.*', '^bosch,.*', '^boundary,.*', '^brcm=
,.*', '^broadmobi,.*', '^bsh,.*', '^bticino,.*', '^buffalo,.*', '^buglabs,.=
*', '^bur,.*', '^bytedance,.*', '^calamp,.*', '^calao,.*', '^calaosystems,.=
*', '^calxeda,.*', '^cameo,.*', '^canaan,.*', '^caninos,.*', '^capella,.*',=
 '^cascoda,.*', '^catalyst,.*', '^cavium,.*', '^cct,.*', '^cdns,.*', '^cdte=
ch,.*', '^cellwise,.*', '^ceva,.*', '^chargebyte,.*', '^checkpoint,.*', '^c=
hefree,.*', '^chipidea,.*', '^chipone,.*', '^chipspark,.*', '^chongzhou,.*'=
, '^chrontel,.*', '^chrp,.*', '^chunghwa,.*', '^chuwi,.*', '^ciaa,.*', '^ci=
rrus,.*', '^cisco,.*', '^cix,.*', '^clockwork,.*', '^cloos,.*', '^cloudengi=
nes,.*', '^cnm,.*', '^cnxt,.*', '^colorfly,.*', '^compal,.*', '^compulab,.*=
', '^comvetia,.*', '^congatec,.*', '^coolpi,.*', '^coreriver,.*', '^corpro,=
=2E*', '^cortina,.*', '^cosmic,.*', '^crane,.*', '^creative,.*', '^crystalf=
ontz,.*', '^csky,.*', '^cso
>  t,.*', '^csq,.*', '^csr,.*', '^ctera,.*', '^ctu,.*', '^cubietech,.*', '^=
cudy,.*', '^cui,.*', '^cypress,.*', '^cyx,.*', '^cznic,.*', '^dallas,.*', '=
^dataimage,.*', '^davicom,.*', '^deepcomputing,.*', '^dell,.*', '^delta,.*'=
, '^densitron,.*', '^denx,.*', '^devantech,.*', '^dfi,.*', '^dfrobot,.*', '=
^dh,.*', '^difrnce,.*', '^digi,.*', '^digilent,.*', '^dimonoff,.*', '^diode=
s,.*', '^dioo,.*', '^djn,.*', '^dlc,.*', '^dlg,.*', '^dlink,.*', '^dmo,.*',=
 '^domintech,.*', '^dongwoon,.*', '^dptechnics,.*', '^dragino,.*', '^dream,=
=2E*', '^ds,.*', '^dserve,.*', '^dynaimage,.*', '^ea,.*', '^ebang,.*', '^eb=
bg,.*', '^ebs-systart,.*', '^ebv,.*', '^eckelmann,.*', '^econet,.*', '^edge=
ble,.*', '^edimax,.*', '^edt,.*', '^ees,.*', '^eeti,.*', '^egnite,.*', '^ei=
nfochips,.*', '^eink,.*', '^elan,.*', '^element14,.*', '^elgin,.*', '^elida=
,.*', '^elimo,.*', '^elpida,.*', '^embedfire,.*', '^embest,.*', '^emcraft,.=
*', '^emlid,.*', '^emmicro,.*', '^empire-electronix,.*', '^emtrion,.*', '^e=
nbw,.*', '^enclustra,.*', '
>  ^endian,.*', '^endless,.*', '^ene,.*', '^energymicro,.*', '^engicam,.*',=
 '^engleder,.*', '^epcos,.*', '^epfl,.*', '^epson,.*', '^esp,.*', '^est,.*'=
, '^eswin,.*', '^ettus,.*', '^eukrea,.*', '^everest,.*', '^everspin,.*', '^=
evervision,.*', '^exar,.*', '^excito,.*', '^exegin,.*', '^ezchip,.*', '^ezu=
rio,.*', '^facebook,.*', '^fairchild,.*', '^fairphone,.*', '^faraday,.*', '=
^fascontek,.*', '^fastrax,.*', '^fcs,.*', '^feixin,.*', '^feiyang,.*', '^fi=
i,.*', '^firefly,.*', '^flipkart,.*', '^focaltech,.*', '^forlinx,.*', '^fou=
rsemi,.*', '^foxlink,.*', '^freebox,.*', '^freecom,.*', '^frida,.*', '^frie=
ndlyarm,.*', '^fsl,.*', '^fujitsu,.*', '^fxtec,.*', '^galaxycore,.*', '^gam=
eforce,.*', '^gardena,.*', '^gateway,.*', '^gateworks,.*', '^gcw,.*', '^ge,=
=2E*', '^geekbuying,.*', '^gef,.*', '^gehc,.*', '^gemei,.*', '^gemtek,.*', =
'^genesys,.*', '^genexis,.*', '^geniatech,.*', '^giantec,.*', '^giantplus,.=
*', '^glinet,.*', '^globalscale,.*', '^globaltop,.*', '^gmt,.*', '^gocontro=
ll,.*', '^goldelico,.*', '^
>  goodix,.*', '^google,.*', '^goramo,.*', '^gplus,.*', '^grinn,.*', '^grmn=
,.*', '^gumstix,.*', '^gw,.*', '^hannstar,.*', '^haochuangyi,.*', '^haoyu,.=
*', '^hardkernel,.*', '^hce,.*', '^headacoustics,.*', '^hechuang,.*', '^hid=
eep,.*', '^himax,.*', '^hinlink,.*', '^hirschmann,.*', '^hisi,.*', '^hisili=
con,.*', '^hit,.*', '^hitex,.*', '^holt,.*', '^holtek,.*', '^honestar,.*', =
'^honeywell,.*', '^hoperf,.*', '^hoperun,.*', '^hp,.*', '^hpe,.*', '^hsg,.*=
', '^htc,.*', '^huawei,.*', '^hugsun,.*', '^huiling,.*', '^hwacom,.*', '^hx=
t,.*', '^hycon,.*', '^hydis,.*', '^hynitron,.*', '^hynix,.*', '^hyundai,.*'=
, '^i2se,.*', '^ibm,.*', '^icplus,.*', '^idt,.*', '^iei,.*', '^ifi,.*', '^i=
litek,.*', '^imagis,.*', '^img,.*', '^imi,.*', '^inanbo,.*', '^incircuit,.*=
', '^incostartec,.*', '^indiedroid,.*', '^inet-tek,.*', '^infineon,.*', '^i=
nforce,.*', '^ingenic,.*', '^ingrasys,.*', '^injoinic,.*', '^innocomm,.*', =
'^innolux,.*', '^inside-secure,.*', '^insignal,.*', '^inspur,.*', '^intel,.=
*', '^intercontrol,.*', '
>  ^invensense,.*', '^inventec,.*', '^inversepath,.*', '^iom,.*', '^irondev=
ice,.*', '^isee,.*', '^isil,.*', '^issi,.*', '^ite,.*', '^itead,.*', '^itia=
n,.*', '^ivo,.*', '^iwave,.*', '^jadard,.*', '^jasonic,.*', '^jdi,.*', '^je=
dec,.*', '^jenson,.*', '^jesurun,.*', '^jethome,.*', '^jianda,.*', '^jide,.=
*', '^joz,.*', '^jty,.*', '^kam,.*', '^karo,.*', '^keithkoep,.*', '^keymile=
,.*', '^khadas,.*', '^kiebackpeter,.*', '^kinetic,.*', '^kingdisplay,.*', '=
^kingnovel,.*', '^kionix,.*', '^kobo,.*', '^kobol,.*', '^koe,.*', '^kontron=
,.*', '^kosagi,.*', '^kvg,.*', '^kyo,.*', '^lacie,.*', '^laird,.*', '^lamob=
o,.*', '^lantiq,.*', '^lattice,.*', '^lckfb,.*', '^lctech,.*', '^leadtek,.*=
', '^leez,.*', '^lego,.*', '^lemaker,.*', '^lenovo,.*', '^lg,.*', '^lgphili=
ps,.*', '^libretech,.*', '^licheepi,.*', '^linaro,.*', '^lincolntech,.*', '=
^lineartechnology,.*', '^linksprite,.*', '^linksys,.*', '^linutronix,.*', '=
^linux,.*', '^linx,.*', '^liontron,.*', '^liteon,.*', '^litex,.*', '^lltc,.=
*', '^logicpd,.*', '^logi
>  ctechno,.*', '^longcheer,.*', '^lontium,.*', '^loongmasses,.*', '^loongs=
on,.*', '^lsi,.*', '^luckfox,.*', '^lunzn,.*', '^luxul,.*', '^lwn,.*', '^lx=
a,.*', '^m5stack,.*', '^macnica,.*', '^mantix,.*', '^mapleboard,.*', '^mara=
ntec,.*', '^marvell,.*', '^maxbotix,.*', '^maxim,.*', '^maxlinear,.*', '^ma=
xtor,.*', '^mayqueen,.*', '^mbvl,.*', '^mcube,.*', '^meas,.*', '^mecer,.*',=
 '^mediatek,.*', '^megachips,.*', '^mele,.*', '^melexis,.*', '^melfas,.*', =
'^mellanox,.*', '^memsensing,.*', '^memsic,.*', '^menlo,.*', '^mentor,.*', =
'^meraki,.*', '^merrii,.*', '^methode,.*', '^micrel,.*', '^microchip,.*', '=
^microcrystal,.*', '^micron,.*', '^microsoft,.*', '^microsys,.*', '^microti=
ps,.*', '^mikroe,.*', '^mikrotik,.*', '^milkv,.*', '^miniand,.*', '^minix,.=
*', '^mips,.*', '^miramems,.*', '^mitsubishi,.*', '^mitsumi,.*', '^mixel,.*=
', '^miyoo,.*', '^mntre,.*', '^mobileye,.*', '^modtronix,.*', '^moortec,.*'=
, '^mosaixtech,.*', '^motorcomm,.*', '^motorola,.*', '^moxa,.*', '^mpl,.*',=
 '^mps,.*', '^mqmaker,.*'
>  , '^mrvl,.*', '^mscc,.*', '^msi,.*', '^mstar,.*', '^mti,.*', '^multi-inn=
o,.*', '^mundoreader,.*', '^murata,.*', '^mxic,.*', '^mxicy,.*', '^myir,.*'=
, '^national,.*', '^neardi,.*', '^nec,.*', '^neofidelity,.*', '^neonode,.*'=
, '^netcube,.*', '^netgear,.*', '^netlogic,.*', '^netron-dy,.*', '^netronix=
,.*', '^netxeon,.*', '^neweast,.*', '^newhaven,.*', '^newvision,.*', '^nexb=
ox,.*', '^nextthing,.*', '^ni,.*', '^nicera,.*', '^nintendo,.*', '^nlt,.*',=
 '^nokia,.*', '^nordic,.*', '^nothing,.*', '^novatech,.*', '^novatek,.*', '=
^novtech,.*', '^numonyx,.*', '^nutsboard,.*', '^nuvoton,.*', '^nvd,.*', '^n=
vidia,.*', '^nxp,.*', '^oceanic,.*', '^ocs,.*', '^oct,.*', '^okaya,.*', '^o=
ki,.*', '^olimex,.*', '^olpc,.*', '^oneplus,.*', '^onie,.*', '^onion,.*', '=
^onnn,.*', '^ontat,.*', '^opalkelly,.*', '^openailab,.*', '^opencores,.*', =
'^openembed,.*', '^openpandora,.*', '^openrisc,.*', '^openwrt,.*', '^option=
,.*', '^oranth,.*', '^orisetech,.*', '^ortustech,.*', '^osddisplays,.*', '^=
osmc,.*', '^ouya,.*', '^o
>  verkiz,.*', '^ovti,.*', '^oxsemi,.*', '^ozzmaker,.*', '^panasonic,.*', '=
^parade,.*', '^parallax,.*', '^particle,.*', '^pda,.*', '^pegatron,.*', '^p=
ericom,.*', '^pervasive,.*', '^phicomm,.*', '^phontech,.*', '^phytec,.*', '=
^picochip,.*', '^pinctrl-[0-9]+$', '^pine64,.*', '^pineriver,.*', '^pixcir,=
=2E*', '^plantower,.*', '^plathome,.*', '^plda,.*', '^plx,.*', '^ply,.*', '=
^pni,.*', '^pocketbook,.*', '^polaroid,.*', '^polyhex,.*', '^pool[0-3],.*',=
 '^portwell,.*', '^poslab,.*', '^pov,.*', '^powertip,.*', '^powervr,.*', '^=
powkiddy,.*', '^pri,.*', '^primeview,.*', '^primux,.*', '^probox2,.*', '^pr=
t,.*', '^pulsedlight,.*', '^purism,.*', '^puya,.*', '^qca,.*', '^qcom,.*', =
'^qemu,.*', '^qi,.*', '^qiaodian,.*', '^qihua,.*', '^qishenglong,.*', '^qna=
p,.*', '^quanta,.*', '^radxa,.*', '^raidsonic,.*', '^ralink,.*', '^ramtron,=
=2E*', '^raspberrypi,.*', '^raumfeld,.*', '^raydium,.*', '^rda,.*', '^realt=
ek,.*', '^relfor,.*', '^remarkable,.*', '^renesas,.*', '^rervision,.*', '^r=
etronix,.*', '^revotics,.*',=20
>  '^rex,.*', '^richtek,.*', '^ricoh,.*', '^rikomagic,.*', '^riot,.*', '^ri=
scv,.*', '^rockchip,.*', '^rocktech,.*', '^rohm,.*', '^ronbo,.*', '^ronetix=
,.*', '^roofull,.*', '^roseapplepi,.*', '^rve,.*', '^saef,.*', '^sakurapi,.=
*', '^samsung,.*', '^samtec,.*', '^sancloud,.*', '^sandisk,.*', '^satoz,.*'=
, '^sbs,.*', '^schindler,.*', '^schneider,.*', '^schulercontrol,.*', '^scio=
sense,.*', '^sdmc,.*', '^seagate,.*', '^seeed,.*', '^seirobotics,.*', '^sem=
tech,.*', '^senseair,.*', '^sensirion,.*', '^sensortek,.*', '^sercomm,.*', =
'^sff,.*', '^sgd,.*', '^sgmicro,.*', '^sgx,.*', '^sharp,.*', '^shift,.*', '=
^shimafuji,.*', '^shineworld,.*', '^shiratech,.*', '^si-en,.*', '^si-linux,=
=2E*', '^sielaff,.*', '^siemens,.*', '^sifive,.*', '^siflower,.*', '^sigma,=
=2E*', '^sii,.*', '^sil,.*', '^silabs,.*', '^silan,.*', '^silead,.*', '^sil=
ergy,.*', '^silex-insight,.*', '^siliconfile,.*', '^siliconmitus,.*', '^sil=
vaco,.*', '^simtek,.*', '^sinlinx,.*', '^sinovoip,.*', '^sinowealth,.*', '^=
sipeed,.*', '^sirf,.*', '^sis
>  ,.*', '^sitronix,.*', '^skov,.*', '^skyworks,.*', '^smartfiber,.*', '^sm=
artlabs,.*', '^smartrg,.*', '^smi,.*', '^smsc,.*', '^snps,.*', '^sochip,.*'=
, '^socionext,.*', '^solidrun,.*', '^solomon,.*', '^somfy,.*', '^sony,.*', =
'^sophgo,.*', '^sourceparts,.*', '^spacemit,.*', '^spansion,.*', '^sparkfun=
,.*', '^spinalhdl,.*', '^sprd,.*', '^square,.*', '^ssi,.*', '^sst,.*', '^ss=
tar,.*', '^st,.*', '^st-ericsson,.*', '^starfive,.*', '^starry,.*', '^start=
ek,.*', '^starterkit,.*', '^ste,.*', '^stericsson,.*', '^storlink,.*', '^st=
orm,.*', '^storopack,.*', '^summit,.*', '^sunchip,.*', '^sundance,.*', '^su=
nplus,.*', '^supermicro,.*', '^swir,.*', '^syna,.*', '^synaptics,.*', '^syn=
ology,.*', '^synopsys,.*', '^taos,.*', '^tbs,.*', '^tbs-biometrics,.*', '^t=
cg,.*', '^tcl,.*', '^tcs,.*', '^tcu,.*', '^tdo,.*', '^team-source-display,.=
*', '^technexion,.*', '^technologic,.*', '^techstar,.*', '^techwell,.*', '^=
teejet,.*', '^teltonika,.*', '^tempo,.*', '^tenda,.*', '^terasic,.*', '^tes=
la,.*', '^test,.*', '^tfc
>  ,.*', '^thead,.*', '^thine,.*', '^thingyjp,.*', '^thundercomm,.*', '^thw=
c,.*', '^ti,.*', '^tianma,.*', '^tlm,.*', '^tmt,.*', '^topeet,.*', '^topic,=
=2E*', '^topland,.*', '^toppoly,.*', '^topwise,.*', '^toradex,.*', '^toshib=
a,.*', '^toumaz,.*', '^tpk,.*', '^tplink,.*', '^tpo,.*', '^tq,.*', '^transp=
eed,.*', '^traverse,.*', '^tronfy,.*', '^tronsmart,.*', '^truly,.*', '^tsd,=
=2E*', '^turing,.*', '^tyan,.*', '^tyhx,.*', '^u-blox,.*', '^u-boot,.*', '^=
ubnt,.*', '^ucrobotics,.*', '^udoo,.*', '^ufispace,.*', '^ugoos,.*', '^ultr=
atronik,.*', '^uni-t,.*', '^uniwest,.*', '^upisemi,.*', '^urt,.*', '^usi,.*=
', '^usr,.*', '^utoo,.*', '^v3,.*', '^vaisala,.*', '^valve,.*', '^vamrs,.*'=
, '^variscite,.*', '^vdl,.*', '^vertexcom,.*', '^via,.*', '^vialab,.*', '^v=
icor,.*', '^videostrong,.*', '^virtio,.*', '^virtual,.*', '^vishay,.*', '^v=
isionox,.*', '^vitesse,.*', '^vivante,.*', '^vivax,.*', '^vocore,.*', '^voi=
pac,.*', '^voltafield,.*', '^vot,.*', '^vscom,.*', '^vxt,.*', '^wacom,.*', =
'^wanchanglong,.*', '^wand,.*
>  ', '^waveshare,.*', '^wd,.*', '^we,.*', '^welltech,.*', '^wetek,.*', '^w=
exler,.*', '^whwave,.*', '^wi2wi,.*', '^widora,.*', '^wiligear,.*', '^wills=
emi,.*', '^winbond,.*', '^wingtech,.*', '^winlink,.*', '^winsen,.*', '^wins=
tar,.*', '^wirelesstag,.*', '^wits,.*', '^wlf,.*', '^wm,.*', '^wobo,.*', '^=
wolfvision,.*', '^x-powers,.*', '^xen,.*', '^xes,.*', '^xiaomi,.*', '^xicor=
,.*', '^xillybus,.*', '^xingbangda,.*', '^xinpeng,.*', '^xiphera,.*', '^xln=
x,.*', '^xnano,.*', '^xunlong,.*', '^xylon,.*', '^yadro,.*', '^yamaha,.*', =
'^yes-optoelectronics,.*', '^yic,.*', '^yiming,.*', '^ylm,.*', '^yna,.*', '=
^yones-toptech,.*', '^ys,.*', '^ysoft,.*', '^yuridenki,.*', '^yuzukihd,.*',=
 '^zarlink,.*', '^zealz,.*', '^zeitec,.*', '^zidoo,.*', '^zii,.*', '^ziniti=
x,.*', '^zkmagic,.*', '^zte,.*', '^zyxel,.*'
> 	from schema $id: http://devicetree.org/schemas/vendor-prefixes.yaml
> arch/arm64/boot/dts/mediatek/mt8370-tungsten-smarc.dtb: scp@10720000 (med=
iatek,mt8188-scp-dual): reg-names: ['cfg'] is too short
> 	from schema $id: http://devicetree.org/schemas/remoteproc/mtk,scp.yaml
> arch/arm64/boot/dts/mediatek/mt8370-tungsten-smarc.dtb: scp@10720000 (med=
iatek,mt8188-scp-dual): reg: [[0, 275906560, 0, 917504]] is too short
> 	from schema $id: http://devicetree.org/schemas/remoteproc/mtk,scp.yaml
> arch/arm64/boot/dts/mediatek/mt8370-tungsten-smarc.dtb: scp@10720000 (med=
iatek,mt8188-scp-dual): reg-names: ['cfg'] is too short
> 	from schema $id: http://devicetree.org/schemas/remoteproc/mtk,scp.yaml
> arch/arm64/boot/dts/mediatek/mt8370-tungsten-smarc.dtb: mmc@11250000 (med=
iatek,mt8188-mmc): Unevaluated properties are not allowed ('cap-sdio-async-=
int', 'eint-gpios', 'enable-sdio-wakeup' were unexpected)
> 	from schema $id: http://devicetree.org/schemas/mmc/mtk-sd.yaml
> arch/arm64/boot/dts/mediatek/mt8370-tungsten-smarc.dtb: codec@1a (wlf,wm8=
962): 'AVDD-supply' is a required property
> 	from schema $id: http://devicetree.org/schemas/sound/wlf,wm8962.yaml
> arch/arm64/boot/dts/mediatek/mt8370-tungsten-smarc.dtb: codec@1a (wlf,wm8=
962): 'CPVDD-supply' is a required property
> 	from schema $id: http://devicetree.org/schemas/sound/wlf,wm8962.yaml
> arch/arm64/boot/dts/mediatek/mt8370-tungsten-smarc.dtb: codec@1a (wlf,wm8=
962): 'DBVDD-supply' is a required property
> 	from schema $id: http://devicetree.org/schemas/sound/wlf,wm8962.yaml
> arch/arm64/boot/dts/mediatek/mt8370-tungsten-smarc.dtb: codec@1a (wlf,wm8=
962): 'DCVDD-supply' is a required property
> 	from schema $id: http://devicetree.org/schemas/sound/wlf,wm8962.yaml
> arch/arm64/boot/dts/mediatek/mt8370-tungsten-smarc.dtb: codec@1a (wlf,wm8=
962): 'MICVDD-supply' is a required property
> 	from schema $id: http://devicetree.org/schemas/sound/wlf,wm8962.yaml
> arch/arm64/boot/dts/mediatek/mt8370-tungsten-smarc.dtb: codec@1a (wlf,wm8=
962): 'PLLVDD-supply' is a required property
> 	from schema $id: http://devicetree.org/schemas/sound/wlf,wm8962.yaml
> arch/arm64/boot/dts/mediatek/mt8370-tungsten-smarc.dtb: codec@1a (wlf,wm8=
962): 'SPKVDD1-supply' is a required property
> 	from schema $id: http://devicetree.org/schemas/sound/wlf,wm8962.yaml
> arch/arm64/boot/dts/mediatek/mt8370-tungsten-smarc.dtb: codec@1a (wlf,wm8=
962): 'SPKVDD2-supply' is a required property
> 	from schema $id: http://devicetree.org/schemas/sound/wlf,wm8962.yaml
> arch/arm64/boot/dts/mediatek/mt8370-tungsten-smarc.dtb: i2c@11e01000 (med=
iatek,mt8188-i2c): pinctrl-names: ['default', 'default'] has non-unique ele=
ments
> 	from schema $id: http://devicetree.org/schemas/pinctrl/pinctrl-consumer.=
yaml
> arch/arm64/boot/dts/mediatek/mt8370-tungsten-smarc.dtb: panel-dsi0 (tianm=
a,tm070jdhg30): 'power-supply' is a required property
> 	from schema $id: http://devicetree.org/schemas/display/panel/panel-simpl=
e.yaml

Sorry my command was only checking the mediatek schema, I've fixed those
issues and I am now in par with the other Genio EVK dts. Meaning the
only warnings left are from the dtsi, see below:
/home/data/upstream/linux/arch/arm64/boot/dts/mediatek/mt8370-tungsten-smar=
c.dtb: pmic (mediatek,mt6359): '#sound-dai-cells' does not match any of the=
 regexes: '^pinctrl-[0-9]+$'
        from schema $id: http://devicetree.org/schemas/mfd/mediatek,mt6397.=
yaml#
/home/data/upstream/linux/arch/arm64/boot/dts/mediatek/mt8370-tungsten-smar=
c.dtb: scp@10720000 (mediatek,mt8188-scp-dual): reg-names: ['cfg'] is too s=
hort
        from schema $id: http://devicetree.org/schemas/remoteproc/mtk,scp.y=
aml#
/home/data/upstream/linux/arch/arm64/boot/dts/mediatek/mt8370-tungsten-smar=
c.dtb: scp@10720000 (mediatek,mt8188-scp-dual): reg: [[0, 275906560, 0, 917=
504]] is too short
        from schema $id: http://devicetree.org/schemas/remoteproc/mtk,scp.y=
aml#
/home/data/upstream/linux/arch/arm64/boot/dts/mediatek/mt8370-tungsten-smar=
c.dtb: scp@10720000 (mediatek,mt8188-scp-dual): reg-names: ['cfg'] is too s=
hort
        from schema $id: http://devicetree.org/schemas/remoteproc/mtk,scp.y=
aml#

Here is what I see for mt8390-genio-700-evk.dtb:
/home/data/upstream/linux/arch/arm64/boot/dts/mediatek/mt8390-genio-700-evk=
=2Edtb: pmic (mediatek,mt6359): '#sound-dai-cells' does not match any of th=
e regexes: '^pinctrl-[0-9]+$'
        from schema $id: http://devicetree.org/schemas/mfd/mediatek,mt6397.=
yaml#
/home/data/upstream/linux/arch/arm64/boot/dts/mediatek/mt8390-genio-700-evk=
=2Edtb: scp@10720000 (mediatek,mt8188-scp-dual): reg-names: ['cfg'] is too =
short
        from schema $id: http://devicetree.org/schemas/remoteproc/mtk,scp.y=
aml#
/home/data/upstream/linux/arch/arm64/boot/dts/mediatek/mt8390-genio-700-evk=
=2Edtb: scp@10720000 (mediatek,mt8188-scp-dual): reg: [[0, 275906560, 0, 91=
7504]] is too short
        from schema $id: http://devicetree.org/schemas/remoteproc/mtk,scp.y=
aml#
/home/data/upstream/linux/arch/arm64/boot/dts/mediatek/mt8390-genio-700-evk=
=2Edtb: scp@10720000 (mediatek,mt8188-scp-dual): reg-names: ['cfg'] is too =
short
        from schema $id: http://devicetree.org/schemas/remoteproc/mtk,scp.y=
aml#

I'll send a v5 shortly.

Regards,
Gary

