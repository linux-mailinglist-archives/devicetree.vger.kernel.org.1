Return-Path: <devicetree+bounces-238618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C3CC5CBB6
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 12:01:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9446C4F5F5E
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 10:53:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DA66315D49;
	Fri, 14 Nov 2025 10:52:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="flcbMXG0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC0243148C5
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 10:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763117535; cv=none; b=LttL2sTBr8kZ//5jBJio9hdKPnUo8314QvhNrdZVq5WZi4DeW4b/cWgcQLbrcJGYvFD6/3NJ6FfUhPWOw8Aot90gk3Amugojjm52SpWbZ2De+rl2MnS6H1u6YJbHNLJgQ7tRRqc91T5CTjNABSpUHCzausT6t26gxgulR58CCqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763117535; c=relaxed/simple;
	bh=JDFyzj52p8gGmebREXJka9Y1zAT1VPXuoiczO+R68IU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iD8vd2HjTDm2w0UlhGGI+q5Zsz8kkRn20q9kVT+E7oP35Gq/JlCWqL0Iqy0q+ie7Epjdr6ISKdNHrDqnLv5bPfd/McopOsR1OkY6mJfelro1J2MqrOd+dTCK2GPA3g7zgbUX8NdgjVaKqF61ZhQ6pJyUd2tbV26bjwB1akZit94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=flcbMXG0; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-477442b1de0so12501095e9.1
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 02:52:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763117529; x=1763722329; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1HE59SkHgerKKlNxfiNiqvQ/Oh6UzVvTwbF5Npt8Lw8=;
        b=flcbMXG0dgUfRQh4uTqiedUC9qqMyV2SNXtT3nn9FGstsmK0cG+76Rk5CGL5AaJwo9
         DESifjG7eMimbrxOoj/u6mqSt6XBKQR6EfLbhUhyGCvW9bfTG50Cim+GmPio7UcMYyHG
         gaZ4N+GHJbxznnG80/mwH0xf2ib+2u/7Nwbh/vGRvkDi/960gIDtpaUPL8BxTpfkV6/S
         Lgm/MxZHa7Yv1X3oqBP6vIVrtg6UN5s3sLAN92fnvFvoeikIAV+EKu3XpnPTBE2A0ZS3
         tEpm+cUxv0wDB255gkfFhPWGdwTAXdmDg912Qe+k7xF1RO9xgIFieFUpVNHF06q7u3mD
         VIiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763117529; x=1763722329;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1HE59SkHgerKKlNxfiNiqvQ/Oh6UzVvTwbF5Npt8Lw8=;
        b=GN+Qlk8XSPetOHNTKMynu4J6tFdi90v7amybWaeaMOs+O8ey+xTr65EjSekfnHEZkc
         BxtJfc2/AllQCVjXVqmDKCzcj09YQJ84OU5XZhskZ93fw7Pmj0Ti7pCmA739TCb5lfDy
         nbF4XN1FifqseE7aW7QFHBKtq7F5pzvY1eDBl8BAyFVA/ohflNLtKuTQz1ag6imAwN3Y
         Vuwov1GMBS2PAtRyeNzztJgP7WT4Xt2KY86+K7y026uHlg2BnulDDNHklZbLQukVJIqk
         oO53LyEpbOJkvaEKsA8OZLxWO6NDaIP7c1GXz9iL58SJY5I6V8PxV/gnmuVNS3T8V8eY
         0bSA==
X-Forwarded-Encrypted: i=1; AJvYcCXNovARrd6n+cJEL7cnWO2GvVfShOTgmweKXivMLBn7LzRebmIPLJfYDxEHySpV5ajib3KaJRuQMydQ@vger.kernel.org
X-Gm-Message-State: AOJu0YyF/DdUzxSnIHHXZQyDiXypTrAd5bBsHREeQl2SkCyLg10pznyt
	DHebOehTg3qfYaomLtuzSqKwXzrdGTMl/Cvn3Gy3R2gEu2DMYem1rPk6
