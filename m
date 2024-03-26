Return-Path: <devicetree+bounces-53375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 12DF688C124
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 12:48:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9E3B31F3DD2B
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 11:48:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88F2B5CDD9;
	Tue, 26 Mar 2024 11:48:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EA6838FB9;
	Tue, 26 Mar 2024 11:48:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711453724; cv=none; b=Ul3uMIK6Yh90rpIpSnD5EcZf/AAYJhh1urhmKuhI1zZCiod8ig58lY7YlFNoL+WOLvHb9h3RCVMaccT/kOKjfBRqFu350JWAtvUchmN0ikym9IT6uwJ6mU5oHsLUseri8t+To9I7o5dAMRPM6cx5DGRnDsvItHLiH/Y+AjeyXQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711453724; c=relaxed/simple;
	bh=JhI390Gy3PttFitNsIrOZdKppqY+JuSX3Wk1NJicFz8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=tETKaiuMJG419lXguYXzS4xB/iyG/1PtH8Zh8j6yuR+Z0eXkHi/TzY8q5X2qHwafajS04Nlg5AXXOPnwAtaNZkPwkLVWNEuHByURrhA1TybeXD45GokAyVOGMyu0jOkPgmA9rrigjdtDC657FozebqTOdy9g8dMSIYLA72Z7SoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6FA582F4;
	Tue, 26 Mar 2024 04:49:15 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.manchester.arm.com [10.32.100.28])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F120F3F64C;
	Tue, 26 Mar 2024 04:48:38 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Yangtao Li <tiny.windzz@gmail.com>,
	Viresh Kumar <vireshk@kernel.org>,
	Nishanth Menon <nm@ti.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	"Rafael J . Wysocki" <rafael@kernel.org>
Cc: linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	Brandon Cheo Fusi <fusibrandon13@gmail.com>,
	Martin Botka <martin.botka@somainline.org>,
	Martin Botka <martin.botka1@gmail.com>,
	Chris Morgan <macroalpha82@gmail.com>,
	Ryan Walklin <ryan@testtoast.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH v3 0/8] cpufreq: sun50i: Add Allwinner H616 support
Date: Tue, 26 Mar 2024 11:47:35 +0000
Message-Id: <20240326114743.712167-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds cpufreq support to the Allwinner H616 SoC.
v3 has seen only little changes compared to v2, which contained quite
some rework of Martin's original series from about half a year ago[1].
Thanks for the comments on the list, I adjusted the OPP nodes as
suggested. See below for a changelog.

=================
The various H616 chips seem to be qualified by production batches, and
there is a table that translates from some efuses values to actual speed
bin indexes. Also the die revision has a say here: we can derive this
from the SoC ID, already provided by TF-A through the SMCCC SoC ID
interface.
So while the H6 had explicit speed bin indexes in the efuses, this is
conceptually not that different, and after refactoring patch 4/8 this
can be neatly integrated into the existing (H6) sun50i-cpufreq-nvmem
driver.
On top of that, not all chips are qualified to reach the full 1.5GHz,
and the BSP kernel describes different OPPs for each speedbin. This
requires to add support for the opp-supported-hw DT property, to be
able to describe those requirements properly.

Patch 1/8 exports the SoC ID function, so that we can call it from our
driver. Patch 2/8 blocks the affected SoCs from the generic DT cpufreq
driver, patch 3/8 adds the DT binding documentation.
Patch 4/8 refactors the existing speedbin determination for the H6, to
be able to plug in the H616 version later more easily.
Patch 5/8 adds support for the opp-supported-hw property. This is done
in a generic way, so it's usable for other SoCs as well, and the code
will figure out if the current DT requires use of this feature.
Patch 6/8 then eventually adds the H616 bits to the driver, and ties
that to the new compatible string.
Patch 7/8 add the CPU OPP table as a .dtsi to the DT directory, the
values in there were taken from the BSP source.
Patch 8/8 then enables the OPPs for all boards we have DTs for.

Based on v6.9-rc1.

Please have a look!

Cheers,
Andre

[1] https://lore.kernel.org/linux-sunxi/20230904-cpufreq-h616-v1-0-b8842e525c43@somainline.org/T/#u

Changelog v2 .. v3:
- rebased on top of v6.9-rc1
- drop node name suffix from DT bindings
- drop multiple nodes per frequency in DT bindings example
- add H700 nvmem value and OPPs
- print warning for unknown nvmem values
- add #cooling-cells properties to CPU DT nodes
- use one DT node per frequency for OPP table entries
- include OPP table for newly added Longan board

Changelog v1 .. v2:
- extend commit messages
- add H618/H700 SoC IDs
- fix binding compatible enum
- fix binding documentation
- allow additional suffix to OPP node name
- shorten existing DT binding example
- add another (opp-supported-hw) binding example
- move speed bin decoding refactoring to separate patch (Brandon)
- move opp-supported-hw support to separate patch
- merge opp-supported-hw and microvolt suffix handling
- rewrite OPP tables without opp-microvolt-speed suffix

Andre Przywara (2):
  cpufreq: sun50i: Add support for opp_supported_hw
  arm64: dts: allwinner: h616: enable DVFS for all boards

Brandon Cheo Fusi (1):
  cpufreq: sun50i: Refactor speed bin decoding

Martin Botka (5):
  firmware: smccc: Export revision soc_id function
  cpufreq: dt-platdev: Blocklist Allwinner H616/618 SoCs
  dt-bindings: opp: Describe H616 OPPs and opp-supported-hw
  cpufreq: sun50i: Add H616 support
  arm64: dts: allwinner: h616: Add CPU OPPs table

 .../allwinner,sun50i-h6-operating-points.yaml |  86 ++++----
 .../sun50i-h616-bigtreetech-cb1.dtsi          |   5 +
 .../dts/allwinner/sun50i-h616-cpu-opp.dtsi    | 125 +++++++++++
 .../allwinner/sun50i-h616-orangepi-zero2.dts  |   5 +
 .../dts/allwinner/sun50i-h616-x96-mate.dts    |   5 +
 .../arm64/boot/dts/allwinner/sun50i-h616.dtsi |   8 +
 .../sun50i-h618-longan-module-3h.dtsi         |   5 +
 .../allwinner/sun50i-h618-orangepi-zero2w.dts |   5 +
 .../allwinner/sun50i-h618-orangepi-zero3.dts  |   5 +
 .../sun50i-h618-transpeed-8k618-t.dts         |   5 +
 drivers/cpufreq/cpufreq-dt-platdev.c          |   3 +
 drivers/cpufreq/sun50i-cpufreq-nvmem.c        | 197 +++++++++++++++---
 drivers/firmware/smccc/smccc.c                |   1 +
 13 files changed, 378 insertions(+), 77 deletions(-)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h616-cpu-opp.dtsi

-- 
2.25.1


