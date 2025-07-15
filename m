Return-Path: <devicetree+bounces-196385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 14586B05344
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 09:32:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D4BEA1881CDA
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 07:32:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC8CD2750ED;
	Tue, 15 Jul 2025 07:29:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="E6ZPNxYU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6CA426F45D
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 07:29:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752564591; cv=none; b=jJJNtOKw0+T1QhXNfl7Ghhzb2PUq701ZkJQZmAF7R1jDPTJWbAcmiVxHCvlXoRBv+Mmsx7zR5CgcUF0XIr4kQvsdqavegvye+6jnRbYws+RN4U3VTWYbKfaqIcnAWRAU9eHEZH3oXqucyV8n2I8ZFMk/ErJ7jHNFc7TO5n/lvYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752564591; c=relaxed/simple;
	bh=fbYN3aPb3XXCiKQcnuxlj3EeuZKZPuonSYvZ100x1TE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=uMQAQfIHeU+A8HXF59M42IxmExwH2S0S+BfYpMh6cN+9yVRv2TWnQSAnVwfRnFS5FRtXuMpCdynxLODvQ+O/mxxx193azrEk90bTV6+htcXMkAHykqIvi6ZQqz3FQbbfBTeQI+zzG8RVqEbhnXHM963piWJ2dnuRbK1X7l9WQcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=E6ZPNxYU; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4561514c7f0so16713765e9.0
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 00:29:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752564587; x=1753169387; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=f6fKdp/I3oAtJ41AZWsqTeQzY0qXnxN3fwHvXO8WXa4=;
        b=E6ZPNxYUQZEUp2kfYTVx+u++gszDAwN5h1/4yViI0XrX9W+5a4cREaW3fzw/DlDexa
         ms5ooQ43n+UohTJTeNd7TBZNxrSAxHeaSazntEJTdJAbx3fuK+C1nk2YOv+nM/6BcvA4
         g6HCwh4iRCPOLo3TnornCSWtFYe3FW+4elQK8hz+dfeB+3cn0mJSWDfw1lZgOIE0047u
         pCS6C4SS1agIVmKUjjbUbNAfk/f9znMXO+HR+MyM9qayEEvT/9yBJbzF+dxjXm/DX/vn
         dQ4/hKbsiCs2jw304NcvXNBT51NeWdCF8KYfxiPAUOGTSOB919Z6rPN5wtyHjNxM7PB9
         1Vew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752564587; x=1753169387;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f6fKdp/I3oAtJ41AZWsqTeQzY0qXnxN3fwHvXO8WXa4=;
        b=I+FY5ZPMRrB7Gg5QDzQaB4+uh/QXZNJ0IA2d6cJ+LPdB2Rx51nsjBY1TIVafseoOgg
         QZXYGVPJCMqQIwz+Rf9wmkGLBdvKQZ9A5VOLz9AURUzdHwbJ2zJk/9PVjKWGaFPwvN/S
         CSpFfXJYTi6d8f4KMGtMHm0gyShT8N091+bozZMtrJnNTtN1TeLTROM2afga505h9gCG
         t2J3EftYMiFO1ZV7Hwz5j/NkdNVHRtP74QE94leb4l9w4SW/3YM2R9kAOTs/bCm0hWXk
         LPkVn5ZuIEkeDky0fW0+exLWlE2g1LJMgZhjN797EtCeKnBOeNN6NFcr4CKKM99LShi4
         i3pQ==
X-Forwarded-Encrypted: i=1; AJvYcCXGSB/nFIbEoCtwOIq/oMfY8V30DUTlDaT3f/PNlm+g8yIU/BHQeoYwBfF6gs5zMMszn63NcnjIqal2@vger.kernel.org
X-Gm-Message-State: AOJu0YwpTDZoba/63nrJ+Kz6IGnDtu+H09bhBXcmu9wvOQfWRMlGv56s
	LNzM+dDrbpT1mOyfWXrIUG6iDMwFUA5yHnR2I0TYDKl4sgZLv/tFaxkmRnDbbnPJWng=
