Return-Path: <devicetree+bounces-24743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4832D8110AA
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 13:00:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 05C66281987
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 12:00:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F80528DBD;
	Wed, 13 Dec 2023 12:00:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="ACgC6o++"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75BCAEA
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 04:00:32 -0800 (PST)
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 02EDC3F289
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 12:00:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1702468831;
	bh=d2k9g+CDQlS0u/Axm3QhPzDXMJCmIzyDAkyUWJItYfY=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=ACgC6o++m5onWi3iC6feZkyd27DJBI7MyK9ZIVxl83OfCAg6CWyJ8dK2B29DvIgGI
	 EY8lDJdCcRIzA6YYYEGjAQNTISIAOIEe16L78keTo35uQRupx+KeldQgqjjgPA768H
	 gm58zPa2gw528AvU9LX2wyU3pcLZoh6rveP6MXT9koRaPjluYPUuCnbfpTDU90Yc0W
	 CyJXEOM58MEo//mH359GDKgGZLTz0XeKAOoiBWmvogiPEL3k0ilMuCPuyzyd1d8HVq
	 mUQWb42036q1pq5jBzRAH65Dd08Rtq3xj5XXXB8MZZ5haT4RZvjA1A+JQzPwhwy82R
	 kuGf1ZGmoJIkA==
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-77dcbd6edb0so926904985a.1
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 04:00:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702468830; x=1703073630;
        h=content-transfer-encoding:cc:to:subject:message-id:date
         :mime-version:references:in-reply-to:from:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=d2k9g+CDQlS0u/Axm3QhPzDXMJCmIzyDAkyUWJItYfY=;
        b=buiQOwiP6EKvhmsgpIcM32fj1I3VGXMtSFdV4vKcUkx1PxHvWwbO95jr6uRZ9aePAC
         nDDJYI+NB1l5hEzi/SGOCLjQvp4vNEHn03OrvztXbFa1uyYysKEknQ38rJsUfDG1x1XD
         z7JzfurxKP2o5kfX9l31bQgsAaRHN9yGaAIVPkZFuhctO7LJ7gJi8DrimAlUNjXy70ZC
         LQJDBWYWUV3afcdPbhs5qXKxZSWQLDtg7s7dywzYOtWDDbsNms9RIjppayKSLAUN/jFK
         HzprgHn4seI55CbZlO0sWx61CKSPzr3zUdmEv+6clZvgI1rAcKEpdk5qDBHNhrfX2dKc
         OQ2Q==
X-Gm-Message-State: AOJu0YwMLWv1hnHsPcz+w7eNNZ5myWzBStPsOPsbqCLoIIlo/MU9xvG8
	Yc5DHHMgr/0fbzEpbaghMYazJWoS5cy7ey+9eJTsVJNaSAwZlk4huAwOFEDoF2QZCyk4cWTnDY6
	62GP//iadZM1g0xhw5roZFek5FtjR8mvaNhFPGk24WmnlgENb3t9EEnonOVixgog=
X-Received: by 2002:a05:620a:1d97:b0:77d:88cc:e759 with SMTP id pj23-20020a05620a1d9700b0077d88cce759mr9425953qkn.44.1702468829690;
        Wed, 13 Dec 2023 04:00:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHQyE19HlHZoU/6ZbCTx8+T9R2+zaT+Qju6cnML0AE3RTJpk0HMKR1T19a5ApinlnNf+jiWW68wxrNoj0JLy3s=
X-Received: by 2002:a05:620a:1d97:b0:77d:88cc:e759 with SMTP id
 pj23-20020a05620a1d9700b0077d88cce759mr9425929qkn.44.1702468829479; Wed, 13
 Dec 2023 04:00:29 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 13 Dec 2023 04:00:29 -0800
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <56031a2fadf442e297b1e0ea03777e5f@EXMBX066.cuchost.com>
References: <20231206115000.295825-1-jeeheng.sia@starfivetech.com>
 <20231206115000.295825-8-jeeheng.sia@starfivetech.com> <CAJM55Z-FXV-Go4yj_AJyU4pRC0msHqTCT3q24HkNtBTWW9rAgA@mail.gmail.com>
 <56031a2fadf442e297b1e0ea03777e5f@EXMBX066.cuchost.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 13 Dec 2023 04:00:29 -0800
