Return-Path: <devicetree+bounces-326891-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id q8VqExVzV2r7OAEAu9opvQ
	(envelope-from <devicetree+bounces-326891-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 13:46:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4745075DB24
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 13:46:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=raspberrypi.com header.s=google header.b=klVItU1a;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326891-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-326891-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=raspberrypi.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 39988302810C
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 11:45:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DB814611CF;
	Wed, 15 Jul 2026 11:44:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01454450902
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 11:44:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784115860; cv=none; b=GJR1NHicdnURDA8IwjtHJOA8uNybkm9m+5hm83dvmqp7QOvdxxM0uHtDAN2HIUNCoSRv1JjQOSQJdSXy3iNCKQmkRATIlxgzxAYZTzxNgDdTaa4hoModV560KaXcTIowUdLBxe/Dqy3EIpDIpY2tz7qGexxdLQsIuEXNJZZOI7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784115860; c=relaxed/simple;
	bh=gyqujfHJHkzn9T9XsAEbi0n2Q1X+fbSwsvnueuC+UJg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=egedx4Lvg5kMSocNKgAJAwhCNA8PUUWyvH7vv/TBDQu0VTPkcweD09ihh7tiFcu9EPvPj2RpdULN0BYUhNpLGwHS+uJ60uAuVLvGnG6KtbQ5er4GMvE7oN8QAkikzpwMUCVwpkj+lWuNJEDTJNveOwuxUfoUHkDYK983R1B/18M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=klVItU1a; arc=none smtp.client-ip=209.85.221.50
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-4799b3f7c83so3986763f8f.2
        for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 04:44:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1784115856; x=1784720656; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=CQLciStRyxHcQjyBCc3cnu+LNwHPfM7OOKyYTNEVNSs=;
        b=klVItU1aGyjcGc5fX8ARnYxBEiOXuc374EEyzOURSdJeYObPU3qajJxItKEeAgaU2T
         TkadsQe/fo1+13cYZqnTIPdyYUX5PXq+ZR/j0Yf0xDzC+wp9AgjiuqHS+h5ONJjEFrza
         Az+z+0OmvT5a7efa3Dtf1G5PSqn3YWdP8MxWAb11CjJ8LYZEIIjxC/o1diW41Gq5TLlI
         36PpNBWB2iOLRydCU3T0e1cm/shWqT50q7wAgVDzgro7aTvmjMJFB3u7hLLo516CcUoA
         FbLWOPMv0zrLIyfM0esdbGWtVMxsps9pID/fopHesdhMBuTWHGU/mCvY05QyZUndmHmQ
         WbtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784115856; x=1784720656;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=CQLciStRyxHcQjyBCc3cnu+LNwHPfM7OOKyYTNEVNSs=;
        b=XE+GPohtdic0zj2fIYW1pqzQ2Upoamcnr+iwXhWdfalkb2oG9R8Kvl0lgmViRPmaag
         oWNaEPl72HQ6y53saYKHzFVXW7hTpvtrcdOdCl3xGU2KIeDGxgyboW8fUqYHUKtMyCNO
         J+X8gLVO5Z4GB8se57DTw0WHD/ZEEWgpVc+6Wk9NQy3cCIQip4HBXZGFvj0bp11Rrenz
         fjNsqBvqcMnFit7/uUSjFe/LzFht2WRfHdm3nkJaoBHpf8+T01IXJRVt3sI2dMdCCwqp
         Uv8jxsQoFb8nyzlF5hqlfuFCqnzN2NkOhJctX5vd5SKhoPxFK08Ma5bIZcZZua82xEd3
         mIzw==
X-Forwarded-Encrypted: i=1; AHgh+Rq8pCxsKTVMXbnFJNO/kwxw+oUnN46/lB54FdIKbO55OycLAXvSDY/4twbv+NZ5IteyRdI1Qtw7ZI6g@vger.kernel.org
X-Gm-Message-State: AOJu0YwZvMneEmHJCRmkc3xOn06Jd1EHgrsz0riY2hiwiXMux8vKDIUE
	MhMapsJmJwNO5e8V67ClKNeg+5LyXspLWm6mv9x32tw/iYHZsRA0C2pA2SWpuJRrcbE=
X-Gm-Gg: AfdE7cl4oHMf7ITKigvhqfP6xLDVKZzV/2s147FrwX/utZ4GnZZwu3D1t5Tm3rV6BYq
	qFpVNEIdxvnHGPOSXCfJ3WePkqthrRNXo0XHXRIDPszJTkwCFwhQx8q8Fdde9Uaae3eiFPvZ619
	WSqP4DrHSOnnuYt+DHNZVZ0ZTOpW7K0fv4RnOv4IMgm/xFsTuB3z1Itx2SlOGRUdHadQ/7kXfxS
	+dVj7rsFeqZs2m+TwSFUerqg1gYTWpdefmGnVFlblbyptcwZh2+ySe/CLJZlL/PEBQyJuE1TVRs
	tLQ6Uh+4gsyQlKe3rttYllPtXye/q97VM1251yOwLKXDXOmCMnKRnkA9P+rBcRbr+V0pGrjaUmf
	rixcTOjpAKYrPIZXz9/HjGKdzPQSqfMaR9dMw8r5dSKAvBot5EVFcjnqqj52Bk3CVAr068pTz7M
	t2y6wHNMk0EVNLVMSkYgPOje3G0WB0KfzDzb2/XIIT6Jb9vSA1BCVr209Er/5pcLYO
X-Received: by 2002:a05:6000:2407:b0:475:f0c2:75ac with SMTP id ffacd0b85a97d-47f4fd3a065mr2962749f8f.61.1784115856194;
        Wed, 15 Jul 2026 04:44:16 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-47f4829896asm14005425f8f.23.2026.07.15.04.44.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jul 2026 04:44:15 -0700 (PDT)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Wed, 15 Jul 2026 12:43:20 +0100
Subject: [PATCH v4 07/21] media: imx355: Set register LINE_LENGTH_PCK
 programmatically
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260715-media-imx355-v4-7-f7f966fb9ffd@raspberrypi.com>
References: <20260715-media-imx355-v4-0-f7f966fb9ffd@raspberrypi.com>
In-Reply-To: <20260715-media-imx355-v4-0-f7f966fb9ffd@raspberrypi.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Richard Acayan <mailingradian@gmail.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 David Heidelberg <david@ixit.cz>, 
 Jacopo Mondi <jacopo.mondi@ideasonboard.com>, devicetree@vger.kernel.org, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.14.1
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[raspberrypi.com,reject];
	R_DKIM_ALLOW(-0.20)[raspberrypi.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-326891-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,gmail.com];
	FORGED_RECIPIENTS(0.00)[m:sakari.ailus@linux.intel.com,m:mchehab@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:mailingradian@gmail.com,m:linux-media@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:david@ixit.cz,m:jacopo.mondi@ideasonboard.com,m:devicetree@vger.kernel.org,m:dave.stevenson@raspberrypi.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[dave.stevenson@raspberrypi.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dave.stevenson@raspberrypi.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[raspberrypi.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp,ideasonboard.com:email,raspberrypi.com:from_mime,raspberrypi.com:mid,raspberrypi.com:email,raspberrypi.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4745075DB24

The driver already has the LLP value stored in the mode structure,
but also had the same value set via register writes in the mode's
register list. Remove this duplication.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Reviewed-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 drivers/media/i2c/imx355.c | 37 +++++++++----------------------------
 1 file changed, 9 insertions(+), 28 deletions(-)

diff --git a/drivers/media/i2c/imx355.c b/drivers/media/i2c/imx355.c
index 123ceed26d05..e9f4bea67d3a 100644
--- a/drivers/media/i2c/imx355.c
+++ b/drivers/media/i2c/imx355.c
@@ -33,6 +33,9 @@
 #define IMX355_REG_FLL			0x0340
 #define IMX355_FLL_MAX			0xffff
 
+#define IMX355_REG_LLP			0x0342
+#define IMX355_LLP_MAX			0xffff
+
 #define IMX355_REG_X_ADD_START		0x0344
 #define IMX355_REG_Y_ADD_START		0x0346
 #define IMX355_REG_X_ADD_END		0x0348
@@ -260,8 +263,6 @@ static const struct imx355_reg_list imx355_global_setting = {
 };
 
 static const struct imx355_reg mode_3268x2448_regs[] = {
-	{ 0x0342, 0x0e },
-	{ 0x0343, 0x58 },
 	{ 0x0900, 0x00 },
 	{ 0x0901, 0x11 },
 	{ 0x0902, 0x00 },
@@ -270,8 +271,6 @@ static const struct imx355_reg mode_3268x2448_regs[] = {
 };
 
 static const struct imx355_reg mode_3264x2448_regs[] = {
-	{ 0x0342, 0x0e },
-	{ 0x0343, 0x58 },
 	{ 0x0900, 0x00 },
 	{ 0x0901, 0x11 },
 	{ 0x0902, 0x00 },
@@ -280,8 +279,6 @@ static const struct imx355_reg mode_3264x2448_regs[] = {
 };
 
 static const struct imx355_reg mode_3280x2464_regs[] = {
-	{ 0x0342, 0x0e },
-	{ 0x0343, 0x58 },
 	{ 0x0900, 0x00 },
 	{ 0x0901, 0x11 },
 	{ 0x0902, 0x00 },
@@ -290,8 +287,6 @@ static const struct imx355_reg mode_3280x2464_regs[] = {
 };
 
 static const struct imx355_reg mode_1940x1096_regs[] = {
-	{ 0x0342, 0x0e },
-	{ 0x0343, 0x58 },
 	{ 0x0900, 0x00 },
 	{ 0x0901, 0x11 },
 	{ 0x0902, 0x00 },
@@ -300,8 +295,6 @@ static const struct imx355_reg mode_1940x1096_regs[] = {
 };
 
 static const struct imx355_reg mode_1936x1096_regs[] = {
-	{ 0x0342, 0x0e },
-	{ 0x0343, 0x58 },
 	{ 0x0900, 0x00 },
 	{ 0x0901, 0x11 },
 	{ 0x0902, 0x00 },
@@ -310,8 +303,6 @@ static const struct imx355_reg mode_1936x1096_regs[] = {
 };
 
 static const struct imx355_reg mode_1924x1080_regs[] = {
-	{ 0x0342, 0x0e },
-	{ 0x0343, 0x58 },
 	{ 0x0900, 0x00 },
 	{ 0x0901, 0x11 },
 	{ 0x0902, 0x00 },
@@ -320,8 +311,6 @@ static const struct imx355_reg mode_1924x1080_regs[] = {
 };
 
 static const struct imx355_reg mode_1920x1080_regs[] = {
-	{ 0x0342, 0x0e },
-	{ 0x0343, 0x58 },
 	{ 0x0900, 0x00 },
 	{ 0x0901, 0x11 },
 	{ 0x0902, 0x00 },
@@ -330,8 +319,6 @@ static const struct imx355_reg mode_1920x1080_regs[] = {
 };
 
 static const struct imx355_reg mode_1640x1232_regs[] = {
-	{ 0x0342, 0x07 },
-	{ 0x0343, 0x2c },
 	{ 0x0900, 0x01 },
 	{ 0x0901, 0x22 },
 	{ 0x0902, 0x00 },
@@ -340,8 +327,6 @@ static const struct imx355_reg mode_1640x1232_regs[] = {
 };
 
 static const struct imx355_reg mode_1640x922_regs[] = {
-	{ 0x0342, 0x07 },
-	{ 0x0343, 0x2c },
 	{ 0x0900, 0x01 },
 	{ 0x0901, 0x22 },
 	{ 0x0902, 0x00 },
@@ -350,8 +335,6 @@ static const struct imx355_reg mode_1640x922_regs[] = {
 };
 
 static const struct imx355_reg mode_1300x736_regs[] = {
-	{ 0x0342, 0x07 },
-	{ 0x0343, 0x2c },
 	{ 0x0900, 0x01 },
 	{ 0x0901, 0x22 },
 	{ 0x0902, 0x00 },
@@ -360,8 +343,6 @@ static const struct imx355_reg mode_1300x736_regs[] = {
 };
 
 static const struct imx355_reg mode_1296x736_regs[] = {
-	{ 0x0342, 0x07 },
-	{ 0x0343, 0x2c },
 	{ 0x0900, 0x01 },
 	{ 0x0901, 0x22 },
 	{ 0x0902, 0x00 },
@@ -370,8 +351,6 @@ static const struct imx355_reg mode_1296x736_regs[] = {
 };
 
 static const struct imx355_reg mode_1284x720_regs[] = {
-	{ 0x0342, 0x07 },
-	{ 0x0343, 0x2c },
 	{ 0x0900, 0x01 },
 	{ 0x0901, 0x22 },
 	{ 0x0902, 0x00 },
@@ -380,8 +359,6 @@ static const struct imx355_reg mode_1284x720_regs[] = {
 };
 
 static const struct imx355_reg mode_1280x720_regs[] = {
-	{ 0x0342, 0x07 },
-	{ 0x0343, 0x2c },
 	{ 0x0900, 0x01 },
 	{ 0x0901, 0x22 },
 	{ 0x0902, 0x00 },
@@ -390,8 +367,6 @@ static const struct imx355_reg mode_1280x720_regs[] = {
 };
 
 static const struct imx355_reg mode_820x616_regs[] = {
-	{ 0x0342, 0x0e },
-	{ 0x0343, 0x58 },
 	{ 0x0900, 0x01 },
 	{ 0x0901, 0x44 },
 	{ 0x0902, 0x00 },
@@ -1059,6 +1034,12 @@ static int imx355_start_streaming(struct imx355 *imx355)
 	if (ret)
 		return ret;
 
+	/* set line length */
+	ret = imx355_write_reg(imx355, IMX355_REG_LLP, 2,
+			       imx355->hblank->val + imx355->cur_mode->width);
+	if (ret)
+		return ret;
+
 	/* Apply customized values from user */
 	ret =  __v4l2_ctrl_handler_setup(imx355->sd.ctrl_handler);
 	if (ret)

-- 
2.34.1


