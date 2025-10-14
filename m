Return-Path: <devicetree+bounces-226633-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C99A8BDA3BA
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 17:09:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 17D881886F9C
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 15:08:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A564D302CDF;
	Tue, 14 Oct 2025 15:05:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JQxqfGaS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280B6302CCD
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 15:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760454325; cv=none; b=G17buRe+XzQZ+OO9zzPumypkopq0+TkT1METTw7K+M1b+91emfKcHXCqgeXJM5Vs0kYczuNKvuI1I8F6jqU83+V8Wpeqqa4byBOkPzjEoLR2nIRGpUGzcjMcDgtRxdPw9vJTyq6EWw7sH1FEpsIH8HVolRTp4wnX4/HXWzzSxWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760454325; c=relaxed/simple;
	bh=I5bmZCvx8lSOgqzXisEWeIL6b++oNn2j9gQ7uou5JZQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XYx+5RMFtG10cF9n9dmH0UrR1r/cdLauWdSwdcjLPrAjKRR85w5/AW3/mF6ISjFiAvayhSZkT2OJgtp3uIMfcZVizt09QGpepoGEIbk7onNgHAOTGF1d3pnHZeAgOxCGdSNK0rHrd/Qq+QmJpbSeY0kdmn4B4AQiHU3S3gAvbRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JQxqfGaS; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-b6093f8f71dso3384235a12.3
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 08:05:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760454323; x=1761059123; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c7UzRpURIuRgTvljraCf/vxpCIMLGtFavfo4dJ3/GB8=;
        b=JQxqfGaScJYm3mojr6oCmF8adxLQP70AM+ea5d5h6td4HjftWHiS9PXUa2K51BAWJo
         PuQ4gTBHBeTYwp46BtafoWk5miNkp/BkStHyqyF+qTuJBDF0KkLQY5PbuqplPUK/Bn5k
         lYFLRxNa6Fwqscab2Yv6E1MBWPWUg6bd0k9xU6m4qyC5fzZctQ4HtfpIjUobWmrRpo0C
         6O7ZZI7SrTP27UeHqR9aGKHcRNv75V9/jQ6bCc7IB4id7z6aPcKfIDVGP1N7ly7l9iaT
         P/Ph5w5M1JKMj6MFIH5YSpZK23BpIJa82J33Q91sBAn+1a1oQwO1/NG/fMyXpnCMpFJD
         wYYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760454323; x=1761059123;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c7UzRpURIuRgTvljraCf/vxpCIMLGtFavfo4dJ3/GB8=;
        b=OXCWO/hcYpCptIuc7mmtMt5VO4dC7OtNe6fcU8DvLXfWXXHAc+4v7i6gdzcQJ8/urZ
         UJ4d8RupHlpOnZYcmWegjNVqoJxdKsP7b3BnWV8vItFHlJf9eTK03Pr02RVaNwtqdqb1
         j5gthIYFIQngC8Aad3pzuuxpY7utos4FahMtmJqlSX1iUByleUL85+oJPR2TQaBvy07q
         hvD8mHwX0pEVHUIP4Kkpam0fdcy5eHEQ8GEVrGmHSBg224L5lK9gqDW/j42E5B3Lyotp
         bsZg116nkWsmx0Vcgjfo1KDt7tikpAZgOpMXomzOpQvVRFF6N3AJ6giVCvhX+cFaejMw
         UAKA==
X-Forwarded-Encrypted: i=1; AJvYcCUUrciyldJBDdNHcObjRrD36N4osGCkuFdJVCpiiODEO/F4vZNyqJqTZOn8MF0U+7dasURfzh89nr4N@vger.kernel.org
X-Gm-Message-State: AOJu0YwRYqaDb2wcWidhwTGdOq0QbCgZ0TiYnEUybAtxgcRlpmsy7UN5
	xhu5CT1oTBHJYP26a4//jlzQHn2ZRXueB0qddIWGeu58+QiuIZYFVk1T
X-Gm-Gg: ASbGncvV0kVKuzuMT4v45ITZvoYVwQNJvrIS2y5ttdMpfP0lJII+NsKOaobWImda6sw
	wpG1lGK5iDDJMJ2XbzEB/dBph9YgWW10wAGSrHivji4eYAIY2h8gfOJoLCn0PcrgG0ygapH4Iug
	sI+XXel7sNBZ6v71+bN+4VDC+ApTg78f/EanZMODDbhVthg4wm82lE1d9BuXe+ZnACm7IGGEAhV
	3o1LNJhcf+whChrejGcwsLBaXjKBe8sVOHxwCmtaQpkGAVOOcNFuSI5k1NNuY37fP9iRGs9ETih
	ZxfgJ6WVcV4xDuJilRA4sxzzy8cCYjNoo72J9Z1h2VuFSGwZckwDRxcdzeBy0zxDSr8MbkFnVVU
	iI/c8kOT3jf7533bD2Zjfw8nZvaMPqPdNjhOdMDYJpr4=
