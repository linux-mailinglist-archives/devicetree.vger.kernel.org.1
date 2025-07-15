Return-Path: <devicetree+bounces-196389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DEB3B0534B
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 09:33:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4B75D162939
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 07:33:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 847BC2D5C62;
	Tue, 15 Jul 2025 07:29:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="wsRWK4/h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D74327511F
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 07:29:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752564597; cv=none; b=TqwHdEIBfT9fSMseyqYHbMvLTdErEkFoaY4gU3rToCvvjzrPUa07g/AA/x10tigPXxsNfKLfo4Hk+9WaaVd0mz1X3oywvNxLafAUkz8wI1xNF0b6jk4Y1Q+tSExOoZfa+k3FoA9zRkfNEL7u7/lF/BDSukF2rdVEIAR2W+LRXaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752564597; c=relaxed/simple;
	bh=dKRIX2zCBDl46th6tpWYKQ8ftUYUz3Ovibvr6genGas=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EshUq/as/mfkqN0cLm9Ykwh/qK39g+PXWq+QkEyZ1LFQBzl9aE9OkKlEQRjA5TNnKQNREPl6W29cUr8RVECACwAQBUufntLe6oTqy7kD+igdYfzQNM0pNdjUwSpEzIFcMAZd4tDVnrpynApdDF7dQCG6WqHfDtWwcT+PIKc0S/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=wsRWK4/h; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-45600581226so30535335e9.1
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 00:29:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752564594; x=1753169394; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cKX26aKnBjtUzQOYUax+zZK1e97PUjbyxNSQ0DpaCR0=;
        b=wsRWK4/h1zUsrJY9ho6+o2s0Fvg3gpAO2qmwJMLSCzcnFUVF6r0hOFsFoc7YkApRz8
         mln6LeDJXhX/tSE6oY7EiyYEBvg28+Kta32lCatnNGCcIgvTrlMYeu09UggzPC9Bs0Xm
         DmTqvJX+4XOjUpM2YABYqwnbY6r0yvVgHmpNok1+8/C7E9ExXjhlUG+FQ8lM9UuWh3X4
         9qz1QzWvDVcqlRuqD7Rz+FwFVVt66vnUenDevfU/ezR+N2M2w1zHwv4n9a9YBLjV9xNF
         Ha8K0qCD80pO3xC3xQXucrwYQMHu9pdN+W7JKj9IVtLKkFRVppAgiv6mTp9owvyColh8
         Enug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752564594; x=1753169394;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cKX26aKnBjtUzQOYUax+zZK1e97PUjbyxNSQ0DpaCR0=;
        b=nz6kFN6UFo1zCGdG31qJNMFalgb6Jw1UgipbRmubXHU+7FzC4MiHkP0i0QlczHNVLH
         Bgft2YVW40KDWbFP9qjTrYf5qIgj31cb0PH9qdYKX/DSm8GQhMcDLE+r0scxmSAkL0P0
         PGhAOGiTpJlZZ4dOTTuxDqk7wL2ieRhEknkMHt3Lzyuf/gZBujGx7s4OMD38LjMlfSp8
         8q8tJg6u/Ze5Sq9wDrehdDdQj/sV9zRg8pcEI3QyLBUdbgDiBq3lP6k3267kE68Y9rkl
         o1v+I7YjJvWFcppPebSZdyf2HoamRBImkDuSNaNHSaZ7U1SWZ+keigVLsQ2bAQdID9ds
         r3Rw==
X-Forwarded-Encrypted: i=1; AJvYcCWOU3jWYhZ0gHITO6XV8wtnMcyvHucC9Qm2PGM0kaYQLkC7oz76P8Q5hSpF0r1thrqKBZsHxEk3oiVY@vger.kernel.org
X-Gm-Message-State: AOJu0YwdL2zg0dUhpZJuk2MgSBhb51Y895VnE/M6kEJl8yexkkclzaK+
	gRjhJUn1iSwaO2NaBLU+qvAWCqaKnBTs7Uo2nh95RGqKdH2BV32AsrOpDt546UHv1iA=
