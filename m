Return-Path: <devicetree+bounces-18249-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D722A7F5DA1
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 12:20:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9B52E281AF8
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 11:20:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 684FD22F10;
	Thu, 23 Nov 2023 11:20:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="UiMaSLy2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D761A19D
	for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 03:20:36 -0800 (PST)
Received: by mail-pj1-x1032.google.com with SMTP id 98e67ed59e1d1-28396255b81so621656a91.0
        for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 03:20:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1700738436; x=1701343236; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cna4B9OkGYaAGZnmz7auaJoanPikLRaFUkJT1PNzdCg=;
        b=UiMaSLy2jUmtlcZLLy/PgYN/k+XpFsV1tkwSFncyGjYr8bCBPwMuMtZ1/9c/mBZxK9
         5EorwiG6ru/NpzWSM6KPvolIBPf1MCOE0OqdHY2HC9YGGMWBwTF8dbD7XrhOJM73cVAU
         YTDhAvLTMwfTDVtaulg96oZHQ8YKydtr9E9fb5a848+8UWav7eaa0cXg8hJBjQHF31PH
         rkYvuFmUK1OKjPNPa/2PmFMUMuf37pgkhu90Mfx5QcizTpmhFZGo1d1taWhZEVFotDPb
         7v3vV1WFiAeSCmYuLtQBLXrdohRp3FFeC88ac72NyowDpJI+ZFy2govyfjQ2OHARq5pf
         fAVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700738436; x=1701343236;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cna4B9OkGYaAGZnmz7auaJoanPikLRaFUkJT1PNzdCg=;
        b=Q3rnGhpi/mwECcRNiNS0ZPVmtnke2Zniwk+O/9djOx07RFA0TdMzFFexLlA/D3/B9E
         U8zbdviLTwsxBiCZgLL8yPjgV3alx+/mAxNi8PkZxZ38LngpQLbV+llfMmPEFOmPN5rU
         Iq/ibLcGpgCi2NJ2Yp6jQLYZial1PLHZ6fp3vnjbZhxhNkC2mYB4okRD4tfwbhLxdVQf
         dxuCbLrxF6kj6GoLDm6u4M797ViF03eJ601tKG7TmwUY3zmoeFZ5XnP1aSds/cfsNcIC
         NCX4DxrELsO0U8kWV/ZvCmcCGrUQlY1LkdsWbzNO+SiFQFow4uk8wtd4c+SVyPeJum5b
         PDOw==
X-Gm-Message-State: AOJu0YynzoEcDHG5JzBYK1iFnMovju/SHqFsGM+bymnJUMU7y+4UrjFP
	uFp3zoMWFOMh1JgRzO2XfHJn1xordfvAvZfX1W/QVg==
X-Google-Smtp-Source: AGHT+IHpAi31AQJzfI++IcN15h2i2fjElwAR2+A2cq4nCMgOSMsdXf8at6TXQhpec1XOEn9ZPz1TGslnfGloZZAtd7g=
X-Received: by 2002:a17:90b:3014:b0:27d:dc9:c67d with SMTP id
 hg20-20020a17090b301400b0027d0dc9c67dmr4905828pjb.36.1700738436187; Thu, 23
 Nov 2023 03:20:36 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231120135041.15259-1-ansuelsmth@gmail.com> <20231120135041.15259-13-ansuelsmth@gmail.com>
 <6593e6ae-3ae7-49e2-a6e9-c37f5a887fe3@lunn.ch>
In-Reply-To: <6593e6ae-3ae7-49e2-a6e9-c37f5a887fe3@lunn.ch>
From: Robert Marko <robert.marko@sartura.hr>
Date: Thu, 23 Nov 2023 12:20:24 +0100
Message-ID: <CA+HBbNFjmwtfJAON_BX9c9hqcBTsReMPm9ajPjFF_2z+LbARnw@mail.gmail.com>
Subject: Re: [net-next RFC PATCH 12/14] dt-bindings: net: Document Qcom
 QCA807x PHY package
To: Andrew Lunn <andrew@lunn.ch>
Cc: Christian Marangi <ansuelsmth@gmail.com>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Russell King <linux@armlinux.org.uk>, Florian Fainelli <florian.fainelli@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
	Daniel Golle <daniel@makrotopia.org>, Qingfang Deng <dqfext@gmail.com>, 
	SkyLake Huang <SkyLake.Huang@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	David Epping <david.epping@missinglinkelectronics.com>, 
	Vladimir Oltean <olteanv@gmail.com>, "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>, 
	Harini Katakam <harini.katakam@amd.com>, Simon Horman <horms@kernel.org>, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 23, 2023 at 3:15=E2=80=AFAM Andrew Lunn <andrew@lunn.ch> wrote:
>
> > +  They feature 2 SerDes, one for PSGMII or QSGMII connection with
> > +  MAC, while second one is SGMII for connection to MAC or fiber.
>
> Can you connect 1/5 of the PSGMII SERDES to the SGMII SERDES? So
> making use of the PHY as a media converter to connect to an SFP cage?
> I assume the SGMII serdes can also do 1000BaseX?
>
> How do you describe what the SGMII SERDES is connected to?

Hi Andrew,
I think that the description is confusing.
QCA807x supports 3 different modes:
1. PSGMII (5 copper ports)
2. PSGMII (4 copper ports + 1 combo port)
3. QSGMII+SGMII

So, in case option 2 is selected then the combo port can also be used for
1000Base-X and 100Base-FX modules or copper and it will autodetect the
exact media.
This is supported via the SFP op-s and I have been using it without issues
for a while.

I have not tested option 3 in combination with SFP to the copper
module so I cant
say whether that works.
From what I can gather from the typical usage examples in the
datasheet, this QSMII+SGMII
mode is basically intended as a backward compatibility thing as only
QCA SoC-s have PSGMII
support so that you could still use SoC-s with QSGMII and SGMII support onl=
y.

So there is no way to control the SerDes-es individually, only the
global mode can be changed via
the Chip configuration register in the Combo port.

You can see the block diagram of this PHY in this public PDF on page 2[1].

[1] https://content.codico.com/fileadmin/media/download/datasheets/qualcomm=
/qualcomm_qca8075.pdf

>
>   Andrew
>


--=20
Robert Marko
Staff Embedded Linux Engineer
Sartura Ltd.
Lendavska ulica 16a
10000 Zagreb, Croatia
Email: robert.marko@sartura.hr
Web: www.sartura.hr

