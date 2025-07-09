Return-Path: <devicetree+bounces-194624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 101D4AFECDD
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 16:58:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6C8D84A6A72
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 14:56:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5C162E7188;
	Wed,  9 Jul 2025 14:55:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="E1BwbKxT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D00302E62B3
	for <devicetree@vger.kernel.org>; Wed,  9 Jul 2025 14:55:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752072927; cv=none; b=klIo3IVMBGU0urNgGjkhzIle8oJsb8rOr54x3sCsllTCMcKVufw+iStjyVH20dDO0+KErIaHfAJG1JzvKadBb0lxQ0zd+1hC2rUzjH+PUpfWqIT9QnL73xN9if9z6tio4gPXSIHkFiYUH9Sb/CIXpiyci6+w4c+PvHywUcBpVCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752072927; c=relaxed/simple;
	bh=+2bfuo/XxdFtjNlpBnRSz55oWsfelV2bXIgIhY/HOGo=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=kxUZOmcoO5+PgJrXGdOaUVgYs78MOysy+q9C1A6YUl9L28tvy3MvQAixMjdCrtZc3qocNhLPHlll82OfXiMFWcJOJEsfR4j46Eo4oXwjHnkB2rD7qFAAkvNYkNWjOKYJYxDULyo7O0YfvwlhXSg2gSvtDCzqoAolYIbO66xC1mE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=E1BwbKxT; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-ae0b2ead33cso7401666b.0
        for <devicetree@vger.kernel.org>; Wed, 09 Jul 2025 07:55:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752072924; x=1752677724; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xsudQgPEXLO/8rlrHg7A+VcqH4UVc0XGQUOkZdmkbM4=;
        b=E1BwbKxTcKBCaV5Ij/+rHcE8p3g0bwuFB75skGhRurqQLpG69++LXi8ntlEKOZSY1i
         S5aVNip+/zOF0yFON+7v6uW/QmZUjR6in5NOtAwEo2YcLk95LUCBteD6HZ4EtbMlJ+sN
         LthDYz5Fe6VW3RDlMiNG0wC/d34MDA1fQpNWITEGQtf3XfQSu65mcQIHAEzOd3YKhUIv
         FHxt/+J9G6mPvm6I/xMByj1BmBCVE6yeB75OwzYdL72YkoLNo+AHcOej809fHjzMXUJX
         k8FvTVqDtd4Jtxutjwa39PJawUcE9Sdxe7Y2fEM7gRk4vTyPJV2VusGZ94a+5SKHDJVU
         LivQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752072924; x=1752677724;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xsudQgPEXLO/8rlrHg7A+VcqH4UVc0XGQUOkZdmkbM4=;
        b=wzFAiwY2OTMI91ZBIbAwIm4rA0UmxkQ0TD+qNpUsfGqMfXEhi5f1vjNfsUgVqcgxeI
         JELSUj59o2s5jmBPD0PFEbnzmHixAff7eTk99Sq/ljEDnvUm+qnKXaOXI5i9E+aoTWvt
         Ugrx85emXGH/JJlrowq8zh9lMRdKSVgy4tnSpOG9696Op4vtHZcd+XBN7KmmuZ3PrrCX
         KJ/3XU/KCKHK9TR10KHKtTc766+mAaR/aM/qXrMJZqUBAcDW5RBf+FWLNn34Wn1wBEly
         cmB9J63/aLLRtwQ3m4ZWU3Z9anx//U8D6SLjC3MRVuumtHb/OH0i/Io5kueB/6TUonfp
         T/6g==
X-Forwarded-Encrypted: i=1; AJvYcCVtp/7E/GZ3uID1f0l4ZTfadeNgPPnE59IS41pzzVUdTK1cz8OW3acF3haAczVIlqwkZXl8jvo/j72o@vger.kernel.org
X-Gm-Message-State: AOJu0YyFbgBITUgf/FB8EV97qd2qhWJf5w8T1hBRhbmi6Sv9p7nfEpkL
	phON3MwHzS3tenDfqXKvauz25mWer4n1hwOFl6UBbE1/++IgxLttJA1CzFaeOv04jAo=
