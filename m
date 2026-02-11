Return-Path: <devicetree+bounces-264815-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QMdfKgfUjGm+tgAAu9opvQ
	(envelope-from <devicetree+bounces-264815-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 20:09:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A7C01270EA
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 20:09:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7B66B306A526
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 19:06:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA77C352FA6;
	Wed, 11 Feb 2026 19:06:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HF7CwMZP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D67DB3542D8
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 19:06:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770836797; cv=none; b=H5gpgwOrEWXbusrXROpeVNAfvghRAQSVdoMAuv7dEKWtqwJAwtIogT3o2JvHyfE602HtVvzoN+zxQcMJUujSp28ZsW4c3ZsxS0C8WwwZBbeLVXDGdZHbcnooLF+7a+RZ9BV+In8A4QOfrXOpIEg5uHOfeUWv7ShEMlf+o4gQYyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770836797; c=relaxed/simple;
	bh=xjTv0JtmEKGAGg4jDdTInlghAZr6TLEInO/r4xCXrYQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=G3MoMJo8bLjYJdGgPoMtunBzcpC3lD4e73A/3MTiIs+K69jct7LAEOJWdpbIJ2AiQhUDLuwza37RRZCAGhCmJFWIq/OUaBTE2QkW9VIOkYTJ2xOkFVIJFXmtrby0mu/A9acK64/x1HCgzGFi7s8X9v7R9eAzi7eq35YfZPW9GPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HF7CwMZP; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-4377174e1ebso2517808f8f.3
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 11:06:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770836794; x=1771441594; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P0r+DLc8EhI/TicDqMaNt1y4zbafcSJbDHtWIpZZyro=;
        b=HF7CwMZP9f60YR3LkuX7TwQx/7g2FwYMlim5cwlnovYPxdaYNIg3XAwAGtX5Sad3jG
         pBlQMszA4pG+uUGMF5/P8PiH/u4wceRWPW2StIGbH15PKxM9YrmSDK/bywskk6ohdwR4
         vzfc0XC1pCuZV5SjZaHkPt306WSqYdcg8XMvB4xXugzmsxtPUZdMTaRuq2ro+ELlYjB9
         zRjRJ5VIy1Die6oRpvQL/aq5qQYLqAE7SeaOg/FOKHwkOzUalxDd270y/zRv44ic5GGa
         95mqw8gMJ9pjpKIPfkJpf0Ygygp3l5QTf4ee1G/3J/neN6ceoFH9iwzlRXSmo9ki/Xp4
         ks/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770836794; x=1771441594;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=P0r+DLc8EhI/TicDqMaNt1y4zbafcSJbDHtWIpZZyro=;
        b=RNeucWSqG3rYS3LSQjBbzEpQBKI2HAfi3d6EJMLyGChpYiGCVrS2MYj4E1vFI2Voqh
         LPiW0nEZ4GzhCyxX2iEgXFMxhGI1x8ZTrNY1O7oG/HBizgtJaBd9Cs7Z+J7GRRlnTnjO
         ImzEKMWPH9ulhyuwHxejZZ1XoM1RDxm62kDAHkFzDVqqp/b/4fhox7X293MXoaST/ewc
         xoQPrzYOB7SeS3E5my8hoSz23lKy9PcYrUbo0IcLw7vFD+MwUXpy2z7ONpA51AXUrAuz
         lOiP1JSYj01gcVY2+qxJ7y2OVSPyXRymD7Ci08j60SoFc1U/SlvTvFnmo5i34aX3dzKJ
         zfqg==
X-Forwarded-Encrypted: i=1; AJvYcCUeNLvAPgoh/ccMyBmqHy/YDL/9cw04ZAL7F0J3NqaGhhnUqZSuQ1kPlnyTjsnjCo5ra6WWwc8PqmZ3@vger.kernel.org
X-Gm-Message-State: AOJu0Ywyawe2kv7Ja8CWxXu4hB+MezIy/O+MBeQvy23fQBGfjbPajupK
	wjja6Ys+L7YGLPVfxcJqe+T50B7vHTV4Iy7oqEhQJMAZa5uSPxXJgDdo
X-Gm-Gg: AZuq6aJxH/HDY0ok1tNAVvw0Q62crfcfre4oRcFzjrSO2khu9clkMSmcWYkNO2gGuMf
	64lsqtnHznckLbmZiqNVWuA15UAdmBj9Q7xRh9gq7GA3+rb2xFdRzba7zWp73ztqN7rcLktzZvX
	7M1gMvmIXZ9hATiY6tTHD6uvA2uINljo5GKBntLAgM/WvTMZOsQH9cRqgdBpjrd+Y2urg27PfPp
	3lYR5plU+tnuQA9cpR6iZ+ZV7TyLmpX/lIrdad/Dyv2EmXdC2fJD/AgSDqqLPa1V92Avc7k92Wz
	o1jXRlvUpDhBIn37wnkR84jTCtt0pXSrlSAPwYLw6SFWUwZWbYHDkoYaN8GGTeTOvvO3A5eS2U+
	f7zSXHKzoFrfDXLVv1EXVO3pbHTK1PhnXWddjD+fW/N2+I2Mdtt9sZVzHj1NdNtKXNfC0h9ny8S
	17HFITf3GVnJLAFb+TRGE=
X-Received: by 2002:a05:6000:1acb:b0:437:6fcc:f648 with SMTP id ffacd0b85a97d-4378ac891f6mr930249f8f.53.1770836794238;
        Wed, 11 Feb 2026 11:06:34 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4378e122df9sm211223f8f.15.2026.02.11.11.06.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 11:06:33 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 6/7] arm64: dts: mt8167: Add the mmsys reset bit to reset dsi
