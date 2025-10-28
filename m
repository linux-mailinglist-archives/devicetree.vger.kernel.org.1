Return-Path: <devicetree+bounces-232215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0528DC1588F
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 16:41:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0938E54152A
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 15:35:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14BA334A3CD;
	Tue, 28 Oct 2025 15:32:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nAOQ6GX0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA5A634888E
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 15:32:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761665555; cv=none; b=hfeb2D/HqRiFXgeZZGLiH0mdiEhBi7Q4IaV1VezSjPF9sV5jCKEQrfdoy15jbiTMXgCyK2hyuT1T5ud3mYhBOaXB0o7+qfkjXaanP9F96nats/teJB83myea4Q+IRoehgoH7OXvzHrNRu+4Dxj2qcN7Y4x6XVL8UIHiboP0cUDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761665555; c=relaxed/simple;
	bh=zSukNZlJ7MIqdyaMWhjsK/r7+F8I2VhKVYJCKLETVDw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XA8dZ64Dx+Lp83xHLkd/wj8lsyqm5HFL2LxXtClKDQxoTm8o/x8hC3xJYtm4lZ5fgcY8MZ0pobQJWu8amHGd/paMAICT5340/PexPMTtSq+8w09u65i+j7/MAfUB/cQQsGaH9i9MptaA4iA7mCSY577qCejNWh031sJD3EGI9d0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nAOQ6GX0; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-471810a77c1so6030195e9.2
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 08:32:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761665551; x=1762270351; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2LZwNoJWwYkaKmAAehgehdzMFy99KMCq/sPgFndgvoQ=;
        b=nAOQ6GX0sobwU81e4+wMBIccAfq9QxROtuHTTa/40R3kqljfXzowxKHZ5y56O3oBU5
         6CP/PnQl3fbeEBaF7YL1f2O87EJWDfYIcCmqNiCrnIsb60jYiqZjhyRCYuYBNqHs5vpH
         9RvZBk7HZOxxRD+x0m0e8Qv8UZpJ4JM72lVkbnErQ2uFRbSMLaUwcXTxJI6ODmuhQNoO
         XoVfSkgiAj8iu42pmP1Ub4ydVfAUZKkr8QIksfP9u18ZzOqNuglJoAMavmGKU20XRx5N
         gg+pdT/M0BfRNM514+2zmoMuR5o62S/6CgTjXR//EunljM8NACZeop0KWJQgxlySXZJH
         1sXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761665551; x=1762270351;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2LZwNoJWwYkaKmAAehgehdzMFy99KMCq/sPgFndgvoQ=;
        b=imnK0IvR03ygrEeC4oPvmkHEmfsUfswVvm8EZgZn81PnAdgGnt1XXQsjE8W5nZnUb3
         xGuAGzPr670MNaPOeXRogre5exMWB1FYqiDsatjb2EuefTC14BHY6Ba5JajZG6/GH+Kp
         SPMGUNt0JNMTa9sycNZQSyQVxfVLwcf6sBATgtOhteGwbnxJkLAWpbcXIjeEoXio0vVO
         rryeCp/CwGm/jCERRiS5SOtXpQAfQwQYW0q9qtLacMC+YYlUBSU3qKvyVogknIK11ggD
         u4UjuhXelhbOoKNstz9gK3wUBvUb4aRKU7WClYXj11qq/lPd286PfUTu3+MxlhGtlhmG
         OrBg==
X-Forwarded-Encrypted: i=1; AJvYcCWm666dACYhEtKhpSkrdXTr/Y6gHocG7kX6vePQQI3VP24a8oMTch2yyQdIA2LnySiGjLY5rzD9V7Vr@vger.kernel.org
X-Gm-Message-State: AOJu0YzsDU6pqOkmFBzhTtYbqC1R5TUetw1YofwxyD2DYFAmCwDd5ddo
	L30fovVlg5jszpbNzSdrCQpBjhNJiVho/VAUWwtvKNE1XLLyRDDI9LKe+dmyeCtlqYw=
X-Gm-Gg: ASbGnctosy67S1B0vK2Fa5mqHu+SeGaOQ2/atwtF6z9hvQh6ZTAJfjKqM5Jmw3topHb
	EcZLQqzBcrJtFjmyX0h9uocZ7i78oWAN8WoBWZuY20QakAKPnh8ZERJ2bZqToY4AzJDO5XKmmnT
	388gkKwvFoSc5Tq1QlpIFDQ6WlhjCuVx6neiOPGt/lVom804vcG3ap9YD6yyvbBbt5JzSZMtyYc
	wGGvIh5G1XfAWi79Snu5veWKlQXsxEPsB1Fzyhhf4xe/BiS+kI++MeM+8KHwwqDES2HejlSLG5J
	Adt86ObigJ2HlRV06dD1SNsRxNj0vQ5qokup7/y5vZuCb2Bee/1hz6IsitPzkEGP6z+zwmMOpy9
	JbBWcf5GLYE9VdNoZ1fuqcn/bOFPejzh5gvpwVk0k4BxKSmHnKqTQzw+ljZoU0lq56QMq3BzxRW
	fFJTod9LLgiZsAKN94w5zUNxNI7qE=
