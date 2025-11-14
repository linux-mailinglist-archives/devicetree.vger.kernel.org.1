Return-Path: <devicetree+bounces-238568-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F1CC5C710
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 11:06:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A2C364E5D8B
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 09:44:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 567413043C6;
	Fri, 14 Nov 2025 09:43:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0D4A2FB60E
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 09:43:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763113437; cv=none; b=ud5jPlP7xFa8qBMphA5fCPil4m2WQy+q4ChDPNbigE4F9kbX60R4zFUVQny0YTHI2Bv4Vlm03DciWQHImqTIPFh0hlbRUQ84HdzIAgTA+JEL+g0LKRD4HXWoPMS9dUz93GGyMeS/82Cjiu709XXkLrldHz4loNGShbRy12d3UZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763113437; c=relaxed/simple;
	bh=aJYAANABEoAIUaBHYu+sSW9iWPPXWILQHtV10sDxaJ0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TRBOCV1f03QxcP16h5D+UTHbysz43huA2/1h9YmC+cgatYLpHX0al3WqeRF9JEuVRMcgad1/doePw3te9NxtSynJDGgUwUivHQ1j6kcPsnJ6T7UN7dKIhqjg/4Z2ktAUHkTNJMvatNO1SHGnTaxqs5MSSlPY3k9eAsjNpeMc2EE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-6406f3dcc66so3092976a12.3
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 01:43:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763113434; x=1763718234;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jqtFvU4gpaBQABprw6muXyurqIeH68Zg5kpC8+rY5xs=;
        b=rc1Hm5BY/dR1MLbXCaIAHu21U3/4dx0rWZM/uAvi3t1YkHzqN5VL4z2Fr2ja0Cw/Qe
         VfckZd9wlbw8jiSqAYqwcRZV/W1IOrfRqPSX+pw5X4gDmkKFcI+j17Mq6dLD0rpG10na
         5wfqwCGUaqZUBtaMaal98vyQUCiH1gI6D1cQ3e0Odpw9vEDqid2lo5hWf/a+dXdIyQZB
         uW9qJt6vpgABicTyz7SKU2VzAPcq04osN3RgHNcHHxHZxdK50ne4KcaU1Kqj1CMbZzW6
         4EegVBymb7UesyRnYtZpJ/AXw8YJB3jIflfL7o5i813tQjN52tlvSC9GrE3KPOqz2lej
         w21Q==
X-Forwarded-Encrypted: i=1; AJvYcCW+7umxaEulPG4b3tK5LzPUcJUxakwut5RFRFaICcavD5al/aNe8mjPlqeF6es9rVs1M8JtpHqXBz2M@vger.kernel.org
X-Gm-Message-State: AOJu0YwQX68M0bXFX8Ero2YG0Nqrsgb0598iltNKMJrZtF2NDOQCK8iE
	7Ci0vhr0deY0ZVUf4lSxSJQ+r3GsTJ0vQS8fQZfdK1/OPxQMv0/ajv01P5bfJXGHT0M=
X-Gm-Gg: ASbGncsax96j5L14M4F6pEuIpQdYikGN5GPV7eBpJR/1alH20vvhpGx7ZzhwYvPSOqJ
	qdmhqe4UED30i6S9n1sd7st7+DcGfaHvz67f/CHwMNmOYI0AkB/buTfhJTBkUDz046keVU0943C
	l9iAWV4ck58lAfshUDy7Hau32kJaR66DKcBEArd6D2yOUXExoMg/3YBAeZoReO4ESDjbX2oF2eD
	ZdglntfmYIt3vy+MjT6xNJiXwTAHlZoACeRV0gWf2o5dBP6XRUSsaHxXOikdqP0eyyf9UXH7ais
	LDTVXWx4H0G1ueBCgq5dVM6PEQWb7OjUEA7lTdOVc0YC4iR4vIxmeoOaC5i03voNLqNq5fjhcDt
	C6GoAGuwdamc5rdY9qlepWk6TGwIm+hkHQT0Jv18aX8v9/U5yGr8YRuRPVUSXIGAVUTVswT3Ymu
	6TMVotrAJjcBfGb8yE+OZO+VcEdISmPUH+IF0Bng==
