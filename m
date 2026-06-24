Return-Path: <devicetree+bounces-315257-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VFtcA+XiO2ouewgAu9opvQ
	(envelope-from <devicetree+bounces-315257-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 16:00:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 597856BEE59
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 16:00:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=NIZCsvib;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315257-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315257-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D126B301DADB
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 13:57:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A2C53B71BE;
	Wed, 24 Jun 2026 13:57:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com [209.85.221.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C53A3B42E4
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 13:57:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782309470; cv=none; b=ouyuShNFskoE0tS6eDVF5motiflU1kvHJNf6ZKu8dZSwBpdsXXGzj8fSMQqXCL3N/90xgOn/dWju/QjXLvmErc/VxUxtvlAaR6tRTVxTDwAnUIH8fEzWFkd0PztX12yCve0dPja+5axVN6VVS3b5YrlnFmFVv7ikO1jSCtjGVQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782309470; c=relaxed/simple;
	bh=rb+aNnHYdNqy1IYBy9/+KLzknx32nWz+/xZ4/3QurYg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=l+GitjB5DxXMkC8SLzlEX+EKaxrGLyZXv4k1Jd2UdgO8nZuCp0pgqaxpJGvJcYZU4zpNsxIIkidmzvsegxbeievVZkUhXxdE53uUi1f0Ziodro2C4nZ2/+ybXEa0lOkZhg0ur7Edk8vrIo2AI1HLCH1HvTbOwkLw8q7bLIfbD+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NIZCsvib; arc=none smtp.client-ip=209.85.221.169
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-59e2b96e3d3so794255e0c.2
        for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 06:57:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782309468; x=1782914268; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xh5Slloxf8WGtp7aR0d3xxTsesmRmOMMsUzMEvdtcDI=;
        b=NIZCsvibgY8eFMchwY0YhjUkHdTLhr/QQgus/AwA94x+l+1+a3+d6a7cCbsa8svLPw
         Zqj74HdqrCHsSaNZfZ0a+caxmVvZJlJwghtCpRjZeuxMuKgF58N01LRKQwKeBjGCZ3eY
         5GavNMdb1K0bn9hayJwMrmJYheErIM+QosLDhVHYMSpmHI5okaAIQrCAgj1tyzgZCI0h
         JPlQCeTZerH9IByJk3j/ZY++ub7MBvoKdb6/F4pg72uGzp/MZ+Gw/2a6aMnfI65K4AdH
         JQFmrLWMrssKP0haUvUWz87z5Z0S6v4jDrV28enVGIlB9fb0nBjAFOvcKjhW+sNEggMs
         Qvcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782309468; x=1782914268;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Xh5Slloxf8WGtp7aR0d3xxTsesmRmOMMsUzMEvdtcDI=;
        b=PWlAJNeCnyOROsM1WNwAaipHmMsH6gbQYi101PIX06NUrnO12C6HQPaJ+zieqLObwu
         2MvgkVTcBmyxXmfHSazmAd/SmQJ0Sf6cdHYmaBRip5U2s14g0XofdqCjUqKd0qBjshfW
         XQFmGqCzijD+/Blq09YplBdnp9D23WNTTcsiVcdhr3TzekmPEaYtg2X3ccxFoKDvlT1K
         dOcRAFedHnlICxsT2V0kz8sQIgif1iQCmhNntlUkKoa0cVb5Ox7oaCnfyvWqn3KmdQ6g
         DU5aUdH9Nwb0OkbnP87Ovo84zcQ5JFhlE0LOZR0RivlfVYePrd41Xv0/RDkpQN6zrhx+
         8sJw==
X-Forwarded-Encrypted: i=1; AHgh+RpsWriI4HStdllTYzczcnGXyUIsahkYuEglhJvI3ZZhxfE1MGeBJdHJ8fpn8ElImPckd5TSyb4Fl74m@vger.kernel.org
X-Gm-Message-State: AOJu0YwS3Khs17hsOjVmPhN17lTokSYc1lZuoPsfF7pDP0hDJTLTnITA
	eqKCf1bx/WJqbmeV+KyI1rDIKimoEnDEB/IeY1/IHaxc5zGNdiZRX1Sk
X-Gm-Gg: AfdE7cmingLp5e/a2Epia4tbZETLUQerioeam5Mu2oxUviQaI7yZN+Y9ZvJl72Gxpgs
	x8Z83iCSOcvzq8QXPfZONmjPnfeWvy5zN1HlA4bgA8THMzvx6GOBm3PG5Md9dcpjuZ5JI4f8qgO
	x0RvqfoNIjvGwHUOScXNkxWBScaB4NpZrtI+V/l7QuDX1uvOIe+9W/aWg7ZnPt/7QTld5Z7rV3g
	VMNk5LdsUKI0db6I2pchKlW5N7NKdOUoy9uctq7VGhtqaAeBTpz2b/qbb07SIdPnJuc5iiXaQN5
	oe09hLTq6aW15Uk7HBirSWuJvOUobrYdDahuoACHYuIG1wI0kqZs48T0xVXWeK6Zai2AOmUmXNd
	4SRLNKkRaSbHdk08a+rqwLbVZGQLzNZMIF3Y5EM+6pmw4VrvjtDXKcZ8dNBtQDYgJkpufUpbrMe
	ur4QUmoXJJIp9wNO3YCSv4CE82hDkCmRT7YvIC/UhbRktGbg==
X-Received: by 2002:a05:6102:1611:b0:723:b92:31b6 with SMTP id ada2fe7eead31-73115d8fd1dmr1491466137.27.1782309463680;
        Wed, 24 Jun 2026 06:57:43 -0700 (PDT)
Received: from arch.localdomain ([160.250.247.70])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-72ba2dbc17bsm9805730137.6.2026.06.24.06.57.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2026 06:57:43 -0700 (PDT)
From: Jun Yan <jerrysteve1101@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Arseniy Krasnov <avkrasnov@salutedevices.com>
Cc: Jun Yan <jerrysteve1101@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 2/4] arm64: dts: amlogic: meson-axg: Add missing nand_rb0 pin to nand_all_pins
Date: Wed, 24 Jun 2026 21:56:42 +0800
Message-ID: <20260624135650.727077-3-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260624135650.727077-1-jerrysteve1101@gmail.com>
References: <20260624135650.727077-1-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-315257-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,baylibre.com,googlemail.com,salutedevices.com];
	FORGED_SENDER(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:neil.armstrong@linaro.org,m:khilman@baylibre.com,m:jbrunet@baylibre.com,m:martin.blumenstingl@googlemail.com,m:avkrasnov@salutedevices.com,m:jerrysteve1101@gmail.com,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-amlogic@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:martinblumenstingl@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,lists.infradead.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 597856BEE59

The nand_all_pins pinctrl node was missing the nand_rb0 (ready/busy)
pin description, which is required for NAND controller operation.

Add it to the pinmux list.

Fixes: be18d53c32b2 ("arm64: dts: amlogic: meson-axg: pinctrl node for NAND")
Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
---
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
index 6457667d974e..8ca3ac09b306 100644
--- a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
@@ -481,7 +481,8 @@ mux {
 							 "nand_ale",
 							 "nand_cle",
 							 "nand_wen_clk",
-							 "nand_ren_wr";
+							 "nand_ren_wr",
+							 "nand_rb0";
 						function = "nand";
 						input-enable;
 						bias-pull-up;
-- 
2.54.0


