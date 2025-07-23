Return-Path: <devicetree+bounces-199100-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1951BB0F4CF
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 16:04:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CFA04188860B
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 14:04:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A8782F2730;
	Wed, 23 Jul 2025 14:04:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="ommdgp7C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com [209.85.218.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90D7D2D29C7
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 14:04:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753279450; cv=none; b=GQXlsP6QAzhD/syDW29o7WHYSdSPCIouNlyRe1pqUhJ+34QRFT7C4aSC1kvzYDLjbTNLxFWtnYDdaHbUkhYxDUCH2VFyKIETzDLHa/qMmAZv7PpPVxbY4C89y1sTd7DNQNXsKnuFjL6dgF1z9+mg8eD04VCNASsKFCJUJAVC4Qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753279450; c=relaxed/simple;
	bh=RsDj7fBH0wRh1xBxTXXj24VvxAHZ/U4yrchFmTB5WQ8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=PtQy7oohQ+r3kQI3v53FSZfy7neuMOUHRElEq/4EnfqxekGtzFa7PjulX9MPEvQG1EC1Reu/LBYwEabeHWOqgzKOu24/LlgmYMrqKjPO7W7vdvnHt8+/qPQCXhDQkz05bWLsdxzr5BzLHZliKJLDexGCCSuml+yHTC5gz8/tjD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=ommdgp7C; arc=none smtp.client-ip=209.85.218.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f67.google.com with SMTP id a640c23a62f3a-ae0b2ead33cso184372666b.0
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 07:04:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1753279447; x=1753884247; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SViXaxASGAspN2RmEy7xCYDdUl2v6hy0DRjtwnjSz5g=;
        b=ommdgp7CC9bF1OkyglA+vmYWhcYm/ns5PAJKrOlMFAxIeYfwVAImfj3DEm98qctTGS
         9oBAizDdYku032+4BL1pQcW+ZBiF1fLFzdTbDysHXvQiMg6KBNk2+0t72Ed+zsG0gsKP
         MLYOmighQ8nbfupkgAVcTIe8R3ZlAEKe72v63kEDPlgxoDTuCnXn6Rk223NBC9Gu1mHA
         OZPFNSE8P3V8RLMhG1NWweyVRjNjNoD0pMNWEpGxWdgunt63jfYcOEvCCDa117rLHFRP
         y9bZciL1ktzVJsydcPUuQuUkwyo6xpST9aYP2NcrSqW5SpSpu03Gm4jXmzm0fMlJ83jF
         oLlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753279447; x=1753884247;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SViXaxASGAspN2RmEy7xCYDdUl2v6hy0DRjtwnjSz5g=;
        b=o70e+R1KCtewnqOWdNlqaiiGsbTNbeENPK3O0jDex+/zlPCxpLt3wZLpnp5dd5WD1r
         t/3eOuifl/e25HTyfdXq1kGiahii+L49axvao0+DWpcupxG1Ebu0QK+w8zhHtMxejYFc
         9qf3WyG/kW0vMi/nLd21Q5sgMifeVKlP58hRKuKQciNIf4AXAFAC4y8c1p9h/p9aWKbc
         wbO6tR4yjSuJaEajbuop5wClccZnJlqBh8XyIxxqB9T+I/iQq44Tf6gukfS+Hlt8qQ8Z
         yj9d9bvahnJPxXw3poREDHIXoxk3r7WIujhfqwMCO/hwM0s6bxXxbU6KXFbohzAXf/ES
         Bnqw==
X-Forwarded-Encrypted: i=1; AJvYcCW39IqSETyTM4VOWWF2Epj10tCmDgdFZJGamcwTirGR8wmOeJpbNgHRTh8Y+06y8SjmPzNVDuzjC6Xg@vger.kernel.org
X-Gm-Message-State: AOJu0YyFZTocVUoAwZgwQG++fDd5uVHkO0Sv58TPUprbhGXgCdBS2x7o
	YhuveU7me7wBURGhmc2kD6spWskXK6N0kxN/jbKTVfP+tOhm4dAdBD6XUr6DBI3YAt4=
