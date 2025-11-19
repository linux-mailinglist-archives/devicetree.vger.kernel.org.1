Return-Path: <devicetree+bounces-240443-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id EB72BC710AF
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 21:35:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B5B1A4E0681
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 20:35:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A58543596F4;
	Wed, 19 Nov 2025 20:35:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="M6bPeD3v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 042FD22576E
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 20:35:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763584520; cv=none; b=JmIjjwHjns67zdKfiqse4PT4UxN3D+OFXG91JwRUSyYaW02JL0Zq7Mc+WIZ39oABLpqFsPoItyOaSP7cxx1HKHC0oYj50QMWEICpMytM5NIF6w4DOZbMTcfWGVajpA+y+do/gjXN/Cwir/757NozVQmhEffwllfIW7q2Ch5nMlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763584520; c=relaxed/simple;
	bh=AcEF/ULZ7hn5XborFI2uRrFvNzwQynLPNGhuGPcXeuI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=PqFDd12Z4f0MqIa0j3s6lWQnZ/mtlmFIRUHMyVdv7y7hJ6Z4MFA51nbHha49DnuQvR7qeQjngR6meI/TPB6orvXV+JVnItqxdLV50iFR/PV9ZgVw4ENrjVDaY2XkTVIj91hzCJ/Rt6svU/Iv/FvZhZOFdxXq/leEINHt73yPK3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=M6bPeD3v; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-477a219dbcaso1481905e9.3
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 12:35:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763584516; x=1764189316; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IPjBoOQ0X6tiw7eKt7ufioOYEoA2Xgma4d9CNgYmRXA=;
        b=M6bPeD3vLWP63lQIZrEH1n4fsZ1CDd6OmUwbBC40N/+ymw0OQFjaM+7oz9VU76o6tJ
         HJ6dgUzbRT2ZbUL/Zyu6w/S1Ljn42Dc2kfJnD7f93VcQ3dRFe774ciM1z9w6c1AL9ttc
         E7zbCEa6ufBurZfmCChNG66nor4SG66gA62ot7XhJSOnQ56hSeOe43MfK14Xn5NiVWNu
         VjSvL2CQqNot21qMKlLqTF5Pv3zoS0K1LO87d47xh8vhu0ghcJvOlHtjy497SLP4Y2ZG
         Sr47cOnhyP/HcDZDukUuI/triGFEfdGrQoOzCvHuI31SiMejpI7MaqrHUBEi94UPlbei
         O89g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763584516; x=1764189316;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IPjBoOQ0X6tiw7eKt7ufioOYEoA2Xgma4d9CNgYmRXA=;
        b=T3itlHHvkFOurZf7IzU3TIC9Drd26wvICfdvc9iQLcyBMUCfooNr2qVh1V0iv6V9xZ
         cdx8mSUzMgY6EOhgWzh0WRxh3d472JEI+K82xuSiE3z5BwKp0EZ2S6shzOG+fDnhz6qM
         SQWRZwC8g/erGW62ky/A/my3aZJyuLOFP8sgiD0p4B7GQJRe2qRslWOB0xpcr8Pfrh31
         vly5o1H8ls9c9R/w9K5rDnk/pgPfFrkHh1xxQp6+wloKSHM9gUCIxvUJA7W8+bEkGbBE
         wh38e5R/Ofk2LyrjP6wt04Eu9Kx1akGH4tLLBVof510Bujt6k2O3x+b84Pwwa2tvjhrt
         hGyw==
X-Forwarded-Encrypted: i=1; AJvYcCV1/Fcouu/TKTiJiij9MPPlUH7wnDPfdppV0RsEAE4LHLLzmw8nJQ6g/kT5Xd406pfwmRKy+3dfPhiU@vger.kernel.org
X-Gm-Message-State: AOJu0YxLQVkhwZ2mT8rnAvF/+RFgI8yIpvoV4kbyWfRo9u5yR57flyZr
	09RdhQ6KwBQdYozrW/9VVs/awE3H/sErXyIV63p8lYHZVu8TK2ZLgQSB
X-Gm-Gg: ASbGncsvfsVkrzyu+lnaRZ6tf6lHdcAt+sXPOvphzQXiS3w+UHGFydKaAxvLAqBaeLx
	Mw9YRs1+QHuso6xI00HJWK8b8TOIQPo0jWvQEzggR+R4h547pe9BLeZbmFimrqGEL0toSGCmu6m
	bNatUaHkFOKDK7Rsmh4uAJLMy7DcugCe4T8WFVk3lWtkubBilbXlSECbk5iafJvHVdVA13nNga7
	lTc3cmDYg1zAAGaQSR3fFBdTeTGPRlc0NYSHuO7MQTKT6S52tDI6nnPktxV03SJJ1oL7OqQveeo
	3QZNDnialbJKpWUp+vNIMqobpKKEcdXAKXFVt0oAXM4uGjUklWD0CQzRgH8WdZRrpbo/QMX2EE5
	ao/90NPdb5Xxaa1F6cSiJKukc4G3bxbRpRAFfNNuX2e/4B8lXgwo6/t/hoDElvWtXv9+NV6QX+i
	P1pDXC
X-Google-Smtp-Source: AGHT+IFq24ZE90yWikR1WNs6G9qizziluuH3FFv6RjdpPlQ2XJnKH0ssswEw3Z2b4tPjhHGKFdhHog==
X-Received: by 2002:a05:600c:4506:b0:477:5af7:6fa with SMTP id 5b1f17b1804b1-477b8c92626mr4124585e9.32.1763584516042;
        Wed, 19 Nov 2025 12:35:16 -0800 (PST)
Received: from curiosity ([80.211.22.60])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-477b82cc72dsm8653205e9.1.2025.11.19.12.35.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 12:35:15 -0800 (PST)
From: Sergey Matyukevich <geomatsi@gmail.com>
To: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Charlie Jenkins <charlie@rivosinc.com>,
	Sergey Matyukevich <geomatsi@gmail.com>
Subject: [PATCH] riscv: dts: allwinner: d1: fix vlenb property
Date: Wed, 19 Nov 2025 23:35:06 +0300
Message-ID: <20251119203508.1032716-1-geomatsi@gmail.com>
X-Mailer: git-send-email 2.51.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

According to [1], the C906 vector registers are 128 bits wide.
The 'thead,vlenb' property specifies the vector register length
in bytes, so its value must be set to 16.

[1] https://dl.linux-sunxi.org/D1/Xuantie_C906_R1S0_User_Manual.pdf

Fixes: ce1daeeba600 ("riscv: dts: allwinner: Add xtheadvector to the D1/D1s devicetree")
Signed-off-by: Sergey Matyukevich <geomatsi@gmail.com>
---
 arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi b/arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi
index 6367112e614a..a7442a508433 100644
--- a/arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi
+++ b/arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi
@@ -28,7 +28,7 @@ cpu0: cpu@0 {
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
 					       "zifencei", "zihpm", "xtheadvector";
-			thead,vlenb = <128>;
+			thead,vlenb = <16>;
 			#cooling-cells = <2>;
 
 			cpu0_intc: interrupt-controller {
-- 
2.51.2


