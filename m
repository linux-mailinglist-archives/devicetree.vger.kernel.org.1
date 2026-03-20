Return-Path: <devicetree+bounces-278211-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KO6qIJUmvWmr6wIAu9opvQ
	(envelope-from <devicetree+bounces-278211-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 11:51:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 883E02D911C
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 11:51:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3DDAE301EBF0
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 10:50:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B601439B49F;
	Fri, 20 Mar 2026 10:50:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BohSV/yW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1FE397E87
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 10:49:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774003804; cv=none; b=BB/3+abmFrHER4kVdmvHCadWslg4S2mPw/brgmPoNV3fy2eWkly7l+LxbWH4fA2pJCFvFcL3R13EnugDXLRdNSR0YvBPadbfY75683IUBt2CNgi3jgZi1I9xxRA0+A5+5DDLivt5GjN35K4bhEC12H0iYTDeGCZNG3xknM3PFXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774003804; c=relaxed/simple;
	bh=D2LAZiaCzjAqA8MVAC20lKcg9/hhLVdc6VrVZlNb/J0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Sr64+WsAOvGSoWwHDKxFwo3q01NJKzT7k80taIqgR39k12NAUlo0OpqYuG9sOmmXgOMUDArAYCZh4iJjceIihQPJVWztL09kSnu6EbOwrsQUrsA6ud/9g4CEDcTkcgFwhKISzsP0xh9HY2kIU6r3zlYL3hmJZUPDlEUJKJlcT0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BohSV/yW; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-439d8dc4ae4so1422345f8f.2
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 03:49:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774003797; x=1774608597; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GpksDKQgAp4PIeZFTolWKLEW3lYUJh5RtT8AQ7UhmHM=;
        b=BohSV/yW2s8GOehPDwFU3xB05RVFPA6jsO0VRCdEKtMxF2+RfEfNNWTLiFuLagKTHt
         zPQlvPN+GZiC9LbaYWB1xwmKZW411bAVjKIcJciOR6f4yToYyaxTVvPE9R4WtEFJDuLf
         LlC+Dsmo/tC6HelhJ+Q/hLbnOm3DljWHMj9O2hthYPmzsXVTGsu/KHvzyFHlijebrkPv
         HhwyzGvmNAmhi0khK+sW5Mh4UbbMW9+E/qul0UeS96KM1555xN+X7UkkILCWougkrLgo
         VvvBy/i5nJu5RVk8xPpmzzv+MsEYf5VYm5OzY2j1nFnpgJafjTxLjnh7vXUZa9SDYg2J
         +asw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774003797; x=1774608597;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GpksDKQgAp4PIeZFTolWKLEW3lYUJh5RtT8AQ7UhmHM=;
        b=jhfqtcwZGtxRR+grpip/qs2/DsM3dWBpJdZo/SVFSEU5GafKTbVU4HmfhC3OAyIljs
         O33axjVSV2zKILUMQydau99s2mDHJ7A4lKVBjZvR1pfVWKFdI0Y83hzfUBfbchSUPJGy
         RWxLiN9Jz8WuMyzVw+zAJ6g/wW6Jxjpb1p133kgChvvE9BBjoCTRjvnLT/K7Xg1htBos
         nHOaKRKcDes08SYuWyKIrK8xQkmRJ3XRKdqfT26jJSXs872t3sBcRB2DGRY6X5LxR3H3
         qF8bgE6uApHCjgHv/3cPqi5smKCuhJOLHHZWhql5JjqN4SyDejekCM1Hky3mvPM923w3
         NKzQ==
X-Forwarded-Encrypted: i=1; AJvYcCVOTvL6DK8dRRgR4dclA1NCk46pY73Hpjki9+dMsPi1pSOFMGloJhwiqKeBPLV4L9xljK9tQtD7nyBl@vger.kernel.org
X-Gm-Message-State: AOJu0YwafP06PbG+A+lfdNbIfQ+157guWfr2vI7lLETLl9TwKALIjRO0
	QnORdy3ve/i2ODfYze16IcCkGJ7lIwJzWpUwe6RSkz8IFZc5sAuFzeN3
X-Gm-Gg: ATEYQzydU9deBYkfyTZ/3POgB+bx4F8wNc3zfmsYGxrS6kE1O76U3NhJ8kD6u5kk2fO
	zHwMQ0mXGB6m/rxpL/SgeB+RCa24cXZD883wlUrw1y0jswIgjzp0HrdWSa5YaDroD7TPRuN5lOC
	wA83Qzj+e51dISAQOcQxoYA4Nr/wjhwQd9yq3m79ARrdaz9Y258I2NWaWpdHyNDEJ8iftkl0jdM
	FgbBqDg/5Bqi+OgM4Zgge/luyyApSG8NkvBfce49JYNTCd06eut4LHptT0qYIblFpN0Afn6Yb6C
	VHdVLJ41tHhDV1Ai/Z6WTNIj6GMk2faoWOqnKJF6rL7tgM1XKfExkojtR83OJWt1zQvzRdQOAjo
	/UGEwdmmFGa/mb8rnSNMn0e4raTRm9nMrzLQA+T9VxU5MZ2MPD+msJi3dJByA/6tTE7JTlwhANM
	XC4mPLSGr0ktJdouZpMNvwVOlH9P8YmGA=
X-Received: by 2002:a05:6000:2484:b0:439:b59e:5e65 with SMTP id ffacd0b85a97d-43b64232888mr4507486f8f.6.1774003797052;
        Fri, 20 Mar 2026 03:49:57 -0700 (PDT)
Received: from biju.lan ([2a00:23c4:a758:8a01:5b93:d2b1:bc5c:9231])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b644ae619sm6203062f8f.5.2026.03.20.03.49.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 03:49:56 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v7 08/10] arm64: dts: renesas: Add initial support for RZ/G3L SMARC SoM
Date: Fri, 20 Mar 2026 10:49:42 +0000
Message-ID: <20260320104950.42220-9-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260320104950.42220-1-biju.das.jz@bp.renesas.com>
References: <20260320104950.42220-1-biju.das.jz@bp.renesas.com>
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
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278211-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	NEURAL_HAM(-0.00)[-0.960];
	DBL_PROHIBIT(0.00)[2.220.108.0:email];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[glider.be:email,bp.renesas.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,renesas.com:email]
