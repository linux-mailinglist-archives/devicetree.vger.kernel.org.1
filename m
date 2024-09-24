Return-Path: <devicetree+bounces-104808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C75C984319
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 12:07:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3A91EB29CE3
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 10:07:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E93581741D4;
	Tue, 24 Sep 2024 10:06:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="n49ns0a2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E80A161935
	for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 10:06:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727172391; cv=none; b=LE6P47jKSb0vbAHvGsIVNke+7VHBd8gwa9AUbhJQ5BQ9RVpf9RECCAQLHmeHGpP34D8gSfOfXAT5m5vQMPRk9A0Rw/waujcDY1Rjn0L9EWsk8JQT4MbScJptdLTxQB67b3lNHU7KOoYQd5gpKOo/agXW4uDYgLrjvE81dpy79ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727172391; c=relaxed/simple;
	bh=uFBNQmD2vrLe+prL0APgi2ONH44frRph2rgZnbcd1E4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UUUp5SjpqhGzc35fGXngOjBF08CBT+xsXMPGPfwpe3FEFC4BLhYNbdo4xEWjTwSo9vMoBmAiC35FBEDYaILQgXe4F3azm7bC2vLpSOPUP5Kz+wUL3FjdDb2Vg7HG6cca8pJjvJjroUrwAEaHaZqGMswRTQ1msm4tLBPbSSyGdnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=n49ns0a2; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-5356805847aso739013e87.2
        for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 03:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727172388; x=1727777188; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qrPuVMpxKxzDUkqxv+mRTsE3nQBApcGGwM0OMGIZBRM=;
        b=n49ns0a2KhFZ7UJ0NaX0Gy45HLfmJ2UKDMKLCwMaq7C3rNeX/V3PIlbskhHGlN5ixn
         J2SwyHtIqWxdA/8yHWj4RnwQh2fs0T3Evbk6taZangERV1EswKnWe2yH4FwwEphX90HK
         I/5NmFZ3CQnGPJAzLmEaoBjYtkczxhjzrPKOsArBQI4SiuVwZTW3up4PSPtJByvafh7g
         cWq7zJ5HdCdG4+ozNULmfz1f98I9Jc/1Z26nzWFRM/t6cIsKHZzxLdtmOpIKMQHQGRdA
         wJkdE2rRSK1FBrRaQtw8/6tEwCRkEtoxM4m0N5mIHg1vGwywpDrRxT+L+Kb8Vjvm73qp
         SlMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727172388; x=1727777188;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qrPuVMpxKxzDUkqxv+mRTsE3nQBApcGGwM0OMGIZBRM=;
        b=DoaNyc1Gux3nlWCc3NZQ7aUbdh2O/3bTPULobRfW6zn1PZvuHGfRr6VSJciSFJElOR
         uwV7TEr+e9x2W0rJ1bd/h//UGvwR8qTKxSJmfj8YCH8oIklDXpD7qwwnWFbVwbzlXay1
         AhfDWJ2L/7V8IXgOQeCUYpZaDhe58Ii2S9Zeugu1DKliaj2+/32BkTo0BWCxT1J5qEuZ
         S5+bUU8cOy1l2tV5bMYalHgXgy0TzlXk86qs5HYxVKVBWWUEg42Fe/yZGpRm09poOaG9
         vRvJOEc2usWLWC4cwzXMory8t9QWBoL+kZoGUyyFYacGm1JF/yFlCkNKJLz7pcMigcYu
         JSjw==
X-Forwarded-Encrypted: i=1; AJvYcCXqidDcrfqLwTWBGCFhxOUjKr9RNc7WAXk0S8fLZ3fFiK7/Zba3LSPRYOpmJKqC97EZkXLzlIp592ed@vger.kernel.org
X-Gm-Message-State: AOJu0YyP7/0eRYwv0WnwXcoFfpANHVfBiuPOJExHJKFH4+0LBDlKdmzS
	N5W61PRwPMWF1WRquhQ0NJXkIdeiGnOPNhijLuv4sDW7l9HY1slybHHwkV0Jo4Y+OsBjcWSWn/a
	SfJs=
X-Google-Smtp-Source: AGHT+IHGt/gVy+v+h6Rs0DTLFO71iL7qTs+/WooHpp4/jUd8ZIjSkEO0e785jD1NFQVUaw77KcMxYg==
X-Received: by 2002:a05:6512:3ba1:b0:52f:cf7e:b1bc with SMTP id 2adb3069b0e04-536ac2d71d8mr2285950e87.1.1727172388163;
        Tue, 24 Sep 2024 03:06:28 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-537a864d937sm156713e87.273.2024.09.24.03.06.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Sep 2024 03:06:27 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 7/9] arm64: dts: qcom: sm8650-hdk: remove status property from dispcc device tree node
Date: Tue, 24 Sep 2024 13:06:00 +0300
Message-ID: <20240924100602.3813725-8-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240924100602.3813725-1-vladimir.zapolskiy@linaro.org>
References: <20240924100602.3813725-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

After a change enabling display clock controller for all Qualcomm SM8650
powered board by default there is no more need to set a status property
of dispcc on SM8650-HDK board.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650-hdk.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650-hdk.dts b/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
index 127c7aacd4fc..f00bdff4280a 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
@@ -814,10 +814,6 @@ vreg_l7n_3p3: ldo7 {
 	};
 };
 
-&dispcc {
-	status = "okay";
-};
-
 &gpi_dma1 {
 	status = "okay";
 };
-- 
2.45.2


