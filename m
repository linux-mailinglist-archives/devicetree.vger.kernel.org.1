Return-Path: <devicetree+bounces-242043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3AEC85A52
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 16:07:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B75833519E1
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 15:07:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00D6D328605;
	Tue, 25 Nov 2025 15:06:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NyjcWFeU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD36C327C06
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 15:06:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764083202; cv=none; b=aY/5IPg2YTGj3/a8BAWCz2oU2BZPAM14tgMU6zmU3qp1r9qtAFxiwLdbThLSUld6+ASkbzjeYb7L5pEvdxJ0YCZbrb/w4mEyusDOsJWZpjmkT3dVzP1Dlj5wwz12Xf+XIkjpbctCVZOQT090YCgy0Iu/i2qd8FDL72PF5URCSiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764083202; c=relaxed/simple;
	bh=CSD7kFI0wySJ/AlKIEamPA0YB45z8JOZMFeKgaJIhpc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cLmdSyS9DILwf40EKRkJ5pbbDLf9ED0o/f1VsklqArrJkwwy6tN5dgMTzE2oW4ZJSlrW2bK+Ycj4h5DCu915V+cVH5wK6AGowaS9l/0ZiCLOsINJyhG+zlmWUBeUnh+8/tGxusOEXbjrWy9jshpfgc0IyfNFDtV2S3ziYahDt9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NyjcWFeU; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-42bb288c219so4826439f8f.1
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 07:06:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764083199; x=1764687999; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cQziduuM6JBsyM6+4nJEFa2lBvhbFNVVerLMQJ71dvc=;
        b=NyjcWFeUU4Y5gUNqAE669LPveQTx617VC0Oa3Yx1u5fNOcZqkDTI7EuTIsT1dxwwLy
         0jbBIoW82YWN/CY94mTcOPvwWSdokCG0dbEnqluzEkKPSGLKnD9QdcIfTmE2n4eb9SJS
         FpjahswGzoul3oTnlswHr/cTQpZajok2YOMwSg4ZyoU3TJ3pA5Ohzvr/ek1XLZs4KNCZ
         MznJAxWbL/tWusqKeOtDqVZoAtr7yXU40z5LlWWkAaU3CfysOTpmc+CGKTLWig6N6KbF
         +UXNGuXT9Kc6p04hpdGw6AeTk4kH+64bUN3imr6SfZWp9FV/0jlaAPBHSJ3F4KpgxrSd
         vmyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764083199; x=1764687999;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cQziduuM6JBsyM6+4nJEFa2lBvhbFNVVerLMQJ71dvc=;
        b=NrvymsvxbNbGhayWA0k9BwAmJCJqZ159/CfncpxKbDAV3zjASLKwu+KvNFDexO/4P8
         kptcXtYSPGfbtPaSFvwD9FTlysZtYRztBNaCSvSlz/qDfgHdL/oQkSr9+Z9UWoMteP5p
         ygQsOwjM4GFiqdfi1vFvZms8mWhka8Yc1ROAvjYSlikv/RpKqXMCOkqyEf89OHiHcUUt
         7kwfXsTGwvpJ/aMCYc0H5SLj8nLJE59INUC5kewSLQpyBsajGnqVXr+bW8QIyX8bWcKU
         Gdbb89ZEnX9RgPSMXGcldKYE0JRLelwOQSnZ4Uw1QOp5KnWHXN4WgsFuRAZXsIXzW+lX
         g5OQ==
X-Forwarded-Encrypted: i=1; AJvYcCWU5Nrdrqh/mhAkDCszFmbPtJwxVKUUdjZAP7uWu8hHWWRweH0QS5RO4XL5pMXRKbk0qYp16umB8zwt@vger.kernel.org
X-Gm-Message-State: AOJu0YzskH755XvQh7u/zI3CvEPOGWe0+kfqMqjH+A02NiyP07MmVCx0
	LU9Hnc3xRMzfr6j00AjOu4FVD1wWM2W9mAybIJVHSwjWgB3p9ztPggQk
