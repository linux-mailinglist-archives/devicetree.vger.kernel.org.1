Return-Path: <devicetree+bounces-268819-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OB6aLSFIoGkuhwQAu9opvQ
	(envelope-from <devicetree+bounces-268819-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:18:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 330891A640C
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:18:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5AE69317774F
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 13:11:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0745A31A564;
	Thu, 26 Feb 2026 13:11:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="z0Q6RFkn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A944A3126DD
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 13:11:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772111501; cv=none; b=j1j2ZHOoYkfbIDnKn8heA8rJk1Rju/w+1Pl4uPlLmQKqHP1T6nAD7IIKQfLjzJSdWNLRiMdDFR2ahGFfdnew8rk9lRQhgVtXrlUKW9KVK4UDocT66qGoCUvTpFKeyxdKDrSHsJnHN67rJTBuuqiYYs11QFD3nTuQLmka+i8XJr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772111501; c=relaxed/simple;
	bh=CV8yI1R1vxaepaMKQg2pU15I1IQGq4B2d1c5Q8TyfT8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MY3ai4hdyOWfEKqYs4A78TPrTGoK0j8wsXWOJZ94svVpF91sDu9uWFk9eVeW7xd+9hgBdBPEWEf13uki9CfmvWdSnGnAGBrkEdTesUGffDCvJOq7pUJuaBC4YQSXsmNsN1XY6Nl/HaylObohNNfdIF8SLEhY0V4IQ24CRCtKz8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=z0Q6RFkn; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b884d5c787bso120964266b.0
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 05:11:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772111498; x=1772716298; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7dxIGuour1z+2vBwoz711z9H7XQ3u+zJtn7J7jgmZus=;
        b=z0Q6RFknwVQTzky8yekM0kmYficmX6Okzh06jDL6iPQOCqbaDqitDg6B8wR6qp49xU
         +Cx0zYwcTHowe4Qi3tjldRqsJ5msDpSMQlYjyf/v/LQB9RtqHdpnHMbidYi8HYYxgTC4
         +sNc0fZyGDCs8A1mpPUWAN6+V/TyjkTxfUQlZUYBMvf/r6bbuY04laHVuu+U3jnJ6TGR
         MJf0en4q1kEw+hLC/fZvOFfuLVVynyyW6CeG9nqJs8agotBqgl8SC20o/LBW/Z1b2IoQ
         NNVp9i8K5heFGYsL8M/vcKZD5MimBf/DWfZgUtrMmJkjo8sirQ/JDhfDio1UfVZu7DAn
         rjRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772111498; x=1772716298;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7dxIGuour1z+2vBwoz711z9H7XQ3u+zJtn7J7jgmZus=;
        b=tAX4ZVO62mRzegLS9Jd+X5aMgI3Jr5UAF78iMnrIPJ9oEFLKYZ6t7AowU1dl19uOXL
         naUR6ieC4Emgd+291vpVGaG/N72lhP1GGH7kd19OLDC18m/ihJ08adRf1ExSjsCuBjWL
         JTC3MAiU8KC6F68M4EYnw9kGH70dxwwR+14cBs0gaa8ryDtblORHk4Ie0NlsabtYhPZV
         ctuAQVEbb2Aqv5FZGqv4fhCzgYy1+m47pExwJagO2XTdA6UtnHL7ASTH0qgiVj9Zr0YQ
         e4Mj8/GPNRtxDOjQEBmLpSGFuPoSez2NxS9OQyly9lKMJOZwYqtCReXGlVrIN/R+Pgk+
         2erQ==
X-Forwarded-Encrypted: i=1; AJvYcCVnQg3x3itQ9D32RnqZzqbT6KzC9PCui8hlpDJGt/qS/wrkFrbAGfeUl+wP1HZbpSkxumemZJGns+yV@vger.kernel.org
X-Gm-Message-State: AOJu0YzR1z5mBNrCwvsniD1uR1i/i0w9UXxDpU6ioQJFTZzBEDmiSr8O
	Ep0oVbMYVpVJC1427rfeIKJhVqSIN/MtMiP/zha+mFrCR1OulJPiPj0nSeRmxVW10lI=
X-Gm-Gg: ATEYQzxiZ1o+wTlBu/KPQEEA5wU/T1QeWej2MQY+lOVfjjiAHVMO1prINLxPm+LSMyH
	o56iH92VUd4mZ6RryLIMcObS2tmwABGaWf8BCcgE9YuvdALP5YViKSce7/bIyeUZs29tSTMDqcv
	UeWVUL3j9vMG391pyrZNGCnpdJTIS0MymcYtk1TikQE7LpupfPueQRl1axF4egs8FJENY8G9rKt
	+czHk8M5QxuGpNcLdydb/mSjRXEQbufZGwrQ8SfCBm2Fijha8v56oBEv9me7w+OQIXu9qWdPFUl
	lKtvCuVzzkCbiX4JFzqmVsyDDwByUL15MkzHDJQcCm3N8nE1qitr7b5B/X/gysMBRvLSTw35Svn
	1IA9tDvZyIDlaNTW7P0r8riejWwpRQFI3BsvdO/rklaJF4RdaSkCE/HwDao7Pps1ZiUodzHJ2JR
	AAcim7tMxUTDAaXg+WF2009u1GKag8dLreWJQah3XjejWEw5uwvSzcFePIm7q4qyf4Q3mu5NyeX
	XaUPfxPiIF4NHa/dw==
X-Received: by 2002:a17:907:a09:b0:b87:117f:b6f9 with SMTP id a640c23a62f3a-b9351466c1cmr242535766b.8.1772111497969;
        Thu, 26 Feb 2026 05:11:37 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935ac73d2asm55125866b.26.2026.02.26.05.11.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 05:11:37 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 26 Feb 2026 13:11:35 +0000
Subject: [PATCH 01/11] dt-bindings: power: supply: max17042: add support
 for max77759
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260226-max77759-fg-v1-1-ff0a08a70a9f@linaro.org>
References: <20260226-max77759-fg-v1-0-ff0a08a70a9f@linaro.org>
In-Reply-To: <20260226-max77759-fg-v1-0-ff0a08a70a9f@linaro.org>
To: Hans de Goede <hansg@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>, 
 Purism Kernel Team <kernel@puri.sm>, Sebastian Reichel <sre@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, 
 Amit Sunil Dhamne <amitsd@google.com>, kernel-team@android.com, 
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268819-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:mid,linaro.org:dkim,linaro.org:email]
X-Rspamd-Queue-Id: 330891A640C
X-Rspamd-Action: no action

