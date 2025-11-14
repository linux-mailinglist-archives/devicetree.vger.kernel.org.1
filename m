Return-Path: <devicetree+bounces-238619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6DBC5CB31
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 11:54:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DF6833AA47F
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 10:53:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BB95315D58;
	Fri, 14 Nov 2025 10:52:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JCu24F9I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0EA8314A7A
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 10:52:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763117535; cv=none; b=ZRwyPQy5gwnTqCllna1oEvlIMxy8qlDmQe59Iib5kylsYYXVZvGYh/6/qeGzZhyd0xvVYfkCdffuUr2WVOzVvs+JPq1fkwPIy4Vhwi4D8Sk0ZDx2TGWGMbNagQjJ0ixrWzbrG85pXt+Zp6f9JPiG9ZBfRmtQTBhvYiBm9/J2GP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763117535; c=relaxed/simple;
	bh=o2GT+tAT3KaMQHIum9qg97jjk1lJRZTQ0SAE08Yq7rY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Oeinnltzbvt7vcrqwbmkORV6P0I+3F42GSCdvpXUUlDzRkIDR9GAo3NMKiSLJYt1/HYXK2ik5JklteO4eOMdBGVTKLof1eS+e1jVlRZwATXK852sckht1ub9w+QxzrYFtHx/6MvFQsIVqA5DlD+1ejZDxoLuS8uKTWhVqx5QIUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JCu24F9I; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-42b3108f41fso1013035f8f.3
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 02:52:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763117530; x=1763722330; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8X/Pwrf9F+TtHyTukhSNpyyWy/Sr3pdNdxYJ7CPLkpc=;
        b=JCu24F9IaG+ySSAmvwNI3+T5NC69RFhN/zuWjIML9rOWtn5xXJ6ga0iI2pjdHWfgE3
         lSRuJnfPufv9PbCw3PpHRf6BFOGENhRwes4BuKamlEoVoncp5bqefiJPVFRaz7jTxuPh
         dBMggCH118Pd9lIVe5mW78w0W1cabwgBFjlEEzktFdBCl1MCAmFaSqYwuMYoT969imaX
         UKYcknTn9PgqQ2/63ctMZKnGhF81GsAZVOqxkTmUcSFlPxAmnAySdgWlCG/410CeCuZz
         TMbPR+HmCrTtZjbRGSbPzfWEtSTwDAE8BYpGhpgPR5VIh0D3VZaMaT497yD0XIVt9hG7
         4pZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763117530; x=1763722330;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8X/Pwrf9F+TtHyTukhSNpyyWy/Sr3pdNdxYJ7CPLkpc=;
        b=trdtT4Jku4AvQgj4Euc/wbnELe3y4hg3PaU5nd3Rh8yyE4pB7NL2Sd5jRuPiGocG0i
         FzV6lvqDnLDJKMRm8O/ivlD/tEvvhylAk2CbqapiCltUiW0PKi/pBYIB/WfVAcMK65JQ
         mysbhfB2uG0y72ne2UXwte5TfQo7oq88To1BWczjhaA8G5QafpZYV4y8j/TwTJwwMgZ7
         yoO17UjPaPicPygDBJds8TsweNp2lr6dskVJlUqGraBGp6N1MueSDiXSzKy07ucc5BLp
         BOJu7s3XP3Or4AfSsHmVYpyp3XjDL+4I4yces73gNON2XXrtf0N/p1Rv+EP1KQ2WVkwJ
         YECQ==
X-Forwarded-Encrypted: i=1; AJvYcCVy4UoVF9ChOEDDPVfq8TRZoP9r+JT3cP8MAFTHAYvf2lw8BjLloGoCSbTfIAR+SdIgeb8bel3u5zsz@vger.kernel.org
X-Gm-Message-State: AOJu0Yxn/JZAKojqLcV5ZJj98CvOOGAdKmHcU0002sxkjZI7laJM9lai
	ld9z7orEdfgtl3nsrzhC+E7jGf0wyP1n94kPc9VxYTK3knkwyoqX+o1V
X-Gm-Gg: ASbGnctcF+kYzCTGTTSGUH9gsINIDRtfSm/+yRPZvroFOsz/Odr+th24bwsS/fT3A9F
	+9EONujt6j6suBUtfTp4KMA06SIT9xUMGKJwgHf8SL/ZDvSx01B0J5hLDlRNGazTjxAViBxxJX4
	BugQS6y4mkk+Kx+2CmYy5fJPV4AxHN1oY+gowlHmmJJHYgTwD8uRCvVPLr+IksKSPefuZ6/t07/
	XeTO2A9c7IVAmVrspmJ/xk2ifJNndizppXWzH5B7yuLU2AytEXEG8ZEqQXEot7obL99LyBYgHwl
	414SK+4otWph1UvQjz+8KwDlgBaV0S7MlmbECjN2U3a5pWnuWhhKGVBHpWhUjrUIOnalGvA9soK
	mYXBSJP6x23UYCyr7BFHWOoymO2o0GhKZt362uLzG1J7yH5vEZR0TIC8aRsG5gk2U0rlBvLbFBE
	aw79u260BKHf6XEZd1rCw0hn9FxBMrbbMBKpItlLNdNQPFqb65ZiF2Q3FZheOS0xDYG3TYeUl0k
	vINx9TH4S+uX+fG
