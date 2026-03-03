Return-Path: <devicetree+bounces-270733-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eLfyFNA5p2mofwAAu9opvQ
	(envelope-from <devicetree+bounces-270733-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 20:43:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A43B61F6415
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 20:43:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 865DD30F0591
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 19:39:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D7D439769F;
	Tue,  3 Mar 2026 19:39:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZlxezQyi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com [209.85.217.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3769439768E
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 19:39:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772566750; cv=none; b=URufqWSBJY+FPKOJjaVEnCfMp/BNutgGCY6/SQV+BwtHbwCSY7JoazxjcdSP1ujYYZusZrMuWOpVXcU3mT9aOIG2rjBMpZ9ANTfHd/BT1syuY6LG7ZOUZ0FgZrwt+BnMnae+rECrPsdXFgqJKd2F0bZsd/qTUC5btCcN65a/atg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772566750; c=relaxed/simple;
	bh=AQ8hw2PuHTBWfptZ8H5GjFRCdQgfqq8rlA3b4O4fp4Q=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=GUij+bRCnBvn+IyeWpLgowxRApI0KhwH4X6IX9wqni5Rnw4VlM2nMzdoRzh7e46uL7ZhA1BHID6g0137hMSDKGjOdvQrcFMswuQFhGU5wUFr6/FMW7ywY5EgqGa2t+pp2AMlxJwjEgjPLzZJ3CZcdpy28wjZd9rB3Ph9QPQoits=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZlxezQyi; arc=none smtp.client-ip=209.85.217.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f51.google.com with SMTP id ada2fe7eead31-5ffa7389919so1883137.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 11:39:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772566748; x=1773171548; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BB0QVBpGQ94Lw9CGC203QszMp5Otiswv82HpkthV6hY=;
        b=ZlxezQyiw8JUl3TlbEm7ZFTJuFmDg17bUxz1zAs0jRZsnl9RBfV7MU2X7B38l3ruG5
         UyKBe/1nR3ScBYdyKxbnmlxiOYRrtpxQFxD8X4TEPvOGCv+17qLMzfDj0gbIIiXeVKQ5
         fM/+q5TvKJd0fgAqOEtDktqBTJXUhSKzkLG9Vexlg74lTHswSY5yc6zzHKeIaYdR3L/z
         +zhHvVFCmCzjoNjajxHFNBBTAanWfoePSWbbo/59bZiiLhUU1C1DHZdGZkRvHRgoQ5Hq
         YJXD5Dhvin37OGCNQmx5Viim5Xs6f5PrWkmIOfgdYOi/e2sjlFfBigmQa6Mf5v0Qb4Dd
         P/6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772566748; x=1773171548;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BB0QVBpGQ94Lw9CGC203QszMp5Otiswv82HpkthV6hY=;
        b=XTzuQLZwwrFNQeK5jFZaHuS0myNp52S8UQb2RbhVM2MUAI0VVdZpeTU/UnSSqwOevg
         z8797jGqG0oMUN64/vLMpK1c5vpTSOsX2Rm53f2CPDYCk5ZrsjHb2jZPxVhnePM3pwJE
         ++l/C89gbd7noGW/BRuj6tbApHfMvSkVsqoTtXwqSY8MwAJrEzpIi5xzNwn/DlrxPmoh
         JGSLXGXQLoWRjDXEi3VQw8RSR7h24wPnVPfzdIHiqSf8o4O+RGD7isZOyacGf/AFJG4p
         UePZL6azq+43H7fBA4XoxqjNBWj50XXpIqxYQAVzyD+hP6sfuIlM/Tj+viiedu11Zkoz
         PkrQ==
X-Forwarded-Encrypted: i=1; AJvYcCVU12+JP0LgW8UeBCgUDEwEPNqxW5WW2bnetOSVAm+izYZN24t35Qk7JWN1FblCCnHC74G++GClXALa@vger.kernel.org
X-Gm-Message-State: AOJu0YwAzqjbxEmktGL0lBbY8Q8JxyXQykDkLU9GhlQqocPXf7nI6myZ
	OjJkrGkOiIIaAQpTwWFHKi5rJSDDBjRC3vtC8ZIAD4rCG2qqmwlVRvAb
X-Gm-Gg: ATEYQzyIxZctlaM2XclcWUdlMLAUZn/sJv5Zny/Old7ZwJC9Al7gUsjGMwZKdTJlcJG
	Pd/iQVdG0Ja/VPaqTNMXslg2nRqBuF9PTHVzlvNykWkRLc/K8VGZsGAq1HWeuhMznvgd7tnk0BV
	gUNAF7gOUCa1ai66PcaoRIKvwzWpnICypovk3SRzlEwxy25zh6+9rOAvAdT4ck8P5hSQ3UvTT5W
	asvP99MJ3EuNQmNPErFAfsG23D2CONMolENQgmuL0Ts0f8fiEaF+BT6tCXYc4a3W5wKcR3vYrFO
	jIvHqZWSTxccmqMkKZ+YbTfVCAx99I09mLk56rWhpFV8V8g5L2dncPzZDmtd66pJl+yVqNwo1yg
	iOGp7V6XauqudmXU0fpj8aSNj2G9hXOOetNgbNjNvdhM97n8IKwVhcquSeAcE7urod6ZMTjJVm4
	wHyCdR2ttn240YkqrJNTjx7K/rOfquHhUnSXADjw6/lgeb9KxlwNTpjNO0C0pLqg99ceNm
X-Received: by 2002:a05:6102:304d:b0:5fc:2b29:afee with SMTP id ada2fe7eead31-5ff3237e661mr8739890137.18.1772566748110;
        Tue, 03 Mar 2026 11:39:08 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:1b3:a802:8875:499e:12bf:3287:5753])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ff1e7af30asm17780456137.3.2026.03.03.11.39.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 11:39:07 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH 1/3] ARM: dts: rockchip: Describe the touchscreen interrupt on rk3288-phycore-rdk
Date: Tue,  3 Mar 2026 16:38:53 -0300
Message-Id: <20260303193855.828892-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: A43B61F6415
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,lists.infradead.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-270733-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.0.0.64:email];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,phytec.eu:url,0.0.0.44:email]
X-Rspamd-Action: no action

According to the phyCORE - RK3288 Hardware Manual, GPIO5_B4 corresponds to
the touchscreen interrupt line:

https://www.phytec.eu/fileadmin/legacy/downloads/Manuals/L-826e_1.pdf

Describe it to improve the devicetree representation.

This fixes the following dt-schema warning:

	'interrupts' is a required property
	'interrupts-extended' is a required property

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3288-phycore-rdk.dts | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3288-phycore-rdk.dts b/arch/arm/boot/dts/rockchip/rk3288-phycore-rdk.dts
index a878a2632de0..fb2f585caba2 100644
--- a/arch/arm/boot/dts/rockchip/rk3288-phycore-rdk.dts
+++ b/arch/arm/boot/dts/rockchip/rk3288-phycore-rdk.dts
@@ -86,6 +86,10 @@ &i2c1 {
 	touchscreen@44 {
 		compatible = "st,stmpe811";
 		reg = <0x44>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&ts_irq_pin>;
+		interrupt-parent = <&gpio5>;
+		interrupts = <RK_PB4 IRQ_TYPE_EDGE_FALLING>;
 	};
 
 	adc@64 {
@@ -199,7 +203,7 @@ sdmmc_pwr: sdmmc-pwr {
 
 	touchscreen {
 		ts_irq_pin: ts-irq-pin {
-			rockchip,pins = <5 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
+			rockchip,pins = <5 RK_PB4 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
 
-- 
2.34.1


