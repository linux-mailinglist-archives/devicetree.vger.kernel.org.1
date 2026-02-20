Return-Path: <devicetree+bounces-266893-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aLBiOZ01mGn/CgMAu9opvQ
	(envelope-from <devicetree+bounces-266893-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 11:21:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AACB166CA1
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 11:21:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F07183017005
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 10:20:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04BA630FC3D;
	Fri, 20 Feb 2026 10:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RL7ZhHau"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B78BE33C534
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 10:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771582823; cv=none; b=JwL0KAwaOGxl/g9IkftS8lzDD3yfof7ghrswVdiYtgHYIY7de1IUHo348J3OHmIOnrWIEF2qSS7ULorxgrwPVugSyHkuCcScgRQSkuk32q0CDqJVAXgX3R8f7CBgBdlwRRmxlJC133+Obw0CpkaTdCChk83I45Zi4xcpJOBebuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771582823; c=relaxed/simple;
	bh=4kprGfxJoBYNJd9hGWcL+7n8VKUWVukhvPranQWgB9I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=K/c+/aHTe3Fz0FxYg0aT2Xej4a6wJEJDBXbbOYMFAROvW4hspwPwCG/6kQ/zdfZ31J8t27cvbCBnqeTkLjN2OJ4AWp0/wKQTTBgj8HHOuSMSdLP8FxDrDhaPf+Jzc7IXEahVTBSZdQE5wXT9ugTcn6Eby1zbrMLxYR7fn65pYl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RL7ZhHau; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4837584120eso13780105e9.1
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 02:20:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771582820; x=1772187620; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gi6+0GPlrxP+T4lvtrMwmXTOoBG7PA7x/GXmqLf/XcI=;
        b=RL7ZhHauFilZuGI2Snep76XceAJyM5f3KYJaGkci1R3WQavqHtnM05UxU53pSuLAtb
         YAXhFtj7mVAvMKtpn0TMXIqdKXBzOqYbzvyz42i9mexjjNIqDgzcxvkb1wM8VdxmcPld
         tcCbi92ounOH1NwMzbjPVWUviTpK/CLxJEu19fFS6oZtvs/naW1sNXbW81whp/Y7QyT1
         jfoIwaDTpr8Q+46jpzE3edjbMDREEoTRJHu0P5nro+aptugINyeTnfGPpU3/5SqVOEqk
         j13bCH6CM276419wkXuzsoeGPBQWQGl2a4hJPxU2jyJhHM594DeEJAZ5pgYl7REnKJXr
         Hm4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771582820; x=1772187620;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gi6+0GPlrxP+T4lvtrMwmXTOoBG7PA7x/GXmqLf/XcI=;
        b=StF4zGVh4fj5PAxv3aiPUoyxn5GCwSHRIjlT1Wrigd8lVwp76koC0IEbKjqgL9q+jl
         FxsM+fbJ1uD80qqNItV8DxKP5RrVM/TS4eyj33xKZfnVa6pg8eM80/0M4Zez0LLaDzh9
         k/YP9EZtvLz1lIyekHsjQCHrfuJVTEnv2iE0dsoXAWOaTPVxx3R1sT2AOQ5/iZnVqb74
         U+85WnBG0pGfoVL8dE1ToIvF8RIDFB4k2JEpGlskluSa3oafOkfZUv8Iae7N5D2hWJmK
         Bj27Y6oAkkc0uNdhbBr9ES84KvaDMpOUfZ9TKF7fExhAjQfluFl5qQ58sgmDEY9GqSs0
         0Ueg==
X-Forwarded-Encrypted: i=1; AJvYcCXcdWqN9jAMSFfSvociQk4y07tW33BNbuJqbv1I6T/ly8Bdmgn26WPyIfbaJ+aps/xFijRQyazAUOJZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxJjlOaMIZfHSw6LeFNmqJ7ESvOQuT3qHWpDXusUcZ6KE92Jf0o
	7KfHirwGrCCIo9ibntcuuy/bkLHWR7FVUAHZLa+GXvXUT3HCTc0YpXSh
X-Gm-Gg: AZuq6aLuH4DcpToaAKn7skFmpqNKysqWuMo4ueePo3DSZNeFSsNkPTHX847iZ9GXlFD
	QY0f8xcKEnpVHo8t3DlfzrtUKbMiWOrXz6YiyzGubSv7eR+L5ediDhpVFJb85OuV145D4/7zqRv
	qoWerVf7IcB1qgpLW87gEl89vPRO1u3u6rhq54spnVxqpA9FyS/LeQBb52mASBeQVhnb22zt8Pm
	BkVzG3q5J4ShBqw4sr9tU3xnGxysHJ5ReoTSCOM/cQEySSGuDjywdofbkpqACnXatIapwvKAXZr
	yhlQ+BBs+wLLtMuZGAaa8di91Nzr/xcpEXzFY4MzwSqF5gE8AGNs/SiVIDZIwt7akS/M7uUWmp9
	DeVp9fuaW2LpvG1BEaumrg0sLDOEUEPck/2d8s2/sgn3OliAlq09hJrXaXAUHNz6mkKbU2NZsOq
	fbEIGgG5D8VbDMohKmbQfv7oOPqLkTeXrVwdNzVPhojjWYkXU4C0Mb
X-Received: by 2002:a05:600c:358c:b0:480:426e:9d38 with SMTP id 5b1f17b1804b1-48379be6056mr351881735e9.27.1771582819791;
        Fri, 20 Feb 2026 02:20:19 -0800 (PST)
Received: from [192.168.0.253] (5D59A51C.catv.pool.telekom.hu. [93.89.165.28])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-483a3df4859sm28039015e9.2.2026.02.20.02.20.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Feb 2026 02:20:18 -0800 (PST)
From: Gabor Juhos <j4g8y7@gmail.com>
Date: Fri, 20 Feb 2026 11:20:11 +0100
Subject: [PATCH] arm64: dts: marvell: armada-37xx: drop redundant status
 property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260220-armada-37xx-status-fix-v1-1-716180561d86@gmail.com>
X-B4-Tracking: v=1; b=H4sIAFs1mGkC/x2MQQqEMAwAvyI5b8BWsbpfWTxEGzUHdWmqFMS/W
 zzOwMwFykFY4VtcEPgUlX3LYD4FjAttM6P4zGBL25TWdEhhJU9YuZRQI8VDcZKErnbtaHw1mGG
 CHP8DZ/2Of/19P4Ov1MloAAAA
X-Change-ID: 20260219-armada-37xx-status-fix-7478c1d3b1bf
To: Andrew Lunn <andrew@lunn.ch>, 
 Gregory Clement <gregory.clement@bootlin.com>, 
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Gabor Juhos <j4g8y7@gmail.com>
X-Mailer: b4 0.14.2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-266893-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[lunn.ch,bootlin.com,gmail.com,kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[j4g8y7@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6AACB166CA1
X-Rspamd-Action: no action

Remove the 'status'  property from the 'armada-3700-rwtm' node. Device
nodes are enabled by default, so specifying the status as "okay" is
superfluous.

Signed-off-by: Gabor Juhos <j4g8y7@gmail.com>
---
 arch/arm64/boot/dts/marvell/armada-37xx.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-37xx.dtsi b/arch/arm64/boot/dts/marvell/armada-37xx.dtsi
index 87f9367aec1227c2c6de52f358d51bcff758c147..6237334833a247855bedb5c5d6c7618f5819a967 100644
--- a/arch/arm64/boot/dts/marvell/armada-37xx.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-37xx.dtsi
@@ -534,7 +534,6 @@ firmware {
 		armada-3700-rwtm {
 			compatible = "marvell,armada-3700-rwtm-firmware";
 			mboxes = <&rwtm 0>;
-			status = "okay";
 		};
 	};
 };

---
base-commit: fcaf733ca526b69595ed1d227e2cc59ddd24eff7
change-id: 20260219-armada-37xx-status-fix-7478c1d3b1bf

Best regards,
-- 
Gabor Juhos <j4g8y7@gmail.com>