X-Gm-Gg: ASbGncudbuOGEMDlDGQp4JVm1yDRaT7Q1PIQJtQbVbeg2xkuqR/1KikHT01gp7IPCzj
	pJxFBeKFRO/q9hWJX7lzTddwJLvI/sIHxTpptxE2YHKRSXnMgWLKeTeQlQxO2lOyZUnaL60Wn+Z
	ZBpZRddfeFZ/h8GbfOwtzUlEr2AreAS5oK+hGOV7qVNYT4GP/NSXS/IMUXqA4NZauHxAiEAuoM9
	DvYqq9cOcJ+jBln1lZ3CDhTgRW1HMnpJc3vNFqXesP8RRYnGcqGnLgVFW8k1OiJPoG8jTdGolfz
	KfmZVAUXliMLqj6L0LoAqpNj6HE58IZAxEOxH5AnjIU2feYEA73/7y1AfvwWfZFEylomzRuY26a
	5Z4ZW0HpGf/E1S5DbJS+M5V1UxYpDKALY0Fzhi/VGWAfuu7IN7bFnA1MC55zDcgVMRmWRRcLmw+
	u7ZCyjVX1dSklJduh6TxetktSaC78Y9Vr5+M8mf3e9DQtUBH+TAS8xU9+BhbtQIwUlmwN6WPMQ5
	g==
X-Google-Smtp-Source: AGHT+IEjq27xh/vO088NXc1xLod8BK5SoqS4WSTemdISNzAYy9ARbRUfoih94uE1BYs9/hR5op/8tA==
X-Received: by 2002:a05:6000:4014:b0:42b:3825:2ab4 with SMTP id ffacd0b85a97d-42cc1d22c7dmr15817905f8f.52.1764083198699;
        Tue, 25 Nov 2025 07:06:38 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7fba201sm34797809f8f.32.2025.11.25.07.06.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 07:06:38 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v4 04/16] serial: sh-sci: Drop extra lines
Date: Tue, 25 Nov 2025 15:06:06 +0000
Message-ID: <20251125150632.299890-5-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251125150632.299890-1-biju.das.jz@bp.renesas.com>
References: <20251125150632.299890-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Biju Das <biju.das.jz@bp.renesas.com>

Shorten the number lines in sci_init_clocks() by fitting the error
messages within an 100-character length limit.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v3->v4:
 * Collected tag.
v2->v3:
 * Updated dev_err_probe() in sci_init_clocks() as it fits in 100-column
   limit.
v1->v2:
 * Updated commit message 80-character->100-character.
 * Increased line limit for error messages to 100-column limit.
---
 drivers/tty/serial/sh-sci.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/tty/serial/sh-sci.c b/drivers/tty/serial/sh-sci.c
index 56d6489b2a7c..4dc5b51f01da 100644
--- a/drivers/tty/serial/sh-sci.c
+++ b/drivers/tty/serial/sh-sci.c
@@ -3186,11 +3186,8 @@ static int sci_init_clocks(struct sci_port *sci_port, struct device *dev)
 			return PTR_ERR(clk);
 
 		if (!clk && sci_port->type == SCI_PORT_RSCI &&
-		    (i == SCI_FCK || i == SCI_BRG_INT)) {
-			return dev_err_probe(dev, -ENODEV,
-					     "failed to get %s\n",
-					     name);
-		}
+		    (i == SCI_FCK || i == SCI_BRG_INT))
+			return dev_err_probe(dev, -ENODEV, "failed to get %s\n", name);
 
 		if (!clk && i == SCI_FCK) {
 			/*
@@ -3200,16 +3197,13 @@ static int sci_init_clocks(struct sci_port *sci_port, struct device *dev)
 			 */
 			clk = devm_clk_get(dev, "peripheral_clk");
 			if (IS_ERR(clk))
-				return dev_err_probe(dev, PTR_ERR(clk),
-						     "failed to get %s\n",
-						     name);
+				return dev_err_probe(dev, PTR_ERR(clk), "failed to get %s\n", name);
 		}
 
 		if (!clk)
 			dev_dbg(dev, "failed to get %s\n", name);
 		else
-			dev_dbg(dev, "clk %s is %pC rate %lu\n", name,
-				clk, clk_get_rate(clk));
+			dev_dbg(dev, "clk %s is %pC rate %lu\n", name, clk, clk_get_rate(clk));
 		sci_port->clks[i] = clk;
 	}
 	return 0;
-- 
2.43.0


