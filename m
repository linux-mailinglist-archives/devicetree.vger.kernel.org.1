Return-Path: <devicetree+bounces-131630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 826B49F4354
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 07:12:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 21EDB1889C60
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 06:12:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4279156C76;
	Tue, 17 Dec 2024 06:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Cs3YAkGS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8EED1459E0
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 06:12:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734415953; cv=none; b=dLRfNth364O0cywxOttx/ogc+0Y1EORS/8zjn94Bngdb5NaiqYpZH3Lz+rAUgn9yaikE069+JPB6nJdFKuBQg/EIE5GsmbQBOwPhA40VnlDv6ViqK+Cd0Jlfxt15Cgpt2ksp6YA/VEVLTxB9MqjnA7Lgzwv+F9sjKaR7SPhPbkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734415953; c=relaxed/simple;
	bh=l+CmowjLxxDDjlc+kWV/o6CeswngsGm7D9h42LzE05I=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ewDhpAj1XKaQDUdfbwptJAkMgm/cIac1eTzQiUV4MhiiYhKs93LHlfiDLfvQWREwgsLf5NZ+gDvO/21BWYBPhf6ATwSI1PmmMS45/f9TQrMKUEc/upiVv/tg9upCbgkv5UsQglcY6zcydk9m83witCZZtXFNoVLV+FEaCmu3+kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Cs3YAkGS; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-436246b1f9bso6714555e9.1
        for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 22:12:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734415950; x=1735020750; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PTHJDPcDpPl/b/u84+C0bmCrPy6/IfhaBvYT/oexWi8=;
        b=Cs3YAkGSsTAKiPg/nwKq75Te1qiaoE0lnGi73znYtfS515QjJnETm0EnUFQunF+ZEd
         Y1PEitEZ0nubd7oUXX3yZhOq12yF5yP8kJ8o+mHEOmavES6JQHBhK6/4Ryd+imsrCtX9
         yLD7ADKQhVVqKM/XcB20yCVxgSpIRkRgzNZllHn1FIAUV7XmMVg0sz45SE7hnu4r64Mi
         MkwI0Pp6CEMD4IKKn6UAqD1lYvvTaR6+LP9CagsrraJkrntQFmSh5K0WJTHQbHZVMI+q
         BGeY1aa8sYIUX3DvV7k8Y+m63iBt2gE24RM3bb2Q2exkLXJrwx5L6yvtvhhWF8rRVywv
         /hpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734415950; x=1735020750;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PTHJDPcDpPl/b/u84+C0bmCrPy6/IfhaBvYT/oexWi8=;
        b=an/cewNOiMExL6QT9/kMyu7w02aO6xaO/8X67X05gzHcl37XqLAx1jlHxBLB0RobCL
         mW0dwYr6EEwAUOrgXxIq7QEj2R3LVHUQ0kB2x/2OBs6WUBVqQ/7mdmEcy69UaAMb2DGZ
         Q3zb6TcWE3ct24nw9cfiJF4pyvL8aBeDyJG0tF9oP2Aif51bMBb8l9N/LNjwpEb5uAzn
         wi12gMFz4D/KWsLRMMuRkZ9efUjBBXr4Wdx/PdYwDRslUwOuxDNC6MxTNxyJMMJ0e6L3
         /o9j6KFuU6f5eTMiWv0wI/JvtSo4cM8t9qfkYRkcsCsGqTF34Jq/GdRRnkxSfRvV2gWs
         Cwkg==
X-Forwarded-Encrypted: i=1; AJvYcCVjiew94b3J9yjHLmGANPinrPXplAtMCWNUGURFla+6Un5hEezmmm+xPet+rHUPaa5vGe/iGJamwSjQ@vger.kernel.org
X-Gm-Message-State: AOJu0YyJowIDjQCS1Z2lIqV/e0YLpq676h3Wj40zIjMx+7Nj+bv3tExE
	4tjbs65Hv/OxadU4gDpwoJEHYwpHw3/KmblbKjV8zROQnh+OMdB165wUfqUIXEk=
X-Gm-Gg: ASbGncsxP+1L6GtLs6/dEXTHOHKm5uhPv4lxMzJuDgeYuIQExIGU6K04mv2OPpY23si
	oKPiscRwbxQCOQs7di9m+W1Nr3q45lCe6F0UmQ/qsjbCMhEyMODZNyXTS0u2xQObD06bFHXVkX9
	x9Ii7Vb7kiwYz9Lyrd0CsnGONoaaby0Mi2Oe1UqMZ7rHTtFq9YjjOAoVNujwCpDvJPrF1BrvH58
	UTUwDzuLCNUhVGxrlrP6i3b45mAnDg/fO7aemQAC3x52v6ssyQ6dzeaQujQDjbIeTu56Lc=
X-Google-Smtp-Source: AGHT+IFI+p0M1btx225eSEUt1sd3VfrnBfaQ6XC/nOx5Rt+MMlZSNPlHzmh9nMcVTJ+lBXANYx6cnQ==
X-Received: by 2002:a05:6000:4607:b0:385:ea11:dd8f with SMTP id ffacd0b85a97d-38880ad88e7mr4026927f8f.7.1734415950172;
        Mon, 16 Dec 2024 22:12:30 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-388c80120bcsm10401852f8f.5.2024.12.16.22.12.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2024 22:12:29 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Marc Zyngier <maz@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: interrupt-controller: arm,gic: Correct VGIC interrupt description
Date: Tue, 17 Dec 2024 07:12:26 +0100
Message-ID: <20241217061226.14139-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The description of VGIC interrupt referenced obsolete "see below" after
converting TXT to DT Schema in commit 66ed144f147a ("dt-bindings:
interrupt-controller: Convert ARM GIC to json-schema"), because there is
no dedicated "VGIC" chapter anymore below.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/interrupt-controller/arm,gic.yaml     | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/arm,gic.yaml b/Documentation/devicetree/bindings/interrupt-controller/arm,gic.yaml
index a2846e493497..7173c4b5a228 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/arm,gic.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/arm,gic.yaml
@@ -110,8 +110,8 @@ properties:
 
   interrupts:
     description: Interrupt source of the parent interrupt controller on
-      secondary GICs, or VGIC maintenance interrupt on primary GIC (see
-      below).
+      secondary GICs, or VGIC maintenance interrupt on primary GIC (see "GICv2
+      with virtualization extensions" paragraph in the "reg" property).
     maxItems: 1
 
   cpu-offset:
-- 
2.43.0


