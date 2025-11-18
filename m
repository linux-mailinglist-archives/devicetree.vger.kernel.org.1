Return-Path: <devicetree+bounces-239880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 882ECC6A3CB
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 16:11:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id EE438367F81
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 15:10:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86D0F366543;
	Tue, 18 Nov 2025 15:09:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hiUiYJDG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA53A3659E0
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 15:09:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763478546; cv=none; b=nCxRhsAJOkJgYsChBy+zO5epD3m4Ca6IAHqYGR6ws/XAO8IzkFGjiUtG/0u4hqbact+dHWhAWvrgpV/1FGdiJ84UlHihl5sdzmvyAuLz+39U7DnKYhjzPInQimnDs6XB8UFjbAV6iX9+N+CD1F8JtFgWv1k+zf/Xv5ji3hoYLIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763478546; c=relaxed/simple;
	bh=p6iwdyUUP5W8+77ExyG+J/4KTfuGbStSzXc5YQJ6uQg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bZlJr+lK+E/o7H5tHNHKm8rfgQ9Sh8LCbL9InFGAgZPnILyw7Z+CMWWo40TRLspggAUgO5oif3F8Ww3EFG6tjITmVJxm+efuZn5dgK4nO1nMBAsFZqWkhEMrtGkX2h+EYjtamfmA11eCfOehDsUAdpd0ongT+x8WEz8DXS0SgCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hiUiYJDG; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4775895d69cso30247095e9.0
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 07:09:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763478542; x=1764083342; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zz313f5+9XsH5+Eb3Bh9XStxpTdiNn9ua8EWNmWWJg0=;
        b=hiUiYJDGz2ipXcxvV9LNyGlvEovSEwXKqZc6vP64BDjPP3omBC2aeF62fTYruj0CiM
         Bi7Q9eXZ/mZd8BYleZQrqAUmr6IWQwVvIXCRfV2O4/0qeNTl6t4Xd7YfF3aHDthWfGko
         CEImHg0U+OyMJ5F9R/rDrcNEjw1l/W83Db2LgRxFnXfFi+NPYv2cpiSGUKRtvH05m4uy
         PBwNpbp1q3ejv7mWDA0IHBiBvS3/xoBmBARnXjJCNTj8uZ2wwavjdbMWiLL/7hTOt9L2
         5TJ/50g5OC+RMazFQBMRhQ2dR0ZO/x5SFx0CBH1mxE+Jy+XGfF7TQxaXxqvwmmm2RAGs
         IqTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763478542; x=1764083342;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Zz313f5+9XsH5+Eb3Bh9XStxpTdiNn9ua8EWNmWWJg0=;
        b=CR0Gv1yL6ImcudLG7cretMdW6BCKLXtPcrTNDjqNjy0bVJIQUV/7T12UlnhVdKiaPr
         xaZFNay2tq5MV7uvVnvm+BOnSd8B8MiP7BpxvbmpZnp7PLGNZLaE8zcpavwUrnMPDspy
         NwS5LIiZN1yP3YJGuVVMBfJYcKDqp0bPavcBndNggTMHwJxIdzIq1p+IwWqkWtrfdWgJ
         H2NRVwenWJ2VsEFNod4lg9USWpPxhuUqoHImhvsQlGu9tv7BNDWj7chGvr52HAC1YtH3
         JrMKaP2MjpP0+Y11+An85Vv2nsPxcm7r1wtzKrNXVwMFLwwSexaOJOSW4vNmgOOrUHrD
         k2Kg==
X-Forwarded-Encrypted: i=1; AJvYcCW0+reY2ANWaHPUkzY4ICGcImooW29KSy0/7KkL3g8O0hk6F2zYk4xyIL92Pk+81Hj9rIb1EX6Kob1J@vger.kernel.org
X-Gm-Message-State: AOJu0YzkmKy2D7fz98jVD3LheTpesXibj6G3LusOYXO1auIvYValJC8Q
	3Av9P1YAKhDecgNpqulW7cZAcA4L+Zxcl0DLBdwjMX4jctJGh1p/nK15
