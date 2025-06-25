Return-Path: <devicetree+bounces-189415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 16493AE7C74
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:23:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A6B1C1C23510
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 09:23:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 413B12E11B9;
	Wed, 25 Jun 2025 09:15:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="4l3WZCcJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D46E42DECB8
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 09:15:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750842911; cv=none; b=fQ5IVF8vff5B6lVVy3skds6m34yUjzMN2u8njbPf6NoxHR5caw3b6gTba+etkjEBDbVAO89oBVQJ6pgt0rjXnHkl3X+XkQEYnd+ZBriAKfgMsyk2T6jsaBQpdD6RwlHVXTlNdMHM8QMi3e3CpLNfb5/OizCy+fJRd7o0DVuxkM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750842911; c=relaxed/simple;
	bh=ga1S1Xr1XwnMLdKu7zfWrQr/T730QEOJZ68b87o6lys=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QxuBQSfSIuDTGQis5L7gkjr/BXMXe2q66Df7Z1yX/L1RThsQKNlcnfpbU1WUjNvI++OAFoyCgcx63pm5jzl9bD6xqHqXXLYt1hLZuQ5AyNgUt8ibpIpgJVK1iCV776EAdlW/I7wqt2cX3KTkKRvcdKwjeKzlC8QsODEcVd6xKnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=4l3WZCcJ; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-ade5a0442dfso242905966b.1
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 02:15:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750842907; x=1751447707; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZUNu7081NdSEDseAX1Y3e1QHYtmHZCwU3VvPUFRPHLM=;
        b=4l3WZCcJUQZsb7YoW3qY4HX4BeJmjQ2e9BmvSP7DvoSr2YiXZ7Ccln60wxVihpNoeA
         KZbxjrJtFbUXcGRAaDqRqzuw9Zx1mRp6d15FZptaychRuwqtGE7QkhPoP7Of27SUuAs/
         pHWe9eNGxWrD3Sz+bTpB9uDNU2PMgflqeBZcPgWWzlgGIjBvmFJbqIdGCko49Zej+Imz
         f1TihDLU7tDZZIzbnkyh7W4t9HFkE4x64zIzg7jWAWOgWtEpQ0fSabryNmhxsh1ZIlre
         XUhs2jr0c5W5POEyfBn8vfxBHIxYhT0/k47V2v1YrZ9uZnml8oM8kiNanCoGSfTLnlS/
         FUvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750842907; x=1751447707;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZUNu7081NdSEDseAX1Y3e1QHYtmHZCwU3VvPUFRPHLM=;
        b=d/6pBux2TxVeZcSlorUotZuv8cpwPZHO5m+8sjLwB4crZypsSNuB1FzHHoXtPtylFQ
         klQ+Fs4XsgAl3Twwp/ueCRbDw9SrNb+pzWqRwDD3OYm9161jjhevFdH7VS2KTR5V4lwi
         wnCsgCXKrPq3gJ6ysmzqql3AsywEaLnu7frB6nxBj2TP9Fkky7uEWLNedZ70+Z0qX2bj
         eAe0G67hPGnekzRbTCL/3giuwyd1Y3EkyzazfefusNXfIS1uDB7W4uDO85HIPaYD8rDN
         I/qeMFpoRP5Ru5fPbfR0Wlq6JDq+GfL5nQLmL44opYcN52z1OfZyO5dcMW7LK1CqoTB0
         EILA==
X-Forwarded-Encrypted: i=1; AJvYcCWfZhg62ApDViHdbs05dNdtx42tl6iITj3LHzquwaFcLQ6pVkN0A3qREcTDfEL1OX5htBvK7eRuxtLV@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6xcuIT1z98lvbsdhMlSorROLnAq/hzh8pPjXTq4JNYfcDA74D
	hluUohMGTQ8CZl7hZ1JPtAtb2AtExzgNtEvQRQ4U1LaZbquTDK03AxKs5M0KcE3d0dA=
X-Gm-Gg: ASbGnctGL2NVfQNMxdtckfeMCEHsPnzuBnGNeIiQwppVX0AKPHtdJDTlguJjVaAMx2W
	96kHd62XXjuUJ3kjpmyEzWApw4Ox6Zap/u9Ld3uQ3mrffGV6fBYp4byYqk5zKGDRM04ZcyO0Vjy
	YvhPzT1rHYQuLvgoLV7A3Q9GU6F3exXlWPIu8OwQkmkO8z99RbfF6IOTBX82ZtqCpyeU12xn+8H
	rRI4gd8SG1z/LcfvMREb/G0uBVJ5sh8DEnsw/AmzkYtcNGw2eWCzDxy9IBJ1j83Rcu0HPp4XP+l
	DkT2RVEKISfVnzrolsMzNfJnsGiU2wW4QaBoypIgj47FGm/c/OHf47rTAZqGOZqz92KEQNyM9Qy
	ecD2eBqLBhkOk0gMsWfVQxOhuH0aBlQN6
X-Google-Smtp-Source: AGHT+IEuwwPgZRVwpV0E5VzCi3XFCUhbcyDfrIuNNO6Kwzrn10Xq2xPkywwIm3YPQY5laniWK8XBgw==
X-Received: by 2002:a17:907:970b:b0:adb:4523:90b1 with SMTP id a640c23a62f3a-ae0bf01a47emr226738466b.23.1750842907077;
        Wed, 25 Jun 2025 02:15:07 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae053ee4c2bsm1008972266b.71.2025.06.25.02.15.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:15:06 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 25 Jun 2025 11:14:57 +0200
Subject: [PATCH 2/4] phy: qualcomm: phy-qcom-eusb2-repeater: Support
 tune-res-fsdif prop
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250625-sm7635-eusb-repeater-v1-2-19d85541eb4c@fairphone.com>
References: <20250625-sm7635-eusb-repeater-v1-0-19d85541eb4c@fairphone.com>
In-Reply-To: <20250625-sm7635-eusb-repeater-v1-0-19d85541eb4c@fairphone.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750842904; l=1083;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=ga1S1Xr1XwnMLdKu7zfWrQr/T730QEOJZ68b87o6lys=;
 b=8ytXcaweUPvgAlxdOOzwHq/Lo4rL98hebjV+yYGy27o+H8VskHWgSQLto1TFmtiLWV64CnvTb
 hsS6OQkxPVLDMP9wTarvkEDCDNQLNLFZx76E2jESFwtOG5cmMcEznGt
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Support reading the FS Differential TX Output Resistance Tuning from
devicetree and writing the register, as required on some boards.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
index d7493c2294ef23e37e484019a49ddf7b3d6a6a46..61594739e5b12706775622e1f76af6ad5d2d29bf 100644
--- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
+++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
@@ -136,6 +136,9 @@ static int eusb2_repeater_init(struct phy *phy)
 	if (!of_property_read_u8(np, "qcom,tune-usb2-preem", &val))
 		regmap_write(regmap, base + EUSB2_TUNE_IUSB2, val);
 
+	if (!of_property_read_u8(np, "qcom,tune-res-fsdif", &val))
+		regmap_write(regmap, base + EUSB2_TUNE_RES_FSDIF, val);
+
 	/* Wait for status OK */
 	ret = regmap_read_poll_timeout(regmap, base + EUSB2_RPTR_STATUS, poll_val,
 				       poll_val & RPTR_OK, 10, 5);

-- 
2.50.0


