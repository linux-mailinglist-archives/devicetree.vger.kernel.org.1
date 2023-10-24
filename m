Return-Path: <devicetree+bounces-11372-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 607BF7D5816
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 18:24:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1B50E281AA8
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 16:24:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E4D039957;
	Tue, 24 Oct 2023 16:24:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="k4MIVHE+"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62B0D38DEC
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 16:24:12 +0000 (UTC)
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01AAB111
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 09:24:09 -0700 (PDT)
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-6b26a3163acso3671110b3a.2
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 09:24:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1698164649; x=1698769449; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZKTm1mrgyLc1h8Vt1hMbh4XUq9UQSm1P9ND6vgHtPB4=;
        b=k4MIVHE+0PbeZIPTGn5y3n93OW81aHxr2DHqvg+mjJpDYtKmt+bhBwWyYLEdpkvpQ4
         qeDKwvVdjsxLw1u72xTXBHq0Ev/DT0c61BuiyOaKlHruXjyaBe61Ls/UXghY67A1UnRo
         Riy4CrAoHEHn0uqUUcMqaQ/+RMev2zIZ6AxVokNe48o5mlFQq8GaG/pYpY4i4st7dDE9
         6Yxlty5xikWBvI7WUCrMQwnIbiQdAS23IcSH+Wxt3iaq8V8OBjxXY7MpcZNHkCBPvSug
         8JR62EOTJ+x21AtT8YmylanyYYBhJlgKc/vIu4RWTTuxTGvCTfSCikRh1kMGh4pAXfbK
         xGRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698164649; x=1698769449;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZKTm1mrgyLc1h8Vt1hMbh4XUq9UQSm1P9ND6vgHtPB4=;
        b=AWQrxy89nkOTrx15+szLWVba5uQUqOhxH305Aw+4NrtMdX+p/cTGXM5ZErkPtxEcGb
         1CC/V7xOCvC2C28sPlgiqMUkQGRqueyFYWpTj8b21i1WoQkQA0Jstcu0VVvLcOL6D6ep
         V3BDPcOzjKNuwIp3x6tf+D1ERWSYL3wEVZwkuHkfL/IxIgbkDZgn5gIcEelE6hBMIaUR
         YFYEoYOOlcC4+Nn1C6g1tJzNs0kXaBT1jgZmg2du3XOcpixdvVV2wD4EVHJE46MG0HvD
         nvkIT2oqgtm7SLgdktOfh8kObGOSEV0vWWTI+oYPSfOF+rtcdwfZHlISgJuLWSVTkBrM
         Q4WA==
X-Gm-Message-State: AOJu0Yw66P0NMFl/qDTVWsMjQLTswVgrEZN4JzRTNbl3olX+TKaCIfN6
	Wnncg0eAkYa5/Rqv53iqXR6DgrGRnNglA6012hfYPA==
X-Google-Smtp-Source: AGHT+IEAI9u7l/s4QVSYjQHbkLLuhBrDpPV96Xch65PsfjSchtzTZm58WnDeu2X2ZQ59ZzT2bUYsOjtfY4Tuo1cd9lw=
X-Received: by 2002:a05:6a00:c8d:b0:6bc:635a:aad3 with SMTP id
 a13-20020a056a000c8d00b006bc635aaad3mr10680827pfv.9.1698164649373; Tue, 24
 Oct 2023 09:24:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231023155013.512999-1-romain.gantois@bootlin.com>
 <20231023155013.512999-4-romain.gantois@bootlin.com> <b8ac3558-b6f0-4658-b406-8ceba062a52c@lunn.ch>
 <f4e6dcee-23cf-bf29-deef-cf876e63bb8a@bootlin.com> <932bef01-b498-4c1a-a7f4-3357fe94e883@lunn.ch>
In-Reply-To: <932bef01-b498-4c1a-a7f4-3357fe94e883@lunn.ch>
From: Robert Marko <robert.marko@sartura.hr>
Date: Tue, 24 Oct 2023 18:23:58 +0200
Message-ID: <CA+HBbNHb2RF3tfDYRTG6AndhmW1U4tvFmiC+rhYwH8SCLqSUzw@mail.gmail.com>
Subject: Re: [PATCH net-next 3/5] net: ipqess: introduce the Qualcomm IPQESS driver
To: Andrew Lunn <andrew@lunn.ch>
Cc: Romain Gantois <romain.gantois@bootlin.com>, davem@davemloft.net, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Jakub Kicinski <kuba@kernel.org>, 
	Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, netdev@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	thomas.petazzoni@bootlin.com, Florian Fainelli <f.fainelli@gmail.com>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	linux-arm-kernel@lists.infradead.org, 
	Vladimir Oltean <vladimir.oltean@nxp.com>, Luka Perkov <luka.perkov@sartura.hr>, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@somainline.org>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 24, 2023 at 4:08=E2=80=AFPM Andrew Lunn <andrew@lunn.ch> wrote:
>
> > > > + for (c =3D 0; c < priv->info->mib_count; c++) {
> > > > +         mib =3D &ar8327_mib[c];
> > > > +         reg =3D QCA8K_PORT_MIB_COUNTER(port->index) + mib->offset=
;
> > > > +
> > > > +         ret =3D qca8k_read(priv, reg, &val);
> > > > +         if (ret < 0)
> > > > +                 continue;
> > >
> > > Given the switch is built in, is this fast? The 8k driver avoids doin=
g
> > > register reads for this.
> >
> > Sorry, I don't quite understand what you mean. Are you referring to the=
 existing
> > QCA8k DSA driver? From what I've seen, it calls qca8k_get_ethtool_stats=
 defined
> > in qca8k-common.c and this uses the same register read.
>
> It should actually build an Ethernet frame containing a command to get
> most of the statistics in one operation. That frame is sent to the
> switch over the SoCs ethernet interface. The switch replies with a
> frame containing the statistics. This should be faster than doing lots
> of register reads over a slow MDIO bus.
>
> Now, given that this switch is built into the SoC, i assume the MDIO
> bus is gone, so register access is fast. So you don't need to use
> Ethernet frames.

It is being accessed as regular MMIO so the MDIO bottleneck is not present,
so we never tried if the special ethernet packets are even support, especia=
lly
since the tag is completely different from that in regular qca8k switches.

Regards,
Robert
>
>          Andrew



--=20
Robert Marko
Staff Embedded Linux Engineer
Sartura Ltd.
Lendavska ulica 16a
10000 Zagreb, Croatia
Email: robert.marko@sartura.hr
Web: www.sartura.hr

