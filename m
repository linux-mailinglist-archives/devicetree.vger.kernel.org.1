Return-Path: <devicetree+bounces-237633-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D062C529B6
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 15:06:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1DF5442583E
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 13:54:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3245A23E320;
	Wed, 12 Nov 2025 13:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b="S2bxnIZ+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 752EE25D53B
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 13:54:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762955663; cv=none; b=RJsDFjUwhGlL90Ntpcw6Uiu16FdXZ6bRqtnso243XJRRC0dIEYq7tBjNjAPwT1TVhLrDoEgL5bnydAL+Vmy31MyQ/AXVK4LM5fElx6ob3H01ukBosXzUF7kwKw3IfVTu02iVj0Bzdi8Y9h3kteOMCs3oVSgGvAnsiGttMMBrA9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762955663; c=relaxed/simple;
	bh=I4I3WIzpcjfsDiSTgOlk8Atq3GBfqXf8GVaWSsFqgPk=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SsR5w3TrzKpBCbRex9lBgFG7HSPqFkr+XQse2J75bfQ2QXlBnPGKhebz/ltaEGlWiAwuPr+eyKOlFmIra/7ivrLAbEYp4H6aP7CfMFK5UtbK8CVjXezDNvo7e4rUE1IV81/QCVeuP34j3DqpjNJ7bSZia2mL+048a1+09AoQK2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b=S2bxnIZ+; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id C54BF3F85A
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 13:54:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20251003; t=1762955652;
	bh=zw6ziSjkzQiRWUig0BOelMJ1uVjsDF/5GnnR77Yu8HA=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=S2bxnIZ+WIp/kPGQzOUzcqOfgcGGKsCRhf16bABXinJ0l7OnADT7NOa7/K9ZE/rmL
	 uxO/ChTkQSpKQB+vDR6RMl/vDmo5SUeoy3XjPK/kwMWvlHnTbFMXPwaO9lSFaQ5tAt
	 MIqP9ab4yokt2HZXsY/BOYEISEbRnS58O34EQcBfBXCn/Ej1gHcLPfeegpZlwNsc8x
	 xhFeHdJxzTjcQG2pf1V9hHw9QjetZSaNKyhgO8wgJSjv3vlfF+z34zUlzOR/NO6rjm
	 QaF8XL3iXqlCXgk+FQWZR5nhWV8nsP2fxWn8mNHu2TC2rIOyYF2WCPq4vvDA2KF04T
	 ejzQZY3BOeHzB8gFIbQxpQ5JF5NUUpq46Kqrd0rMxJHFjqQfrWsMLWNVuGRVn1F+jM
	 p/lfgLop1OAKfYs5lHOHXrckxPuWy1xf2QacC3OFsFONS8wycraBk3BzL8azgJASgN
	 wnU7euPTgdT0fOPkcrzx/tgR5zAB3SvhisjzGff5E0fCwj6U48zp7L+Tdh9HbJJ/x8
	 BZpcn0cAAx/6EG2uffKO6BF8a5O+C7W32E5jePiYXi46gVzxZux71LmGM+NlGTCI87
	 gKiqrxfPmrNzGjTtEEsUHbhmXvrtKwonBjS6gPZxz2nHJJARf/4FDmEVVnWy2CIjDy
	 f2aUL4pNobvTtysdjYGXhNyQ=
Received: by mail-ej1-f69.google.com with SMTP id a640c23a62f3a-b72a95dc6d9so96079666b.0
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 05:54:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762955652; x=1763560452;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zw6ziSjkzQiRWUig0BOelMJ1uVjsDF/5GnnR77Yu8HA=;
        b=dQ7zUDHTAJoDN0BLyLHYeIx15Bb+j+RFmdzoQbnkc5rqyeInjKiFVlKpO2o7m6y/oV
         02KZUiORZA+/qT789VOTeoYoGRRBp36ACrJTS1gwkYt7NUpYFxhmK8X2QAPmFzQMwaI/
         7L4NX3k7ljUGUZGxs6WpZfzaTpsv3KKM2+4Xus3X5XByI7AcpvM4fKp8vG67mvqhLM+h
         gkqVhMma2OscEOaDrwBIAT6jWvsV/cHC6sXXIjEDg9T409opHe5zvIIT2cT/Ce+PjrQL
         2UR24evbB4fk80dSGXbGyNzWyutdt6ibKgfDp/Sd9xjCFmSapj84q3Xe31husnZT4KOc
         05JQ==
X-Gm-Message-State: AOJu0YxGKDCV7qvg2UV87v92Uk0UOsQx527v5I6md2d8megtNe50B+qt
	m7oLydPr5sMSrRy4n/GC5y4vt1Lam/9q1+Yw2EYKJf4NjaftiLisJtSYQn/yka8hr4WLxythOxV
	aX3xKnftc0feezqV7J2W0LBvK1dzv1h8XShgvDUi4UhM4A1FXNRCmFA6V8sBYAETE+k2ZheZOn+
	1bcl+qmrcI24B/cDSHp4i7nAA337/l1jsTnjsDdrPJu5KMnEnllV7D/A==
X-Gm-Gg: ASbGncuXjgVz8yrufRKDMECFfwKxxkpVBiNdP+mBxqwtBqeIE5GifRp55+h81J7ZcUy
	CXViuZtN5YMIPc8Xp+SBIZc/pgI7JkV7qc0ToGh71eh6pw4VryTh/tNOsxNmxaWkUZlHx93DtVH
	ED2CXAWhs84C9q4TedLv9gWG4Kz0jjnI6BWM4DQog4MFhjt+wfCF5SJfJhXpMA03DsnRyL5mjOu
	/qCffPO34CL
