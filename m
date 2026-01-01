Return-Path: <devicetree+bounces-250914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D224CECE79
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 10:06:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2FB6F3079745
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 09:04:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DF4C28D8D0;
	Thu,  1 Jan 2026 09:03:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DHRwIjFB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C2BD28C5D9
	for <devicetree@vger.kernel.org>; Thu,  1 Jan 2026 09:03:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767258212; cv=none; b=d1wZPxBk1nVvQcn0NPOSZ+0Z5B2rw6AZHMbFbnmJsHwbLW8SmG8CD8wJzu7wjYObpX1xTSKCPIXhRYo839RiaFbc7k5XGKUaR5A4JuBYmgcRvlMEaaIgXqvJn5fPPxJCiOWUM0WPig33ZyK/DQ4cVQ+PymUyQeWgGs22EaIH1Qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767258212; c=relaxed/simple;
	bh=3omd0YVrSktNDZ3RXrP0xc/+wVtkaIIz0927w9SxlCU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rWciKhGry4c53KJzZFupvOiEK3zpig1NUiiC5rFKU4rR7/UYaV5mHcApalsHgNij+3zDOhOQmjtKQW7mZvEKQgA96QEgwcYJOjZLpRwRVyAZjlMY4GtYkMg7mKjlRiH+f4l5I7/Jj0mBshzUuo/OO7gNK4kpcjl8CIvaWRb3uNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DHRwIjFB; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-7bb710d1d1dso16086485b3a.1
        for <devicetree@vger.kernel.org>; Thu, 01 Jan 2026 01:03:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767258210; x=1767863010; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VOOkO0Y8d9P2yswmxe69xUL0YHF0SsjJE29vdXLnWdM=;
        b=DHRwIjFBmmk2vn63c1O2osk9Q7F7XVXgSUXjcbnlNm5+QfHPt2KEMf+NxiuEHaOjxQ
         Jy/aXI7MKOAwN3m+Njnm8+KqFXbETrbGEEIFNdunaYc9hoEYaU6AtVOXM6mGrYbhOFWO
         C5FG0oMI6geEKY15eCHumjl2ldwMzukHLid+PTgB38I83zm4zQDK3QxExIlFtZI1BG29
         woR39UzmMfLyH34RWck5AEmHzlWKXwbNGPugYYxDMytP92OEdsZsqjM8W6GblANTO/hD
         9VrtoJRnA0ma5Dv16AOhrR8QUSJFMFhItH7u51t/Q6ewolyoDgXhgabL/UcHIduAxhm0
         WqXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767258210; x=1767863010;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VOOkO0Y8d9P2yswmxe69xUL0YHF0SsjJE29vdXLnWdM=;
        b=S2kg7uQ5Aks7/yLbV1FpnVtg9G/rwk1JOmIDZQTE4lLq3AMsIiqZI1WDROfoeZimaQ
         uuP0p3fODx3WG7hpWaz/lyEvOICS5VzK8B/FvNQgQh5/tGNLy8E1ihac11zIjbxSi5Cd
         JKi8azPefaE/z2TwmQnPqXlA+ptM2XqNFTpIiM0dRGy8Z3vKLdczTfcScIAhf9GeygEX
         uvci4REVEbNVLPbF7xBrddntIDu5GYHGHm6XqwwjaplF9PTXppwTiv3ujIg4IUQHr1GF
         /TNgxib9lpFrns+XDE/KkT/f4LJBhDJf464LP1q1N3RG5kIyZbRIZb1x/xBKGFvGzNwZ
         b1bQ==
X-Forwarded-Encrypted: i=1; AJvYcCV6nF+b2+SWBTSU07qOTKwdYfSxby42iaqfmji9PQ/mfr1P6f8i4XtMS+SSfJSrJR85cOwOVS7JOY4B@vger.kernel.org
X-Gm-Message-State: AOJu0YyR4jNPfWr0pNqgPfQBpBwd6t5d/0twF5CTAnpXug0uO4f01wVB
	4MXlKP+PDd1Y4xeUwIRSsZJgPSogIVVy+F42fqLlHTzjvCeeA84hz/0P
X-Gm-Gg: AY/fxX6fJ4Dovmb4LhwB4UBiy2RmO5m6poL9FsIRIxNMmCJRfCDgzBtyA95+eOzwmBW
	qmhpD45nSxKJxhqwXfMa75ndzP04YFWHNZZpSm4EBc8chamoJM/iJNbdZ8MMeXb7HEELbpxYPTv
	XVcZy7+ItnmS19ROOoun0NlUKvNs8NTXjvqXSvQnx5kasxcvlihZziReLFT/Hk5pawgUvsWzP51
	6XZk8wfeMbVfds4xsnovT9JZakwj0TIdhY7zJ+RBc3ETdxrlnonFZrAt+PEMAkOnitr45cXm71A
	1MInvII+HOpWRB7uQZAA5aZRbQsOZrWcT7JCZK30lWjAw/0800Bzl3py5AVoq/4751EPp0hM7gr
	iu8/8cDYGtD/U1806IpTRaO54ihlOruZfWqiCOTejTAUpzv5D3VHrYEQJr6Oa9L/7HT8UX9u6QG
	npXog+uHSeHmnjEFy03XE4+9g=