Date: Wed, 11 Feb 2026 19:03:27 +0000
Message-ID: <72dcec7fe8bfd8ee7e8ef58708690268f3c07d42.1770836190.git.l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1770836189.git.l.scorcia@gmail.com>
References: <cover.1770836189.git.l.scorcia@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-264815-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,linux-watchdog.org,roeck-us.net,kernel.org,collabora.com,pengutronix.de,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lscorcia@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.213.225.232:email,0.213.206.96:email,0.213.159.128:email]
X-Rspamd-Queue-Id: 0A7C01270EA
X-Rspamd-Action: no action

DSI hardware reset is needed to prevent different settings between
the bootloader and the kernel.

Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
---
 arch/arm64/boot/dts/mediatek/mt8167.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8167.dtsi b/arch/arm64/boot/dts/mediatek/mt8167.dtsi
index caf51f203dd3..ee2792d53b2c 100644
--- a/arch/arm64/boot/dts/mediatek/mt8167.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8167.dtsi
@@ -8,6 +8,7 @@
 #include <dt-bindings/clock/mt8167-clk.h>
 #include <dt-bindings/memory/mt8167-larb-port.h>
 #include <dt-bindings/power/mt8167-power.h>
+#include <dt-bindings/reset/mt8167-resets.h>
 
 #include "mt8167-pinfunc.h"
 
@@ -189,6 +190,7 @@ dsi: dsi@14012000 {
 				 <&mmsys CLK_MM_DSI_DIGITAL>,
 				 <&mipi_tx>;
 			clock-names = "engine", "digital", "hs";
+			resets = <&mmsys MT8167_MMSYS_SW0_RST_B_DISP_DSI0>;
 			phys = <&mipi_tx>;
 			phy-names = "dphy";
 			status = "disabled";
@@ -295,6 +297,7 @@ mmsys: syscon@14000000 {
 			compatible = "mediatek,mt8167-mmsys", "syscon";
 			reg = <0 0x14000000 0 0x1000>;
 			#clock-cells = <1>;
+			#reset-cells = <1>;
 		};
 
 		smi_common: smi@14017000 {
-- 
2.43.0


