Return-Path: <devicetree+bounces-194443-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F384AAFE3E4
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 11:19:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1F8EF7B360D
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 09:17:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4552528505F;
	Wed,  9 Jul 2025 09:18:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="1itLLiXC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5AFA284B59
	for <devicetree@vger.kernel.org>; Wed,  9 Jul 2025 09:18:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752052725; cv=none; b=YsYX3gEnET28cJBvDP/KySWsfSrMzQzgCUDdB98AdVICd1e3yGb6I0oP+RxWLdmo91Ue57nUS5X/RzyqpzLQlxYGCDbvhu3umwpabR4lb/YRqzI8tgoxauA+4IayqzoYoinrrhVZk2k5hq5ZiWiumBEVf8hgZ8E3POl7YkdBtbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752052725; c=relaxed/simple;
	bh=MV3Dv7givJVTh/7aMdoHauUQLRrYUXGf0nE/cB3bHng=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=TRwrEVE1Z90RzRJ2G+XEcimDadnrLXAd+/1SmFEx4ZNhmjrTypR+lrkrFO/u/7t4u3masF78t6cNVfjDA3ld00h+aLGJ8CBOC1B8xlJ/KmgDYc0UR7wW+1QASfG5gYaswYRMpf8+uw9yRdmA7oaCWEcZz/cZfwle7DaRLWF7JXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=1itLLiXC; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-ae0dffaa8b2so1039060066b.0
        for <devicetree@vger.kernel.org>; Wed, 09 Jul 2025 02:18:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752052721; x=1752657521; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ddjMZCutufz18eoluPVKeaKDVNqg//G7ZHMUNzfUaUQ=;
        b=1itLLiXC+HST0QL0upnH7R2RScphF6d1nbOoj5AoYrc1bW5LpUqRAwS4krDfotJh+U
         f10aVpUO7wiMyt9y4qEOnlAPHr8ydS9QzOzl3uZoQfTHYj4KGmkoeIPrioXqDU7YNXyl
         gdW83KiW0aYABmDTQGurH/vXvDdfScW6qjK6pqb0hNz7ieU1iCjq2rWBOFoJZcWng5zN
         WkO/pVo7xtOeXAo/0uurHU58nLbsY7xe+HxD5jAqAuXibKqNu+Pz+v55ebF6OC5qvSR4
         1fGUVqVU1j89hwYcfRsZ0WcA3AvHW7Z+QOSBH5pDvXKO2ROvCst3oxk55NQfjskeFClv
         GdPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752052721; x=1752657521;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ddjMZCutufz18eoluPVKeaKDVNqg//G7ZHMUNzfUaUQ=;
        b=NOJ3mGaFo8aVIc36ttQ47R3iQVAUsALIvKZLp0EDGYdXlvnGLnq6IwoFKBZomgTTsz
         xAHJVyJTxMtWug4U/TNCNQYITRyltMkThtRrJQUZ+em3b7iiWbv5C2gTmQN6cB6OZk1X
         7O6V5lb1yzcoNaK51hECb2AdKfmBTGA840MiUYPppU2u6COMvc+Leh9uCnQcjpECYi7A
         6uYMueCCXPGEwjRi7fhxZJ0d58YGqL3bjeaaLOr96tyr5CqfZF8oFgxKigJ5oDTF7N7c
         CtZ7P/Cb+Sip3QXHzJVE0C247hzkLTd1nnRWMD622iApvGl+Olzc1qyEiH+BDw/shpJW
         mp+g==
X-Forwarded-Encrypted: i=1; AJvYcCWg0hukswB3JCXk9UDvUitw3+r4npxfEEOvJPImAyxqd5cwVXBt8ZnBCdMGkTAO5W4ikzmPGMvS1bn0@vger.kernel.org
X-Gm-Message-State: AOJu0YwKmayCiI8uPtdK1/CFri8EMCOC9TqMP7wmV6fhmdy/vg26Wd/6
	hgsMlXTalcPdYjAwqV/jDWzX6h6GL+NWSUEo9QgSu6CiYxITdrhogVK9AKRy/Nlqowo=
X-Gm-Gg: ASbGncuc2Iz8Bs4V1GLfYPwCV++4rXrQIJNhNkg5/H/AcklMyqpmobLTVDNVxRsVt2P
	Bvw6KCEcD5+ikZTl+GVF5F/l4MYXF1YMCdOEvP7oyL5GC7cpyLBE9eTMLOnP46Z9oC4QyR/Daim
	7h1jiQR/9zISeBTsEDQ3kaLU1sdbysdbzIi77+5Ct9VEi5RjAusUlwHwyFWIVQ/swi9oCfrk9R6
	Leqrr7oxjgLnDVBug8sYb4r0FktEGO/x5aTf5XkPFBo6hdsQOd0o7b9xnc6O3Tr6AfLprdW6Cps
	FNc3F9lrQ30y64wRNyjGlJf6U14xqi8YhHDZ3O4qSuXCVYk/kE2vjK5KQ+MiJfup8OICm1JGvJT
	fvcA+tzHXHnbQO9wvhJ5V5ergOFGjcYWp
X-Google-Smtp-Source: AGHT+IGK3bAftfEkjpmdqalxkrTWESjz3MCvrr9nzk+X9vGMEXTSCOonJxgJBiArXN52o0c+vXAJuw==
X-Received: by 2002:a17:907:7288:b0:ade:867f:1e9b with SMTP id a640c23a62f3a-ae6cf545dc8mr168060166b.9.1752052721104;
        Wed, 09 Jul 2025 02:18:41 -0700 (PDT)
Received: from otso.local (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6b5e737sm1060116866b.142.2025.07.09.02.18.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jul 2025 02:18:40 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH v2 0/4] Changes for the eUSB2 PHY on Milos
Date: Wed, 09 Jul 2025 11:18:14 +0200
Message-Id: <20250709-sm7635-eusb-phy-v2-0-4790eeee7ae0@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANYzbmgC/2WNQQ6CMBBFr0Jm7Zi2QFFW3sOwgHaws4A2rRIJ4
 e5WElcu30v++xskikwJ2mKDSAsn9nMGdSrAuH5+ELLNDEqoWmglME2NLmukVxowuBVtOfSDri7
 GjhLyKkQa+X0U711mx+np43ocLPJrf636r7VIFHitbKNJaN0YeRt7jsH5mc7GT9Dt+/4BitOXv
 bIAAAA=
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
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752052719; l=1202;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=MV3Dv7givJVTh/7aMdoHauUQLRrYUXGf0nE/cB3bHng=;
 b=TC3jsdtAaGPDvRxWi6boglngHAlDnksgBGQq8S9tpXg1SjQUdqq4+co+KVLo05+XfgmXWX1Oz
 gTuLU8NPuGJCMRJ3mNYWVqGXOXOuOEAav4nFKT4PSVvhJtoRakiZPKE
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Document the eUSB2 PHY on Milos and add some driver changes for it.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
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
      phy: qcom: phy-qcom-snps-eusb2: Add extra register write for Milos

 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml | 1 +
 Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml      | 3 +++
 drivers/phy/phy-snps-eusb2.c                                   | 9 +++++++++
 3 files changed, 13 insertions(+)
---
base-commit: 19272b37aa4f83ca52bdf9c16d5d81bdd1354494
change-id: 20250620-sm7635-eusb-phy-d3bab648cdf1

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