Message-ID: <CAJM55Z8ndFEg1gqk5=HydjN93iKY-f0k=FDpcL-hYH+_GA4Taw@mail.gmail.com>
Subject: RE: [PATCH v1 07/16] dt-bindings: clock: Add StarFive JH8100
 System-North-West clock and reset generator
To: JeeHeng Sia <jeeheng.sia@starfivetech.com>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>, "kernel@esmil.dk" <kernel@esmil.dk>, 
	"conor@kernel.org" <conor@kernel.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>, 
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, 
	"paul.walmsley@sifive.com" <paul.walmsley@sifive.com>, "palmer@dabbelt.com" <palmer@dabbelt.com>, 
	"aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>, "mturquette@baylibre.com" <mturquette@baylibre.com>, 
	"sboyd@kernel.org" <sboyd@kernel.org>, "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>, 
	Hal Feng <hal.feng@starfivetech.com>, Xingyu Wu <xingyu.wu@starfivetech.com>
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>, Leyfoon Tan <leyfoon.tan@starfivetech.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

JeeHeng Sia wrote:
> > -----Original Message-----
> > From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> > Sent: Saturday, December 9, 2023 12:37 AM
> > To: JeeHeng Sia <jeeheng.sia@starfivetech.com>; kernel@esmil.dk; conor@=
kernel.org; robh+dt@kernel.org;
> > krzysztof.kozlowski+dt@linaro.org; paul.walmsley@sifive.com; palmer@dab=
belt.com; aou@eecs.berkeley.edu;
> > mturquette@baylibre.com; sboyd@kernel.org; p.zabel@pengutronix.de; emil=
.renner.berthing@canonical.com; Hal Feng
> > <hal.feng@starfivetech.com>; Xingyu Wu <xingyu.wu@starfivetech.com>
> > Cc: linux-riscv@lists.infradead.org; devicetree@vger.kernel.org; linux-=
kernel@vger.kernel.org; linux-clk@vger.kernel.org; Leyfoon Tan
> > <leyfoon.tan@starfivetech.com>
> > Subject: Re: [PATCH v1 07/16] dt-bindings: clock: Add StarFive JH8100 S=
ystem-North-West clock and reset generator
> >
> > Sia Jee Heng wrote:
> > > Add bindings for the System-North-West clock and reset generator
> > > (SYSCRG-NW) on JH8100 SoC.
> > >
> > > Signed-off-by: Sia Jee Heng <jeeheng.sia@starfivetech.com>
> > > Reviewed-by: Ley Foon Tan <leyfoon.tan@starfivetech.com>
> > > ---
> > >  .../clock/starfive,jh8100-syscrg-nw.yaml      | 119 ++++++++++++++++=
++
> >
> > The JH7110 clocks, the JH8100 system and always-on all follow the Xcrg =
pattern:
> > syscrg
> > aoncrg
> > stgcrg
> > ispcrg
> > voutcrg
> > etc.
> >
> > Is there a reason the north-west, north-east and south-west breaks this=
 pattern?
> > I'd have expected them to be called something like
> > nwcrg, JH8100_NWCLK_*, JH8100_NWRST_*,
> > necrg, JH8100_NECLK_*, JH8100_NERST_* and
> > swcrg, JH8100_SWCLK_*, JH8100_SWRST_*
> >
> > Just like all the other Starfive drivers.
> Understood your concern. We don=E2=80=99t have the intention to break the=
 pattern,
> but the reason we skip the SoC_ prefix is that the SoC names were already
> defined in the header file with the SoC name.
> However, I can put it back, of course.

Yes, all these 3 JHXX00 drivers are almost identical. There should be no re=
ason
to name any one of them differently. Having them all be as similar as possi=
ble
will make it a lot easier to maintain in the future. If you don't like a
pattern then please change it for all the similar drivers and don't make ju=
st
one of them be different.

/Emil

