Return-Path: <devicetree+bounces-169815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B91A984FF
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 11:11:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 390F617A10C
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 09:11:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FC6D26AA8F;
	Wed, 23 Apr 2025 09:08:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="D0aMATJB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1212526A0DB
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 09:08:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745399295; cv=none; b=IlXbl9oyf/FWsCJQedlso61tYJ3JVU7TfdPRrVwRPXeEshd5qxf0rr85jViyLkkVA4zomKKqZZ64bABBJ7/bQWlz6ojyiCCaPyIeYACR4RxSnrSmaj0H+6IaAwUxYElUFGEYPZzUaViPjPWAlA7fjxi6hJ6iR0lXJzOa/I9OJ2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745399295; c=relaxed/simple;
	bh=qK+Bht5I8TbFJ37fxMJ/CZN+W/3pEIzqCUuBSR0d7+I=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=uVsPTxN0agzNc+FApZ98sZwuQEglPAMWQwwByGuVwGqi4faQXXVEENuptnwpMmfkx//PHspiWJ+RhxWYsY5fqskxhWigGwoY8xaScA4p+zlJkT0KpsT/3disSoNBgk3PxllZN9pdWnzw8p+B9ZQubuWIn3r3ibLPVZBQIeUq0rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=D0aMATJB; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5e8be1bdb7bso9539708a12.0
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 02:08:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1745399289; x=1746004089; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GSzE3rftnozhvBrUV0vIpg9NkBc+hyjjqSB2+GzIiAM=;
        b=D0aMATJBHEnoohL30eQjLg8rCZAjz22lvTPujlxxWN8YrkhSYkNgEg8TRc8dbzhZb0
         V1RbWqE45g/uQp3Mg8uJl3dQNhCcWjkAArm5J9umfV1s84BugwzDvbt4yC2Q0hiXJ2KO
         JMFxxRS9fXe6mpjI7IC5dtrGdEFMTvCUK0XhnR3Xq6qSIukamf8zditaK0c7sPxrxtb8
         FVWzFCAqCKn0H6zTBeNF+SioxYeUcnfBcjJMLdBXoC6+kC76vHo69gUldMhMgL1s6AZm
         ZuIhltRNGbj4Mt9ACaibXskzL1VtV749P4S8UwXtLIbV0/yer9LSu2AEkFiy66bQxHpr
         VCnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745399289; x=1746004089;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GSzE3rftnozhvBrUV0vIpg9NkBc+hyjjqSB2+GzIiAM=;
        b=E3IAB3tpjDb11UjLE9nj/sx4Io5jx+MeJrYMWq5u+aF2XNFHun6S4mmEUHuj0pSSzO
         lRJllsZ2Omya0is6xc1m0ZtKg2TL+2/W8U1I97+xi0BUHQ9wCO9usXWTeGOL0STYpCXx
         FdFbS/KjlHIT2xdiHMxOZV0kmHbLrvDh3dIQyGtgnAYH9J+DAX7oLCUs4u2V82d6FoD5
         dslcl4ulxtQVRXCWqzM1YNBTYZe8H2FTZV5CAHUPAOBc12C/4OO67Yje+xtSsYKI1F77
         1JiQ3KDtcYSlOI1Iq4bFoIJzhCHm9q3dVSiPO2VBzGqF0dShdGwBCHs0UHpZujm5v+k/
         304Q==
X-Forwarded-Encrypted: i=1; AJvYcCWiC6WlzfOT118OHB/pi7VKhu35BDcPY2tgaRBmL0RKbQZKqmFdGeWi2LFGvtGWTsbmsy632cuhp38E@vger.kernel.org
X-Gm-Message-State: AOJu0Yxh0XKXkYpgsHVhTtF27o7ZHpycHsBUwz2xGMgb8t8NoB9TmQpg
	waPOGG9xkHm9oxAIKbhRweapuLwSSKAH7FFyhfvhM8prGcPB0v3zaQTDR8vIazI=
