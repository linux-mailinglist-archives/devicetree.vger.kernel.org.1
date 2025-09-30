Return-Path: <devicetree+bounces-222707-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA83DBAC1F6
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 10:47:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9A54717A919
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 08:47:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AEF02F6198;
	Tue, 30 Sep 2025 08:46:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dmQTL9pC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA2472F5A2F
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 08:46:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759222019; cv=none; b=WQsw5Jlp6jhX0kln/faTDWJ0t/UaZ1iqADgefKRZbQtQ9IrnoySwxsnS47PVremgLTwndpWc3uImWj1rtgaQW6oalTx/ihuL8rpVp6zWbKeM9PRsY69iUJZT/PQDTGhOWKUACmCqBlgP9RHyUZlvUra3F5oozNjGnnKLYIFzJbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759222019; c=relaxed/simple;
	bh=1ehExbLkMmNgsVXFhI/3vAuhpWWLmzmhuVgV7QDcaGQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nDPqVRfPhYRuzujQg54mVnGidOCjVS1HtGum3hicXIa7zwvVE1YJue7DAlzuA/1lu/SnjbfTAv5IptDedecyfdZX3XC0AyDUvmOghY3EVDWY56F6c3v7E1lrWxWPsHAsb17UfNnAx5TNIVhhHDoMYSm8vttt5i/gA7EI74inu9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dmQTL9pC; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-46e4ad36541so30926335e9.0
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 01:46:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759222016; x=1759826816; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bsYAjCVZTAgTbKUVHs9DAPmJO/mDOJAtaWrMK8+sbis=;
        b=dmQTL9pCbHHnJ6ezanJokkt4p7Xjuk8NPZvz3qU85ZVeRhNprRq59oi9izyIVMT2i8
         Pfz74DSzjGhG4ngzmUVHM1/sGT8GL4pD8c7FgG4JxsYDg93oRfBivz4nMGKZ+Uw9SbCE
         7ly2mRnhIqUIQgzn/2JcMavDOH3K1OCJLRTs+3UVOxkWnLfVybpWvZzDYwtIkFauO1OV
         3U5n8TeA2+GeiTTWvWWrk5zHfzd/AS1BAcdZoS0YilTuHU1YgypND/axQ471gyyNsB6t
         v+hcHaaakEZDV4oUH1FunaFNhA2JW4Pmx4KAh7KvMzMuCF27vcDQ9nokh0ednfIlsHQk
         UoeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759222016; x=1759826816;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bsYAjCVZTAgTbKUVHs9DAPmJO/mDOJAtaWrMK8+sbis=;
        b=f2GAmPAMRWdYx4zmLm7Jum2kqrBeT4xavoeI6UVuiZPvlWBRuWsjlzeZ/gJs8vQvkL
         r3ur1jW+smbJpKwC31d1fKOCIsq7FZH1D8all5EXarnwSgZn7xkBWus5i4XJsxcuRbfe
         41wWignhm4aL6BmSRj7lURb/BJ8Q7frUb5pQiC3+UejBTSTEPTSlHVdtwqsxOIGrrfrn
         hoBN5EywLGwB7AItm5+0ZJVO/iVbSCv7HJLrU25BL47wg3z8A7CE6Arlonvrr+9e2oWm
         ja42H+3z94Uw2ObAYfYaAKHko0NCLotvLITSUU1W0YPpYrjOjmIRSriZ+9Bni+PMMHRG
         spVA==
X-Forwarded-Encrypted: i=1; AJvYcCUoMzSq8Xhlj8nqLnzy3e43q9GWQaUJnrV0NT094PUtWeIgxV+8l4d2oKpeE9VJbwuOGq31/z5jaEqf@vger.kernel.org
X-Gm-Message-State: AOJu0Yxvo+0qRNoc04NhXC2ZZUO1soQklQtP+7bHH1dgNHhYGP3hwGgH
	1R2JhtBKk+c+66NPRG7o4PjLJ3ezB3ZPUfZmaX2/8bNPT2iZlchOkD3W
