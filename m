Return-Path: <devicetree+bounces-217328-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DE929B57580
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 12:06:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 36F6E1AA0793
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 10:07:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D92352FB08A;
	Mon, 15 Sep 2025 10:06:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qB6QehD1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com [209.85.221.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED7FC2FA0D3
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 10:06:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757930790; cv=none; b=DdDgQI2BlujWwuDS003Xu0ORvrxNC8Dnp4fNMGNMHz2D7/EAeKTbUlxj/MyDNU9CJz7/pZ3BvDbG7w4Sclxb+ppbwbjMsAjBxt1scuyJBFxVJy5PKqWsh/Twf7JATdmI9Nn/Zz9PznfeDFQZ/GrVlnhmiokYDAhrFbzCraMYh0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757930790; c=relaxed/simple;
	bh=Lflukm9inkFHDen/xv9DPoJ94WLjeXwlcVLPUTjmVXI=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=KEO86Xf57PkuX3ka3vvWqjkxbHXHuPUqJtMfR52QRiuskTsRedQxJQ+WbE/yUQzdaX6tQdQb+NcZ+VcBgVMF5yDxG1RTXfgJJ0LhCOM7V2urJQUkwd1WEAC2xOpXIS2HPoV7GBAxPvV6Qfici6HtmU7A5sgZ5qHNC0ssgzd3Qk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qB6QehD1; arc=none smtp.client-ip=209.85.221.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f66.google.com with SMTP id ffacd0b85a97d-3e9ca387425so963851f8f.0
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 03:06:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757930787; x=1758535587; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=n7wfHA9fiq8GV6iKYUSldM7skudAMrfG9DouOO2pRFQ=;
        b=qB6QehD1Hqf3YXkQKfYncc8ODDLc6mTSi7UTvDw/KJAZoX56rm3Iyh1+gtIWyyIcAy
         ZP5nz2vtnT7BIjPymn4NOgtBWiZ9qNsWqBAfLVEEtmxCD8FcHeMdGO8q7atkiOdx0GLG
         BBot1s8yktq9E2U7ONVhB7s7hxcsUdLouGg75XjLSz62uqwxj45eVgqa9HWZb2JpwLJV
         2bCBOwmf3DJ6FXR1tZhSsKtAcSRw9FvO66eamxNUYIt85jiGYOkmkXMqd0OrcICXoT3W
         rxTGWqqX9bJl9Z7Fk8cHsX/XcdKUCsA823yUxxNe9u7HfFyPwd6XljNIYezj33qon/RW
         VCBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757930787; x=1758535587;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n7wfHA9fiq8GV6iKYUSldM7skudAMrfG9DouOO2pRFQ=;
        b=Oa8GiiDFshjbatsr4XrJtbA21RpyZ0+8yEsxJxOOXq9OTvn+G0fyAS+iZcgqLnDyNA
         A4TDKzsmX4jVUI0gSl9WaBsGDoA95EBCJmdOlvCYrDAwaUrzuzTFeSyYEVPhg5iYpUqv
         KYDUDAUKYrwtxYRy93FefMUR736qI3srbgXiemj5wO8E8oHF7JIRS/zV6EyboBXuwesm
         me9m9Zm61nMnR0rOw63xR8qwQusiDnGJkESqQ1GXoILxV2eggJho7AQqZVCCTJWyJmfT
         yZORwAmPuIDTfgVaidGKWXDGABE4Q15Fi3nyKzPfyJ+G/A04/JvPVTd7pVFWNkI4KQMr
         3dbg==
X-Forwarded-Encrypted: i=1; AJvYcCVrZtiuqpuP/uCDcluLwqD8sR3iDMK8oUBOeR0pd+eExLbrKd+WvUYGR9VhkUFAGYmKhUyXxOfHf6n3@vger.kernel.org
X-Gm-Message-State: AOJu0YwXw5+0oLsihz/mq6ZnZVdvvm1TFagnJVVwzpnV8PxU1DD/qunr
	9tkIWkiTPoCL3jQsReFU5z2mhNFoQpoAWeh0LjRFi0BpOPXRGRN0+67q88+2jxhEQ9E=
X-Gm-Gg: ASbGnctRltxTfH9zrQQd5pwZcprWYxS6g5lS68u/9+vNfnBepTlkZMVl+5Uq4yk/dXm
	ERJe8IPuIgjKo1fOC2jcNIAd0nnZtpM/+hnz4ei0yVqghIxnONQ33ImzLlsoorqqvA7IJ11etN7
	qwdjnv1H+hy7+JeZVBPZltNQKKc40ZPLL5uKKw6l8PcnENgRLMAKHu871LqSx19wSZht2KBsc++
	YIWm12R/BsfOpb/lhrF/FiGnCmH+004rp6OBxikUYEHQIPEuKPoooSRtP7bvnyLpzGzkqP5Tiph
	CRURjBgDNlsD3i/iuHvA0AXpWEjgDPy7/+4AzQpr1khcJiN18+pZCs52SXADkEqFHQBPIUxRtSp
	YFTsF//EQLmlj2lbmpRSeUy+ScpqGqttGBYyAHt0ceE913/2uTi1RWfEN
X-Google-Smtp-Source: AGHT+IEWX6WiB96O6KkfXRMglqxuS6BwP39e3jC9S9DmPdpANKfiG7fuuUfc7A6J+a1uJC5XnIE97g==
X-Received: by 2002:a05:6000:2012:b0:3e4:3e20:dafe with SMTP id ffacd0b85a97d-3e7659e835dmr11274354f8f.33.1757930786677;
        Mon, 15 Sep 2025 03:06:26 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:41:eee1:5042:e713:2e9a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607cd4cdsm17209127f8f.37.2025.09.15.03.06.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 03:06:26 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Subject: [PATCH v2 0/9] arm64: dts: qcom: x1e80100: Add IRIS video codec
Date: Mon, 15 Sep 2025 12:06:11 +0200
Message-Id: <20250915-x1e-iris-dt-v2-0-1f928de08fd4@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABPlx2gC/1WMywrCMBBFf6XM2sgkrUJc+R+li5hHOyCJTEqol
 Py7sbhxeQ73nh2yZ/IZbt0O7AtlSrGBOnVgFxNnL8g1BoXqghq12GRTTFm4VfgHDnowskdroD1
 e7ANtR22cGi+U18TvI17k1/46Uv51ihQorr01AYNrC3t/UjSczolnmGqtHzqz/lanAAAA
X-Change-ID: 20250909-x1e-iris-dt-eb0494a130ca
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>, 
 Vikash Garodia <vikash.garodia@oss.qualcomm.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Alexey Klimov <alexey.klimov@linaro.org>, 
 Anthony Ruhier <aruhier@mailbox.org>, 
 Stefan Schmidt <stefan.schmidt@linaro.org>
X-Mailer: b4 0.14.2

Add the necessary definitions to enable the IRIS video codec for
accelerated video decoding on the X1E CRD, Lenovo ThinkPad T14s, Lenovo
Yoga Slim 7x, Dell Inspiron 14 Plus 7441, Dell Latitude 7455 and Dell XPS
13 9345. The additions are largely copied as-is from sm8550.dtsi with some
minor changes necessary for X1E.

The PAS interface used to boot the IRIS firmware works only when running
the usual setup with the Gunyah hypervisor in EL2 and Linux in EL1. It does
not work when booting Linux/KVM in EL2. The code to start it without using
PAS exists already in the Venus driver, but was not ported over to IRIS
yet. Discussions how to model the video-firmware IOMMU are still ongoing,
so disable IRIS in x1-el2.dtso for now to avoid regressions when running
with KVM.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
Changes in v2:
- Reword EL2<=>KVM<=>Gunyah slightly to avoid confusion (Trilok)
- Fix typo in comment copied from sm8550.dtsi (Alexey)
- Enable IRIS on Dell Thena variants (Bryan)
- Enable IRIS on Lenovo Slim 7x (Anthony)
- Enable IRIS on Dell XPS (Stefan Schmidt tested it before,
  see Tested-by in initial IRIS driver commits)
- Link to v1: https://lore.kernel.org/r/20250911-x1e-iris-dt-v1-0-63caf0fd202c@linaro.org

---
Stephan Gerhold (9):
      arm64: dts: qcom: sm8550/sm8650: Fix typo in IRIS comment
      arm64: dts: qcom: x1e80100: Add IRIS video codec
      arm64: dts: qcom: x1-el2: Disable IRIS for now
      arm64: dts: qcom: x1e80100-crd: Enable IRIS video codec
      arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s: Enable IRIS
      arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x: Enable IRIS
      arm64: dts: qcom: x1e80100-dell-inspiron-14-plus-7441: Enable IRIS
      arm64: dts: qcom: x1e80100-dell-latitude-7455: Enable IRIS
      arm64: dts: qcom: x1e80100-dell-xps13-9345: Enable IRIS

 arch/arm64/boot/dts/qcom/sm8550.dtsi               |  2 +-
 arch/arm64/boot/dts/qcom/sm8650.dtsi               |  2 +-
 arch/arm64/boot/dts/qcom/x1-el2.dtso               |  5 ++
 .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    |  5 ++
 arch/arm64/boot/dts/qcom/x1e80100-crd.dts          |  4 +
 .../qcom/x1e80100-dell-inspiron-14-plus-7441.dts   |  5 ++
 .../boot/dts/qcom/x1e80100-dell-latitude-7455.dts  |  5 ++
 .../boot/dts/qcom/x1e80100-dell-xps13-9345.dts     |  5 ++
 .../boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts  |  5 ++
 arch/arm64/boot/dts/qcom/x1e80100.dtsi             | 87 ++++++++++++++++++++++
 10 files changed, 123 insertions(+), 2 deletions(-)
---
base-commit: 590b221ed4256fd6c34d3dea77aa5bd6e741bbc1
change-id: 20250909-x1e-iris-dt-eb0494a130ca

Best regards,
-- 
Stephan Gerhold <stephan.gerhold@linaro.org>