X-Gm-Gg: ASbGncvjtAr7AWek2RrLHVbLvXCukSZavUoT7Dj0YHlG8PCiXLKJBG75CLDimeHAOST
	oJzIECUJ+xuBhmvZW0oWvhP3LINpgSb6ys73PMloGvShMkFW0dFRn0bimWJiLg/GxhA7RbDTy03
	rZ1y+ivi2TEsNyQKf2VOSbQA7PkTcKFgkyQhGIbSO4gjivBVrNH7+XznU50Jiw0IDkdxw00lv/P
	OsgBOLvMc+ep5Q7Ha0TZZQtmQ3VRLqHld/eTtBO0/jHs2piA8dw+F04Swv6QsFAdlKFwNdTp3rk
	286/u8P/FO/UK9QsJyAVvzlgWUhWa4GfeA97tSjj/aD6Ks0Ir82AWolxiw8K0p4kfAGvW785tnl
	WWO7lhxV90oNoKsFX421zmEajCqOY3KBwEf4Is/ZZj9Ow5DknObYCzGVWnwKCSxbJi1A2hnFh/p
	scYS923j/289wMicR9ZIwb+FXn/jdg+djjrgDNEMWaWex3I2TBxipIxKxJnrwnP5o4CpL4tJjvF
	boaMzarVgrhUSK6
X-Google-Smtp-Source: AGHT+IENkbhcihRPvhZGWpf9PbgT3osv7NVPvnk/P4cCA7/vVF2AJ/GMHACD1iqN53motj1hl8eSvg==
X-Received: by 2002:a05:600c:a47:b0:477:7a53:f493 with SMTP id 5b1f17b1804b1-4778fe78b15mr24098395e9.23.1763117528706;
        Fri, 14 Nov 2025 02:52:08 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f17cbfsm9031255f8f.35.2025.11.14.02.52.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 02:52:08 -0800 (PST)
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
Subject: [PATCH v3 07/13] serial: sh-sci: Add RSCI_PORT_{SCI,SCIF} port IDs
Date: Fri, 14 Nov 2025 10:51:16 +0000
Message-ID: <20251114105201.107406-8-biju.das.jz@bp.renesas.com>
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

RZ/G3E RSCI tx/rx supports both FIFO and non-FIFO mode. It has 32-stage
FIFO. Add RSCI_PORT_SCI port ID for non-FIFO mode and RSCI_PORT_SCIF port
ID for FIFO mode. Update the rx_trigger for both these modes.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v2->v3:
 * No change.
v1->v2:
 * No change.
---
 drivers/tty/serial/sh-sci-common.h | 2 ++
 drivers/tty/serial/sh-sci.c        | 3 +++
 2 files changed, 5 insertions(+)

diff --git a/drivers/tty/serial/sh-sci-common.h b/drivers/tty/serial/sh-sci-common.h
index e3c028df14f1..77f9a67d8efc 100644
--- a/drivers/tty/serial/sh-sci-common.h
+++ b/drivers/tty/serial/sh-sci-common.h
@@ -8,6 +8,8 @@
 /* Private port IDs */
 enum SCI_PORT_TYPE {
 	SCI_PORT_RSCI = BIT(7) | 0,
+	RSCI_PORT_SCI = BIT(7) | 1,
+	RSCI_PORT_SCIF = BIT(7) | 2,
 };
 
 enum SCI_CLKS {
diff --git a/drivers/tty/serial/sh-sci.c b/drivers/tty/serial/sh-sci.c
index 78fb3b6a318b..66ab85571230 100644
--- a/drivers/tty/serial/sh-sci.c
+++ b/drivers/tty/serial/sh-sci.c
@@ -3326,6 +3326,9 @@ static int sci_init_single(struct platform_device *dev,
 	case SCI_PORT_RSCI:
 		sci_port->rx_trigger = 15;
 		break;
+	case RSCI_PORT_SCIF:
+		sci_port->rx_trigger = 32;
+		break;
 	default:
 		sci_port->rx_trigger = 1;
 		break;
-- 
2.43.0