X-Google-Smtp-Source: AGHT+IGHCuqgfNwauAekSJk609AbqQ1B+ZH/YoLkb3M4enU+0WN1Ju/YsW4fhWWiQ3c21vO8G1F2kg==
X-Received: by 2002:a05:6000:2008:b0:429:c450:8fad with SMTP id ffacd0b85a97d-42b59396f60mr2591122f8f.53.1763117530214;
        Fri, 14 Nov 2025 02:52:10 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f17cbfsm9031255f8f.35.2025.11.14.02.52.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 02:52:10 -0800 (PST)
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
Subject: [PATCH v3 09/13] serial: sh-sci: Add support for RZ/G3E RSCI clks
Date: Fri, 14 Nov 2025 10:51:18 +0000
Message-ID: <20251114105201.107406-10-biju.das.jz@bp.renesas.com>
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

RZ/G3E RSCI has 6 clocks (5 module clocks + 1 external clock). Add
support for the module clocks.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v2->v3:
 * No change.
v1->v2:
 * Updated commit description.
---
 drivers/tty/serial/sh-sci-common.h |  3 +++
 drivers/tty/serial/sh-sci.c        | 12 ++++++++++++
 2 files changed, 15 insertions(+)

diff --git a/drivers/tty/serial/sh-sci-common.h b/drivers/tty/serial/sh-sci-common.h
index 77f9a67d8efc..6c849757119b 100644
--- a/drivers/tty/serial/sh-sci-common.h
+++ b/drivers/tty/serial/sh-sci-common.h
@@ -17,6 +17,9 @@ enum SCI_CLKS {
 	SCI_SCK,		/* Optional External Clock */
 	SCI_BRG_INT,		/* Optional BRG Internal Clock Source */
 	SCI_SCIF_CLK,		/* Optional BRG External Clock Source */
+	SCI_FCK_DIV64,		/* Optional Functional Clock frequency-divided by 64 */
+	SCI_FCK_DIV16,		/* Optional Functional Clock frequency-divided by 16 */
+	SCI_FCK_DIV4,		/* Optional Functional Clock frequency-divided by 4 */
 	SCI_NUM_CLKS
 };
 
diff --git a/drivers/tty/serial/sh-sci.c b/drivers/tty/serial/sh-sci.c
index 2da36e8ce555..3b03d3d3f2c7 100644
--- a/drivers/tty/serial/sh-sci.c
+++ b/drivers/tty/serial/sh-sci.c
@@ -3172,6 +3172,9 @@ static int sci_init_clocks(struct sci_port *sci_port, struct device *dev)
 		[SCI_SCK] = "sck",
 		[SCI_BRG_INT] = "brg_int",
 		[SCI_SCIF_CLK] = "scif_clk",
+		[SCI_FCK_DIV64] = "tclk_div64",
+		[SCI_FCK_DIV16] = "tclk_div16",
+		[SCI_FCK_DIV4] = "tclk_div4",
 	};
 	struct clk *clk;
 	unsigned int i;
@@ -3181,6 +3184,9 @@ static int sci_init_clocks(struct sci_port *sci_port, struct device *dev)
 	} else if (sci_port->type == SCI_PORT_RSCI) {
 		clk_names[SCI_FCK] = "operation";
 		clk_names[SCI_BRG_INT] = "bus";
+	} else if (sci_port->type == RSCI_PORT_SCI || sci_port->type == RSCI_PORT_SCIF) {
+		clk_names[SCI_FCK] = "tclk";
+		clk_names[SCI_BRG_INT] = "bus";
 	}
 
 	for (i = 0; i < SCI_NUM_CLKS; i++) {
@@ -3194,6 +3200,12 @@ static int sci_init_clocks(struct sci_port *sci_port, struct device *dev)
 		    (i == SCI_FCK || i == SCI_BRG_INT))
 			return dev_err_probe(dev, -ENODEV, "failed to get %s\n", name);
 
+		if (!clk && (sci_port->type == RSCI_PORT_SCI ||
+			     sci_port->type == RSCI_PORT_SCIF) &&
+		    (i == SCI_FCK || i == SCI_BRG_INT || i == SCI_FCK_DIV64 ||
+		     i == SCI_FCK_DIV16 || i == SCI_FCK_DIV4))
+			return dev_err_probe(dev, -ENODEV, "failed to get %s\n", name);
+
 		if (!clk && i == SCI_FCK) {
 			/*
 			 * Not all SH platforms declare a clock lookup entry
-- 
2.43.0


