Return-Path: <devicetree+bounces-51713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1F58801B6
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 17:15:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 406481F213B2
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 16:15:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80C0E83CD6;
	Tue, 19 Mar 2024 16:13:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Tnb9Cit5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B473683A1C
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 16:13:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710864832; cv=none; b=Uge49YEPYWwgYUAz1hRRuVSzPDWktTf6zg1kUCHqqG9jQj5Xx+JT5TyAwqpJ5R/SwG6+e38DGv8CaWpit1wL5ca7HW8TBut3jusGoaUx4aqRFkJSetpmc68LOtTTVcSE5Cp1PjwZ89uzoOHQEGTNF6SmIR0kTXwPda+9xAIdJxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710864832; c=relaxed/simple;
	bh=rqTT2LFE/EriY/sI55NVs82+QuhEPrh1quGlno/eeng=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=duJgxdjjmRGIVRO83rmFMZwtTfF81PavbQ2mC9uFIzCinh3vYVVRF03fyFnrAkS1Dj5nQ7JIjXsN6hemSXp2pquN/drM2rvN1aTPvs0ltlDAtJ5oafHSyuNmhCgR/+e/4pQelb521h2+o2RZCcJpqm0TVusDBVOHT7ZDSI3CjUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Tnb9Cit5; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-513d3e57518so6241721e87.3
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 09:13:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710864829; x=1711469629; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CaO4eTXrc8bS0xtP0sgmAWvsE/xaS0w0srPaY2mNrgU=;
        b=Tnb9Cit5A1+0LGRYXHFNbMuPQ3FANcLt1pEyXbEcL5t3RK/jBtTnWdbOK700Pq1gow
         ULOoGlLOdkiSJmQiBMpwBz45uWOb+Rcsca6Rjn8I3JAXUr2Hixjz1CSCsGKCbeFWjk/v
         7kpidzXVml4+U10rzFTDi+JGueyh7lxPI66qikcuEnhnjY7aWPKvNqbHkNRtOp8DUncS
         +M2odqCDnGFp2M13KsZPGl2KzTnyoWWvZy+d6SJLYiYF5voc/mWh/TD8NhOz/6mnfE/P
         m5PUIKXKxGd3yI92G6c0tD7i9M5RrjRvpp99radzs9XFsUJ6ZLeYu0xIgPRQ7E8eZ06b
         YSGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710864829; x=1711469629;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CaO4eTXrc8bS0xtP0sgmAWvsE/xaS0w0srPaY2mNrgU=;
        b=uBi009kioPrrdtOVxUjUYo3/jqfxTR3+DQuk+QR/2j0ATQ478qXXqx7gZhwMlccHZM
         w6vVZloNApf/5r8UIiSa60+XBDqnRsP8vCnmAnKVMY3NgPwFLI7ehAGFADhXuFhRIuVO
         4J7iZ6Mmhilzfn9Qr3Sq4SASHq3eERTaGza26SwM3T6mZ40EeoU/tA4wXA6IHW4bpZER
         y2UhUnOnt5NrOzh3dVnr1bwEko4q7EDNVWZxK6HV9rVC2yZ8AsLjsl4gtg79jm7rcfoA
         mLxXu0JuP6Xl/DqvPjpfP7iXuYrSwkTYR/QyCMFCsVnqTDqvlvWTH7rztYZCaB7Z8Dt6
         kQqA==
X-Forwarded-Encrypted: i=1; AJvYcCWOVmkLynbEu8PH9Mif/GHP2QVRcsAAbE4Mw4M2nxwgAH7zUYnXPZi6i6MelOVrSh/jaEpna+D7fPg60wjjKn11EBdorbNB374hzw==
X-Gm-Message-State: AOJu0YzU420iUPiAesCrMMfz0vccrD4vmieMZKxPjBiPuocb97R6g8Vf
	trY2byV8NqHDtwoKCUgx/f+bBOCweEVhGED2h1rcHp1kiLHr83Dezx1SxojNrUE=
X-Google-Smtp-Source: AGHT+IEpdYlptaBm4VHg/aEwjg5gYcaCyCqLlerLuNKxFlHCamxxx7hc+yN5zx7MrQiLGznoqGSQzQ==
X-Received: by 2002:ac2:4d91:0:b0:513:c53b:90db with SMTP id g17-20020ac24d91000000b00513c53b90dbmr10684237lfe.8.1710864829101;
        Tue, 19 Mar 2024 09:13:49 -0700 (PDT)
Received: from [127.0.1.1] (netpanel-87-246-222-29.pol.akademiki.lublin.pl. [87.246.222.29])
        by smtp.gmail.com with ESMTPSA id dx9-20020a0565122c0900b00513ee207982sm607686lfb.198.2024.03.19.09.13.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Mar 2024 09:13:48 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Tue, 19 Mar 2024 17:13:40 +0100
Subject: [PATCH 10/31] arm64: dts: qcom: pm7550ba: Remove thermal zone
 polling delays
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240319-topic-msm-polling-cleanup-v1-10-e0aee1dbcd78@linaro.org>
References: <20240319-topic-msm-polling-cleanup-v1-0-e0aee1dbcd78@linaro.org>
In-Reply-To: <20240319-topic-msm-polling-cleanup-v1-0-e0aee1dbcd78@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.13-dev-0438c

All of the thermal zone suppliers are interrupt-driven, remove the
bogus and unnecessary polling that only wastes CPU time.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/pm7550ba.dtsi | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/pm7550ba.dtsi b/arch/arm64/boot/dts/qcom/pm7550ba.dtsi
index 8b00ece987d1..05fcd8591367 100644
--- a/arch/arm64/boot/dts/qcom/pm7550ba.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm7550ba.dtsi
@@ -9,9 +9,6 @@
 / {
 	thermal-zones {
 		pm7550ba-thermal {
-			polling-delay-passive = <100>;
-			polling-delay = <0>;
-
 			thermal-sensors = <&pm7550ba_temp_alarm>;
 
 			trips {

-- 
2.40.1


