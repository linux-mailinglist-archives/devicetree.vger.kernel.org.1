Return-Path: <devicetree+bounces-191788-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 03869AF06DA
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 01:17:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 893E1447703
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 23:17:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A21E8302CC6;
	Tue,  1 Jul 2025 23:17:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b="V+yQMDyb"
X-Original-To: devicetree@vger.kernel.org
Received: from out-186.mta1.migadu.com (out-186.mta1.migadu.com [95.215.58.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDBD1302CA8
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 23:17:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.186
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751411863; cv=none; b=tLau5s1lwbcK4C48YljFtlc2f0a3gDnnxEIvIGE5w10mCjk7Bk/X/ZnwEuLi+Qym3zyKHjcvweslKyAlaBGSnQUgB5BqQMQapINFpIEAILfAEcpy8nD3zsh1OQ0FnetYrOQ68MfgspT3+M2aDfBrYmTRRDFJcWtHfi5IktSlG4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751411863; c=relaxed/simple;
	bh=x8S/RZSq16lL6ILaOxRs0ByKlnmWINgi2qjBXhTW1Jw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=BVmxSS86JcKrFBlgEUvMcitpyEdwAnNj1xuhhNmCX6m3QcQ1BW/GziGlCCYYWf3ToA2DBJ6T+eiTJtSX4dsKQ9+SWgP4LsiVasPvmEa7XAhXlEUIAe58Nd/E0A52ihif4weFpDIOdqOVmYmqb0CPD0RcVpXz5GxxLEXqGGlII0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool; spf=pass smtp.mailfrom=packett.cool; dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b=V+yQMDyb; arc=none smtp.client-ip=95.215.58.186
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=packett.cool
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1751411848;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=iJeNkrKY3WTugSB3wk5adPIN3J7V68fO3RZqd4IeRr0=;
	b=V+yQMDybZQXoOguyX4BJyyjdoj31L+Fwym33VNvLpKh2olHbS5BU11Czykg26DyQ0KXdvP
	oddlRl1TBTbGfEuo2u8vWL2N9OZPL8lx2eyt7+PVKOPIqf+YkuEYeYTjRMAbxszUi8NXjR
	Qtr04xloYGqYbsQJZ3AbpqJRX9kYLT1PadmSSpHRG2MwuePewsrQHzKgd23gvhzAjk8yiF
	3fHGxhvBKntK1ywldDzJokq/JOoQj6mH809SQ8o2gHM2N4cAJRson5PMJwUGA0rqSq5oGd
	4EXduslDbtjgkf4ooymcTiiQ3V1mJv8qXx1KOOH0LxcsV4R75hxB6hUGZ29VsQ==
From: Val Packett <val@packett.cool>
To: 
Cc: Val Packett <val@packett.cool>,
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
	Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/5] Add Dell Inspiron 7441 / Latitude 7455 (X1E-80-100)
Date: Tue,  1 Jul 2025 19:53:23 -0300
Message-ID: <20250701231643.568854-1-val@packett.cool>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT


This is a series unifying the previous Inspiron[1] and Latitude[2] ones.
The laptops turned out to be even more identical than previously thought,
with a shared firmware update capsule[3] that refers to the shared codename
"Thena", as well as being identical visually (other than the bottom label).

Changes since v1:

- Added audio (audioreach PR: [4], ALSA UCM: [5])
- Removed the copy-pasted comment about WCN regulators being on a
  "removable M.2 card" (the board has a *soldered* WiFi module, anyway)
- Removed the useless pin comment
- Fixed sort order for usb_ nodes
- Added missing newlines before status
- Changed zap shader node to use &gpu_zap_shader reference
- Added raw EDID dump to the eDP panel patch
- Changed the USB mux compatible to ps8833
- Removed unused i2c busses

(Should the dtsi be an 'x1-' one in anticipation of the x1p42100-based
Inspiron 5441 / Latitude 5455 models?)

[1]: https://lore.kernel.org/all/20250424-qcom-linux-arm64-for-6-16-dell-inspiron14p-v1-0-ace76b31d024@linaro.org/
[2]: https://lore.kernel.org/all/20250525095341.12462-2-val@packett.cool/
[3]: https://www.dell.com/support/home/en-us/drivers/driversdetails?driverid=x2pvx&oscode=w11a6&productcode=latitude-14-7455-laptop
[4]: https://github.com/linux-msm/audioreach-topology/pull/25
[5]: https://github.com/alsa-project/alsa-ucm-conf/pull/589

Thanks,
~val

Bryan O'Donoghue (1):
  dt-bindings: arm: qcom: Add Dell Inspiron 14 Plus 7441

Val Packett (4):
  dt-bindings: arm: qcom: Add Dell Latitude 7455
  arm64: dts: qcom: Add support for Dell Inspiron 7441 / Latitude 7455
  firmware: qcom: scm: Allow QSEECOM on Dell Inspiron 7441 / Latitude
    7455
  drm/panel-edp: Add BOE NE14QDM panel for Dell Latitude 7455

 .../devicetree/bindings/arm/qcom.yaml         |    2 +
 arch/arm64/boot/dts/qcom/Makefile             |    4 +
 .../x1e80100-dell-inspiron-14-plus-7441.dts   |   51 +
 .../dts/qcom/x1e80100-dell-latitude-7455.dts  |   52 +
 .../boot/dts/qcom/x1e80100-dell-thena.dtsi    | 1658 +++++++++++++++++
 drivers/firmware/qcom/qcom_scm.c              |    2 +
 drivers/gpu/drm/panel/panel-edp.c             |    1 +
 7 files changed, 1770 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/x1e80100-dell-inspiron-14-plus-7441.dts
 create mode 100644 arch/arm64/boot/dts/qcom/x1e80100-dell-latitude-7455.dts
 create mode 100644 arch/arm64/boot/dts/qcom/x1e80100-dell-thena.dtsi

-- 
2.49.0


