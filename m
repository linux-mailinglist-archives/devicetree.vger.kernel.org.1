Return-Path: <devicetree+bounces-250899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 98987CECE31
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 10:03:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 530F0300FE12
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 09:02:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC0DE283FEF;
	Thu,  1 Jan 2026 09:02:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JSQVH6CE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06C262836B1
	for <devicetree@vger.kernel.org>; Thu,  1 Jan 2026 09:02:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767258162; cv=none; b=nbi+xWkXo7tRowHxU3QOnfqBTuHmaipruMu1zNgr85NjDSpgJaMwnClDaVhXagpmqdonPGiPnAS44oXYxFuX+QcJCvsKHHjaN3j0fAtie6ks5AFdfrWHHvgTLIQPhrBu2VH9YyhODMeFF/U+3AgQ4V3kD4PnQnWXYHAyblr/gKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767258162; c=relaxed/simple;
	bh=07n0zpGM1mcRCjmEoORnP+p4Tv6Nx9ryjVOY1OMyuiY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kP9bjm9GFpPAJRu5w/ypU+dofcc8ZHKDR+1DqFhhNx0QdbNre+L0y1NiigkqGq03p3i2xOXa+Lst529/Cbb+nkErbrIJI/W07OV/eJr8Tf1HvHtDAMUZdJMeZPVhWiIKjThsvCJg5NhOC9foI9GyLGp2SP+fRTJhzJcxWuQBndc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JSQVH6CE; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-7bc248dc16aso9036922b3a.0
        for <devicetree@vger.kernel.org>; Thu, 01 Jan 2026 01:02:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767258160; x=1767862960; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CBsTBcVtZ52Xc7+liwX/QWMHum7rwn6gjjvyLUqjbLE=;
        b=JSQVH6CEd1vbsGe/D8Y5q8ITV0oZa6ZmWkqScduqmMM0M4R77PihWjzMXghpdMItMG
         hLiPNNuuHlkAygDWPsccSxANbxgvtNSblGeVb9dQyEwcQ8NkLfyKLJcjYKgBcXHOe3jD
         sArFRtdxMAW/1kUGhH50da+0dfnXsXTKRxIL950QLoMM9V1NqMdU/H5QPqj5k8oB6q8m
         TRJljtRtIwREFu9qEBDjPlyv/jKOSlnLfgnO/3umr52RyDCxVDCV2Nv/uzn2DYTWsmQe
         bI0Dsm23QNPCdnCf52h5bBvjwobIH8oJ5H/e/OBemtqMkbirM3eMzYyJ4lWJvENmf3Ek
         4TJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767258160; x=1767862960;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CBsTBcVtZ52Xc7+liwX/QWMHum7rwn6gjjvyLUqjbLE=;
        b=lCGKSVB3m6hFBor2YxJQ9h3cK/OIORr5pvEMJmxMi3D9i8RDgzYeTyOzT7jMYFOJdc
         vF+jpsa/N+b4EK8TSrXejY9MZoT/FJnUZ9UKw0Q9HH7wB6sEhLF2rou6RDeFZIV6m9hn
         oc5JTQiZX2wVIBr2Q22VyB6Z5i0633KARHne9Hi0omD/7qGZKPdKnJ0svXo2C9xijFvp
         RNX3IqkqcGbxSJf82EQpvDiC37Jv5J20upxAl8PmZdD98Z2eS0fB47CrVLYkKBun8Czo
         vs6tp/yX6lM3pWsoIgLWibXcszBJi1ILN+B1tDdZriZ5slICspCF4oVyPc32pZxxNfap
         95bA==
X-Forwarded-Encrypted: i=1; AJvYcCVpBP+vxVm+jKqxOqxfXcRCGfM1dcBUhZs/HzwJy8q8c1yjyueGlbpKzTarjjg8S5outgsJnB/JLGnF@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5w0ChvtVTW68EIEDnkficM4g7/9dlOLZ+u579VmnnjClqZ0PM
	gxoqhc24ycU2SdL2JVll3y2du83CL5tCbSIMSzf+zgLp8JgFpgrcKcTR
X-Gm-Gg: AY/fxX63LXN0t8VVKzhAJZPKIWB2mfa6uRwcFirSUetz730ul6E+IsGs8T7/tXNFbKI
	emNVCuLvugcSs+w3JgiKY/LYBM+IOPZ3xR6qBmibzqUzZ9ZuoRmoV1iX7jenRQHZ5x/wEqz3bYX
	zKQKMM0ErLgLGJzF06uqTkEsZ/JDy5Ew+XQMyPf4Ps5Jula+KqS8iB4MKgncKqILmoKKiju0cuG
	uGSIGzxP29iVfPemxzHiDJYOo8H1+3pVDUzxhZDar/OP4LUC2rvKVyrz1FE5ieMkO9s0U5Oy8Qb
	FwepS4HA7y0rc6k0QK/M+ZkoSc/5gg3HVQ6rE8jbGPpSCgUUkcwp9Rh13Ri5ImyozAn44Fq7CNm
	VUOAPkYAF0xxCfZpdlZ5QDfkl7do+cJPpPMznAUfdOV1xudpzXW1cvQO0Np/uEJbi97Zsq1KK61
	CZUtJkBWltqSDT
