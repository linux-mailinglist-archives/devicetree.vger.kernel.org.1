Return-Path: <devicetree+bounces-245344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BC509CAF737
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 10:32:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6D50F300AB3E
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 09:31:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 808822DF709;
	Tue,  9 Dec 2025 09:31:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="A2XoRjvy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147E02DA75C
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 09:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765272717; cv=none; b=o5E1rUyohfXE40Ayxit+M55oBKabOGYYIAZTQ0ZWscWrO+HHdk+ORqg0TvvAeQ8qDJwPhCj3NiGUO3jaF6WYyJSworI2jNVwGDRSVNFSGBQot0IgrOyaydXWOVQqwdSUq9ub3Ntjhnx1rj9HkjVuRbBDQDGiKOhWEcd4n6qd7W8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765272717; c=relaxed/simple;
	bh=7Jl02U1GOnxsVCRYbpxJ0xeuR6SSn1DPWvASGvNoLSk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AZy898hKq10kZK1XYfj+HA2T/B2/xL7iQT4KR0MYufKhgyJliIH8fKljGMsDvMiQQ/QYWH24ihDubWp7/LQWKZbI2YlwtOZORpinIL6npRRufssuIrQ8h+m8iAqmd486EsvJFBkfQ7hHjw88pkMSxRKSsiradfIhbi3jhPgmMO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=A2XoRjvy; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-29555b384acso55367985ad.1
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 01:31:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765272714; x=1765877514; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S6Kh/S4AuBYubzHpa9fGV98tRXc6USzdHeQlW2hl8J8=;
        b=A2XoRjvyrI+HLZ/zxL/gWuWX6DZtpkC2XRspvPXZNwU4j2mwxSow/flRW6nBGyEOul
         8q1L6WFm1rvWtBTGRUFvXcMK7lRoOaxamQp8lM+002scixBF2hgaKbTJqGdOKzLt9oM5
         Uv15L98lWZRESsDz3gZParHduV556H+bkzLPuwmeo6sfm5d9fAegBTS6Z4UkWa82w9K3
         q4HqSWV7pM2h6M0SOslQo9gxT8WltP2eRA5by4/b+qjAMMMrkRXDodvamQrJKeJ6HfE9
         4YA3Qtn1KPAfTCfpMC+06ltmkkDZR8cufnhibQLJ91qXhUvnYTEKQDaFHW9q21teCBEW
         ExkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765272714; x=1765877514;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=S6Kh/S4AuBYubzHpa9fGV98tRXc6USzdHeQlW2hl8J8=;
        b=O5A9D2A/Yb/JZ/L3yKVIhZkWWdMIOtHpj8Q+PJ0cUBvKrl35QTZKSJkulMAtHMsxe1
         CyqMw3AcGDAEh32QZoiMmO1D+eowrOQRLAs4AB4udLFYxhYQMzeiN893p+OlTTc1orbz
         JTWVtuRHuXvnRB2svgRmvuxmE3qu4yMhCpKtf3jB0ykzF0qcLCAjVtiPh9Ut8n/+0k7F
         OyUeFd96613/ElcEg/CYOzMDJ+d+Iop8yOdnPJ6ic55ml5EuQmhxYv5bw3PdUJznvGxB
         JaSTMicFabcleompwJYUrAsBoVexfdj4o1+5NqfLZ59zWESCgjgVxp1IXsNvwlXNUwhw
         4flQ==
X-Forwarded-Encrypted: i=1; AJvYcCW4N10vMZoxpWWWlRaQt6T/Oa+7qZ4JJNAM2F6kVdf8uA29aAai98SPT1U7W+5HnByLXFXBMBJ7OGtm@vger.kernel.org
X-Gm-Message-State: AOJu0YwpLtDZd8/+8lNjV+DPZeNCB1ViYDxEZ+F8pWFbRn25T5+mOEHF
	8IzaAJP83yv+BZJKtnvpAZB8vyyFXO76UJgocnGq59Z7r89puOBXTsAa
X-Gm-Gg: ASbGncs4v0kgym1ox2uvtmtDbketVvFT3ynDGayQDSMuAJYQtKH6W9WGyVYN30iHfFl
	4cQDlJgZ4fBGZNI0cZoBdrQlNl6gi8JrE8Pu2ypYVzK0JXDN3F7k91ZCNgU+721qbY5DYfhV46i
	kuP0hcXh8FvCyZZdgqcOPZFoaSAjYjlXK6jQAjLSWLfQTywa6QiIXO/xf1hf5f3/AJKFL2PcU6c
	zHKgPiq1bDYmK0/F/muFWGZyc9T20AJ5HyPWkU3UPQxheFPaRVa3OsPXP82Ed/XAmrDomEMFEKY
	XE/8hrLPGI/ub23UM7/TKWjOQ07dFhPJwWjcwa6EPpSwFxTeX4M7PKGeluHO20AbqXpnYAO1hVF
	uU5Z7UWXuXlPka9UeessBQiA6VCbHQE8SWr0jreqGLGtX4mg2EcDP+43IQhFM91QQFFJFeG62gH
	G+fcWakeV6aRo3aMXM7JPVMXje4e9RhYOUlRLkYP2ECaZiutX54HOG5F9Sw42O/zIc60H6VhdxK
	80QXJErBe69lrlbTpygjHDgcYZBI+shYhnzefF7uHkRupYSlpuKsXR49nMlU6irV9dHTP4mvREG
	FoRedg5Wh2aFcyq1eQr0T9VBY1ydJyf2cnxCOMf+W2ZRwk07Kfc=
