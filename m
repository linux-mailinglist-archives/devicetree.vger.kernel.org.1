Return-Path: <devicetree+bounces-233768-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2C5C255E3
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 14:56:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 833D13BE70C
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 13:56:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD68234B67F;
	Fri, 31 Oct 2025 13:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ngo7cMjc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CDA332909
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 13:56:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761918963; cv=none; b=ZYioYeGMrJsphBD+rhs5rMj8STJAruzCFR2zI9ke76RPnQk8vSAwXej72j22QJuRtZda5SzjuuZPg7b1XnsnksCAZuW85ccAeqBhAazaQmNKAdQpWiN4CD2I4w0A2VuwdAMyusm6QESqW+ogv8KEfMLtnzGHqSw/IIk5kjNEhQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761918963; c=relaxed/simple;
	bh=rv1lakdnapd6shhm6W5A6hAx9wRV9T1vgsYATRaDRWM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=PM8cfXP7e2jXCA/0RXERhhmppHCrRAzJW3BWbhhAqSaP/e7wXSWCPhfSJRNPxHD3C/Pe9Y06HnZPXC9Ei9b5MN1IYaJZ9V1UgDzVHHopWQlsCSEUGbPRpWbnWfjVXxBIVc7BM1RpYbT6Lerz4fRxE/V4Kh5qiCrgCxI8Po4+dNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ngo7cMjc; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-781206cce18so2675776b3a.0
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 06:56:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761918960; x=1762523760; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rXy44YBpbFQ7ccTa0IVPqx57mQ389VTun+ngC3PqvuM=;
        b=Ngo7cMjcJTEvXJfB6Y+GPqQvaCcm4ZJwuykkefHlNxqrTBIDjA26jR4JlXE16EhoPm
         6mTCMQkvtK/1N5hmxSIMbrStNI3DF0VpLmg7S+97H822TuxIpvwJplJqjIKamaT7Oak0
         EAoAcG4e0JyCxdBHJHfSa9phYGy5ALd6KUhG54mkBkASxwrEURmzfSkmixapwiN1/inN
         yEiGPlkYyyr+keJqv0cu2DTPhdDzK0Ets0GgpLe9NbHu/7PQbNWNL/fXzO4oMdExi+R/
         p09tTz7bf+vdtszbE7I6387fWNys4K2YOZ32QAlJ8foTe4zVgkzephO6WhyrkPVYJoC3
         EWcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761918960; x=1762523760;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rXy44YBpbFQ7ccTa0IVPqx57mQ389VTun+ngC3PqvuM=;
        b=Fjj+LzNCalT66btKCPcwEfa5K22gnTq83q2lncafFyV9lfzj0nrN1iBwZK/R3K0G7K
         jfhw4zD3vOcmX2qt2Ys+PnKZFvM5Kbb6903LzmuID4jm4z0TDeGcVimpm1lXc031cv8o
         t3Heui+LFGCFf6id/kryuqM7O29okzpPWWZ1OTFHxy1Xp1Z8yLWXWGup9x9TwFUsLMmn
         WTAMaSZV2s+zRe69BBIGlqa94g/E8GdJuazrur1iOyRprz750z9DuhyNL6SKt+0Rm89L
         844FPwVGCLgkxltBnYRVsXYdjfvzixHTbuO3RA3bxd7Od9DlVi/hHtd6pvpKLGzSUzb+
         vPsg==
X-Forwarded-Encrypted: i=1; AJvYcCXcDqKjxpDkH6sFFdd6/uyeIiMA6kcx+8VduoXp+IT2/mDasdD/KiRQNh3YT23uxun0Q3dTxdq6kcz+@vger.kernel.org
X-Gm-Message-State: AOJu0YwZN4GXDsb4Yit7M4V9sb+NzDen+jPQi2THSg86RHuXHcXiIk42
	00jfo887JvEivQiMfg1AJNJ3xTTMmsfEF7a0h7YDqUTiB86gp5vqvDEV
X-Gm-Gg: ASbGnctFk2EQa0g0Ss+0pHjMcFFGwrX5K+P21M/iGFK0BvMRRiLUxBAWTjPYHlzagM2
	wXuA9GQDuLFttawtiqUEN2FH2xhcPO3BcTuD3XjLJkJr2yiZetN5MpFI8YTuEgQr3mj5hSH7aWb
	b5mb8AIQHmvY7eOfY8TndkZH07VNDfWJ8Z7KdUQeMOCE1txjYWGwHof44VNTn3KVInkmE5zaAYO
	p+fEYgQ6XT2hVqH6unEvuC1AvVGY0l+sVYle91Hj8ZnZg0V2KmvJgACDNXEPdXFE6EkllYJAzq2
	tYnV93hmm1kdZPdknW+szPnLgxrEbotBRROORj++N30qYdVlGXB9bt2TyRx2gadKmyB19R3m/8K
	eLvH9sLxJG7Iuh+EZBDySw+kLPxOuQfXgoy2knFGGB2BgAjEGo95hYrg2ZtbMJkbnLobkHWjxSP
	Z2uo+7+QE=
X-Google-Smtp-Source: AGHT+IFa+KtYs1Qd2wH4XD0ttk5HSiq6KyawmAxwbjG3Kjo7lM6fGlhfsK3Z/0aCWFdV/RCWUZ3TRg==
X-Received: by 2002:a05:6a00:14ca:b0:7a6:9f96:966 with SMTP id d2e1a72fcca58-7a756473a05mr5078674b3a.4.1761918960283;
        Fri, 31 Oct 2025 06:56:00 -0700 (PDT)
Received: from archlinux ([103.189.130.36])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a7d8d72c5fsm2302271b3a.18.2025.10.31.06.55.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 06:55:59 -0700 (PDT)
From: Raihan Ahamed <raihan1999ahamed@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kees Cook <kees@kernel.org>,
	Tony Luck <tony.luck@intel.com>,
	"Guilherme G . Piccoli" <gpiccoli@igalia.com>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org
Cc: Raihan Ahamed <raihan1999ahamed@gmail.com>
Subject: [PATCH v4 1/2] dt-bindings: arm: qcom: Add Lenovo P2
Date: Fri, 31 Oct 2025 19:21:20 +0530
Message-ID: <20251031135506.214025-1-raihan1999ahamed@gmail.com>
X-Mailer: git-send-email 2.51.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the compatible for the MSM8953-based Lenovo P2

smartphone released in 2016

Signed-off-by: Raihan Ahamed <raihan1999ahamed@gmail.com>
---
version 4
- rebased on linux-next
- enabled accelerometer sensor
- enabled gpu and add gpu_zap_shader
- add homescreen and one-key-low-power gpio-keys
- enabled pinctrl for gpio-keys
- removed explicily added tag

version 3
- sorry for explicitly adding tags
linked-to v3: https://yhbt.net/lore/linux-devicetree/20240226195516.174737-1-raihan1999ahamed@gmail.com/

version 2
- document device compatible
linked-to v2: https://yhbt.net/lore/linux-devicetree/20240226094256.5736-1-raihan1999ahamed@gmail.com/

version 1
- add initial device tree support
linked-to v1: https://yhbt.net/lore/linux-devicetree/20240226055615.79195-1-raihan1999ahamed@gmail.com/

 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index d84bd3bca2010..cea9698fa4d8b 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -200,6 +200,7 @@ properties:
       - items:
           - enum:
               - flipkart,rimob
+              - lenovo,kuntao
               - motorola,potter
               - xiaomi,daisy
               - xiaomi,mido
-- 
2.51.2


