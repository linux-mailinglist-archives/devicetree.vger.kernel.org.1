Return-Path: <devicetree+bounces-104805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E9B98431F
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 12:08:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EAD65B29B48
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 10:06:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60FCE173345;
	Tue, 24 Sep 2024 10:06:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qg3WJVL0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA48115624C
	for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 10:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727172384; cv=none; b=dSvKN5F4Fl936sy6GfCpQrviLEWZpfGSP9169HkncAGlNemUDSeFvQGS4Wk3s4oHKRPhOrUTJ2S6SMw9krX5HCOaYk/pqPRkGGGM/2CRwsn8KOWF/ZKlHRNBBnsBRMNncAAbvINHXGz3VzS7oJUAFbSDZIBxE90xjzLgy5Zrop8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727172384; c=relaxed/simple;
	bh=jsn4M4mPiG5AHThneNwDZKnKdmpKUzgbhtc0ngm958Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HfoZTc7rNietW+yLqC8/V/ovzow3//zeDrOuhhMQAW9BEZWiOYZAbp9KJzTdUd5Ndl2W+4JAliNlkzIE5Ax9DfHIHzKg7zQST0bn9yvcmZZMyPr0k0yFDxQrf1MrqQMexHNex/oNd0axfNdDGvZLRfHcB9cSfQBMeQELmQ+rpL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qg3WJVL0; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-536536f6f8fso685149e87.1
        for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 03:06:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727172381; x=1727777181; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qpkYnkOOxhHz4w95N70SYE7Psz3Kr313VV91akoIEuA=;
        b=qg3WJVL0gU+iy/Xih9krSvmEDHJPEhOBxOFQLqKL8H4wMiWIZ/77fcUtovdELWvIzn
         9Ste+OtjvRT3O2tvYqyEGPwOqrE8HiYut2cVtPWr7SKKT5AzHxBzK+rWUeXKhXokQ8pL
         C09sLH7u6y2XrI5+8r9PXU6isWswti8feyWo3L5vrCuxQLRebOCImI45vLWb/TIy0Tet
         2eaV2Jnd+86w6cIHO23qK493ZR594YU/aV7yF0DdtPyPxq4pmeowmnEEtZIie/t3h/+9
         s/KDzojY9xAyYh7NPiScf7PZ1HCHrR/KUQFFkLpuViPckgPUPwEYrK5+/+ZrI7Djk3h6
         PEMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727172381; x=1727777181;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qpkYnkOOxhHz4w95N70SYE7Psz3Kr313VV91akoIEuA=;
        b=RQX3Sr4zW077awy5g0NNnFcEW/BUt91Ayce48yShZ5dv6whvniI89EjD1/pZGsxsoy
         ZR98cWV+FmDZ4em9Jd2GzhDncXWmZb/HuDEHvcyoCbdANfWFoOaWf1YI28hGImyhQYQb
         oWxHwibVRVQNZPoLnheuYQUfYB3ZVEH368RZQSehsjwSlYVWpQhhObuv+4o2QSYHRHIl
         ZvasO4pHMjBzcHBM8pjRB3YBg779w1ZcG73ChIJcyCSA41ybLBODMcf/+kKHwibMhJR7
         ycsCcbIy3IPn3Yrwt2Db1+wi7dH7DrGBqnPSjFtMjYcFlWCnGP8a6SP1a+r4jrSZ9Snf
         DSpA==
X-Forwarded-Encrypted: i=1; AJvYcCW+kOv923/lA5nTbAeHposxsgSw31Wle4b8Gq561WtwKQts3ma3QKedn73fizn7eJ2XwXgvzP3DHZ3o@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/GqZ7IYiP5XXBRe3Qr/yQ1c0NzOgMPmq3pi+EVbOa83/exUWc
	5d5SiQTbqliPFWXZRaX0md9QY9Mw9lzsd1+yW/8QusPdJUcJhgetokDG/HvFEc8=
X-Google-Smtp-Source: AGHT+IHWsnzS4JywzlUHwd6AqICwMiw1ToNc3MF3bvZ7MA7N2BaDMw5bZPomOrlgjo0rv7m7826MkA==
X-Received: by 2002:a05:6512:3090:b0:536:9ef0:d83a with SMTP id 2adb3069b0e04-536ac34125bmr1997503e87.8.1727172380754;
        Tue, 24 Sep 2024 03:06:20 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-537a864d937sm156713e87.273.2024.09.24.03.06.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Sep 2024 03:06:19 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 4/9] arm64: dts: qcom: sm8450: don't disable dispcc by default
Date: Tue, 24 Sep 2024 13:05:57 +0300
Message-ID: <20240924100602.3813725-5-vladimir.zapolskiy@linaro.org>
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

Enable display clock controller for all Qualcomm SM8450 powered boards
by default.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 9bafb3b350ff..da378c2ed482 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -3435,7 +3435,6 @@ dispcc: clock-controller@af00000 {
 			#clock-cells = <1>;
 			#reset-cells = <1>;
 			#power-domain-cells = <1>;
-			status = "disabled";
 		};
 
 		pdc: interrupt-controller@b220000 {
-- 
2.45.2


