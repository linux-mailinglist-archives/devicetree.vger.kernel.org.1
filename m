Return-Path: <devicetree+bounces-196388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B38E6B05364
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 09:36:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BDC067B230D
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 07:31:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC63A2D4B57;
	Tue, 15 Jul 2025 07:29:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="mrOZAhN/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E19712C3262
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752564595; cv=none; b=UvZUFo2eOFujcDOAKWnlCzc4MEM2s0CiCwsJUErNsYNK3ZjufYWTiqQS5pqoLU5eZmdMcgNA3BMRUby3+YyCwd8O4P5RRYMZ/Q3ZZ8lS4Oz8P/q4QLOrmbZnC5FRuzmdlWS30kEuyzu/18mlshqygYT2BrbgGWOr4iz1UkYHqZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752564595; c=relaxed/simple;
	bh=wYiuInhT/0IBi5aTMYTxCqi+FJtCIlWWKNx/cq1PoSw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EGu4RkTUY1A9j98hst4RttGbtr4KF94Ikt30TXH4vacXGQbsYkolp9+KoZQI1NNgAVd+Fs0o9z1bxEmdN/hHdDRyqAcs7WqX0xZogMogMLWp2NmRR3EwfoFjd4BVQiJvQpKekMhz5vh9yv0RkgcyhOwLQPRURV0NMcFz5uIroSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=mrOZAhN/; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4560cdf235cso14176145e9.1
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 00:29:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752564592; x=1753169392; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=igRKmJztcKVpdUX+y9lchuje3E9fuLqSjyB5RDorqw4=;
        b=mrOZAhN/JBf97h8GH/wpRTOpBmTYvs9W8SDdHwk+LdOXwR7YbAE0AKeYq94bC2kdPo
         e17A5pIf460THXSJOtar3tioKrk5alP/CzNGBcBSW3mERg0ySRFPhm4ii0tO0YqLXfiU
         /s9j8/BpQL9I+3HO6gjZ072TLl92gPvkApl/Joqnedb3qlDJ6hATet9tkdsWyvh91TF0
         fwgKkfwnX7TeYxs1RLRs3cn96i8LAYkJGp+5tBe6T8MmcX1aaXjIRHQkX8otZ979ciQw
         2+IKPq235+d/hQbt6kG+kBSE96LWxFTvAlwB957vziyYfIlgKTJU0Mg11TJy8ccF77iZ
         Li7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752564592; x=1753169392;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=igRKmJztcKVpdUX+y9lchuje3E9fuLqSjyB5RDorqw4=;
        b=PvwVL0hR/BedVtsxBa6Juli4o9ae2Ap83uXRtIIM1OY4bVhdUxqSYesLm1nJFAlz4k
         VTOEtVmSXrtkEzbhI78sb8f9Aw8uXEhpuaTL01a3eAcrHhTtEn9h8a643qXC/VrqySGi
         tbyNBehCkWMkrt4n1JGEJUbqwp0l1Ig5T8gELWpONa9x2nswWPgY+DZwUG2drw3IDIuf
         RzONyffuve3ET1tGdLYrlKEWBhic9pjf5TK22JBR88lEuGB65gbEWtk7EuIylGNcC+SL
         BrdM6Qj0umoW3SZyV6Y+prWV1ut0r0ROq5ydrIwNQMrMAHlDdZKGEDe+a0TMvVJkqTQn
         qG+A==
X-Forwarded-Encrypted: i=1; AJvYcCW82BhjslDHV6ciM8YwbuUAR46YvPC1OreF3oaoLNUIKvBtyU4Uhoy833qp0l54SScs2EYW5UXSS7Nf@vger.kernel.org
X-Gm-Message-State: AOJu0Ywkt3aBS/gbnQJ+xncPZMGjbeFj7ZoF5X8MyEKNiamJAKyqvG2t
	oRj7QGUbM8yxWAopo7NzE47UsXTj3JfAOGTopaZFbobEnUGXVIf2eO4j4poNiK2Mjvg=
