Return-Path: <devicetree+bounces-56919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FA9C89B06B
	for <lists+devicetree@lfdr.de>; Sun,  7 Apr 2024 12:28:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BFF0EB21082
	for <lists+devicetree@lfdr.de>; Sun,  7 Apr 2024 10:28:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B778217C77;
	Sun,  7 Apr 2024 10:28:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vJZCW/S8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E29162599
	for <devicetree@vger.kernel.org>; Sun,  7 Apr 2024 10:28:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712485727; cv=none; b=ngo8csidU/nA6GU5z+IfA2v1pnZkJfAozFRQnu04Q7FlFxb3jZlrHL6dpHH2DkuLuj1NE0grCkTk7KYjIcfD60I7eOAeFD8kxapBjs2/uSq1/fiBF74hTGjOnrpAzusClzx6ojgPCRHVKETHdwjKhihkHzupZ6z1EpP1wrVwteg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712485727; c=relaxed/simple;
	bh=zrafKbkh4s7cjDZTL+DArSyH4tS3eCcTAoC9DhpXz44=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=D7je5Haxrnirgkf+9pCOAdbFWKlOLefXgOM0AdXIL3UyYcqF93IGxKe7q/MgyShGCWXLv4PoVNhADmglT+dZi5IokmeXs6d39wYOPCBf0lrlUxPL61W3i8TPw+HIXe95LJdHBfK5Zjqc81KJMfgK5mA68aukvGXZ1ONN7GrkUo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vJZCW/S8; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3455ff1339dso530588f8f.0
        for <devicetree@vger.kernel.org>; Sun, 07 Apr 2024 03:28:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712485724; x=1713090524; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=J3Cl7h9jU7ChQNHuc95qoMqQpHtUsnk01qC1Q0FakwM=;
        b=vJZCW/S8H44LIaWAgDPqluycE4xdQfqRMM8kY+IR3UZoninWFGjWEkuu2fHrgQn1HY
         rXFiXAwCrIGYa18FOyXHmP88g4Vhu87w9ARiOAQMrx473pUQGBVoLrViuvE8aDNtvLt6
         wf+uq7n0u1jtE7tbI0zWGpmmoQj+JHrCRwWgGc9/67mDuCr7ePntncMl+ob1Bgj25mWl
         GuQhIjzLkGKccQAMVEhl3HqHWinc1Qs70e6XExI3vCW3bXIf/fY7GdxxMHgg/or6Dh0+
         280YUL2LEN3aIFhN5KLjjtODaGqoA8k8Ptiz/fXzB4LQ3mTQqgkUnP6Ywe2N6I8IUS01
         NNRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712485724; x=1713090524;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J3Cl7h9jU7ChQNHuc95qoMqQpHtUsnk01qC1Q0FakwM=;
        b=TFvOsj/IlzNsmEoaSXFuy0gLwFOpMEcwES7/qus9hqb8rceyPSlKe2ZEV5uGj36xw4
         uuWHpBmKtb6xYqeWPY9aHXIzIgBBYbzdUcmEsdRQdJi0dCVzkGOsFTpq0i1ocBJpYKno
         klb1gfR6pQiJuNm+sGbbTuv2MiReVwoL9JKjdQBtG0dmojDJsUXyy9ngd4UOKI7AUmi3
         eWlzsJIbihRQUSqrv+lf2KLbPj88cTy4qhHNuOvMYsF8O1M6/ZwW1xajQOfCU9lRiB5m
         olwH9cDyAsphOUV5XQ0l48xRXBCEfUdY/mL7bE2rZo1+L8ZJLIVTPZ9CsjhObIFod3vR
         uQCA==
X-Forwarded-Encrypted: i=1; AJvYcCX2e0ttpENU/NcG2x+E3rlLNyrAVKatcuyOddvjjWWsDjuWXyi7JfGka0EN5uZzKVRv3hqwTNKR6OUHbSUYxFkTmq2Gzr3lNKBSIA==
X-Gm-Message-State: AOJu0Yy5GNHKVlEAhOH8x8ikJQjEshXKoy59a5ITxhjeLYcoEyg9/3f5
	Q4mkhrIZ9m/kOc3vaW5kbVWKkm+QWZT4URip7KHuYk8ScQjg62kLSmjv4Rw6riA=
X-Google-Smtp-Source: AGHT+IGyr6WK4/XKIk3R6H/gfyVg/+5WfEv6sJHc2P9Nl5aDbnzIrVYpRGVPWmpM5DaRkh/h36MGIQ==
X-Received: by 2002:a05:600c:154b:b0:415:6b6d:da6f with SMTP id f11-20020a05600c154b00b004156b6dda6fmr5397004wmg.39.1712485724165;
        Sun, 07 Apr 2024 03:28:44 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id g6-20020a05600c4ec600b004148d7b889asm13241002wmq.8.2024.04.07.03.28.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Apr 2024 03:28:43 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Robert Richter <rric@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: cavium: thunder2-99xx:: drop redundant reg-names
Date: Sun,  7 Apr 2024 12:28:41 +0200
Message-Id: <20240407102841.38617-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There is no "reg-names" property in the PCI bindings and the value does
not conform to Devicetree coding style (upper-case letters, space), so
assume this was copied from downstream.

This fixes dtbs_check warning:

  thunder2-99xx.dtb: pcie@30000000: Unevaluated properties are not allowed ('reg-names' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/cavium/thunder2-99xx.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/cavium/thunder2-99xx.dtsi b/arch/arm64/boot/dts/cavium/thunder2-99xx.dtsi
index 3419bd252696..874d4d3a4e4f 100644
--- a/arch/arm64/boot/dts/cavium/thunder2-99xx.dtsi
+++ b/arch/arm64/boot/dts/cavium/thunder2-99xx.dtsi
@@ -103,7 +103,6 @@ pcie@30000000 {
 
 		/* ECAM at 0x3000_0000 - 0x4000_0000 */
 		reg = <0x0 0x30000000  0x0 0x10000000>;
-		reg-names = "PCI ECAM";
 
 		/*
 		 * PCI ranges:
-- 
2.34.1