X-Received: by 2002:a17:907:3f0b:b0:b72:599:5385 with SMTP id a640c23a62f3a-b7331aed080mr274451866b.61.1762955651978;
        Wed, 12 Nov 2025 05:54:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHASu3IyWs8sdfwZaJ3pNAVG0SXfiJ1YnPjXsl7ym/EOc9nMzNozT0R3ShCHNy28iULSDnVopmBypGnnGPw+tE=
X-Received: by 2002:a17:907:3f0b:b0:b72:599:5385 with SMTP id
 a640c23a62f3a-b7331aed080mr274448466b.61.1762955651487; Wed, 12 Nov 2025
 05:54:11 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 12 Nov 2025 05:54:10 -0800
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 12 Nov 2025 05:54:09 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20251107095530.114775-1-hal.feng@starfivetech.com>
References: <20251107095530.114775-1-hal.feng@starfivetech.com>
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
User-Agent: alot/0.0.0
Date: Wed, 12 Nov 2025 05:54:09 -0800
X-Gm-Features: AWmQ_bkCo556C5q4g3w_mabHlgyG7zuhHtzy3L72tGDQo2o37ahEt_qsjrthSBY
Message-ID: <CAJM55Z_rczBo4D3HsC90QW1=fp3NWgK-tsEo6LHTZNXEBHTDqA@mail.gmail.com>
Subject: Re: [PATCH v2 0/8] Add support for StarFive VisionFive 2 Lite board
To: Albert Ou <aou@eecs.berkeley.edu>, Bjorn Helgaas <bhelgaas@google.com>, 
	Conor Dooley <conor+dt@kernel.org>, E Shattow <e@freeshell.de>, 
	Hal Feng <hal.feng@starfivetech.com>, 
	Heinrich Schuchardt <heinrich.schuchardt@canonical.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <pjw@kernel.org>, 
	"Rafael J . Wysocki" <rafael@kernel.org>, Rob Herring <robh@kernel.org>, 
	Viresh Kumar <viresh.kumar@linaro.org>
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Quoting Hal Feng (2025-11-07 10:55:22)
> VisionFive 2 Lite is a mini SBC based on the StarFive JH7110S industrial
> SoC which can run at -40~85 degrees centigrade and up to 1.25GHz.
>
> Board features:
> - JH7110S SoC
> - 4/8 GiB LPDDR4 DRAM
> - AXP15060 PMIC
> - 40 pin GPIO header
> - 1x USB 3.0 host port
> - 3x USB 2.0 host port
> - 1x M.2 M-Key (size: 2242)
> - 1x MicroSD slot (optional non-removable 64GiB eMMC)
> - 1x QSPI Flash
> - 1x I2C EEPROM
> - 1x 1Gbps Ethernet port
> - SDIO-based Wi-Fi & UART-based Bluetooth
> - 1x HDMI port
> - 1x 2-lane DSI
> - 1x 2-lane CSI
>
> VisionFive 2 Lite schematics: https://doc-en.rvspace.org/VisionFive2Lite/PDF/VF2_LITE_V1.10_TF_20250818_SCH.pdf
> VisionFive 2 Lite Quick Start Guide: https://doc-en.rvspace.org/VisionFive2Lite/VisionFive2LiteQSG/index.html
> More documents: https://doc-en.rvspace.org/Doc_Center/visionfive_2_lite.html


Hi Hal,

Currently the JH7110 device trees are layed out like this, with a nice
separation between the SoC description and board descriptions:

jh7110.dtsi               # JH7110 SoC description
|- jh7110-common.dtsi     # Peripherals common to all JH7110 boards
   |- jh7110-starfive-visionfive-2.dtsi # Peripherals common to VF2 boards
   |  |- <VF2 boards>     # Final VF2 board descriptions
   |- jh7110-milkv-marscm.dtsi # Peripherals common to Mars CM boards
   |  |- <Mars CM boards> # Final Mars CM board descriptions
   |- <other boards>      # Other JH7110 board descriptions

With this series it moves to

jh711x.dtsi
|- jh711x-common.dtsi
   |- jh7110-common.dtsi
   |  |- <jh7110 boards>
   |- jh7110s-common.dtsi
      |- <jh7110s boards>

..which I can't even give clear labels like above. In other words when new
patches are sent in it would not be easy to explain exactly where each change
should go and why.
I'm also worried that you'll find that more of the peripherals on the JH7110S
need special handling and a new jh7110s-... compatible string. Then I guess
they'll need to jump from jh7110x.dtsi two levels down to jh7110{,s}-common.dtsi
which then both describe SoC and board properties.

If you're serious about calling this a new SoC then I'd expect something more
like this:

jh711x.dtsi                  # Peripherals common to both SoCs
|- jh7110.dtsi               # JH7110 SoC description
|  |- jh7110-common.dtsi     # Peripherals common to all JH7110 boards
|     |- jh7110-starfive-visionfive-2.dtsi # Peripherals common to VF2 boards
|     |  |- <VF2 boards>     # Final VF2 board descriptions
|     |- jh7110-milkv-marscm.dtsi # Peripherals common to Mars CM boards
|     |  |- <Mars CM boards> # Final Mars CM board descriptions
|     |- <other boards>      # Other JH7110 board descriptions
|- jh7110s.dtsi              # JH7110S SoC description
   |- jh7110s-common.dtsi    # Peripherals common to all JH7110S boards
      |- <JH7110S boards>    # Final JH7110S board descriptions

I know this will mean some duplication in jh7110{,s}-common.dtsi, but I would
prefer that to not having a clear explanation of what each file describes.

Do you think this layout could work for you?

/Emil

