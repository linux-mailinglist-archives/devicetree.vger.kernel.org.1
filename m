Return-Path: <devicetree+bounces-257571-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CCqOITPYb2kKSwAAu9opvQ
	(envelope-from <devicetree+bounces-257571-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 20:32:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 4737D4A74F
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 20:32:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4E0BC867A1C
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 19:07:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9E1E477987;
	Tue, 20 Jan 2026 19:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KjRQH5wE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D04F46AF08
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 19:06:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768935983; cv=none; b=AMqnlvxauJEyxpowkYhBMz2dLNHRTzhnoR7lBh68vrS328RjIqx1LIAanDYp9UIbhLSJtypG67K/uZ3p3FPAeb9dPh199jFoMHaheQZBRCsRi8xgbBIpKBpMGp5Mp2eYz4s4tZpDqlQ2oZ+TW0uYtPKj/rGj44OISpRqRvQUDJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768935983; c=relaxed/simple;
	bh=fackHrxNCrfa3xgCHjTAFP66CR9dRJ4J/Fkm/B2DbIE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WqnNEMA2NU9K+bFWeZVEiX45hu+VVfLK+rlxrgSMlvHft9P0lkwQixXRhUIG1MiqCR0VR1Jn1okmvbJtjaJ6+rfPHq7+51FpcdYnwrqd1zpf7groXfHkhKduZ+UbkqU/8tduj0JjlWdWIH7OHOpEPrvA4dfryRqwBFThcf6ulaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KjRQH5wE; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-47d63594f7eso41212175e9.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 11:06:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768935980; x=1769540780; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9GX032ri3Hp5Aag2ArhTas5Y0poDu9fr9e60o7ncMVY=;
        b=KjRQH5wEMyUK3gGg+IY/yFKP1eaJPqLoTZb4aPrBCNP0Ickdu0775nWfmYiE4hq0pp
         AMwODCfuhrztHpfcq68Zf809h9yqbtCxo5vvLJN1TlF+HU4hdMIi543ey43raPdDfsBD
         BlZGKI3EztQoeWArKvQ1Vp5upQd9qjFqp2M43KkkRRJirTe/5/VimHHRJ+6wbp3BrCwm
         wIksgRmXY1XlA6JumhYz1xnwTqPC1cmrJdOYiSgytsLRsnvJNO7cE3uLTMeLiJZ1mhjx
         F3RJKsRypIpk29ouf5kvzjBFV68wv0tlgq5j0nk+6FugJA4JEt1Op6R+qnO4A2dFjTvj
         1iWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768935980; x=1769540780;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9GX032ri3Hp5Aag2ArhTas5Y0poDu9fr9e60o7ncMVY=;
        b=Svbpk6bI2YV6md2+eXSTGcPcYg/rVeOXRlDS7r0tOO+8LZXlMUOWsEEiGtKqXfmmxb
         hpurDcQRG2lViQ+pNRh3b+PtiKP+Ttp+yzr5IZnLf/I6i1j4KdGt9pwkXbTw1yoxmNhB
         +Q5xBwFmND09Ra4tr0sjPQRTOR0r5emkMPYorUIFRa9pH/rFeitE+YNeTzsfa9cpWcCw
         qHMe7uqnnu1ecEdg8ABQYyYgqwso50luDbqGkKA665GhNTvfpn7q+8rCJnOKs/HU6p+Q
         VJhP2DKaGy1l1OzlzLQTWeh4H/G/OXhaxrpCzLSMHAe+Gw5g9MEU3+4R8vgfoFhWis+y
         85kA==
X-Forwarded-Encrypted: i=1; AJvYcCXy4F8aPwWXYq7SiEYLyunkYYlYss7ikTIdJ6ECfFBmdQIjajntnDu8HES+oNjmZ1Mq6Me0ss2ZBROD@vger.kernel.org
X-Gm-Message-State: AOJu0YwvCCQKYxhMohRk+cynLGUZ1XqGDjqAm/6lNKw3mIbny4an2GuT
	ollJegeCBwiY3M/pH4IB5tRiO6yy2zUTgjWWBQX8c+wiMEDrHUk/gcN5
X-Gm-Gg: AY/fxX5IdGBoUxT46cIkHPOH3AvcM6+EkIIgyskuiTxoI9KOmFxM/JGAG1aHarJDxIK
	FtQmUHa5Cqwdju8vSjKi+Y5IbCK5D8ewHXNn+egPYibSiEXlhHOMelLoAUYcQgEI2tAe06kdhKj
	A4wc/s9n8Z15Zcp1KDZNGp+bDhCBurjyckRNvSAJhGFKzOHEoJ1i2DGy63Q2iLYZsDoWycvbOXL
	60QarpEgit0pyWF6NNNKppkEvC3yTThVcQcnuUSxc+HMZqt5iGO1kilX8L0UykJRRFusXvZpsrd
	e9+7tV7wASgSmrMdWyEzNj5BarXbLBIW4BIG7GkpYuelYEjdvPiicmWEwW5q4sHYcuJIGT1a/CI
	VetSP43QDKUU06rvvIj1lJJjd2i7M6GVGgkUlG/m1Uj+JBvsMyduS/4bfKSK3aR0bjoIOTKmoOE
	uyWtkfiJxyFOp8aET5Js1YJQAwpgyW5dfVUZ0ZoVDuspYb
X-Received: by 2002:a05:600c:a399:b0:480:1d0b:2d15 with SMTP id 5b1f17b1804b1-4801e345c96mr162137445e9.27.1768935979456;
        Tue, 20 Jan 2026 11:06:19 -0800 (PST)
Received: from [127.0.1.1] (bba-94-59-215-181.alshamil.net.ae. [94.59.215.181])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804244c6cesm2005735e9.0.2026.01.20.11.06.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 11:06:19 -0800 (PST)
From: "Anton D. Stavinskii" <stavinsky@gmail.com>
Date: Tue, 20 Jan 2026 23:06:05 +0400
Subject: [PATCH v4 3/6] ASoC: dt-bindings: sophgo,cv1800b: add ADC/DAC
 codec
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260120-cv1800b-i2s-driver-v4-3-6ef787dc6426@gmail.com>
References: <20260120-cv1800b-i2s-driver-v4-0-6ef787dc6426@gmail.com>
In-Reply-To: <20260120-cv1800b-i2s-driver-v4-0-6ef787dc6426@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen Wang <unicorn_wang@outlook.com>, 
 Inochi Amaoto <inochiama@gmail.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 sophgo@lists.linux.dev, linux-kernel@vger.kernel.org, 
 linux-riscv@lists.infradead.org, 
 "Anton D. Stavinskii" <stavinsky@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768935966; l=1645;
 i=stavinsky@gmail.com; s=20260115; h=from:subject:message-id;
 bh=fackHrxNCrfa3xgCHjTAFP66CR9dRJ4J/Fkm/B2DbIE=;
 b=MItEiN4e0HSpxL80NDn0eZTclssaZrsUM/KZNeFCT959G1OEcAPzPf8NwEb3wNWTi6MTxuqRD
 tECwH9+NBH0B6ZgBODGPQ8GWqs2kcND9D1gq1HJzvYB+JCItPqdJMhA
X-Developer-Key: i=stavinsky@gmail.com; a=ed25519;
 pk=2WxGZ1zd1vQwSPFCSks6zrADqUDBUdtq39lElk4ZE7Q=
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257571-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,outlook.com,perex.cz,suse.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,lists.infradead.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stavinsky@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 4737D4A74F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Document the internal ADC and DAC audio codecs integrated
in the Sophgo CV1800B SoC.

Signed-off-by: Anton D. Stavinskii <stavinsky@gmail.com>
---
 .../bindings/sound/sophgo,cv1800b-codecs.yaml      | 46 ++++++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/sophgo,cv1800b-codecs.yaml b/Documentation/devicetree/bindings/sound/sophgo,cv1800b-codecs.yaml
new file mode 100644
index 000000000000..7293a98e98c5
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/sophgo,cv1800b-codecs.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/sophgo,cv1800b-codecs.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Sophgo CV1800B Internal ADC/DAC Codec
+
+maintainers:
+  - Anton D. Stavinskii <stavinsky@gmail.com>
+
+description:
+  Internal ADC and DAC audio codecs integrated in the Sophgo CV1800B SoC.
+  Codecs expose a single DAI and are intended to be connected
+  to an I2S/TDM controller via an ASoC machine driver.
+
+allOf:
+  - $ref: dai-common.yaml#
+
+properties:
+  compatible:
+    enum:
+      - sophgo,cv1800b-sound-adc
+      - sophgo,cv1800b-sound-dac
+
+  reg:
+    maxItems: 1
+
+  "#sound-dai-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - "#sound-dai-cells"
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    audio-codec@300a100 {
+      compatible = "sophgo,cv1800b-sound-adc";
+      reg = <0x0300a100 0x100>;
+      #sound-dai-cells = <0>;
+    };
+...

-- 
2.43.0


