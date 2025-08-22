Return-Path: <devicetree+bounces-207983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CFDAB31420
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:51:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 632A9B0155A
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:44:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A44B2F616F;
	Fri, 22 Aug 2025 09:39:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kbYnqG4A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C2642F1FF7
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:39:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755855579; cv=none; b=cULzEtU/LhbZjeJd2KKSi4PVe6UA88EEZk9aFzeFF47DFADsLg4gRSW4F78YFpSf6fMXbM4Vh/j+CeI4iQqdw86zpSVTHZ8Vh6yMcR3aUdgNSRLzQbnxVWBivKvX4El4WHu3dk4sgkQfCs511fC67mjIx/2namj8sWHSTYNmr0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755855579; c=relaxed/simple;
	bh=IVLr7G5CNd1mqLrgQvVKCpA6gBxqxPNhBzSeQuBgqi4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tH2qNA3SbD0eJDpp3QR4VxbReRpXZobjNMEQ+j0ycb3Raerzj7OHouAgrDeSE1JMxna8T23qrWQ83ay7CDqMBz7e0+uU7Xc6fFsUYbayUcKZWzzP/+aq5JA4i2ZFEiM5Dy1CbvoeNcefbwW6X3RhfbUxk034Znn90QX6MshphIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kbYnqG4A; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-45a1b05a59fso13874545e9.1
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 02:39:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755855568; x=1756460368; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sHIXsS+Alr8U93l1XOYaFtoBwmCHuYPMxDTFbbYlAd8=;
        b=kbYnqG4AvTHrAjGpl7xEoG5USmhfp0K8WuD1uQ69kgYQTX0c+HfJakxcRcm7Txd/Pr
         8yJXsKgGQJM2TlkfqC6M7zd1yPk3TIHhTXNEhab1esSe1DeN0UGn+YwIfXw1rlCx22XT
         V3M4BTr6ehNlzEpOLqShmgAa7++sqoYdrhXbmaAL2Jlitt/nRNnAu0ttzSy6nM/kHpgS
         2uXcVcCO9RMhSu20lyuM9ak79yJy5Fwfu2hJcOXcDL3ShOLV/nSdrXBD6f7WXzFJvHEJ
         QOtpt1werHVNeZsHLCieUrb11C7oz8hWIrG/w9bzN3D7ijKpGxlEoyLs9vwQRiEWTaUi
         QaKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755855568; x=1756460368;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sHIXsS+Alr8U93l1XOYaFtoBwmCHuYPMxDTFbbYlAd8=;
        b=bvqXdSi5Yh8dHoz/hrj9C969ZzO0KcxqFTM2Ie5XVWANZwfLtrT8a63PzyR+quPAhO
         lR6LEJvbhmcLTAlpc7sSbN6gMSCQwA5kdT+zMKTP89OAorPvOAYeetPmJRdYGvYAPwVK
         Zr4KngpyXylEzVGmMK1Sn8HBExGYJzL/fELJN5t7MctNUy/XhMMilubY0FuNl9WBp7/Y
         4byBmyMvBU+vcMbz0OsVLdkVDVIjcB7y1yJ1ZxLMIfWVGV/qezEzLRun1M78F9OMnZbx
         3btKfDwB4HuR6h+ctZd6k4O16HMKenZkPBAYvK6GW2OcvuJ+YW3efUG/iEKwgc9R5l7H
         aZWw==
X-Forwarded-Encrypted: i=1; AJvYcCVoGzjUVfB+oWcXjV3Q/8nuFWlkNNgucrn0SwqdVfOp4OXP8SwaYswz+jUTSShs++2CqNcOZteWcDtd@vger.kernel.org
X-Gm-Message-State: AOJu0Yy88x2JFLh8fDw4MX5c/2xkw8eLnAmwujY7vf/uI4MO8GtyqmOO
	96ZNh7R3qI2MlPSQOJecAUTFDZC/Xg//O6s7BtGLLuKQbugF8CqaJSihZNXWRWtETQUsoQxE1gZ
	+K//Qo7o=
