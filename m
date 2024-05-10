Return-Path: <devicetree+bounces-66255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C39788C2440
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 14:02:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7829528C399
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 12:02:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57441176FA1;
	Fri, 10 May 2024 11:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zJlAuFmr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D51DB173349
	for <devicetree@vger.kernel.org>; Fri, 10 May 2024 11:59:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715342394; cv=none; b=YL0cfQTFj/mvgHBZmtZHTVzDTw5CNU1kBsFRWgD0aslllFpmEgAWR3KSzx5TWGopXe4Q9lmCwpwDaaog7UXdYfJw+MsDMRsKX02rw+SCayteDevAk4BfYwZcPD14pddY3fGe/tcMoqnbDjygGUouXcWbs28mYGsH1H2FnseL2ZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715342394; c=relaxed/simple;
	bh=+CdMPbiwbbjdeKsF9NqrWPUhULSbuF01TG2LlGUmcnU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uVZOEkQOsnsfY+L8bDbvfDKypvqqqd9v9V6b3hc4MrcfHdxIdW9Jv74cn6TJafh72RgkyO/+75YypSqHsMho0YZXBEgUDfBbO+cNr6s98SoL3NgjwktrQLLYqbb0SJ4AGApXf9fC8djozP8xgK9IJU+rcebdQs5DbGkuhYnraZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zJlAuFmr; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a59a934ad50so461962466b.1
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 04:59:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715342390; x=1715947190; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rNNJNlN4O78cbvwEGVWQ779Rtq56UYusx6zOZKbAlxM=;
        b=zJlAuFmrOBQnSGHQHhZD9SCaKUgcUjbvY27sqZj+m9ypmtoZjywxUAPe3IMi9S/lXl
         hyxd8Jf5wvAjfqMRS1NlZdfzmNADVX5UeDaxaQf3FpWWnlHWfMbaVj5S7/38dphr4Sqx
         bmM/eGb7W4zJJQETDKyceiZANIXPMpSHNrhlPuWZjK07clgatwjTh9vGW4UUBahGVegN
         ejs0YAP/BDubU2sk2QFq8P3yaRobiv/Q6/keDDCTGSo1Zxya+3VVw0pNzu4E2PLHD4Bp
         CgrixSkKkW+ykGx6v2iVnVd/8YW8JwoLBQXoGHO/c5Zsr+PZ04NAGS0bTwt+B/d9uASy
         25hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715342390; x=1715947190;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rNNJNlN4O78cbvwEGVWQ779Rtq56UYusx6zOZKbAlxM=;
        b=c8zsoGzyaCz4T+zbrM8IN36vW4WugRNwtNjVLgzc8ftmPcowPM1I+SjsZPugjtNJFO
         yELXchhWJ3i50uEK0GOA+nhKFJhvY/P+ZWLjZ1PxRF9YI3YRThByyYsTfeyF5JiFLHXB
         oN5J/Cvu6CgKPqeQec9mcLs9OZjB3R5ZrjVWMp5pwThkegjGamQgoMXFGZ1lGiSogQT+
         ousfcrcS/MYr/93I7RspjJWrUtIq2mBhww4JIrjxgYKast5/151FZX64XzZzTd/hCLuk
         Je83noLPbqdaG+5u9E1JmVpfSPSU6xj2zjaSXM9H3COEfaRlNbNMjy7FrFmw7a/gC9h6
         Fx4A==
X-Forwarded-Encrypted: i=1; AJvYcCUK3ZB2Y0ttzWWzgY3wLGF+LMRqsipVx0W82tKNJk/95MFjnq0RMVgAkKHMGO2KyTtZRrPXVl3vfiEaMQAJsItYRvOybJ+kjPRGRg==
X-Gm-Message-State: AOJu0YzEhdfo5kcX6VBC3Vut3kxqkiEgwGQ1rj/0oXmIif1XzLhyVJWt
	nYOp4HDD1vv5Ge0HKBPqemLcOf7Dn/PoIugpU1CL1qD0h8W0B4Lik9EV5A3Y0PXyqWoLF9r18i6
	6360=
X-Google-Smtp-Source: AGHT+IHBeuIuLf/v7qb4NswUzx44DTuej3GIrw6ndeVLe5C0aMjVQKsCUA7aDAjnIPX3C4bwb14Tjg==
X-Received: by 2002:a17:906:f592:b0:a5a:1562:518d with SMTP id a640c23a62f3a-a5a2d53b998mr207336566b.14.1715342390419;
        Fri, 10 May 2024 04:59:50 -0700 (PDT)
Received: from [127.0.1.1] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a179c7df7sm176795666b.111.2024.05.10.04.59.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 May 2024 04:59:50 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Fri, 10 May 2024 13:59:35 +0200
Subject: [PATCH v2 12/31] arm64: dts: qcom: pmx75: Remove thermal zone
 polling delays
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240510-topic-msm-polling-cleanup-v2-12-436ca4218da2@linaro.org>
References: <20240510-topic-msm-polling-cleanup-v2-0-436ca4218da2@linaro.org>
In-Reply-To: <20240510-topic-msm-polling-cleanup-v2-0-436ca4218da2@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.14-dev

All of the thermal zone suppliers are interrupt-driven, remove the
bogus and unnecessary polling that only wastes CPU time.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/pmx75.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/pmx75.dtsi b/arch/arm64/boot/dts/qcom/pmx75.dtsi
index 373e45f63dff..2e61b7849c92 100644
--- a/arch/arm64/boot/dts/qcom/pmx75.dtsi
+++ b/arch/arm64/boot/dts/qcom/pmx75.dtsi
@@ -10,7 +10,6 @@ / {
 	thermal-zones {
 		pmx75-thermal {
 			polling-delay-passive = <100>;
-			polling-delay = <0>;
 
 			thermal-sensors = <&pmx75_temp_alarm>;
 

-- 
2.40.1