X-Gm-Gg: ASbGncuDzUR8Vm2aH96ML7WVEYUWTzYCv1+Kx4y6qsQJjjsdfgIpHi6dDqej8wdrW7Z
	s3nSP+7OGnpJiiApQG9DuTnpcE3cJZCARp+4KRn98TaD1P67JOCXexqDUfHqW3KFP6iNqI0xEIA
	mD7oXw/3Fm+qlEDwm1ta8A5AOVlEULojswEm/6WgMLXP1vbOGT4eSdcPyGeUlgPeRRp18GHRQrH
	TaHHmJxfyKGQzZtd/JbSAL0IJk5ZZiXJGjyXml60dcewitRD1X+qS+GLqeV+fXWa1KxJW0EAhNB
	ooed/5yqcwp48JkDXTXO6aPjTYUGngzetAGPGwTS6OWUuG2nJSez8ZQtAHmY1uXID/1nwahnu66
	mFC+5aof8Eh4jjDlNmQ9gxmoPeEroX9KswLqf1jvkFHvaFR9p1KJ1UQjSgd/bAIiNRRSN2rAGKS
	qzrenS4uhj6/2/8dZyjYfL38HOp+ntlFcGn9d+mt/oyy5kt5IDS3zZUB46OlqIv8kbSMpZ66BxJ
	Ey6+IESfFlvC0m7
X-Google-Smtp-Source: AGHT+IE6GAJOdG/qDGqIS1mCpN488TDzi+QKoUUH1cFmR3miBBoO1+a2akA4/Hkj6YnfPYg9iHTXrw==
X-Received: by 2002:a05:600c:630c:b0:477:7a63:611f with SMTP id 5b1f17b1804b1-4778feba6demr143915445e9.36.1763478541562;
        Tue, 18 Nov 2025 07:09:01 -0800 (PST)
Received: from localhost (2a02-842a-9b20-0d01-432b-0dab-f195-2b25.rev.sfr.net. [2a02:842a:9b20:d01:432b:dab:f195:2b25])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47796a8a695sm206281725e9.13.2025.11.18.07.09.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 07:09:01 -0800 (PST)
From: =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>
Date: Tue, 18 Nov 2025 16:08:01 +0100
Subject: [PATCH v9 5/7] dt-bindings: memory: SDRAM channel: standardise
 node name
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251118-b4-ddr-bindings-v9-5-a033ac5144da@gmail.com>
References: <20251118-b4-ddr-bindings-v9-0-a033ac5144da@gmail.com>
In-Reply-To: <20251118-b4-ddr-bindings-v9-0-a033ac5144da@gmail.com>
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
X-Mailer: b4 0.15-dev-86b30

From: Clément Le Goffic <clement.legoffic@foss.st.com>

Add a pattern for sdram channel node name.

Signed-off-by: Clément Le Goffic <clement.legoffic@foss.st.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Clément Le Goffic <legoffic.clement@gmail.com>
---
 .../bindings/memory-controllers/ddr/jedec,sdram-channel.yaml       | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,sdram-channel.yaml b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,sdram-channel.yaml
index 866af40b654d..5cdd8ef45100 100644
--- a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,sdram-channel.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,sdram-channel.yaml
@@ -17,6 +17,9 @@ maintainers:
   - Julius Werner <jwerner@chromium.org>
 
 properties:
+  $nodename:
+    pattern: "sdram-channel-[0-9]+$"
+
   compatible:
     enum:
       - jedec,ddr4-channel
@@ -118,7 +121,7 @@ additionalProperties: false
 
 examples:
   - |
-    lpddr-channel0 {
+    sdram-channel-0 {
       #address-cells = <1>;
       #size-cells = <0>;
       compatible = "jedec,lpddr3-channel";
@@ -133,7 +136,7 @@ examples:
       };
     };
 
-    lpddr-channel1 {
+    sdram-channel-1 {
       #address-cells = <1>;
       #size-cells = <0>;
       compatible = "jedec,lpddr4-channel";

-- 
2.43.0