X-Rspamd-Queue-Id: 883E02D911C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Biju Das <biju.das.jz@bp.renesas.com>

Add initial support for the RZ/G3L SMARC SoM with 2GB memory and
extal clk.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v6->v7:
 * No change
v5->v6:
 * No change
v4->v5:
 * No change
v3->v4:
 * Collected the tag.
v2->v3:
 * No change.
v1->v2:
 * Dropped gpio.h header file.
---
 .../boot/dts/renesas/rzg3l-smarc-som.dtsi     | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)
 create mode 100644 arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi

diff --git a/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi
new file mode 100644
index 000000000000..7c21afaee9bc
--- /dev/null
+++ b/arch/arm64/boot/dts/renesas/rzg3l-smarc-som.dtsi
@@ -0,0 +1,20 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+/*
+ * Device Tree Source for R9A08G046L48 SMARC SoM board.
+ *
+ * Copyright (C) 2026 Renesas Electronics Corp.
+ */
+
+/ {
+	compatible = "renesas,rzg3l-smarcm", "renesas,r9a08g046l48", "renesas,r9a08g046";
+
+	memory@48000000 {
+		device_type = "memory";
+		/* First 128MB is reserved for secure area. */
+		reg = <0x0 0x48000000 0x0 0x78000000>;
+	};
+};
+
+&extal_clk {
+	clock-frequency = <24000000>;
+};
-- 
2.43.0


