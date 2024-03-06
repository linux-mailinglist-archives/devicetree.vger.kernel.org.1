Return-Path: <devicetree+bounces-48673-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C06B873076
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 09:17:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DE207283B75
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 08:17:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B56795DF00;
	Wed,  6 Mar 2024 08:16:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Jrs5i+4R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB6755CDF1
	for <devicetree@vger.kernel.org>; Wed,  6 Mar 2024 08:16:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709713015; cv=none; b=L7KDyExwhZZBYQbSZXaw+FAO/fa1ZB4ivUtRrUBVRoKNtfZEVzOYfJKiIWv+k/kytICz0HppqbquHpw5ucATB4sm1wSXMEE3uSsNTec78CMMrYRy2TaLgvp1p2+TKc6oy96Ea/CZON75OmiG50iyrwfRh4mtwj+v8Exf5b0vIS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709713015; c=relaxed/simple;
	bh=9uiYDBpJ8s46sR33Y+BMEdKtwAlaQcnmoofd3iM8ghU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uSJpwznDc7rxZ7P/ass8u8nfOzg1yw6KI3gFln5wCPeGxIJr6CCHNhEiJvHSiWpdTx6/avbAgg0uYs0xv5d6xE5ERmCOOWNV8vR1PmNjWEPCQ8vGGoJ2b8Glf7KV/KwXh425damjJrCprUdUoEOJbwxaj7VepUDDNgia+TZTbqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Jrs5i+4R; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5135540c40dso1774840e87.3
        for <devicetree@vger.kernel.org>; Wed, 06 Mar 2024 00:16:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709713012; x=1710317812; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3YkceKDYceYDeQ4XBB8A4mSK+rDJiaduuPabI+Vyi2Q=;
        b=Jrs5i+4RcW+q4TcOX6HGJyawHLe4Ka0HJX4B09o9y4xYuBWCld9AA1csg28n/kDE34
         TVsYDbN82C8bdQuRYszI3E+KcF7FLo5kGP8zlq0nkSWAIOufZiCm5c8sWVl0u7tZhvdF
         vReAZKM0ozrNW6ty6bn2R5GTWUXtpK80tGFxqlbTNax1UAoYPRXiIIXptjY6p2ORrDht
         W/xCsC4sFgy/IF/js2G8LoMR2Jctv9n0m85aE9s7m9nrrdaMrcmoaO2tHyQ+fECMLUfI
         uuIQ5zUMG6mXJ+ks5/kMmpTaVmkRCGPVYE3OVSE5gM1r3fYPlJtte9IZyv6r4YGKqu06
         3S9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709713012; x=1710317812;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3YkceKDYceYDeQ4XBB8A4mSK+rDJiaduuPabI+Vyi2Q=;
        b=I5qASqLvj8fJdsnCO0zuIzuAYNkp8Jc2xH4wXhufHoAX9z/GebHPcTcc/6GFy/sU5z
         z5D/nxyDK17WSQq8ZzTwGEzw577f1YzCd6xj/jKUpFtYMsrqYcBKcIDA4EaoHTlaFAIQ
         tkIGGUM/U6DmJJfJ3O268qKqD2shMeCtJ1FMVIbVz8co3n7WVnzo6PRKkALqN0RlyfGW
         mnoAi52dhzOMOBAr6WmFxuo8+MjGwHQhlOD1z6kFkQFvZx+fzw8jc9TFMJ+86R/BL17r
         Llo35uNKSjoUD1RG9xHtcdO7okCOBlE0QDdGNio0+4bSUPTlgS2Rc0UOWfa9vChVTeTw
         qryA==
X-Forwarded-Encrypted: i=1; AJvYcCUOswC5768UL9lgfT7CXbQREYjxtgVSPOyciQZ11oNAxVvKmM+wTZKGv/xmuiRMrIuYTMbBt10pKG3XGPJDxG7/h95l4x6RAXZvRw==
X-Gm-Message-State: AOJu0Yy2f7meeVgMG+swhehECd123PJaCpw4YSmhbeDhvL8pomvvNQKG
	CDd4NBt6hV6d1BIZFnM2Mhpa2chNxU6Fwk5A8O+cgPdgJFnYERVH5Xb2l2Ne/sQ=
X-Google-Smtp-Source: AGHT+IF+ClwuDShqfVljL8ffyjGyZsSrmz6wYNutDFQ/n+Qm8+lFOu5G4vbxasQpzp/6IC/gQvAotA==
X-Received: by 2002:a05:6512:48b:b0:513:2047:c9b4 with SMTP id v11-20020a056512048b00b005132047c9b4mr2641290lfq.39.1709713012085;
        Wed, 06 Mar 2024 00:16:52 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id s9-20020ac24649000000b00512dc23bedcsm2162366lfo.99.2024.03.06.00.16.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Mar 2024 00:16:51 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 06 Mar 2024 10:16:47 +0200
Subject: [PATCH RFC v2 3/4] arm64: dts: qcom: qrb2210-rb1: add
 firmware-name qualifier to WiFi node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240306-wcn3990-firmware-path-v2-3-f89e98e71a57@linaro.org>
References: <20240306-wcn3990-firmware-path-v2-0-f89e98e71a57@linaro.org>
In-Reply-To: <20240306-wcn3990-firmware-path-v2-0-f89e98e71a57@linaro.org>
To: Kalle Valo <kvalo@kernel.org>, Jeff Johnson <quic_jjohnson@quicinc.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: ath10k@lists.infradead.org, linux-wireless@vger.kernel.org, 
 netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=782;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=9uiYDBpJ8s46sR33Y+BMEdKtwAlaQcnmoofd3iM8ghU=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBl6CZv+iVyo1wfbrypxaHKx3SnslwDEkjXP9nVJ
 FnW1xP38nWJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZegmbwAKCRCLPIo+Aiko
 1fZdB/9HYHeIyWpnh+TKnqzHb6FoB5f0awNGnVx6mfHM9PJzzMCvJL7aCczg/cRSASw8TIbpjWi
 BiBX9XdC+nMAuMbPm/xbHXq3PF/wFp+ZLR0OyaQGUG914jPkzI2rfdlSb6y+aG+CqjgqqjnUq9/
 gdcEiwmViO18zRvxlC5tbu2wniHhJmWDHgTdKMhFg6q1EHk50P+jBHboDUcJKgH0lrIz1Kolb/V
 BDbUMIShGQMt2tSyQXqKWZ+/aQ2fDTFzhGIqPUp8stbBrYG1gZH5HF45enNZoSMTOsakdsjI/Dr
 iPQ+PxfGxurrtSPUEJ3j3TE+/BRg+5oNwHEL68LHAlRyDAS8
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Add firmware-name property to the WiFi device tree node to specify
board-specific lookup directory.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb2210-rb1.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
index 64b2ab286279..338a12f98bfe 100644
--- a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
+++ b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
@@ -540,6 +540,7 @@ &wifi {
 	vdd-1.3-rfa-supply = <&pm4125_l10>;
 	vdd-3.3-ch0-supply = <&pm4125_l22>;
 	qcom,ath10k-calibration-variant = "Thundercomm_RB1";
+	firmware-name = "qcm2290";
 	status = "okay";
 };
 

-- 
2.39.2


