Return-Path: <devicetree+bounces-162857-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C94CA79F3C
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 11:02:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3CD417A6107
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 09:01:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4977324EF6C;
	Thu,  3 Apr 2025 08:59:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sKCadj3y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5C524CEF9
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 08:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743670769; cv=none; b=trR7IvYJFrnJkNuqjdAa/pibsCpP79miOU9n/62gF4X1XXo1lr8+eOts1K999JRH4XGrfGYVTb5sGNfO1LnFl9LR94PLf/rKmugVCPRwJQLOFFB+FcpAfkC/cW7KrYCPRvcGdK7Xtf2j7paw3YaYTDrZPgI0rh2XqpqHFMoHY+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743670769; c=relaxed/simple;
	bh=+fAAJ/+/3MbgFo3bOsjQzn5S6tmp2xnmlCT4juP9rJM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gZmh3Eu/4G4YSo7yTstGDYgJ825xB5klAcZBRAwZ8auokqA+sz/g1sjd0d4UPdov01yz9nTueHRcQP+Twif3b7wvRT/xucxd6Ylm9Mb/7FCpPA12V0tVF0O0zQex5RbaVBkj61QeM6XxXq1nxxCxkpdLAf21uKvDs42amSDJdfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sKCadj3y; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5e5deb6482cso3172054a12.1
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 01:59:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743670759; x=1744275559; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IvD3NPE37fI+ZqUrH7EmoQBagetQaG70If7tawsO/t4=;
        b=sKCadj3yJo3JCJcQbG8ljCh98ao0jmPNWJjFoo/83PbHsIxh1WRJrXCyEFNnjHnnaE
         dUnPsC5DCafvc49EySVtc6597ytJncgH42PRCo04bQmbkSfbIK8oOz1gxmGqWtISnEP9
         Y81Do0JzErnbwsdNRiAub5aQmyDszrvT6IHnEJrMu+1HIThiYzIVbUWrNYO/s0sU7+qz
         K+J2UMlFbL96hqJRIuonbrQU/oO/dJBnij6zsYA7161bz6kXiOSV0cWg/KcDTunezmP2
         ZrjZDHF2uyeROZ/8ugTOmcsHo+sKLhOhcfPy82/jB/eKIoaIUD0ra9VN+O58Y+igJE2w
         fdYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743670759; x=1744275559;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IvD3NPE37fI+ZqUrH7EmoQBagetQaG70If7tawsO/t4=;
        b=I+QPeLZxe5qZKQilBFXHpb6+Zh2r37co9ZnxYpGiXWhee3j8G2HSwzRzlj00KW74Gb
         ZogyWSLP0N2sLV9rSesEkyViLaFVHBGMb2TAVYwhCN/Z7eBv91zk4EcaI2utcJ2yJ347
         aKkqRDFSYT83dIIKd8r/7oxysNYj0qx95rwSRSIp8wOZlHfAuf+oxNQBbDNjkoM4YBqV
         bnK7zf0sCADMC2kITv0ziKlq+KZ0UHII+6LXEA9ExwQnS78eNNxeIDq42tF+TiQMZqgd
         /fRHhMw9tbv3rmYtA0AqHHltBB68abl22z4FexESQvZgrhzS7eY8bSHZM/R0wtQMsBpf
         SrJg==
X-Forwarded-Encrypted: i=1; AJvYcCUXzBg8QSDqL0Owjx0Fy48iWsE38r5mK9M872TLToVLjKA3zvK19Y37RT9MbC705h0I+YDD5ox9jXHV@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4spB3KLefrKvZSues/KX+ZA/Q7IUJgZXN+6hQwx4gNJsmYYAn
	KgIuvA3u6+gukDtVp6rTsafeEUiqptvziAlAt1W76uC2zvJ/SE0haprOlWZxAS4=
X-Gm-Gg: ASbGncvPeEzzl/nQor3lOpYTv29ApenP4gicpMCqZhS6RAKccPzz0CTTjcjXmtNghqE
	ZqBijNHgYeKl7TlKlLv2SwstQ1UNw8bQRaX5W46lfpfxqA0RUh3jbKTH/x4oIAoTwH/8/45jTeW
	VmpzJIeA/xm4GDB2mVHxFq2kX3Lf7P3byRXG833OMa5Ql43mCu764kqbg1+c0RFK/Str4g01xlj
	WPsoua4O3EQkDMIjUN48nCEy3DBaaaMLbDU9iM/75li95Sqf7U/F51ofBaWBQ7Dc8jfD5FREsr7
	TFARYT83AQm8dsPZXZpzc3rrftalqpVy11DU32DwcBC7U+VpZodvQ5dSUKuUY5eUqTT1XB6ZgiJ
	xpP2Bjts8BsRsmhc1PoMpyGcISFbv7vVuEp0j+4Y=
X-Google-Smtp-Source: AGHT+IFW856PFsje+adb2s76FgPUdBl97yj4uiiEZ9rOztAG85/+V2CgHnNshHz2zvEqYifTEoo+Rw==
X-Received: by 2002:a05:6402:1d55:b0:5ed:5cf6:e168 with SMTP id 4fb4d7f45d1cf-5f084177cb9mr2170046a12.9.1743670759408;
        Thu, 03 Apr 2025 01:59:19 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f0880a535fsm637614a12.80.2025.04.03.01.59.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 01:59:19 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 03 Apr 2025 09:59:24 +0100
Subject: [PATCH v3 32/32] MAINTAINERS: add myself as reviewer for Samsung
 S2M MFD
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250403-s2mpg10-v3-32-b542b3505e68@linaro.org>
References: <20250403-s2mpg10-v3-0-b542b3505e68@linaro.org>
In-Reply-To: <20250403-s2mpg10-v3-0-b542b3505e68@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Russell King <linux@armlinux.org.uk>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

I'm working on a Samsung device which includes this MFD and would like
to be Cc'ed to further contributions and help on reviewing them. Add me
as reviewer.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index d4d577b54d798938b7a8ff0c2bdbd0b61f87650f..9f05af52b062d8cab0f8b48b2625432108604c3e 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -21397,6 +21397,7 @@ F:	drivers/platform/x86/samsung-laptop.c
 
 SAMSUNG MULTIFUNCTION PMIC DEVICE DRIVERS
 M:	Krzysztof Kozlowski <krzk@kernel.org>
+R:	André Draszik <andre.draszik@linaro.org>
 L:	linux-kernel@vger.kernel.org
 L:	linux-samsung-soc@vger.kernel.org
 S:	Maintained

-- 
2.49.0.472.ge94155a9ec-goog