X-Gm-Gg: ASbGncsBZqto4bovcj7G45K8suuZUfEkciOag2XdNDuNAGQI4xRylKvgknKu59nIif3
	1ebI1agzbEQnEKPmgf3pW0lncTQxho2zZwvV6jqpm51fKqPKBB+vqwthkFjtYFfNjLfc1Y0B6km
	CHA3MRzzLhCkeB1J99Ew7fxtd6y+HM/DAnJqOB21IbCGbygoAdnq2s3leh1vAi3GTbCKvvBLzZy
	dFT+z68WHEo/3cfRmt4bPBAPVs4Lel6wR4D7ISqQYvUc9crabSyhMLFN0sufvsUWQu115si6c88
	YXEFPgSGRfZqNkBFXvJaFaiyDJdol9EWpEGZ2nIgEKQG9+yxSkBoON2Tq5tBIJ80dg/kxZVxN+9
	5NYwUVMsmT3XqqyjkOYb+5bwIPGvLPtsiyNyxl+NwCklPpnpUxBNV/CQIq2rBeqV6Sr4iNDalyS
	d3J+XWIY7s5trNa63wlXCBiCCoB53QJGAQPZVHsVQes9hUXXKYBHQ=
X-Google-Smtp-Source: AGHT+IGVQJJHamU6NUy4goartpYaIkfUJZ0iBlzOkN6u19q5qmKKBnwS/nG0zfk91bdRAJZUfDhusw==
X-Received: by 2002:a05:600c:1d16:b0:46d:5189:3583 with SMTP id 5b1f17b1804b1-46e3292fea3mr191174625e9.0.1759222016056;
        Tue, 30 Sep 2025 01:46:56 -0700 (PDT)
Received: from localhost (2a02-8440-7149-a758-f461-9bc4-1c75-ebc1.rev.sfr.net. [2a02:8440:7149:a758:f461:9bc4:1c75:ebc1])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e56f536a3sm54098975e9.8.2025.09.30.01.46.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 01:46:55 -0700 (PDT)
From: =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>
Date: Tue, 30 Sep 2025 10:46:47 +0200
Subject: [PATCH v8 4/7] dt-binding: memory: add DDR4 channel compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250930-b4-ddr-bindings-v8-4-fe4d8c015a50@gmail.com>
References: <20250930-b4-ddr-bindings-v8-0-fe4d8c015a50@gmail.com>
In-Reply-To: <20250930-b4-ddr-bindings-v8-0-fe4d8c015a50@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Julius Werner <jwerner@chromium.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>
X-Mailer: b4 0.15-dev-0dae4

From: Clément Le Goffic <clement.legoffic@foss.st.com>

Add in the memory channel binding the DDR4 compatible to support DDR4
memory channel.

Signed-off-by: Clément Le Goffic <clement.legoffic@foss.st.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Clément Le Goffic <legoffic.clement@gmail.com>
---
 .../bindings/memory-controllers/ddr/jedec,sdram-channel.yaml   | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,sdram-channel.yaml b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,sdram-channel.yaml
index 9892da520fe4..866af40b654d 100644
--- a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,sdram-channel.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,sdram-channel.yaml
@@ -19,6 +19,7 @@ maintainers:
 properties:
   compatible:
     enum:
+      - jedec,ddr4-channel
       - jedec,lpddr2-channel
       - jedec,lpddr3-channel
       - jedec,lpddr4-channel
@@ -61,6 +62,15 @@ patternProperties:
       - reg
 
 allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: jedec,ddr4-channel
+    then:
+      patternProperties:
+        "^rank@[0-9]+$":
+          $ref: /schemas/memory-controllers/ddr/jedec,ddr4.yaml#
   - if:
       properties:
         compatible:

-- 
2.43.0


