Return-Path: <devicetree+bounces-208572-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A78B32BB3
	for <lists+devicetree@lfdr.de>; Sat, 23 Aug 2025 21:38:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 680EC580732
	for <lists+devicetree@lfdr.de>; Sat, 23 Aug 2025 19:38:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FA92248869;
	Sat, 23 Aug 2025 19:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="lXrTgQr6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD4301F12E9
	for <devicetree@vger.kernel.org>; Sat, 23 Aug 2025 19:38:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755977913; cv=none; b=GmcnT66ICx2cJ4WK+Qm2tTUpHhg8C8nZUIpFKXMSkAsyllIExLB6adZY4XR3WlssWPhkNm00moERqdU8M86x1UE8+u8rI1QRrV5RW7al9aoQzUZtkxBNGIvT7MtrqhDn6gXX2L8EeJk45SSvRgCNTdLhpfQNuISbptfbMmfLpa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755977913; c=relaxed/simple;
	bh=9H5EWBk4yVKoWb98oK8R5kJWtyTvHlhBWPggxu4SXn0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=uxKyFoF1uDsiQ9O3Mk7NxZ4uQtxeOkIz/rQleTBJtewvcMcfRqzMaIFUh4mG9Rm/4bVtDjUs60UiAq2onlRd7DjZAOOMkdGnOWIBVQD8EFXF3Q4eJd0I19TlBdhvYTs/M/OFM5k07k89p2Gpu0Q+V+yhDmoY9HQj5wLicDuF8wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=lXrTgQr6; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-770522b34d1so183565b3a.1
        for <devicetree@vger.kernel.org>; Sat, 23 Aug 2025 12:38:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1755977911; x=1756582711; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vFoZeto/FDI3HbNA3+yLmKkVSsUZjUZFotfhVBL12vM=;
        b=lXrTgQr6JhIISSPI/TtVrVlmguy8BHG8uXDzcqkFX6zsY7Al1UgdklHiI/03eLuwGn
         3i2EvUT5VPG/86ibT1WOjbVGpfzQa1NLHc9hRxz6+sd85PFNF6FU0QMi9Ibzkb4Lqj4O
         8etasAsGJzw5sinGD11CFVSH+HfTD8L3/N7jc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755977911; x=1756582711;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vFoZeto/FDI3HbNA3+yLmKkVSsUZjUZFotfhVBL12vM=;
        b=EDBhNvhAMThhxLphzd/BnKXTPCrmKA0Z0Myizdt0jUc2UsrG8zMaXjCTKBzDc+ICPL
         L+iBAqyeA+qEJumG31Mmwur+WaAchrwYVMJqfIwBEvbKXlRQK3J9M0yY2JrFDtSUX12w
         3bNfqt60yqiGeg7TLePc65ljgFmKQnfTrFrdNav29tCwWas0smr+nYS1JCSPX+ghXlVp
         jyj8wWiAWc8WNKUv9trPINNq6bqa2brpSxfTlt9BiBod8i6ysmhxuUE4mMk4+EgY4c6W
         dEvBak1ZN9RgX3CEdoPXmOytYW6+YXPsvqwSc4NPE22OQ5MC4vX4g/olcPUEpY84hbXP
         P35g==
X-Forwarded-Encrypted: i=1; AJvYcCUMmqPOhUoa/EaE19/x8MqQgtieN2bR9h5hyIQG5hNxd5gOtaw+sW0Stnda8EdsvDg4ZPkwVV/yrIbt@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5Id2iJBeiID/IlQKSjmfz/bD+psZwsWRX9EH2HPJTYIK6oFd3
	7302kXxi4DP0A8NrwcV+tCxdyGiqXwmPSOBHM1q2cD06o0LkK95LkoCebzk0hiS4lg==
X-Gm-Gg: ASbGncvy7vO7jtE3pySkX7zD9zfY2J5WHIazayVz9TMnkNMaT6y0XI2duJB/28gD+6y
	TQoBP1JXPX4j+w5QBx0GXnCS+mSiSNMsc8r80+s5BZExHBfNlYHRoslBSZ1wBjoT2+CvZrE8/fe
	bb6/zOcWG39Yfzy2ERPicTTAesi8DlwJtAUeVw+dO/NMTtZhkktIXMmZsBo+ukEMDqBPyC1GzuX
	nKpAEt6u8A/vb2AXqB4etwc/16/MjJ5KZOWbuAoFLyZE5J77ROCNpY+hzBMs3/Vv9Fv8xupUan4
	0RO0osQdZFERobZ7W/9il4FfHN7dyM8DsHeYa6Lei/ecQySYeZ+T1vQeeiZzRNsXdeg+Mpb7nQ+
	9Q5iILN9JpFg0Ub9Xm3lCmQTZ5HgZJlmrSP9sIZRVZS9nivkSw/AOGMrUoXdE
