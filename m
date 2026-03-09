Return-Path: <devicetree+bounces-272654-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QD6GD3kOrmnh/AEAu9opvQ
	(envelope-from <devicetree+bounces-272654-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 01:04:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D9209232D30
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 01:04:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 10CE23011340
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 00:04:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93F707262E;
	Mon,  9 Mar 2026 00:04:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lbp9gB87"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C33A370830
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 00:03:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773014641; cv=none; b=bREuZ1s16ASI2kaW/j/ERI3fMF8a6eahmbdvzLfI4X0t+0j8wbAzYvqWi3SZ5gxFT+5hdr87Gb1JssYdJLaEMIB9fBCmRt2m1Foo6LkUg1Shqo23U+cZ1I4uk8zHi/SdvcbPHWDLmel64qfw1+iAFiQ+RWn4v+7B+D5SmHXyOhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773014641; c=relaxed/simple;
	bh=wPZiFdqCiDOOFye8FKOQoufL7cyIaxgiXa67+xHsn0s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QoqxeXiPZXml65sRGnka5xgAyo2n/UcPOHwK4+P+nqTiGk9iwOM7maroOll//F7fsCZODeVskwp2HUZi/RlCxRno59vMY8vldY0ge1ysx0X99re+w0KmmzLkfxz0/4srj2K0/i6MJqyuLRqu8xJzASxjUR7x59tNN2Og0JQOCSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lbp9gB87; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2ae4d48dc2fso33574885ad.3
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 17:03:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773014639; x=1773619439; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HkTY0vM9EzW6XUSGNuKIJpMIFfDu1qpzZf7r+qP4u6M=;
        b=lbp9gB87GRviLuybrdKpqdO+ljmRKZY5VVQHdEu+c3QBm5XVHX7wf/cMJ0SiNngIOT
         H9O7uQTIrHNMg056XFWtfEAhBUtN4/D7El/We2kp5b1gjiFBCF8p+MmBeIle3UlluQDK
         t6SVaMi+tXHpV8tUMNXFuqko6n00OOvCoq6jzT0Z0+wY4m0k8CjpdnhdDS/SmekAmwVT
         umpd6bE+4L5bB2xwL+eMr4K5ll3m9V5DQwP7U6VM/pt3E8gmXKzkixMU0cZVDIWbxNbA
         0FWdNZ6aXscakiStpIesvrUJUPa6eAnDRxIIW67zrlQrVftOup4ZhSw3O/y75p8EfhM9
         UdGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773014639; x=1773619439;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HkTY0vM9EzW6XUSGNuKIJpMIFfDu1qpzZf7r+qP4u6M=;
        b=Qs0sFucnEsJc3kNC0yBAPyEBR6RhP0CWJ5x4629LCX5pzTOHdY2hn9pIpyjOaczng3
         0BR6V0G3amHYIVv7hAtTsR8VrFYZWiloytxukwGxdlkxqcOanJIAKTigootzixFbHPwi
         7BVpBFICqStSvllC8an96X5/b2QbVm08ISzlQp0hs5Cz0Fs1CzBrZ+0CNFzJLv7lQ6Y3
         jWmYaF7uVEISIQKCJ9+8End5LH+JN+SyzwBHV2Iaanj7J4WxAY1AEh6CSlwfgRWAlxZc
         c1KjJRV6gGluVG/6cGo9L+Rq68f37OzphkdpK/rnZ8N2QyfT69TH9kZEZWw5ctQvB8Qr
         OKyg==
X-Forwarded-Encrypted: i=1; AJvYcCWxCvJywzzuSSffXN8c32olkoq4277oxUwuxJkOTPDjz0EH+QzzgsPZxGq3RBxDtNShc9NlSkeNuJI3@vger.kernel.org
X-Gm-Message-State: AOJu0Yy78DR3dvqbF/8ev+60hTLrWE2lhZuMey6N4cRgpLBzjehlgy1X
	fozSGOF++oioXHDaqzE2+E/6hkkQh+BYed5qcF+9386qYcERkYsV5dC4
X-Gm-Gg: ATEYQzy3UHRWk3HjgWcXrvwjBsQZZ8a6cEnsHARWfsf4IrEjnxa9cjnSYfh/FHVlA5B
	VndgXNzWlVy+Hn9GNkajiiel1egvAWj3TK0fTxu69tncz6+1EyxvxeJ/bKaomnotKdbxRP/YKMJ
	h5x7wteiR530z+rNIGZwocGFqIBy3Tx37gvBWZd2f169uo9jb4BzALPp//sr4ketwFL7Baj5f6A
	6VgdecwuLrNANY3AZ6pKeB9GhGnaed6nopeMDjL5mbBjJ1cVz2LrTeXFbTIA4qDIYBO2SA7KSuj
	PbhmafZwmKEchD4Q2RhsqHn6dOemCErJuk7639swAe4uLXLcXKMHGnsXcmtEv0IY83RrLTk31vj
	IeKRSC9nFLB9lSYV8E9xwNlgiy2+fm6jsPXjoWDlPBLH+tJMBj+3Ls3WNjUClw6hERkZH6YsS5Q
	nLGszIUFv9c2St9IaSFbnn5d5MObmWh64X82shUT4BHh0fTUfu+mu/1wtp8jpjnQOspvU1
X-Received: by 2002:a17:902:ce88:b0:2ae:4d23:334d with SMTP id d9443c01a7336-2ae82572cf9mr95162765ad.56.1773014639053;
        Sun, 08 Mar 2026 17:03:59 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae83e9b9c6sm104845405ad.29.2026.03.08.17.03.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2026 17:03:58 -0700 (PDT)
From: phucduc.bui@gmail.com
To: krzk+dt@kernel.org,
	geert+renesas@glider.be
Cc: krzk@kernel.org,
	krzysztof.kozlowski@oss.qualcomm.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dmitry.torokhov@gmail.com,
	hechtb@gmail.com,
	javier.carrasco@wolfvision.net,
	jeff@labundy.com,
	phucduc.bui@gmail.com,
	linux-input@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	magnus.damm@gmail.com,
	robh@kernel.org,
	wsa+renesas@sang-engineering.com
Subject: [PATCH v4 2/2] arm: dts: renesas: r8a7740-armadillo800eva: Add wakeup-source to st1232
Date: Mon,  9 Mar 2026 07:03:19 +0700
Message-ID: <20260309000319.74880-3-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260309000319.74880-1-phucduc.bui@gmail.com>
References: <20260309000319.74880-1-phucduc.bui@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: D9209232D30
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272654-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,oss.qualcomm.com,vger.kernel.org,gmail.com,wolfvision.net,labundy.com,sang-engineering.com];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_NO_DN(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	DBL_PROHIBIT(0.00)[0.0.0.55:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Action: no action

From: bui duc phuc <phucduc.bui@gmail.com>

Add the wakeup-source property to the ST1232 touchscreen node
in the device tree so that the touchscreen interrupt can wake
the system from suspend when the panel is touched.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 arch/arm/boot/dts/renesas/r8a7740-armadillo800eva.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/renesas/r8a7740-armadillo800eva.dts b/arch/arm/boot/dts/renesas/r8a7740-armadillo800eva.dts
index 04d24b6d8056..d47a6cc3e756 100644
--- a/arch/arm/boot/dts/renesas/r8a7740-armadillo800eva.dts
+++ b/arch/arm/boot/dts/renesas/r8a7740-armadillo800eva.dts
@@ -228,6 +228,7 @@ touchscreen@55 {
 		pinctrl-0 = <&st1232_pins>;
 		pinctrl-names = "default";
 		gpios = <&pfc 166 GPIO_ACTIVE_LOW>;
+		wakeup-source;
 	};
 };
 
-- 
2.43.0


