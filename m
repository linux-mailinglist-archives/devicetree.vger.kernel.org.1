Return-Path: <devicetree+bounces-189418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B19AE7C7C
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:23:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E1499175763
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 09:23:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B2CF2BD5A2;
	Wed, 25 Jun 2025 09:15:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="AxIxFfLh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A83229AB02
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 09:15:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750842938; cv=none; b=RyRvbuNm1a1+oKtdtzp9defPGtVRxI8JbPZUBFw8ZpGUROhDSIP5pPVyUkXP9ypb31Rdz1UejPP3qq4qMlBcjmmqeTOlW3wxLfD+Ep5+Dy1sFVv0DtjQaFE0Q6wrCiCGaJLeSdcFW2P6mLCrm7EB5Xl/2DvUlKVJby25lgEuisI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750842938; c=relaxed/simple;
	bh=aptb8l/VFgrDIa1taJf+qbnb7dxQMxO15lxBXFXp/JQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Fj482gLpmAMFpTEyhHW9zKOCk1Nq+X2yp2dSDV5fQJoGcRqK7787mvNa2GwqEYqqV/zQo2v+89ZYAfwyCdRnsrl1qh5FjHZSfF2eb0gvdI3s809s0cIJcgS42EuhiDqE8AHwhT9m1tyEzHK36WdKeYRHNdZ5/DJ2U++3HOeNISs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=AxIxFfLh; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-adb4e36904bso1241921666b.1
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 02:15:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750842934; x=1751447734; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kwIs8jHWHcWsZJaUPIAgXJgATIpQ2CP4tFBNJHO+0qA=;
        b=AxIxFfLhqaBVNcEsMovwdSjZyPBvfK4mC2R29uvsNkBiai3RXq2fXr92V3nhljB2d0
         fxHjzSxj3yyUEI5yoE+NiTRMQOeGuvFDfgkHxCvGz7u/XwMh8f/9MQMvw8yaTS+pgIWJ
         bHlggVjfkYe5U9L1y63d4mVImWOTAFU1QRKX3h7UGWEM92DBUG1Wz9eG1SNX7WsH2+zn
         hxJ++EApVvp4ci7jEaHad0cskF3b0SeOHSZ/7TU+de6j1wyJc7h09GN0iJqkk4ZpASKl
         K+he53uxZxrWs0OSb3AGKgik6N/NeqZOXxEOs/fu6t8+DHmXGlY/B7fLtRBgj09zsxl0
         ZjMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750842934; x=1751447734;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kwIs8jHWHcWsZJaUPIAgXJgATIpQ2CP4tFBNJHO+0qA=;
        b=H4rB1fTaqtzMJxHHGw5TplOvzUqEfCOQFAfcHLan6LqzETU0tS0L6MTw5ujfhLzHZQ
         fWli8xxDmMpfzU8TrFpFakUuRDvya6Agmw71HcUspykKO8Aut1UT9VD4QjIJH0PdUwLy
         /qOzNuAvhRj7EUS/wO7+GsO/uZGG/EWcZsCA1wqNLbvJnfmJhSyG6iqUOK8CN6nHsNbZ
         PQZZlp6shE9b047N6dVEszWhB5r+FD9aWx0Iks5adFTEX0JuzxBgUK4J/+tbVk/aSEfr
         jYnjWLF3nf7lp5D+JXLY+d2mt2f3ALg6ln+i/b+0MC1Bme2JdufEdJj5JkDMVB3ZmkNW
         r8MA==
X-Forwarded-Encrypted: i=1; AJvYcCXUH/axiXmd3Ah4xAYqc3jBxi2pWE8hNg3rCY9cKsuOl2IZZUEf7eFk6XH6zu33Rjt2Qs9UTH4zlo1m@vger.kernel.org
X-Gm-Message-State: AOJu0YxQ1zyMUTigUQ9ucAfg2s0Q3M0ZmrDcdmugocfQyR1D+Vq/lYWe
	ncf34HT9/y+P4/p7p+8tiWPRL0MDwgURLUhQvjOHhWKCeH7gIGwdWIqjxPyGsz5usvj9jJkJDAO
	ehmdB
