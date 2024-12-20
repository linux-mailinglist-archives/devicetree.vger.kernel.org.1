Return-Path: <devicetree+bounces-133034-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CDFEC9F911C
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 12:26:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2A36116C370
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 11:26:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F05D51C07CF;
	Fri, 20 Dec 2024 11:26:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mainlining.org header.i=@mainlining.org header.b="KIDjXJZ7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.mainlining.org (mail.mainlining.org [5.75.144.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7D522AE96;
	Fri, 20 Dec 2024 11:26:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=5.75.144.95
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734693988; cv=none; b=r2StMcqHYdTZ6QdQFsIg0xtwzgRTpx6Gr2vSeoy0IsWaQByNG8gn1RiOR9IfYqvoe2/iPdVILyfAwc5DWySAAUAfSmAxwZpgRaHFE38nZISVo1T1Wpnmz8P5c6U/5j0bm5EkDBPhuPsURoiSO3RzCqNi6pmRSENMMg0UFENDCb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734693988; c=relaxed/simple;
	bh=0WzX3MQkYGmE1/tKbh9NNev17T02tgmw6EH2Zim0PVE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=SU4aU1ujKsP7LS9DIXeqge/RermE8Ndjj+Fj5qn8HP9MUsxzaKGYj3OaYuMijQwuCyMf0dmjEU1JfcMfYXM2F+Q7k4w1Y6IAtYJw1tQou6gLogDF0ROKNI8jNQWHiXBK+aRB0ODodgRsmxBWRrXYuO9ZYBzx8PoqqD+zQCpckoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mainlining.org; spf=pass smtp.mailfrom=mainlining.org; dkim=pass (2048-bit key) header.d=mainlining.org header.i=@mainlining.org header.b=KIDjXJZ7; arc=none smtp.client-ip=5.75.144.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mainlining.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mainlining.org
Received: from [192.168.30.162] (254C1A66.nat.pool.telekom.hu [37.76.26.102])
	by mail.mainlining.org (Postfix) with ESMTPSA id 029FCE450C;
	Fri, 20 Dec 2024 11:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mainlining.org;
	s=psm; t=1734693978;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=/r5C8XysB4BMKE04Wyv9EWVB5LkFZ4rFY+Jd94igHFA=;
	b=KIDjXJZ7qYGF3oH78mvcs1+7O5rTUrBRrQzbUdBgQo6nx63+Aay0ZF+xrJIme6IyGltptg
	4aIDirzE1gJsGdZEsClwXrRANkSks5qsQCkgM/93uce+7/Bq2cjUWCLXla5TC6fwzNszj6
	4C4I6htWOABBv07DkUK6NzBFcUHSd/c0NRF51J5Tzrv7pKyCntbIpTSDgJPGU3/m7ylHh2
	6bf2JDWr9KynezYuYabx1ohKLQ9GRtzhkaz4QmDxENJOabWGiw9buOcfYx2ZeLuLrbkrc3
	2WqAkqh+o07onIKaZkYqTMm7lTX/tRVJcbOjz2VCP0TB+eeBiLTAqRI7go4d2A==
From: =?utf-8?q?Barnab=C3=A1s_Cz=C3=A9m=C3=A1n?= <barnabas.czeman@mainlining.org>
Subject: [PATCH v10 0/5] Add MSM8917/PM8937/Redmi 5A
Date: Fri, 20 Dec 2024 12:26:13 +0100
Message-Id: <20241220-msm8917-v10-0-35c27f704d34@mainlining.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAFVUZWcC/23QzW7DIAwH8FepOC8TNhDwTnuPaQeHjxZpTapki
 jZVffeRXkAaR1v8/ti+iy2uOW7i7XQXa9zzlpe5FCBfTsJfeD7HIYfSEChRgwQartvVEdgBrFd
 BpqTZoCivb2tM+ecZ9fFZ6kvevpf195m8w9H9n7HDIIcESXmG4Fw071fO81ee83x+XdazOIJ2b
 LCCirFgx9KaxOxogi5WFYO0FauCxxC8YR/IuqmLdYubsfXx8xSJpLaE3MemwYAVm4LLwkoHpYC
 gj8cWq4rHgr3SLk2GKMXUxbbBqCu2x86AFskpPZqxi13FCM21XcFAlr2XGqXqY2qxqZgKntgz4
 5hU7Iz9eDz+AAVesqOMAgAA
X-Change-ID: 20241019-msm8917-17c3d0ff4a52
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, Amit Kucheria <amitk@kernel.org>, 
 Thara Gopinath <thara.gopinath@gmail.com>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Joerg Roedel <joro@8bytes.org>, 
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
 linux-pm@vger.kernel.org, iommu@lists.linux.dev, 
 =?utf-8?q?Barnab=C3=A1s_Cz=C3=A9m=C3=A1n?= <barnabas.czeman@mainlining.org>, 
 Dang Huynh <danct12@riseup.net>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1734693976; l=3592;
 i=barnabas.czeman@mainlining.org; s=20240730; h=from:subject:message-id;
 bh=0WzX3MQkYGmE1/tKbh9NNev17T02tgmw6EH2Zim0PVE=;
 b=HRn/BNUbX58DOIR3ALPGnWQWGQVEtKGEfuNBKVuYehrNUiu6DLuD0dBYB50LDPLB77L+saqBX
 u9HH2eyYt90C2cDAugk0xryIuiMFXMwnZ1m+gYih7BDYixB5uozOIQa
