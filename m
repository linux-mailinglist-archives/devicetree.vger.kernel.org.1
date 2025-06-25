Return-Path: <devicetree+bounces-189411-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F0331AE7C64
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:21:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0A52F7B3E21
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 09:20:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54C542DECDA;
	Wed, 25 Jun 2025 09:14:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="Ga0dbPT6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B23C32BCF65
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 09:14:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750842886; cv=none; b=hh9tfWJIXYTqCiIJqoiaZ1OYu302Cb+Q/Z3B4XueSi9C1/Q4IgVE0+sl96v7D5m6O+0lQe+Ar9XzxNfriPYznUx7dBpVV2wU8gqY/9nmi0lMT1+W+Rqk67KyCvUOvmQQOn4kmpZ6tmYCTNivWN3jA1oT2EW2Hvp+4Bq5PQPNKcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750842886; c=relaxed/simple;
	bh=6jOwOjfHBLUytEzmwKQuMf9peA0A54DjyUpxSjnkgtk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=G2VbWsi9/BFwh2PaohpAAMQ+bQnYeIg9J9Ry2dF9OXjc2YQTvj3rKA98RoDlz4dRJ/9Uc4v2pEFYN4T5wqhEGfvHZbFb9WJ233m0gRD7l3OVXRItJoGWVycpULg03b9flR3kbVYq3mbDQxCN0WMsFgSL7AlEbFP/556QEbqG2Y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=Ga0dbPT6; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-ad8a8da2376so1039328066b.3
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 02:14:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750842882; x=1751447682; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UAc6RebJyqWkfWaiafshoyDeXJgwWVip4sEPQbkZWzY=;
        b=Ga0dbPT62LBudAjS5KAF3Dl+1ywJMm1T+/EgYrcfqWPrcdqR1Ray6LpynM/gIoIXzc
         hxhlZ/AALcxfOnn74LeXbsB72ONBB9/b24etS5nkIIUUOqqYS55N4LXaCZKTN1gNPlXX
         93kQ5EnIoJPP14Hh5Pvbyrd2rvSfbJayry5CunpfnCAVd8HdASMF3gYLByN4ZxEyDCeb
         6wcF16CIncHTqa70b8Z20OudTju+0J+gbZtgBIEi54DLAvgCzXZ2m3JLZiYzcOxurP/f
         hoarw8jhyKIOLwBjlphRm1v2Kkz8mgOmxFE65o3DASPpksY+3DjxPYaDFMEdR37Gt01l
         5LGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750842882; x=1751447682;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UAc6RebJyqWkfWaiafshoyDeXJgwWVip4sEPQbkZWzY=;
        b=v9sIlruVNtFoVZz/Q3PcaK82I6oP3xXWtC69m5XHXIuMRz2vBrq3tzoUcpN3HDmoho
         KzdMyvFj/nndAgHwO0p6lmOiCpysiFnqvQy/xYlzg7amk98/EpSfvzix0lNVUr8YUcPo
         s5Pko//3Cd6TfVUh9YizqA64xaB05qz3KIr2r4xhi9hvDopF/Vss0GMhdRYkMHGjaQS7
         7+5kIxNGO7vdGfYa5LVQJnKTlnKAwk1puj25B4TUDhP4KsN7ASpnwd3k4InMB/QRKQG8
         61vQ53ajsUCqpLMGpPU+KgNTwxFoSN0ViNg0dJ44ucqmEEfcjJNUw1s5VREDCztIn+St
         Y33g==
X-Forwarded-Encrypted: i=1; AJvYcCUbzRG3vCP55CX0DkKCcIx0EY8FphQUJSX9dHg+5x6/1zwW7UaP2S37rFa7ZFvwrwWX7vMshYGXQo0R@vger.kernel.org
X-Gm-Message-State: AOJu0YxfP+qEmRlpLBvrhq0mmQ4OslPXPehgLBwtK045a7l1WH2C7gdH
	jmzKSPSQY4G5BsPyMk0eiI5aMeK3r4yN+HAXt6fFt8zjazvQkc7ztzZ9/PpnEPszV3c=
X-Gm-Gg: ASbGncuSsyRnSV8sRi/SeQcz1OmnTUQL1LG6rRJkbLp2DQKnuA8ByPe9W+tQpg2yZ++
	n5qIxWmmA2Ii6mYbHBBqxjbuOBAVdGkp9GCQtUzT7sXAIvbHdTC43sEg3Fbm3AiCRBmbWRz/mfu
	n+Zyzni5hjOjsZ0axY5GF2c9aN2ylEEfS2IdnnoCJK4HIcZYMKPhZlsnzk//BzWyoIVUvKDTOrC
	JMIHDEfziwHnRddx/J33h2A/BCSEXAfbx/BjYxMcjUv2lGLym6vBrjqXb2xdtzmNo1hPcPZeuNS
	tyKK0tNbOdk4rYmVcnzoAG+Yv/mh45fn8YODYHz7UeMjUgkF9ce2gweUXXw0h03H1rsojhZZx+X
	HNhjQHwdCG2yRFqK/xW78xQA07Rf4R57Q
X-Google-Smtp-Source: AGHT+IG0l8SlxqzbJy5yTWk4X5Wj8Qtynwz8Lsq7ZGJOC1TtSj2YLID6Gs1lC0BpZmycf4LOOW/++Q==
X-Received: by 2002:a17:907:e2d0:b0:ad8:a41a:3cbf with SMTP id a640c23a62f3a-ae0becb6e06mr214652366b.13.1750842882078;
        Wed, 25 Jun 2025 02:14:42 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae054083c95sm1021480166b.91.2025.06.25.02.14.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:14:41 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 25 Jun 2025 11:14:31 +0200
Subject: [PATCH 3/4] phy: qcom: phy-qcom-snps-eusb2: Add missing write from
 init sequence
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250625-sm7635-eusb-phy-v1-3-94d76e0667c1@fairphone.com>
References: <20250625-sm7635-eusb-phy-v1-0-94d76e0667c1@fairphone.com>
In-Reply-To: <20250625-sm7635-eusb-phy-v1-0-94d76e0667c1@fairphone.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750842877; l=984;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=6jOwOjfHBLUytEzmwKQuMf9peA0A54DjyUpxSjnkgtk=;
 b=knC8BOEkeNO8OiE+NnKYB5/k14fP2simRn0FEiUH1MxKyG5zzAMDRqRJ4zNqyeyJsLSuAzNFP
 7cMvV9XCTULBI8qv+2u1CuI8W0OhIAvgqX7c6mnUvgVxb6/pH1mdEUa
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

As per a commit from Qualcomm's downstream 6.1 kernel[0], the init
sequence is missing writing 0x00 to USB_PHY_CFG0 at the end, as per the
'latest' HPG revision (as of November 2023).

[0] https://git.codelinaro.org/clo/la/kernel/qcom/-/commit/b77774a89e3fda3246e09dd39e16e2ab43cd1329

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