X-Gm-Gg: ASbGncucMbYxryYJTX3h2VbqwOvBRjFKk63K/rpS34M246DL5aogds4Zv3zztt75Imt
	gY6Dv+CKQSL8Hgmf7s9w7fIa3nbhZP0TTbA1jnoT9aZ7NFy04jEAj/JwE1VH+Zl2O3LkA38d0/N
	Bd2Neyi5R/+ZggTaTZzC7dSh4in7FCZt1534PsP4/qvhI2PUgS/+Q43k4gBA+Bp3FOYPkqzyjef
	z+XXHicvbxgkJAJNBAOufE5kA52EtFfBGJhnntB8DPNUQd8LpLMbB40UmZFuSVUi9QG2SGCNrBp
	nQWSiaKTaG5i6YXF/y3nb3SpCBT1VH6EIDC89zICngDsiF/99Q2EgK79QBTFHKLvhMnux0WlJMr
	w0CWu3OVUuc6YUujVUz1i7yzudyQFnbK3
X-Google-Smtp-Source: AGHT+IGdOTsde/4tV04iLagGS0l3+RiQ3PMit+y3rciCndku3bSKKpPUaXUjkwk7D8PSr50rM3IKfA==
X-Received: by 2002:a17:906:6a26:b0:ade:7bd:e0ec with SMTP id a640c23a62f3a-ae0bea4419fmr221717566b.56.1750842934235;
        Wed, 25 Jun 2025 02:15:34 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0542035ddsm1029713266b.147.2025.06.25.02.15.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:15:33 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH 0/3] Add support for remoteprocs on SM7635
Date: Wed, 25 Jun 2025 11:15:23 +0200
Message-Id: <20250625-sm7635-remoteprocs-v1-0-730d6b5171ee@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACu+W2gC/x3MSQqAMAxA0auUrC3UWutwFXHhEDULW0lEBPHuF
 pdv8f8Dgkwo0KoHGC8SiiEhzxRM2xBW1DQngzW2NN4aLXvli1Iz7vHEg+MkOnfNPHhnajfWkMK
 DcaH7n3b9+37qBYMiZAAAAA==
X-Change-ID: 20250620-sm7635-remoteprocs-149da64084b8
To: Bjorn Andersson <andersson@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750842933; l=811;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=aptb8l/VFgrDIa1taJf+qbnb7dxQMxO15lxBXFXp/JQ=;
 b=a9gifMn5WegpIaJv+574eOya7An88NzqdXtU9kaGYzj5mbG3qtUnqUI/wRQkhkdYLwt0qNIFR
 qh7YOyHiIY6CGQXFQOfDeiD5G0/t7SwH2GleWVuywJ6vXhuPdVp5FGY
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add the bindings and driver for the ADSP, CDSP, MPSS and WPSS on the
SM7635 SoC.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Luca Weiss (3):
      dt-bindings: remoteproc: qcom,sm8350-pas: document SM7635 MPSS & WPSS
      dt-bindings: remoteproc: qcom,sm8550-pas: document SM7635 ADSP & CDSP
      remoteproc: qcom: pas: Add SM7635 remoteproc support

 .../bindings/remoteproc/qcom,sm8350-pas.yaml       | 19 +++++++++++
 .../bindings/remoteproc/qcom,sm8550-pas.yaml       | 37 ++++++++++++++++++++++
 drivers/remoteproc/qcom_q6v5_pas.c                 | 24 ++++++++++++++
 3 files changed, 80 insertions(+)
---
base-commit: 19272b37aa4f83ca52bdf9c16d5d81bdd1354494
change-id: 20250620-sm7635-remoteprocs-149da64084b8

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