X-Google-Smtp-Source: AGHT+IHjkhG5ILuMnz9u+P9xFQUrtxtM7YAmHub3kulzNeg1dJ/92cTnLqbWYakB7BqZN9JLGA4WKQ==
X-Received: by 2002:a17:90b:38d0:b0:349:8116:a2e1 with SMTP id 98e67ed59e1d1-349a25fe29fmr9166033a91.20.1765272714091;
        Tue, 09 Dec 2025 01:31:54 -0800 (PST)
Received: from [192.168.2.3] (2403-580a-80ed-0-4835-5a07-49e7-f115.ip6.aussiebb.net. [2403:580a:80ed:0:4835:5a07:49e7:f115])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34a49658704sm1800408a91.6.2025.12.09.01.31.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 01:31:53 -0800 (PST)
From: James Calligeros <jcalligeros99@gmail.com>
Date: Tue, 09 Dec 2025 19:31:16 +1000
Subject: [PATCH 3/7] ASoC: dt-bindings: add TDM slot idle mode properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251209-tdm-idle-slots-v1-3-38dabf6bc01e@gmail.com>
References: <20251209-tdm-idle-slots-v1-0-38dabf6bc01e@gmail.com>
In-Reply-To: <20251209-tdm-idle-slots-v1-0-38dabf6bc01e@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, 
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, 
 Shengjiu Wang <shengjiu.wang@nxp.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Shenghao Ding <shenghao-ding@ti.com>, 
 Kevin Lu <kevin-lu@ti.com>, Baojun Xu <baojun.xu@ti.com>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, asahi@lists.linux.dev, 
 James Calligeros <jcalligeros99@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1930;
 i=jcalligeros99@gmail.com; h=from:subject:message-id;
 bh=7Jl02U1GOnxsVCRYbpxJ0xeuR6SSn1DPWvASGvNoLSk=;
 b=owGbwMvMwCV2xczoYuD3ygTG02pJDJnmb7ITGfs3K75KfJAWs1t16sON9i82Vgrez5qqKhy6M
 OTWwe/8HRNZGMS4GCzFFFk2NAl5zDZiu9kvUrkXZg4rE8gQaZEGBiBgYeDLTcwrNdIx0jPVNtQz
 NNQx1jFi4OIUgKleu46RoXeHgN9hvsPSjVOkY//fejuX6+yjePlisc/6klmqz57MVmZk6D/3No9
 j5pItzfNllOe8PL6pPuGw7t/mXsHPnMdlOsztmAE=
X-Developer-Key: i=jcalligeros99@gmail.com; a=openpgp;
 fpr=B08212489B3206D98F1479BDD43632D151F77960

Add properties to describe TDM slot idle behaviour.

Signed-off-by: James Calligeros <jcalligeros99@gmail.com>
---
 .../bindings/sound/tdm-slot.yaml         | 32 +++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/tdm-slot.yaml b/Documentation/devicetree/bindings/sound/tdm-slot.yaml
index b67844e1dfd5..b247b315d7f4 100644
--- a/Documentation/devicetree/bindings/sound/tdm-slot.yaml
+++ b/Documentation/devicetree/bindings/sound/tdm-slot.yaml
@@ -11,6 +11,16 @@ maintainers:
 
 select: false
 
+$defs:
+  dai-tdm-idle-mode:
+    $ref: /schemas/types.yaml#/definitions/string
+    enum:
+      - none
+      - off
+      - zero
+      - pulldown
+      - hiz
+
 definitions:
   dai-tdm-slot-num:
     $ref: /schemas/types.yaml#/definitions/uint32
@@ -32,3 +42,25 @@ definitions:
   dai-tdm-slot-rx-mask:
     $ref: /schemas/types.yaml#/definitions/uint32-array
     description: Receive direction slot mask. Optional. Identical to TX mask.
+
+  dai-tdm-slot-tx-idle-mode:
+    $ref: "#/$defs/dai-tdm-idle-mode"
+    description: Transmit direction idle slot mode. Optional. For hardware
+      that can configure its behaviour during idle TDM slots via
+      .set_tdm_idle(). "None" represents UB/unspecified behaviour and is the
+      same as not setting this property.
+
+  dai-tdm-slot-rx-idle-mode:
+    $ref: "#/$defs/dai-tdm-idle-mode"
+    description: Receive direction idle slot mode. Optional. Identical to TX
+      idle slot mode.
+
+  dai-tdm-slot-tx-idle-mask:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Transmit direction idle slot mask. Optional. 1 represents
+      an idle slot.
+
+  dai-tdm-slot-rx-idle-mask:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Receive direction idle slot mask. Optional. Identical to
+      TX mask.

-- 
2.52.0


