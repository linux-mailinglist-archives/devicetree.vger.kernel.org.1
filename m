Return-Path: <devicetree+bounces-226628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B80E3BDA399
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 17:07:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0C6F1189F591
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 15:07:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BCE630170A;
	Tue, 14 Oct 2025 15:05:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BE29QtUf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69F932FFDF2
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 15:05:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760454308; cv=none; b=YElpvbZ1YkXKpJAuRBl+RmFIudLJtrjF3wyaE+N9txfP4wiAsgrXkLT/YXv2PvtK6IE40JXZ+CAapdqQCebJtn9TlWcZSRixDgkZl5GRk+qvIyhh8631R6K+YjnCUfk7qsWaThx2F7HWIFSZRfYm0MjipvNJ+Rgz6d3xvp5kE5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760454308; c=relaxed/simple;
	bh=XiGGX/gYUODKcUIpICueRO0ZWhSBnplWOTrgw4sJMTI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HDBq2hC6orQvUOjg+FUmqbsR6Ag9JeQ3bM7jg8DX7xpGYoQsuLoVUdp9LuFQ4dgCX/1UzOYODrzgHtTsPF2xzgqnf2uQfT4a8Rq7mnZ/okyis/P9T2OzbPsIL/PyyUHOOLU4rGIfyYHuqyUUxrMgGR8NURUD65526Mw71ttUc6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BE29QtUf; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-76e4fc419a9so4947784b3a.0
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 08:05:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760454306; x=1761059106; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gsMRt6a+0MtEqKde4YWuihoSzMbsHghVTF7OAbgmvz8=;
        b=BE29QtUfYh6esS518jkriPB4TxAqDWouJ+j9lxtf1ucD+1+HtXy8V7XdaT3hlLrJsA
         i+E5EGHpbQEBIh1I7e0IrdZVZ40RdJR01hZGz58OotV+DVtc1tejojX7Qpky791W0UhD
         MLk2iYfpfUnlN5jaFMoNuu0OOMfOhgB/k5knUYm+RVe/ievHXSvnFZFNoW7c6I+D5cI+
         G6B7F9fHYgAspAvq81HbCkLam9LCY80LgFTgQsF6NsuJDT7+5kcVNMlx0uNFQ6YE6rft
         j+TqfkxGYcmtMdjv1i8nFFPsCp8KaHjV8A0MQpVl4pz+S/o1HCtcq0hxSKrOqpGb/2oF
         fQYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760454306; x=1761059106;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gsMRt6a+0MtEqKde4YWuihoSzMbsHghVTF7OAbgmvz8=;
        b=oS5/h4tQCI0IFhhe6uiI8rQusLjLQA369fZKgkmT40tETjl+G7NyMKaV+7Abvfk1wm
         rnb4L3OuuPJHfYyKNZl3+LHw+FrMW8+eSwR0t+mvSplArrn8X1TxDIctbtgAsWgEnsK2
         OXk6aA2eV4MXw/FnRF6Lz2ojj80/MBp3g84/6jihcDrPxytgs/72pE9wzyAVW48NF18X
         GUBGF/nH4HNGCPYFkeaR9JEyEmo+4vuMoU19GerBoAMTYseQgut8gjWV25eM9YLGFWET
         jEoR1ffJ+Mn8BvvvIApe+VEKY/QcZKzV3ixX7qiBfYL6R78bMaqcdPA2XAtn1aYdLZqk
         qnBA==
X-Forwarded-Encrypted: i=1; AJvYcCW7dmeFKpOVH11CW3DFyxQEpZ0/YmuSfNyBUY63Su4bZCsHR/s3u6yjDPuQzwq+d2pJYEsVnu3Nm9Ht@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9guglalkbmxM61Ry7jJbLGvfZgTxJ+XdtBPYu5pJd4F3A3BUr
	77l1r8RuoK1elxNw5l1ZBEwebB9UYb6oUAkemBSWeB2d3G2V2yzfySwE
X-Gm-Gg: ASbGncvXjInDqc41mhyncZdqcFajdTVrz0/wW8EyZu2FfEiX852QXYZp8Xc11K2hP2C
	iAaVFindvBvI2UCvwgUfLgUXXfLG3DAcnbL/PBwg5JJ6yXf1krv5yayq2DmrTiosUmhJF3ZU7M+
	JTdIAqXwireVqFri12kK82KG72UZLZBymR5JJJDens3pgDWk8f/6HdjeoS/GxY/GyfwhpOwOdoC
	zluRY8WqpVe9ROE+s560YYrPNfz43uf2k6dJtnmTIUSS4XTgs3VDXNnetWf5+1vET+MrLQATAjw
	16375774fU4xG2d2AQTBMXozHthUn61NJcajSrDL/RxSdzfuFAvY41aEnnQ/djSqcFCL56tITHI
	tuwanX68kG4c+q++yTDyeK82dzwicFYP3zblydazvmzbWPWBW9Aysaw==
