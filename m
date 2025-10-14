Return-Path: <devicetree+bounces-226635-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF3EBDA43E
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 17:14:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 87D16503886
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 15:08:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85BE23043AC;
	Tue, 14 Oct 2025 15:05:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BiJoUKNL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02EDB303CBD
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 15:05:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760454332; cv=none; b=E6mhibNOPRchy+RxV+3NGHT7/v0BCH9VBBlqc3fEXohYtaRKTy/v/K7bb4g+FO9ley9q3Tf+jxAvlSO1OkRN5aVm21JyI+fM/cG0Uv/TeIqHLdvAwq8JPD9VykwKPErfrSpVrPzLu6f8crtgHlbogu3OLAiD6KmzaejFDTRmTT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760454332; c=relaxed/simple;
	bh=aC00DD3jiZSVPA6I5+G806JpCyFv8tDWkvwqkbp+yEU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WESm4YaF2gh2X+T9vq9hEH3/jfmILgI0hNNbqnCC5yS+dLttY6GjqJUyW9WNxFJXsU3FJ6aEut0bXItjFDofr49mGptpirRNpn/8SihF9kAFaxTWDf8YX3uIYFNzgM+iOwLPw6eX3fnSpdSK+PRpgjUk3owHe+ZCTD44jpFrvmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BiJoUKNL; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-3306b83ebdaso4757161a91.3
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 08:05:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760454330; x=1761059130; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L/G/Lg7srDy0beJ935wpO9N4JjYVVtt8v3yHlGagArU=;
        b=BiJoUKNL3Xsl97qEd/TblDRuW0w20oeAiQAA1sj3O8VqYX2PzKLgxfUPEitY43dUW+
         EuJ1a90tQ6DS6BVQ5fgxsyY0e1Ts0VO6F3E3SPSLwBkS3BXfogGD9ynFf5tdYFe3KXg7
         R2ZzxzVFmt2mm5Tb5+jh8NQLTTruX9IhQjWcFBb0CvnAAdOsP8PToeSC1h3f9LlRgPxb
         JPIvLw3TjE9+aFH0SPn4ADyvw670n75zMEdHZaxZkDfmGaAilE79UPa9LLerZ4unfgVK
         +bLhB/3v9U3hG0n8DCq5VBsGGkf30o2X+BXRxn20QGhGML881FDTqjM8phuQtogLZHJR
         Cv/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760454330; x=1761059130;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L/G/Lg7srDy0beJ935wpO9N4JjYVVtt8v3yHlGagArU=;
        b=dShZDWIGhOr3ja1htYIJ1XwXEjxsIWTtaszb4whMXq+w/l920kAMNV3vTqS/dEv5DI
         vszr0FR/ZUJX6GKCHdh541NVhk6KB/ugOKPW2uunswSQvTypsCE1mTFWzECrsuwOzYJB
         GGAyA+i+sDbwrUkiHvAh35DSIAYR1zUfV3GhSg7ETVsGtH+fWuCZiR1Z/WVwmQuLAe39
         1/U7oGwMl3ganmvYT6/85ER3GZlnLQ9joaLrmWzLv18o1dxKSJmGp2mZ1R6R5PKiBdeY
         J7doPi5JSBLHP9W1gwVUTqGej0DmaIGssAqiWIGQ1YgMkJyPdJzcKSaAGw8GHyzYuGiV
         rvYA==
X-Forwarded-Encrypted: i=1; AJvYcCXAfMRol4dKm3XU6r1F/X7grpR2VULy2MQL+ybfnS6IsAUoXvj+3z0OnF77+IJ0dhV1OWeDjwUxKD+2@vger.kernel.org
X-Gm-Message-State: AOJu0YyDsQBo2Uo1te3OQAsn2T3/zHFuWCKWfh4GCpaevfN/4L0LzBlb
	EG0qNVjG8/bBv4FhEx+jz0yjmbRoaHQpim0TQ0TW+plZtUNuLjVZOuV7
X-Gm-Gg: ASbGncvwQRoFJ7KlHwYBim8Qq7J8vPygvbs4fB6WkmGFXr+jZvBKFGPY2nCrYYgy3wQ
	ErDUg0XXmxQo38nRl6LTZpW0p97T6FlvgNASsU5rdFhzv70KpG8qm2/6xz6EadsTbz4vIOFRlEM
	sg+ZTpfFOvOgSwGxcRS+E34qrsDgJ4LPpiIcETy6anjGr7SMgck3QpMkdgWzrM8rPbaA2tGYcSr
	Jn6jgOP3sxZKu3pt4BD00YpYkdQW6CAyfxPSxuzSI+4bDrV3C0kuQ/TfZfG3NojlPN84sastsnM
	Wu/JLMj+SndqzT93fEUgMiAggXqaEONLkyAW9doQXbyQj7C1HzSJXRX9F0EraXvnTSlZ+gd2fIB
	oajuc4W9UUdFbMPsonYx7275AXY/ixpQGSAMv9wItpNU=
