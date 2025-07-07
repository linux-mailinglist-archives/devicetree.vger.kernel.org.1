Return-Path: <devicetree+bounces-193628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 83495AFB0FA
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 12:18:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CC08A3AFA4A
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 10:18:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A43929552B;
	Mon,  7 Jul 2025 10:18:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="xifFmMFY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6548628E576
	for <devicetree@vger.kernel.org>; Mon,  7 Jul 2025 10:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751883504; cv=none; b=bDboKer9bwK49+h81GRbhuscU4FA20UMUbxFu5hK7411PzxMNwtHoz6lj3ojh2xiYkETE9DpeLYN8YpVcDVoxxJtkF68JrIoELIU8hPsCVD9s0l5G5ZIqzbSNg2pGjN5bFPLY/w4XgWIKkzqcf6ep0I/nirhIc1Ht3KebwJur3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751883504; c=relaxed/simple;
	bh=WJvLISuNX9SrkFFHrb70kxmDTwn1pDB/xgPN8Mqr0+w=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=m+VvV3SFdXi7Nwz09GsK4Wyij7I5urhLiVZeAT15FLf6Yk8K3NsA1uHa+9NPPPxqZJRMsf4nVAiIQ/kHmG5iCQkI7xZp7tMdIo67pVd9tgQ2fibPnN+45Gmtj/qPhWwuNjV0Z9vRB3ZHE8DEAGY0+Nrmy72oygQ0LUeKCUFp26k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=xifFmMFY; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-607cc1a2bd8so4723076a12.2
        for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 03:18:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1751883501; x=1752488301; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+bGVqtQ2koVGagAhcdjPHNXO3hocrQjyTn8SnwAtxlo=;
        b=xifFmMFY8FbsteONnjM7YqaTU5HZsz7PgfdkxiYrV7+UExgN/mkTs0M5apKcA8r0Mr
         yobkib3krqyHtaB8VKIFblg2ewwWtjlHAYUXqr83xEkq+iKlcsEtl1vngJ4S1DNpN0q9
         9T0jQYklXms+nlM1PKqYFHrFCtALIC3bn0SHAiuAIMD3Hd7rjOepowur7qUt1c1Jl57p
         alxPLC7bNyar66pfC4dmdhomLp2JCuG2VBKdlik02s4gySe9Edv0XmXk9vwSM3dmnnh9
         qFZM5UBkOdgKpKkliBIR1xSdECEPohE5jlPVoIFDyr/26nWUzu93ApMb7GbyHkJGPvPu
         DX4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751883501; x=1752488301;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+bGVqtQ2koVGagAhcdjPHNXO3hocrQjyTn8SnwAtxlo=;
        b=wQ4Lz4r/uuolOdM0lP2ESRqhsEY94u5OHP37Tcs9gTNsHb4yHI2O3whjsL0/jzrGap
         GjzFSEBl5mF0FcvymwlR2A/PPso1QSLTXsK0klDEdZumne1DKDs3FsijdgX3vaW52kGh
         8OagukSQD8To2Sj4rY+gYOdzr4Fw00XQTTnCgViSuZGDDk+6l1YGJHTNFYpVobNMME5p
         IN2geJEqifFw9u3W4noXvcH63lqDk4dO6MpZnP3tcx0ORLadlni1vnQZXLRDtw3wVM4k
         3IVSZq5jVLRFhuteGaOC77AOzdsDMtHlHYz/VTsX//mHUKR/X50tCArxxhzcIgT36vC8
         4Izw==
X-Forwarded-Encrypted: i=1; AJvYcCXPGXscUh4MkTH10mHpl9O1WKajtM45kPOJrW84W0hqNOm5x/NtbqdUPAbunXGcrs1ZOIncnBPMvqst@vger.kernel.org
X-Gm-Message-State: AOJu0Yzkzz2n6f1GlCoFqzgaV5MxMnqLpuZjPztU2Cr+n6nLzq0OVJ3C
	ogKnsEu/wvFSXZOtVnplrWDLnTw8ej7YxtnFzc/HVt4h2YNc1J1W1zJHZYiT+Trg7ZI=