X-Google-Smtp-Source: AGHT+IErUJuzcDl/oe7VenaTi6C8hOHM21Yk9QNhzJxuTAxRvFOeQqkRuPQewGain9ADVg7vSRt2yw==
X-Received: by 2002:a05:6402:524a:b0:640:c460:8a90 with SMTP id 4fb4d7f45d1cf-64350e06a53mr2116032a12.12.1763113433829;
        Fri, 14 Nov 2025 01:43:53 -0800 (PST)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com. [209.85.218.45])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6433a3f96e2sm3305518a12.16.2025.11.14.01.43.53
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Nov 2025 01:43:53 -0800 (PST)
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b73669bdcd2so136654366b.2
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 01:43:53 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW3rObarAVIX3dTUY7JsMWt9NfYXHXjzAuQn28qEG07vclr4rtKaAyY9SDdoj+sdf3beePdCjYKlqvl@vger.kernel.org
X-Received: by 2002:a17:907:a01:b0:b73:278a:a499 with SMTP id
 a640c23a62f3a-b73678adc4dmr231482866b.15.1763113433482; Fri, 14 Nov 2025
 01:43:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251027123601.77216-1-herve.codina@bootlin.com> <20251114084122.01a0d281@bootlin.com>
In-Reply-To: <20251114084122.01a0d281@bootlin.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 14 Nov 2025 10:43:40 +0100
X-Gmail-Original-Message-ID: <CAMuHMdU1NmeCyNu8mHJ=Pb5WKjLkCucZ-XyNKPS5t1Kmt90bmw@mail.gmail.com>
X-Gm-Features: AWmQ_bnEaFxu73Nj-q2Cezfl_7HYPeRWF2OfC8CAOM6WAXmswGw9ath66GQ6N2M
Message-ID: <CAMuHMdU1NmeCyNu8mHJ=Pb5WKjLkCucZ-XyNKPS5t1Kmt90bmw@mail.gmail.com>
Subject: Re: [PATCH v6 0/8] gpio: renesas: Add support for GPIO and related
 interrupts in RZ/N1 SoC
To: Herve Codina <herve.codina@bootlin.com>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Saravana Kannan <saravanak@google.com>, Serge Semin <fancer.lancer@gmail.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Hoan Tran <hoan@os.amperecomputing.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Phil Edworthy <phil.edworthy@renesas.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, Pascal Eberhard <pascal.eberhard@se.com>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Herv=C3=A9,

On Fri, 14 Nov 2025 at 08:41, Herve Codina <herve.codina@bootlin.com> wrote=
:
> On Mon, 27 Oct 2025 13:35:52 +0100
> "Herve Codina (Schneider Electric)" <herve.codina@bootlin.com> wrote:
> > This series adds support for GPIO and GPIO IRQ mux available in the
> > RZ/N1 SoCs.
>
> The series seems ready to be applied even with the minor feedback from Wo=
lfram
> on patch 6.
>
> Do you expect a new iteration from my side or do you think this v6 iterat=
ion
> can be applied as it?

Sorry, I only realized yesterday that the GPIO Interrupt Multiplexer
driver resides in drivers/soc/renesas/.  Before, I mistakenly thought
it was part of the GPIO subsystem.

Anyway, it is a bit late in the cycle for me to take more patches for
v6.19 (I am about to send my last PR right now), especially given the
patches touching the DT and irqchip subsystems (with the DT ones being
a hard dependency).

So I suggest Rob takes the first two patches for v6.19, and we revisit
the others for v6.20 (including late review comments), without having
to worry about dependencies.  Does that sound OK to you?

Thanks!

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