X-Google-Smtp-Source: AGHT+IGVE3B2QRjpTEh5wr1vPtOo1EljFcIgnH5xAZBrUlCMOJ0sPgHl+FMB8DiEmz2qJn5TRoBcsg==
X-Received: by 2002:a05:600c:314c:b0:476:84e9:b552 with SMTP id 5b1f17b1804b1-47717e42d94mr18438835e9.4.1761665551119;
        Tue, 28 Oct 2025 08:32:31 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952d9e80sm20844417f8f.28.2025.10.28.08.32.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 08:32:30 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 28 Oct 2025 16:32:01 +0100
Subject: [PATCH 12/12] dt-bindings: bluetooth: qcom,wcn7850-bt: Deprecate
 old supplies
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251028-dt-bindings-qcom-bluetooth-v1-12-524a978e3cda@linaro.org>
References: <20251028-dt-bindings-qcom-bluetooth-v1-0-524a978e3cda@linaro.org>
In-Reply-To: <20251028-dt-bindings-qcom-bluetooth-v1-0-524a978e3cda@linaro.org>
To: Marcel Holtmann <marcel@holtmann.org>, 
 Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, 
 Rocky Liao <quic_rjliao@quicinc.com>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1727;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=zSukNZlJ7MIqdyaMWhjsK/r7+F8I2VhKVYJCKLETVDw=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpAOH7qJ7gAnazlmEVmSQT2tl9Ov0fW8LBbuH92
 j+nTnI5/1yJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaQDh+wAKCRDBN2bmhouD
 1+RrD/4lCI9nI3gLTpbmLlCCHv8SmzZIwl9uEqBvUPhzDRA8WaZJh/ZEp2TgoALquJUW/C5CS0G
 SaKnKiFSqrO3SCWCiLEus1feRx/7VQdes6ITSWyfgbkZassgogbBFzLCUAlhaFKvrw9FytIgx+P
 Lc9xiiVK8wKORsFckj99TmPGm2M6GWhVMChKwkJ4EkNFBEZIm/g5fxsppVngkr9tDvut1uRezt+
 7DKogdmfYCNSnSnbovMt09FsU2VyxOoAQxFAEt7btdo1L2srZA1aI5XxLKdvTH84j8Yh3L10Gxu
 F1Aj/dKG82PBM1uhew9QrBwjf0zhPZhsuVk4eis/WqRb75e9qa1z4VSWgYmGd2Gt/Ep09aOWDaJ
 3a06SoGgrxePjYcwyvon09LIZv+2Oj42QQiZN5Ub0C74TFp62062edF2GgxpEJbxTPDuRQXleYW
 W9zFdPR6HfBzgC6hriu2hKUS9An1JBNnUS0BWxp+6UNoyc64ko6i9wfos5qqFa/p4XEyuofNGNX
 aVMzg+iFOWgaf6dCnetMW1S2+agDvSSyaMalD0GVuX9Sf0SNgD2iV1/BIPVW75dskYIrVhtV4bU
 w7gg0tg/b/wXTFp4IEXXJH452bxAbovmd5OsZ7WZC4HAGjLRxsxr+vY24j+WsTJ4AlbFlaYpvu4
 hFA+1fgm6I8+uaQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Commit bd3f305886ad ("dt-bindings: bluetooth: qualcomm: describe the
inputs from PMU for wcn7850") changed the binding to new description
with a Power Management Unit (PMU), thus certain power-controller
properties are considered deprecated and are part of that PMUs binding.

Deprecate them to mark clearly that new PMU-based approach is preferred.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/net/bluetooth/qcom,wcn7850-bt.yaml         | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn7850-bt.yaml b/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn7850-bt.yaml
index d2a1477380eb..418a06ff0353 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn7850-bt.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn7850-bt.yaml
@@ -17,19 +17,25 @@ properties:
 
   enable-gpios:
     maxItems: 1
+    deprecated: true
 
   swctrl-gpios:
     maxItems: 1
     description: gpio specifier is used to find status
                  of clock supply to SoC
+    deprecated: true
+
   vddaon-supply:
     description: VDD_AON supply regulator handle
 
   vddio-supply:
     description: VDD_IO supply regulator handle
+    deprecated: true
 
   vdddig-supply:
     description: VDD_DIG supply regulator handle
+    deprecated: true
+
   vddrfa0p8-supply:
     description: VDD_RFA_0P8 supply regulator handle
 
@@ -41,6 +47,7 @@ properties:
 
   vddrfa1p9-supply:
     description: VDD_RFA_1P9 supply regulator handle
+    deprecated: true
 
   vddrfacmn-supply:
     description: VDD_RFA_CMN supply regulator handle

-- 
2.48.1


