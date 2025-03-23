Return-Path: <devicetree+bounces-159951-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A71D7A6D1C2
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 23:41:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 331BD16F3D3
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 22:41:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 737DC1EEA38;
	Sun, 23 Mar 2025 22:39:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J9mCHJK0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AE241E8336
	for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 22:39:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742769583; cv=none; b=mULhUtwJWll4It8TQqlweSF0rOI9XU2nd+xPo3CPvWJHkzkLIqwki/Sg7FPgkORYFbPF2zFTcBVa+2FILOs5IKEcq/izrdEx8MDIAu4hzkax6yIZRv/sryqBm6Hizk1M1Bd7ST3wqXMREuqgRkG7P+51+UxA9caznhcM65MovlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742769583; c=relaxed/simple;
	bh=oiNyTv54VHVM6a4w1mLQcnbnflOdyihzpGBxsT78Cis=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ae1+2FOTNsX39ABQQtpqI3JLXFF909+4MIn9EDBtF2KPfHWal7fF7WhWMvQSxpV8pvQ+00lFPSGo9QxO7YG8QCfHi3Hhu1Ja6Bv3JD+qqTAO66HsjdNYd8f7+OYAGp1sAb050nlT0itVXsZTdES5ikUtIPPDuvUOA8htym6UMag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=J9mCHJK0; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-ac2963dc379so636664466b.2
        for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 15:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742769575; x=1743374375; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k8z5p12enI9RZw66rCmwLiYXfJvqOoZz3UAG+lMt/bw=;
        b=J9mCHJK0F3b8WF6ZmLLg7q5hyFgPf6zbS7q16BOzZDU+pAwZ3GlhbJLSOWlnZ6Ebmg
         +uqjhSOaWBq5ivQCShINdIRk20HL+oZ1+qyRFMLE6ONHP2Q/qzeHrF61SdcI5z2wnwIG
         b193A0osJPN+//5l5D/uMDu+vpM2x8N/46xFyw9cjI/DJZncsPzWIZurGwQt9Ba4m71a
         C9kCAkW7fCWrG6jr0sPO3LjK8rzJCn5UD5sS2/qw4/d6qXWA/Vpm8UxX/27uxj5XguyX
         mCZDrUKbE3gl1ihzh7P3bmj2GCM0eUevK1zbErEo3EGIOt3NKoO8Ck7mMGHV49KbCPxU
         5hnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742769575; x=1743374375;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k8z5p12enI9RZw66rCmwLiYXfJvqOoZz3UAG+lMt/bw=;
        b=To2aRCUseKMgzVQro0WC/u/i0KuzGapXbXVNTwFbK4zStsyMToHEZQ8yJAmubMN3Ze
         QT6fPKo7w6eLkecC7Z0+gPC58aTrxGzFUsWT8vXfeKQF+thYJCd5PnhyKsP/FdKmoUFj
         2Vn8lFIcY2bCW5crB7PE4ZuZ2vjemCp/Fofmq+E21X+8s3+bOUtH9SI7dqdG6b4fiZ5E
         WHQ4sbtwCSVSkBskWEAjeIQfRbUV5nvUYDtbKB+UirAA3wkTOGWK9zKR84YCb0CC4GNA
         a90cCWscfIjF/1q30YPAVOiAzI/sEtwiULjcbmNNTzpEmXgYdh0zPS0Dcgoe9STm5OTT
         sBww==
X-Forwarded-Encrypted: i=1; AJvYcCWuwGUkBSV0wdptGlCNhodcobREQS3OyO/WDbp7v0Y0mXzWDQ0Z7PONiaYWdRtvNzH9GcErs9rhTnrO@vger.kernel.org
X-Gm-Message-State: AOJu0YxFK7FqL2xtXnp4x9VJwX7Lj3HopA4mJDG4pOmfX0Tv7HrGPKnK
	iWTtCgEGyVzyFS42u4X+5/y+MxmLYKNlHsF8kbN9Mojbld5kXv/9uj+V0WF9QIA=
X-Gm-Gg: ASbGncsk8/FRZ+iH6v77R/ktxa+wEUMKH4O22GMcl3Nx9oNx/Q7C7+R1FT4Df5xeL40
	Yc2t9AP3In6Bfn3mVyzJ/Yn/86y6NxXZHuLvQSpFoKRJq+qwfNsSlUhJcgBwphjBHIxEFwpl3/z
	m/0y40WTa/BpEOPQSOoqLg6mOn922rWWHTCtMH6aeSKrXvsHwl1quowNGY6aYbkDv+AfuzGWSjp
	IzVwx4gHkkcfda9PrItH8u6xrf09NVOaITanWGsJxDgsWG+FQ5n5jXtPsgdkAkMi5P5XEKMmAUI
	Le/yGjN6kXIKBycn8KVyLmWzvOXArE7WRKJu2evV1H8kayEqaAkuQzbCjQL4uZiQUe9yG3NgyVt
	h9a7U4Kt4KUifeyPRWqqKIpfMIvXc
X-Google-Smtp-Source: AGHT+IGe5qmoAcXMWbaWHDRmab3UauFteJoVt09a7sGbTlNJP0cYBqQFxBHjhU8bkTv1Ztr/PWxw0A==
X-Received: by 2002:a17:907:bac2:b0:ac2:e059:dc03 with SMTP id a640c23a62f3a-ac3f26aee3dmr1087374966b.38.1742769574917;
        Sun, 23 Mar 2025 15:39:34 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3ef86e44dsm559686666b.31.2025.03.23.15.39.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Mar 2025 15:39:34 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Sun, 23 Mar 2025 22:39:35 +0000
Subject: [PATCH 19/34] mfd: sec: don't ignore errors from sec_irq_init()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250323-s2mpg10-v1-19-d08943702707@linaro.org>
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

sec_irq_init() can fail, we shouldn't continue and ignore the error in
that case, but actually error out.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/mfd/sec-common.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/mfd/sec-common.c b/drivers/mfd/sec-common.c
index 5e084e2c389ea6d509393be93f7e2d39a795a60c..bec8f93a03f7fd794beade563d73610534cb96b2 100644
--- a/drivers/mfd/sec-common.c
+++ b/drivers/mfd/sec-common.c
@@ -165,7 +165,9 @@ int sec_pmic_probe(struct device *dev, unsigned long device_type,
 		pdata->disable_wrstbi = probedata->disable_wrstbi;
 	}
 
-	sec_irq_init(sec_pmic);
+	ret = sec_irq_init(sec_pmic);
+	if (ret)
+		return ret;
 
 	pm_runtime_set_active(sec_pmic->dev);
 

-- 
2.49.0.395.g12beb8f557-goog


