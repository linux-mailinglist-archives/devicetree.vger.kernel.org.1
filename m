Return-Path: <devicetree+bounces-58785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D152C8A3089
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 16:25:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8C574280E10
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 14:25:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8042186258;
	Fri, 12 Apr 2024 14:22:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="T3ZTSdss"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06AD785940
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 14:22:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712931778; cv=none; b=WjOaMu3d3djElmBigF7KlM+w7VCxr3lIPSaLibYABS/4JwN5FkJMOwUxAO1q3Wyq6KQFyE+7BmB53Gdj5CS3JAb0q4H3WSov20Qi61MbsUq1CFZUM3zZKkdsW+n8cVIQWmBtLy/xz8Utvm1nNOOnMbZ1JzDju9rMf5HvzAznffc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712931778; c=relaxed/simple;
	bh=1nhHHey9PJ8DLGIRPcryUPM5m7e5VFRwQCHuQCVRLEo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=ap6DrehbNmHK3lXflEA7dBwRcaASqHVwSeVbSoCH6WsvT/64BZ2JZJ8CPtfZEzeXNLPapgz9ytnDF1g1q1H09CcSJ7f/qfRRmU7Vv/dwRK7aExJVY3rf7FZ0fcT7YDiPBjpTEDkrdGA6CsA86B0HTgvNS4rAOERSK5vggveroG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=T3ZTSdss; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-56829f41f81so1388725a12.2
        for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 07:22:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1712931775; x=1713536575; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HkmahkPkQACrnB5JyLYBblQR+A7iG3SRr36SJvXv7cI=;
        b=T3ZTSdssnVDpAuyCks8a9zh1MTGMYhkUQFTpkvW6L++Ogb0G9gXIwdPoYikfLZBgtq
         cbcrzMu4lHxmw66T2Ps64kn2OUofu2y7RUU6XYW7i4oQM6ST3ze3pOPmUeGokk2tMLb9
         0ck9aWoPomsfo6p7Wpv4W9bwTqf+RLPiop0YWAJpGW3AN5O6b8AsQA50W/zg0j0dyp0I
         iM+bVvSPWn2ndbCYM98j2EJliNj7o/Gzib2MTDTvraRC5dsz8jB9novhuX8+2Jhrt+3q
         hyUGEAVV69DWblxAUfy3eNA3MEW+gdZrKXUNFY2hvVuXjPwh8VYuIbeSGfx0JLm/Wrca
         Yigw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712931775; x=1713536575;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HkmahkPkQACrnB5JyLYBblQR+A7iG3SRr36SJvXv7cI=;
        b=d5E0CfoH/gvrcvn1Gour4EWWOAGkq1o1muAAcmksYWLJg1T08TZP5o9aAnsD9eZMai
         DyO7YMhYkD7Ia/jsbwaYfFO9N2+EHKK2tirQl7sUlkGmkh1epQoNxiZ4isz4fpBm4EVN
         FyTxAbP/RTarTNmUDxKlk0QetCdHzr0dADn2tjKHREh3uSxZ9y/I73aIKL/1ugTRAO1U
         Z87gtqaOe5zY0Q/PIzpji0ASH4OKtjD1wcsacdrcryT1A105Sav8T8Ok2FNK9EwUjzlG
         BqpfMbQRW52Vj6UuMn55bXo8jCGyVrhcaY9IhGbwM1uhYpfJ0fHCcWOF4ruseaoLWkYS
         CYNw==
X-Forwarded-Encrypted: i=1; AJvYcCVjGDbcuju4aoph2QnhjmhgEXCvsDWVmuyFZkTN5x6NiQWojsfebboGqvvWTJkAeCYW6f6Ni7+R1qLukAI6FHlvcY33msrzr29IXw==
X-Gm-Message-State: AOJu0YyLpRUXoQ/7z8s7OlZowBTxG097d83hJM9HUNe8wIViLq+LKi9z
	u83Kud8wat2WwEDouCIoepGUoXlNY/cqL1hyOuf2Uv2DoqCw5ptpDv2xfwlNIfk=
X-Google-Smtp-Source: AGHT+IG7S6kcG25Ko/iQD8E1ukj2BrMGOMo+mSr1Prx4UJqquhinYSgF59xquhk/ALw5JQrPnyfQRg==
X-Received: by 2002:a50:d501:0:b0:56e:2186:847d with SMTP id u1-20020a50d501000000b0056e2186847dmr1909304edi.16.1712931775390;
        Fri, 12 Apr 2024 07:22:55 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id k20-20020aa7c054000000b0056ff82e54a0sm920166edo.31.2024.04.12.07.22.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Apr 2024 07:22:54 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 12 Apr 2024 16:22:53 +0200
Subject: [PATCH v2] dt-bindings: mfd: qcom,spmi-pmic: Add pbs to SPMI
 device types
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240412-pmi632-ppg-v2-1-8ac892b1bb61@fairphone.com>
X-B4-Tracking: v=1; b=H4sIALxDGWYC/03Myw7CIBCF4VdpZi0Gpjfble9huqg4lFkUCBiia
 fruYt24/E9yvg0SRaYEY7VBpMyJvSuBpwq0nd1Cgh+lASU2UqlehJW7GkUIizCKzL2p1aVHhHI
 IkQy/Duw2lbacnj6+Dzur7/pjULb/TFZCCsK600M7oxyGq5k5BusdnbVfYdr3/QNZ7iMkqAAAA
 A==
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.13.0

Add the PBS (Programmable Boot Sequencer) to the list of devices.

Reviewed-by: Bjorn Andersson <andersson@kernel.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Changes in v2:
- Pick up tags
- Rebase on linux-next, drop merged patches
- Link to v1: https://lore.kernel.org/r/20240205-pmi632-ppg-v1-0-e236c95a2099@fairphone.com
---
 Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
index 8103fb61a16c..b7f01cbb8fff 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
+++ b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
@@ -160,6 +160,10 @@ patternProperties:
     type: object
     $ref: /schemas/nvmem/qcom,spmi-sdam.yaml#
 
+  "^pbs@[0-9a-f]+$":
+    type: object
+    $ref: /schemas/soc/qcom/qcom,pbs.yaml#
+
   "phy@[0-9a-f]+$":
     type: object
     $ref: /schemas/phy/qcom,snps-eusb2-repeater.yaml#

---
base-commit: fa8c2b5f446d6e8ff4bc8f67ba944b1be3aad790
change-id: 20240117-pmi632-ppg-f1efb4318722

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