X-Gm-Gg: ASbGnct/R57b8VMNbmfDKBzW45dWI3Da8aKjjwjWDhv365JluXlNRb830LPkq/Ix9BN
	4i9HjhyicBD12z1h3NQcMAr6hG/9rwkdtcG6FYbA2teh4uAE2Y0jIOekCHV+JGXt1h9AfMGqznB
	nj6+kZ5cPxOZYfKjDLEMUGc7Qw9p9/Hzightwjta4b9Bu0yt6K90LJLQkuaeNRWn02bKCuZKz6K
	WK0XtMJ85Q/qS5f4FRfBIlLRyk8EiCZx6KXMcc6I/Z4v8BRR2L62DUyQrOQKFyNf4nUdGRHXRBj
	fu1fepnEqEsbhq6zHy+J058vPMY2BjzYcrGQjgHQh0jffEw4gslQzsoxSwrbEmUq9dQ197O9aPw
	bXawJZLvl/fpcM64d2fwnWUEu3FPRCMZWjhjUB40JXps=
X-Google-Smtp-Source: AGHT+IEfZNR0YczZ6ueKNvaEDwWLUmdVBx2nsk21YsqEFRkij5/C3GhysJVqrTLvlLx+EdblKwR4Xw==
X-Received: by 2002:a05:600c:3552:b0:459:dde3:1a33 with SMTP id 5b1f17b1804b1-45b517d26d4mr19119525e9.26.1755855567580;
        Fri, 22 Aug 2025 02:39:27 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3c684524163sm609890f8f.61.2025.08.22.02.39.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 02:39:27 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 22 Aug 2025 11:39:21 +0200
Subject: [PATCH v2 09/16] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s:
 Set up 4-lane DP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-topic-x1e80100-4lanes-v2-9-4b21372b1901@linaro.org>
References: <20250822-topic-x1e80100-4lanes-v2-0-4b21372b1901@linaro.org>
In-Reply-To: <20250822-topic-x1e80100-4lanes-v2-0-4b21372b1901@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1102;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=IVLr7G5CNd1mqLrgQvVKCpA6gBxqxPNhBzSeQuBgqi4=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBoqDrFBWwNFJRuZ+wGXn76jklVMu2OmpJGTRTmL+Th
 LrDbCJGJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaKg6xQAKCRB33NvayMhJ0T33EA
 CawvbNbNt8lOZkEpTY9GqGM/7FaChv1XZFpeL2pBkXyWCahuSZxpUUS9kRJ3CX69vFww7k1rzGQxy+
 ufKxxK/iRtQLsN+a1OWBek4Rul0gg/nzaMkG/b8afaHVeyMI5OCvwxXg08/WfSEnOve2wtzS7sfG4S
 S8AY/3+PAXVcp1uQhPMjy1OElm5AgzoYewx2oWtbqKx4PiC5Nwc+5Hto8ehDKTnLa9G+J3zJbzepsC
 yrnYs2ob5pn9OtSkuuwuXN9jC2CCun++KeLFYG9E1W0/gl12ioKfiy+Z2n3tcNVh33MP2J5ki1poHu
 lJuWhtW/nQV7476HcI9M+cnR8aQ/rMtBpKUy4l5IEtJzezJJIFbR27NroFMJU7kSKG6MvKlSyegitR
 V7b4hJfFMcMRUzPwlrNKSlmtCVDVOOFKqM003hCsN7Kq6hRg4xERlIILiz2hwWJbFaweU5TZq2MviE
 A2v8kanQ+sG9Ql79Vt290w+dzmBSDnVCAcYHPO3DP3f1UyR6ojBSFqnun9XGFIdOgRP7uWt6MzGu+N
 VWZ851Lg1j/yRyMhOR+rAKKZ7Ff2AoQpqj1V7DMiQCSsGvKMjf+P5SqLBEr+5Gyzc1tjFGHjlZedAO
 PYTDpnnVEZPVRpdPhiPu+igBu2fTaWgftagMHUO74ObrleCjxAlJ768uyLnQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Allow up to 4 lanes for the DisplayPort link from the PHYs to the
controllers now the mode-switch events can reach the QMP Combo PHYs.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
index 4cf61c2a34e31233b1adc93332bcabef22de3f86..9f965a5faaa9b687ad0aa609fe42e4841c7f7d63 100644
--- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
@@ -994,7 +994,7 @@ &mdss_dp0 {
 };
 
 &mdss_dp0_out {
-	data-lanes = <0 1>;
+	data-lanes = <0 1 2 3>;
 	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
 };
 
@@ -1003,7 +1003,7 @@ &mdss_dp1 {
 };
 
 &mdss_dp1_out {
-	data-lanes = <0 1>;
+	data-lanes = <0 1 2 3>;
 	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
 };
 

-- 
2.34.1


