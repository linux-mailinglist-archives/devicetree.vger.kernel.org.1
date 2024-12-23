Return-Path: <devicetree+bounces-133553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1012C9FAE5D
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 13:52:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 71C2E160E5B
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 12:52:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B78B51AB525;
	Mon, 23 Dec 2024 12:52:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pUk0LFZD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90AF719CC0A;
	Mon, 23 Dec 2024 12:52:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734958339; cv=none; b=anQJwdW7T5+arX/5kr8CZ0HBHvdBmO3Cv4gBUf5orsp+WrWaCzWvVhcL3tB0Yb35uLZOLWsbur5DWBKUo+qy+AkeneBodxB6Q4q1aUx37Es/Os5oyvmPoOx8L6+CdKcKoMIVLhA/fKAsoe0GuVRe6aDTIb9JCcobm3Pktok3pUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734958339; c=relaxed/simple;
	bh=fQyGfMP5G3QnK19cBAbhAuvSiPllcK5M+M1hagDsJVI=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=B1+c5UQ6pfYt006nlCWBdDSsupEiOPRUtet17HLawYLQTOoakQU5SwmTXCd37IPJlOh+4eGScYeR+oUPpf5kSzkzqgRbiY8af/tABdb8DnutsXp6j5IYG59iEI2ulydlpd1z0JcOQzrVZ4PPqMx4Ow0TTex+V0y7Dk5EkIq6YzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pUk0LFZD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1F0CC4CED3;
	Mon, 23 Dec 2024 12:52:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734958339;
	bh=fQyGfMP5G3QnK19cBAbhAuvSiPllcK5M+M1hagDsJVI=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=pUk0LFZD0skjMWCJv5O0KqgwEl0vHpncV4dG1B3QFK3VSx42qeUapsXD7z1afywWL
	 KCv0NgRFk9nibiRVG3TKJoDr/f75kz+2uu+z4T+HB7mHr6IDuXPzwEBzrETEaAOokh
	 taBo1RaTUSYUoIDEJ6o/SlrWbK2kE6bMmNBCOpJ0beqezETeRmdcTbaW2xyl9SptSz
	 xLvu8okNYiMTjIH8T8fnVV8glsNcPjGVMwX+QkMxz6KehC0JEJd9fZjUkYnPvAz/el
	 fqnb7ZricTL1Dc2eOVY/P40dzx8EIdmxcSSJ9EVZvbq/B86K6wJ0q0z9aUgYbUKI7M
	 m1ZJm2EWg9wlQ==
Date: Mon, 23 Dec 2024 06:52:17 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Kevin Hilman <khilman@baylibre.com>, Nishanth Menon <nm@ti.com>, 
 Santosh Shilimkar <ssantosh@kernel.org>, Tero Kristo <kristo@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, Dhruva Gole <d-gole@ti.com>, 
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Vishal Mahaveer <vishalm@ti.com>, Conor Dooley <conor+dt@kernel.org>, 
 devicetree@vger.kernel.org, Vignesh Raghavendra <vigneshr@ti.com>, 
 Anand Gadiyar <gadiyar@ti.com>
To: Markus Schneider-Pargmann <msp@baylibre.com>
In-Reply-To: <20241219-topic-am62-partialio-v6-12-b4-v4-0-1cb8eabd407e@baylibre.com>
References: <20241219-topic-am62-partialio-v6-12-b4-v4-0-1cb8eabd407e@baylibre.com>
Message-Id: <173495824633.503645.15056603146383126846.robh@kernel.org>
Subject: Re: [PATCH v4 0/4] firmware: ti_sci: Partial-IO support


