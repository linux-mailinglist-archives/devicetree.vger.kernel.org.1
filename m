Return-Path: <devicetree+bounces-38563-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EFABE84984C
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 12:03:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A38871F23B6E
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 11:03:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0455418039;
	Mon,  5 Feb 2024 11:02:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="LkIRMlDX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD0D17586
	for <devicetree@vger.kernel.org>; Mon,  5 Feb 2024 11:02:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707130971; cv=none; b=kcLNSERra4TKEJuyhV792je6ItqcUXT5Syr01G+6brLqyUPIWjt82jJMxlwEjoLXYeSoDTvD544Cyv1PY/zqtTLigdH18udaDvQJdwHQ16NQQ5EhlkrMpvjrWwER310hioopXTP/QdskckOZ0F1gCsf98mcwnuFVa/FS5GlbguA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707130971; c=relaxed/simple;
	bh=t1iQC4pQM9CCMqYQd7YKM5jtdsjZTdnmCoPImZwqAeI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=I5rzobNY7NPTmNYIUoRmWhm2TOc5T6auOVxtyTcthPEWxvgLktmmLfsb4xdIiuORFn0yTGT6d78UMmonghWgOQPNvzCVRO0re7ka7aMXiob2X1vU5G+n7zHZJxX1TP/EmrGxm9xfkIWCQKQcbGCiVV0/rXnAkn2G0nXFpYMz35E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=LkIRMlDX; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-55a90a0a1a1so5313577a12.0
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 03:02:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1707130967; x=1707735767; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=l19YYrnnF3BoAWJZcZHFkvAqU1sKKbjwzAbFdJIwVmk=;
        b=LkIRMlDX1gD2/v7zJheDng2Gpor26Dnutm1M+6A2q6B9ai59iaQmUoFOUoUxj0vadL
         J/WWW/klOR+kZAOQj/xHYf3Kd5+LUYV958x6Vd55rUhHhB8PiwS8b5aK3ng6qDXgJNYU
         FAE/vvT1NK0lZAHqxp9XRBo/EX9y40yhFuyU3scjjnv0AbhscBFlTQUUpLoXibHPxHrx
         3UATQrV6sOiV5HMR6JhSwemmukdDAtwz5xcSWb3qhfj+EWIGU+qfByKU22XxfUIPRaCq
         9TvUAZUtetq8CV2DHU6RhO59k8XpvapAmlR2ijsoDYjC4aGujRXAS7b2/I5BIwW5FbrN
         VU8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707130967; x=1707735767;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l19YYrnnF3BoAWJZcZHFkvAqU1sKKbjwzAbFdJIwVmk=;
        b=aXclG9+0KjLIi/VS/qEbYe2r/TW4crFlFvsHwprNF4EBmAPvPYpOl/yruOTP+qW87Y
         Jmm0diBXNpIujJNNJbyHdyorr4VA6POsOB8CaYk9ChfVygpSPbHT1JctZqTxaqILNSiK
         gFMoYMOl6I3Oq3bvlmj1o4TwgN79OV5wmj+MDry99QWwmkb1au6zMj9el8CYN0kuqBNe
         KdusRgdq4NApAZD/1zzQuYSfOn+CpPu2PehYkHZh2SibeGClF8o/kPiPUoVY3cG4+oLn
         8dFRpZjUluPlueocOzjBBd6RoVI6EWNohDOTFYqdjok8Y/12XbtT6tZK1CtnZQ0l4xL4
         nvoA==
X-Gm-Message-State: AOJu0YwVQ0o54k3VWoYpt52PeGfve+MC++jR09v4ZvX5/9gZUEAr02Js
	cmtjwzUOOZJwMvvQNntmbaDW9cQiY8cXBErqtYGS3ErdE/6l4RdhZHGSN/y6H/w=
X-Google-Smtp-Source: AGHT+IFgEkIe+H/dSblunqbmoT20fIDDVlATcRcIL0ebcdVRNFf2GyvomqgIfToBWUQtD4sKDPZO3g==
X-Received: by 2002:a17:906:1d6:b0:a36:fe5f:12ea with SMTP id 22-20020a17090601d600b00a36fe5f12eamr8479645ejj.11.1707130967156;
        Mon, 05 Feb 2024 03:02:47 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCVTs93FijpFw8Mv0LqGuDhBTEzGqDZAotEiUKHELKotGXcevPwUfkU+uK+cjlI1XXK9mcFBq7kStrpROT5A7+5RcIud4cS37DNtxLiNT0YWrGsa8s4f13Yp1vCsP3FmJPhUJJw0XDwicoEtAyXNnl4Nx4cx4bhPP2U/GUJAoQKgUusEi11xGT7JFyZLihHIfrughQi6XFROXbICVPHGD6QYAFYy/V0s0L5qyNn5uDLdH6Y5KG7AhMIe7Ar41Hvtx2KT58/1bsla4Bu8qzr9bqQSkQW2+m8OVjs3LJNPl1nZbiWglu9rtj4wjycokTT8cVsE
Received: from stroh80.sec.9e.network (ip-078-094-000-051.um19.pools.vodafone-ip.de. [78.94.0.51])
        by smtp.gmail.com with ESMTPSA id h5-20020a1709063b4500b00a37624d003fsm2525111ejf.121.2024.02.05.03.02.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Feb 2024 03:02:46 -0800 (PST)
From: Naresh Solanki <naresh.solanki@9elements.com>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Patrick Rudolph <patrick.rudolph@9elements.com>
Cc: mazziesaccount@gmail.com,
	Naresh Solanki <naresh.solanki@9elements.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: mfd: Update pattern property case
Date: Mon,  5 Feb 2024 16:32:43 +0530
Message-ID: <20240205110244.676779-1-naresh.solanki@9elements.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Driver expects regulator child node in upper case.
Hence align with the same.

Signed-off-by: Naresh Solanki <naresh.solanki@9elements.com>
---
 Documentation/devicetree/bindings/mfd/maxim,max5970.yaml | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/maxim,max5970.yaml b/Documentation/devicetree/bindings/mfd/maxim,max5970.yaml
index 0da5cae3852e..43c7f7f8d43f 100644
--- a/Documentation/devicetree/bindings/mfd/maxim,max5970.yaml
+++ b/Documentation/devicetree/bindings/mfd/maxim,max5970.yaml
@@ -66,7 +66,7 @@ properties:
       Properties for both hot swap control/switch.
 
     patternProperties:
-      "^sw[0-1]$":
+      "^SW[0-1]$":
         $ref: /schemas/regulator/regulator.yaml#
         type: object
         properties:
@@ -110,7 +110,7 @@ examples:
             vss1-supply = <&p3v3>;
 
             regulators {
-                sw0_ref_0: sw0 {
+                sw0_ref_0: SW0 {
                     shunt-resistor-micro-ohms = <12000>;
                 };
             };
@@ -144,10 +144,10 @@ examples:
             vss2-supply = <&p5v>;
 
             regulators {
-                sw0_ref_1: sw0 {
+                sw0_ref_1: SW0 {
                     shunt-resistor-micro-ohms = <12000>;
                 };
-                sw1_ref_1: sw1 {
+                sw1_ref_1: SW1 {
                     shunt-resistor-micro-ohms = <10000>;
                 };
             };

base-commit: 54be6c6c5ae8e0d93a6c4641cb7528eb0b6ba478
-- 
2.42.0


