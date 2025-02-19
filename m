Return-Path: <devicetree+bounces-148285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 41099A3B882
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 10:25:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7DE6A189E470
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 09:19:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8F511DF974;
	Wed, 19 Feb 2025 09:15:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eWSU3gOK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D19B21DF74F
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 09:15:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739956521; cv=none; b=CrDEmoTXGTnuW9lpkYt/tlM97FzhMY4jeKOVNLriOw/LA7Zyq34koTW/mbJuIaRKtWg7QqJ9SNSrtJYtEe5O85sMoRrWuc8sDVUepqtYKYV7ttWoGPg7nhjQOYI24h+8ECdkc/dEsC0r/jAdSU9eOguandeiEJ9cbUAJNEfOX24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739956521; c=relaxed/simple;
	bh=7M5vaBKRmbFv54lQBepxKee9UxF0v+gnGJ6vjUmU3rE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=h6gti574aKOGOM+nIsIdzp8eP/e6cXNDUVN+dK9PTegU1iuyEGHrLG5wSN5I41RKElcWC1Bz63AeEqPQK2RDF7x2s1mLjwD64CoeD6ABq1n1s2VGj2gC35qNgN5f12C3fBQteGIspI5wYaq0zQnZgKed1uOdY5Rw5k6T3u+A1PM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eWSU3gOK; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4397dff185fso31692705e9.2
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 01:15:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739956518; x=1740561318; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sHWfwds5aVkw0kQ5g8ONjBeQJWS59dXEyJJMcYY6+5A=;
        b=eWSU3gOKMxiUQu4FFXo0Lav9y9oV+JQ4Yxxsbk92VP8LqNtYk3WNrLU24kduop5Ifl
         k/YSyyQazkLeQMWSiISP4exnqtXc05+35wlIRfgBvZqd332eTHd3+kGX7nPqAUqwDVCT
         gPgiiP/RL+hHxGhIuSuvcAjhR1TmQtwfBMt2eLWQg7SYyF0mTNUELGvy3SFc/TiuZuhD
         YCj7ZKBKAWczNMuXr4AnfabYoy8iGSRQYx6fWhYVBSAgj1pP3HpoMAVzSMqQvCcEJhbl
         qKUkgI5rWVf8iO3wsTKGDeycKXtL4KL5Har/py1zDuLNb1MBKaq0fFD1G2WjX+itTQ7q
         oGmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739956518; x=1740561318;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sHWfwds5aVkw0kQ5g8ONjBeQJWS59dXEyJJMcYY6+5A=;
        b=jXwygHeUM1wPylFfCPHx2WEx0nT8Ps0W0uBiKZLX65O1vpZPlnE73VH8N0OzqUOZTf
         j63HKJdoSOi2Jw0SM/bw82mQcl5NZ0bNSblBjvARpuE9OitJYZuG0eb3/Z5Niwo6eUHd
         0f9g5u9stjgo/WuBJvy3HsXz2B6vllIATCP8hgfthWiyyXYEVbSqxvYo8UHTsiFux5yV
         UnkDjl85oPhzoCHg9ifyA5ve2oMDG9Oed9CaOwQpkfIVGA5SUz+w8yZ1xI2krfM1eVCJ
         bOrgRrXkb3ZzhXgnivFbTkNa8gf+Pq0vdRqmfMpRNtV6o7b/Kvz2vLcpjshfDQmI5XbS
         S3eQ==
X-Forwarded-Encrypted: i=1; AJvYcCXOvmxBlCTOH5zRSGLhiglG7jrk9lBoVPEy258Cbfn53ggboOBvrfRn6yCE5/bfm5ab9jV0udIHIKwt@vger.kernel.org
X-Gm-Message-State: AOJu0YzuV+VkcoNonMl4vDy2ahVnkt6I69Xu9K/XaGuC0pVhnhL8RRhE
	M8ogNpoZlQRf6CC70PivVJ5qYGO54C8T9Z8TJ8hyire//wSB3goGgEs2vKNpBxA=
