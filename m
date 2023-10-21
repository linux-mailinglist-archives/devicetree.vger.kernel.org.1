Return-Path: <devicetree+bounces-10544-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B7EDD7D1D78
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 16:31:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EA1371C209B9
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 14:31:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1C92EA3;
	Sat, 21 Oct 2023 14:31:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=aceart.de header.i=@aceart.de header.b="H2rCcNXp"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C50301A27E
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 14:31:22 +0000 (UTC)
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCE3AD5B
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 07:31:16 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-40859c464daso3423425e9.1
        for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 07:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=aceart.de; s=google; t=1697898675; x=1698503475; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5LJpDlIiRiwiuxdMoVURDKmaMGrN9X/vug2AO0xEv5U=;
        b=H2rCcNXpA3jXDGeFbK9mj8zF5cR2vDU+1i0xbHxt+sZWDm4AduF7VCfvOLyUAPMkKz
         UFK5RyKuwDR/TA4qlKctoO9TRXTz6deIZKcaceDcbCFJ1F7qfM5o/FMrOF72QRys7eY8
         MXuckKa1UOfOOBGSskPKrnU3OeF0dT3MOuiF7TYYydCDFLbhZIfN+2dGmi+pkGCUjdcP
         H/O0AY4oV7xvkmLuibBmpPHo9lNG+fAUbPrbfuOBmd+6jxajtYDC91qsxAjuVrbzwmBn
         jkn65jw76k+WiVFm+VJ6878wSeLQ5qSXWJFZ/aMPy+7y5qY4+d/JFZfg9QhTnoeBFekz
         iMrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697898675; x=1698503475;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5LJpDlIiRiwiuxdMoVURDKmaMGrN9X/vug2AO0xEv5U=;
        b=dkAwqXAaSaxSO+5wV/otLID31PVTSiDBye+X/mN+jMWt7ZWMilD7SsDJ9hJjdCfgpR
         cwBFyi88P58FBwoUWr+ONv/C9fh0VysOyENrlAzw8BxJvnlihrTGofV/+xq7uXPhwpI9
         5mv0fbhvsMnc13ykNYX72ypTwWocTGCbzE8IAIwknh29VY3PYJLjwDhcuiMcTrvVofh7
         4AUEjS/ITbJyMT4yjjATtkXoUZxmpEFsE6y+oB3CxTjF9VrwAZTsp9UCWOMGdSxifzOV
         dXNpLZL6ODBgdoyLKsfKoSZPmUptsgg4NAcRe0icy/nXzahwNR6TFfgokw0ySBUuApDv
         4rRQ==
X-Gm-Message-State: AOJu0YyGgP6fWQhZ00mw3wpaAtmO8BoFFUCFdAsZbTjaDlPdpkD+UDG8
	KcxKMLu7qMc4fHVadZpRDhmaQw==
X-Google-Smtp-Source: AGHT+IGNJjyZb+7Uajr8RQ49cwaAVeZxiqb20qecfa04uv1b45gqac/gM6EA8xUjxJMHl12ZkWoRgw==
X-Received: by 2002:a05:600c:4ec6:b0:408:54be:d961 with SMTP id g6-20020a05600c4ec600b0040854bed961mr2901184wmq.35.1697898675050;
        Sat, 21 Oct 2023 07:31:15 -0700 (PDT)
Received: from localhost.localdomain ([2a02:8070:d89:b820:87f5:4b33:b582:39f3])
        by smtp.gmail.com with ESMTPSA id u3-20020a5d5143000000b003296b488961sm3793917wrt.31.2023.10.21.07.31.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Oct 2023 07:31:14 -0700 (PDT)
From: Lukas Walter <lukas.walter@aceart.de>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	Lukas Walter <lukas.walter@aceart.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] dt-bindings: arm: qcom: Add Huawei Honor 5X / GR5 (2016)
Date: Sat, 21 Oct 2023 16:30:24 +0200
Message-ID: <20231021143025.77088-1-lukas.walter@aceart.de>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a compatible for Huawei Honor 5X / GR5 (2016).

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Lukas Walter <lukas.walter@aceart.de>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 7f80f48a0954..20d914b21847 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -191,6 +191,7 @@ properties:
 
       - items:
           - enum:
+              - huawei,kiwi
               - longcheer,l9100
               - samsung,a7
               - sony,kanuti-tulip
-- 
2.42.0