X-Gm-Gg: ASbGnctW6JrRpcuDQyh88i3uKUet9XLYgmbpiz+D5Ny6U5pguaVOoFd1jjIFC8f278f
	wwoVbuRw4698xaSvswbwRG3Pfhknoi6PTCJUyj0FrR8co8eAjU/V2zROxvGzX2Dd3v5/RRi9xE6
	QPf/itBN2gFYHB8ssixE+ehRRpTMZ/NO0IuYXsGrI9N+4akX/ykQtfZU5dJWAeVYinbyaahuO1g
	4uIZswiBxGLS4/0e1CJbE2cbNy8wRA3W0O5BjzmKh3b3QRc2dRrNcdKk7ATji48T629TyvUlr4S
	tzIrXLD8OICRQXUj6d6WV8htNXdrN6ICISxO8ZeSln8H4W/1cLG7Njt9GAcQZk050dkyWcrKtfV
	RElwvbN5VLZ57pCI0Ya4LOURC6WdRjNI/JmyQ7bQFG1MGvoMBHCw1Rs03
X-Google-Smtp-Source: AGHT+IEOswgcSDktjdBdtB5rnegG/4cAp7K55K7A8UnA371xrsFvPIVkAf0I9oWpxgphOBT3WowzKg==
X-Received: by 2002:a05:600c:8714:b0:456:12ad:ec30 with SMTP id 5b1f17b1804b1-45612adef9amr76669595e9.13.1752564592119;
        Tue, 15 Jul 2025 00:29:52 -0700 (PDT)
Received: from otso.local (212095005088.public.telering.at. [212.95.5.88])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-455f8fc5a01sm106703395e9.32.2025.07.15.00.29.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jul 2025 00:29:51 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Tue, 15 Jul 2025 09:29:36 +0200
Subject: [PATCH v3 3/4] phy: qcom: phy-qcom-snps-eusb2: Add missing write
 from init sequence
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250715-sm7635-eusb-phy-v3-3-6c3224085eb6@fairphone.com>
References: <20250715-sm7635-eusb-phy-v3-0-6c3224085eb6@fairphone.com>
In-Reply-To: <20250715-sm7635-eusb-phy-v3-0-6c3224085eb6@fairphone.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Luca Weiss <luca.weiss@fairphone.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752564584; l=1183;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=wYiuInhT/0IBi5aTMYTxCqi+FJtCIlWWKNx/cq1PoSw=;
 b=Yd5Rujjbob3CnCPjRrUIgB1geUfHyw5dfBFoS8gbMx739dw0yhhLnWpk15eAQh/7MCWe03jQN
 M+taRvi0PcPCziUhIAqZCZ+WtyBcBNQO8ZKR4WMbJL8aW+96LRZGqNk
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

As per a commit from Qualcomm's downstream 6.1 kernel[0], the init
sequence is missing setting the CMN_CTRL_OVERRIDE_EN bit back to 0 at
the end, as per the 'latest' HPG revision (as of November 2023).

[0] https://git.codelinaro.org/clo/la/kernel/qcom/-/commit/b77774a89e3fda3246e09dd39e16e2ab43cd1329

Fixes: 80090810f5d3 ("phy: qcom: Add QCOM SNPS eUSB2 driver")
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/phy/phy-snps-eusb2.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
index b73a1d7e57b32cfdfbe314ab938ec54746ed53be..e232b8b4d29100b8fee9e913e2124788af09f2aa 100644
--- a/drivers/phy/phy-snps-eusb2.c
+++ b/drivers/phy/phy-snps-eusb2.c
@@ -437,6 +437,9 @@ static int qcom_snps_eusb2_hsphy_init(struct phy *p)
 	snps_eusb2_hsphy_write_mask(phy->base, QCOM_USB_PHY_HS_PHY_CTRL2,
 				    USB2_SUSPEND_N_SEL, 0);
 
+	snps_eusb2_hsphy_write_mask(phy->base, QCOM_USB_PHY_CFG0,
+				    CMN_CTRL_OVERRIDE_EN, 0);
+
 	return 0;
 }
 

-- 
2.50.1


