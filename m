Return-Path: <devicetree+bounces-224074-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F0276BC0A3F
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 10:33:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2A5C53C65C5
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 08:32:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FAB22D4B7A;
	Tue,  7 Oct 2025 08:32:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JA+t8WLI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263342D46A9
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 08:32:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759825970; cv=none; b=SltFP+PD5PTqJNhbYfvadaWtIJBND4TPCLCl94Vo57izDICC7Z5okPcIOGltuBxFQlYVxbsJyQNKOTpz/aE7q/QskXNO8B16nyrOmiuwKmI+tfWczKPf/MdeQbn7K+9uJH6/TBMZbKvPpZsEl5J11eKEhJ4iYy+uPkLPjbjDA7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759825970; c=relaxed/simple;
	bh=6YA48dRdMn98EKLf0B0E8UQI+JrUJv05ObeY5TJyDAg=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=IKX+C0tzjS7gE2cKXrKFGI+AWg6AtZOCkV6OlnEekZ+PWkWSrGPu+NfHI8ulQw5iuOFiCmJz23Hzd5Gq8agEm0Zy448LiVIBoMneZPQScpePBapsHzlJHn5RMjcWoYWGpPb9OfDcgsNRjO6+QuWrRv37BhcadVfknFrun7ZvaeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JA+t8WLI; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-57933d3e498so8161082e87.3
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 01:32:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759825966; x=1760430766; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Z3IEuIwN+kSi/yp1WzBh4o8EnyjA8K4wg582tbfmoa4=;
        b=JA+t8WLIHPQLSAG1PL4DAX6nUWh4aRzm0huisIDpot1hyxgIOHtf68MR/T8Uumzjqw
         OOvNsz0NfA/V8vvqKOMayF09j8jzRXyjMad2nuem7uYuUjReD1VhdfXi96c3UuXqaMDE
         HeQfHd7ksDedSbAngpgd1Mlg5tbfCC6FiZy/BGltqn4/WUv3s0UTxDoMzNfzfCe+dOvo
         8I85F4uQDS1LI8v/dHPRKDxDT4Lum3nU93pzhRMUKcP5d8wLh/aWs4fAwsxiQytRPPFB
         0Hjc9+T7L8GF2kKA7hUDTG72jFw8gZaX3epenYd6Z8b+u3S6G+ZgRV5YZtN+GVcHIoCZ
         v9kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759825966; x=1760430766;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Z3IEuIwN+kSi/yp1WzBh4o8EnyjA8K4wg582tbfmoa4=;
        b=mXvtTJ6qvlUyySW5P6uzONTEkOphgjnty7i5t+hrTpApLB17rouiW60uui1mtmS8D9
         XqQ1XvR/hmQ2RKZCjyc+sET5nF0YrWhQbJJOOiS4kqrv2jo1Itti78O0vDb+gyrUrriG
         3BE/tFHBdXUmWsxWu+lEKeZf+h+ZrWQHRaTbsLB1VWzF7KRm40ORH5bYvzfi9wKpzFAD
         1aRdNaXHigrYwhhfo8AaxZUKW3q9bvf5xdPGIX/D5El6mvnXETepORDVp1vuuNNp15uV
         6pLRarMHdvZl3DlJIQq+sWtrcdkhsWcaW2BBtLT1OKKmn3MDwlsn5uHC0FriXmg3jY/G
         FmEA==
X-Forwarded-Encrypted: i=1; AJvYcCXFxPgAoEfLAU6bW6aebeb8ZorlpbibatoP06YRbwAYlwN9kBBpjtgdNV9PTKp7ijdPXBHp0DV4dkAp@vger.kernel.org
X-Gm-Message-State: AOJu0YxI+KXFjUXh8MSkOJdnbGVNwTxK9uNPiFg3n7usDWjsaBIHT0rm
	1CuPbpNmDUX0AN36hvnLus88GuShV+5CEWTfQ63lvtk241dEsoK/MDN/
X-Gm-Gg: ASbGncux86OXWqxE9HM9kX0U8cJgEyYsJcNaJmlWrEOdF+S/XaAo6EnHW2xjFip8sKv
	h5Jy0WaY43T1akgt0OEpB53lO7SEroSyJroBPiBAmDhbOSSJ08N7KshbRVTYksyt4QtN420dNwp
	U4VtawTiHu3HIrXpDLtTPjpum8J5tqirNru6x1rS1xQlFeVmpBnU7LFiIfxZUV7hOgO2Qism96n
	XnKxBeNAj82F57S/1hEQaH6tD+bIIT7lZw4m+2rcM/dv7fEe4RoSgy10to46SLgv2IvgdIxXAHo
	i9XwB33tV0PB0OwpXA6wbrmD1yqQhegQo0AjZAs6Gwo/GeHIaSYGmeL3Tq6S7JsOOpSiq1PZFQe
	Ug5HZWs3xxhxARfONOyVpH6BMB0gt/LBZkEOZHODtrjtW+HLiU/khKQ==
X-Google-Smtp-Source: AGHT+IHKnIR6bZ7zCgqGQnWqvEpoa2uWu0PJzc9KxMfoImMFOI43uHYL9VOuRoaIsbm62UKnLJwRzw==
X-Received: by 2002:a2e:bcc9:0:b0:364:45a:5159 with SMTP id 38308e7fff4ca-374c3825faemr47972051fa.30.1759825965509;
        Tue, 07 Oct 2025 01:32:45 -0700 (PDT)