On Thu, 19 Dec 2024 21:02:11 +0100, Markus Schneider-Pargmann wrote:
> Hi,
> 
> Series
> ------
> Partial-IO is a poweroff SoC state with a few pingroups active for
> wakeup. This state can be entered by sending a TI_SCI PREPARE_SLEEP
> message.
> 
> The message is sent on poweroff if one of the potential wakeup sources
> for this power state are wakeup enabled. The potential wakeup sources
> are found by looking for devices that list "poweroff" in the
> wakeup-source property in the devicetree. The wakeup sources can be
> individually enabled/disabled by the user in the running system.
> 
> The series is based on v6.13-rc1.
> 
> Partial-IO
> ----------
> This series is part of a bigger topic to support Partial-IO on am62,
> am62a and am62p. Partial-IO is a poweroff state in which some pins are
> able to wakeup the SoC. In detail MCU m_can and two serial port pins can
> trigger the wakeup.
> A documentation can also be found in section 6.2.4 in the TRM:
>   https://www.ti.com/lit/pdf/spruiv7
> 
> This other series is relevant for the support of Partial-IO:
> 
>  - can: m_can: Add am62 wakeup support
>    https://lore.kernel.org/r/20241219-topic-mcan-wakeup-source-v6-12-v6-0-1356c7f7cfda@baylibre.com
>    https://gitlab.baylibre.com/msp8/linux/-/tree/topic/mcan-wakeup-source/v6.13?ref_type=heads
> 
> Testing
> -------
> 
> A test branch is available here that includes all patches required to
> test Partial-IO:
> 
> https://gitlab.baylibre.com/msp8/linux/-/tree/integration/am62-partialio/v6.13?ref_type=heads
> 
> After enabling Wake-on-LAN the system can be powered off and will enter
> the Partial-IO state in which it can be woken up by activity on the
> specific pins:
>     ethtool -s can0 wol p
>     ethtool -s can1 wol p
>     poweroff
> 
> I tested these patches on am62-lp-sk.
> 
> Best,
> Markus
> 
> Previous versions:
>  v1: https://lore.kernel.org/lkml/20240523080225.1288617-1-msp@baylibre.com/
>  v2: https://lore.kernel.org/lkml/20240729080101.3859701-1-msp@baylibre.com/
>  v3: https://lore.kernel.org/r/20241012-topic-am62-partialio-v6-13-b4-v3-0-f7c6c2739681@baylibre.com
> 
> Changes in v4:
>  - Rebased to v6.13-rc1
>  - Removed all regulator related structures from patches and implemented
>    the wakeup-source property use instead.
> 
> Changes in v3:
>  - Remove other modes declared for PREPARE_SLEEP as they probably won't
>    ever be used in upstream.
>  - Replace the wait loop after sending PREPARE_SLEEP with msleep and do
>    an emergency_restart if it exits
>  - Remove uarts from DT wakeup sources
>  - Split no response handling in ti_sci_do_xfer() into a separate patch
>    and use goto instead of if ()
>  - Remove DT binding parital-io-wakeup-sources. Instead I am modeling
>    the devices that are in the relevant group that are powered during
>    Partial-IO with the power supplies that are externally provided to
>    the SoC. In this case they are provided through 'vddshv_canuart'. All
>    devices using this regulator can be considered a potential wakeup
>    source if they are wakeup capable and wakeup enabled.
>  - Added devicetree patches adding vcc_3v3_sys regulator and
>    vddshv_canuart for am62-lp-sk
>  - Add pinctrl entries for am62-lp-sk to add WKUP_EN for mcu_mcan0 and
>    mcu_mcan1
> 
> Changes in v2:
>  - Rebase to v6.11-rc1
>  - dt-binding:
>     - Update commit message
>     - Add more verbose description of the new binding for a better
>       explanation.
>  - ti_sci driver:
>     - Combine ti_sci_do_send() into ti_sci_do_xfer and only wait on a
>       response if a flag is set.
>     - On failure to enter Partial-IO, do emergency_restart()
>     - Add comments
>     - Fix small things
> 
> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> ---
> Markus Schneider-Pargmann (4):
>       firmware: ti_sci: Support transfers without response
>       firmware: ti_sci: Partial-IO support
>       arm64: dts: ti: k3-pinctrl: Add WKUP_EN flag
>       arm64: dts: ti: am62-lp-sk: Add wakeup mcu_mcan0/1 pinctrl
> 
>  arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts |  52 +++++++++++++
>  arch/arm64/boot/dts/ti/k3-pinctrl.h      |   3 +
>  drivers/firmware/ti_sci.c                | 122 ++++++++++++++++++++++++++++++-
>  drivers/firmware/ti_sci.h                |   5 ++
>  4 files changed, 181 insertions(+), 1 deletion(-)
> ---
> base-commit: cbc4912199deab59fdbd830b115d81941d0add46
> change-id: 20241008-topic-am62-partialio-v6-12-b4-c273fbac4447
> prerequisite-change-id: 20241009-topic-mcan-wakeup-source-v6-12-8c1d69931bd8:6
> prerequisite-patch-id: eba4f2096c69d9c734a4a4491e062bd8b01d26fd
> prerequisite-patch-id: 830b339ea452edd750b04f719da91e721be630cb
> prerequisite-patch-id: 56fd0aae20e82eb2dfb48f1b7088d62311a11f05
> prerequisite-patch-id: 41f55b96c0428240d74d488e3c788c09842a1753
> prerequisite-patch-id: 4ab7269193dbcfd449349ccd41b23914bbbdaa6b
> prerequisite-patch-id: 24a735db927cbe2b1e0c6c5f3985b6676ce5528c
> prerequisite-patch-id: 52dbbf390d3f7e4a3859e60e4f660bfe39b92cd9
> 
> Best regards,
> --
> Markus Schneider-Pargmann <msp@baylibre.com>
> 
> 
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


New warnings running 'make CHECK_DTBS=y ti/k3-am62-lp-sk.dtb' for 20241219-topic-am62-partialio-v6-12-b4-v4-0-1cb8eabd407e@baylibre.com:

arch/arm64/boot/dts/ti/k3-am62-lp-sk.dtb: can@4e08000: wakeup-source: 'oneOf' conditional failed, one must be fixed:
	['suspend', 'poweroff'] is not of type 'boolean'
	['suspend', 'poweroff'] is too long
	from schema $id: http://devicetree.org/schemas/net/can/bosch,m_can.yaml#
arch/arm64/boot/dts/ti/k3-am62-lp-sk.dtb: can@4e08000: Unevaluated properties are not allowed ('wakeup-source' was unexpected)
	from schema $id: http://devicetree.org/schemas/net/can/bosch,m_can.yaml#
arch/arm64/boot/dts/ti/k3-am62-lp-sk.dtb: can@4e08000: wakeup-source: ['suspend', 'poweroff'] is not of type 'boolean'
	from schema $id: http://devicetree.org/schemas/wakeup-source.yaml#
arch/arm64/boot/dts/ti/k3-am62-lp-sk.dtb: can@4e18000: wakeup-source: 'oneOf' conditional failed, one must be fixed:
	['suspend', 'poweroff'] is not of type 'boolean'
	['suspend', 'poweroff'] is too long
	from schema $id: http://devicetree.org/schemas/net/can/bosch,m_can.yaml#
arch/arm64/boot/dts/ti/k3-am62-lp-sk.dtb: can@4e18000: Unevaluated properties are not allowed ('wakeup-source' was unexpected)
	from schema $id: http://devicetree.org/schemas/net/can/bosch,m_can.yaml#
arch/arm64/boot/dts/ti/k3-am62-lp-sk.dtb: can@4e18000: wakeup-source: ['suspend', 'poweroff'] is not of type 'boolean'
	from schema $id: http://devicetree.org/schemas/wakeup-source.yaml#






