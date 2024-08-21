Return-Path: <devicetree+bounces-95560-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 92926959F30
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2024 16:01:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2709AB22E8E
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2024 14:01:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 403641AF4F3;
	Wed, 21 Aug 2024 14:01:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wRcK7bGY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83782189908
	for <devicetree@vger.kernel.org>; Wed, 21 Aug 2024 14:01:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724248885; cv=none; b=HIh5QrTNSrnENaCUt6Qs0SOTUcgz29L2s+bngaTkn6dLRWyvaLO2lKqY5KpNpzmi5deKtXe/LYmKndUzRbS6YnrS8vzjqxn7jUijfcWHlziPRPlEEfDkZfk4RLFMU0vDjomYlTbW4veHhp7K8WPEJmRsiXFPRf5pwaCPQ2sl4R4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724248885; c=relaxed/simple;
	bh=Daq610+UqxkC20cK5k+fETXHquN8huL0hKtlSrO1pPs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=G8hqN8DQonFI2BYqAhbYKBeGVm7gwG5m4qf6G98Zkd99FuhvBoa0+ek0qaEQqOd0YguB3jVh5JrgO5AXcL0UUNS6H7L8/AGsL1a+9unu0YvNKFpMtKLOUXdzQBjtcRKeEsXfih7NBADQrLPa8EHlXy6ixk8mUYEQlDd4KIF7Y9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wRcK7bGY; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3718d1f5913so25761f8f.1
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2024 07:01:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724248881; x=1724853681; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yD0krxOY5/W6QTrcUKkfr8cJvRntUma9bL5Bgx80An0=;
        b=wRcK7bGYzGHGk852gdY/cH6ngrKvh+FTqBSZ/BpKFjYjN3TOlTQmIge5TU4vrsfcpB
         p4GXu0bSMHRwqRfV71XggK3Y0iigBB3Xq7X71QpyBATXMn++BShZp9mj/+HXE4bcOVdF
         SHMMsGGM1cxiwnR6xJ2UE6bbNN3U4P8+dco4iQ2/gbp3rNIWMS8gB0+i2FhiBV8gtnw8
         qilIXoapuG3Xab+0RnM08sPxruZrEBCSBxiZcWN9qjGwxGWbtc9ZPCIowrvQ9b8kvFIv
         Xj2zm4notIxyXNBlhZZikmzW20fK0b+gnQAZFB9n3UQHT/i1622booKXQipDeusQITCL
         cw1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724248881; x=1724853681;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yD0krxOY5/W6QTrcUKkfr8cJvRntUma9bL5Bgx80An0=;
        b=m2KiIf8Xh8Kud272sGFV80zcMTlE8o41DVNjomvWGiMtDh/Zh9+n3OCYYjXFHCP9GQ
         BvFziwlkJsglwO/Ac9zvo5DOdVNS12s2/QzJvn+H05iXU7Gpy17SizqS/aQuHpEVcQ9n
         UwhpGas/lpVZwHihj+NhqXl9vOoCjAYytqrd6L6J+tDbaN20b5SKm3QyEazXvouYWkiB
         k2Vhvr8KW3xbT8ttC6U9r84zTZvjazpmEIenHqGvk+jmFDIgIR/BVfYsWirP2Gdu3g49
         DvcdKbLccnSHu1s23skEyxMaxRTdit60Jyp6w9PkXMwh2Y4TZ83gJEVqMq8phuBW4Cwq
         IZDA==
X-Forwarded-Encrypted: i=1; AJvYcCWV/6W0HoCmbFnj42514D4Wcjb00DBJjufuJPXgxS6Zndlj368Q4bJrPzmZHIByubtwH2j86ky62TI5@vger.kernel.org
X-Gm-Message-State: AOJu0YxkECGCghZNl0h0gOdUzJQHoYk/i8IntWrrefCD3IpTp23IOfB/
	qYMa+hAGB0TBI93U4nEzMsqCY0EF0Z7WR5J7aTFmQnJOh2tEvKJaEvb0ym3dF5E=
X-Google-Smtp-Source: AGHT+IFfLN4lQ92bV+NBTSr+WjZM2MEigBvBEVElGHbZU2cSj86dC1PrUMnkUjiJoBqWVFzwdKKWfg==
X-Received: by 2002:a5d:6d85:0:b0:367:9505:73ed with SMTP id ffacd0b85a97d-372fd82898emr947949f8f.7.1724248880506;
        Wed, 21 Aug 2024 07:01:20 -0700 (PDT)
Received: from krzk-bin.. ([178.197.215.209])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a867c7bb3bcsm69132866b.132.2024.08.21.07.01.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Aug 2024 07:01:19 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH RESEND] arm64: dts: qcom: sm8150-mtp: drop incorrect amd,imageon
Date: Wed, 21 Aug 2024 16:01:16 +0200
Message-ID: <20240821140116.436441-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The SM8150 MTP board does not have magically different GPU than the
SM8150, so it cannot use amd,imageon compatible, also pointed by
dtbs_check:

  sm8150-mtp.dtb: gpu@2c00000: compatible: 'oneOf' conditional failed, one must be fixed:
    ['qcom,adreno-640.1', 'qcom,adreno', 'amd,imageon'] is too long
    'qcom,adreno-640.1' does not match '^qcom,adreno-[0-9a-f]{8}$'
    'qcom,adreno-640.1' does not match '^amd,imageon-200\\.[0-1]$'
    'amd,imageon' was expected

The incorrect amd,imageon compatible was added in commit f30ac26def18
("arm64: dts: qcom: add sm8150 GPU nodes") to the SM8150 and later moved
to the SM8150 MTP board in commit 1642ab96efa4 ("arm64: dts: qcom:
sm8150: Don't start Adreno in headless mode") with an intention to allow
headless mode.  This should be solved via proper driver quirks, not fake
compatibles.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Resending because it was marked as "changes requested", but no changes
are needed.  Konrad suggests to take it directly.
---
 arch/arm64/boot/dts/qcom/sm8150-mtp.dts | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150-mtp.dts b/arch/arm64/boot/dts/qcom/sm8150-mtp.dts
index 286350ac7751..256a1ba94945 100644
--- a/arch/arm64/boot/dts/qcom/sm8150-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8150-mtp.dts
@@ -355,11 +355,6 @@ &gmu {
 };
 
 &gpu {
-	/*
-	 * NOTE: "amd,imageon" makes Adreno start in headless mode, remove it
-	 * after display support is added on this board.
-	 */
-	compatible = "qcom,adreno-640.1", "qcom,adreno", "amd,imageon";
 	status = "okay";
 };
 
-- 
2.43.0


