Return-Path: <devicetree+bounces-264816-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KCBWEVLTjGm+tgAAu9opvQ
	(envelope-from <devicetree+bounces-264816-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 20:06:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 66CFC12705E
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 20:06:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7C0F63006934
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 19:06:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 245B334EF06;
	Wed, 11 Feb 2026 19:06:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KfEI7SVR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E3183542CE
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 19:06:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770836803; cv=none; b=uoQ9tJ4JiP71UGFylKvLQ5DmWqlnSo9aWueV2CgxEZMoOk5B4O/pk6fpRthPO7OlU7flbJc1EH/g478DkL3D8xsN1YDw9bxtAfj4DZr4J83JiIsdja3LkgwSatFYqo5h2T9zO1LyiZ/li+NgNN/iDclygrREfps0REHpOvfyJi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770836803; c=relaxed/simple;
	bh=a4J/xWsDpMNpjLmFU5z04H5fzhBb2YVN235yoGzf9tQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UlXvXiBbhxAeDCkXK2qkaFKclfKAcpG/XgLQTpNJd370VZ/66y9oyyJ2prtw/dyg4i2h2lTtwhOwGx+qBhbjcKxtt1MTzN93IDZK53UX6WBY8VQbK3mLzR16KQtqC8jZ1Vn7cIig2CVulfN0GobrYQ+/4tQNmZiD3tVXY/zE0G0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KfEI7SVR; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-436317c80f7so788421f8f.1
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 11:06:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770836797; x=1771441597; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hdmckHOXykZv4Q2iSO3Y/ko+Sekk6KZzLLdXZC1M56k=;
        b=KfEI7SVRs4uK6U0Yrkwd/1F+XiDCtw8SpWnDufoLFbPQCfz9tzyKULg7p4xxmk6x8i
         O7RRYqZ4PeaGwV5A9OvYTE37vdW2hMBahz+O+hY6pEMdKKVLgDmQ7E2oWRN+8iOf81va
         lzy/M2xopDytLIMymzBgc2QyfOV/XyvwJ5APVFjCYg9SN/6BPX99CJBZo907H1l2SiRr
         6hmLXkqRe1GY6tr83YRc8ONwy150MS/P8rTBr5aguMLXD7j77tIkih/RV0XOeqx2P7GH
         vLfT/pqVfxVTElUClXokv50CbYbRgdI9YhIlyl3mBOE+dtwPXU7jQqoX3JWJwJkfkw9/
         B2nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770836797; x=1771441597;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hdmckHOXykZv4Q2iSO3Y/ko+Sekk6KZzLLdXZC1M56k=;
        b=i1rbp5ucOxyvgZOWVMR0ly+7WGyYl9/J4FTovARa7zDCy36/jcWegICAjGgJm+Wc5j
         L/MiWV92P7wP5lcnE1jNRUgXSU0Qs2PkbAwkMAT+twF1sYyqHAjo3eZTEfB9ASpvCrRH
         qbaPbnoDPg/VKoNbPI4DvM1cf97gmHud0gBqFahg72GSjs0MM7pj7pn6kA/4UZq/gWAa
         LATJRF5OilFPSZhL+Qvqe0M7jRN9hUkKmeDaVAEsrjSiw6d/n6ge4VgHDYaPAFEUMD/z
         V2uSfLgXy1FidX/UuoLcf2e8/+1fRq1MgixIg9fR+2wqPRhnU+0IbZj4RLaPL1TqYICJ
         kDWA==
X-Forwarded-Encrypted: i=1; AJvYcCVYIjL5Ne0UsBn0D39tuG5fKbqncggZ0yzVCJDevBCSkZIsTFigSLM75CxfvpenHWMbtF9YYuTUALVc@vger.kernel.org
X-Gm-Message-State: AOJu0YwjiTW6k7KXv++HcI3iZZbYWZxXnTqumXNezgg5WeE2wElgMBxL
	cZFLld6BZ2jN0Zkf7UQSBNNpSZcA+9LveCsg/4gvBRzPk1voC1Z7OfzQ
X-Gm-Gg: AZuq6aJOqEPIOOZWIaA99MiabwdRQat4kCPuHLOkg+aJLWLCd2LMZhx0KTlWC5Bm8Aw
	4j0R4bHhkJQNHrVChim9jo0yCBiLf6/rKx6F9xYmmA3dDEahVL/4y3BDf2ELKsycIGc+7BUNN6m
	lEXQaNQcvZ1QZydnycrmQq5hrsvgE/rlLzbCoNGZ3ku4j+cmpU9j+eUg+qevabbvLkTvYKF/mT3
	RmKagwN3lPoaiNYcyiZykbOlzdZXgR9mf0n8sYJDNZOZ1T7PdqYhXPuiPvkZSI03BTf7Uj+/kuM
	A5gMrjy0snIVEzaBS+ApiR8lJF/T6oT+1VjrDGJcZFYuDIhscCvxQIwNzq4jH2xvUSNaCFeOJI1
	itcrhJy/2fOWSTgYSnE+08DABRT7SwnfOaisBgNfnlmV5gNhTzLHZejyPsU67yUmNmK91zNFJU8
	CtwJ+LrA2HCmAAldpjPU4=
X-Received: by 2002:a5d:5d0d:0:b0:437:722d:5c66 with SMTP id ffacd0b85a97d-43779ead6acmr12591005f8f.16.1770836796836;
        Wed, 11 Feb 2026 11:06:36 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4378e122df9sm211223f8f.15.2026.02.11.11.06.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 11:06:36 -0800 (PST)
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
Subject: [PATCH 7/7] arm64: dts: mt8167: Add additional mmsys reset bits
Date: Wed, 11 Feb 2026 19:03:28 +0000
Message-ID: <6f803b6dd1f61728c17afadd2fe983e9fdc0c109.1770836190.git.l.scorcia@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-264816-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,linux-watchdog.org,roeck-us.net,kernel.org,collabora.com,pengutronix.de,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 66CFC12705E
X-Rspamd-Action: no action

Some extra mmsys reset bits are defined in the Lenovo
Smart Clock kernel sources - file cmdq_mdp.c

Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
---
 include/dt-bindings/reset/mt8167-resets.h | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/include/dt-bindings/reset/mt8167-resets.h b/include/dt-bindings/reset/mt8167-resets.h
index f77c2ca897cf..b379f8f023d5 100644
--- a/include/dt-bindings/reset/mt8167-resets.h
+++ b/include/dt-bindings/reset/mt8167-resets.h
@@ -33,6 +33,15 @@
 #define MT8167_TOPRGU_SW_RST_NUM		15
 
 /* MMSYS resets */
+#define MT8167_MMSYS_SW0_RST_B_SMI_COMMON	0
+#define MT8167_MMSYS_SW0_RST_B_SMI_LARB		1
+#define MT8167_MMSYS_SW0_RST_B_CAM_MDP		2
+#define MT8167_MMSYS_SW0_RST_B_MDP_RDMA0	3
+#define MT8167_MMSYS_SW0_RST_B_MDP_RSZ0		4
+#define MT8167_MMSYS_SW0_RST_B_MDP_RSZ1		5
+#define MT8167_MMSYS_SW0_RST_B_MDP_TDSHP0	6
+#define MT8167_MMSYS_SW0_RST_B_MDP_WDMA		7
+#define MT8167_MMSYS_SW0_RST_B_MDP_WROT0	8
 #define MT8167_MMSYS_SW0_RST_B_DISP_DSI0	22
 
 #endif  /* _DT_BINDINGS_RESET_CONTROLLER_MT8167 */
-- 
2.43.0