X-Gm-Gg: ASbGnct27puFtyKdz5Lv1UGYlbr+ddmxb9DbL/oeQWBnwtNNb6Kwnrk0uxEvWdn3X2y
	lVl61GUXh1yWHJhLvaf3M/C3zpBk+ULeMJDSU0JqTsLC/qz5hF8RX0i3Xs2UI6la8E8zlC0i77r
	yWlExIE+sr2nh46u7xRJCySKc2QzIIfta9xh0F7j08OsknSrv+OLZlWwPgOw98IG/bKCPWUfPAk
	VqjeEbed8NLW4sFyBVMQpd9zVHDVsJdRRdm2cxSHtOLqCXVmMHOU8MvQMOZtb08c+jUaEtj543Y
	7RhVPaGcLR0TmS4KBgGjtbKplQqc4nGw1z4=
X-Google-Smtp-Source: AGHT+IGIVEtcneQ6QBHI27+IaUMZuGJ4Lg8B5LwWyJ7fqeDehKNvd+aExONZx2dG0jkMVlHozlkkTw==
X-Received: by 2002:a05:6402:35cc:b0:5e7:5b30:3c4f with SMTP id 4fb4d7f45d1cf-5f628554785mr17378191a12.14.1745399288737;
        Wed, 23 Apr 2025 02:08:08 -0700 (PDT)
Received: from localhost ([2001:4091:a245:826e:3c1:b5a5:4b3e:82ca])
        by smtp.gmail.com with UTF8SMTPSA id 4fb4d7f45d1cf-5f62557943esm7103055a12.25.2025.04.23.02.08.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 02:08:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed;
 boundary=1ce015bcc28bc69295cb23bd2888779d0acaa7cc063525b3c34be3e71a95;
 micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Wed, 23 Apr 2025 11:07:59 +0200
Message-Id: <D9DWENILJAPY.3LSS0LRD0H5Y1@baylibre.com>
Cc: "Vignesh Raghavendra" <vigneshr@ti.com>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Tero Kristo" <kristo@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Sebin Francis" <sebin.francis@ti.com>,
 "Nishanth Menon" <nm@ti.com>, "Kendall Willis" <k-willis@ti.com>, "Dhruva
 Gole" <d-gole@ti.com>, "Kevin Hilman" <khilman@baylibre.com>, "Vishal
 Mahaveer" <vishalm@ti.com>, <linux-arm-kernel@lists.infradead.org>,
 "Akashdeep Kaur" <a-kaur@ti.com>
Subject: Re: [PATCH 0/7] arm64: dts: ti: k3-am62: Add wakeup-sources for low
 power modes
From: "Markus Schneider-Pargmann" <msp@baylibre.com>
To: "Rob Herring (Arm)" <robh@kernel.org>
X-Mailer: aerc 0.20.1
References: <20250421-topic-am62-dt-partialio-v6-15-v1-0-6ced30aafddb@baylibre.com> <174524753085.2426038.13409894396395372581.robh@kernel.org>
In-Reply-To: <174524753085.2426038.13409894396395372581.robh@kernel.org>

--1ce015bcc28bc69295cb23bd2888779d0acaa7cc063525b3c34be3e71a95
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi,

On Mon Apr 21, 2025 at 5:07 PM CEST, Rob Herring (Arm) wrote:
>
> On Mon, 21 Apr 2025 10:14:18 +0200, Markus Schneider-Pargmann wrote:
>> Hi,
>>=20
>> This series adds devicetree changes needed for Partial-IO support
>> on TI am62, am62a, and am62p SoCs. It defines system states for various
>> low power modes and configures the wakeup-sources for devices in the CAN=
UART
>> group. Depending on the SoC and board details, some low power modes may =
not
>> be available, so the wakeup-sources are described in the board files.
>> The series also adds the necessary pinctrl settings required for proper
>> wakeup functionality.
>>=20
>> Partial-IO Overview
>> ------------------
>> Partial-IO is a low power system state in which nearly everything is
>> turned off except the pins of the CANUART group (mcu_mcan0, mcu_mcan1,
>> wkup_uart0 and mcu_uart0). These devices can trigger a wakeup of the sys=
tem
>> on pin activity. Note that this does not resume the system as the DDR is
>> off as well. So this state can be considered a power-off state with wake=
up
>> capabilities.
>>=20
>> A documentation can also be found in section 6.2.4 in the TRM:
>>   https://www.ti.com/lit/pdf/spruiv7
>>=20
>> Implementation Details
>> ----------------------
>> The complete Partial-IO feature requires three coordinated series, each =
handling
>> a different aspect of the implementation:
>>=20
>> 1. m_can driver series: Implements device-specific wakeup functionality
>>     for m_can devices, allowing them to be set as wakeup sources.
>>     https://gitlab.baylibre.com/msp8/linux/-/tree/topic/mcan-wakeup-sour=
ce/v6.15?ref_type=3Dheads
>>     https://lore.kernel.org/r/20250421-topic-mcan-wakeup-source-v6-12-v7=
-0-1b7b916c9832@baylibre.com
>>=20
>> 2. This series (devicetree): Defines system states and wakeup sources in=
 the
