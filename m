Return-Path: <devicetree+bounces-36103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4790B83FF36
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 08:49:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 70EBB1C225E2
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 07:49:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 425624E1DF;
	Mon, 29 Jan 2024 07:49:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="zD0JfOPJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BB0A4EB30
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 07:49:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706514543; cv=none; b=IFp4RTQHqgzJYgcQCIJ53faW4nQnGgXmBcgPYb5iiIBviiku8X7rYgW76obx4D54UYwDkh6348SvpPJns2YSJ0vm+BX0+4slzgg2x7a49r1LU2t+jsu/hz/Wh4I7QI2bnAmn8fK6xVux+2PrnA44uXvAxZixB5jiaEcSdC1M4JI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706514543; c=relaxed/simple;
	bh=BKP83D9yJgO7dHlibnyMa09vHevxppr0G+06k+2XFWc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=jF7eEBpU6ZpHQkEgUg2NhMbDQi5DBvytOarDXZOFc/xo4yDOO5urRM9NILn5aySm+UTBvKfI8B0VTFNrrjZV00yZ5XBaPHOcmUHC2VHiGZv+dc/tnBu0dkgIeivR/SpylD4jq+FC03fs5ljvTZST89TviqMyzLuhYm8dgY1FPx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=zD0JfOPJ; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a26f73732c5so251830866b.3
        for <devicetree@vger.kernel.org>; Sun, 28 Jan 2024 23:49:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1706514539; x=1707119339; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hi3wdBPHy9dOJfUItOIZktdrEsNa9te/nL1WfaDI3y0=;
        b=zD0JfOPJHHPGaXfIawDeUuiT7Jl4xsIl3OqLLbJjuY0pY0GjUKidfiElXlN8PB/2tj
         eSvjXBE/bHQEHKrpvrjTC4OkUif2mFkmV2t/t6xwwedWejM0f8Cfu+TuUHzuPRKr9/9n
         uOC3185PWvH0pPa8z4NyTF/x1SRhc9e8Ayad204t8CfbvKl/9aSz9rynbDiBsOn6gl+X
         9UP3kMwoTrXzFZcPUAu5GH1cxN7ZrbfQHy0N+2j5rx27q5VtrXQokpXf3uCWA0O3I3Xg
         I3Bi5K1Bm7gF/K5muQ2K5tne61BftSTAqGyJQ+VTCBz9WGduSNkH7XqGXb1w73rsXUb7
         x/ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706514539; x=1707119339;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hi3wdBPHy9dOJfUItOIZktdrEsNa9te/nL1WfaDI3y0=;
        b=lhSQkNPuMVqsiLGZvpV1UJJqHxGFfeDD4X6cbrGNFZESX+wcFDaQuuwrLj5j619uwx
         0riGQoJnUAmkTA9f3YWpWtT3Zo/57Eg4aYJWEorJrLcB42Fotues4bWBRewOJBn9w0RM
         6Us0CNpNOTXObD6RE5JNb5JiFhDsDnKlSsEN2F5tQ8RJK0+R+G8DYCxH+JAK/GqXpi7c
         jaJKttyd86toUP4KJrV2VyAzVa8cvUKoOLexYsvhY+Wjy/pgHAxB3VW1F+lC+v8PjdW9
         GboCryJiDdTWfznfTu9zFG6qt+ogpUkPzrpk1+kRNGejJ9wxnlewSvtTtJZ49Z0L7Eo9
         WXBQ==
X-Gm-Message-State: AOJu0YyIPKULimxB+DomJk0e5R+OUAqmKBbUfIqySPEpNTx+aCd8uwmY
	BYjzR1zeufn7PCCXpgLAP6kWe1DY/DThahAAYcVpsTQFyUszGE7fsBBv+6EGIk8=
X-Google-Smtp-Source: AGHT+IHk+mC/fG7pO9q79H3dEN8aAlJyGvqAHmPJhChitf/sDZtgl4y8tPnRH+IhsiPE5Sa2TKqS2g==
X-Received: by 2002:a17:906:a14c:b0:a35:d2f8:4927 with SMTP id bu12-20020a170906a14c00b00a35d2f84927mr590202ejb.70.1706514539677;
        Sun, 28 Jan 2024 23:48:59 -0800 (PST)
Received: from otso.luca.vpn.lucaweiss.eu (dhcp-089-099-055-216.chello.nl. [89.99.55.216])
        by smtp.gmail.com with ESMTPSA id l13-20020a1709066b8d00b00a32429e455asm3679881ejr.175.2024.01.28.23.48.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jan 2024 23:48:59 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Mon, 29 Jan 2024 08:48:54 +0100
Subject: [PATCH] media: dt-bindings: qcom,sc7280-venus: Allow one IOMMU
 entry
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240129-sc7280-venus-bindings-v1-1-20a9ba194c60@fairphone.com>
X-B4-Tracking: v=1; b=H4sIAGVYt2UC/x3MMQqAMAxA0atIZgM1SLVeRRzURs0SpUERxLtbH
 N/w/wPGSdigKx5IfInJrhlVWcC8jboySswGclS7igLa3FDr8GI9DSfRKLoaevY0huDJRYbcHok
 Xuf9vP7zvBwnbDmZnAAAA
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Stanimir Varbanov <stanimir.k.varbanov@gmail.com>, 
 Vikash Garodia <quic_vgarodia@quicinc.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Stanimir Varbanov <stanimir.varbanov@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.4

Some SC7280-based boards crash when providing the "secure_non_pixel"
context bank, so allow only one iommu in the bindings also.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Reference:
https://lore.kernel.org/linux-arm-msm/20231201-sc7280-venus-pas-v3-2-bc132dc5fc30@fairphone.com/
---
 Documentation/devicetree/bindings/media/qcom,sc7280-venus.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/media/qcom,sc7280-venus.yaml b/Documentation/devicetree/bindings/media/qcom,sc7280-venus.yaml
index 8f9b6433aeb8..10c334e6b3dc 100644
--- a/Documentation/devicetree/bindings/media/qcom,sc7280-venus.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,sc7280-venus.yaml
@@ -43,6 +43,7 @@ properties:
       - const: vcodec_bus
 
   iommus:
+    minItems: 1
     maxItems: 2
 
   interconnects:

---
base-commit: 596764183be8ebb13352b281a442a1f1151c9b06
change-id: 20240129-sc7280-venus-bindings-6e62a99620de

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