X-Gm-Gg: ASbGncvPyCI0UNd2dWNsgtTVp4OvufQb602GJoUy30S+jMvTzesxeeuMHJVyyTkoYZ5
	APT+xeA5M1l0HgxcRn5B5Pl7z0EM38CvrUwdzKTtDMymC12JqW4a+bTz62MNuH7TXXCOm56/r6Q
	OD3bq2YXuJHHFX1zMetc8j1rMVNrxVKtGHOJhLu8S6zSoJaTeqkQzJNraNWUYQc9I8WgX7401Cs
	xLwqYRbAqs+S5OO/Z93/P6xur1XIOxa6J2LuQoP3Ul1DXKg9LOyLYymS37fl8KcP1NuL/OnfsNJ
	CIuCvfUCCxT4s1xbe71ptPeQrp9VBcsqK0a+JLSQ7qujn6asAgs2glTGAA5086qh45P/0wm7Rsf
	r1g4IHzP/cS7vSlJuWRB4tVaXitrkCe1SbISSRWIRxiggPHHBClBVK4fb
X-Google-Smtp-Source: AGHT+IGG5/C3xBwiXlZfBkTPzKSCxIpXMT5JelM0B6XvmfLgCo3iFhVlka1xI/0VqzDpufUqJcL89w==
X-Received: by 2002:a05:600c:350f:b0:456:11a6:a511 with SMTP id 5b1f17b1804b1-45611a6a7e3mr67459555e9.20.1752564586974;
        Tue, 15 Jul 2025 00:29:46 -0700 (PDT)
Received: from otso.local (212095005088.public.telering.at. [212.95.5.88])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-455f8fc5a01sm106703395e9.32.2025.07.15.00.29.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jul 2025 00:29:45 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH v3 0/4] Changes for the eUSB2 PHY on Milos
Date: Tue, 15 Jul 2025 09:29:33 +0200
Message-Id: <20250715-sm7635-eusb-phy-v3-0-6c3224085eb6@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAF0DdmgC/2XNwQ6DIAyA4VcxnMdSUGF62nssOyDUwUExsJEZ4
 7sPTZYls7e/Sb8uJGJwGElbLCRgctH5MUd5Koi2anwgdSY34cBrEBxoHKQoa4qv2NHJztSUnep
 EddGmZyRfTQF7997F2z23dfHpw7w/SGzbfq36YCVGgTaVkQJBCKnZtVcuTNaPeNZ+IJuX+M+Q0
 BwNno1KNoB5pEL4N9Z1/QBi9jRk9gAAAA==
X-Change-ID: 20250620-sm7635-eusb-phy-d3bab648cdf1
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Luca Weiss <luca.weiss@fairphone.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752564584; l=1471;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=fbYN3aPb3XXCiKQcnuxlj3EeuZKZPuonSYvZ100x1TE=;
 b=Rjj/7cfLdOoBVZeq1Uex30CfHl4mVnyxTojkjaBXB3wvxI+1Sg0gPtk3KypHpCgYRDpZMiCTv
 fBxKY9XYn3nBqH3/pWsaQOIzRV1+9BRmnl1PtkcifgHnhb/tPXnWY7h
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Document the eUSB2 PHY on Milos and add some driver changes for it.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Changes in v3:
- Make "extra register write" commit unconditional for all targets,
  write the register directly as per Konrad's suggestion
- Pick up tags
- Link to v2: https://lore.kernel.org/r/20250709-sm7635-eusb-phy-v2-0-4790eeee7ae0@fairphone.com

Changes in v2:
- Rebrand SM7635 to Milos as requested: https://lore.kernel.org/linux-arm-msm/aGMI1Zv6D+K+vWZL@hu-bjorande-lv.qualcomm.com/
- Clarify commit message for "Add missing write from init sequence"
- Pick up tags
- Link to v1: https://lore.kernel.org/r/20250625-sm7635-eusb-phy-v1-0-94d76e0667c1@fairphone.com

---
Luca Weiss (4):
      dt-bindings: usb: qcom,snps-dwc3: Add Milos compatible
      dt-bindings: phy: qcom,snps-eusb2: document the Milos Synopsys eUSB2 PHY
      phy: qcom: phy-qcom-snps-eusb2: Add missing write from init sequence
      phy: qcom: phy-qcom-snps-eusb2: Update init sequence per HPG 1.0.2

 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml | 1 +
 Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml      | 3 +++
 drivers/phy/phy-snps-eusb2.c                                   | 5 ++++-
 3 files changed, 8 insertions(+), 1 deletion(-)
---
base-commit: 19272b37aa4f83ca52bdf9c16d5d81bdd1354494
change-id: 20250620-sm7635-eusb-phy-d3bab648cdf1

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


