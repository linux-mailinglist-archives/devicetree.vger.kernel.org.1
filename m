Return-Path: <devicetree+bounces-221331-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E55EB9E8C6
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 12:05:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 40EF218827ED
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 10:05:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8482B2EA468;
	Thu, 25 Sep 2025 10:04:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="pDJxieZq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A94292EB86C
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 10:04:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758794652; cv=none; b=q6V1DSRfjYDr3EZl4vYw49j5b2eLPW0WzHk+qzK6ay27qHrmiPK2aokKL0le8HoZ1hGmhCitCFi9MuWu54hdEItxyqL7fCaCdcr6B7mv4ImfuK4I9uUrGYTY0sZVEBZAOqi52OE+k6JkrWX3QRhMXiCLz2FW0fuVU7Xp9D+jnsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758794652; c=relaxed/simple;
	bh=jl+8FwOD6VtHhv5J6kpcVA9OYckbjjBovXhJMETPuE8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cXEfZPjYB7hA9Lyf4f2LGM6NRxhhPqaf0LkNsO2FxIaOi9C/i1XtTnpmBdpOspIQUnL46s2MJ31X4qMos4b5vrTXPQAqmClkgt5mNSPGFuzsvGLjbM65pJq3RzSk7QkeVx9unoh2sHuhOXzYlt1ranDbNGh0BbZCpVhXYUayK5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=pDJxieZq; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3fc36b99e92so1142721f8f.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 03:04:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1758794649; x=1759399449; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8tKlPEoAGYIWGPFABYx17MyiXr9Nx+u7PwyPwUhqgeo=;
        b=pDJxieZqUEXSzooBAMFfSG07wVk6AyArIu2lgzjENjFreuDjp3c3m31tHKqjRXeQCe
         nfuLQK2UTL0b5cWlze9eOPOJ5MoPQCmTAIh4MQRTVEU9GjbyQ8TQElcFkYZ23EaY3Zg4
         O6BmthSp08MC+UAmphT3OVNBTvUlE4wVrqX/N/9Hrv74Phgzqls9nx33Rl1l/do1Y/1P
         8G5h0jOeVQhlHV5qbS+O0SOcAgaoJP+olLT1EMrPHz5K2qfZdHn3xFQicQWg5FoJyR84
         +Wfss3SbWsaC2J8EwyLIbDFLqtY5fjNmYZ3FHxMIMW9TFo0mY4TEoKfAaqbCdlQUBYl6
         dPrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758794649; x=1759399449;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8tKlPEoAGYIWGPFABYx17MyiXr9Nx+u7PwyPwUhqgeo=;
        b=lpPOvgg+njjX9atW3YMa7OSgurTTf/MoOxokemeAGH1RVv43O1okcnJLzR0DA4NFaO
         F0vtJpqEItDoBuW2SEu8KyZDQRX5DmOqbB/tp5Ze0KxtZfoHbA9GtevBXS2GSRSu5F5N
         mHwmseu1vduLzlnilyd901kWA9rggDBHUAFoeRzbv+BiSk6RHr0mUMPkTDLDvmX9Kl9g
         YBLEBaf3OcHsZD9538jfrKeYywHdMAxNzhCQ4R31pmxhpRL8uR3pg+3w119J8bATfO+t
         JkC2xj9Aq5h9LlCOl9/iqd0NlGHPqaL+nE/E95wsBfeHrbSOJz9aThujhj40R3qzoGJT
         QCCQ==
X-Forwarded-Encrypted: i=1; AJvYcCUs1JJvORsLI4nRIns1qVHG++LLj7dYnUCfu1LvI4nBJ/LnJISGo7TYPs3+qNY6Z63egujxgf+aOf9y@vger.kernel.org
X-Gm-Message-State: AOJu0YyBOKvSiTwDLmhH2JI3uoaypSv42yMN/PY5XzoR5KRqeNJ4JUfz
	mSm1OAPOZewshIwVSCMpcSrsBPnz926aoJFJ1oMIVI8F8t6BO3t5usxuGW09YHkJ/LI=
X-Gm-Gg: ASbGncs1eJNzErdiW4sJramNYIGfxZZ0+hUGnTakcHKtjjCO5iD4KN8hx8FdS7EoMe6
	uIMiymFwzU91Fjb1dn6i7nTwDXa2aHZ/4a7td7uOEg+o+gs/iSyEG+9RheGhjJrbYUIFic8jy3l
	qCu8bsBVQNjhHE9dK8ejKGoHzXCx+SskTgYNi9Mxg/VdwiBLfot4i+tf10aun009J+f34x9L13E
	b+herPzFMQBGNAuqfO8hJ/36hMrszVdc5EQPUM5Gs1ViXtAPN2jCUf0k49kxZYqq4kk8HtHJhWC
	GmkLi2gzidM4Sz5eMMWljzZRUW0Q1H5579AW91sF8r0nqUoJTRP9j4Y+sdORWeAoc+XQwOpzRmh
	Gx62pI+on0KYS5C7ZZtJuSwVBDEKK67+3huBv6V29On3yDpsRLmQD
X-Google-Smtp-Source: AGHT+IEAFncSrCN/DyxZQdkXk07wqustp+8ZzXW52nZf4Olgw0IFwcTFDA4LiIPHm2KGkdMJd1zQqA==
X-Received: by 2002:a05:6000:610:b0:3ec:42f9:953e with SMTP id ffacd0b85a97d-40f5fdb1108mr1870089f8f.7.1758794647472;
        Thu, 25 Sep 2025 03:04:07 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.153])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-40fb72fb6b7sm2501122f8f.2.2025.09.25.03.04.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 03:04:06 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: [PATCH v7 5/7] reset: rzg2l-usbphy-ctrl: Add support for RZ/G3S SoC
Date: Thu, 25 Sep 2025 13:03:00 +0300
Message-ID: <20250925100302.3508038-6-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250925100302.3508038-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250925100302.3508038-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The Renesas RZ/G3S SoC USB PHY HW block receives as input the USB PWRRDY
signal from the system controller. Add support for the Renesas RZ/G3S SoC.

Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v7:
- none

Changes in v6:
- collected tags

Changes in v5:
- none

Changes in v4:
- none

Changes in v3:
- none; this patch is new


 drivers/reset/reset-rzg2l-usbphy-ctrl.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/reset/reset-rzg2l-usbphy-ctrl.c b/drivers/reset/reset-rzg2l-usbphy-ctrl.c
index be315199e2b0..b623a511e505 100644
--- a/drivers/reset/reset-rzg2l-usbphy-ctrl.c
+++ b/drivers/reset/reset-rzg2l-usbphy-ctrl.c
@@ -108,6 +108,10 @@ static int rzg2l_usbphy_ctrl_status(struct reset_controller_dev *rcdev,
 
 static const struct of_device_id rzg2l_usbphy_ctrl_match_table[] = {
 	{ .compatible = "renesas,rzg2l-usbphy-ctrl" },
+	{
+		.compatible = "renesas,r9a08g045-usbphy-ctrl",
+		.data = (void *)RZG2L_USBPHY_CTRL_PWRRDY
+	},
 	{ /* Sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, rzg2l_usbphy_ctrl_match_table);
-- 
2.43.0


