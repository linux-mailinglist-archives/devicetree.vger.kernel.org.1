Return-Path: <devicetree+bounces-148374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 228F4A3BD0F
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 12:37:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4AC643A8880
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 11:36:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D2C71DF251;
	Wed, 19 Feb 2025 11:36:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V+J8iX7Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F78B1D9A49
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 11:36:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739965014; cv=none; b=CHeJbHaKFk632tEpIIJgAWPYLnxBrR/V7jmJyD6MtbYpXFg0iztrkfyoOjs8LURciTkianeuiObBnwZfivgOReTJstmB3BP7n1tL9+ptMhNJe0wxhbihNst4XVn7oIydzvuERgSJZB/hN7yjxH3WxYzhqNKIo20/HKFs/ShW5QI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739965014; c=relaxed/simple;
	bh=3H69X3Cqj2JbC59hSmaYbJvrvfm7od4X1ekR5TALqp8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HiZWjzKVVQ9S3TNxNKuk6unhbh7jbtvkQoVZOVssj0Q42I82sTygTKnK3IV1fXXf71DLLyBxt+ux2eTnv2oKyt+pfdbDzmB1T+xbNojBGyKN5RWYTcM1859O7GmRmTxbgKb5JH0XeUiEvz/hEX0+U+5uSa93txZSiaUTWZeclwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V+J8iX7Q; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-438a39e659cso45251835e9.2
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 03:36:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739965011; x=1740569811; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ueWur+NN/gkMnNOeqW0FEJmxaSPUKRn8QUh96pYaGz4=;
        b=V+J8iX7QZLwH0YkXfbzbrUUBQJ4e5VhNgw7gYbEn/VZIgTTP0Htff234eXbOtYg3Fn
         YW/B0DTFyAlOfd1F1dlk27rmiTrqQYaFuI1WRnkFrxDij7OBsF0oCvJVZTRCy6u4PyoN
         mr6VYXIvrujmqOVwV6U1YR9YJnTAIg0GfFY8orSlhg2nRuA1sgJvRDeAzuzG/bdTsnJv
         XiH8ZTRk1RSa6ONhH+Jwojq+MD76rj3uKR86uu5sbovvRDvTpaOEah35FqR3kgCTwEI7
         KYuPqxqAJETM98lPhwotBQiJY3lJdLNJnV5qLePJOhNwhtUe2LzYjUsU+Of0Px/B7ieo
         Jzog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739965011; x=1740569811;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ueWur+NN/gkMnNOeqW0FEJmxaSPUKRn8QUh96pYaGz4=;
        b=L9VRgqFhc2kUs7w+B3fO6pS1xoj76CQjc0wSsQFJHtWMW0coS/avWDojMXGNBTfeh0
         04hUp8gKg+O7gZdF2Uua9qtNfxPlZ4d8FOiCtCPxkVoTLvDlVNSTx4YfFD60Ade5odqv
         QMhV93nU7zCuVbJDbP62B+gl3uG5z40g2RvdwoHd4llowE28S68cvuPlLB/rk6V4knBi
         jJtKKXLhQIsQsB9o2bGI6obKn+yOQLKe/mMV1364/j97ItymK4u4d+uewOHKHzDWCME5
         89+/afs4YGi8iu5mVwoWuCM8hGV595+QuwwpdEJlvDhvKM4teOIix4tkYnMQnMrIZ0Oo
         vnOA==
X-Forwarded-Encrypted: i=1; AJvYcCXxry85ZZ0+BADhUI9WJt2I0RpkQoCdFuJLgMnZlWbli00U2X5+wgXL9PR78DUEiDvFhJTulkZBn6v5@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6DP2baOQFa3xWOh7YETcoxtCD8orW5yyanRD8DTJWOC4aiikc
	6LQbP/qPXm6IggRUA5r/UzHyoKb+L1CWOMDqS3/ZWnJHI9H4DKuajVxMeZB50AI=
X-Gm-Gg: ASbGncs4jRtXwEL0s6xkZ+oNGIhdqNWgZlJCVHuX9G6B8nVQTteCbg1R/Zb0o59nYV1
	Ht5Cs56VrwrsNTJg79nb686r8mdaBTPXIdGSZYjz2E/5RrgCb9ql+b1IvqOSV3C0+uq/otx3Uat
	mA/6uDNcNQ/Qd0dgGHiLOVBMwv9A++L9XfDVsEG/2nhuwfu+kbiRkpNL9kwlrNfNd1DWrXSybuR
	z5zDW7JhZHwe6KrJThei3e5d0N6nGmP4VwAcrprve52gTHnsBssuAe4XvV3/MsH/f6K8SfpOLRX
	KOWPNvzQB0UBL2LUC45qWPJItEXeRg==
X-Google-Smtp-Source: AGHT+IHj7r3NGsZDWby/4EjvSUDybeVrnPg+FYZgiGNi+BxmxRTlu3icH2awOt0iOOQQCiKEmobYIw==
X-Received: by 2002:a05:6000:188c:b0:38f:2ffc:1e99 with SMTP id ffacd0b85a97d-38f33f51346mr15874258f8f.49.1739965010576;
        Wed, 19 Feb 2025 03:36:50 -0800 (PST)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:8630:e1af:c2ac:8a22])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4399600257asm42437905e9.4.2025.02.19.03.36.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 03:36:50 -0800 (PST)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Wed, 19 Feb 2025 12:36:18 +0100
Subject: [PATCH 1/4] arm64: dts: qcom: x1e80100: Fix video thermal zone
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250219-x1e80100-thermal-fixes-v1-1-d110e44ac3f9@linaro.org>
References: <20250219-x1e80100-thermal-fixes-v1-0-d110e44ac3f9@linaro.org>
In-Reply-To: <20250219-x1e80100-thermal-fixes-v1-0-d110e44ac3f9@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, 
 Akhil P Oommen <quic_akhilpo@quicinc.com>, Johan Hovold <johan@kernel.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2

A passive trip point at 125°C is pretty high, this is usually the
temperature for the critical shutdown trip point. Also, we don't have any
passive cooling devices attached to the video thermal zone.

Change this to be a critical trip point, and add a "hot" trip point at
90°C for consistency with the other thermal zones.

Cc: stable@vger.kernel.org
Fixes: 4e915987ff5b ("arm64: dts: qcom: x1e80100: Enable tsens and thermal zone nodes")
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 9d38436763432892ceef95daf0335d4cf446357c..e349cbf6a2665695b5cc961cf9d53e7182e68e7f 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -8727,15 +8727,19 @@ mem-critical {
 		};
 
 		video-thermal {
-			polling-delay-passive = <250>;
-
 			thermal-sensors = <&tsens0 12>;
 
 			trips {
 				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				video-critical {
 					temperature = <125000>;
 					hysteresis = <1000>;
-					type = "passive";
+					type = "critical";
 				};
 			};
 		};

-- 
2.47.2


