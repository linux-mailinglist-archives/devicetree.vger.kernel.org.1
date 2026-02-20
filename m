Return-Path: <devicetree+bounces-267057-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6ARaLKW5mGkdLgMAu9opvQ
	(envelope-from <devicetree+bounces-267057-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 20:44:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E7F16A6B0
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 20:44:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 851FB3045A91
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 19:44:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13266366800;
	Fri, 20 Feb 2026 19:44:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="hJ9fXX1i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A919A36655B
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 19:44:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771616651; cv=none; b=NFrljuNDawd9H5kD9gmnOI7G+aVzBuvotbf3gTXJYV4tGTcpzZYOsrVgCUty4TdBzp2JjfbNfWA9Cao32BdeGssWr68kCN/hWjHCyuK0kxM+klDFxenGg6zSULDbvgyDaYuj9TADcKVeHGy0ZdBavZBSK9aOUoe+qxXL/UW4eCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771616651; c=relaxed/simple;
	bh=AnEa53opPbOu4dRIdrxYWqC5ToC/rveEHLt+0LxZ02U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LmIKDJ464viaOvaVTxrRQqrKdvFA4rd8Rzf5vpue2XZvCMRXIE3XrWKE0paJeH90FKsjPu9U5LoA+pS+I0PGREP2kSrqnPbpKVMfwVlPig6cIb6BE/I5pafqlJCiVAOsAnnt7LoLWGxlsLleBvds/Vq34LHG0WPQWI4oGXI0MaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=hJ9fXX1i; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4837584120eso18154065e9.1
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 11:44:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1771616648; x=1772221448; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8dE91IsiM0t5/CAeP0M+B+4hbTqf1CMxbF14VFtvdJw=;
        b=hJ9fXX1iRGnPQsru5gZv46/wNpNBf66Yr4wnYWrqIbv+g+nuPmVdOo6sQFdQEYLpoA
         wopFd0SrBhmrs923HlcOwpqSXxTlai0mBR0GbJBRse4NdDasCVTQj5KvPJmOB/dMInAT
         UiIQNJK1Quc3KEQiRLjMssPDwL2OdXeSChEvKyIu4BTt+ei8lqdO6X5SkxP5M6AP5xbC
         H3D1x38w9f0V0lZNJn6j7QDLKNUupPzhQYqmyBgBL/ozdNH+oVhVX7dqGbTaLAx8g4TT
         vmmYVT40GkaQwdoEV694LW+Lv9lJ5uJVivc4JuRoo+5+R88VhBdKwQoSTTJWhDtVVGdj
         7foA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771616648; x=1772221448;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8dE91IsiM0t5/CAeP0M+B+4hbTqf1CMxbF14VFtvdJw=;
        b=E75sbZv34JOZAHuOsdSP4HRSZwuk3m+/5C5uX7LjwrrpteT9jYwg3OvNCjbysd6dir
         P9LT5nIjFjlNUA3CjFBnjVwUXzS2s1hPYiTGfafUHIc1VZeYal5N/f67E1gFvT89uhwu
         CfssQLND/1jePQt7fB5rLciDG0tYxdJvs/ICbSLL2CjvgQ0ett3oeddZB2JztemOl/Wh
         VhqBG6VJ+bEsEdVtzYx6W0eC9uuQvZYKA7T6MmqAcUP0byam3xi+1pLJ3Ifk4Cc9xgFN
         zSyggu5Cle0xvLIjznGP+ytqm74KnkzRZUTv3zgjFKBMWehk1yJFZFN1VUHoe8ylEmLf
         lGhg==
X-Forwarded-Encrypted: i=1; AJvYcCXFxWYSxXOmDKpcuonxj7yAfQRrOJqoIxePwOHzuuK+FRpwUcBrAYDhzfBpsKI+gOJQNI7md56+Mfrx@vger.kernel.org
X-Gm-Message-State: AOJu0YyjG401TBby6PuCvIGEdNgtOnBHLu+EmJAZUdbXJm9Zmv8SaeSf
	PFGvWO/T5IEagDbFrMsvUMhkWfQGOis9CD/k/1/sXZ8uoyeuUJ+vh9Xl7vpkMFP2d0o=
X-Gm-Gg: AZuq6aJuSeNsyMo2v2+YSyvfRI+qeFsmMjdz/9ppC6C8ubyU60bduWAvrjN11wkgVxp
	i9SZZdBgtgN/rBLaczR11lJKg/soR08wd/KDk3yGRmefkjGnXtFATTYcsW+zqhDlTNF0Yh9iq3+
	ycZ3v+bYZ2ixtI08Sd2MfFuOLM8cYQNAz69oZUB/oxYrAULMyS9SnKCGiEC7N2pTFI019ajGSzo
	eAdbuunrV4g+4RX7DMbAdHUpjJSfS59LgKu9C3nqQJONmk39OBtTppQu7um96LfJfR3FKFkbsqN
	bUc8+8E3PhM/3f8pZeEPSM+hMPN8XItHOPY1FcH0SLu7DRKqIwxfQ8UWqQaIY/UHmHyN2SdMSuN
	MfrhC2oMDf6q+QNlCYIo7WfYR5mO8U4jBTwUvsZ3bn4efp3+OrszqQNP8VDYjsIAWLEmid2LeM6
	FgERn51gHOsG0PcZtf+6de
X-Received: by 2002:a05:600c:1c04:b0:480:1b65:b741 with SMTP id 5b1f17b1804b1-483a95cfc62mr12256445e9.15.1771616647672;
        Fri, 20 Feb 2026 11:44:07 -0800 (PST)
Received: from [127.0.1.1] ([210.176.154.34])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483a3e1b7ccsm24460755e9.11.2026.02.20.11.44.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Feb 2026 11:44:07 -0800 (PST)
From: Max Hsu <max.hsu@sifive.com>
Date: Sat, 21 Feb 2026 03:43:53 +0800
Subject: [PATCH 1/5] dmaengine: sf-pdma: add missing PDMA base offset to
 register calculations
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260221-pdma-v1-1-838d929c2326@sifive.com>
References: <20260221-pdma-v1-0-838d929c2326@sifive.com>
In-Reply-To: <20260221-pdma-v1-0-838d929c2326@sifive.com>
To: Paul Walmsley <pjw@kernel.org>, 
 Samuel Holland <samuel.holland@sifive.com>, Vinod Koul <vkoul@kernel.org>, 
 Frank Li <Frank.Li@kernel.org>, Green Wan <green.wan@sifive.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Palmer Debbelt <palmer@sifive.com>, 
 Conor Dooley <conor@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-riscv@lists.infradead.org, dmaengine@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>, 
 devicetree@vger.kernel.org, Max Hsu <max.hsu@sifive.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1395; i=max.hsu@sifive.com;
 h=from:subject:message-id; bh=AnEa53opPbOu4dRIdrxYWqC5ToC/rveEHLt+0LxZ02U=;
 b=owEB7QES/pANAwAKAdID/Z0HeUC9AcsmYgBpmLl7iZxRqUMek04x+o3lBeEEqeiLt2VR8OAQc
 Nw/cTkeEZ+JAbMEAAEKAB0WIQTqXmcbOhS2KZE9X2jSA/2dB3lAvQUCaZi5ewAKCRDSA/2dB3lA
 vTvEDACAZT/DJRai2ns/tv7qnjMFStLTAaaFD0WsiEnykRMhHVFY6Ll9o/QQco3XuLtDkfk8yBW
 Daf1E7Za0anPZFcvzU631toudhRDqKH2nydxS+UUOB/Vg/gpJvoKdAqWFR+eriNyIIjMsmbOltI
 nqOk9KGfetnbm/fJUmLyoDhVl1Rx4jtXV/iuVXSWzwYIvQB6V/lwpGQKY56dcvNS8xZ2FDfUrmI
 W5sPggxYe/khEXJWJwW/mLijfNxY5qcQKU34zgROzAmv2xl3jkKMt4bdWb9BvlRy5gvGUNB0fyM
 Ay7XcscVkpnwITy9xM08B3UTkwmX4DMATt3qoiOaqWymJLQnoJ9fj7U2jDSEqPeidm2SQxhRCU5
 M5Okuss097crl0k3OlyjyVMuhDW2MJI5OYdotZfJIyHOU3j1uvh0vwY5tEhAMFbpJxgSqWUBQuv
 fkCEwPLbl+I3WeTPSpFLNwtpGPTiG45Gw1XWSs11pBChKJxiXkJIy/2c4p6XtbMIRUq2E=
X-Developer-Key: i=max.hsu@sifive.com; a=openpgp;
 fpr=EA5E671B3A14B629913D5F68D203FD9D077940BD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sifive.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[sifive.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267057-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[sifive.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[max.hsu@sifive.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sifive.com:mid,sifive.com:dkim,sifive.com:url,sifive.com:email]
X-Rspamd-Queue-Id: 46E7F16A6B0
X-Rspamd-Action: no action

The PDMA control registers start at offset 0x80000 from the PDMA base
address, according to the FU540-C000 v1p1 manual [1].

The current SF_PDMA_REG_BASE macro is missing this offset:
    Current:  pdma->membase + (PDMA_CHAN_OFFSET * ch)
    Correct:  pdma->membase + 0x80000 + (PDMA_CHAN_OFFSET * ch)

Fix by adding PDMA_BASE_OFFSET (0x80000) to the register address
calculation.

Link: https://www.sifive.com/document-file/freedom-u540-c000-manual [1]
Fixes: 6973886ad58e ("dmaengine: sf-pdma: add platform DMA support for HiFive Unleashed A00")
Signed-off-by: Max Hsu <max.hsu@sifive.com>
---
 drivers/dma/sf-pdma/sf-pdma.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/dma/sf-pdma/sf-pdma.h b/drivers/dma/sf-pdma/sf-pdma.h
index 215e07183d7e..d33551eb2ee8 100644
--- a/drivers/dma/sf-pdma/sf-pdma.h
+++ b/drivers/dma/sf-pdma/sf-pdma.h
@@ -24,7 +24,7 @@
 
 #define PDMA_MAX_NR_CH					4
 
-#define PDMA_BASE_ADDR					0x3000000
+#define PDMA_BASE_OFFSET				0x80000
 #define PDMA_CHAN_OFFSET				0x1000
 
 /* Register Offset */
@@ -54,7 +54,7 @@
 /* Error Recovery */
 #define MAX_RETRY					1
 
-#define SF_PDMA_REG_BASE(ch)	(pdma->membase + (PDMA_CHAN_OFFSET * (ch)))
+#define SF_PDMA_REG_BASE(ch)	(pdma->membase + PDMA_BASE_OFFSET + (PDMA_CHAN_OFFSET * (ch)))
 
 struct pdma_regs {
 	/* read-write regs */

-- 
2.43.0