Received: from mva-rohm ([2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-375f3b63fffsm7785271fa.40.2025.10.07.01.32.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 01:32:43 -0700 (PDT)
Date: Tue, 7 Oct 2025 11:32:38 +0300
From: Matti Vaittinen <mazziesaccount@gmail.com>
To: Matti Vaittinen <mazziesaccount@gmail.com>,
	Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Cc: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sebastian Reichel <sre@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Matti Vaittinen <mazziesaccount@gmail.com>,
	Andreas Kemnade <andreas@kemnade.info>, linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org, linux-gpio@vger.kernel.org
Subject: [RFC PATCH 00/13] Support ROHM BD72720 PMIC
Message-ID: <cover.1759824376.git.mazziesaccount@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="CSuc6sH3Hezd75HV"
Content-Disposition: inline


--CSuc6sH3Hezd75HV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

The ROHM BD72720 is a new power management IC for portable, battery
powered devices. It integrates 10 BUCKs and 11 LDOs, RTC, charger, LEDs,
GPIOs and a clock gate. To me the BD72720 seems like a successor to the
BD71828 and BD71815 PMICs.

The reason for RFC status is the addition of VDR battery parameters in
the device tree (patch 3) and the fact that BD72720 uses two different
I2C slave addresses.

This series depends on the series: "[PATCH v5 0/3] power: supply: add
charger for BD71828":
https://lore.kernel.org/all/20250918-bd71828-charger-v5-0-851164839c28@kemn=
ade.info/
sent by Andreas, which is not yet merged. I will rebase this on
v6.18-rc1 when it is out, to see what dependencies are still missing.

---

Matti Vaittinen (13):
  dt-bindings: regulator: ROHM BD72720
  dt-bindings: Add trickle-charge upper limit
  dt-bindings: power: supply: BD72720 managed battery
  dt-bindings: mfd: ROHM BD72720
  dt-bindings: leds: bd72720: Add BD72720
  mfd: bd71828: Support ROHM BD72720
  regulator: bd71828: rename IC specific entities
  regulator: bd71828: Support ROHM BD72720
  gpio: Support ROHM BD72720 gpios
  clk: clk-bd718x7: Support BD72720 clk gate
  rtc: bd70528: Support BD72720 rtc
  power: supply: bd71828-power: Support ROHM BD72720
  MAINTAINERS: Add ROHM BD72720 PMIC

 .../bindings/leds/rohm,bd71828-leds.yaml      |    7 +-
 .../bindings/mfd/rohm,bd72720-pmic.yaml       |  269 +++++
 .../bindings/power/supply/battery.yaml        |    3 +
 .../power/supply/rohm,vdr-battery.yaml        |   78 ++
 .../regulator/rohm,bd72720-regulator.yaml     |  153 +++
 MAINTAINERS                                   |    2 +
 drivers/clk/Kconfig                           |    4 +-
 drivers/clk/clk-bd718x7.c                     |   10 +-
 drivers/gpio/Kconfig                          |    9 +
 drivers/gpio/Makefile                         |    1 +
 drivers/gpio/gpio-bd72720.c                   |  281 +++++
 drivers/mfd/Kconfig                           |   18 +-
 drivers/mfd/rohm-bd71828.c                    |  429 ++++++-
 drivers/power/supply/bd71828-power.c          |  172 ++-
 drivers/regulator/Kconfig                     |    8 +-
 drivers/regulator/bd71828-regulator.c         | 1025 ++++++++++++++++-
 drivers/rtc/Kconfig                           |    3 +-
 drivers/rtc/rtc-bd70528.c                     |   21 +-
 include/linux/mfd/rohm-bd72720.h              |  632 ++++++++++
 include/linux/mfd/rohm-generic.h              |    1 +
 20 files changed, 3064 insertions(+), 62 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mfd/rohm,bd72720-pmic=
=2Eyaml
 create mode 100644 Documentation/devicetree/bindings/power/supply/rohm,vdr=
-battery.yaml
 create mode 100644 Documentation/devicetree/bindings/regulator/rohm,bd7272=
0-regulator.yaml
 create mode 100644 drivers/gpio/gpio-bd72720.c
 create mode 100644 include/linux/mfd/rohm-bd72720.h

--=20
2.51.0


--CSuc6sH3Hezd75HV
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEIx+f8wZb28fLKEhTeFA3/03aocUFAmjk0CIACgkQeFA3/03a
ocXGRQf9Fg+ekH76K2Nj0JPhscKVrENn2YhQbC79mnV8FMFze1JrFm3tjv/gUV4e
haaJ6oCOThcYJV5fW01BNO8cU1muXFK4cACorQIezuFCjrm+6eZuLHBLbCCFfeQf
qPHVe3OtW5OM7s7uuyWdvnJb++lD2Ml1+RgwFpSJjZhnn0nqw2ajCpbdmqWGcvmz
+pMNZ3wlwOXy7dEGW7KfqfKnsJaBdT863auNwGVASr7drPrztw7l3G7RsZgzTLdb
iUeKZFmHGo4//esuacjBO+IinTdL0Djr7MDrsGMHZGxLpVchVk4OLO0zMf1Tm4Dv
5i0Bo2Z/qfyXp8zk9renVN2jjQ4Q0w==
=nj0c
-----END PGP SIGNATURE-----

--CSuc6sH3Hezd75HV--

