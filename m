Return-Path: <devicetree+bounces-238615-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D1CC5CB34
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 11:55:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 8451D3465AD
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 10:52:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7F4C314B70;
	Fri, 14 Nov 2025 10:52:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="D5eZNGG5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF19313539
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 10:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763117532; cv=none; b=M6G9Ap6XHu0AJOkm8v5cKkr5xmi2I1pV6976KmOfHf574c2pl8SQbHnogcHBWmpitvntOPz8Oc4Cb9kDWdJ862zQ3Jvnj8GafS/SoU2uxSasuzrBjoT1y2KqqmsSjhHkmBGRFNKTtlYGdtqLNC93sKljbP+IXv4fF1oUuKSMnes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763117532; c=relaxed/simple;
	bh=ru2guaIk7rMFxFxpc2N5M6yg2VTwXiC4MjDfQ6kWZxA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=s8M1yZkYPmLQ6ic0H18rF+/hF6H6pO90k4yDnl/z0ZKu0dysg0GuPvi/Ncb+T3PikEQSAXC8ctOZjF/41GPkW93rmANKNYSFlwlwBADEWEl4o/swxSSpJ+nZl9F6ytrRZAYTq4sBSdm4npLq/tFxTJSK+hm0Xm2Dbjc0C7Hemlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=D5eZNGG5; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-42b3108f41fso1013003f8f.3
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 02:52:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763117528; x=1763722328; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2BlqBBFnU6cpkdBKW6lNeDZYEdxfRJJxWHLMTx3xDXs=;
        b=D5eZNGG5YQWZtMyvqIa3KVOnUgH1TBk2LpJvOIDRNg5mnFK8rK96OMcnlesMpZXS9l
         XkNXOht3btt5bkDC+/8lx4+S5cV0t2iRc1741V0vtmRV1b9g9ALm5HLzGqVXi5G9qA4Y
         C14b1cv6EiTdrDPGctnNpSMH0EIj+lpoyZKqjCHxkcB66M3vjzzK6AoO01JZ5EdQi19s
         e7SVkT1h1JbT5X4AQCbWBi/DXtqS4p6OH3v0sLRxjgVe7AqZWNtVBC4QH/fka5apx+Pv
         m7KJG3MeLnQ2JdTTdjNEX3Cxz3Tw0IQ2EH1aDCtW4uVAvuzp4xRanzt1kQV6yFRDpFdU
         yQNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763117528; x=1763722328;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2BlqBBFnU6cpkdBKW6lNeDZYEdxfRJJxWHLMTx3xDXs=;
        b=m1zKNseR2InlRBRJhNn9oXKlmHXQtJmpWxeIBj+MOl2q337rvHDaJbRL+/7x/vHU6z
         ZYhZDL87S1H/9MKIUxHeiv8FA6Y/bQfjdReXhXtTQ4L523NFJ6OLcMNAC2/mjRr3URaw
         nY9F2EKLpj73Kt48PxbRPT9W678q3d/Bt8221BcnBhjBpfiVPwDi1N5UuxzTD+PFK4u+
         KwSLZEmslWWDRturHvaJRRrBNcWfcZy7dcSQoYsewSAfn6lMQaWd/azY8fUqa7DG7KbC
         aEwqYWI7pQcPl3Dbcg6lLPW0EOjO8GOlr9cLPitmxe2/r3b951A0CVpzZ/QNhn1vj6Hb
         8Hiw==
X-Forwarded-Encrypted: i=1; AJvYcCWW29g9gMxsyKrp2zjhPTYv86d4k0SNstol3WJ2I/XDdMBPTNSWIMpNVL/m/99rcJ8OBTuFrmHHThPO@vger.kernel.org
X-Gm-Message-State: AOJu0Yz400gnOmLDe3whD072LCjWF9WT13u7vgjkyQjjUIEog0Xon+1L
	DJaK88ssgjwu4Bl76Dmr9EGp3nh5uMhAlK/yiKCOH1SfMQP1h6skue4R
X-Gm-Gg: ASbGncsXQABDi5JH1aO5R9JCCSDEqbrflwmkqAoz3IyTAVZ6yMuDCJ9Awlbqs+13KxC
	aUioNxwvXhllSSRrr22OlGy6F0atc7Vy+tW+jQ2vKqczn0B/Vvd9oVy73ygb2eQ/Pr0xYP4EpAs
	X30vyCVbkKQJ6oZOp1GZDHV82Zo5LPs2pKbT6mUfMphdxIIREm3PvjGn7uKkjjALL+sqSuyP/qI
	U1/QfFqltwwjM5EJqrRUN576pYE+tSaNs7o0eYhTaUKSGAYlNxYeGsBrLuSEYXwcmqVX4MLYU/E
	m7D/Lo7BpfwHo/fYbqyPX4Kd2pv1OWVjtPRXTraDz4bkfIbS+JKwLxs2Nxn/XvJD4kVVSXVTXbX
	vnTkAGaNVxg1QbKfAJb0p5nVNrFhEP2ia55aSm4bxOheN37wxrO7r+9u8BHLWmwjCMgDAwmPZyx
	bLayGFcIorcxNwFXX7KvLRR6D3G5SXMa+CW0j7TvBwwQBzK+Ro02xN9k5/bSLyasVhiOh0d2u9t
	UUXJwdfHu3PDvZz
X-Google-Smtp-Source: AGHT+IENiq1FIhiBDu3DOoS3VvOneVM2ON1HCZYGoXUdTVJ1zjs7sgGz0Gqc2GRNOhTZl2xSdT7f+w==
X-Received: by 2002:a5d:588a:0:b0:42b:2de5:251e with SMTP id ffacd0b85a97d-42b5934e2fdmr2898715f8f.26.1763117527909;
        Fri, 14 Nov 2025 02:52:07 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f17cbfsm9031255f8f.35.2025.11.14.02.52.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 02:52:07 -0800 (PST)
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
Subject: [PATCH v3 06/13] serial: sh-sci: Use devm_reset_control_array_get_exclusive()
Date: Fri, 14 Nov 2025 10:51:15 +0000
Message-ID: <20251114105201.107406-7-biju.das.jz@bp.renesas.com>
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

Replace devm_*_get_exclusive()->devm_*_array_get_exclusive() to support
existing SoCs along with RZ/G3E as RZ/G3E has 2 resets.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v2->v3:
 * No change.
v1->v2:
 * No change.
---
 drivers/tty/serial/sh-sci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/tty/serial/sh-sci.c b/drivers/tty/serial/sh-sci.c
index 1065773555ba..78fb3b6a318b 100644
--- a/drivers/tty/serial/sh-sci.c
+++ b/drivers/tty/serial/sh-sci.c
@@ -3710,7 +3710,7 @@ static struct plat_sci_port *sci_parse_dt(struct platform_device *pdev,
 
 	data = of_device_get_match_data(&pdev->dev);
 
-	rstc = devm_reset_control_get_optional_exclusive(&pdev->dev, NULL);
+	rstc = devm_reset_control_array_get_optional_exclusive(&pdev->dev);
 	if (IS_ERR(rstc))
 		return ERR_PTR(dev_err_probe(&pdev->dev, PTR_ERR(rstc),
 					     "failed to get reset ctrl\n"));
-- 
2.43.0


