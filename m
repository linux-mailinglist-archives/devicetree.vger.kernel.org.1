Return-Path: <devicetree+bounces-248107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 88CC6CCEE53
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 09:10:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CCBF1305C7DE
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 08:10:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B24D42E3397;
	Fri, 19 Dec 2025 08:10:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Guxi6Fz/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF5D2E090B
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 08:10:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766131812; cv=none; b=bYQnBhyBV4xTE0hLa/5UB5JFpzLDH0VPL9IzSlfVq3Bf3683TZeabLLM8rM5pCYkBDsKewKl1TeXBUtGOeDiapCqNkItbpriLoFcVk+EB0t2bz5genVEBnSUDlDnIQfZ0IUj9qyjXLL3lMWbd80qnLrolkxYkKZjnpe9Sp3A0Ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766131812; c=relaxed/simple;
	bh=bf8xEERmNoQu6JKiJbQyzBDcSJlpDrQjBle4TDLj5zE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=n4vNYa5wgllKVvgV7QCfPjF57GG6qpocW91F5v01eJhjHe+fGquUY5Jox7Tz0nO6NQRo6GwEjs4RS7zf76FlqlWV6TPSaO4pD5wHN+SP9PfdWdc+cHO+fyY/ICLgBcEL23wX0Gq7nLe36yI4Sf4e/eesZS+3JgWzOJyXdRhRrhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Guxi6Fz/; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-7a9c64dfa8aso1223561b3a.3
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 00:10:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766131808; x=1766736608; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qEEqxDFM2yhPiyFjlnl8LZDAP48x695zaYDrn7lQEUY=;
        b=Guxi6Fz/LoxGbd8vh1nzj0Raw28eIie4VsBPPl+h1aAl6QTOikNDtASEYogZBUBudh
         A/XW+9Y+mHYjA/B9Vv//4kYy8RwsbFcYdaKVTZ7BZq57nyCce1yfGE3whPIhpeUl5m9f
         KpfS8iDQR+Neq1Ztjqldso9erfUbfFmwDDk3gJWT6xusTz+Nj0lHEJM3/JlEJ38I0DWd
         Lc9iJB/68AoPhkF1fzxUlABoBc0Uc5AhDvzjn0zGggTUPNK7FDYWpVLW7UETcTmetwu3
         hk68BAoK83Ldy7XN8HIyhJbU1ZIG7PrYlFbWKBPG/jIjgvulg7JfET6wK+3jMZfTT8SZ
         Gejw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766131808; x=1766736608;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qEEqxDFM2yhPiyFjlnl8LZDAP48x695zaYDrn7lQEUY=;
        b=S2xiWcg7UP/CdOs0KwaP7njoogFfSlGD+5NBPAixJGtg6Tm+OPXLN5MuakgDn6Ix9p
         inPadK8FrRhCP/N1wgylOZMbbc+kMD9fIYveBdQRyPS6lOS2vncF3jNWhIOCovxvGqcJ
         8dyHnR8t5ea4AoIyoGk8jzDXnsfllPua1wbv4bC+tVyRptlHPEX9PbTRqZ8yKdhHh4VB
         xR5RrQrBuTxev/FL65YKBzQTc+I90EuK+2SofFGyOFU7kBsxJYnlkwbuZqJk54Nxyc0q
         +rlS2KyxXa1HhVWcZFdmGUN6GT8f2Chkqv+LWpljaxtitkrxmNM20qLNeJ48/G2qmpng
         VV0w==
X-Gm-Message-State: AOJu0YyAWmSsJWVveshzHl4A8Ve1SKJnhGkbVFl3C5KGKEhOA7erC+NS
	lwsRfa5EmBL383t3WfyaeHpT0gqwtLcVgJKLSoqlLUhAM7LS14Zk1yJC
X-Gm-Gg: AY/fxX7Jt+c+qOzFsc6ChK3Ilf1Ee36VXMx2h9wY5yj0zG6btRouobvFHNuQPHMYON6
	6iGlXZFaikq5QwPpSf4YBRnyF1oS/m8FQrBj28K00ZuLVdX2q40QJxFFkOG0HNwUIiMUVVlTrGO
	mKTBqL9zIfLdJdE9bffe6myOxbq6lihXDweowloaJzKVZwjSfwtG3Od4sJUhMjjkqvrG5KrcmKR
	p03kzNTABfCOPGLkHL60olsIhscWw5buHrx0r20m3Nsw7DiDZtPjFksEh8rYwgqjL0qRmsXLYpI
	bM5SC08I3Diuf1rbWE0k1SPDrm2YsVyk31O28G8hJ5fY7N6x8CEZWa7CYY8dBjdLytz0+hKhW1+
	jIIqWWXVvFZdaYFEEFY+cq8RGBHLlv/ZNNdqX1/ZKnPuaASc2yf+7qo9rCmDutinCnFljRKRRzi
	J4xaPvsTbVPttWlNkn4lw3f9vj/TdMeuVN3EofDek6917XvB381xCBxEABzyfyKrkKoD40ADmCv
	7LwMnEY99obVXORt9IgV/Ryo4qv/6pRhqEzxSdxvcKdUFND4DxoWTwvxWkInXox04DSUs2s2Df9
	cBwuWQoip0w=