>>     devicetree for am62, am62a and am62p.
>>=20
>> 3. TI-SCI firmware series: Implements the firmware interface to enter Pa=
rtial-IO
>>     mode when appropriate wakeup sources are enabled.
>>     https://gitlab.baylibre.com/msp8/linux/-/tree/topic/tisci-partialio/=
v6.15?ref_type=3Dheads
>>=20
>> Devicetree Bindings
>> -------------------
>> This series depends on the dt-schema pull request that adds bindings for
>> system-idle-states and updates the binding for wakeup-source:
>>   https://github.com/devicetree-org/dt-schema/pull/150
>>=20
>> These new bindings allow us to define the system states and reference th=
em
>> from device wakeup-source properties.
>>=20
>> Testing
>> -------
>> A test branch is available here that includes all patches required to
>> test Partial-IO:
>>=20
>> https://gitlab.baylibre.com/msp8/linux/-/tree/integration/am62-partialio=
/v6.15?ref_type=3Dheads
>>=20
>> After enabling Wake-on-LAN the system can be powered off and will enter
>> the Partial-IO state in which it can be woken up by activity on the
>> specific pins:
>>     ethtool -s can0 wol p
>>     ethtool -s can1 wol p
>>     poweroff
>>=20
>> I tested these patches on am62-lp-sk.
>>=20
>> Best,
>> Markus
>>=20
>> Previous versions
>> -----------------
>>  - As part of the series "firmware: ti_sci: Partial-IO support"
>>    https://lore.kernel.org/r/20250306-topic-am62-partialio-v6-12-b4-v5-0=
-f9323d3744a2@baylibre.com
>>=20
>> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
>> ---
>> Markus Schneider-Pargmann (7):
>>       arm64: dts: ti: k3-pinctrl: Add WKUP_EN flag
>>       arm64: dts: ti: k3-am62: Define possible system states
>>       arm64: dts: ti: k3-am62a: Define possible system states
>>       arm64: dts: ti: k3-am62p: Define possible system states
>>       arm64: dts: ti: k3-am62-lp-sk: Set wakeup-source system-states
>>       arm64: dts: ti: k3-am62a7-sk: Set wakeup-source system-states
>>       arm64: dts: ti: k3-am62p5-sk: Set wakeup-source system-states
>>=20
>>  arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts | 60 +++++++++++++++++++++++++
>>  arch/arm64/boot/dts/ti/k3-am62.dtsi      | 22 +++++++++
>>  arch/arm64/boot/dts/ti/k3-am62a.dtsi     | 27 ++++++++++++
>>  arch/arm64/boot/dts/ti/k3-am62a7-sk.dts  | 76 +++++++++++++++++++++++++=
+++++++
>>  arch/arm64/boot/dts/ti/k3-am62p.dtsi     | 27 ++++++++++++
>>  arch/arm64/boot/dts/ti/k3-am62p5-sk.dts  | 76 +++++++++++++++++++++++++=
+++++++
>>  arch/arm64/boot/dts/ti/k3-pinctrl.h      |  2 +
>>  7 files changed, 290 insertions(+)
>> ---
>> base-commit: 64e9fdfc89a76fed38d8ddeed72d42ec71957ed9
>> change-id: 20250415-topic-am62-dt-partialio-v6-15-327dd1ff17da
>> prerequisite-change-id: 20241009-topic-mcan-wakeup-source-v6-12-8c1d6993=
1bd8:v7
>> prerequisite-patch-id: 02b7142f56c849c9a3faab2d2871805febd647aa
>> prerequisite-patch-id: 830b339ea452edd750b04f719da91e721be630cb
>> prerequisite-patch-id: 56fd0aae20e82eb2dfb48f1b7088d62311a11f05
>> prerequisite-patch-id: 41f55b96c0428240d74d488e3c788c09842a1753
>>=20
>> Best regards,
>> --
>> Markus Schneider-Pargmann <msp@baylibre.com>
>>=20
>>=20
>>=20
>
>
> My bot found new DTB warnings on the .dts files added or changed in this
> series.
>
> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
>
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
>
>   pip3 install dtschema --upgrade
>

