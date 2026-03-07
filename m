Return-Path: <devicetree+bounces-272433-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mJW4BYQlrGnnlwEAu9opvQ
	(envelope-from <devicetree+bounces-272433-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 14:17:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B50EE22BE5D
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 14:17:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C47BE3024149
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 13:17:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EC2824BBFD;
	Sat,  7 Mar 2026 13:17:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cZ+3V2Ul"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A56362417E0
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 13:17:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.52
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772889467; cv=pass; b=d0XaZ/be/3V1R2kXehW+Gc3ZvgaKMP8vxAAk91x+CGagv/apkjNDyAUBt0jkobUnsjHbpE30bZwQ88qipH8GwX7TfhCwe2fH6jz/wGQiXnpMvWAHg4QUlU7BDUO5kTO1T34cn/EnNAlDvkQph88AufXlx7NZFGlbCowCE5qvtDg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772889467; c=relaxed/simple;
	bh=BGH5fw1KTyI0IIpta/ctbnM5IMYss8VocaP1z86Flns=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HPxN7y+U722C696qeewu1tKxt0yrtO71r6ahTK6FzRDDpV029wed/Mq2ogGMEGKmY8npAroDgqBDrh9E5TlGNuPY4FvpawrDvZUCTDomie2yhUNLDjhP6jxFCdVWkws3ZZ6ug6JumbpF1DNC7rIUPEpOQJrlsJazGdsPiCKMa1E=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cZ+3V2Ul; arc=pass smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-439afc58ac7so7276225f8f.0
        for <devicetree@vger.kernel.org>; Sat, 07 Mar 2026 05:17:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772889464; cv=none;
        d=google.com; s=arc-20240605;
        b=fqOQMIKKbriXHIn2h0BwLaCIaqZntM9avzepJfr0+IMrN0+mhHMmZcuxv6LKPhYDzN
         MOFaNdBEnYlrRGlBjclGKg8FWZYOI50+vDpDN1GbwUZu0ytmuoRJdLIwS9wj1Z2Q0l+P
         G1+X0UDSJ2MOzMSNOQJmM2fNCYYojCXjetm5V8KfhZGePxTYzcYTGvTpNdAlv9bfuikP
         ChY7pv+6AJkFmhADpmclSqflGtlwHeS94UHONcAJ+RF4WH0CZoDGJnUOuonM6Sork08T
         qS1hVUDNGUx5h6+uRG4wOXFwZ1wGKdxaYyvwcI9O4RMHGIPGSk2mcr8JtWyquW9lMLZB
         /R1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=GjwpvT6wtYJv8QceRQPyk3jFj/BRY6zuY97whk5Cwg0=;
        fh=QNb3VAUmh9o+gUH93KfAPXGX7ig0PUXNk/p9Xw0zEsg=;
        b=RdDqaJBwKG4dhNVPL2HwEhOo5EOW877wnRzsuhS8Sj3vqpzto02pUQGzQlCag/YxMD
         XJh9fZsCuV7Kv92y+bQ7pMQdib5cIEapyvp/IcAindApPppB6hL5qZc92PHf6ypyinrB
         SUdj1X4MJbWoDcwGNATVEd2WFa5MiPoQnAr+Z3iBhX/kkR8A7oEwrb6o5jLgzuIEeh0R
         O4Ts7eLgNXtyeEk9Va8Iiq/6Q8JQYBhD19/ajX1rYnfQ1NpDzHg/Tj941aDH3NP6Hy64
         gycTgpWJcOGzgwDjB+03d3/+7m4wzVgpQmj1GeaAECnzZoOLAfZoCtsMdrLNGQhR0h8Z
         +i0w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772889464; x=1773494264; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GjwpvT6wtYJv8QceRQPyk3jFj/BRY6zuY97whk5Cwg0=;
        b=cZ+3V2UlBKXkxskZn/S5bW2/UthLRJU36cWn8UpQOyqj6mYbssGEBjAhD44JwZfqjK
         nAlhV/x3iY5cZ8UhRDe1OPcd2zrcq+4C8nz6AwfLDG5HcfAxhhJzbvet7W9VYa6wFbKi
         sl4EPnb7ROE9cUHk1WDUh2XwlBILsoHr0lHPuOxMkeb7bJxwZX5wAvG8ABocP+Y7Ty/K
         kPHjk0lN/3H/7YKIbT6VBPumPusLYSGyYXPANg+bDLLVyNyyuGV7aa4kxy9ImXY3+uzs
         dqMQWjaFRi41vJwdNbfQqAIf9gfeuvGznpfZAfYHFwvg/2GBCyBYDMvd8g2NBnYTHUsr
         aJJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772889464; x=1773494264;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GjwpvT6wtYJv8QceRQPyk3jFj/BRY6zuY97whk5Cwg0=;
        b=N2OybibhYNPG3gYOaEBtTRv7fwY12XUfGgaI6Q5aent9Fqq0Jqt3QSE9SQ0ERSx4D8
         7G5Pv6cw9FvKFVYVpygB1K5U/Rn4kua9A1SJmeFB0Y9MInfe/LyclAECPEzXTuLQx3gi
         t4TDGMZeIkGxNdqnQpGARgZ70LPL9Nrfoo7Om1bSdJvPLZzyYKmfjpLpljICzktyWt97
         malXlLq8IIPLflsqLz5J95WhkHdPhznL31yY3SPHFxmbjNi75MzgpPYo9QBQpMPBmHlb
         JhtYJk39YeAihw4ySQ9HTU0QZOwc6vXjK9wZg7jTupaTtDphpav6lr8pqOltl35lBtab
         n/YQ==
X-Forwarded-Encrypted: i=1; AJvYcCW8MMb8PEcD9gG8C1vDkSOSXSG3niunObjw69CXLdv2dXj4/pN7sRytgx9zdkyg4LsOb1rDgYev5xU7@vger.kernel.org
X-Gm-Message-State: AOJu0YwWEbnWX1t5JHb7YgMs2d63a6J4KqEHfZG6A1/MYd3/ENNSQoTu
	t9nY5JEsV1x8kLnOpXsaCRuEZ8dsdaQGaVGlDcZosHgBoU+GevLtdWeBr2PRbitXyq4JSg6dC6v
	Iqo4p212f6eQmLRWJoeACmuSH2O8JmKY=
X-Gm-Gg: ATEYQzxp5pyb03khswJOdHZCN3ubMNwGHXwNOXVEQTOJ7jt3c/F/aokBF3xkKrmdkol
	pf8KrAj3f/OY8ziClTMNwOgp07poAO32r5wf1pkphS4tPbvqmEJ8C62/EJXgpAwKwe0awt9D4ka
	LxGxeiNB46zQ74MWO7gPm7Fd6idzykjYhkIjGxajogGZr4sebrWk1q/DlRft6I3FJBQBW5KiR1/
	0d533IcaxhUukNtDtOUuyD2ptgPYZteaMWli55xW20LWg5Gb75tf7EcoQvcGqf6WHPOxmZTmPis
	DVvOhzZz
X-Received: by 2002:a05:6000:2509:b0:439:b7c9:2eee with SMTP id
 ffacd0b85a97d-439da656ae8mr9474585f8f.13.1772889463755; Sat, 07 Mar 2026
 05:17:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260306133351.31589-1-clamor95@gmail.com> <20260306133351.31589-5-clamor95@gmail.com>
 <20260307-huge-excellent-tench-0afefc@quoll>
In-Reply-To: <20260307-huge-excellent-tench-0afefc@quoll>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Sat, 7 Mar 2026 15:17:32 +0200
X-Gm-Features: AaiRm50GLCk_SOmhHd2bvwAI0azWxfEbywfHqltNh_WJ56961YJKr2R5TU7KTzo
Message-ID: <CAPVz0n0Mfzt_rXKxQisrOmNqiEaZKE19yXFqJbgCWzcrFpHwAA@mail.gmail.com>
Subject: Re: [PATCH v3 4/6] dt-bindings: mfd: max77620: convert to DT schema
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@kernel.org>, 
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, 
	Chanwoo Choi <cw00.choi@samsung.com>, Alexandre Belloni <alexandre.belloni@bootlin.com>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: B50EE22BE5D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272433-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,intel.com,arm.com,samsung.com,bootlin.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.990];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[3c:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mail.gmail.com:mid]