X-Gm-Gg: ASbGncve+pSxCAWdHrpeuSeB+ELvrgTYS/R21ZIDQ3lGFQkzksfvDyZ+U/AX4v8nIkv
	bKDH2YjYKfzN6vs8OHBQUhJDeZ0Es6LheYW8fby3KGHlqMI7sTjiH3FqMk/29zYyIs4vJ6dBTRz
	/8tmaLgybd0dPBWyLx4utEQwyjQiwmoJLBS1uWmFXN9LwGMZ1WIm+ewkRiCtrp123Btv+ZdfXMW
	B3MJlO2NWsyFKbY5POxWh+7bDXB2bHt4B6Wu8GoqBkvP9kflViSGrE5XIg+sqMQsJ702uS8pXc9
	+WZY2PoGR73kNeTuFcK4RjnCeun3LOGFe4a3RMxq53ykqcVfbiVQuPP1KAkvGE2/vTydV1k3nQ1
	kPMN/50LjgRlbbuLjP6yKA8ECNpaYSN+j
X-Google-Smtp-Source: AGHT+IGmi2+AGzMy4YVxywbj63AxXZsKBp/UdN0n3w3kbYRL52C/ABqpGjaRqzOavMUNcyAAWeilCQ==
X-Received: by 2002:a17:907:86a0:b0:ae0:6a5a:4cd4 with SMTP id a640c23a62f3a-ae3fe457953mr1136586666b.12.1751883500499;
        Mon, 07 Jul 2025 03:18:20 -0700 (PDT)
Received: from otso.local (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6bb1edfsm671711766b.180.2025.07.07.03.18.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jul 2025 03:18:20 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH v2 0/2] Add Milos RPMHPD power domains
Date: Mon, 07 Jul 2025 12:18:09 +0200
Message-Id: <20250707-sm7635-rpmhpd-v2-0-b4aa37acb065@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOGea2gC/13MQQrCMBCF4auUWRtJJyRFV95DumgzUzOLNiGRo
 pTe3Vhw4/J/8L4NCmfhAtdmg8yrFIlLDTw14MOwPFgJ1QbUaLVDrcrcOWNVTnNIpMiPlrx2zjN
 C/aTMk7wO797XDlKeMb8Pfm2/60+yf9LaKq0uSMaPBok6vk2D5BTiwmcfZ+j3ff8AkSx5Uq4AA
 AA=
X-Change-ID: 20250620-sm7635-rpmhpd-dcb5dc066ce2
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Ulf Hansson <ulf.hansson@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751883500; l=865;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=WJvLISuNX9SrkFFHrb70kxmDTwn1pDB/xgPN8Mqr0+w=;
 b=6QRyDuZmo/9ShGExVuji4u5RHu2Uq7ibmNyAVct7bykLWvF01kuh3Ce1RW4zAduFIhck7eXoR
 /c6I7AqtoR+ArQyhwHNnhhLq2cTT++xy/oxYe+Hb/Dse4syVlNgzEcG
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add support for the rpmhpd power domains in the Milos SoC.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Changes in v2:
- Rebrand SM7635 to Milos as requested: https://lore.kernel.org/linux-arm-msm/aGMI1Zv6D+K+vWZL@hu-bjorande-lv.qualcomm.com/
- Link to v1: https://lore.kernel.org/r/20250625-sm7635-rpmhpd-v1-0-92d3cb32dd7e@fairphone.com

---
Luca Weiss (2):
      dt-bindings: power: qcom,rpmpd: document the Milos RPMh Power Domains
      pmdomain: qcom: rpmhpd: Add Milos power domains

 .../devicetree/bindings/power/qcom,rpmpd.yaml         |  1 +
 drivers/pmdomain/qcom/rpmhpd.c                        | 19 +++++++++++++++++++
 2 files changed, 20 insertions(+)
---
base-commit: 19272b37aa4f83ca52bdf9c16d5d81bdd1354494
change-id: 20250620-sm7635-rpmhpd-dcb5dc066ce2

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