X-Gm-Gg: ASbGncuH8d6E7GVLh9GEm4SaNrKJrMeiN1G2UnHmuobs1uefQjEK3D2bwpxqlIFYZgG
	cxwNsvXggL3GFqBOmVIhK12XZ4/kRXSWHGbxVS5ecxBOqXpYsMP492+PQEhf9jb0F7mJi5U3zcn
	aKF5g6/Cc0SNPW6zIr96GAfvxbwBC7t5ZkhDeg4kcGkFLfFRAhWM9aadbQxz2v+4DiVg7PBfUZy
	BBkgAnW24w55Q7WJtv7MqXQ0qg0p1JeBz6/9p4MgmS2VLQwpx2MCa/9qPGxZj1QfqPFRiNiY6kv
	QB0mDmAI0f4LqNXKroGo+sF7IXFsCQGqgNFpTyg9XTrSezIeeK9K/u43MQOKP9yqUbiqkAVZLlI
	p7kCGldlIC5AoEer+bO2XORgy526Bn+2WVHydkqeD2q6QdKJtBoQvjgAxAtXeDT+aVIEE
X-Google-Smtp-Source: AGHT+IGoYidAqpNmHwrn+fKbqjLOe2L+BWlSXogDHiKeDqGOn183MFAMwjZQZlZecs3w0Fw33JZJzA==
X-Received: by 2002:a17:907:3e1e:b0:ae3:6038:ad6f with SMTP id a640c23a62f3a-af1523a81cdmr939026366b.3.1753279445856;
        Wed, 23 Jul 2025 07:04:05 -0700 (PDT)
Received: from otso.local (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aec6c7d46ffsm1054830466b.42.2025.07.23.07.04.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Jul 2025 07:04:05 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH v3 0/3] Enable USB audio offloading on Fairphone 4
 smartphone
Date: Wed, 23 Jul 2025 16:03:37 +0200
Message-Id: <20250723-fp4-usb-audio-offload-v3-0-6be84ed4fc39@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALnrgGgC/4XOTWrDMBAF4KsYrTtFP5adZJV7hCxkayYeaCxHs
 k1C8N2rKotCoWT5Bt735ikSRsYkDtVTRFw5cRhzMB+V6Ac3XhDY5yy01FbW2gJNNSypA7d4DhC
 IvoLzgNa31Fnr9c6I3J0iEt+Lezq/csTbkvn5dRSdSwh9uF55PlQj3mcoE6024qcwcJpDfJS/V
 lUab15YFUigvSTbqsY0WB/JcZyGMOJn3inqqn8lK9V/ks6SkVTbfaN3qvd/pW3bvgGEJHXbOQE
 AAA==
X-Change-ID: 20250425-fp4-usb-audio-offload-e5d7fb55d283
To: Srinivas Kandagatla <srini@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753279445; l=1333;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=RsDj7fBH0wRh1xBxTXXj24VvxAHZ/U4yrchFmTB5WQ8=;
 b=N3OPUhF05WuYWetYVOiPbbkeCt5+rxepwW2Iye7lnS9uFNfNKnIPYaolqZj5/cHsDx+qSwkLO
 AHcvaQxnkwuAYKGU8WdLw0XNIaHT92fp6nU0PGLH1gzTm0rUdWS+iC9
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Updated description for v3:
Add the missing bits for the sound subsystem to enable USB audio
offloading on the Fairphone 4. This is mostly sndcard enablement now.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Changes in v3:
- Drop applied dts patches
- Rebase on next
- Link to v2: https://lore.kernel.org/r/20250501-fp4-usb-audio-offload-v2-0-30f4596281cd@fairphone.com

Changes in v2:
- Move num-hc-interrupters prop to sm6350.dtsi (Konrad)
- Sort cpu & codec nodes correctly (Konrad)
- Remove usb-soc-be prop as it's no longer needed (Wesley)
- Pick up tags
- Link to v1: https://lore.kernel.org/r/20250425-fp4-usb-audio-offload-v1-0-f90f571636e4@fairphone.com

---
Luca Weiss (3):
      ASoC: dt-bindings: qcom,q6afe: Document q6usb subnode
      ASoC: dt-bindings: qcom,sm8250: Add Fairphone 4 sound card
      ASoC: qcom: sm8250: Add Fairphone 4 soundcard compatible

 Documentation/devicetree/bindings/sound/qcom,q6afe.yaml  | 13 +++++++++++++
 Documentation/devicetree/bindings/sound/qcom,sm8250.yaml |  1 +
 sound/soc/qcom/sm8250.c                                  |  1 +
 3 files changed, 15 insertions(+)
---
base-commit: ac3f0fb04c50a909908fd375686c5ad6b27bee98
change-id: 20250425-fp4-usb-audio-offload-e5d7fb55d283

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