Yes, these issues are expected as long as the github PR on the dt-schema is=
 not merged.
https://github.com/devicetree-org/dt-schema/pull/150

Best
Markus

>
> This patch series was applied (using b4) to base:
>  Base: using specified base-commit 64e9fdfc89a76fed38d8ddeed72d42ec71957e=
d9
>  Deps: looking for dependencies matching 11 patch-ids
>  Deps: Applying prerequisite patch: [PATCH v7 1/4] dt-bindings: can: m_ca=
n: Add wakeup properties
>  Deps: Applying prerequisite patch: [PATCH v7 2/4] can: m_can: Map WoL to=
 device_set_wakeup_enable
>  Deps: Applying prerequisite patch: [PATCH v7 3/4] can: m_can: Return ERR=
_PTR on error in allocation
>  Deps: Applying prerequisite patch: [PATCH v7 4/4] can: m_can: Support pi=
nctrl wakeup state
>  Deps: Applying prerequisite patch: [PATCH 1/7] arm64: dts: ti: k3-pinctr=
l: Add WKUP_EN flag
>  Deps: Applying prerequisite patch: [PATCH 2/7] arm64: dts: ti: k3-am62: =
Define possible system states
>  Deps: Applying prerequisite patch: [PATCH 3/7] arm64: dts: ti: k3-am62a:=
 Define possible system states
>  Deps: Applying prerequisite patch: [PATCH 4/7] arm64: dts: ti: k3-am62p:=
 Define possible system states
