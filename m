Return-Path: <devicetree+bounces-269673-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4LRTJpbzo2mvSwUAu9opvQ
	(envelope-from <devicetree+bounces-269673-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 09:06:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 579971CEC6C
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 09:06:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id ACA2F301FC8B
	for <lists+devicetree@lfdr.de>; Sun,  1 Mar 2026 08:06:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1152732FA1B;
	Sun,  1 Mar 2026 08:06:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ee9nhMZN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DE3F32ED29
	for <devicetree@vger.kernel.org>; Sun,  1 Mar 2026 08:06:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772352379; cv=none; b=DYsxn9pPfoj1b1jLNPVVBavJbaI5rIw0QnLiPKAlc7JV7/RndDx4tJ8GiQlF9gMuoQMgiEZVjgr4KDWk+n9HzE1S5mM/bJ1RS0lhJMWGVzWbNCCUq7tpXvaz5tAQBmSJ+f5ldT4i+A7dcR/TtC88gIl7Ck/qgp8et5wtylpKPsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772352379; c=relaxed/simple;
	bh=HNjAg2xdRxewqWz3EXUwC/PrDpEvfT/uT/eZPObjn+w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=noFFTjsj2+mIMsdYtsFlLNZCWijMp9JMXUzx8l6L5QfLCM1KKDbBacf1Fv02AuRiNOoNr9D4QOdgfQOprq0Zdm094JjWdpxgNxu2uh8Qa0q2iIt8bNIBkV0B1i08i9o/lGFqI/A+gOdUCxwAyO/mrEWth75KtgJUiPQAvKKhiRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ee9nhMZN; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-3597df496f6so362300a91.1
        for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 00:06:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772352376; x=1772957176; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HKbztpHgM8PKD0CcFwHhxyWzraGVBnVo495326Vfa6Y=;
        b=Ee9nhMZNNt9f6rtp0dxzeXF5BSJx4DMEFgz38EJXcCHPAF3eQVEENH8Vd1bq+w6AEr
         YmUzCBUpR/ZiA4DvhdK8iGHLj3U7D5YAHJYU74vzrxootWoCVHE09QfNhEML188l/x3A
         5hVEAv5XjpbbhVF9gGugeevnrk2cFToI06foGzQdLKXYt0n/WxiC29bNkbE3hFyeJTtc
         HNR4yS7MuSlbLtaeBpZdQLOrlwZTCb/aGozpiQG1JxvObxtdyQmcsAn7IjovgFHAZEax
         bfYrO2SL7XBGqa31bj5022wXGJ/ys2K2CuA8iHG3nAI2HEkrkwnNq4uhExA+Qd5swmYa
         WMDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772352376; x=1772957176;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HKbztpHgM8PKD0CcFwHhxyWzraGVBnVo495326Vfa6Y=;
        b=Y22XV11LHC4oMqz7bKj6f1hGyRf/jkJG8WBFeFY+XehsxQ5drCMdw5NaFMDEpxqnxP
         r319uL5NYQNFSaIvRw7UAcUyWnE6BWjpFTdC8JyttW0mElgBrJGKh53Hzyddod/rQk9t
         KJTvA+OjiJjXoQQqMt+ptYmpfsvt+HV5wssVk1/J3NL9MmG7iQOkcfnp2+bxDFijC26m
         dlt+WlXUvppcDY/L/Ro468frmImfyCZikykqDUhabMFNAF8jcscsvOj5JOXIY4k4mb6q
         ZAD72ruS/968iGcuZccsRu8l/t27tOIImwy7PP3BSIRpocYP2noXV0rla0ccl8O+cjCr
         OjOg==
X-Forwarded-Encrypted: i=1; AJvYcCUqVocTrxMH4I/1dLeCTFOt6lOqmZ6b2fL5ToDEuIsKzTanIFbWRNPBSmZ+NPRUKCUkASzcLR/g1fpp@vger.kernel.org
X-Gm-Message-State: AOJu0YxVUXqfFaLKHnsFcwh9qe9fpYXrTf/MtHSoWSaT77iot5N1Vaus
	pcM+BxfZxOR4Zi3JZCAOmBFPn4EaBTUUD4mWPlNJJsu1ClnHAIEdPey+
X-Gm-Gg: ATEYQzzad0Igy8I57YQ/+N7K3JrW1C8kzrlPV+JkNbdejTVTq+BMOkTMcXCV75mfuDX
	Krkgl1D1dNCjj46PbaU5YNU+FNKKRqhGUNO5QA/sgap15L+XxYxwzKVj5F7HzJlJvz2CnDgm5RI
	SaSpc19mBEiKrxTC+fkE6/+Pgjyrk3gmLNGgOpBmIIyPrU02HvF1V++U9tfNg5BpaCIllZxr1M0
	Jhmzik5HHdlPz1nEtKtvOZSFIt23Q9lUGEU6Yoe6EX5j5hChTMvI0xPgYqpcior7s4Hre8bMV9e
	t0O8I9UB+Cqku8ZkesSiqkeSXqGwuVVaOpTKiyarNTfCZjw4GS22lm3+6wQ3fWY9luTixwGwIP3
	KmzCVIDC7LNBw7XK5Q/UBYAHxwd6iTFsqVDxyGAe2mJXfmq1pSvBeWSA+bG1PYGEzZvkYRvthZG
	w6s+/dnaKa5gMAvDxF2urM2/4lckH8mg73pYjvURKycrEn6eWI7J22hMlhYv39DFtvb6ZMc6D4Y
	dhu/us+qKYtDuQL+7pV/GXIbhlUmSxGKuxXHBb3MJ0kGKETpHpGONlLgJ78fDmt/RCX6WgKVSOB
X-Received: by 2002:a17:90b:3f87:b0:359:8014:d5fb with SMTP id 98e67ed59e1d1-3598014d645mr3245982a91.0.1772352375853;
        Sun, 01 Mar 2026 00:06:15 -0800 (PST)
Received: from [192.168.2.3] ([2403:581e:d87e:0:fc2d:ed31:e80e:412d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359135ef1d7sm8885384a91.5.2026.03.01.00.06.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Mar 2026 00:06:15 -0800 (PST)
From: James Calligeros <jcalligeros99@gmail.com>
Date: Sun, 01 Mar 2026 18:05:20 +1000
Subject: [PATCH v3 1/7] ASoC: dt-bindings: convert tdm-slot to YAML
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260301-tdm-idle-slots-v3-1-c6ac5351489a@gmail.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3210;
 i=jcalligeros99@gmail.com; h=from:subject:message-id;
 bh=HNjAg2xdRxewqWz3EXUwC/PrDpEvfT/uT/eZPObjn+w=;
 b=owGbwMvMwCV2xczoYuD3ygTG02pJDJmLP6dvf2pd1qHRvMz1xi4v/i9vSkzeL088WKxRn2z4p
 TMz/bl2x0QWBjEuBksxRZYNTUIes43YbvaLVO6FmcPKBDJEWqSBAQhYGPhyE/NKjXSM9Ey1DfUM
 jXSMdYwYuDgFYKpP6jD8FdFdfO5hUsaOKw+lrt6UzfgXfjtO7nf3noRZrzrm8ISFFzAy3LpZs+4
 O53ye+6smZzlZH57lNf3Lovuq18IcX523mefVyQgA
X-Developer-Key: i=jcalligeros99@gmail.com; a=openpgp;
 fpr=B08212489B3206D98F1479BDD43632D151F77960
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269673-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,pengutronix.de,renesas.com,nxp.com,perex.cz,suse.com,ti.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,lists.infradead.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jcalligeros99@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,devicetree.org:url]
X-Rspamd-Queue-Id: 579971CEC6C
X-Rspamd-Action: no action

This schema was still in plaintext form. Convert to YAML format.

Signed-off-by: James Calligeros <jcalligeros99@gmail.com>
---
 .../bindings/sound/tdm-slot.txt          | 29 ----------------------
 .../bindings/sound/tdm-slot.yaml         | 33 +++++++++++++++++++++++++
 2 files changed, 33 insertions(+), 29 deletions(-)

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
index 000000000000..ca71e3660f62
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/tdm-slot.yaml
@@ -0,0 +1,33 @@
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
+properties:
+  dai-tdm-slot-num:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Number of slots in use
+
+  dai-tdm-slot-width:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Width, in bits, of each slot
+
+patternProperties:
+  '^dai-tdm-slot-[rt]x-mask$':
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    description: Slot mask for active TDM slots. Optional. Drivers may
+      specify .xlate_tdm_slot_mask() to generate a slot mask dynamically. If
+      neither this property nor a driver-specific function are specified, the
+      default snd_soc_xlate_tdm_slot_mask() function will be used to generate
+      a mask. The first element of the array is slot 0 (LSB). Any nonzero
+      value will be treated as 1.
+
+additionalProperties: true

-- 
2.53.0


