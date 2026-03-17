Return-Path: <devicetree+bounces-276827-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0PEZHx+iuWn9LQIAu9opvQ
	(envelope-from <devicetree+bounces-276827-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 19:49:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2022B1288
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 19:49:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8B2C03143412
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 18:46:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81BD43F787D;
	Tue, 17 Mar 2026 18:46:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fs/i1f67"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B349379966
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 18:46:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773773173; cv=none; b=GBupm9C/7QHvUSlKKKzyd0KV5ghr+feB/SJrQKpEJ2ZIu2kYDbr34kK13CJErIY2dsiTDUX7wtfD9Tu6YQpNYdFHuxNckNo8YEY/TuJYk78m477C5IzQVwuFzrp9EtPTPomodVrc8RA39POxU3WHqGYy5YVZ8deuB78KJVCtiB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773773173; c=relaxed/simple;
	bh=A3vo+lSyWqpioUBzuGEl518evPrqJQ5bf6SRn5b+iHA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WlGX6sj/YB8GHoSAJSmf61I0Pi3+mxy3FMTyd7nFUnss/vaio3rMv7/5KcILSe6fblUy6mhbt9QRHQvR9Tj0oNodP1YK+q18bk2QXrq1nR6q69YnWoUphALYMH3GS8fxqPlu1ZkfObMLdZFuDKJlg5dpyQ+2to0q9f8hrvGy8U4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fs/i1f67; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-485410a0a8aso55166085e9.2
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 11:46:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773773170; x=1774377970; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5bd47LJ2tcZUp4fxKJyryk+1k19iRlk16WHTGOaLdME=;
        b=fs/i1f67uyb1Met3ZyHHUxUzh+D2xEDaaQM3ROg70PLRZ9I46dgFDxrQYsuQRGSkH6
         ntmiX+x84/WdgwtxN0tLuwI8R3khmDT7uPbjQHQNMgDIczlGacksBeiIDg9Lamfqlitm
         OEp3P0G+BbXOU1vf4EthU3MCYoQqVcfidJ9GsJR63jTqEoywp1s008z5KHZ4HdUdsp89
         RZeC5I8efwweFRB9s3i35xa3pRODjPUf7E7TKXnBCSy9QkNEkxsE6kLSD+FUzalMWSrj
         i3/ZMpIDOX0ncqoRPiG72+CX68vwUapC4LH74aLnFdFWPCW8mj/XRbiwo1gQx7ncXy1u
         e1Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773773170; x=1774377970;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5bd47LJ2tcZUp4fxKJyryk+1k19iRlk16WHTGOaLdME=;
        b=okeUx8vHz5O8fVlXPLe7Wd20qWOZSzTeeeR0CspOroURDqj0bEVMn6ZejcLGssSxGY
         S9Kyz98DC9zSAKtfSP88oMJNm8F5D0+LRpWCiAepWiBCfT/HcNP+Wya0fWhA/M4CgHan
         fDf2p1oRWpKDUSFPJTt+QueNNhQME/N/RH93FrPUCIsDIECujvHYng8IxADWBRc7Z1BG
         y4bFjQbNOg2J9mOLdMGDiIx78tFABXXACTYC5uPK+OqrOrOVbq21Mxx1PKeHd2AgdFbH
         ldxxy7GufxJBZEo7IrBrSFP2NHaeCXRJR+x5jDzQmu+HidjaXszNvWEUn+N5GBryp6km
         HG3Q==
X-Forwarded-Encrypted: i=1; AJvYcCU7G1suYKy6WFYL2BqO7yQDIdMm2QA2+lOtWFri1rD33GAfSHQUyRQxnsHu9XYXhND4RQytzlYYQPYB@vger.kernel.org
X-Gm-Message-State: AOJu0Yx48RhE8WdIQ8kp7ydZ/x84bQkTQHB8dMEER8kMg12CqicNlMrG
	WOYEFnOpiivjZUXLqgGognBnQXBjQQdqYrsy6fGnxs0wxbePc2iTbcSz
X-Gm-Gg: ATEYQzzFSUYo8QmWmvbiCCpxUf/4Qotde6Y64BbkdwmQnQrOB0jzYSEOowMl543iHdg
	qnlCkmf9XLcwdDyE3uMaBTdQTMq2vBlag8Wb0FC+VPLzMywZQkZ5GRg+13wjmaXUwU2Q61YCQIR
	vkVfFZnOTaU3IQx+NxleoqRKrVPFz9Xi+xyVWQNxgZ4wmHIAHXTOhx0OuAIJ8gUTJnTFbTITtzA
	HjkH5nVbim7G6Vt8H9f2+DGkko7rTUIfaHi0OT9oAdEtKU0N8LKmkPqv4iyzNqSvDzs1HTHovRG
	HGRLpxuyQmczzuR+oM39LypeJ33I1ESiFBF636vU9M/iL7RqOA+XeJVptUuYaqqemEQ0i4FxvJ7
	xRDAb3hqpBkhpEK1elcRfPapNChWqigH6hhsGMqMi896OXkJ8hmA74ddNjtfWSs0PwH7Yoyvbow
	QSXMQpJo4O/rs5Woe6ynM=
X-Received: by 2002:a05:600c:348b:b0:485:4552:8fbb with SMTP id 5b1f17b1804b1-486f4457d26mr10995495e9.22.1773773170348;
        Tue, 17 Mar 2026 11:46:10 -0700 (PDT)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f4ba760esm102725e9.24.2026.03.17.11.46.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 11:46:09 -0700 (PDT)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sen Chu <sen.chu@mediatek.com>,
	Sean Wang <sean.wang@mediatek.com>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	Lee Jones <lee@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Linus Walleij <linusw@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Julien Massot <julien.massot@collabora.com>,
	Val Packett <val@packett.cool>,
	Gary Bisson <bisson.gary@gmail.com>,
	Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
	Fabien Parent <parent.f@gmail.com>,
	Chen Zhong <chen.zhong@mediatek.com>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-gpio@vger.kernel.org
Subject: [PATCH v3 4/9] dt-bindings: pinctrl: mt65xx: Document MT6392 pinctrl
Date: Tue, 17 Mar 2026 18:43:07 +0000
Message-ID: <20260317184507.523060-5-l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260317184507.523060-1-l.scorcia@gmail.com>
References: <20260317184507.523060-1-l.scorcia@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276827-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,mediatek.com,collabora.com,packett.cool,vger.kernel.org,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[27];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lscorcia@gmail.com,devicetree@vger.kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1D2022B1288
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add a compatible for the pinctrl device of the MT6392 PMIC, a variant
of the already supported MT6397.

Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
---
 .../pinctrl/mediatek,mt65xx-pinctrl.yaml      |  1 +
 include/dt-bindings/pinctrl/mt6392-pinfunc.h  | 39 +++++++++++++++++++
 2 files changed, 40 insertions(+)
 create mode 100644 include/dt-bindings/pinctrl/mt6392-pinfunc.h

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
diff --git a/include/dt-bindings/pinctrl/mt6392-pinfunc.h b/include/dt-bindings/pinctrl/mt6392-pinfunc.h
new file mode 100644
index 000000000000..c65278c8103d
--- /dev/null
+++ b/include/dt-bindings/pinctrl/mt6392-pinfunc.h
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


