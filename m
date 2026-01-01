Return-Path: <devicetree+bounces-250913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E464CECE67
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 10:06:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5B985302A44D
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 09:04:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B13E9288C34;
	Thu,  1 Jan 2026 09:03:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jkjH0zRV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD402882AA
	for <devicetree@vger.kernel.org>; Thu,  1 Jan 2026 09:03:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767258208; cv=none; b=Mo1cPcqVyXZ+bJHlJVyUhV9WjXTwWQGsjEheq0EBNfWI+4k69nWOjkV0zLmqG6b3vIyzOM74gJFe590cHUsNf5KQb9IOc9ZrTAAJ7Fmg//sGVBXQv0NTSuYY3gjAYdV1P+IhLMcVHUMhBAN/Z6uDzy+r2qtOcbBbP0zf77bk0B8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767258208; c=relaxed/simple;
	bh=8i2WC0AFNRoAyJx9LwHHLdlMc3fQP5/vwmujapLLxro=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XTbSrtYhkFdmiIV2IwmFZ13oKKm+yEWuX0Sg3jiGep96atjGFwkJOhfq2lZaw11AvLVQ67dfIOmrNQJx91jg4KE8EKVd32bhLmlYc+5V39W0pnb33Hr2BvJacCOQpedc5jCxQLrm4pdKPZwNijQgACmPizN09sapAnZFAMOLKGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jkjH0zRV; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-7b6dd81e2d4so11670874b3a.0
        for <devicetree@vger.kernel.org>; Thu, 01 Jan 2026 01:03:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767258206; x=1767863006; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vgzrS6iAvFIUlLKBejM9CRNPYbscxZNKJWP8/12+9Yg=;
        b=jkjH0zRVD3KZv8oTxvB3l0OFkgGXYSIz/d2NnCHUNU1tZFhL4m0phmqAI2++a+VujR
         dffHQ3Bn3g760guz2UDqLgALzzapfDxS1XqZ46P6dkpjz0emhfCucojFVtZFsfFE3iUd
         O2fj/IXqu2ekjJ24a5uKP8xVhXMmhdxXzBYHUXw8sWLYJOkSxuMMhV+T+NPcq4Ff8Gvh
         7DGh2oU7Plt592ZqvQW+hneaDyuK0C4NESwL7LiX6EedrrotmqZbJj54V6Dl5vslG9O1
         QmFCCfWQkiyxryDMlANgWP7WOLNdAWzhbTN/WUQe2Nyi+YWZXZH8Z4HaOha6rRalE7S2
         oqYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767258206; x=1767863006;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vgzrS6iAvFIUlLKBejM9CRNPYbscxZNKJWP8/12+9Yg=;
        b=oSovjpaKphmITOEBF2UhRUDrm1I8nSNxOv0Xat2P+mHpow1Mb1HukoEr83dh8SiMBv
         LNBbJ6yT0J88GOmuYnD+uFbIbDSG6iBS5TjWdgJpnPGCueAMpyWKu6425Wgi7NsZJVXy
         f/IJmRttXt+YE3ru/SofyuG6dj2gBkExkvQa4LV7z5EtfvRja1v1cau5+meNXGdrmF04
         jjqGwD7Q9ifilr+/PB0bf1Di3ExCsElf7exVJaaWKOclQ5YQIXiBCBmeYMHfsI4TzTAm
         90Id5yI0q0P8NPuudojvx9fIvIA/1zqTwH6BRT69xbUW0Gs+V+QVm4snt3DB+yYQtMIN
         M28A==
X-Forwarded-Encrypted: i=1; AJvYcCVkZVnra1RIPOEqDeSiiSx1q5k3g2JO7aoE0/D/vKVgEVfNQieEKlH6pzZJ+gmRoxlbHNOwqegHi8mq@vger.kernel.org
X-Gm-Message-State: AOJu0YwvnUV595HxRQw6vZAJ7QvRH+VHHyJwbauHvu9PzhI6Lci2tAcP
	FKIjUwXvJdMO7lDiVWZ3oO4JgpfipNddVAuzIE0BN+qQiFeWLBLwpW0t
X-Gm-Gg: AY/fxX7uWmM/6VRuwolNvwxSCopfz6NrjcD1RdKPKu8IrBgosB4kYBZWZjrGqggPaxU
	mBuV/2q06XjnkUsKVCS3lh7iG7brlAh1MUAnAjMjsEfRlm8FuGq+pIBCusHCd3SVclDB56vL+S9
	En74xcScm67Wzb+6LyXrhN+osHYy6urmMlVi917s7//w1+uCTzSGx8F0en4FFWD2k42PINpQifo
	xTtnoUz+6FUasC0hqMQwdgSloaUpEYXvwfuin8Dit3lQLSrcFiUsZCHHDYWLtmtchCjagWsiyOG
	3JxmH2uGXeOs0mkL5tldjW+uy7tNLA2Jtx1If34k0PeXXdghtDxxAfuN34HAVltDXEeRmnKvQ3U
	Opy8jwM2XA1kU0f4iXP077kQ5tWczfxUMFt/LGmNQ0/1gKH6VYCRbRgRyRgs1dI3zubQwLsOgOm
	IwKEZWIcpEOspf
