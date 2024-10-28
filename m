Return-Path: <devicetree+bounces-116643-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 880EF9B37F9
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 18:42:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 46C08282B00
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 17:42:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAA6B1E0E13;
	Mon, 28 Oct 2024 17:40:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Qq3puezO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CD0D1E0080
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 17:40:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730137231; cv=none; b=BGr6W/Th0B2r6DwH+ujvmYW1ORKSd4a6Tdp8O2c2attknQvmlzpkIZqP/mhXvqfVxy1kn3R0Ge9UKR8WnL5G2Oip7rV5cCOLDI8TSoM5nhRz5kuitzmPAC4DMztnMonXue1eHDrOyBX4EQDkiTnpBs2jJWm7dc8BYyVoVVyWAAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730137231; c=relaxed/simple;
	bh=f+4c/xAyZM4ng0MgHl2luM8EJirET+RfnpCZLFWpJ+I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KXgn+8+Wh202vEEJDprMwOnpV4ynQzfszgAARKxOrfbjItdsYrxGe1eDRn6uAvzmLaDDeuPg0tBvs3OAT9LYH87AMNbKPzdX62xc5a+CYGloY1WWkUAipDtREbj7DqTU2QmM1YnZcoE3RO6YM45PWXc2IFUE2I3etJi0tBph6Ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Qq3puezO; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-431ac30d379so9609895e9.1
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 10:40:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730137227; x=1730742027; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Te/9/WdXEHbGw1bV3Tw3mQ9dGEF+E7KMYxRV/chzUCY=;
        b=Qq3puezOkTxdqc40eiP5SHSCd7k13u6w7f0JthZboAuG+XmZ3Jmc3XNjkr3pxu0X5C
         H4//uQMC+yYOKizAUmfEtqR/fBPWbaYRkP4yI4bqC7j8v5wpsBio4cwWtuR44LQh/y55
         1hLOGbow3GukRqDGmOmVk8GH8KNPTJgLDZhkGSx4erL6jCBweFLRQOA01vLJ7Y79ZaM5
         3U/cnRYSR32PKgOzItEW01IuSw8/uayUzp0kVhaPbIK3izmzu8wec4ZHu141WN7mxDru
         p9+s1WU0lIX/9t+faHcZrPtTrAOjSE3CHklKTFW80hB2MJnEtB69S1PVXfSOCS/EARXF
         IqbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730137227; x=1730742027;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Te/9/WdXEHbGw1bV3Tw3mQ9dGEF+E7KMYxRV/chzUCY=;
        b=rR3QaZaZqIQTp3zYcrl8tzghPkc4ElPqkdnik56NnWvlfh8RpbGsxAJ3sCjPDv9TFN
         /XDWvWDaykEl+CvhHB5HYXdxBqnPAm5wUyX/QMq2WW98t2b7+8T2smiT3ziS1evUe4Bi
         sW2Kpd288UOFVpMLKAdQ0NaWz8VAiD53fms/3XLX5k3wXwMCsqnOLUhVYzE0pR3+/lCU
         MxFjOvtOZoV1y0rlILY3flamDj/nA3b1GxzNupU/CUQ70VcZ0Z9Z7e/jLmLHgSpL+dmm
         /p9vD9QE/adwkXoMkXhE3aEhTJc1ZEEMfYoIdaAMl6XAzLkijQtcCO95l44QLZpJqraD
         bJrw==
X-Forwarded-Encrypted: i=1; AJvYcCXZPw0Vc6/2fmFYXKLs0F9nBu27PNGB1+Np1QXfzT7bZAD2jm4I6tqgJPCqECzbHfiBPOW8NTzfHERH@vger.kernel.org
X-Gm-Message-State: AOJu0YzZx787C+TGEdQIB/Xufk2zOqp2rehSyAmPcnAEMBYgo9AoLztn
	8O+BxXU6K663vk2nYmN5p3r1a702fzFxefBiYjooECkW80hQn38Fc7VHk9WHd70=