X-Google-Smtp-Source: AGHT+IH03b4+jSie1GtQ8+ubGota0N33xeJ3WXg3aVbp8UHxbGm9Xls37ao3K2cBu2+EzsJRbtyMVg==
X-Received: by 2002:a05:6a00:3409:b0:7e8:43f5:bd47 with SMTP id d2e1a72fcca58-7ff6725978fmr2012408b3a.51.1766131808131;
        Fri, 19 Dec 2025 00:10:08 -0800 (PST)
Received: from 2001-b400-e3ff-afb4-41b8-b31c-89b3-0a14.emome-ip6.hinet.net (2001-b400-e3ff-afb4-41b8-b31c-89b3-0a14.emome-ip6.hinet.net. [2001:b400:e3ff:afb4:41b8:b31c:89b3:a14])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7b423d86sm1597274b3a.26.2025.12.19.00.10.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 00:10:07 -0800 (PST)
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Date: Fri, 19 Dec 2025 16:09:56 +0800
Subject: [PATCH v3 3/5] ARM: dts: aspeed: yosemite5: Add new SGPIO line
 names and rename signal
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251219-yv5_revise_dts-v3-3-ca1d5a382013@gmail.com>
References: <20251219-yv5_revise_dts-v3-0-ca1d5a382013@gmail.com>
In-Reply-To: <20251219-yv5_revise_dts-v3-0-ca1d5a382013@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Amithash Prasasd <amithash@meta.com>, Kevin Tung <Kevin.Tung@quantatw.com>, 
 Ken Chen <Ken.Chen@quantatw.com>, Leo Yang <Leo-Yang@quantatw.com>, 
 Kevin Tung <kevin.tung.openbmc@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766131796; l=1856;
 i=kevin.tung.openbmc@gmail.com; s=20250924; h=from:subject:message-id;
 bh=bf8xEERmNoQu6JKiJbQyzBDcSJlpDrQjBle4TDLj5zE=;
 b=8pOWULTXthC45NBzVPT2fNC0LDr1UhXhIrPRavW4GSG7+HeWQ1n1MkgrFLQ3L4agx/PncSGEF
 D1a1C0Hpo4vD8qtIs2BisigZk1w2BTXDMGc5g2JLrjPaXrKDbyVd0Dz
X-Developer-Key: i=kevin.tung.openbmc@gmail.com; a=ed25519;
 pk=PjAss0agA0hiuLfIBlA9j/qBmJaPCDP+jmQIUB6SE7g=

Add new SGPIO line names for user space monitoring and event logging.

Also rename PADDLE_BD_IOEXP_INT to ALERT_IRQ_PMBUS_PWR2_N to match
hardware naming. The original PADDLE_BD_IOEXP_INT is unused, so this
change does not affect current system functionality.

Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
---
 .../dts/aspeed/aspeed-bmc-facebook-yosemite5.dts   | 31 ++++++++++++++++++----
 1 file changed, 26 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
index 45b8ac2e8c65a4f672e64571631b7f6944f26213..983aebc394d9159c7e3db2e7c39e963f7b64c855 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
@@ -978,7 +978,7 @@ &sgpiom0 {
 	"E1S_0_BD_IOEXP","",
 	"E1S_1_BD_IOEXP","",
 	/*bit88-bit95*/
-	"PADDLE_BD_IOEXP_INT","",
+	"ALERT_IRQ_PMBUS_PWR2_N","",
 	"FM_BOARD_REV_ID0","",
 	"FM_BOARD_REV_ID1","",
 	"FM_BOARD_REV_ID2","",
@@ -991,16 +991,37 @@ &sgpiom0 {
 	"PRSNT_BOOT_N_FF","",
 	"PRSNT_MCIO1A_N_FF","",
 	"NIC_PRSNT_N","",
-	"","",
+	"FM_CPU_BMC_RST_N","",
 	"","",
 	"","",
 	"","",
 	/*bit104-bit111*/
-	"","","","","","","","","","","","","","","","",
+	"MASTER_PWR_EN","",
+	"MASTER_PWR2_EN","",
+	"PRSNT_MCIO0A_E1S0_N","",
+	"","",
+	"PRSNT_MCIO0A_E1S1_N","",
+	"","",
+	"","",
+	"Fault","",
 	/*bit112-bit119*/
-	"","","","","","","","","","","","","","","","",
+	"FM_CPLD_RSVD_MCIO0A_SB1","",
+	"FM_CPLD_RSVD_MCIO0A_SB2","",
+	"","",
+	"","",
+	"","",
+	"","",
+	"","",
+	"","",
 	/*bit120-bit127*/
-	"","","","","","","","","","","","","","","","";
+	"","",
+	"","",
+	"","",
+	"","",
+	"","",
+	"","",
+	"","",
+	"","";
 	status = "okay";
 };
 

-- 
2.52.0


