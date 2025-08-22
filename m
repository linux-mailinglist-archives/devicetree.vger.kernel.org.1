Return-Path: <devicetree+bounces-207972-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6313CB313F7
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:48:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E233AB00405
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:43:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 306412F39DA;
	Fri, 22 Aug 2025 09:39:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ot2cmto/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 675172EF646
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:39:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755855572; cv=none; b=uDmBNT18Ac4sUvwgA54lyqUA6V6yXctFZaBr1esAzuh8B0jhBxe5ZSUqa5r6k2XLlU17gtX7h/EwMUb0Cow/BEj7JLMgfjQwEvPQJoEmWae/CDUrWZuVuNdgqU2N43ORN8lW1M+Q8MN9Tedq2MlUjWnT9vWqBQM1xanr/zkYi3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755855572; c=relaxed/simple;
	bh=WfJTFOkiFfJ8imdBbfyVJQJksDVscMbwStcuwHTKDos=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=f6K6JhCiiHUlPqId0oer3cJ+XeS3wCp2W5PFDUspl3hkKUr7TAGr3auEWQ/m/JQkU7rB6ekfiz5ggc5TsSS6vKkzPUslLcnUTEMPeQh6DQBy5S634t28+Q41w9WO7/TrrgtwKZ3mSm82f68i9wBu3YgJTw/EAhYjj9u+IU5J1ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ot2cmto/; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3c68ac7e2bdso103877f8f.2
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 02:39:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755855566; x=1756460366; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HblogMXc0c0fbHZC8tuteY/HEVF9rO/2JJ7XgNKcksY=;
        b=Ot2cmto/DzNJ2O8WbJvf5WV8CuqC49K5ZP3dfEgKFaN5DAioWioLpUnxEzoBp8Z0hs
         P9nkK7WfB0HjTftZ2UNyJJLXbrKhAc8rIaQ7kRtTkC90NaZJshyGVBiIK8UqjtCF3utM
         ofTO8U1ueDlidejYl2oXNWUPtUmNDMGY1jhw4IdbIHA2VJ8upZnJzaj5A7virbsYZS4u
         pkuDOvhuJLFz8L+opgT/kyvz1FLsmlRrwYiEpWzonqnBpep8XvVn0nV0kkuM8BRweWWX
         7eqYx8CiY0x0Mlp6CZwug5Qsm8YNrg6IU0mMRgO/WppbZwH/waUjA+XGr7ENFFChMaom
         F+AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755855566; x=1756460366;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HblogMXc0c0fbHZC8tuteY/HEVF9rO/2JJ7XgNKcksY=;
        b=ivAQH+qu+7K80K/GSOL9gRP0S1OSgrfl5jaRimS4yU6WH/ZdHXpetZZCzpY+QHZmqJ
         SsfqXwgjbccpGdwC9I1Vzppm/vdXqavijTleRur1YO71WvVWvbo2GtHFq9stkwtuks/x
         /3DcAkjlQSKA3zSciT/mLLRuqAd8WuRxNBU0ysBRhJolQuGISv9RuF9inLDelRA7Zmmp
         Wbqwkt7pMGlCJSzFzVqTlygQ80byze/3WGZI0YCrmQAgqDqhxA3q8q8SKGAoQnzZMi8T
         2AilZKue+F3Qk+QKSrfKbRD/O7836zOwxSDFdKQNdl+4hB39r1ffL89Kh9pUsuW8Rffg
         axPQ==
X-Forwarded-Encrypted: i=1; AJvYcCUkC8aZGvvweNbZF4v4vFeNIaZ/5Glej17hN7nTQ/zdacLhZCHDZtY73T90rUZoslhUGL7VvQB/AYFu@vger.kernel.org
X-Gm-Message-State: AOJu0YxVt23SXgCC323K4hBuYEnligJZS1H7Pd2Sgki6h16GhwrbKCEv
	BkIGen6cn8uTCRmahfANF/7lXBhZcUMslpCHZTn7bGhkAuYdYMMl9IB1K7RlP5s7TGY=