X-Google-Smtp-Source: AGHT+IFqMPdBogulD24ryHYACs/0/kPy+ME5m39YFDX+/TOrN8GU2WdBOh9BaqWlHQ/G2u6uOhGjww==
X-Received: by 2002:adf:fa07:0:b0:37d:54de:1609 with SMTP id ffacd0b85a97d-380610f3056mr6761435f8f.10.1730137226809;
        Mon, 28 Oct 2024 10:40:26 -0700 (PDT)
Received: from localhost ([2001:4091:a245:81f4:340d:1a9d:1fa6:531f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38058b714fesm10130545f8f.71.2024.10.28.10.40.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 10:40:26 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Mon, 28 Oct 2024 18:38:12 +0100
Subject: [PATCH v5 6/9] can: m_can: Add use of optional regulator
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241028-topic-mcan-wakeup-source-v6-12-v5-6-33edc0aba629@baylibre.com>
References: <20241028-topic-mcan-wakeup-source-v6-12-v5-0-33edc0aba629@baylibre.com>
In-Reply-To: <20241028-topic-mcan-wakeup-source-v6-12-v5-0-33edc0aba629@baylibre.com>
To: Chandrasekar Ramakrishnan <rcsekar@samsung.com>, 
 Marc Kleine-Budde <mkl@pengutronix.de>, 
 Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Nishanth Menon <nm@ti.com>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>
Cc: linux-can@vger.kernel.org, netdev@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>, 
 Vishal Mahaveer <vishalm@ti.com>, Kevin Hilman <khilman@baylibre.com>, 
 Dhruva Gole <d-gole@ti.com>, Simon Horman <horms@kernel.org>, 
 Vincent MAILHOL <mailhol.vincent@wanadoo.fr>, 
 Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1254; i=msp@baylibre.com;
 h=from:subject:message-id; bh=f+4c/xAyZM4ng0MgHl2luM8EJirET+RfnpCZLFWpJ+I=;
 b=owGbwMvMwCGm0rPl0RXRdfaMp9WSGNLlz2QdE8mMSbp8bbLv+ZxJ8W/43HN2iuR/eBo7KWhiW
 9W35aeMOkpZGMQ4GGTFFFnuflj4rk7u+oKIdY8cYeawMoEMYeDiFICJTIth+Ct75s0SoUmLJiUr
 ha7aLa3Z8zkktDC/YM8J38kCalWLlA0Y/vBvX7j1/Mzma7P+zEq3bLi1nruHSVAv7eGNle9/J1+
 7Us8KAA==
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

Add support to use a regulator for the core. This is optional and used
to register the dependency on the regulator.

Reviewed-by: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 drivers/net/can/m_can/m_can.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/can/m_can/m_can.c b/drivers/net/can/m_can/m_can.c
index 8c6452d1490c11d365bab598f2abe047f730d24b..56884c49b6f2a36acbcd7ca04be506154f991621 100644
--- a/drivers/net/can/m_can/m_can.c
+++ b/drivers/net/can/m_can/m_can.c
@@ -23,6 +23,7 @@
 #include <linux/pinctrl/consumer.h>
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
+#include <linux/regulator/consumer.h>
 
 #include "m_can.h"
 
@@ -2421,6 +2422,11 @@ struct m_can_classdev *m_can_class_allocate_dev(struct device *dev,
 	if (dev->of_node && of_property_read_bool(dev->of_node, "wakeup-source"))
 		device_set_wakeup_capable(dev, true);
 
+	ret = devm_regulator_get_enable_optional(dev, "vio");
+	if (ret)
+		return ERR_PTR(
+			dev_err_probe(dev, ret, "Failed to get or enable optional regulator\n"));
+
 	/* Get TX FIFO size
 	 * Defines the total amount of echo buffers for loopback
 	 */

-- 
2.45.2