X-Gm-Gg: ASbGncuO+5O6pitHhHy7ueBCXHYUIM3GTWszrrGcaQgWNxLIv8cP6wb5HkmhsK7JOBz
	frHJJZ9R32+hZGiJQyYAIGdQZHNkMZfb/mn+82gy5rjYMSs7F0NJkMnM63yg2hA1+24bmHdf34B
	uJtAGOnqLQ0dN3J0YpMyYwk81J+JmK9OvOyLPrt8hDZiLfxYQf8ZlcWVssZnaNdHa44XPQK0kaU
	aYR2wuzi0C6oYWA4+689rbSc4Q9I/FtOtrlj+VmmOnAt75LW8Hr4KAUmrnsoqIvQ6LbSLgAeP67
	VKIciaRZjRni1Zz72k7YTxnDlobkJ3YAWMi7/PUNh7eyR7wFTXaB/KHHCtPvV0ZfO80iiXvKiSk
	+d9RHuyHVTgoQrY+NR5RJzVCxFjUUwjykcAAlKf0IzDs=
X-Google-Smtp-Source: AGHT+IEJi9D3i6knXbAjsckZ7Ciww/QJ7BLM67HvKfXZJLKXPgCmFN58CA6mh9SyrO15bCmZYpI2PQ==
X-Received: by 2002:a17:907:3c88:b0:ae3:ee3a:56ee with SMTP id a640c23a62f3a-ae6d1266a1bmr305624866b.3.1752072924078;
        Wed, 09 Jul 2025 07:55:24 -0700 (PDT)
Received: from otso.local (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6b600ddsm1116795766b.158.2025.07.09.07.55.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jul 2025 07:55:23 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH v2 0/4] Add support for eUSB2 repeater on PMIV0104
Date: Wed, 09 Jul 2025 16:55:13 +0200
Message-Id: <20250709-sm7635-eusb-repeater-v2-0-b6eff075c097@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANGCbmgC/22Pwa7CIBBFf6WZtWOACtWu3n+8uKB0sCxKK1CiM
 f33h/UlunB5ZzL3nHlApOAoQls9IFB20U2+BLGrwAzaXwhdXzIIJiRTgmEcG1VLpCV2GGgmnSg
 g65ujlbIRJ2ahnM6BrLtttb/nVw50XUp7eg2h05HQTOPoUltltecKg+HwiS0WG7SsnjTxxqXFO
 39BK1Vdc6M6bnWbBTxJg4tpCvftn8w31L+6/K6eOTLkp/4o5YFTdzA/VrswD5OnffGD87quf4d
 lDUsmAQAA
X-Change-ID: 20250620-sm7635-eusb-repeater-0d78f557290f
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752072923; l=1322;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=+2bfuo/XxdFtjNlpBnRSz55oWsfelV2bXIgIhY/HOGo=;
 b=xWvHS2PiKGx9o1Y75d8aHnX5JAyJpQ/n8m6U4OfOHpTGyPApAs6B48YmWcriEDLmsi3xk8qVe
 PPsYGLmQPflDDpV6LeYtlYy1puVL7D8jpEP5qSk6tv1ji9/vpUFkq2+
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add a new property qcom,tune-res-fsdif for the eUSB2 repeater and add
the compatible for the repeater on the PMIV0104 PMIC.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Changes in v2:
- Expand the dt-bindings qcom,tune-res-fsdif commit message regarding
  the register value in dt.
- Pick up tags
- Link to v1: https://lore.kernel.org/r/20250625-sm7635-eusb-repeater-v1-0-19d85541eb4c@fairphone.com

---
Luca Weiss (4):
      dt-bindings: phy: qcom,snps-eusb2-repeater: Document qcom,tune-res-fsdif
      phy: qualcomm: phy-qcom-eusb2-repeater: Support tune-res-fsdif prop
      dt-bindings: phy: qcom,snps-eusb2-repeater: Add compatible for PMIV0104
      phy: qualcomm: phy-qcom-eusb2-repeater: Add support for PMIV0104

 .../devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml |  7 +++++++
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c            | 15 +++++++++++++++
 2 files changed, 22 insertions(+)
---
base-commit: d9946fe286439c2aeaa7953b8c316efe5b83d515
change-id: 20250620-sm7635-eusb-repeater-0d78f557290f
prerequisite-change-id: 20250616-eusb2-repeater-tuning-f56331c6b1fa:v2
prerequisite-patch-id: 5c504d171a4d1acd9ec376e01e0dd0fddbad92b8
prerequisite-patch-id: 0c97dcf5472fbed8ef4cffbd482f3169fe1e972d

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


