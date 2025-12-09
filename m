Return-Path: <devicetree+bounces-245342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F4CCAF734
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 10:31:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A8ECC3014109
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 09:31:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF2102ED148;
	Tue,  9 Dec 2025 09:31:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GL3JV9nC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7DD2DF15C
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 09:31:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765272703; cv=none; b=EO4QtSV2BjgGMy+HKEarHlx3cZz8in8RfgHkLLsp0dTlY1F1imvU0XmSgcXNg6wmEH7XaLu3cQJQJoOD8Gb/RkN7tRLC/YuaZymCqhqLGlCo3n41sWE+YCeYPMOyocR/2C+z1WT6acQw/P035j9PsZQvItHWSxeOJi8He8sQ7jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765272703; c=relaxed/simple;
	bh=jnORVtQ7uwoxce9j3Ho2s0Rrsem8arYyTUJQLMiHu/E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DMkU3RPyhwHlwwHYU5pno0QgDXmOoM58dEDeBwhvHY7B1xEZzwGgtYXtJFZI4yAwAMAy8zY7kMlUfGkwccQeovhN5NcUiHN0h1+sLLS8Gba3MynrtPcccWoPGtRVJt8EJiOYMCYZt5zRi6cPR9mEhcTae2eYFXrnJcoSO8gOrdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GL3JV9nC; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-34372216275so5470563a91.2
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 01:31:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765272699; x=1765877499; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B/uimxPOVZnzKfBrHV18SDw/9y+UsMeBXkZvH5M2DDo=;
        b=GL3JV9nCNpsTvCJhSOA6FaA8i13WFfUXcit4wHxzrIrecaGiECi0lZzyqtobEIpCrS
         QRwWFyxpk8DJKAnS/73tNu5H42MlNCM9jrfcX/VJVzbsqQLueFiRcNw8cMB6r06gyPRr
         F2Kzv9Mj5wfaxIN2rp19IYJNPwAs9V/ntZ6i9puBQf3nqYW18CUhoceAUMJFK6hh0HFZ
         yyNeQ670tA3SoVNi0VTx4mDILRIAU68eggRdC1Ae54ftlsOWNvUBa2NPdHP4vTOmeFeN
         J/0+WSmOeZqA0DYlhT/eBbOTHAO4Vvox/DYckZiH0t0MjSqtV4x/G3MU91fLNjXac2tR
         8WAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765272699; x=1765877499;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=B/uimxPOVZnzKfBrHV18SDw/9y+UsMeBXkZvH5M2DDo=;
        b=TX4skDl+AYeh/ELlF6WfFA4q2xwCyQqyev2ZxbaAJ0W+Z1DUsfzr+hn+5FGnaTL9TG
         WWla6fz++nuG/3wyLkUUp3/QcV2VDcq9fR5jVWEEXEB4RRdFrgGOVVOD/3/tk0bXg9oc
         CzS9f9yTGoFGcd9xrnw8DsAk3B+cFFm0DwpTgxk9cEQbK05SDxQEoBc1BdWwU+YU6MIS
         5eS0NUdIoemzwT/u639V33sx6Oap0cv9hV3YojJvu3AENIFgW+2GC2GS88Cphqt3z0nO
         yXTKb3IvYIx576u946a78fEyuRok+Z5rYR3C0ODf+ewgPJAxUp/9ncU9RFPkZf7h01dg
         zgzQ==
X-Forwarded-Encrypted: i=1; AJvYcCUqaMyDa/4ufq8SiGeXb54z2ZASc1cfxd+mHTF5XZM7Z1K00YOJ26oRVnVdTsyrs4kclSVykZ5Us1E/@vger.kernel.org
X-Gm-Message-State: AOJu0YzizBYdGw6MlI//m25WEmO/WIkhNmvxMsfhPGfUBCdttDOZi4HQ
	m4FZ6J+lHuV0H9OI4MCzHbilWGLdGbHMQ5giMt7XXM6w1XwyuxJqPBld
X-Gm-Gg: ASbGncv3l7AFSTmZDo5/WwBj16yYp6lSni85xNgldQLu6bdKn/Vnxv3pF1s0Ik4Dkku
	O4ZR9GsBr9WoHJjB+3CueZ1M/sEV4nu+1JtPoqDFLUXYpjkHC4PnK3QSUE3ao3VTlRfvCZOKSmb
	UvbXy74try4l5UZLChdEdPdG6PHlgT1BMxn43GW0/UEZKhmebOeen/q5R4KXPArQ3D9I1Pd3Y0Z
	RFf2n7orvJIfyUzusCtgBdP71DOR5kV6HsW09+OLHlQaTLwiigjLedbhsHHZjtM8eLxWhYmAcXn
	filUSsE6rj/Ecd2h/Gu1lWgg/t67bJ3E+0rxPs/2iKDj9qqbgNTW1KGYfy5yCqrb08RW3KKLk/f
	TW2QFug2BpDcwPAbJlrhzmK8Y5Mdmx3t4w7VbAgsd0dvL2h2rz4dufnQoznpOg60UxKS4nxprEF
	7w+91Hw+ja8mWp+YWIBkeQLsx9AW2Ue6EYm3W+k3xodIX0Auode6jRIKf2mAOe1aqNsul+y9a64
	J4i+XmqFMpJe1bgKdPm5vQJjz3e95wpaYcGb+ji0XLdX5GP4HntZIz345EAzQM9TeOX+o0vfP0m
	0DSHiXaAjJrwZOJAqCf0bKUrjYGC/rrASx2uRSzGYHfPMUFJ65V2QNdS6523IA==