The Maxim MAX77759 is a companion PMIC intended for use in mobile
phones and tablets. It is used on Google Pixel 6 and 6 Pro (oriole and
raven). Amongst others, it contains a fuel gauge that is similar to the
ones supported by this binding.

The fuel gauge can measure battery charge and discharge current,
battery voltage, battery temperature, and the Type C connector's
temperature.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 Documentation/devicetree/bindings/power/supply/maxim,max17042.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/power/supply/maxim,max17042.yaml b/Documentation/devicetree/bindings/power/supply/maxim,max17042.yaml
index 14242de7fc08..055d1f2ee0ba 100644
--- a/Documentation/devicetree/bindings/power/supply/maxim,max17042.yaml
+++ b/Documentation/devicetree/bindings/power/supply/maxim,max17042.yaml
@@ -20,6 +20,7 @@ properties:
       - maxim,max17050
       - maxim,max17055
       - maxim,max77705-battery
+      - maxim,max77759-fg
       - maxim,max77849-battery
 
   reg:
@@ -28,7 +29,7 @@ properties:
   interrupts:
     maxItems: 1
     description: |
-      The ALRT pin, an open-drain interrupt.
+      The ALRT pin (or FG_INTB pin on MAX77759), an open-drain interrupt.
 
   maxim,rsns-microohm:
     $ref: /schemas/types.yaml#/definitions/uint32

-- 
2.53.0.414.gf7e9f6c205-goog