X-Rspamd-Action: no action

=D1=81=D0=B1, 7 =D0=B1=D0=B5=D1=80. 2026=E2=80=AF=D1=80. =D0=BE 14:46 Krzys=
ztof Kozlowski <krzk@kernel.org> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On Fri, Mar 06, 2026 at 03:33:49PM +0200, Svyatoslav Ryhel wrote:
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +    #include <dt-bindings/mfd/max77620.h>
> > +
> > +    i2c {
> > +        #address-cells =3D <1>;
> > +        #size-cells =3D <0>;
> > +
> > +        pmic@3c {
> > +            compatible =3D "maxim,max77620";
> > +            reg =3D <0x3c>;
> > +
> > +            interrupts =3D <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
>
> This is odd interrupt. It's I2C device, so how can it be GIC?
>

I have used layout from Tegra device. I will switch to smth simpler.

> > +            #interrupt-cells =3D <2>;
> > +            interrupt-controller;
> > +
> > +            #gpio-cells =3D <2>;
> > +            gpio-controller;
> > +
> > +            #thermal-sensor-cells =3D <0>;
> > +
> > +            system-power-controller;
> > +
> > +            pinctrl-names =3D "default";
> > +            pinctrl-0 =3D <&max77620_default>;
> > +
> > +            max77620_default: pinmux {
> > +                gpio0 {
> > +                    pins =3D "gpio0";
> > +                    function =3D "gpio";
> > +                };
> > +
> > +                gpio1 {
> > +                    pins =3D "gpio1";
> > +                    function =3D "fps-out";
> > +                    maxim,active-fps-source =3D <MAX77620_FPS_SRC_0>;
> > +        };
>
> Messed indentation.
>

Acknowledged.

> > +
> > +                gpio2 {
> > +                    pins =3D "gpio2";
> > +                    function =3D "fps-out";
> > +                    maxim,active-fps-source =3D <MAX77620_FPS_SRC_1>;
> > +                };
> > +
> > +                gpio3 {
> > +                    pins =3D "gpio3";
> > +                    function =3D "gpio";
> > +                };
> > +
> > +                gpio4 {
> > +                    pins =3D "gpio4";
> > +                    function =3D "32k-out1";
> > +                };
> > +
> > +                gpio5_6 {
>
> No underscoers in node names. Use hyphen.
>

Acknowledged.

> > +                    pins =3D "gpio5", "gpio6";
> > +                    function =3D "gpio";
> > +                    drive-push-pull =3D <1>;
> > +                };
> > +
> > +                gpio7 {
> > +                    pins =3D "gpio7";
> > +                    function =3D "gpio";
> > +                };
> > +            };
>
> Best regards,
> Krzysztof
>