X-Google-Smtp-Source: AGHT+IHfYvpkP9qBYR0QxPI4MGOvmRjmBPWouaaIKnO8VsRvsEyRGrUKru6CiIL2ZB5M9rvBGZzptA==
X-Received: by 2002:a05:6a20:7d9d:b0:303:8207:eb51 with SMTP id adf61e73a8af0-32da8462f4bmr34021694637.55.1760454305535;
        Tue, 14 Oct 2025 08:05:05 -0700 (PDT)
Received: from [127.0.1.1] ([59.188.211.98])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-33b61a1d3cfsm16258161a91.2.2025.10.14.08.05.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 08:05:05 -0700 (PDT)
From: Nick Chan <towinchenmi@gmail.com>
Date: Tue, 14 Oct 2025 23:02:46 +0800
Subject: [PATCH RESEND v8 13/21] arm64: dts: apple: s5l8960x: Add CPU PMU
 nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251014-apple-cpmu-v8-13-3f94d4a2a285@gmail.com>
References: <20251014-apple-cpmu-v8-0-3f94d4a2a285@gmail.com>
In-Reply-To: <20251014-apple-cpmu-v8-0-3f94d4a2a285@gmail.com>
To: Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Catalin Marinas <catalin.marinas@arm.com>, Janne Grunau <j@jannau.net>, 
 Alyssa Rosenzweig <alyssa@rosenzweig.io>, Neal Gompa <neal@gompa.dev>, 
 Sven Peter <sven@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 linux-perf-users@vger.kernel.org, devicetree@vger.kernel.org, 
 asahi@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Nick Chan <towinchenmi@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=914; i=towinchenmi@gmail.com;
 h=from:subject:message-id; bh=XiGGX/gYUODKcUIpICueRO0ZWhSBnplWOTrgw4sJMTI=;
 b=owEBbQKS/ZANAwAKAQHKCLemxQgkAcsmYgBo7mZuP34mQJBCd6DStjvUZPuGtGfYF/188yqem
 GL19LCKE4WJAjMEAAEKAB0WIQRLUnh4XJes95w8aIMBygi3psUIJAUCaO5mbgAKCRABygi3psUI
 JBi6EACU9XHCs8g+4Qbt5yLz0F/EmK7cgyB1bpMgI6YWmKeTTXtIGIGFCPumMb5BOwQ2XU/cQhS
 pcNOLz7i0HEv7X/unBThX2PCscxe+9eSw59pvdHe4eEG+BDlHTFbIqZmPTzE2kMNZPLRXAGLdXU
 +UZWuG6HsNZSOknammazcOredp9P7t8+oCxz9X29YuMBXlzN6Tn95qwDmdbVUzuPBC4OvIY5/Jz
 uKigRJS/Jb6WCsRKMKx5v8QWbGRF4MRaBL2ddz8AIM9t73e0KUsnGG201jxuMUnEzPmQsxbngFi
 KdoT97UWsrW+eBqgVzrN/LoBPYcIGqskAcw4TRUmntFDVqi2S/cN3zbS40XpwnU9GNqwr798pgB
 ZYNP/Ay0Y1E2hbQJ4OqT8eEEFklsPT/7nw8hU+ZlcV2/2gIkSlUNN27N5M9fEULSRYK7hTYl3dB
 ft4GbH6QRVusX/oZVtoxaXQbKDJ2kvQw/mabUxusGg1CAsecpBDQYRky+n9DBIKRY+bqKVmWudr
 JrxS1XszQOq3013ZUOxJnDMsSMBtsekgfjST/EAIBJ4MZoI6WbQenxgZjTsIRFx7C7rpC4qazWK
 CFW4RAYAIuIArBchm8OO8dpRHXeuSnnWFezg3vOrr3cSX9TX9asFqC9xiSwxgfOcpG96SSTLWeq
 +9oQspGNJtE4Dtw==
X-Developer-Key: i=towinchenmi@gmail.com; a=openpgp;
 fpr=4B5278785C97ACF79C3C688301CA08B7A6C50824

Add CPU PMU nodes for Apple A7 SoC.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 arch/arm64/boot/dts/apple/s5l8960x.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/s5l8960x.dtsi b/arch/arm64/boot/dts/apple/s5l8960x.dtsi
index 5b5175d6978c45052ded495fc0d18ee3a8fbfdcb..1a3a90f7b9ded42e371ef0b41057fd3081579615 100644
--- a/arch/arm64/boot/dts/apple/s5l8960x.dtsi
+++ b/arch/arm64/boot/dts/apple/s5l8960x.dtsi
@@ -151,6 +151,14 @@ timer {
 		interrupts = <AIC_FIQ AIC_TMR_GUEST_PHYS IRQ_TYPE_LEVEL_HIGH>,
 			     <AIC_FIQ AIC_TMR_GUEST_VIRT IRQ_TYPE_LEVEL_HIGH>;
 	};
+
+	pmu {
+		compatible = "apple,cyclone-pmu";
+		interrupt-parent = <&aic>;
+		interrupts = <AIC_IRQ 178 IRQ_TYPE_LEVEL_HIGH>,
+			     <AIC_IRQ 181 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0 &cpu1>;
+	};
 };
 
 #include "s5l8960x-pmgr.dtsi"

-- 
2.51.0


