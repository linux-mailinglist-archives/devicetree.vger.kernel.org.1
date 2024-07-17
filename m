Return-Path: <devicetree+bounces-86347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 58221933AE1
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2024 12:07:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1341E281BE5
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2024 10:07:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 545D117E91B;
	Wed, 17 Jul 2024 10:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hH22ulwa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC5611802C5
	for <devicetree@vger.kernel.org>; Wed, 17 Jul 2024 10:06:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721210782; cv=none; b=XQYNNwBs37OG9RA4ZXSp9RZLIsDL0x2tJIc3DVr016Z//XIhUq+jfm5hKgngIb91jwPDCakDVh5aRsw7GjWmZ8wSWhC97KLJPfiPBFc/eVrP20pQp0OFQzuTJPWp4cu9QvYCGA5HuYdyq24PhYobvU4Rr7oZXWrGxmJDb6u/jcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721210782; c=relaxed/simple;
	bh=NPsqQscMuW5YxdzEEbmIthLqN/ch20zn6EmqZT04SCs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TpcPKEAi5T5BxQ7Um4aQIrf+yUEfo8Cb6rCR0T10CBlPPxcxyOWfVPxKSgpQ7T1bgsrpuFoHtpYk9mPtnngn/EcyENWgF8+3JbnEH+yMbcIaO1ysjL8hpxjCaZhS+72O06m4fhKmB7dY/Yl/mHHvGd/HeOnsfsBQQeeixH7LeNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hH22ulwa; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-52ea7d2a039so6923685e87.3
        for <devicetree@vger.kernel.org>; Wed, 17 Jul 2024 03:06:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721210778; x=1721815578; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uUM4l7NxU0k5uScQq8IEESiLEEWEEaqTyJJqCnIfkQU=;
        b=hH22ulwaOECnt+ra2JgoxXxF2fB/WkhWD2kyjH7laUqwX4VuE4SbeFFAf+nDg9SNj6
         LWf5onKSf01d0UXZyVBugAWTATVgFdkASJQC08s+TMzCL5B7pcDuT8XxdvSr1H0JKoSI
         ES7r+zpxtVJ3brMfmY1nP8eYEnOC1toMOIsOuNE1909zvNW5c0fWa+4dDb5e2AKLWHra
         8qU2177WIu48e/ckY/A9NOMFNKzWMmDLaKMoZc68KxLXPiWsJwr8O0d7eKuQNTLZsuh9
         tzYJAKgCMH9fgMhwoLLqycJAuDWaMd6KmaJiuhUPkTwphcLw2XIKpP5oJYVOI4Wuye85
         +tgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721210778; x=1721815578;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uUM4l7NxU0k5uScQq8IEESiLEEWEEaqTyJJqCnIfkQU=;
        b=RnEUGxBqQUewgzNROZ6rg2PddRyNJo5/VCRczRw+5XbmcAad2IY79+hyElfDKY2wHS
         yUPfVVGCuLCrtHnw4oXJ6EgN+A3iQU5RXW7yL6YTpS+HG9QjZxVh0z3FZPrAvBP4Kw6i
         YAfV7l/eIJzCFWNVXv59IQCKToDxnoZa1ijWeCJTmnSsOEBL3lfVJUA4ap5vNRG9oD71
         xL2kWH6R5k+XxByGlPQnoHjcqv2HCwvP/4fKXXXXbb78yqL/aUNb1vQxUdJudmaiFbUY
         bpaH7pD8Y1Nq3GpSvab+2SVeLvWuqO2Np2TPyfgmHnbqTkoFUWcKli034QhCk+QeQLXF
         pkHQ==
X-Gm-Message-State: AOJu0YzUwy+M+OFPJ0uuv0IT+ob4EbCnnahqiQMWiML11IlnE64aeirc
	M0jcCHcRbqHPRqSgJoUzNVSh4s4LGx9x2ruquPwihDY/3i7l7x4peEPYuNu+hohHFZe8t+Vx0Q3
	S
X-Google-Smtp-Source: AGHT+IEe4yKshdC5XE+lx/x85DHFDZdE9loIV36IpUydrc0hetViduQoJf0hlM7zxq6mGlyq62Jz/g==
X-Received: by 2002:a05:6512:10c5:b0:52c:e180:4eba with SMTP id 2adb3069b0e04-52ee54420a9mr832688e87.62.1721210777867;
        Wed, 17 Jul 2024 03:06:17 -0700 (PDT)
Received: from rayyan-pc.broadband ([2a0a:ef40:ee7:2401:197d:e048:a80f:bc44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-427a5e983e7sm163259245e9.23.2024.07.17.03.06.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jul 2024 03:06:17 -0700 (PDT)
From: Rayyan Ansari <rayyan.ansari@linaro.org>
To: devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: Rayyan Ansari <rayyan.ansari@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Damien Le Moal <dlemoal@kernel.org>,
	de Goede <hdegoede@redhat.com>,
	Jens Axboe <axboe@kernel.dk>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-ide@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Niklas Cassel <cassel@kernel.org>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v2 2/2] dt-bindings: ata: qcom,apq8064-ahci: add to dtschema
Date: Wed, 17 Jul 2024 11:03:07 +0100
Message-ID: <20240717100600.19005-3-rayyan.ansari@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240717100600.19005-1-rayyan.ansari@linaro.org>
References: <20240717100600.19005-1-rayyan.ansari@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The APQ8064 SATA AHCI controller is used in apq8064.dtsi, although it
was not documented in the old text bindings.
Add its compatible to ahci-platform.yaml.

Signed-off-by: Rayyan Ansari <rayyan.ansari@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
v1 -> v2: added r-b tag

 Documentation/devicetree/bindings/ata/ahci-platform.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/ata/ahci-platform.yaml b/Documentation/devicetree/bindings/ata/ahci-platform.yaml
index 2c8fdfc3df9b..ef19468e3022 100644
--- a/Documentation/devicetree/bindings/ata/ahci-platform.yaml
+++ b/Documentation/devicetree/bindings/ata/ahci-platform.yaml
@@ -30,6 +30,7 @@ select:
           - marvell,armada-3700-ahci
           - marvell,armada-8k-ahci
           - marvell,berlin2q-ahci
+          - qcom,apq8064-ahci
           - qcom,ipq806x-ahci
           - socionext,uniphier-pro4-ahci
           - socionext,uniphier-pxs2-ahci
@@ -46,6 +47,7 @@ properties:
               - marvell,armada-8k-ahci
               - marvell,berlin2-ahci
               - marvell,berlin2q-ahci
+              - qcom,apq8064-ahci
               - qcom,ipq806x-ahci
               - socionext,uniphier-pro4-ahci
               - socionext,uniphier-pxs2-ahci
@@ -105,6 +107,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,apq8064-ahci
               - qcom,ipq806x-ahci
     then:
       properties:
-- 
2.45.2