X-Gm-Gg: ASbGncsw0W83nY8NCoLAWO7y0wrnUUPbUAgaonCCn6y4NE2ybL1xFDIVQPTQqwuqwWi
	Z8tTTGkBAoNceUbWib92jAPlhZ+9WjocZZ/zu2XFnkmoSvAkkR5P64ENedMjysBtiXIm8r3J15R
	SApd5gu83J42pu4dWrwelKkFP0bAutvGKgcFTn4gUgCCP0ze/QX5SmMGUgR7JqvlP4op9IK2aqD
	16Y7KrsKGGHXZa6oyBMCYivi+MoNTVdsfAYWJu8EJ+gUmEzviA/Tc5avvRhz1Q64O+ue3UdZTIM
	joNGlKH8PvzatXqkf1lAErXbkGXR/P+SN3AXfycBQOOoit1+7nUSdCeqwGFDGJvcaubuNqT8QKH
	s72T4cRG9IHHHtBdtbBqsLTtb3OzObLIEGJvld17Xatoi7bPApYPbYw==
X-Google-Smtp-Source: AGHT+IEFZf0iPzP6rxsAyIV261ItRqbrT/i4PxGfzqmPGqWuvtcq1FqGCxJEmHWOyGtJpgIDPl6/rw==
X-Received: by 2002:a5d:5f4a:0:b0:3b8:d4ad:6af0 with SMTP id ffacd0b85a97d-3c5dcdfe499mr1667246f8f.40.1755855566265;
        Fri, 22 Aug 2025 02:39:26 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3c684524163sm609890f8f.61.2025.08.22.02.39.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 02:39:26 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 22 Aug 2025 11:39:19 +0200
Subject: [PATCH v2 07/16] arm64: dts: qcom: sm8650-qrd: Set up 4-lane DP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-topic-x1e80100-4lanes-v2-7-4b21372b1901@linaro.org>
References: <20250822-topic-x1e80100-4lanes-v2-0-4b21372b1901@linaro.org>
In-Reply-To: <20250822-topic-x1e80100-4lanes-v2-0-4b21372b1901@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=732;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=WfJTFOkiFfJ8imdBbfyVJQJksDVscMbwStcuwHTKDos=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBoqDrEOajx6C4sFY9R2ZFNqgl31CWXPBPuPDwQEkue
 y+pMUOCJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaKg6xAAKCRB33NvayMhJ0ZCbD/
 9YKTh7dZXEmP3OHThGTzoeOhPj802ukfqgW71WoQvUm3YvGNBbl7fvFXhdg5GxqCJ9hNNart7UQcXy
 uagF9/nklJ/xAaC8l0e2fulzlM0FIFELVpmC5EgBiH+4S60CYtQ/DVyd45XJykN7CT+ySnpAYmc7hT
 z+hltEixPvEAgcm313dIc/y3EQbE7JnmPpXTBqW4A0wZvWClaFmjfvj6/y3vBoNh+TCCP3RbTG0zPa
 KBt2vcyVWyrlTE7bPnlmZPgXHcxQXM3demJ+/cFoNd5NoTUxmFPsSq/aDvtG3tyBuS7dlnXMMAiHHm
 xNvMrVYRrzwMQBDog9h5TnY94ToaW95md66Qo0B3S10fG9jDcQmIVus9EvPgYuxcS5m6UK/vr0IoEv
 CAJRPbIOWNVTP4XLBZY4ob2na7GySZansx00R0OJ/+7b+PzDbsLrXSkg1lvYaOSFdqbfszIrXO1OTG
 UK/gd/hBPa/7flawOxzK6hf5FlkpE4cEGtPr+M4LRS30Ph4rWol+/pZVDGjns497ofrNl3Idjdejf/
 NuTy5bNKlsTO9bp1swGuR4LwS1CYn6eLLyIo18/mVYM5WArnkIc8YE9gLuUfsWHRFaPX2P/eojpIuQ
 ZcSZ32ufjx01W/sq1uOiMCuIPVl8ahIzYw+V3m1PrbSmXG6j3jFs0QjuEFeg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Allow up to 4 lanes for the DisplayPort link from the PHYs to the
controllers now the mode-switch events can reach the QMP Combo PHYs.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650-qrd.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
index 081b7e40f5742120a611cbfa57a59dfb1dc19b9f..88e202e1d49053230f58d719d3c7d57df2c9922e 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
@@ -893,7 +893,7 @@ &mdss_dp0 {
 };
 
 &mdss_dp0_out {
-	data-lanes = <0 1>;
+	data-lanes = <0 1 2 3>;
 };
 
 &pcie0 {

-- 
2.34.1


