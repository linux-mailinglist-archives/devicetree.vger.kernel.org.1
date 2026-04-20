Return-Path: <devicetree+bounces-288889-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eHAfDPSc5mmeywEAu9opvQ
	(envelope-from <devicetree+bounces-288889-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 23:39:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D812D43443A
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 23:38:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 498233027321
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 21:37:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4318D39F174;
	Mon, 20 Apr 2026 21:37:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AgJXUVJ+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC29397E91
	for <devicetree@vger.kernel.org>; Mon, 20 Apr 2026 21:37:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776721074; cv=none; b=Oel/MekEI8L+c/pragRUL2FHCrue6Xs7eEoMvVx51yc1t4U1vGwj/bpOynC8dT2FSlULGyfqm8OM50V2dTe3wYR7VpHQteZwzhWcSRi7mQ/FHuDDzIYznOlY3P9rac0gAMhOcJ3Z0n5HXDMYjs3KHMq3ywiFWy0bsD261mCT3qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776721074; c=relaxed/simple;
	bh=ONzx1TVLssQ2quIYxWPdg1+c0cg1jkFrd/S0xZj62AU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QNtGGpIdxtQme6AW7I2hyNeLSL0lXY97XKZSJYQJ2VaSVP5qRIGCaTOlAv3RPzo+o4+8/BNPIchaqVP11zwp57iWbyWNJL+gjNDJs2rMePm6AX7ljKC3MPpAZPsfRzDPLTu/fcTjKes6d+Sri8tYEu5dCL/2laPReAp/opL2ohk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AgJXUVJ+; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-488ba840146so33648585e9.1
        for <devicetree@vger.kernel.org>; Mon, 20 Apr 2026 14:37:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776721070; x=1777325870; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FkjylHhPY5Zp4sZf/mKL22KMI1gZWywJJ0iSsDcvxlg=;
        b=AgJXUVJ+fQmuigUW1WebP5+JaMMx3d4aUe08m8Doio5aOt6APm25qQce6HDe0zARmY
         LqVqjfYsainkg/8xwx65gRR8sT9iF2tMkIrjCp//0gFm6MAjkQS/k9KmYdSTBq23Pev6
         +m7+MOMHzXVOmwfUYWT1amQYoNJj/X/K2DNrbbnVnWikGEV/MNDiEjW7KXw/JFlqiDQ+
         5hbJ+SgcCr0jv+Znf3Pq0NlfkcxJi07VUkTq6BD6lC5i8vY0n5UfGjD3daLm8nK9rIAo
         ipfdJ/aqXuQX+YDdm1obiaNrBZY4uLJwj1yi7FyBstyGmkI3y48dCCZrG25uvReFt5n7
         UPKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776721070; x=1777325870;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=FkjylHhPY5Zp4sZf/mKL22KMI1gZWywJJ0iSsDcvxlg=;
        b=P624dpVUwLieouN9GGYXtA8D+0jrrVtoMF8eW/oJiekqKtIoYKRytWxii7OaRWLown
         RfnV0KTAn45b9twum+tipZTN5RiI5t9ZSMtBlCjY5+213qPusE/hV0Ge4jrLJ4IWXMys
         zEWzLNJEQHHBVaff9bqbjYz1eVHy8OjjH0HMroQ+km6rBG7jyx1FYBTHcXm4U89D2p8T
         /LlYF/7xT3134TO6OaUuZ2S1Rc1IJMpiFbcRvYv8vXneEaZld9vqEeQdRGKFge+QwQlS
         ztvv/DRlVMeSq9hhLxmgSoFEobhSD4fmz7HkpDPFXPRVUOAqJeccfFQSbY7iHTdPy1L6
         G+xA==
X-Forwarded-Encrypted: i=1; AFNElJ/7Q/z7rTdRnmXsYq6fpuIWrx44dIKl6NJNcJfVttAqASbKGxcjiav4+dtjlxhzDS3kCenpcT1BZ/SD@vger.kernel.org
X-Gm-Message-State: AOJu0YwOUW5s8xldagd+qU2oj3iKItZccJ4pxrfuPeTU6a+iuyC8Lxm3
	orObpsSQGrFVWRAmbhcwPgq7VbNW1xI43NGbcFxy5XD2ME9jsYIcIeYC
X-Gm-Gg: AeBDietb3C7tkN9mZwoBymtaKAOFnYrB4YrAsMq05nWqYYVQG0OYHELtoWyY5hngKWI
	ny1fpatsbZMBlVyI9kLH/w4UYciG/6kLRxya8YMrOFvLYopRmu0qV6uxCu0WaS56AR3psYtrHSk
	6yppqMlf/7vs+mIPUVeWv1AX6pRV0e1uwyHFxkSK5Mamy/KIZpM6ETkTvgG2GKm5jPQI7OSSPqf
	6GEzUSPDboCqkxqFC+rudcqNttNQGmWSfNAkdBnqszVl4Tb04nkYG3M6yz6avTe1Np41q7oJeeq
	Pg3fSxVhdYNBBF2XufgEvQ/ecJOM3LMLpNLdC7d+27/UTJ/0oUXydJPq0wfIg3k/jPCoIKjWAls
	CJyWC51LqHkSZRTsyZ79tsz+HcA+VF+auWR6WKhEz/CuiJ2dIobxXSubxwL7uy0Qs+s9RKRlz3i
	dpKBCXDzgRuU3guGcMBDNsWGlYqSZGjQ==
X-Received: by 2002:a05:600c:8115:b0:488:ac01:72b6 with SMTP id 5b1f17b1804b1-488fb77d7d3mr178338515e9.21.1776721070421;
        Mon, 20 Apr 2026 14:37:50 -0700 (PDT)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488fc140c82sm289500355e9.12.2026.04.20.14.37.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Apr 2026 14:37:50 -0700 (PDT)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sen Chu <sen.chu@mediatek.com>,
	Sean Wang <sean.wang@mediatek.com>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	Lee Jones <lee@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Linus Walleij <linusw@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
	Gary Bisson <bisson.gary@gmail.com>,
	Val Packett <val@packett.cool>,
	Julien Massot <julien.massot@collabora.com>,
	Fabien Parent <parent.f@gmail.com>,
	Akari Tsuyukusa <akkun11.open@gmail.com>,
	Chen Zhong <chen.zhong@mediatek.com>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-gpio@vger.kernel.org
Subject: [PATCH v5 4/9] dt-bindings: pinctrl: mediatek,mt65xx: Add MT6392 pinctrl
Date: Mon, 20 Apr 2026 22:30:03 +0100
Message-ID: <20260420213529.1645560-5-l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260420213529.1645560-1-l.scorcia@gmail.com>
References: <20260420213529.1645560-1-l.scorcia@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-288889-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2600:3c04:e001:36c::12fc:5321:from];
	FREEMAIL_CC(0.00)[gmail.com,collabora.com,kernel.org,mediatek.com,packett.cool,vger.kernel.org,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[28];
	FORGED_SENDER_MAILLIST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lscorcia@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[100.90.174.1:received];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: D812D43443A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add a compatible for the pinctrl device of the MT6392 PMIC, a variant of
the already supported MT6397.

Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 .../pinctrl/mediatek,mt65xx-pinctrl.yaml      |  1 +
 .../pinctrl/mediatek,mt6392-pinfunc.h         | 39 +++++++++++++++++++
 2 files changed, 40 insertions(+)
 create mode 100644 include/dt-bindings/pinctrl/mediatek,mt6392-pinfunc.h

diff --git a/Documentation/devicetree/bindings/pinctrl/mediatek,mt65xx-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/mediatek,mt65xx-pinctrl.yaml
index aa71398cf522..1468c6f87cfa 100644
--- a/Documentation/devicetree/bindings/pinctrl/mediatek,mt65xx-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/mediatek,mt65xx-pinctrl.yaml
@@ -17,6 +17,7 @@ properties:
     enum:
       - mediatek,mt2701-pinctrl
       - mediatek,mt2712-pinctrl
+      - mediatek,mt6392-pinctrl
       - mediatek,mt6397-pinctrl
       - mediatek,mt7623-pinctrl
       - mediatek,mt8127-pinctrl
diff --git a/include/dt-bindings/pinctrl/mediatek,mt6392-pinfunc.h b/include/dt-bindings/pinctrl/mediatek,mt6392-pinfunc.h
new file mode 100644
index 000000000000..c65278c8103d
--- /dev/null
+++ b/include/dt-bindings/pinctrl/mediatek,mt6392-pinfunc.h
@@ -0,0 +1,39 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+#ifndef __DTS_MT6392_PINFUNC_H
+#define __DTS_MT6392_PINFUNC_H
+
+#include <dt-bindings/pinctrl/mt65xx.h>
+
+#define MT6392_PIN_0_INT__FUNC_GPIO0 (MTK_PIN_NO(0) | 0)
+#define MT6392_PIN_0_INT__FUNC_INT (MTK_PIN_NO(0) | 1)
+#define MT6392_PIN_0_INT__FUNC_TEST_CK2 (MTK_PIN_NO(0) | 5)
+#define MT6392_PIN_0_INT__FUNC_TEST_IN1 (MTK_PIN_NO(0) | 6)
+#define MT6392_PIN_0_INT__FUNC_TEST_OUT1 (MTK_PIN_NO(0) | 7)
+
+#define MT6392_PIN_1_SRCLKEN__FUNC_GPIO1 (MTK_PIN_NO(1) | 0)
+#define MT6392_PIN_1_SRCLKEN__FUNC_SRCLKEN (MTK_PIN_NO(1) | 1)
+#define MT6392_PIN_1_SRCLKEN__FUNC_TEST_CK0 (MTK_PIN_NO(1) | 5)
+#define MT6392_PIN_1_SRCLKEN__FUNC_TEST_IN2 (MTK_PIN_NO(1) | 6)
+#define MT6392_PIN_1_SRCLKEN__FUNC_TEST_OUT2 (MTK_PIN_NO(1) | 7)
+
+#define MT6392_PIN_2_RTC_32K1V8__FUNC_GPIO2 (MTK_PIN_NO(2) | 0)
+#define MT6392_PIN_2_RTC_32K1V8__FUNC_RTC_32K1V8 (MTK_PIN_NO(2) | 1)
+#define MT6392_PIN_2_RTC_32K1V8__FUNC_TEST_CK1 (MTK_PIN_NO(2) | 5)
+#define MT6392_PIN_2_RTC_32K1V8__FUNC_TEST_IN3 (MTK_PIN_NO(2) | 6)
+#define MT6392_PIN_2_RTC_32K1V8__FUNC_TEST_OUT3 (MTK_PIN_NO(2) | 7)
+
+#define MT6392_PIN_3_SPI_CLK__FUNC_GPIO3 (MTK_PIN_NO(3) | 0)
+#define MT6392_PIN_3_SPI_CLK__FUNC_SPI_CLK (MTK_PIN_NO(3) | 1)
+
+#define MT6392_PIN_4_SPI_CSN__FUNC_GPIO4 (MTK_PIN_NO(4) | 0)
+#define MT6392_PIN_4_SPI_CSN__FUNC_SPI_CSN (MTK_PIN_NO(4) | 1)
+
+#define MT6392_PIN_5_SPI_MOSI__FUNC_GPIO5 (MTK_PIN_NO(5) | 0)
+#define MT6392_PIN_5_SPI_MOSI__FUNC_SPI_MOSI (MTK_PIN_NO(5) | 1)
+
+#define MT6392_PIN_6_SPI_MISO__FUNC_GPIO6 (MTK_PIN_NO(6) | 0)
+#define MT6392_PIN_6_SPI_MISO__FUNC_SPI_MISO (MTK_PIN_NO(6) | 1)
+#define MT6392_PIN_6_SPI_MISO__FUNC_TEST_IN4 (MTK_PIN_NO(6) | 6)
+#define MT6392_PIN_6_SPI_MISO__FUNC_TEST_OUT4 (MTK_PIN_NO(6) | 7)
+
+#endif /* __DTS_MT6392_PINFUNC_H */
-- 
2.43.0