X-Google-Smtp-Source: AGHT+IEA8A3zig71SDu0G7W/IVJ2/rh1z0era57GcwjPTkXa9sJlf6YO/DffuIhThSfawYNdiguECw==
X-Received: by 2002:a05:6a00:ab09:b0:7e8:4433:8fad with SMTP id d2e1a72fcca58-7ff6667b6d5mr37774388b3a.53.1767258206449;
        Thu, 01 Jan 2026 01:03:26 -0800 (PST)
Received: from [127.0.1.1] ([59.188.211.98])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-7ff7dfac29bsm37182957b3a.39.2026.01.01.01.03.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jan 2026 01:03:25 -0800 (PST)
From: Nick Chan <towinchenmi@gmail.com>
Date: Thu, 01 Jan 2026 17:01:51 +0800
Subject: [PATCH v10 15/21] arm64: dts: apple: t7001: Add CPU PMU nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260101-apple-cpmu-v10-15-48812c529ffc@gmail.com>
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
 Nick Chan <towinchenmi@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=946; i=towinchenmi@gmail.com;
 h=from:subject:message-id; bh=8i2WC0AFNRoAyJx9LwHHLdlMc3fQP5/vwmujapLLxro=;
 b=owEBbQKS/ZANAwAKAQHKCLemxQgkAcsmYgBpVjgoOPfHtMsOAsiJKy2RAlYxRutc4/IfGlOpr
 6nSyF0xe9iJAjMEAAEKAB0WIQRLUnh4XJes95w8aIMBygi3psUIJAUCaVY4KAAKCRABygi3psUI
 JB3PD/9pfTa8LS1pIxQ2OvHZ5LKbz813YPJzHm97C5F2nFhIHy9H2UmYu4wBfnwSR60fyjGNfvn
 Ck0ncncFeFSNCllr+Tr1e/s2b6/BzhncgdjrCxuRfe1ip8rs4gbv3GICpHKa7JgFrfaoUvbjoLY
 X8nMbiOnVEqVsQ1oIMAdB8aiT6On61YHrRZNdt9Vp3JBw4fVZfn0G48JyyCsaNdeX7+zszZImoW
 +e49+fwpaoLD0XEvwK50ej3LScCvFzeC35qf1/THnDtt/Cb4oxenYY0ewKKOmvI3EHUikOb5fgl
 JmF6OBsESH0/lwe4Bqc7cvvPb6IC678xurUSaQN147BDPcIp/2W4iYSLJGkmzRiUnTZsyksfW/9
 Dv8B+r/cgzkvukbptzOpAUrpQ8K5ze4H+nk9Cy7p01PnJwdamIgsL2hoKZQuDlPvCly/1MVy0SJ
 Ths0xtEiSMgbfiEz4I+9sfExwgILd3uN7IGq3+TihpjMzlwaolYTc6SG3oY9w0JA759dqDFn+0u
 TRf4yRqLfyKN6lyWiQNnix9YtHmgsdg2KoVwr3jbDBCwjaoga7mvUg9A/ecJWzI/WG2Nj0vpho+
 tw+PLoDNWPpBGibqADGwQk/nhVICclVHqfRanZEXI38v3D+Fo+tZdvHSBdCxbc9qyliv5IL7VLJ
 35egjrAeqTTyliQ==
X-Developer-Key: i=towinchenmi@gmail.com; a=openpgp;
 fpr=4B5278785C97ACF79C3C688301CA08B7A6C50824

Add CPU PMU nodes for Apple A8X SoC.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 arch/arm64/boot/dts/apple/t7001.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/t7001.dtsi b/arch/arm64/boot/dts/apple/t7001.dtsi
index e1afb05423698223ebc15f2ae347e73fb46c7c24..b62122ea40f00a54ae42dc3cd0f864f25888489c 100644
--- a/arch/arm64/boot/dts/apple/t7001.dtsi
+++ b/arch/arm64/boot/dts/apple/t7001.dtsi
@@ -275,6 +275,15 @@ timer {
 		interrupts = <AIC_FIQ AIC_TMR_GUEST_PHYS IRQ_TYPE_LEVEL_HIGH>,
 			     <AIC_FIQ AIC_TMR_GUEST_VIRT IRQ_TYPE_LEVEL_HIGH>;
 	};
+
+	pmu {
+		compatible = "apple,typhoon-pmu";
+		interrupt-parent = <&aic>;
+		interrupts = <AIC_IRQ 75 IRQ_TYPE_LEVEL_HIGH>,
+			     <AIC_IRQ 78 IRQ_TYPE_LEVEL_HIGH>,
+			     <AIC_IRQ 81 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0 &cpu1 &cpu2>;
+	};
 };
 
 #include "t7001-pmgr.dtsi"

-- 
2.52.0