X-Gm-Gg: ASbGncuzLySDN/n870hnHkVgyqAH4yRJ6aDPFe015paPLRdZXJLZuGqUoLEzs7klwAk
	d9qKgucQb2UoKYVJnWfsjej/dDHF5hy6jaWzkQrPvA8j3ZJtDQ+UbFYrwFoc2l8YQZlRZKr2xiX
	BbpJ/gFbVVsfQx3Bjt1ZNRXYTPxsGXn0qMJU6MVAViH0b7UBkwtq+2CCGH2kWW0HPC4M+naKWzN
	K7EG2UP90ZWMky3YqCnZHBxqgo+4I77YaDOG4KgPTdUupTA/CbdQgskid+8h4kngZLwM7hk8WZH
	+7m325ohNiUSR4kaE0PZTzH3JiIltc4iXVDvyEqUo3DEzxoDXBF5SEFjltxS6HcHrWDfzkkGJ6a
	zHpr/9zJFEVnzXGyGypNl+lacSjUh4Jep4V7fqn2z2XNgiU7/39wqVByV/7yxT1vN5Ek=
X-Google-Smtp-Source: AGHT+IH/721YD0d2nZC/ZtDRok89aWdqeORozs5yHiHN61ozNTDLlak1hxt58SbOisTPzHt9mdONKg==
X-Received: by 2002:a05:600c:1f11:b0:454:ccd6:327 with SMTP id 5b1f17b1804b1-456272d233fmr13038635e9.1.1752564593644;
        Tue, 15 Jul 2025 00:29:53 -0700 (PDT)
Received: from otso.local (212095005088.public.telering.at. [212.95.5.88])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-455f8fc5a01sm106703395e9.32.2025.07.15.00.29.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jul 2025 00:29:53 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Tue, 15 Jul 2025 09:29:37 +0200
Subject: [PATCH v3 4/4] phy: qcom: phy-qcom-snps-eusb2: Update init
 sequence per HPG 1.0.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250715-sm7635-eusb-phy-v3-4-6c3224085eb6@fairphone.com>
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
 linux-phy@lists.infradead.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752564584; l=1041;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=dKRIX2zCBDl46th6tpWYKQ8ftUYUz3Ovibvr6genGas=;
 b=jg+3EAQfrVGVvex10SEG9/YqZt9ntRuWJlCNcEabPPuV1ZNP043tJEYI08EeUFSbw7GXST/WE
 y1W/CWHqrcmCs+Q8gklChp3SDKzDopYBRGsktodY6QduCnNEF9NHpeO
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

The eUSB2 HPG version 1.0.2 asks to clear bits [7:1] on all targets.
Implement that change in the driver to follow.

See also https://lore.kernel.org/linux-arm-msm/7d073433-f254-4d75-a68b-d184f900294a@oss.qualcomm.com/

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/phy/phy-snps-eusb2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
index e232b8b4d29100b8fee9e913e2124788af09f2aa..90b3da79900467dccbbec226db1cc83297ce8834 100644
--- a/drivers/phy/phy-snps-eusb2.c
+++ b/drivers/phy/phy-snps-eusb2.c
@@ -392,7 +392,7 @@ static int qcom_snps_eusb2_hsphy_init(struct phy *p)
 
 	snps_eusb2_hsphy_write_mask(phy->base, QCOM_USB_PHY_CFG_CTRL_1,
 				    PHY_CFG_PLL_CPBIAS_CNTRL_MASK,
-				    FIELD_PREP(PHY_CFG_PLL_CPBIAS_CNTRL_MASK, 0x1));
+				    FIELD_PREP(PHY_CFG_PLL_CPBIAS_CNTRL_MASK, 0x0));
 
 	snps_eusb2_hsphy_write_mask(phy->base, QCOM_USB_PHY_CFG_CTRL_4,
 				    PHY_CFG_PLL_INT_CNTRL_MASK,

-- 
2.50.1


