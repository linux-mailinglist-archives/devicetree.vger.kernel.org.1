Return-Path: <devicetree+bounces-238613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0B5C5CB8E
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 11:59:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E9F384F2F99
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 10:52:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B0823148AF;
	Fri, 14 Nov 2025 10:52:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dSYNPYnD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDE8C313E00
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 10:52:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763117531; cv=none; b=YoFMC9ORWdT6Z+UQkVUHCnEbdHv3gQsPrk9jZTQSRTMdIw/bKxa51DTVzEEbZMe+eXbJkEq6INRVbpY5fogYJnfc6dWYFGArNF6lZ0GiO3VyEhTVdJMPhGvRVDQ5DVmShmLfyfWfCUF4J7M0IbmixgDIQyohaWMOcxwaT7FC45E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763117531; c=relaxed/simple;
	bh=Bo7fHv11Re9CoW+XK21VskhvvMCHF+6Qb3LdhXkgXoY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lhDFIKOTDIIpXlnTCnH5m2ol8e8YXk6L4tGMMFh7ur1EVHhKIE8qoUAs7kMontI7pLeMbC8vqKisLyPOhogSgwq3S2mMNV8QGmf16jw3gbyV8x24Ry5fd1AGc/igz+9FxnOK7pJoHb52BErs8Am0/akox64/nZxAwUYgGRQs7Gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dSYNPYnD; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-42b3c965df5so1231785f8f.1
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 02:52:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763117526; x=1763722326; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XcdLKywiX2/UGkDQLLsxetMHBbjl411Sv7eO32NzeAE=;
        b=dSYNPYnDtxvD/zMSx+TnOx89GV3zaX58Oq+4ZO0EfcoxK6RaZXFrFdRvKBZcVk5Ahy
         8PcICF9eI954oMoSylVTxqDuRMbvQ5Yzo9fSD6JLcEE1zjOfRLQo6zFunccTr5uxhCoi
         4Fd/+Pd7/xnt4j22UeDxua803k/nMZ1xu5r5qgcpwzBPuA4oFY90TB5SjLGEIK1w17GE
         gvbCjGBW9VWLDpdY1Xhry8hGpIT8WQtpJlXPhdNjqgEpkJ0xReu0qEVoD111AV7YYh6X
         Wl0CjYWdKQlASRm77MEAFFPbeTxwaVI2voA7q9KN0tl7RNTDotzzOsOTkvCCgIjLRXTz
         MJdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763117526; x=1763722326;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XcdLKywiX2/UGkDQLLsxetMHBbjl411Sv7eO32NzeAE=;
        b=FGi6C8Iy15cHg62t4s+u1uA8AqDVQx39Y3QQGCDEWu1OEBvs4y0BkVyexELvZ4zVl4
         JdV5LV5TZGHjSxeTckT45TzOccbv0Q+tAL3fECS7nNr7sxkDPeNaKBKH+3cHIrf03Gor
         veb+NfhY5I0WKWG0oWfziUTAb7boDhuGM34FeF8qXiruoVvuYL+V20uqtFaHp+I9arkW
         J8/YBQu7BJBCqcsNuatDgtkIKuyjjgZp5yyeBC12nW/KRL+CevLm1XRnPZtHWmLSTCyp
         6JDR71PF4m1S9PNGxTYXND9xWoAozx/PhupH8kseuEAGNlcmBNIuGzEGqCF5betby2Ba
         gXdA==
X-Forwarded-Encrypted: i=1; AJvYcCX+pDN++SKP0XCQEwjFyYd1PVP9YsqQfIpeTBnVcjq6il9p6F/reb7P3XQHUNUICeXta7QI8YEVpoKb@vger.kernel.org
X-Gm-Message-State: AOJu0YzyFvnNxNv3CPXDrbzwnLPq8Up9Rhmc2sEQ4iok7kmM/XlUFfPr
	hjk4uHxO4ZkyRVDqwPOj0kwD65PGrkBmO5N2eNSswn0kuwdONN96NnLU
X-Gm-Gg: ASbGncvQYmnls5JCDWhq+qaV9VTSCKChljdE0pTfa52G6J39P/SJI/SfoEZS6ZCBLw8
	oYW+vgowEiQrImp8n7elYoMmt10lACOKnynotoAwsQcKnv+sAPib3FuO4RBdEkMuvTw65y9owZe
	/WzFxxQfDJBYWA7T0u2HkvFQPc9R93AR8zVVikiUkhPD+MjNye/I43ntmnUiLjfjlFPLbewBffq
	p/mp19DrOTg+OqWQac88aHMhpB7g0SyCm+aax/Tk1WmHc6h79IDr9I+2LIjdL/ikebc99p4lASG
	F+eKsmIga85HAaqgjgKcCls2YLoUE+b5RA2hFwHkTSAO3YcDxBbaUEnCWP1nk5xK5fEVgDcUW03
	AE7J/kJoeLNxvR8XNuCi7ZBeOzqPhOfPSIuxaXz085T+AzLAqtWqtEixSafPe+owMio8kt62075
	gjzDB6LEDHUMmUrHEsagbtm2NPhSxj4E6p0nT4dY5RQ0cAFe8bnqoAYgsfPtw/U4HnM0a+Fa+aj
	wSIzj8j4+KX6JR7
X-Google-Smtp-Source: AGHT+IF9AeRcYUxmrudgZkczghPrqdHlfNHpVMvqeLBzhtxnBkmtDd/7lfsgfcFS62tiRc4aZwfVTw==
X-Received: by 2002:a05:6000:40cc:b0:429:b9bc:e826 with SMTP id ffacd0b85a97d-42b59399155mr2685801f8f.53.1763117525845;
        Fri, 14 Nov 2025 02:52:05 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f17cbfsm9031255f8f.35.2025.11.14.02.52.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 02:52:05 -0800 (PST)
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
Subject: [PATCH v3 03/13] serial: sh-sci: Drop extra lines
Date: Fri, 14 Nov 2025 10:51:12 +0000
Message-ID: <20251114105201.107406-4-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251114105201.107406-1-biju.das.jz@bp.renesas.com>
References: <20251114105201.107406-1-biju.das.jz@bp.renesas.com>
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

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
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
index 53edbf1d8963..1065773555ba 100644
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


