Return-Path: <devicetree+bounces-112538-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 261019A2A82
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 19:16:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CFC62B2F766
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 17:02:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A35E21E906C;
	Thu, 17 Oct 2024 16:57:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vDX9n/S4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D26271E32DD
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 16:57:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729184237; cv=none; b=qj1iLIKOSpKoqjV3sG+RL8nv3ccJY94AjnxdorwSHPSGJimaNZoOFpjC/q4HDCP9GEzJ8KA2gmfkfov7pnz9Axb7iVtzxDMd5v5aq2K6mPs2AuvliCa4+pSEY7J9DBVX1UhOZCJhOIeFY5kRX6R72RmEkXwQ4Tyfs/huRFdEn/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729184237; c=relaxed/simple;
	bh=14axJ57FbtWb4/jR92DfjULo+XXCtDQGIgTfdhTzMXE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZSZ58gM3AbQctVqSv0vNHhN/wt7apXR5jTCCWw0Uje1T6ys8LSM8A6YY3yz7u7v5enpjfIXISg5lEAzGrF/4BIeDY6b+Oi/Cr52JAE/Th2HFehrZWMx7gbCkrm66bmrUqaFKv7et1YiDmTk1v47z8kPXiQyV6OZS+EXxqAVLH+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vDX9n/S4; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-539fe76e802so1513364e87.1
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 09:57:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729184232; x=1729789032; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ENqIH0Vaspt2CZ8fDMyaIQtRaMVXtP7wRvavqANXfOo=;
        b=vDX9n/S4NUtBzOeIJgzXpFXihGV3j2FjBccrdJGNJQz3x1NGy/DAXwVnCFgoykApAz
         UwKJNQI7V07d3WrHroqh7LfhcIeZEvqAD51kElVRyvpLqUjHXuf9+roZ5K8FSDp8QeEl
         Yv18Jya4gJkf7VPaTq0Rgqph8jLXwqtVilmiGQ1zBpdHW9glSkDL0BUL9i4onatTyUj6
         hlOElLpS7kgT4sbiOMNfDyj/UdqBjv0ShWgcQNdpUHiqZ3pBmYJGRx41kpXKDWg3k7jU
         RUCxkgX671jAdMbKLgHwnh77NBO7mu4TQ1pdgVFK2v/PeJoQ0AsACp/ByF+CTCBK2PkC
         QfXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729184232; x=1729789032;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ENqIH0Vaspt2CZ8fDMyaIQtRaMVXtP7wRvavqANXfOo=;
        b=noYp90+QcEdYormCuNXeDr3r94r9OnNhDkPN8dhrMeHJokuU+R2pO/YeqJhxo+c22B
         3obBAarxj1Cxb0ta19jghfd/zvMFJzwoQIhiWwBfM7zxxzQ1PSVwpOY0DcBg3FKSLEDi
         8tEpn4qeaYHpAwQ+XzGoC2KFeIPOyGKXUGq1MlzebKDzeQH+hDfY7an0vzIfUEwZlveo
         cghtQjgxDDN9DyIFHwv57Y14RL3+lDY0qKx8OeFQtpMHGoUT18muom4hPoY4tdihoSMT
         BhW92Nk9OHQuSy7LD6d4i/dZFbnGpM6AkkjZnLuMhRLpGvvazO8XfJZxQplxfQNVv/nc
         x+9A==
X-Forwarded-Encrypted: i=1; AJvYcCUmp/8gfmhCZTmLPaKRlFZ+vz99EvbYie4R0qdJJE1Ld1lToFEhj8xXZz0qCiYXkOQye3X/GnwzLJcM@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4m7UriOI2k4g67Qvuxmr4souxLXcFBpuI8TW122dq8JKYKJMK
	8SPPGWSwkdh1L6MwkHlYwwd8mU906hJUZnjj8VJa5e7qCItqz5Zn8/3DoSIVBqnFrt4O+KWyfCu
	1C7I=
X-Google-Smtp-Source: AGHT+IEcGrDyVzcEIzZRfyzlFuV9wQDyJiLO4vLVAKRpWIKWz44COicxpmd9zvvP8vuCF2wnWNhVXw==
X-Received: by 2002:a05:6512:1598:b0:52c:9e82:a971 with SMTP id 2adb3069b0e04-539e54d77c8mr10757466e87.7.1729184232038;
        Thu, 17 Oct 2024 09:57:12 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a00007078sm821563e87.212.2024.10.17.09.57.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2024 09:57:11 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 17 Oct 2024 19:56:54 +0300
Subject: [PATCH 04/14] dt-bindings: clock: qcom,sm8550-dispcc: Add SAR2130P
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241017-sar2130p-clocks-v1-4-f75e740f0a8d@linaro.org>
References: <20241017-sar2130p-clocks-v1-0-f75e740f0a8d@linaro.org>
In-Reply-To: <20241017-sar2130p-clocks-v1-0-f75e740f0a8d@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=848;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=14axJ57FbtWb4/jR92DfjULo+XXCtDQGIgTfdhTzMXE=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnEUHaITb+BlRrcr5PjObGdH6vg9UuJ7Tx8zPv8
 GAu3FNRoDCJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZxFB2gAKCRAU23LtvoBl
 uLLSD/0aOLEGwGB2tgzBdQXSAGiihf0HpuXVAsScLG3c3Ztgd7N/UxK6vH9yWtYCaA5+5L46Cun
 eDYrXsEteuKYAehHGKKbTma6aB0S/IEiTtLRueMrYabOq1DwYPbgUwHhU1lCxP3hwQqGqsAEXAY
 YRrQ/EJCItKfVsZyU/gUAIaHMd+g2ZyDocrTC12h6df0U0X9acsyBL6JszePBNlOvEMnfRjbfNR
 hKVqeB48kFHVaLlrENz/Z18+ERZRYRhEdePg+TU9J/TdIQblP/8gj/Kw38AUNO91f7zFJ4eZ1Ns
 dfqGgNhPKongci07+4EGjzd2qL//SszOXtjSZoZaiqZg5FQ5Xt1Bf5T9URUkXvyvZ7ZMnDKZUEn
 /KlQHbShdHzI7RpuO9E8j90DtZM9Psy6dUvbPSGBRDoOu6+9AaDZ7NMMgjZrM1p0EAVlGT/ZwY+
 VAKPHsX2p/fWgZV9F3PCIKPXxRePqgob1c14OyxzbLdTtcUoYXg3FHmXyM9yxZy/rB5tb+6j5bY
 vmDpCM0/z66n9C825zg0AZo3bNVoyuvmLoayizXSYHQC1i2dkT0ilf+fLAV0nFdew+qnRK8iOUo
 FjBuE63Hm6tLx8bo98SdfTorjv/G+71WCJIRviPKQGt2Ir9Zmx+M9xnpv1Fuz5NpI1sz3+VIRgl
 k83hPGTaszpimNA==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Document compatible for the Display Clock Controller on SAR2130P
platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/clock/qcom,sm8550-dispcc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8550-dispcc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8550-dispcc.yaml
index c17035a180dbf3dde715a281bc54165122739618..c57d55a9293c214c4c101902cdd9603074e2243d 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm8550-dispcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8550-dispcc.yaml
@@ -22,6 +22,7 @@ description: |
 properties:
   compatible:
     enum:
+      - qcom,sar2130p-dispcc
       - qcom,sm8550-dispcc
       - qcom,sm8650-dispcc
       - qcom,x1e80100-dispcc

-- 
2.39.5


