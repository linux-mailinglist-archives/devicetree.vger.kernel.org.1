Return-Path: <devicetree+bounces-267369-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qFipLZ43nGlCBgQAu9opvQ
	(envelope-from <devicetree+bounces-267369-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 12:18:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 24486175610
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 12:18:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 02549302C178
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 11:18:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B7E935B65F;
	Mon, 23 Feb 2026 11:18:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BdyIyVaV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDE583612E4
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 11:18:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771845488; cv=none; b=Ew3rRSGoWo3KxgZKxwMA5wxJM/Y72BfM6YIeoxYW+MfrbsBsSqo7F4yrazWTQYlrgl4SQ8x9QXaAyuazDdd2mESpAvUmZAZG1AkSpsaUTzyTcu18VRlr+rrMPA8zUFdJI4UDlTLGMRxLwFH1BPielvLSyEEHTL64D8/orAYIukI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771845488; c=relaxed/simple;
	bh=P2i4RUSnuTwM4qMzIUSQxtFSgvom7jEQkHy1XI4WFDM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bPSicqlpESz5tTe2ft3+FvPXCXttk/Z3iT9PMj+Yi2iA//zXVk2nAIn1NNYmM2pTswO72i/5DpqcQnaPyamP+S1/D79sXcV+NUVQx8edUpUL7PMg2v77xnMBKrjhwBxQ33bcxjZ0mPCS2DHouFYOhNkycfyJT3kXAfzjgiEEi+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BdyIyVaV; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-c70378ddaafso2532243a12.3
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 03:18:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771845483; x=1772450283; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dsiXdpbaxodmPACgXw5goRGzebyloA1ZJqj/0ZU8ngs=;
        b=BdyIyVaVP5tQYaE9Jis3g+Wgs/uMSFJsAWQXEXrhrjynGEX0y2+iNtJreKkSVmT/Nx
         lP1tSjhUd6ZdOSp0toIlaSKQ/s4S8ILpNJWb105pM13tIQqfjYFIliwObH5Fdqnfx6M6
         UGXuZAa7WrdAnwOrD28qTttvdR+MSRr4gQesXpMsBxbG2tol84h1YsiEjXNGSkao7wb4
         7sgkQhjnlwjE0XOzgYCb0WjihiBk7SqDLhmgP6W+/MTo3Xs5C0uctN1kWuN6n6PMffnS
         /P94QYGsGfsqdJ42agbGxkCMwSMqq6IxI/I6Ei2A8+M/z2gt80H3JgEdC1aM3lF67s4s
         kSRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771845483; x=1772450283;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dsiXdpbaxodmPACgXw5goRGzebyloA1ZJqj/0ZU8ngs=;
        b=Gs+OMAraF58TQEutf0Qf4M+3GzHxlusotMtUxSQbZ6KlNPnRbwzAXAQyl6ZI/ImzDl
         GlRiGibsxC0iHEkf/segsxQPQzexSxJm/zsVWHbDvrQw4Gpifu/Ka5IA074vuFue9oBH
         frYZKbrrLyIrLVqsCLFVWGWpw58yYl1x/REz3IfAwTXzUebrSdc6pp89i6wM+/c1OAnv
         G+qC2NciZCbQdRjBsx7rA6YNPm1taBAAbTQvwnNWc6WDgjkBrgZ+qH0zgYPx1noLSQ8D
         EzmRa6THl6myyvAYEBhArrDmorch6nA7tjyJ1/PBuwJvjvBO4WZ8p12qPkQFbNka1nhR
         5dCA==
X-Gm-Message-State: AOJu0YzbUmSv1KT1xZWrbKXhQoCpg7c1teziAwt3GGdCMa0dfhIfyPNG
	GFgZ9FtET9b2CG/F9gzYkqFnc2ZWjI0wNubTx7FT561knyzFiuiq+sX1
X-Gm-Gg: ATEYQzz9KyGmO9MeRIDk1QSg7dv6O2gp1Zv0g6ed4cYXmzSSM0HM1QmMaMl5kiK7N/r
	kF2UkKqFvy04Aqd+TwYwXMOrXhIprbQlCRHvbZ9tj6wmbK83u7FO8G4DlEGAVYS9nAm1oG3jU6h
	VMCuL2aa0XIyL/lYyKhrlV2G1Cqqp8wf/UERLH43SmACpMLWUUrUjA6ToxvVxtP/sJspHVq9whz
	nLit5py+SoxgrsCrb0T5Mc8KeM20qe78VwjD0/PGLfwEKGrIoZlt1alwagXe+xG+FN0EaK5KlMO
	7dza4pHsjcRtob3OvA1Bc4WCfhYGceX1QrYZPsy2xFbmuOkYiUdeicRqiIOhoyu70Muvh7zLdjY
	9oqZpkAS9TKVHsHUlOPLGfOS/Bs3xGrgbzIYAX87weIhrVrZPiUOP3FJw2OVoYw58NJq2Hoe6hQ
	7KtCqcs8k2GDdsVK7K45BzozEAKnyZTIWQv6FcsC/TdR79n5q9mcmfJpeA5Xm9g+7MQlBJ2dg9y
	3SUI7Mpy3VupXPdKgUW4lQkU8LwAXI1qgnCaBrrZ1L8F2uQznE4/ePK75HdqVlt2YGsSy9khczO
	R9rHH1tX1ehLX23712R5
X-Received: by 2002:a17:902:e787:b0:2a9:3396:738 with SMTP id d9443c01a7336-2ad74547d8dmr68921545ad.44.1771845483320;
        Mon, 23 Feb 2026 03:18:03 -0800 (PST)
Received: from 2001-b400-e3a6-b683-040b-c296-04cb-fbc3.emome-ip6.hinet.net (2001-b400-e3a6-b683-040b-c296-04cb-fbc3.emome-ip6.hinet.net. [2001:b400:e3a6:b683:40b:c296:4cb:fbc3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad74d36911sm71799335ad.0.2026.02.23.03.18.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 03:18:03 -0800 (PST)
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Date: Mon, 23 Feb 2026 19:17:40 +0800
Subject: [PATCH v5 8/8] ARM: dts: aspeed: yosemite5: Fix host0-ready and
 add POST end GPIO
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-yv5_revise_dts-v5-8-fc913e902488@gmail.com>
References: <20260223-yv5_revise_dts-v5-0-fc913e902488@gmail.com>
In-Reply-To: <20260223-yv5_revise_dts-v5-0-fc913e902488@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Amithash Prasasd <amithash@meta.com>, Kevin Tung <Kevin.Tung@quantatw.com>, 
 Ken Chen <Ken.Chen@quantatw.com>, Leo Yang <Leo-Yang@quantatw.com>, 
 Jackson Liu <Jackson.Liu@quantatw.com>, 
 Daniel Hsu <Daniel-Hsu@quantatw.com>, 
 Kevin Tung <kevin.tung.openbmc@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771845456; l=1455;
 i=kevin.tung.openbmc@gmail.com; s=20250924; h=from:subject:message-id;
 bh=P2i4RUSnuTwM4qMzIUSQxtFSgvom7jEQkHy1XI4WFDM=;
 b=xv1Y03YbiEGXzcYHlj+4WLx07xcTFFPqHjWjBt42NZFVYg2dQGoaEw8BUJyJHNk2KzYXQtGWo
 e9qYUFJnNgUAxrU41c+DOpPaQt8tuH+8pHoEkA/x1JumLrfVuYun4Yt
X-Developer-Key: i=kevin.tung.openbmc@gmail.com; a=ed25519;
 pk=PjAss0agA0hiuLfIBlA9j/qBmJaPCDP+jmQIUB6SE7g=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267369-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,meta.com,quantatw.com,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kevintungopenbmc@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 24486175610
X-Rspamd-Action: no action

Rename the unused PWRGD_CPU_PWROK_2 line to host0-ready and move the
previous host0-ready GPIO to FM_BIOS_POST_CMPLT_N.

The "host0-ready" line name is used by OpenBMC phosphor-state-manager
to determine whether the host firmware is running. The previous DTS
incorrectly mapped host0-ready to the POST end signal, causing
incorrect host firmware detection.

Map host0-ready to the correct power-good signal and use
FM_BIOS_POST_CMPLT_N as the POST end indicator.

Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
index f590ec6e00c48afe4ade1fb98011780ac0570e7c..beb971eadbe53b5d9fa49252a41bf7484a8e32da 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
@@ -929,8 +929,8 @@ &sgpiom0 {
 	/*bit0-bit7*/
 	"PWRGD_CPU_PWROK","SGPIO_RSTBTN_OUT",
 	"PWRGD_CPU_PWROK_1","SGPIO_BMC_READY",
-	"PWRGD_CPU_PWROK_2","IBB_BMC_SRST",
-	"host0-ready","FM_I3C_SPD_AH_SEL_R",
+	"host0-ready","IBB_BMC_SRST",
+	"FM_BIOS_POST_CMPLT_N","FM_I3C_SPD_AH_SEL_R",
 	"PCIe_HP_BOOT","FM_I3C_SPD_IP_SEL_R",
 	"PCIe_HP_DATA","FM_JTAG_BMC_MUX_S0_R",
 	"PCIe_HP_NIC","FM_JTAG_BMC_MUX_S1_R",

-- 
2.53.0