X-Google-Smtp-Source: AGHT+IFtoil+3P7aWnRMIiq8mqybLoG4UdYuQs6Y3uQb/Jyici2QQ+OBrSKeKnNpXmAnFflhht0LDQ==
X-Received: by 2002:a05:6a00:f99:b0:7e8:4587:e8ce with SMTP id d2e1a72fcca58-7ff66a6cd8cmr29772792b3a.65.1767258160250;
        Thu, 01 Jan 2026 01:02:40 -0800 (PST)
Received: from [127.0.1.1] ([59.188.211.98])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-7ff7dfac29bsm37182957b3a.39.2026.01.01.01.02.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jan 2026 01:02:39 -0800 (PST)
From: Nick Chan <towinchenmi@gmail.com>
Date: Thu, 01 Jan 2026 17:01:37 +0800
Subject: [PATCH v10 01/21] dt-bindings: arm: pmu: Add Apple A7-A11 SoC CPU
 PMU compatibles
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260101-apple-cpmu-v10-1-48812c529ffc@gmail.com>
References: <20260101-apple-cpmu-v10-0-48812c529ffc@gmail.com>
In-Reply-To: <20260101-apple-cpmu-v10-0-48812c529ffc@gmail.com>
To: Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Catalin Marinas <catalin.marinas@arm.com>, Janne Grunau <j@jannau.net>, 
 Neal Gompa <neal@gompa.dev>, Sven Peter <sven@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 linux-perf-users@vger.kernel.org, devicetree@vger.kernel.org, 
 asahi@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Nick Chan <towinchenmi@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1102; i=towinchenmi@gmail.com;
 h=from:subject:message-id; bh=07n0zpGM1mcRCjmEoORnP+p4Tv6Nx9ryjVOY1OMyuiY=;
 b=owEBbQKS/ZANAwAKAQHKCLemxQgkAcsmYgBpVjgmRsRBPdL9/utiE0nqPtsVdLeRRqetK9YcJ
 ZMgjrSR3kqJAjMEAAEKAB0WIQRLUnh4XJes95w8aIMBygi3psUIJAUCaVY4JgAKCRABygi3psUI
 JF4xD/0QoWqxkZH1Wn5QnoPV87CkMp55ChVhudxMJB4SC5V7Dt+HrAc4pSd7nFd+K4pPeP1qwbG
 0onYYZ1veiVkIAFlQsUpB3a8jGT90Vru0U2MYyIrv6kUYWohWOAABi2aNG5omb2G5Nk3MibHtpd
 rnmNJb97uGnUepEd95Fm20xBETKdOWHmsQ4061B9YKi9SIt4gXHPDlHMNUhIy19RNz4veCpzW/V
 +FyYucydUfvbOrmRFIkosShp5AHD1RXszDYIAEl1zJmLRHZymEXUavxBarEYUKdajJ/3+nvFvEK
 tlgApSDE6OHx88cvWjkIG+w+a5IuDUT+lTBb+X89PQP1h4cc1PM2a9HSPDoLN1dTrDA/UPNs6AZ
 /tjGneYg4Kgu76qanoKeZQTDwuG8iq5SyrT2mMHMjM9uAlnPwRm9KxiI/AtMQ2rYvlVqqXazAgP
 sHf7GgNlZjaE4SIQgkXm4EZN8wrvOBrAPOMUmeOoWzDXYuvBThwlZXAbCJFJROUTLsKEOUWQt6+
 WsDdb1MllmQlEl7jgopcMuD0dxR/s8Xee0I7UC4/KAtBWwrKZEZvQLknULROfmmCPyCNEvVfNZ3
 poA70X2OklbJrD+UFtMMUxVVft0gzk21SwEibpkyOc18DW6AyXoBFwusC9FpWoym7sAZcHHVNOC
 hygUle0lWVEoscw==
X-Developer-Key: i=towinchenmi@gmail.com; a=openpgp;
 fpr=4B5278785C97ACF79C3C688301CA08B7A6C50824

Document the compatibles for Apple A7-A11 SoC CPU PMU.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 Documentation/devicetree/bindings/arm/pmu.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/pmu.yaml b/Documentation/devicetree/bindings/arm/pmu.yaml
index f47baaefcdacfd37472926ec6994c33603163a44..97800a991f208448aa4bc8dd59b45df2ff35b400 100644
--- a/Documentation/devicetree/bindings/arm/pmu.yaml
+++ b/Documentation/devicetree/bindings/arm/pmu.yaml
@@ -22,8 +22,14 @@ properties:
           - apm,potenza-pmu
           - apple,avalanche-pmu
           - apple,blizzard-pmu
+          - apple,cyclone-pmu
           - apple,firestorm-pmu
+          - apple,fusion-pmu
           - apple,icestorm-pmu
+          - apple,monsoon-pmu
+          - apple,mistral-pmu
+          - apple,twister-pmu
+          - apple,typhoon-pmu
           - arm,armv8-pmuv3 # Only for s/w models
           - arm,arm1136-pmu
           - arm,arm1176-pmu

-- 
2.52.0


