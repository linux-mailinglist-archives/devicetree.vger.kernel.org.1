Return-Path: <devicetree+bounces-159954-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B01A6D1DA
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 23:41:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3FCB7188F7F3
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 22:41:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D5861EFFBE;
	Sun, 23 Mar 2025 22:39:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dPpuqkEj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F3EF1EBA14
	for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 22:39:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742769584; cv=none; b=a0FZ4VVP7eO2z7ro70j/0iqJCGHATqrEzBL3mslCpMbyTivhevwAmNtm26rx0pI4C1v7mJQOXn7rXJT8F0D1t+7+ZoKWvTBVER3whdVzkUsR4pmNim/5gALhROrdFsqm7k8kQJfdNu4xgP3kssXdpVX7+zR1T7LAcbk0lIHedSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742769584; c=relaxed/simple;
	bh=ANmM5x/He+PE8PRBy0626kbsZRP5OO6JjTlgz9DtHdE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Sr+xoNADIU/o066rQGEHHVdDo30j+Cnn5Yh8ECZet+bNFv8CmalY4TgEDjita1/t7nyXY9rO9D9iKVVSDTKX8eRVllFDeY/RroBAX0d0Oaw/w44h3PMlvgptqd9b8q5aiTpbU43fShlY7N7DXU75nNT2Pp16K1r7iyCxQr3zals=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dPpuqkEj; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-abbb12bea54so434349366b.0
        for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 15:39:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742769577; x=1743374377; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DaAxKK1RdiX9Q5Rykt2k9FAZMFKWbpXqOP1fRVyJN0c=;
        b=dPpuqkEjp6AjZwnV94pKzTW+mqVLGpOch6NK0AK+r1n/E6VLnypm+gFsnPmJ3Qle1P
         rd4CX9OKK8BXaIzsFKYltvDnsT365lCGQkfcRGjv0H6Q13aVB/M2MchKrOOE8D1fUaBI
         PLWDXayWGudf1RZitnKWKNg2mMUqp8Tg+te8ZkfJ75/L6F2VAukjW61vXgdhIBlteLa0
         UrNXkktpa5jWqlf7Rt5Fzr5lmjQj/1WLB6ZXOn973Y1HiDNgmuSxmYQtQkr2xTAHx1eH
         BUObqCLjhMZRkILYVcVY9Pf8cWLcVpy8YuNkUSYbjllxwLG4LaoZzhbWcAcB80MefG7P
         DxqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742769577; x=1743374377;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DaAxKK1RdiX9Q5Rykt2k9FAZMFKWbpXqOP1fRVyJN0c=;
        b=X90m7dADZhjuoVfVHuEkXfbkvtNxz00e/HQVdMDER3dDiAieKA+1bZ9PoYW6URsg7t
         Zks13sBGLtxGlpnk9FoGzb7P6Mv5S1w6xh/7K5HrBQawqsnyKzd8cHSPM6MM713NYEYt
         sBKOeo68sVOSCq+eFkB/KaLVYzeENXWoDYH0qaqGY7lYefHKEKd5dtpMyKw6qK0j8czd
         U0aJ/9ZOxlQ5ghzrgh+aqxEKdzcdvvFBYjo4pGf9LEQDMRZu6Z8juO/931/rGUQB1cva
         bzZhTdiYRZL17EdTj6lSPU8ZhVcX2J3JpYqBz78d0CiBVtMgcXk2tZRKINAFjfvJZUzF
         GeIA==
X-Forwarded-Encrypted: i=1; AJvYcCURMdoss+pMYUrZ4XOnTaU65Wkj7zVeWlE5WJrxAGIdNeMQCLTXEgPjYO2VjDFOO8tENDDeo+ZypN79@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3C8UGMC7y4yc8AWeg+9KZZxtpSYoNsgxc2q4VVPCHnLuHUdHh
	ECF8SPiGYFkvNUyfjTeV1BiJYd9vdPozx2epsQAbldLyUS5aOcFIiz2475rSV+w=
X-Gm-Gg: ASbGncsmp3Ne9nF9mOSuyoFJAEHlbZsV+PZylbG9krc64HYcFdJgL/Fh8qObZGS5Z9/
	+BKrgRDJzJcd/PuE8qxyxSBJfBZ7UuAcg2h94PULd3xX77JQ6zLIZXyJb3CXe5JEIfKyWb7LY2q
	qicx7GrvVG/e9c9BLb2gF7laof2nSKWUJ4/Cp5JcXC+3wEzJV88YPTEBQanAwwM4+fhfOVl+MLQ
	JUGNsYPvM9/fFsPEAv8xZ9acNGuW0yIl1K83Y+dAz7jzjt+Q7Ge3Mw3EeuYiWEKV0fiOXyZuLKf
	NxZnbwbio7PO8XfCLIsQMEhdMXd8SrjaKgR1LtVwM7g09RFk39KHZPmjQ4hgr+4DXkh4EbBGeOA
	+0iyXQMVrDtv0VjUkiT6YDrwbpks0
X-Google-Smtp-Source: AGHT+IEHAfiBfUB/nsPtj6YObLClfT3lIBDTn7g2B2otGsQqhwkiW+Sr35dDHIHATiseMaWDI7emPQ==
X-Received: by 2002:a17:906:d7cb:b0:ac4:5fd:6e29 with SMTP id a640c23a62f3a-ac405fd6eaamr641943466b.26.1742769577350;
        Sun, 23 Mar 2025 15:39:37 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3ef86e44dsm559686666b.31.2025.03.23.15.39.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Mar 2025 15:39:36 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Sun, 23 Mar 2025 22:39:39 +0000
Subject: [PATCH 23/34] mfd: sec: use sizeof(*var), not sizeof(struct
 type_of_var)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250323-s2mpg10-v1-23-d08943702707@linaro.org>
References: <20250323-s2mpg10-v1-0-d08943702707@linaro.org>
In-Reply-To: <20250323-s2mpg10-v1-0-d08943702707@linaro.org>
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

Using sizeof(*var) is generally preferred over using the size of its
open-coded type when allocating memory.

This helps avoiding bugs when the variable type changes but the memory
allocation isn't updated, and it simplifies renaming of the struct if
ever necessary.

No functional change.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/mfd/sec-common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mfd/sec-common.c b/drivers/mfd/sec-common.c
index 90225b683fa083d4df7a20dfaa4f47084051e250..5ebc77d7edacbc1b7a3debb9069bb489109d57d7 100644
--- a/drivers/mfd/sec-common.c
+++ b/drivers/mfd/sec-common.c
@@ -139,7 +139,7 @@ int sec_pmic_probe(struct device *dev, int device_type, unsigned int irq,
 	struct sec_pmic_dev *sec_pmic;
 	int ret, num_sec_devs;
 
-	sec_pmic = devm_kzalloc(dev, sizeof(struct sec_pmic_dev), GFP_KERNEL);
+	sec_pmic = devm_kzalloc(dev, sizeof(*sec_pmic), GFP_KERNEL);
 	if (!sec_pmic)
 		return -ENOMEM;
 

-- 
2.49.0.395.g12beb8f557-goog


