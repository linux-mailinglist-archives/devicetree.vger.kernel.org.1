Return-Path: <devicetree+bounces-10560-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F20F7D1EA4
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 19:33:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4FF3D1C2092E
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 17:33:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 872401A714;
	Sat, 21 Oct 2023 17:33:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="H8e852Q0"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EAA910788;
	Sat, 21 Oct 2023 17:33:41 +0000 (UTC)
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85EE5C5;
	Sat, 21 Oct 2023 10:33:40 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-9936b3d0286so292220166b.0;
        Sat, 21 Oct 2023 10:33:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697909619; x=1698514419; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Vl+ao3piO+HqPOIUOoTCzRcrIURxC/DDYLaJWi9MGxI=;
        b=H8e852Q0B/8B4OsCPcFx2cPbAvgP2QTfA2PM/6oaAS1iLntDxSof3/50OlGuhCHor8
         kCuSoz6NEQKU7EerqxIwCNc5dmCT9azKeVxJd7K24Q8Y9MZ5TZq+53pV7SReWbb8EsW+
         C4KUfMkIkF1SzKYXolnUYH179LcM8EpOdk1Q60Tcnnwdtitm8S/XkUNMjlA9IL8f532M
         uoFMRYTIT1FcTuc6Qo5Ok15L55Xya/SZdmgulctpZQSO16f8N/mdgFfQi3nYk6vfG4mK
         iNXzdKeYQqyNOhReo7WUviihElRkiU77kFsZ9PZZ/x+g/b7dgXSmlSXZCORO52ZQT0mW
         CUSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697909619; x=1698514419;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Vl+ao3piO+HqPOIUOoTCzRcrIURxC/DDYLaJWi9MGxI=;
        b=mjhN3aH4ewSJ1zWe42LoUgd1GtLaRexFFD0FSE5LHkDKuQDkPB5+IpJVPmqPQOFFGw
         IIJ9ozHv9Q3Arrsw+x4bPJx7nyp/prBgSF8EIsrJGlSkGiwmn/f0AYHpB2P0iFOkk38/
         U9qFdGI2avTGPVhMsPXcjbRRPPmLIDYy0usX0m23zhuBB8SL0ph8FBRgKExL4A7EKFm2
         bclDCYKsQZMYzE3gBzdOIHwIhJb0NcAcME5rQOm+tUxBogmByWl3gNtxyjt6a+gCzgEI
         qf8jT+ond5e6EXyXqe6V0Hyf1yFK7BHQ/jXlkPoBRe/5gFygfu+MGaJbUHyn7Jc3hk92
         gxpg==
X-Gm-Message-State: AOJu0Yw8GVNdCJ/5aHhY2wBG8fSPEBT65BmGFrT3AB5NyId+ovOqmWv4
	nZ/+uXjcDqSdVnsg7mfoxvU=
X-Google-Smtp-Source: AGHT+IFR46plqkD46vDrL7ZX8jh0sMIPZU8qc4kUIH3klX8MR31L5PbDfb7g7EcMczm4fJ6olZCHmA==
X-Received: by 2002:a17:907:d06:b0:9ae:829e:d930 with SMTP id gn6-20020a1709070d0600b009ae829ed930mr4726529ejc.9.1697909618721;
        Sat, 21 Oct 2023 10:33:38 -0700 (PDT)
Received: from localhost.localdomain ([145.224.104.33])
        by smtp.gmail.com with ESMTPSA id a7-20020a1709062b0700b009932337747esm3818847ejg.86.2023.10.21.10.33.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Oct 2023 10:33:38 -0700 (PDT)
From: luka177 <lukapanio@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Tony Luck <tony.luck@intel.com>,
	"Guilherme G . Piccoli" <gpiccoli@igalia.com>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org
Cc: luka177 <lukapanio@gmail.com>
Subject: [PATCH v2 1/2] dt-bindings: arm: qcom: Add Xiaomi Pad 6 (xiaomi-pipa)
Date: Sat, 21 Oct 2023 19:33:16 +0200
Message-ID: <20231021173317.185460-1-lukapanio@gmail.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a compatible for Xiaomi Pad 6.

Signed-off-by: luka177 <lukapanio@gmail.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index adbfaea32343..1bfae1b237d2 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -965,6 +965,7 @@ properties:
               - sony,pdx203-generic
               - sony,pdx206-generic
               - xiaomi,elish
+              - xiaomi,pipa
           - const: qcom,sm8250
 
       - items:
-- 
2.42.0


