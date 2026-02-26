Return-Path: <devicetree+bounces-268909-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SEbmCBBhoGkRjAQAu9opvQ
	(envelope-from <devicetree+bounces-268909-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 16:04:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C53F1A8324
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 16:04:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E65BA30420B9
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:59:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 662DF46BF;
	Thu, 26 Feb 2026 14:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QTz4e9jZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352323E8C43
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 14:59:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772117981; cv=none; b=datTWHJVsWiZvoZav2J6iJzXrWto7V5uPuT37AdN0U7C1aCWL2X4aLxoqhGuDLvEiDNJnCUAUbkhHge2Eq3zqpBr8vP4+sSZQIJANeyH2Ns7K4hzs8NglT4zuw+eGuvttdbY+4OJn3YXXnF4YhiTS6y3XcnoC5z9hPgPPGjECiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772117981; c=relaxed/simple;
	bh=wsYjHllVPGWLdspJ6vZQfkvlXi19oj5USAJ5Lg6QDJY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Owjae7PHq9J9r74TvOpYzjbJqE5HEXa6QmK0JVvQ9cE5iJiM7Ms19BOaTaHYbmp2h3/kGH5QeIjJDVfxCEVVllBRGigIwTdKVIcsg7dtJYWkuGhqBPCcjJZOK62gOUcVzEXKW/e49Mx4RVAFwEGZI5Jqt7/4dNdLilIyttT2eIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QTz4e9jZ; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-48372efa020so8256005e9.2
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 06:59:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772117974; x=1772722774; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Tnnm+dYZ95GHWrygSFjI8gwx36ZKSldeg1Xff84VKQE=;
        b=QTz4e9jZ4RwGSAKSWsIrABpUDiw9T9G+1pMJZEREnNaSVooiHG+SU3CtCUPlSvNUhW
         8prebekVBmIuE72QVKFHpp3W/Tjkl1tIzU22R2MPQ6GvtaStXsvCRczsvwhs8hDg3Gln
         7c/ij6kAT7qCPTUALgL6Q3koyQIt1/pfQgfonKxuWZESXQA6qJDvuv2nvtvHCkbfepzB
         Qg0umLWm+ezP34MKMiFjmCMbUpfN6i33D0La/7GIoRStq2cGbj9dcRb6eTPTKnx19o13
         gbFfjMQ2SHRy2ARfq+QzD9hwhuvTqGWo/ZcbTyGzuihJ8B1lWWeWaMeu8hAJ+Ox1Zevx
         ir2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772117974; x=1772722774;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tnnm+dYZ95GHWrygSFjI8gwx36ZKSldeg1Xff84VKQE=;
        b=Mqd8h2yFPgwmlSJqveuMGfR2/tGYJcH337o/F1UYvyc2greIxQlw7odnBkmwb2344t
         ENMROL1ac40uB6nIwMNusFZwbbU8StH/SSDs5KdJy1udZ681t1GMC3r7e5QoTCbpkhnU
         qos96qlzLOvMobnNpI73KAHjoD7NdWI7GpBGTye4udU3dAdK/KiAvQ11lsGcbyehjmZB
         V+3wNHIktyKEnqnfXMwS6agsTi6FacTXEvB5HtZk3nJAJkN+MvjtNFSIaiqmah8V5ujV
         YKCQ/n0UaRpivl8cjmurZZ/K/p6CPq9CLbOkbywJ5BoRhbnSHLblOGMnupOd03zzKmbd
         Ra2A==
X-Forwarded-Encrypted: i=1; AJvYcCXqJt2QKLl2mSMqfbo9LpeHOHLCf8K3Vnn5gxwXyjC0DeLWctaNOARsfqEkzI7kyUZqopU41PHdTuEL@vger.kernel.org
X-Gm-Message-State: AOJu0YzK9RoznSoj8xvzkpq9Cz3EpFat7ohO4Mw4rhaDRWACpfwFB4j+
	7GZE4B+srxIFzqeuTIcJgeXcuR25q3pguoYFWMHnMMRNjbb/6OI80ppU
X-Gm-Gg: ATEYQzx/V2f3msyXv+SKY7UBNb351kJXSpYW4pYLs7gG8SeRnBtam1DA54BPrdWcfaf
	shkpwUd7xvoMVvqRxDtrecXDwelfbOUsNqBBeO5ymchGa9w0fKyH5pvCc8Oy8Xje8A92w5ci5jZ
	6w8RKxrTzKhXo6dWcr8UdgAw0YzYHEBcQFNJApaMp+cj7EQ+cV5FkIiXjK0dFIWErQLYKKBLbSK
	Zm6rGhdMG15aifZMY78wP/zyiX1g3ITnQCP/gCTfpzrtvV8wO+FkUKuMF8IZmOEIYmr+RwUG7+x
	MhnBN3n7ovtTefkXoGFql1twSDRl3ELwWU8DnqfacQihCBWtSw6avcHkdaVNmewvrX937Kvk/l3
	zwzzwD8FTfGPGA1JDrZTfbMiHxof1hYeksvqHfBTPRT8vG6hSyH7RLN2T5LNsKQTYGH5jQhdB+4
	xwTFulfNNlErKgziZyWj3Stk2Pg89HxP7j9pAIn8eWKd2ksn1EOyZXcFMAzvW6ksa8c7ZE
X-Received: by 2002:a05:600c:a44:b0:47d:586e:2fea with SMTP id 5b1f17b1804b1-483c217e8a9mr93249395e9.15.1772117974116;
        Thu, 26 Feb 2026 06:59:34 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4766:6506:d16b:e2d5:7fdc])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfbb465bsm92018865e9.3.2026.02.26.06.59.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 06:59:33 -0800 (PST)
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
Subject: [PATCH] ARM: dts: rockchip: rk3188-bqedison2qc: Use mount-matrix
Date: Thu, 26 Feb 2026 11:59:16 -0300
Message-Id: <20260226145916.2729492-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,lists.infradead.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-268909-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-0.998];
	DBL_PROHIBIT(0.00)[0.0.0.29:email];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5C53F1A8324
X-Rspamd-Action: no action

'rotation-matrix' is not a valid property.

Use the documented 'mount-matrix' property instead.

This fixes the following dt-schema warning:

accelerometer@29 (st,lis3de): 'rotation-matrix' does not match any of the
regexes: '^pinctrl-[0-9]+$'

accelerometer@29 (st,lis3de): rotation-matrix:
b'1\x000\x000\x000\x00-1\x000\x000\x000\x001\x00' is not of type 'object',
'integer', 'array', 'boolean', 'null'

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3188-bqedison2qc.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3188-bqedison2qc.dts b/arch/arm/boot/dts/rockchip/rk3188-bqedison2qc.dts
index edc2b7f9112d..b56095fc2441 100644
--- a/arch/arm/boot/dts/rockchip/rk3188-bqedison2qc.dts
+++ b/arch/arm/boot/dts/rockchip/rk3188-bqedison2qc.dts
@@ -262,7 +262,7 @@ lis3de: accelerometer@29 {
 		interrupts = <RK_PB7 IRQ_TYPE_EDGE_RISING>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&gsensor_int>;
-		rotation-matrix = "1", "0", "0",
+		mount-matrix = "1", "0", "0",
 				  "0", "-1", "0",
 				  "0", "0", "1";
 		vdd-supply = <&vcc_io>;
-- 
2.34.1


