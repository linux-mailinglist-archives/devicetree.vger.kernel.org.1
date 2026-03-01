Return-Path: <devicetree+bounces-269675-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WAChGpPzo2mvSwUAu9opvQ
	(envelope-from <devicetree+bounces-269675-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 09:06:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 120B51CEC5E
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 09:06:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0B55B300ACB6
	for <lists+devicetree@lfdr.de>; Sun,  1 Mar 2026 08:06:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3BC032ED39;
	Sun,  1 Mar 2026 08:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="d7pITuBX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92D4E1FC0EA
	for <devicetree@vger.kernel.org>; Sun,  1 Mar 2026 08:06:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772352393; cv=none; b=fIBBpdUR3U4Fz/DSLX0GbooD+fQ5kvOelQ8TIKbgrq9YiaG5SaNk/PTO2WkqEC2/IRh+8KoxhEPhiLwr01DUOtjRIyE9kmhDnt1y8QsYHCyK2/NyOn7PlZih8Ef2SIUFhOoEmBOy9i75iWNuRtQMhcTie9XHcaFrUCVxSYdwVA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772352393; c=relaxed/simple;
	bh=115g/WH2mtui7fHuZcwchXsAefVgpriJAftdKhU/VY4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pnM3vzrjWKv+Cc6YPzSb68ljOelRo0Zym6KxT+S6MAlMo7PHtBlHDxDxrrmi2geuy6vShUaWMv5ls+4GRFPJXE6key7rkK94m1h554jvp40sAo0ZfRVvYKSaXN7xaCdwrRVhg8ED4y46mmrHQN5lBpdKgDbilOAx939JpXPV1NI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=d7pITuBX; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-c70378ddaafso2412084a12.3
        for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 00:06:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772352392; x=1772957192; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fGlR6YzXE5keZeD5R4R4wdzj80ZRJofyKqhSLLbK2aA=;
        b=d7pITuBXKb+ttwvFoN/kH/q1zeDoKEb0U2dhezOjnn+nO4deEhnECCj8d/o+jCtTxn
         nNpLau8ubEpcpA4s80a3qq2cKmtXBA3V6CIuQCkHgZ1CJG5U/Ar4ijK+eBWCOhGLcs51
         WGeJ36o/35rxxsi354zuLla6pyPZ4gzb6D9+he5t/3UQ8SBAJ2QzkumnmY7KmALva+0D
         LmXnHeV4tyV8hLCkqwld0CfGDxAVA7ujJoUj8pFFSDTl83g7H6a+FEwsbb02GlkKfQXb
         nNzqg0GVgoRa17KlI+2RRtsaec08fJV2TJAEv6inDsIodYy40miW4G4Okwb1bnyLSweK
         3B9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772352392; x=1772957192;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fGlR6YzXE5keZeD5R4R4wdzj80ZRJofyKqhSLLbK2aA=;
        b=VS3NOCu8a7Nymlj3dRHk+qNCN+M+CDMF5EDKQyhdgiuCh2knOSyxD8bHi3/jH7rZNb
         AOUXOIQWGM+bplRLPIBXHkjRi/4GwrrPC8LumAQsLKgF774+P//PU2SO+OYK+T+ESqtb
         39KCsr9viS4kscKXCW6++HOu8uRwtcWAict85Fsh2IBXoK3aE7uH2zaY+vpnfkQAcTV5
         +P0IwQhfTfgH2/7+buFeCgyn02GG6Q/zE1Qe7cGngZ2fEWHk01UtumqCI7zm7pV4RN/4
         Ni//4OL/4Vu5CPQqwEoJdXRLV8TE9SkQe9hrgh8Jla5jEkth4TRIPUdB/BNuIvJVz/RC
         x0fA==
X-Forwarded-Encrypted: i=1; AJvYcCX7N/nNvHxYFvLJ94ROM4iqQdGA73kJB6UMqViJWP+oxyrhu/gK7nCiFYtPfApvScRIP3t790Wm8i0L@vger.kernel.org
X-Gm-Message-State: AOJu0Yxq9Yyg5oth1FHE1qNlmscHmsAflHFx6CGH5imvMtKmVSUYwJGg
	ehAYYxhk4Vm/OfkJvVlBCpXt0gLk5Wk7L6+oVRJ1Mrni0hl7nypCfPYn
X-Gm-Gg: ATEYQzw8gLg0JnLzBHtRoSBKndWt2wtzzHCiEn7+4qSEx4ceVxFejybcVXXQAXWtBcW
	+yMDikUn2zB0LirIeSVl3gE1hQwFvzRtnwb/DFwGKuCMbMbvSvmzfNotLcfdTOGuvrrTq0nN2f6
	yaJN5kLSJ/a2TTBGD3DjE3actwjxStUKVUZZlzP0l+w6FkBSVbuRn6hYNWW6YbMUNdt5iViNiVu
	csHleSdAxy2/Y33y9jwMtOKZR9q4BCJ/FfBv9qvkaMAHg5mKS35up2mzut8Vyk8OdSxTjujVALS
	FkpNRbGuWV3HfhFec4ccKczd7qzN+tRcavNRfL/V0t3W38ubzRTAsw7kjf+ln24nGvLsvl+r/WT
	WNPcrFzVPBUUlmWiFyPtamFtTOvuqqaz7OcsfOZtLBdkR8jslBBtCnlelctBw08vDzPuS4XgudV
	n6IT1DWbsGAZSHeKD1sgyicbdri2zNoxxlHa88Aim6FIrOdU3/mCVnR6UVZxussmEf3o2y5/oVW
	RdPEb0vCvV2H+RWr+GAmeW56OR6Q416CPjlEJtQNFOZMaOvBoCj7mxRBKSFl2bpvs5DDrIGWZKR
X-Received: by 2002:a17:90b:578e:b0:34c:2db6:578f with SMTP id 98e67ed59e1d1-35965cccb83mr6714723a91.19.1772352392000;
        Sun, 01 Mar 2026 00:06:32 -0800 (PST)
Received: from [192.168.2.3] ([2403:581e:d87e:0:fc2d:ed31:e80e:412d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359135ef1d7sm8885384a91.5.2026.03.01.00.06.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Mar 2026 00:06:31 -0800 (PST)
From: James Calligeros <jcalligeros99@gmail.com>
Date: Sun, 01 Mar 2026 18:05:22 +1000
Subject: [PATCH v3 3/7] ASoC: dt-bindings: add TDM slot idle mode
 properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260301-tdm-idle-slots-v3-3-c6ac5351489a@gmail.com>
References: <20260301-tdm-idle-slots-v3-0-c6ac5351489a@gmail.com>
In-Reply-To: <20260301-tdm-idle-slots-v3-0-c6ac5351489a@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, 
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, 
 Shengjiu Wang <shengjiu.wang@nxp.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Shenghao Ding <shenghao-ding@ti.com>, 
 Kevin Lu <kevin-lu@ti.com>, Baojun Xu <baojun.xu@ti.com>, 
 Frank Li <Frank.Li@nxp.com>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, asahi@lists.linux.dev, 
 James Calligeros <jcalligeros99@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2001;
 i=jcalligeros99@gmail.com; h=from:subject:message-id;
 bh=115g/WH2mtui7fHuZcwchXsAefVgpriJAftdKhU/VY4=;
 b=owGbwMvMwCV2xczoYuD3ygTG02pJDJmLP6fH1CYvWfDi6+VdS/ptHsxy/zZ9/q/rWu7bdB9du
 c1wrz6BrWMiC4MYF4OlmCLLhiYhj9lGbDf7RSr3wsxhZQIZIi3SwAAELAx8uYl5pUY6Rnqm2oZ6
 hkY6xjpGDFycAjDV96cxMvRPZA5hNnB6kNker/euf6nWnZJG5XMz9l95IXBFaqHH4QUM/13ivlz
 XP+vO+XRlp0D1vO8fDn37U1wXWD5Z6kr+pOTQSCYA
X-Developer-Key: i=jcalligeros99@gmail.com; a=openpgp;
 fpr=B08212489B3206D98F1479BDD43632D151F77960
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269675-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,pengutronix.de,renesas.com,nxp.com,perex.cz,suse.com,ti.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,lists.infradead.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jcalligeros99@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 120B51CEC5E
X-Rspamd-Action: no action

Add properties to describe TDM slot idle behaviour. These properties can
be used to describe how a DAI is supposed to behave when not active.

For example, Apple Silicon laptops split a single I2S bus between two
physical lines which are combined at an OR gate in front of the
receiving port. One codec on each line is expected to transmit zeroes
during the active TDM slots of the opposite line, or we will have corrupted
data at the receiver.

Signed-off-by: James Calligeros <jcalligeros99@gmail.com>
---
 .../bindings/sound/tdm-slot.yaml         | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/tdm-slot.yaml b/Documentation/devicetree/bindings/sound/tdm-slot.yaml
index ca71e3660f62..457a899e8872 100644
--- a/Documentation/devicetree/bindings/sound/tdm-slot.yaml
+++ b/Documentation/devicetree/bindings/sound/tdm-slot.yaml
@@ -20,6 +20,20 @@ properties:
     $ref: /schemas/types.yaml#/definitions/uint32
     description: Width, in bits, of each slot
 
+  dai-tdm-idle-mode:
+    $ref: /schemas/types.yaml#/definitions/string
+    enum:
+      - none
+      - off
+      - zero
+      - pulldown
+      - hiz
+      - pullup
+      - drivehigh
+    description: Drive mode for inactive/idle TDM slots. For hardware that
+      implements .set_tdm_idle(). Optional. "None" represents undefined
+      behaviour and is the same as not setting this property.
+
 patternProperties:
   '^dai-tdm-slot-[rt]x-mask$':
     $ref: /schemas/types.yaml#/definitions/uint32-array
@@ -30,4 +44,9 @@ patternProperties:
       a mask. The first element of the array is slot 0 (LSB). Any nonzero
       value will be treated as 1.
 
+  '^dai-tdm-slot-[rt]x-idle-mask$':
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Idle slot mask. Optional. A bit being set to 1 indicates
+      that the corresponding TDM slot is inactive/idle.
+
 additionalProperties: true

-- 
2.53.0