X-Google-Smtp-Source: AGHT+IHZgEfPSgrzNcfJP0y8VFbZ/mI9XmL1DW5PZYFaB2PJIzNbSTWb31bEH3e4F4au31IY+qw7iw==
X-Received: by 2002:a05:6a20:258a:b0:23f:f729:2e72 with SMTP id adf61e73a8af0-24340b5832dmr8588883637.1.1755977911137;
        Sat, 23 Aug 2025 12:38:31 -0700 (PDT)
Received: from localhost ([2a00:79e0:2e14:7:dde2:2ecc:d200:6390])
        by smtp.gmail.com with UTF8SMTPSA id d2e1a72fcca58-7704025ef80sm3093608b3a.108.2025.08.23.12.38.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Aug 2025 12:38:30 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Georgi Djakov <djakov@kernel.org>,
	Odelu Kukatla <quic_okukatla@quicinc.com>
Cc: Douglas Anderson <dianders@chromium.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	cros-qcom-dts-watchers@chromium.org,
	Brian Norris <briannorris@chromium.org>
Subject: [RFC PATCH] arm64: dts: qcom: sc7280: Drop aggre{1,2}_noc QOS clocks on Herobrine
Date: Sat, 23 Aug 2025 12:37:18 -0700
Message-ID: <20250823123718.RFC.1.Idebf1d8bd8ff507462fef9dc1ff47e84c01e9b60@changeid>
X-Mailer: git-send-email 2.51.0.rc2.233.g662b1ed5c5-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Ever since these two commits

  fbd908bb8bc0 ("interconnect: qcom: sc7280: enable QoS configuration")
  2b5004956aff ("arm64: dts: qcom: sc7280: Add clocks for QOS configuration")

Herobrine systems fail to boot due to crashes like the following:

[    0.243171] Kernel panic - not syncing: Asynchronous SError Interrupt
[    0.243173] CPU: 7 UID: 0 PID: 1 Comm: swapper/0 Not tainted 6.11.0 #1 c5464041cff584ced692726af2c4400fa2bde1db
[    0.243178] Hardware name: Qualcomm Technologies, Inc. sc7280 CRD platform (rev5+) (DT)
[    0.243180] Call trace:
[    0.243182]  dump_backtrace+0x104/0x128
[    0.243194]  show_stack+0x24/0x38
[    0.243202]  __dump_stack+0x28/0x38
[    0.243208]  dump_stack_lvl+0x28/0xb8
[    0.243211]  dump_stack+0x18/0x30
[    0.243215]  panic+0x134/0x340
[    0.243219]  nmi_panic+0x48/0x98
[    0.243227]  arm64_serror_panic+0x6c/0x80
[    0.243245]  arm64_is_fatal_ras_serror+0xd8/0xe0
[    0.243261]  do_serror+0x5c/0xa8
[    0.243265]  el1h_64_error_handler+0x34/0x48
[    0.243272]  el1h_64_error+0x7c/0x80
[    0.243285]  regmap_mmio_read+0x5c/0xc0
[    0.243289]  _regmap_bus_reg_read+0x78/0xf8
[    0.243296]  regmap_update_bits_base+0xec/0x3a8
[    0.243300]  qcom_icc_rpmh_probe+0x2d4/0x490
[    0.243308]  platform_probe+0xb4/0xe0
[...]

Specifically, they fail in qcom_icc_set_qos() when trying to write the
QoS settings for qhm_qup1. Several of the previous nodes (qhm_qspi,
qhm_qup0, ...) seem to configure without crashing.

I don't really know what's unique about Herobrine systems vs other
sc7280 systems that presumably work fine. I'd guess there's some
conflict with something configured by the boot firmware.

I'm submitting as an RFC just to get thoughts from people who hopefully
know better than me what might be going wrong here.

Fixes: fbd908bb8bc0 ("interconnect: qcom: sc7280: enable QoS configuration")
Fixes: 2b5004956aff ("arm64: dts: qcom: sc7280: Add clocks for QOS configuration")
Signed-off-by: Brian Norris <briannorris@chromium.org>
---

 arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
index 2ba4ea60cb14..59203ce58c61 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
@@ -394,6 +394,16 @@ &vreg_l2c_1p8 {
 
 /* ADDITIONS TO NODES DEFINED IN PARENT DEVICE TREE FILES */
 
+/* QoS seems to have conflicts with boot firmware on these devices. */
+&aggre1_noc {
+	/delete-property/ clocks;
+};
+
+/* QoS seems to have conflicts with boot firmware on these devices. */
+&aggre2_noc {
+	/delete-property/ clocks;
+};
+
 &edp_panel {
 	/* Our board provides power to the qcard for the eDP panel. */
 	power-supply = <&vreg_edp_3p3>;
-- 
2.51.0.rc2.233.g662b1ed5c5-goog