X-Developer-Key: i=barnabas.czeman@mainlining.org; a=ed25519;
 pk=TWUSIGgwW/Sn4xnX25nw+lszj1AT/A3bzkahn7EhOFc=

This patch series add support for MSM8917 soc with PM8937 and
Xiaomi Redmi 5A (riva).

Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
---
Changes in v10:
- msm8917: sdc1 cmd_on, cmd_off change bias-disable to bias-pull-up
- Remove applied patches.
- Link to v9: https://lore.kernel.org/r/20241215-msm8917-v9-0-bacaa26f3eef@mainlining.org

Changes in v9:
- msm8917:
 - add some empty lines for separating pins more
 - order compatible, reg, ranges properties
- Link to v8: https://lore.kernel.org/r/20241211-msm8917-v8-0-197acc042036@mainlining.org

Changes in v8:
- pm8937, msm8917, msm8917-xiaomi-riva: remove unused includes
- Link to v7: https://lore.kernel.org/r/20241124-msm8917-v7-0-612729834656@mainlining.org

Changes in v7:
- msm8917-xiaomi-riva:
  - Add pinctrls for used GPIO pins.
  - Use interrupts-extend for charger.
  - Order properies.
- Link to v6: https://lore.kernel.org/r/20241113-msm8917-v6-0-c348fb599fef@mainlining.org

Changes in v6:
- msm8917:
  - Consolidate SDC pins, remove sdc2-cd-on/off pins.
  - Remove cluster-sleep-0 and cluster-sleep-1
  and rename cluster-sleep-2 to cluster-sleep-0.
  - Fix spi, i2c and related pinctrl namings.
- msm8917-xiaomi-riva: follow i2c name changes.
- Link to v5: https://lore.kernel.org/r/20241112-msm8917-v5-0-3ca34d33191b@mainlining.org

Changes in v5:
- msm8917:
  - Remove aliases.
  - Rename spi, i2c labels and pins.
  - Remove clock-frequency from timers
  - Remove unused mpss_mem region.
  - Use mboxes where it can be used, only smd-edge uses qcom,ipc.
- msm8917-xiaomi-riva: Follow i2c label changes.
- Link to v4: https://lore.kernel.org/r/20241109-msm8917-v4-0-8be9904792ab@mainlining.org

Changes in v4:
- msm8917 pinctrl: Fix gpio regexp in the schema.
- msm8937 tsens: Rename ops_msm8976 to ops_common and use it for msm8937.
- msm8917: fix address padding, naming and ordering, remove polling-delays.
- Remove applied patches from the series.
- Link to v3: https://lore.kernel.org/r/20241107-msm8917-v3-0-6ddc5acd978b@mainlining.org

Changes in v3:
- msm8917-xiaomi-riva: Fix issues addressed by Konrad.
- msm8917: Fix node addresses, orders of some properties.
- pm8937: simplify vadc channels.
- msm8917 pinctrl: Fix schema issues addressed by Krzysztof. 
- Remove applied tcsr patch from this series.
- Reword some commit title.
- Link to v2: https://lore.kernel.org/r/20241031-msm8917-v2-0-8a075faa89b1@mainlining.org

Changes in v2:
- Add msm8937 tsens support.
- Fix issues addressed by reviews.
- Link to v1: https://lore.kernel.org/r/20241019-msm8917-v1-0-f1f3ca1d88e5@mainlining.org

---
Barnabás Czémán (3):
      dt-bindings: nvmem: Add compatible for MS8917
      dt-bindings: arm: qcom: Add Xiaomi Redmi 5A
      arm64: dts: qcom: Add Xiaomi Redmi 5A

Dang Huynh (1):
      arm64: dts: qcom: Add PM8937 PMIC

Otto Pflüger (1):
      arm64: dts: qcom: Add initial support for MSM8917

 Documentation/devicetree/bindings/arm/qcom.yaml    |    7 +
 .../devicetree/bindings/nvmem/qcom,qfprom.yaml     |    1 +
 arch/arm64/boot/dts/qcom/Makefile                  |    1 +
 arch/arm64/boot/dts/qcom/msm8917-xiaomi-riva.dts   |  333 ++++
 arch/arm64/boot/dts/qcom/msm8917.dtsi              | 1954 ++++++++++++++++++++
 arch/arm64/boot/dts/qcom/pm8937.dtsi               |  150 ++
 6 files changed, 2446 insertions(+)
---
base-commit: 8503810115fbff903f626adc0788daa048302bc0
change-id: 20241019-msm8917-17c3d0ff4a52

Best regards,
-- 
Barnabás Czémán <barnabas.czeman@mainlining.org>


