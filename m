Return-Path: <devicetree+bounces-194446-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C7498AFE3EB
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 11:19:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DFDBF5833C5
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 09:19:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B977128642A;
	Wed,  9 Jul 2025 09:18:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="kOugYCjH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6176F2857C1
	for <devicetree@vger.kernel.org>; Wed,  9 Jul 2025 09:18:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752052728; cv=none; b=LDKN0AC+qoDyNK33WdEnlQ9Ww95+GXnfAj4LTPvKCTz7ZYNU/zf80sgXD4mbsGjUZFe8XWn228r6tsIuUkTlYyNDvvGMd7lkfvgSbYpRHLKFWDjOq23ahXdE8lt9cwBy81X10JaP8aTcz29GqHpv3WZzKh2CXnykffdIqCD7i3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752052728; c=relaxed/simple;
	bh=ypwpLrRTvDMuCRzzHaQyRH1tZrFg5WTx+gHcQSKkU3w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jjG7p+AsgyAx7TrNMwzBzFj1K4HYtmew43EH09DGnjIVwPUKQ7eFMnCVkvNXwr8qtzgQgXyZLJrJzpG41yTO70mPT2sGERdrAiv08TJuvqyzwkp7NpJQgSvNrOWEG3KFxEhfgFjhzj3ylbEGLQuSzZh8npbRQVTN8AoGF+6l/No=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=kOugYCjH; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-60c9d8a16e5so9837522a12.0
        for <devicetree@vger.kernel.org>; Wed, 09 Jul 2025 02:18:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752052725; x=1752657525; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k19wXpNqnFMbk5R7eovbUjQ7UB0GYLr4+9IyBRmyPec=;
        b=kOugYCjHPsGx+ilJfEi2PN7DnIQyn4utaBS1iMlc6XqP3z9VR4x0LSMq2WelbJ5aHP
         5et4bNen8HjWu6jB3PkVJyAIFvSLXzQ/D1Yi1ggiDYoDckkoVp8ar4pGHpbURUyAvFNo
         R2JLJX7g1XxPqU0u1K/ay94qYd0tQPYOCcSF7mh6WhvklIpKOhtjpP+mP6hWQv5OgU3o
         gEloaS0VdDKeewyHBEESEBD2iw7SH007W5xtdXkZN9++fqy4pYxO8PBWrVdsQlbPLbCc
         f6NOmTTx9N7v0pxxwHk8qycHDTEbpaBH/o/wdfzLJPSyjqk4YEqv4nYbuB9zSl9MFI46
         673w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752052725; x=1752657525;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k19wXpNqnFMbk5R7eovbUjQ7UB0GYLr4+9IyBRmyPec=;
        b=EoB993sBy4bc7C1/qTh8cE0ItIYfzizL02ECI07W/8TIXwTR/bF1mrPTmuVmZl8Xzo
         xjuSSRpbcljnHEvNauwaCnBr8Jv/VMBmaa+A83RTsYHjc3cg6PCFf19+lYfKdylL1+VX
         H7/zyixIvdZGp3HD/H5XlT9JXieemilaqYJ0hQ6cXk+ef3Tk8AFHpozY/FDk9pj2+awi
         iklfD7f1D5S1yLfgImOR9tT+yqur41bsx8+iVksTMrWIjkUAwP6yhYAIuR4CHH4BWJsR
         hylaMI29sMzDg1HoEu5sGCwrr75sfj7eOiPgeLkoD8SlTjGpMxKBBM93MLR3gegkNZhx
         wYqw==
X-Forwarded-Encrypted: i=1; AJvYcCVfsKp/W8gFCmjcc+TUzVsKbetZpn6OWHvjyVykBWQad/B2qJPkFwaac/Rg1lvE9QeLtwkTyL+EjJq7@vger.kernel.org
X-Gm-Message-State: AOJu0YyHJl8OofPRy8zmJvCJjh66JwA2L6Ru4s6mbO5q5am+GhRROktL
	sAsG3NGmFf9tKFAXdVs0L4XnryDuOA+RRZNxuMx4kjeQ+rnCU5DsiiZWjympoJqK+yo=
X-Gm-Gg: ASbGnctGTJAHlNZG4xXQKn7XQzQkpfwh/IH7y+Phw6uQMscQLa0ODfq0LY9xSqpjNKX
	o3gWedMpI0d1JgA9brRxuPwSVzOifHp25EAFEd+6eJJqrXePfHtx5tbhdJTaTFBiVis2WDowDB6
	mA0/1rrOK1ZWWP/b6RMZ9C2moXYS+ibt5XJPZSZAKSXdTo63Ox5Rhv8E+FT8G1PkIlsfqWx4BvP
	YqOg9GbF9woV8sTua+Wy+OXJPRy/1l+wHXSZJTzT6zeTXbt3IMn3iFIGTcltIAPnChqvY0rWRNd
	qzGQaGcpBVxkSYlKEYMLiENBi0KOhz5tUWd6QwpqhpqaC84SRAgvO/x/lkMfUoiOMnFbYXJ66ZJ
	h4PAcGjxXjIhH6U4+2mv6q9bKCOVW9gEi
X-Google-Smtp-Source: AGHT+IEldUKbclROxgKKvDj16YdbKCkfb5vsSnzNDwXOeeA+MdVlRejqQ2rYPeZd+UWqDhaqfEndNA==
X-Received: by 2002:a17:907:3f1d:b0:add:f191:d851 with SMTP id a640c23a62f3a-ae6cf70f6ecmr193619966b.32.1752052724529;
        Wed, 09 Jul 2025 02:18:44 -0700 (PDT)
Received: from otso.local (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6b5e737sm1060116866b.142.2025.07.09.02.18.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jul 2025 02:18:44 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 09 Jul 2025 11:18:17 +0200
Subject: [PATCH v2 3/4] phy: qcom: phy-qcom-snps-eusb2: Add missing write
 from init sequence
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250709-sm7635-eusb-phy-v2-3-4790eeee7ae0@fairphone.com>
References: <20250709-sm7635-eusb-phy-v2-0-4790eeee7ae0@fairphone.com>
In-Reply-To: <20250709-sm7635-eusb-phy-v2-0-4790eeee7ae0@fairphone.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752052719; l=1183;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=ypwpLrRTvDMuCRzzHaQyRH1tZrFg5WTx+gHcQSKkU3w=;
 b=qWz3s8ZAOTflgxuX1N6dBmF5nLHnOvsOGcagHqbmagvbHIa4s4DGNR3HHtOQx/6KBWkS49b78
 y8aXmLEU/40BkHdwOhmwGYx/yUn4lOmbIbaH1RiDiedOPOnvRiI1YBJ
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
2.50.0