X-Gm-Gg: ASbGncvp/owJDjolrkGiZXoi5xARgW+M5nhRCLbC426GDv8yP7zopWHfyXagZTscY1i
	XSFyGxXFmt4qCQGXaz9b0+8nBQfXlwu0FCE3boFD7AIfyu6X7yKWH25CQsYs8vTnP27vDAoN8DT
	GMnqi4LuSU0K767rhJkHdrwHiLODhqHh+KkGjfV0iSzWpoQvgCdJoJm1Ngmdoggmm6kDw+JOC7A
	YLnvLn0JnmBSOs/jEyDWw8EiVAMLPbGGaXe+gmgGj2vBWB0i5LhCevFIIBaj6LLAlLSqkFT5JdF
	ooBvkIMiFi8ivCuzYAn0UYLzNQoprfcx0g==
X-Google-Smtp-Source: AGHT+IHmVnWJxCNrFshS3rKCtRUdy5fE100UpPcTP+EPSzVv4YkSljr0sSRgMFyS9Vhd/OYskNUhGw==
X-Received: by 2002:a05:600c:3596:b0:439:9496:17df with SMTP id 5b1f17b1804b1-43999da1338mr22734005e9.13.1739956518120;
        Wed, 19 Feb 2025 01:15:18 -0800 (PST)
Received: from loic-ThinkPad-T470p.. ([2a01:e0a:82c:5f0:ad62:b2f0:914c:91ae])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43987088ecbsm75404005e9.31.2025.02.19.01.15.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 01:15:17 -0800 (PST)
From: Loic Poulain <loic.poulain@linaro.org>
To: marcel@holtmann.org,
	neeraj.sanjaykale@nxp.com,
	robh@kernel.org,
	krzk+dt@kernel.org
Cc: linux-bluetooth@vger.kernel.org,
	devicetree@vger.kernel.org,
	amitkumar.karwar@nxp.com,
	Loic Poulain <loic.poulain@linaro.org>
Subject: [PATCH v2 2/2] dt-bindings: net: bluetooth: nxp: Add wakeup pin properties
Date: Wed, 19 Feb 2025 10:15:12 +0100
Message-Id: <20250219091512.290231-2-loic.poulain@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250219091512.290231-1-loic.poulain@linaro.org>
References: <20250219091512.290231-1-loic.poulain@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

NXP bluetooth controller may have GPIO pins used and routed for `WAKE_IN`
and `WAKE_OUT`, such pin info must be known so that the driver is can
configure the controller's firmware accordingly.

Signed-off-by: Loic Poulain <loic.poulain@linaro.org>
---
 v2: No change

 .../bindings/net/bluetooth/nxp,88w8987-bt.yaml       | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/bluetooth/nxp,88w8987-bt.yaml b/Documentation/devicetree/bindings/net/bluetooth/nxp,88w8987-bt.yaml
index 0a2d7baf5db3..04f55fac42ce 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/nxp,88w8987-bt.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/nxp,88w8987-bt.yaml
@@ -40,6 +40,16 @@ properties:
       Host-To-Chip power save mechanism is driven by this GPIO
       connected to BT_WAKE_IN pin of the NXP chipset.
 
+  nxp,wakein-pin:
+    $ref: /schemas/types.yaml#/definitions/uint8
+    description:
+      The GPIO number of the NXP chipset used for BT_WAKE_IN.
+
+  nxp,wakeout-pin:
+    $ref: /schemas/types.yaml#/definitions/uint8
+    description:
+      The GPIO number of the NXP chipset used for BT_WAKE_OUT.
+
 required:
   - compatible
 
@@ -54,5 +64,7 @@ examples:
             fw-init-baudrate = <3000000>;
             firmware-name = "uartuart8987_bt_v0.bin";
             device-wakeup-gpios = <&gpio 11 GPIO_ACTIVE_HIGH>;
+            nxp,wakein-pin = /bits/ 8 <18>;
+            nxp,wakeout-pin = /bits/ 8 <19>;
         };
     };
-- 
2.34.1


