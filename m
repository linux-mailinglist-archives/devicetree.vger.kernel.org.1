Return-Path: <devicetree+bounces-21756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A693D805050
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 11:36:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5DA261F214F6
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 10:36:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E28B4B5AF;
	Tue,  5 Dec 2023 10:36:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DTH8mjP1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D781116;
	Tue,  5 Dec 2023 02:36:09 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-50bf1e32571so2829680e87.2;
        Tue, 05 Dec 2023 02:36:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701772567; x=1702377367; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U54qqy6N0N2c+9OxOcQWdVdaen6MX6mbtv2CDF+JdLE=;
        b=DTH8mjP1m4kawMzdG4DddIKZWvbVLaOt2K1oFbLr7kigi19BATgk2AuTWxseGVUjvI
         1wUOtMICDoBOgl1FwX2PDLPTvgMhIc6CoqJPSUzzjslqe77iA+MIEo5r46GYab/uQtSS
         cGsc6gk53ZGJdDjVeIF8vbpvlAUJ+miweQYoJ/m9ZhlhTqRAwcArbtKthTGiffgFThMD
         u5WOvHXSRrRh3t4nLsah4DazYGLRIe5al7IXZOAHocfnQD4iLsJEAxuf4eZPzCJquYPS
         uWE4QMmeguec16mcALV2FXcKoVbc+5xMBGgAuzdsFb+O7gjHSvyQK6OJ2rX7pCIKUO1D
         MGvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701772567; x=1702377367;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U54qqy6N0N2c+9OxOcQWdVdaen6MX6mbtv2CDF+JdLE=;
        b=q4+y5zp/linR+n1OcPB1admQ91eU0JEQTyrjjhxjDb/OsaLQi9B81nUmD7lF8S8swn
         H5oKqN/mq9ueE4tmL4nWgiW8DJp39ocLCGQo/1TsuR60Y8YtZD28GaHC7z/5zp4QXOi9
         s7ZTqbYWmlDTcAT1kg8tidOLWuXIhbTo4WlAoMuHVgn728u5gRJS1DzzVBGaWX0QtmI1
         yqCV5IS8+U+qbQJghFUgoKfGkmx/EyBbQR3LHOCdGPtcMo0z1/q21vnI5LWaU9+0QaQt
         9nGRx6nrb2dmE8sEdivP5LwOtep9dB/BG70uRtuHpVEvoOEoQC+t7JFeInrSJ+PZYHVe
         ewmw==
X-Gm-Message-State: AOJu0YxXJ4OXUGGXAJCTYF1hFeVlCmaryMb+F4et2F4HrEHb3KYn0ftE
	KJAJLNXLe9/b5m5fuCX3UjQ=
X-Google-Smtp-Source: AGHT+IFEi6gEzVmRxQZn6LenJ7+2db8n7eaJ31ccEDBnMQFSlfYTfUEXX/pYGky6DeUkP1qWbJfG3g==
X-Received: by 2002:a05:6512:e89:b0:50b:e384:2c5c with SMTP id bi9-20020a0565120e8900b0050be3842c5cmr3164864lfb.136.1701772567319;
        Tue, 05 Dec 2023 02:36:07 -0800 (PST)
Received: from localhost ([178.176.56.174])
        by smtp.gmail.com with ESMTPSA id d10-20020ac241ca000000b0050be6252444sm991214lfi.133.2023.12.05.02.36.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Dec 2023 02:36:06 -0800 (PST)
From: Serge Semin <fancer.lancer@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>,
	Jose Abreu <Jose.Abreu@synopsys.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Tomer Maimon <tmaimon77@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>
Cc: Serge Semin <fancer.lancer@gmail.com>,
	openbmc@lists.ozlabs.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH net-next 03/16] net: pcs: xpcs: Return EINVAL in the internal methods
Date: Tue,  5 Dec 2023 13:35:24 +0300
Message-ID: <20231205103559.9605-4-fancer.lancer@gmail.com>
X-Mailer: git-send-email 2.42.1
In-Reply-To: <20231205103559.9605-1-fancer.lancer@gmail.com>
References: <20231205103559.9605-1-fancer.lancer@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In particular the xpcs_soft_reset() and xpcs_do_config() functions
currently return -1 if invalid auto-negotiation mode is specified. That
value can be then passed to the generic kernel subsystems which require a
standard kernel errno value. Even though the error conditions are very
specific (memory corruption or buggy implementation) using a hard-coded -1
literal doesn't seem correct anyway.

Signed-off-by: Serge Semin <fancer.lancer@gmail.com>
---
 drivers/net/pcs/pcs-xpcs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/pcs/pcs-xpcs.c b/drivers/net/pcs/pcs-xpcs.c
index 7f8c63922a4b..92c47da61db4 100644
--- a/drivers/net/pcs/pcs-xpcs.c
+++ b/drivers/net/pcs/pcs-xpcs.c
@@ -292,7 +292,7 @@ static int xpcs_soft_reset(struct dw_xpcs *xpcs,
 		dev = MDIO_MMD_VEND2;
 		break;
 	default:
-		return -1;
+		return -EINVAL;
 	}
 
 	ret = xpcs_write(xpcs, dev, MDIO_CTRL1, MDIO_CTRL1_RESET);
@@ -889,7 +889,7 @@ int xpcs_do_config(struct dw_xpcs *xpcs, phy_interface_t interface,
 			return ret;
 		break;
 	default:
-		return -1;
+		return -EINVAL;
 	}
 
 	if (compat->pma_config) {
-- 
2.42.1