X-Google-Smtp-Source: AGHT+IFJBtSUfejTWgpNgQSoCDlIJLnAMjrQe0TebRz/JH0wlhP4fBgImgpnBrH6nBpvWNt011OSOg==
X-Received: by 2002:a05:6a00:ab0d:b0:7e8:450c:6195 with SMTP id d2e1a72fcca58-7ff66479a6bmr31930739b3a.44.1767258209581;
        Thu, 01 Jan 2026 01:03:29 -0800 (PST)
Received: from [127.0.1.1] ([59.188.211.98])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-7ff7dfac29bsm37182957b3a.39.2026.01.01.01.03.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jan 2026 01:03:29 -0800 (PST)
From: Nick Chan <towinchenmi@gmail.com>
Date: Thu, 01 Jan 2026 17:01:52 +0800
Subject: [PATCH v10 16/21] arm64: dts: apple: s800-0-3: Add CPU PMU nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260101-apple-cpmu-v10-16-48812c529ffc@gmail.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=912; i=towinchenmi@gmail.com;
 h=from:subject:message-id; bh=3omd0YVrSktNDZ3RXrP0xc/+wVtkaIIz0927w9SxlCU=;
 b=owEBbQKS/ZANAwAKAQHKCLemxQgkAcsmYgBpVjgo4L8d5gWvdBUOBCVVb6ebQ4I+hDv/E1SUb
 kvSMq5z9Z+JAjMEAAEKAB0WIQRLUnh4XJes95w8aIMBygi3psUIJAUCaVY4KAAKCRABygi3psUI
 JOOpD/9oAMq0s34OmmAP01oVZU/WNedqAtueSymjOF5mohXEQuodSPtHLp4na/8PBkTnsdMaBk5
 qYq22cNUmGaW0tNNKzXYdJ5CHX3frqpUae8fhwpg2obo9CbMNAlxz0PbtaPxsJP/ZYmdb5EZnEV
 etlvvIBY9R6eWxQGZTZrH3TPf5gG724fi4G2AhurxVHs9c+O7M0NC51r7ElhxVuqEosrOERL8Gc
 s9DW7iZplLGl6hwLnS9hc/rJnoHP74o+IzBGy+1lQYWh99+8ReDPnFqJChy6+HkE7XyIVi6Wupv
 J7qy43MqWnYX0ZIPBrC29fru1OVTw3N00lcG8Zd72IkY5Rbjqtv9HFrF199MFT5UpK69u+8Ztul
 qghCVlwmGf5eH6uoI4A1O+K0u4RGx402evKOyJo8Ufdog+1cHk5ynjqX1GlQ7hxccCpmngmh4nv
 srzdvYX1pJ+LENySSHC506nt65L6cmeXIISvgVCBIzqpuz3boXCFsJrA3dVJb+uar1KQtimpf9F
 5HbO1vGr2G0kZFSjSchXVQkhoSgRG1TDLYRvcpMo44X0qpJ6peXtVlVaHJtNAP5I3Jq0OPuBPGf
 sKm8N0K3G1DhDcQHIX0DtjumbJPoo3NCybrEF25MHdxgw+f/vjL49Bp8/DesqujNDl882sNYrC/
 yo4itq/blz0kR1A==
X-Developer-Key: i=towinchenmi@gmail.com; a=openpgp;
 fpr=4B5278785C97ACF79C3C688301CA08B7A6C50824

Add CPU PMU nodes for Apple A9 SoC.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 arch/arm64/boot/dts/apple/s800-0-3.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/s800-0-3.dtsi b/arch/arm64/boot/dts/apple/s800-0-3.dtsi
index bb38662b7d2e0b70e18b6870b706789b1cb242af..aa372aefc995334b1489953c16251c8ff9b94d98 100644
--- a/arch/arm64/boot/dts/apple/s800-0-3.dtsi
+++ b/arch/arm64/boot/dts/apple/s800-0-3.dtsi
@@ -237,6 +237,14 @@ timer {
 		interrupts = <AIC_FIQ AIC_TMR_GUEST_PHYS IRQ_TYPE_LEVEL_HIGH>,
 			     <AIC_FIQ AIC_TMR_GUEST_VIRT IRQ_TYPE_LEVEL_HIGH>;
 	};
+
+	pmu {
+		compatible = "apple,twister-pmu";
+		interrupt-parent = <&aic>;
+		interrupts = <AIC_IRQ 76 IRQ_TYPE_LEVEL_HIGH>,
+			     <AIC_IRQ 79 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0 &cpu1>;
+	};
 };
 
 #include "s800-0-3-pmgr.dtsi"

-- 
2.52.0