X-Google-Smtp-Source: AGHT+IHEi2mCBtg0iCmcmf1gH4uYiFRGoKIeFa7PXJa21FQTMXXvhgplPXzOltuWl1u4iFR2Sxk4JA==
X-Received: by 2002:a17:90b:554b:b0:32d:dc3e:5575 with SMTP id 98e67ed59e1d1-349a24cb7f3mr7136131a91.5.1765272698893;
        Tue, 09 Dec 2025 01:31:38 -0800 (PST)
Received: from [192.168.2.3] (2403-580a-80ed-0-4835-5a07-49e7-f115.ip6.aussiebb.net. [2403:580a:80ed:0:4835:5a07:49e7:f115])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34a49658704sm1800408a91.6.2025.12.09.01.31.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 01:31:38 -0800 (PST)
From: James Calligeros <jcalligeros99@gmail.com>
Date: Tue, 09 Dec 2025 19:31:14 +1000
Subject: [PATCH 1/7] ASoC: dt-bindings: convert tdm-slot to YAML
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251209-tdm-idle-slots-v1-1-38dabf6bc01e@gmail.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3318;
 i=jcalligeros99@gmail.com; h=from:subject:message-id;
 bh=jnORVtQ7uwoxce9j3Ho2s0Rrsem8arYyTUJQLMiHu/E=;
 b=owGbwMvMwCV2xczoYuD3ygTG02pJDJnmb7LYrpxfsZcrSnJ+7Q6bp+oLO14/uMazNz1yzc370
 77GbUmN7ZjIwiDGxWAppsiyoUnIY7YR281+kcq9MHNYmUCGSIs0MAABCwNfbmJeqZGOkZ6ptqGe
 oaGOsY4RAxenAEx1whpGhndnbxZPurXd8IHCzimiC5Y+WdvpG2i34hrX7NZu/+B4cS6GvyJca+L
 KH6gmqgcn75+y/fuBnXNuqSw9F1fS7j3x7C12R0YA
X-Developer-Key: i=jcalligeros99@gmail.com; a=openpgp;
 fpr=B08212489B3206D98F1479BDD43632D151F77960

This schema was still in plaintext form. Convert to YAML format.

Signed-off-by: James Calligeros <jcalligeros99@gmail.com>
---
 .../bindings/sound/tdm-slot.txt          | 29 ---------------------
 .../bindings/sound/tdm-slot.yaml         | 34 +++++++++++++++++++++++++
 2 files changed, 34 insertions(+), 29 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/tdm-slot.txt b/Documentation/devicetree/bindings/sound/tdm-slot.txt
deleted file mode 100644
index 4bb513ae62fc..000000000000
--- a/Documentation/devicetree/bindings/sound/tdm-slot.txt
+++ /dev/null
@@ -1,29 +0,0 @@
-TDM slot:
-
-This specifies audio DAI's TDM slot.
-
-TDM slot properties:
-dai-tdm-slot-num : Number of slots in use.
-dai-tdm-slot-width : Width in bits for each slot.
-dai-tdm-slot-tx-mask : Transmit direction slot mask, optional
-dai-tdm-slot-rx-mask : Receive direction slot mask, optional
-
-For instance:
-	dai-tdm-slot-num = <2>;
-	dai-tdm-slot-width = <8>;
-	dai-tdm-slot-tx-mask = <0 1>;
-	dai-tdm-slot-rx-mask = <1 0>;
-
-And for each specified driver, there could be one .of_xlate_tdm_slot_mask()
-to specify an explicit mapping of the channels and the slots. If it's absent
-the default snd_soc_of_xlate_tdm_slot_mask() will be used to generating the
-tx and rx masks.
-
-For snd_soc_of_xlate_tdm_slot_mask(), the tx and rx masks will use a 1 bit
-for an active slot as default, and the default active bits are at the LSB of
-the masks.
-
-The explicit masks are given as array of integers, where the first
-number presents bit-0 (LSB), second presents bit-1, etc. Any non zero
-number is considered 1 and 0 is 0. snd_soc_of_xlate_tdm_slot_mask()
-does not do anything, if either mask is set non zero value.
diff --git a/Documentation/devicetree/bindings/sound/tdm-slot.yaml b/Documentation/devicetree/bindings/sound/tdm-slot.yaml
new file mode 100644
index 000000000000..b67844e1dfd5
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/tdm-slot.yaml
@@ -0,0 +1,34 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/tdm-slot.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Time Division Multiplexing (TDM) Slot Parameters
+
+maintainers:
+  - Liam Girdwood <lgirdwood@gmail.com>
+
+select: false
+
+definitions:
+  dai-tdm-slot-num:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Number of slots in use
+
+  dai-tdm-slot-width:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Width, in bits, of each slot
+
+  dai-tdm-slot-tx-mask:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    description: Transmit direction slot mask. Optional. Drivers may specify an
+      .xlate_tdm_slot_mask() to generate a slot mask dynamically. If neither
+      this property nor a driver-specific function are specified, the default
+      snd_soc_xlate_tdm_slot_mask() function will be used to generate a mask.
+      The first element of the array is slot 0 (LSB). Any nonzero value will be
+      treated as 1.
+
+  dai-tdm-slot-rx-mask:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    description: Receive direction slot mask. Optional. Identical to TX mask.

-- 
2.52.0


