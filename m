Return-Path: <devicetree+bounces-25929-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 51BC0815160
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 21:48:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D5603B20EA2
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 20:48:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C62724644C;
	Fri, 15 Dec 2023 20:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jrtc27.com header.i=@jrtc27.com header.b="Y10e4GVl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367404652A
	for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 20:48:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jrtc27.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jrtc27.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-40c580ba223so13063105e9.3
        for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 12:48:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jrtc27.com; s=gmail.jrtc27.user; t=1702673290; x=1703278090; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XkbA3FPlNo1r+U6O6Ao4SqV6N3qGQHbqxTmiKmAK7ww=;
        b=Y10e4GVl5p3c7s5ut1pfDNzZZjIb5zWf7PaoHS89DSdvpe3YC9ndnXZCqvpGo1mghB
         FwxSotXHXgw9yTiQ50CdGFzQ3MABscjqZdDfQn4Ibyf6Apq5999Eytsz+PzzIEJkj7Nw
         b+KBqA1Ng7c2lgZirrs9P1pIWOIQEO2rwh/DPz1E4vcDs17RuHedQZvHgVsuj9MbIiCr
         UUQCXwOPKaHZ79J/7vORmH08rcJcYqQFQgprJb6fev9FGZpxtTcEHWKwdaS5b1AuS8gI
         mKIMfoMEtqSDKuEOvl4m4gwzQUz9r4Fzfx7VPmUN70tRGrv7wexc6YwMiXg4UQEqDM5T
         7/fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702673290; x=1703278090;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XkbA3FPlNo1r+U6O6Ao4SqV6N3qGQHbqxTmiKmAK7ww=;
        b=KylQ9ZxL+XDQ4DpSdQOMt7yyfZfYJckLOug1QOhmN7X8p/zPjNdennSTvj/BLiP9J/
         Q0JB8IXa5K5sGetCXRcv3aQjaT4AgV6K72VM+BudDXfAmuAEPynY1odsSB908c6N2Pln
         61FBNsTEYCb34VuG10xnhYw7PyttttjKbXpkMqJCKXT2DVIbvNdDWKGWC8AjbRRN6uEe
         LMkkExDreMSkAF5+DfDAYEFiQnDoboEluqDVBrS7kJGuyMlx2GmgAhB/J/KshUNK+KoR
         Nd4yScEPMhdQIY5VWIB3U5jxV2t+FA33p6kL5O5Q7T0tD5IA6tgAkqW93sMjl7A0q+Sd
         J4Ag==
X-Gm-Message-State: AOJu0YwspcumnLVRIRQew7IDukbff4bUk0Nozs4BD1E4xjjGrcy1KbL3
	AxJsvsgaXS27cgiDNEYO9WZEYg==
X-Google-Smtp-Source: AGHT+IHmyxYXA7TlsEHSBZ2x2Q3ZtE6ks/hZmTMZ9YZV6t1R+oDgMn/QNCqxM1cqDO/CM4Y9PqXh7w==
X-Received: by 2002:a05:600c:808b:b0:40b:5e21:dd24 with SMTP id ew11-20020a05600c808b00b0040b5e21dd24mr6411929wmb.82.1702673290406;
        Fri, 15 Dec 2023 12:48:10 -0800 (PST)
Received: from smtpclient.apple ([131.111.5.246])
        by smtp.gmail.com with ESMTPSA id p8-20020a05600c358800b0040b40468c98sm31891322wmq.10.2023.12.15.12.48.09
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Dec 2023 12:48:09 -0800 (PST)
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.200.91.1.1\))
Subject: Re: [PATCH v3 2/9] dt-bindings: net: starfive,jh7110-dwmac: Add
 JH7100 SoC compatible
From: Jessica Clarke <jrtc27@jrtc27.com>
In-Reply-To: <20231215204050.2296404-3-cristian.ciocaltea@collabora.com>
Date: Fri, 15 Dec 2023 20:47:58 +0000
Cc: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Emil Renner Berthing <kernel@esmil.dk>,
 Samin Guo <samin.guo@starfivetech.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Hal Feng <hal.feng@starfivetech.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 netdev@vger.kernel.org,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 linux-clk@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org,
 kernel@collabora.com
Content-Transfer-Encoding: quoted-printable
Message-Id: <A7C96942-07CB-40FD-AAAA-4A8947DEE7CA@jrtc27.com>
References: <20231215204050.2296404-1-cristian.ciocaltea@collabora.com>
 <20231215204050.2296404-3-cristian.ciocaltea@collabora.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
X-Mailer: Apple Mail (2.3774.200.91.1.1)

On 15 Dec 2023, at 20:40, Cristian Ciocaltea =
<cristian.ciocaltea@collabora.com> wrote:
>=20
> The Synopsys DesignWare MAC found on StarFive JH7100 SoC is mostly
> similar to the newer JH7110, but it requires only two interrupts and a
> single reset line, which is 'ahb' instead of the commonly used
> 'stmmaceth'.
>=20
> Since the common binding 'snps,dwmac' allows selecting 'ahb' only in
> conjunction with 'stmmaceth', extend the logic to also permit =
exclusive
> usage of the 'ahb' reset name.  This ensures the following use cases =
are
> supported:
>=20
>  JH7110: reset-names =3D "stmmaceth", "ahb";
>  JH7100: reset-names =3D "ahb";
>  other:  reset-names =3D "stmmaceth";
>=20
> Also note the need to use a different dwmac fallback, as v5.20 applies
> to JH7110 only, while JH7100 relies on v3.7x.
>=20
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
> .../devicetree/bindings/net/snps,dwmac.yaml   |  3 +-
> .../bindings/net/starfive,jh7110-dwmac.yaml   | 74 +++++++++++++------
> 2 files changed, 55 insertions(+), 22 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml =
b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
> index 5c2769dc689a..c1380ff1c054 100644
> --- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
> +++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
> @@ -95,6 +95,7 @@ properties:
>         - snps,dwmac-5.20
>         - snps,dwxgmac
>         - snps,dwxgmac-2.10
> +        - starfive,jh7100-dwmac
>         - starfive,jh7110-dwmac
>=20
>   reg:
> @@ -146,7 +147,7 @@ properties:
>   reset-names:
>     minItems: 1
>     items:
> -      - const: stmmaceth
> +      - enum: [stmmaceth, ahb]
>       - const: ahb

I=E2=80=99m not so well-versed in the YAML bindings, but would this not =
allow
reset-names =3D "ahb", "ahb"?

Jess