>  Deps: Applying prerequisite patch: [PATCH 5/7] arm64: dts: ti: k3-am62-l=
p-sk: Set wakeup-source system-states
>  Deps: Applying prerequisite patch: [PATCH 6/7] arm64: dts: ti: k3-am62a7=
-sk: Set wakeup-source system-states
>  Deps: Applying prerequisite patch: [PATCH 7/7] arm64: dts: ti: k3-am62p5=
-sk: Set wakeup-source system-states
>
> If this is not the correct base, please add 'base-commit' tag
> (or use b4 which does this automatically)
>
> New warnings running 'make CHECK_DTBS=3Dy for arch/arm64/boot/dts/ti/' fo=
r 20250421-topic-am62-dt-partialio-v6-15-v1-0-6ced30aafddb@baylibre.com:
>
> arch/arm64/boot/dts/ti/k3-am625-verdin-nonwifi-dahlia.dtb: /system-idle-s=
tates/system-partial-io: failed to match any schema with compatible: ['syst=
em-idle-state']
> arch/arm64/boot/dts/ti/k3-am625-verdin-wifi-mallow.dtb: /system-idle-stat=
es/system-partial-io: failed to match any schema with compatible: ['system-=
idle-state']
> arch/arm64/boot/dts/ti/k3-am625-verdin-nonwifi-dahlia.dtb: /system-idle-s=
tates/system-deep-sleep: failed to match any schema with compatible: ['syst=
em-idle-state']
> arch/arm64/boot/dts/ti/k3-am625-verdin-wifi-mallow.dtb: /system-idle-stat=
es/system-deep-sleep: failed to match any schema with compatible: ['system-=
idle-state']
> arch/arm64/boot/dts/ti/k3-am625-verdin-wifi-dev.dtb: /system-idle-states/=
system-partial-io: failed to match any schema with compatible: ['system-idl=
e-state']
> arch/arm64/boot/dts/ti/k3-am625-verdin-nonwifi-dahlia.dtb: /system-idle-s=
tates/system-mcu-only: failed to match any schema with compatible: ['system=
-idle-state']
> arch/arm64/boot/dts/ti/k3-am625-verdin-wifi-mallow.dtb: /system-idle-stat=
es/system-mcu-only: failed to match any schema with compatible: ['system-id=
le-state']
> arch/arm64/boot/dts/ti/k3-am625-verdin-wifi-dev.dtb: /system-idle-states/=
system-deep-sleep: failed to match any schema with compatible: ['system-idl=
e-state']
> arch/arm64/boot/dts/ti/k3-am625-verdin-wifi-ivy.dtb: /system-idle-states/=
system-partial-io: failed to match any schema with compatible: ['system-idl=
e-state']
> arch/arm64/boot/dts/ti/k3-am625-verdin-nonwifi-dahlia.dtb: /system-idle-s=
tates/system-standby: failed to match any schema with compatible: ['system-=
idle-state']
> arch/arm64/boot/dts/ti/k3-am625-verdin-wifi-mallow.dtb: /system-idle-stat=
es/system-standby: failed to match any schema with compatible: ['system-idl=
e-state']
> arch/arm64/boot/dts/ti/k3-am625-verdin-wifi-dev.dtb: /system-idle-states/=
system-mcu-only: failed to match any schema with compatible: ['system-idle-=
state']
> arch/arm64/boot/dts/ti/k3-am625-verdin-wifi-ivy.dtb: /system-idle-states/=
system-deep-sleep: failed to match any schema with compatible: ['system-idl=
e-state']
> arch/arm64/boot/dts/ti/k3-am625-verdin-wifi-dev.dtb: /system-idle-states/=
system-standby: failed to match any schema with compatible: ['system-idle-s=
tate']
> arch/arm64/boot/dts/ti/k3-am625-verdin-wifi-ivy.dtb: /system-idle-states/=
system-mcu-only: failed to match any schema with compatible: ['system-idle-=
state']
> arch/arm64/boot/dts/ti/k3-am625-verdin-wifi-ivy.dtb: /system-idle-states/=
system-standby: failed to match any schema with compatible: ['system-idle-s=
tate']
> arch/arm64/boot/dts/ti/k3-am625-verdin-wifi-dahlia.dtb: /system-idle-stat=
es/system-partial-io: failed to match any schema with compatible: ['system-=
idle-state']
> arch/arm64/boot/dts/ti/k3-am625-beagleplay.dtb: /system-idle-states/syste=
m-partial-io: failed to match any schema with compatible: ['system-idle-sta=
te']
> arch/arm64/boot/dts/ti/k3-am625-verdin-wifi-dahlia.dtb: /system-idle-stat=
es/system-deep-sleep: failed to match any schema with compatible: ['system-=
idle-state']
> arch/arm64/boot/dts/ti/k3-am625-beagleplay.dtb: /system-idle-states/syste=
m-deep-sleep: failed to match any schema with compatible: ['system-idle-sta=
te']
> arch/arm64/boot/dts/ti/k3-am625-verdin-wifi-dahlia.dtb: /system-idle-stat=
es/system-mcu-only: failed to match any schema with compatible: ['system-id=
le-state']
> arch/arm64/boot/dts/ti/k3-am625-beagleplay.dtb: /system-idle-states/syste=
m-mcu-only: failed to match any schema with compatible: ['system-idle-state=
']
> arch/arm64/boot/dts/ti/k3-am625-verdin-wifi-dahlia.dtb: /system-idle-stat=
es/system-standby: failed to match any schema with compatible: ['system-idl=
e-state']
> arch/arm64/boot/dts/ti/k3-am625-beagleplay.dtb: /system-idle-states/syste=
m-standby: failed to match any schema with compatible: ['system-idle-state'=
]
> arch/arm64/boot/dts/ti/k3-am62p5-sk.dtb: /system-idle-states/system-parti=
al-io: failed to match any schema with compatible: ['system-idle-state']
> arch/arm64/boot/dts/ti/k3-am62p5-sk.dtb: /system-idle-states/system-io-dd=
r: failed to match any schema with compatible: ['system-idle-state']
> arch/arm64/boot/dts/ti/k3-am625-verdin-nonwifi-yavia.dtb: /system-idle-st=
ates/system-partial-io: failed to match any schema with compatible: ['syste=
m-idle-state']
> arch/arm64/boot/dts/ti/k3-am62p5-sk.dtb: /system-idle-states/system-deep-=
sleep: failed to match any schema with compatible: ['system-idle-state']
> arch/arm64/boot/dts/ti/k3-am625-verdin-nonwifi-yavia.dtb: /system-idle-st=
ates/system-deep-sleep: failed to match any schema with compatible: ['syste=
m-idle-state']
> arch/arm64/boot/dts/ti/k3-am62p5-sk.dtb: /system-idle-states/system-mcu-o=
nly: failed to match any schema with compatible: ['system-idle-state']
> arch/arm64/boot/dts/ti/k3-am625-verdin-nonwifi-yavia.dtb: /system-idle-st=
ates/system-mcu-only: failed to match any schema with compatible: ['system-=
idle-state']
> arch/arm64/boot/dts/ti/k3-am62p5-sk.dtb: /system-idle-states/system-stand=
by: failed to match any schema with compatible: ['system-idle-state']
> arch/arm64/boot/dts/ti/k3-am625-verdin-nonwifi-yavia.dtb: /system-idle-st=
ates/system-standby: failed to match any schema with compatible: ['system-i=
dle-state']
> arch/arm64/boot/dts/ti/k3-am62p5-sk.dtb: serial@4a00000 (ti,am64-uart): w=
akeup-source: [[4, 5, 6, 7]] is not of type 'boolean'
> 	from schema $id: http://devicetree.org/schemas/wakeup-source.yaml#
> arch/arm64/boot/dts/ti/k3-am62p5-sk.dtb: can@4e08000 (bosch,m_can): wakeu=
p-source: [[14, 4, 5, 6, 7]] is not of type 'boolean'
> 	from schema $id: http://devicetree.org/schemas/wakeup-source.yaml#
> arch/arm64/boot/dts/ti/k3-am62p5-sk.dtb: can@4e18000 (bosch,m_can): wakeu=
p-source: [[14, 4, 5, 6, 7]] is not of type 'boolean'
> 	from schema $id: http://devicetree.org/schemas/wakeup-source.yaml#
> arch/arm64/boot/dts/ti/k3-am62p5-sk.dtb: serial@0 (ti,am64-uart): wakeup-=
source: [[4, 5, 6, 7]] is not of type 'boolean'
> 	from schema $id: http://devicetree.org/schemas/wakeup-source.yaml#
> arch/arm64/boot/dts/ti/k3-am62a7-sk.dtb: /system-idle-states/system-parti=
al-io: failed to match any schema with compatible: ['system-idle-state']
> arch/arm64/boot/dts/ti/k3-am62a7-sk.dtb: /system-idle-states/system-io-dd=
r: failed to match any schema with compatible: ['system-idle-state']
> arch/arm64/boot/dts/ti/k3-am62a7-sk.dtb: /system-idle-states/system-deep-=
sleep: failed to match any schema with compatible: ['system-idle-state']
> arch/arm64/boot/dts/ti/k3-am62a7-sk.dtb: /system-idle-states/system-mcu-o=
nly: failed to match any schema with compatible: ['system-idle-state']
> arch/arm64/boot/dts/ti/k3-am62a7-sk.dtb: /system-idle-states/system-stand=
by: failed to match any schema with compatible: ['system-idle-state']
> arch/arm64/boot/dts/ti/k3-am62a7-sk.dtb: serial@4a00000 (ti,am64-uart): w=
akeup-source: [[4, 5, 6, 7]] is not of type 'boolean'
> 	from schema $id: http://devicetree.org/schemas/wakeup-source.yaml#
> arch/arm64/boot/dts/ti/k3-am62a7-sk.dtb: can@4e08000 (bosch,m_can): wakeu=
p-source: [[13, 4, 5, 6, 7]] is not of type 'boolean'
> 	from schema $id: http://devicetree.org/schemas/wakeup-source.yaml#
> arch/arm64/boot/dts/ti/k3-am62a7-sk.dtb: can@4e18000 (bosch,m_can): wakeu=
p-source: [[13, 4, 5, 6, 7]] is not of type 'boolean'
> 	from schema $id: http://devicetree.org/schemas/wakeup-source.yaml#
> arch/arm64/boot/dts/ti/k3-am62a7-sk.dtb: serial@0 (ti,am64-uart): wakeup-=
source: [[4, 5, 6, 7]] is not of type 'boolean'
> 	from schema $id: http://devicetree.org/schemas/wakeup-source.yaml#
> arch/arm64/boot/dts/ti/k3-am62a7-phyboard-lyra-rdk.dtb: /system-idle-stat=
es/system-partial-io: failed to match any schema with compatible: ['system-=
idle-state']
> arch/arm64/boot/dts/ti/k3-am62a7-phyboard-lyra-rdk.dtb: /system-idle-stat=
es/system-io-ddr: failed to match any schema with compatible: ['system-idle=
-state']
> arch/arm64/boot/dts/ti/k3-am62a7-phyboard-lyra-rdk.dtb: /system-idle-stat=
es/system-deep-sleep: failed to match any schema with compatible: ['system-=
idle-state']
> arch/arm64/boot/dts/ti/k3-am62a7-phyboard-lyra-rdk.dtb: /system-idle-stat=
es/system-mcu-only: failed to match any schema with compatible: ['system-id=
le-state']
> arch/arm64/boot/dts/ti/k3-am62a7-phyboard-lyra-rdk.dtb: /system-idle-stat=
es/system-standby: failed to match any schema with compatible: ['system-idl=
e-state']
> arch/arm64/boot/dts/ti/k3-am625-verdin-nonwifi-dev.dtb: /system-idle-stat=
es/system-partial-io: failed to match any schema with compatible: ['system-=
idle-state']
> arch/arm64/boot/dts/ti/k3-am625-verdin-nonwifi-dev.dtb: /system-idle-stat=
es/system-deep-sleep: failed to match any schema with compatible: ['system-=
idle-state']
> arch/arm64/boot/dts/ti/k3-am625-verdin-nonwifi-dev.dtb: /system-idle-stat=
es/system-mcu-only: failed to match any schema with compatible: ['system-id=
le-state']
> arch/arm64/boot/dts/ti/k3-am625-verdin-nonwifi-dev.dtb: /system-idle-stat=
es/system-standby: failed to match any schema with compatible: ['system-idl=
e-state']
> arch/arm64/boot/dts/ti/k3-am62-lp-sk.dtb: /system-idle-states/system-part=
ial-io: failed to match any schema with compatible: ['system-idle-state']
> arch/arm64/boot/dts/ti/k3-am62-lp-sk.dtb: /system-idle-states/system-deep=
-sleep: failed to match any schema with compatible: ['system-idle-state']
> arch/arm64/boot/dts/ti/k3-am62-lp-sk.dtb: /system-idle-states/system-mcu-=
only: failed to match any schema with compatible: ['system-idle-state']
> arch/arm64/boot/dts/ti/k3-am62-lp-sk.dtb: /system-idle-states/system-stan=
dby: failed to match any schema with compatible: ['system-idle-state']
> arch/arm64/boot/dts/ti/k3-am62-lp-sk.dtb: can@4e08000 (bosch,m_can): wake=
up-source: [[9, 10, 11, 12]] is not of type 'boolean'
> 	from schema $id: http://devicetree.org/schemas/wakeup-source.yaml#
> arch/arm64/boot/dts/ti/k3-am62-lp-sk.dtb: can@4e18000 (bosch,m_can): wake=
up-source: [[9, 10, 11, 12]] is not of type 'boolean'
> 	from schema $id: http://devicetree.org/schemas/wakeup-source.yaml#
> arch/arm64/boot/dts/ti/k3-am625-verdin-wifi-yavia.dtb: /system-idle-state=
s/system-partial-io: failed to match any schema with compatible: ['system-i=
dle-state']
> arch/arm64/boot/dts/ti/k3-am625-verdin-wifi-yavia.dtb: /system-idle-state=
s/system-deep-sleep: failed to match any schema with compatible: ['system-i=
dle-state']
> arch/arm64/boot/dts/ti/k3-am625-verdin-wifi-yavia.dtb: /system-idle-state=
s/system-mcu-only: failed to match any schema with compatible: ['system-idl=
e-state']
> arch/arm64/boot/dts/ti/k3-am625-verdin-wifi-yavia.dtb: /system-idle-state=
s/system-standby: failed to match any schema with compatible: ['system-idle=
-state']
> arch/arm64/boot/dts/ti/k3-am625-phyboard-lyra-rdk.dtb: /system-idle-state=
s/system-partial-io: failed to match any schema with compatible: ['system-i=
dle-state']
> arch/arm64/boot/dts/ti/k3-am625-phyboard-lyra-rdk.dtb: /system-idle-state=
s/system-deep-sleep: failed to match any schema with compatible: ['system-i=
dle-state']
> arch/arm64/boot/dts/ti/k3-am625-phyboard-lyra-rdk.dtb: /system-idle-state=
s/system-mcu-only: failed to match any schema with compatible: ['system-idl=
e-state']
> arch/arm64/boot/dts/ti/k3-am625-phyboard-lyra-rdk.dtb: /system-idle-state=
s/system-standby: failed to match any schema with compatible: ['system-idle=
-state']
> arch/arm64/boot/dts/ti/k3-am625-verdin-nonwifi-mallow.dtb: /system-idle-s=
tates/system-partial-io: failed to match any schema with compatible: ['syst=
em-idle-state']
> arch/arm64/boot/dts/ti/k3-am625-verdin-nonwifi-mallow.dtb: /system-idle-s=
tates/system-deep-sleep: failed to match any schema with compatible: ['syst=
em-idle-state']
> arch/arm64/boot/dts/ti/k3-am625-verdin-nonwifi-mallow.dtb: /system-idle-s=
tates/system-mcu-only: failed to match any schema with compatible: ['system=
-idle-state']
> arch/arm64/boot/dts/ti/k3-am625-verdin-nonwifi-mallow.dtb: /system-idle-s=
tates/system-standby: failed to match any schema with compatible: ['system-=
idle-state']
> arch/arm64/boot/dts/ti/k3-am625-verdin-nonwifi-ivy.dtb: /system-idle-stat=
es/system-partial-io: failed to match any schema with compatible: ['system-=
idle-state']
> arch/arm64/boot/dts/ti/k3-am625-verdin-nonwifi-ivy.dtb: /system-idle-stat=
es/system-deep-sleep: failed to match any schema with compatible: ['system-=
idle-state']
> arch/arm64/boot/dts/ti/k3-am625-verdin-nonwifi-ivy.dtb: /system-idle-stat=
es/system-mcu-only: failed to match any schema with compatible: ['system-id=
le-state']
> arch/arm64/boot/dts/ti/k3-am625-verdin-nonwifi-ivy.dtb: /system-idle-stat=
es/system-standby: failed to match any schema with compatible: ['system-idl=
e-state']
> arch/arm64/boot/dts/ti/k3-am625-sk.dtb: /system-idle-states/system-partia=
l-io: failed to match any schema with compatible: ['system-idle-state']
> arch/arm64/boot/dts/ti/k3-am625-sk.dtb: /system-idle-states/system-deep-s=
leep: failed to match any schema with compatible: ['system-idle-state']
> arch/arm64/boot/dts/ti/k3-am625-sk.dtb: /system-idle-states/system-mcu-on=
ly: failed to match any schema with compatible: ['system-idle-state']
> arch/arm64/boot/dts/ti/k3-am625-sk.dtb: /system-idle-states/system-standb=
y: failed to match any schema with compatible: ['system-idle-state']


--1ce015bcc28bc69295cb23bd2888779d0acaa7cc063525b3c34be3e71a95
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iIcEABYKAC8WIQSJYVVm/x+5xmOiprOFwVZpkBVKUwUCaAit7xEcbXNwQGJheWxp
YnJlLmNvbQAKCRCFwVZpkBVKU6rZAQCv4WGsjlyZsCbQdrqAhbR+FSn6m9DV0jUy
sOYZRnY7WQD/YdfardzogMugKEpuWJsPRwBbqDAPgm1544SbpgdKSg0=
=97q1
-----END PGP SIGNATURE-----

--1ce015bcc28bc69295cb23bd2888779d0acaa7cc063525b3c34be3e71a95--

