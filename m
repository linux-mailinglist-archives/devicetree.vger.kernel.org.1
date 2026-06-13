Return-Path: <devicetree+bounces-311277-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qmn2H40lLWrrcgQAu9opvQ
	(envelope-from <devicetree+bounces-311277-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 11:40:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D9A9667E41E
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 11:40:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=q2bN4TCq;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311277-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311277-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2CBF630C1A2E
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 09:39:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA9F4379ED6;
	Sat, 13 Jun 2026 09:39:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99D2E14A619
	for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 09:39:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781343592; cv=none; b=S4vavv2+NrtshOLh1P3wlfWUCLReloKeiabPP3VyThnNMetFHR7y95I5NJMEvYNyZc6WIwqcFRXYESIp0gyk8pFeIQr1NbdEhu2pySE8j3EAO5BlQE+YRyEh2E/vd20ix5WyUMOsKKUWFp6+TcewjU7GLaRZBSzEkuVOBVTujQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781343592; c=relaxed/simple;
	bh=ER0AC/Xnj+ibEkD0vpGT/fnWFxVKVDSlU3bLlFczBTE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=b1SohKWnSgaZbmyEwbdrBp6gJK/DK0A/PzXJYKK4WJ4iJR8nw0oleh4M7bxGEUGrZfNojfO+RlJ4CH7Gy0WvzrgdQMdiOF7eHOlWZCul4Gtf0wFBfLZ5ugvbpNFObd92JIgs/f65yXsEJds9qqcq4WjTafh/Yp/J/v3FORDln/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=q2bN4TCq; arc=none smtp.client-ip=209.85.215.173
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-c858dc05ee3so1121811a12.2
        for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 02:39:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781343591; x=1781948391; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vAyKAjmkX6PvmXkxrw5YnaLQ/4sPrlWKfDdfdwHLY1Y=;
        b=q2bN4TCqeSO6tz6FxMNyXKf5rzAGRTp1aafyZ/Dl3gCwESHdTHmDcTClznUrMNfsdC
         2q/+TUIRkX9diSmwZsWui/WOBkBK+U2rroXoHotzcaozk7Uq5EXc7t1Xxi9/rqaXmC+H
         V0ZIEa4km1xfAuQqi38vxAP2jbfhUc15DXKsc8y+funIhBESpaNI9B/tSBx/JOxnuJgM
         Lz+7JvpYrnW/v3GH+oGONUN0Hw3zj2BAecPgcaoYp4eYfBloYlVuAEiiOpJFY96QJ2X7
         TuzJ6lIAzf1Q6Q9DOA4yO2DYpmGY3KCC8o6NczBWDcs1FBWzc4MLfS8c3IY492JxjCnC
         RzIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781343591; x=1781948391;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vAyKAjmkX6PvmXkxrw5YnaLQ/4sPrlWKfDdfdwHLY1Y=;
        b=L8wnL5LlPw6C68koorhfORAjkTifjxUZfph38OpXL9M31BdCiec0eg9cNzw9vlYS8R
         mkNfc1SRBJShOWQizt5LYdsAostqHScOMf8GKe8TPhUCeBTz07a+eM1fSiPdh2LhgHBd
         uTgg12FDiYbk6ymts2hpZCTMvvSV8hupe3pZZYjpSD4/Suj9J3RZjqfSTLxiO0uX/1IG
         f1Pz92D/J1CfaCKnReIk3htxHa8t4Rc7B3Pih3K+09h6xoIBmI/R02cUeh1+i1xdkEmq
         vdrfwLz5wW0EG0ggOcE/chzjCz9kUyeRd5Kjvs2d8jp7dL0CcFtzaG+eptYAVJ4bReGP
         y/Hw==
X-Forwarded-Encrypted: i=1; AFNElJ+W12sUpF09ltuMR4Q96RhmhLIhLmV07XAuN2fkChlYHdidY7rqCt+TbF/CJdUodAIDUAyUk+lZ8E/B@vger.kernel.org
X-Gm-Message-State: AOJu0Yyf1FF7bPdpp9TPQGUwUGtdLUFKWukpGgAFev2TmnOcNTZdiS9O
	yKDZcWtPobR30/YWDOgfX9MzXJXXLbto5Oub1w0jk+RDNX6/XcAquXHG
X-Gm-Gg: Acq92OEDvMWRgPbK8xTNCACTaY/nj4hRtmsR3FeJaf8sv5sdF8ksBmgjr5s0IeSLS/a
	ortwC8DAhlUffGHvLwtqQP2ggabnZk+geAScNu5iZim2NX5QhIj7JU1WWWfvpRArB77k2c64Qzp
	R7HT7N8BHBIfRku/N1zDPYZTKInIEpiojENIPQPUArb8rqbW9b1SlNWICoTBzIu98wPizBqaFcP
	De+gobgACDdMAG8l3DJfN+FcGKelbRPG3Uu8mTHQedn6HTqXVz3NUHK8SY3Fdm7qihvDGtqe3NS
	m8rfVgAPi1EL49f8aoTG9so1IAposWi1cRu5Wxcky2gOYs+YV+4pjNe1mOL6FGMscqZACYyYD0Q
	k0UxVGd6EGsZl39Bq//P42bum4DUfESWC3m3JbiNLk2m81iAR8o5J85Tsmqq9eSqJwXxiBk/48Q
	LpW5t9O9/qnNwBeL5ykeDIW/GD/h5uf4tSkz9lsQ4s81ez
X-Received: by 2002:a05:6a20:4306:b0:3b4:857b:1ec with SMTP id adf61e73a8af0-3b795fc1499mr3511835637.0.1781343591072;
        Sat, 13 Jun 2026 02:39:51 -0700 (PDT)
Received: from Black-Pearl.localdomain ([49.207.61.84])
        by smtp.googlemail.com with ESMTPSA id 41be03b00d2f7-c8661a67603sm4155826a12.0.2026.06.13.02.39.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Jun 2026 02:39:50 -0700 (PDT)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Date: Sat, 13 Jun 2026 09:39:39 +0000
Subject: [PATCH v4 1/2] arm: dts: st: align node patterns with established
 convention
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260613-st-mmc-v4-1-b3c385617c16@gmail.com>
References: <20260613-st-mmc-v4-0-b3c385617c16@gmail.com>
In-Reply-To: <20260613-st-mmc-v4-0-b3c385617c16@gmail.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 Patrice Chotard <patrice.chotard@foss.st.com>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Charan Pedumuru <charan.pedumuru@gmail.com>
X-Mailer: b4 0.15.2
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-311277-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ulf.hansson@linaro.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:peter.griffin@linaro.org,m:patrice.chotard@foss.st.com,m:linux-mmc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:charan.pedumuru@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:charanpedumuru@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[charanpedumuru@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[charanpedumuru@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D9A9667E41E

Update ST MMC DTS node patterns to match established convention.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
 arch/arm/boot/dts/st/stih407-family.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/st/stih407-family.dtsi b/arch/arm/boot/dts/st/stih407-family.dtsi
index 3e6a0542e3ae..08acba209c56 100644
--- a/arch/arm/boot/dts/st/stih407-family.dtsi
+++ b/arch/arm/boot/dts/st/stih407-family.dtsi
@@ -596,7 +596,7 @@ spi@9542000 {
 			status = "disabled";
 		};
 
-		mmc0: sdhci@9060000 {
+		mmc0: mmc@9060000 {
 			compatible = "st,sdhci-stih407", "st,sdhci";
 			status = "disabled";
 			reg = <0x09060000 0x7ff>, <0x9061008 0x20>;
@@ -611,7 +611,7 @@ mmc0: sdhci@9060000 {
 			bus-width = <8>;
 		};
 
-		mmc1: sdhci@9080000 {
+		mmc1: mmc@9080000 {
 			compatible = "st,sdhci-stih407", "st,sdhci";
 			status = "disabled";
 			reg = <0x09080000 0x7ff>;

-- 
2.54.0