X-Google-Smtp-Source: AGHT+IHWoti0arhwAJ8/ehOp+A7jTPL4DfjepOYMl0fCMINaTjupjut/t4zvp2r+UEnm0n+I2R1stQ==
X-Received: by 2002:a17:903:2b0e:b0:254:70cb:5b36 with SMTP id d9443c01a7336-290273568d8mr282473335ad.8.1760454322930;
        Tue, 14 Oct 2025 08:05:22 -0700 (PDT)
Received: from [127.0.1.1] ([59.188.211.98])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-33b61a1d3cfsm16258161a91.2.2025.10.14.08.05.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 08:05:22 -0700 (PDT)
From: Nick Chan <towinchenmi@gmail.com>
Date: Tue, 14 Oct 2025 23:02:51 +0800
Subject: [PATCH RESEND v8 18/21] arm64: dts: apple: t8010: Add CPU PMU
 nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251014-apple-cpmu-v8-18-3f94d4a2a285@gmail.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=894; i=towinchenmi@gmail.com;
 h=from:subject:message-id; bh=I5bmZCvx8lSOgqzXisEWeIL6b++oNn2j9gQ7uou5JZQ=;
 b=owEBbQKS/ZANAwAKAQHKCLemxQgkAcsmYgBo7mZuYkjRFb4PXdnwb4fw8h24z1bFwhtr/DQZY
 FpwFq8WkAyJAjMEAAEKAB0WIQRLUnh4XJes95w8aIMBygi3psUIJAUCaO5mbgAKCRABygi3psUI
 JPvuD/9ymjV0qW8N2VaqTxRqTnf7Wso+LimS4Evbq267jx0oIEEuxIAxTGDbeQWAWyet9DAebNA
 tHZjixPKFbR2gP2QQkaVW2uG0jZ7xSumkITy8nVtog1K6USKN06PNnE2L3D9oAfhg/kFPhym874
 eY3cdNGD4yoZhDeH441f44UswbG6ioxOJFOJQvBtWvwMRr3M4pX+6jFutcsAy9hyd1bAG99Xfqq
 A94kTQmdAJ7IWGM2LsC8gKNAaQMTdlQ5pGI8mdVDLMpT10fqOTt7sUk9SvMF6cffSuf6t5yV2fw
 HAnndoskEI03SeHfRmAqLzonuDsa1I4NQxmRZMUq/DsGjoBMr6nHp9ChSC3ve0awXWQo+0oeobB
 6J0CpZ5KYPeluNH1qA3WdyRWLIp8nWZwFe3SvuSUWUpJhSrB2j+MoBxjPg8gbRnGgloqHbbe8RO
 8jjLSG3KQ9QBRt/dAkIxfkGB3VMtHSz1Tmx3ElsmxIKdLPIwmQTa2DlqERHfztZW8lEQPyZwz7I
 12zfqcYDWhn87u0lyqFVfUZ6kZcRUx/tTBSLp1fjXm5JRJ2KmTb7EhtwHmwQOP2lcnSMpq2opY7
 d2UZgRW4510C4wxfSWVNPuZfSVJxaWJM1UiqpE88/hPoMl+WY0g3i/R6/wBuCiOrq1vmlW4fqrj
 4j5IZLtJeyaobJA==
X-Developer-Key: i=towinchenmi@gmail.com; a=openpgp;
 fpr=4B5278785C97ACF79C3C688301CA08B7A6C50824

Add CPU PMU nodes for Apple A10 SoC.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 arch/arm64/boot/dts/apple/t8010.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/t8010.dtsi b/arch/arm64/boot/dts/apple/t8010.dtsi
index b961d4f65bc379da3b215ca76d5f68691df06f4d..d187fbf7e7a214cbbc1027034efd0724ef7f8b83 100644
--- a/arch/arm64/boot/dts/apple/t8010.dtsi
+++ b/arch/arm64/boot/dts/apple/t8010.dtsi
@@ -256,6 +256,14 @@ timer {
 		interrupts = <AIC_FIQ AIC_TMR_GUEST_PHYS IRQ_TYPE_LEVEL_HIGH>,
 			     <AIC_FIQ AIC_TMR_GUEST_VIRT IRQ_TYPE_LEVEL_HIGH>;
 	};
+
+	pmu {
+		compatible = "apple,fusion-pmu";
+		interrupt-parent = <&aic>;
+		interrupts = <AIC_IRQ 83 IRQ_TYPE_LEVEL_HIGH>,
+			     <AIC_IRQ 86 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0 &cpu1>;
+	};
 };
 
 #include "t8010-pmgr.dtsi"

-- 
2.51.0