X-Google-Smtp-Source: AGHT+IH4HBeKhh0rs/WsBsl8Ozw9jy+22oWE6s7x8YS6IasXPfN4lyvr/JwIJU3w/u8b0njenNKsAA==
X-Received: by 2002:a17:90b:3884:b0:32e:3829:a71c with SMTP id 98e67ed59e1d1-33b5112974amr36908126a91.16.1760454329752;
        Tue, 14 Oct 2025 08:05:29 -0700 (PDT)
Received: from [127.0.1.1] ([59.188.211.98])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-33b61a1d3cfsm16258161a91.2.2025.10.14.08.05.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 08:05:29 -0700 (PDT)
From: Nick Chan <towinchenmi@gmail.com>
Date: Tue, 14 Oct 2025 23:02:53 +0800
Subject: [PATCH RESEND v8 20/21] arm64: dts: apple: t8012: Add CPU PMU
 nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251014-apple-cpmu-v8-20-3f94d4a2a285@gmail.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=893; i=towinchenmi@gmail.com;
 h=from:subject:message-id; bh=aC00DD3jiZSVPA6I5+G806JpCyFv8tDWkvwqkbp+yEU=;
 b=owEBbQKS/ZANAwAKAQHKCLemxQgkAcsmYgBo7mZvaGEqO+ZN55ucW9OJJdfiSgXdY2n6ZdLkV
 GGDjJh23h6JAjMEAAEKAB0WIQRLUnh4XJes95w8aIMBygi3psUIJAUCaO5mbwAKCRABygi3psUI
 JBpoD/0YSyScg6oLOOGpChZtwSJeca8rNagdikOaYnLGKmjW3R7hJi5e3gdGkunPGdPyfk7SVPI
 EmVSWxvpMzLwYgd8uVw0j4IFIBIl2Toxd901AgnsGUO/gBoILkvz+lzF/Px2HuO8n9scQMiS5pM
 7vdWYHXt/s3f2DLx482Ja0H8BdHULUw59x87M8nzGlStRpqp/cFGmeRFwSQMSADPgaz2gkYuQJH
 f2bA+gLhHnz2qJ+uYMiYQBOj9iK0oa42bUdXwSiqV/DXiFiaO61DreTME4PJaP384XepWCg7jQu
 9pUmhh4lbnuqhSqNDtCUupSCaYWNm9EvBk1VrLf7Lfb4ZiKxIfMjjytjLDxchio8brg9Spb/IPb
 H30YLe13hM8Ofg2GcaTSowwY0npE6vr5QSxixPbDu10uaAhaK2z4fo3/V/qrVuAQbSQafE7KgL2
 amLqImtDuMDbBOMzDfY65vwwZTAqqCKT+imkfjt6HPMA9DbfihgoZJNGZleeFmYVWpu0mI4S8ld
 wLP6m4BGRUK6alHAGcHXfs5sROr8f/F7V8pcBOMHvth9aKZkWxNRjYJpI6k88eUEb4GnCkAGKns
 gEbC0XPjHQz/9w4kEILzGbXYID6au8ewy4bc/mBEUv+QmnwudYoopjOUAqKhNKA/NMNfoMkYK1Z
 x/RqjAo4T1ySY6g==
X-Developer-Key: i=towinchenmi@gmail.com; a=openpgp;
 fpr=4B5278785C97ACF79C3C688301CA08B7A6C50824

Add CPU PMU nodes for Apple T2 SoC.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 arch/arm64/boot/dts/apple/t8012.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/t8012.dtsi b/arch/arm64/boot/dts/apple/t8012.dtsi
index a259e5735d938cfa5b29cee6c754c7a3c0aaae08..fc87ab818d975974dd811cedde27292ec79f2c8b 100644
--- a/arch/arm64/boot/dts/apple/t8012.dtsi
+++ b/arch/arm64/boot/dts/apple/t8012.dtsi
@@ -289,6 +289,14 @@ timer {
 		interrupts = <AIC_FIQ AIC_TMR_GUEST_PHYS IRQ_TYPE_LEVEL_HIGH>,
 			     <AIC_FIQ AIC_TMR_GUEST_VIRT IRQ_TYPE_LEVEL_HIGH>;
 	};
+
+	pmu {
+		compatible = "apple,fusion-pmu";
+		interrupt-parent = <&aic>;
+		interrupts = <AIC_IRQ 86 IRQ_TYPE_LEVEL_HIGH>,
+			     <AIC_IRQ 89 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0 &cpu1>;
+	};
 };
 
 #include "t8012-pmgr.dtsi"

-- 
2.51.0


