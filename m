Return-Path: <devicetree+bounces-269674-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wP/RLKfzo2mvSwUAu9opvQ
	(envelope-from <devicetree+bounces-269674-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 09:07:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 250131CEC7C
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 09:07:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 908D33018286
	for <lists+devicetree@lfdr.de>; Sun,  1 Mar 2026 08:06:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9910932ED27;
	Sun,  1 Mar 2026 08:06:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Of4jPXgl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EAE9224AF2
	for <devicetree@vger.kernel.org>; Sun,  1 Mar 2026 08:06:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772352385; cv=none; b=bHGY2IzTFyawiIRjy/lJuufWdLwdW8E3XMrPVdahQuToDmp+BskBX5cZfE2kZ9j5+G2Pc5ueDHnGaCWlE81CqksiwPl2nSN+YRDE/PdWxUqxtlLkHzVoIUJPfpqbYekod9YAfldtpcFvRYjKLDVVI+Q1N2vYJvANlBkuPfQDJQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772352385; c=relaxed/simple;
	bh=lwN3AXla5E+hMpOvc4cTc/hS2rvMFZBUZ7ENOshqDaA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BZaV4igaU1cyEvf31/qzLio1DeX3hy6oJQLq5B+NBbs538cSYAn5r/NVuegvTm5dqZoFxxY00qaHkbbBABYZQ8qPI0DDQ5yReHFyBV/KBss9+HNrxT5DhuOnDwF3QGPpzbdtbf+tnOcqA4/qSUrPsHjYdgZM+B04KhgUf4lYlLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Of4jPXgl; arc=none smtp.client-ip=209.85.215.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-c6e3e4e7388so1348151a12.1
        for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 00:06:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772352384; x=1772957184; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SejpEdn5w8C9URiM1Is7ely7u34ezEnpcYmkEzh4N/0=;
        b=Of4jPXglZ9UMySYQgG+KBUjZHUGQI0Q6wA4LQJODvjVvpsGqUsPVxg5ipjk50HfxPU
         Yy35ROpty9y8+hy0egSERcobI4aLjY3e5BR/LkochEqjSGQNf6P4YJkyQaebUsfVA2CV
         zpTIulggSr6vxr4vMCyEpV5k0nPY96N7bKNZwdUKuGWPBbwA3iroltUZHib0xXNvtayk
         YPu1jwjiGRppusLXU9Jlk5xArwvQZRtsjIaLaPrnaOC/09N7WtPemAXGGW7EEoaqj2HW
         VdzLSDJsvVbK/cKF7t4PAA242hImeh1HvqCe9smQDD4uzkB9v7/XFs8+p7/xUc6rtQhx
         rdMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772352384; x=1772957184;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SejpEdn5w8C9URiM1Is7ely7u34ezEnpcYmkEzh4N/0=;
        b=O3FhN4RsAH7hJFxDF5BuweKJNbIJffqW2xm9e6eVgHN6Veihf6vEMzpb5LW53xZake
         gTD9bQCmdzPdBUJrt3MgW6G7TZDKZZxmB1SIQpFyxXbo3hRUB+NPLW0LxyB+NzM12hpd
         7pTuCLq2XnRIr67V/bXqk6lq9ZwG5eiwnE73DcB/cYFtd/lQscCLf0/X35jVL4/JziFV
         ls6sdqDPudrcIoRtQZW0vcAFIMRzd0MnBSwTGHiLBp0QLkytdxTLhljoFJc3+0b3HrB3
         Y7eFlf29UOhxCrgP68nAynuBcCPZ2HOpJXLeO4abw8gqXPMkRo+SLWbGWAketHL0uyEO
         qtTA==
X-Forwarded-Encrypted: i=1; AJvYcCWqfG9DTH/luJn/p6pyCoH4ox8z87bShENtYiDIpZom7qA1slx5Oi79XSDCfI8deo8HWBUTKceXHwIn@vger.kernel.org
X-Gm-Message-State: AOJu0Ywy/PC3UKtmd7eSKHINLlU8vXNc3Xr2It5oitntb/qJb9hfgAwv
	HOODObGbVl7mbA8ikeF2Q9B8D/YdJ54uskwMvJ9oqMPCgul9WKzSgKVw
X-Gm-Gg: ATEYQzwFL8aGNTMtE72z+KeOk86z35QvBYmJ0C5AiR+0jTFXz6JyQVwY5G/oRhYS2Gz
	RVQAX2IoQFBsfmcUFYj5C8BCvph4AUTF7AM5PS6AqpFKo5LnOG5/DnqxH3doUCsfucZu5dv1JiD
	u8D1rrVO0iisT/n0gyd9V2SMWJnjnY/3AQ7TQnE7OabCj7iM+Ll3mWBpkKtEqoyKXRokv2vjZOA
	YXrX6D4gBBwYoB1RIp5QrPaE89cuK7DT90TUKfh4wQ7N9sUCxzb0WyWcsWI9mGLFQMUy0Rhtqk3
	Vx7QNgKy/lQ7qN69DHT1h+iAxrawyxXPjdOsCLUeJn7s4xjTFbsU4CdwgOtPSEnuSUnEeicPw0c
	LZZQvPmcblS5U5dIrJGYBMqhS9maZoMEiJAbqwCBPpDIlwBGvCDJ+9CVzZkl0WINiHnxxiiOdxu
	FwEuREkIIiNVhoNT5v/fmTuKb1GUF8OtSsDdFO84//yaFsiUlTjr5fxsPViBtnhEXjAKWD51P95
	VVFwTigTBgi/zjK4KRbhkaU4OKDRKD7zWDd0jPOVKfVHbaROqh5TQ4IUMu3+lUSui5BgAMkwUVQ
X-Received: by 2002:a17:90b:5408:b0:341:134:a962 with SMTP id 98e67ed59e1d1-35965ccab15mr6135772a91.28.1772352383697;
        Sun, 01 Mar 2026 00:06:23 -0800 (PST)
Received: from [192.168.2.3] ([2403:581e:d87e:0:fc2d:ed31:e80e:412d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359135ef1d7sm8885384a91.5.2026.03.01.00.06.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Mar 2026 00:06:23 -0800 (PST)
From: James Calligeros <jcalligeros99@gmail.com>
Date: Sun, 01 Mar 2026 18:05:21 +1000
Subject: [PATCH v3 2/7] ASoC: dt-bindings: update tdm-slot.txt references
 to tdm-slot.yaml
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260301-tdm-idle-slots-v3-2-c6ac5351489a@gmail.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2590;
 i=jcalligeros99@gmail.com; h=from:subject:message-id;
 bh=lwN3AXla5E+hMpOvc4cTc/hS2rvMFZBUZ7ENOshqDaA=;
 b=owGbwMvMwCV2xczoYuD3ygTG02pJDJmLP6cHMG3JNUtnOnhEU8P3mFxZpKZOq9r+mHi5Zf112
 n8W7lrVMZGFQYyLwVJMkWVDk5DHbCO2m/0ilXth5rAygQyRFmlgAAIWBr7cxLxSIx0jPVNtQz1D
 Ix1jHSMGLk4BmOrtJQz/LDoPXY//4G2ZqVPwOXFFua35oXjbRTty8nIZnjV5Ltrkw/CbjWWO294
 VAcvlGK7uLd4ovun4uwWP3tfumPhD8feCpi8T2AE=
X-Developer-Key: i=jcalligeros99@gmail.com; a=openpgp;
 fpr=B08212489B3206D98F1479BDD43632D151F77960
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269674-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 250131CEC7C
X-Rspamd-Action: no action

Ensure that all references to tdm-slot.txt have been updated to
tdm-slot.yaml, and are schema-compliant.

Signed-off-by: James Calligeros <jcalligeros99@gmail.com>
---
 .../bindings/sound/imx-audio-card.yaml   |  9 +++------
 .../bindings/sound/simple-card.yaml      | 14 ++------------
 2 files changed, 5 insertions(+), 18 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/imx-audio-card.yaml b/Documentation/devicetree/bindings/sound/imx-audio-card.yaml
index 3c75c8c78987..5424d4f16f52 100644
--- a/Documentation/devicetree/bindings/sound/imx-audio-card.yaml
+++ b/Documentation/devicetree/bindings/sound/imx-audio-card.yaml
@@ -24,6 +24,7 @@ patternProperties:
       cpu/codec dais.
 
     type: object
+    $ref: tdm-slot.yaml#
 
     properties:
       link-name:
@@ -38,13 +39,9 @@ patternProperties:
             - i2s
             - dsp_b
 
-      dai-tdm-slot-num:
-        description: see tdm-slot.txt.
-        $ref: /schemas/types.yaml#/definitions/uint32
+      dai-tdm-slot-num: true
 
-      dai-tdm-slot-width:
-        description: see tdm-slot.txt.
-        $ref: /schemas/types.yaml#/definitions/uint32
+      dai-tdm-slot-width: true
 
       playback-only:
         description: link is used only for playback
diff --git a/Documentation/devicetree/bindings/sound/simple-card.yaml b/Documentation/devicetree/bindings/sound/simple-card.yaml
index 533d0a1da56e..a14716b2732f 100644
--- a/Documentation/devicetree/bindings/sound/simple-card.yaml
+++ b/Documentation/devicetree/bindings/sound/simple-card.yaml
@@ -27,14 +27,6 @@ definitions:
     description: dai-link uses bit clock inversion
     $ref: /schemas/types.yaml#/definitions/flag
 
-  dai-tdm-slot-num:
-    description: see tdm-slot.txt.
-    $ref: /schemas/types.yaml#/definitions/uint32
-
-  dai-tdm-slot-width:
-    description: see tdm-slot.txt.
-    $ref: /schemas/types.yaml#/definitions/uint32
-
   system-clock-frequency:
     description: |
       If a clock is specified and a multiplication factor is given with
@@ -115,6 +107,8 @@ definitions:
 
   dai:
     type: object
+    $ref: tdm-slot.yaml#
+
     properties:
       sound-dai:
         maxItems: 1
@@ -133,10 +127,6 @@ definitions:
       bitclock-master:
         $ref: /schemas/types.yaml#/definitions/flag
 
-      dai-tdm-slot-num:
-        $ref: "#/definitions/dai-tdm-slot-num"
-      dai-tdm-slot-width:
-        $ref: "#/definitions/dai-tdm-slot-width"
       clocks:
         maxItems: 1
       system-clock-frequency:

-- 
2.53.0


