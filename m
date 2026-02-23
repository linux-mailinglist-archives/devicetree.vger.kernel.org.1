Return-Path: <devicetree+bounces-267565-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8CYgNyeOnGmdJQQAu9opvQ
	(envelope-from <devicetree+bounces-267565-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:28:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0804217ACEB
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:28:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3915B308BE4D
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 17:19:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3289331226;
	Mon, 23 Feb 2026 17:18:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nh68nnIi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71C3E331A5E
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 17:18:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771867123; cv=none; b=QVVhPkWJbxqIIigd+0Dl9ALxHkPAP03+7MqY6OQZStlYnxGHLaSa4mCidXLA7xSsnG4JX0G5KNeOwLZ/z6pQcJvehtzsDd63xxqU+wYSmVk7vH8l+ZwXnA85g8B839699Cy+rV8gWZ0xAB+UTBdfT6MNUB2fzWml3DZAM6vESRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771867123; c=relaxed/simple;
	bh=4Z113nyzcPGx00yPVO/LcR2WeiIRYEYs+Bbmmt42G0A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qAp5ZKvHoIp/vVWN4nYq8uZOv8sw1cZI8HBq+64oKU8xsUcSfMFc6Sb0r+sgFsBScoh7eQsSaHqNFg9v/goOZ5ULHYEPqeD9EcnTmyQkAjL73cT7d0ZNMoVjDL2vx2+ck+XayMerHRzCq88t3g6ulg1xrcC4742YS64rc0KSzps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nh68nnIi; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-436356740e6so4830653f8f.2
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 09:18:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771867121; x=1772471921; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Cjndx/viWwHPLwXhm0pJTNs0ZpyDgThJGXcIfdXyo2Y=;
        b=nh68nnIilX/3GRqH8tZ3K16siX4oQJQb2rerE2FqT1QN1FI60MooDSDAKZDC3mDI9e
         g1PpoQryJ5mWzw6w+dDf4Wf7YFtX0vpu2JwpHqQxCurvmVj5s9S8XqcUC1tZAIHNL/Wa
         2BbaMcSW+riZLsuQ/ry10KjfDclOj/q4/nccf+HgwT9vVb7voZ1fut+dOnrUpJf2gNlO
         cQcE6KXVCLIHqTG9y2rh2NIwaHf0tES9lJ89/gQ9AYgYRZy9zgcGua02yS+4v81uQ7nS
         FTHXSQvkBaX1cCp1YTR0P1w+IQzU5iHD2P5mNG3U6vISeYJc0clU+RTBi5HIGJYHKtRf
         Kb/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771867121; x=1772471921;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Cjndx/viWwHPLwXhm0pJTNs0ZpyDgThJGXcIfdXyo2Y=;
        b=GUk4GKrk8esnvVpGYy1jncyjSmq5EhYAeVIqW8a/wZLPjetct9AQZE0fRBU9EFjfQ4
         2z8Of8AbrpwNGebUJ6pLNNc1dC0sEuzhLZ3lS6ZSBLn+nDD9XGXEAXoOV6+tnc1TsJkN
         xgUkaRgEY9NC0iRebK0UkS6IEn7DOYh4EwL4lRrA1/x52SGmn9/nvDtB71E0wXEQ/BpZ
         CnQk5xrrs7EToG9P/NZ7D4z/tIxNaeAPLSf33L+VlRhMz4oAKeUR+dExLsNdvEi5Iz46
         M/k3PQQ48eJcQrEgnJzBf1YwEL6N/ShqI5FbA6i6R06aabwG3y7ejWgYj6gUUfv6rlqu
         uycQ==
X-Forwarded-Encrypted: i=1; AJvYcCW99iLit17ofG3Le5hi68WQNoAbI3rsJXSdgK1fgUNDscVBOmMWBIfqS3tiLkoWaC3kgJi4OP1nfev6@vger.kernel.org
X-Gm-Message-State: AOJu0Yz57FiU9ES5k/rCxRODSep8eml1vuEkBjtWzH5Edy+GJPspClha
	le9eUe81pSKSfuX+eUTegUHKpDd4yZklEjtmmArEmU53qlxhoLM5Q2Sr
X-Gm-Gg: ATEYQzxXHgxWZCn7QCv8m/TUZ4xHwM6faAe31RmZiPqxY7G/vpp5I2ADJYbf2FKc+yX
	VI0AwjtUHEjuJuCmxjm0mr5Db1QkKPKMByPjoRDYQ8RkD40/Nbm179vve30ZdeFFkW+76jl/35T
	gjrzvES77Xg5YR3q2Bq9Riw8GSkdm6lw/cE7pqvMvvHS0GtEIIR3ZD5d9mhSaNyqjXLO4bH9nXb
	gJ/e2Qs4bksX+vJB4LRz8+In+1cLE23KG1KgCJvWrxqQqyGAwF+2fHJySvU+lrWgZWXyOfDWgLw
	62eF/OBVcwbzDBgIaZKaKjrV74Twn3h679bRHFHdmy2wzPf+dLFA75Ls8YCDZKnqDxE/zSuMqYu
	X9viTtmE2Ayvn3OyWBs8Ve6pg3Evbqf17pNc3SPX8AepkAqNTvygfO7IJidqN7Wa/lD6QwwRepV
	fgWz6RiHcI2HCRT3WPZRY=
X-Received: by 2002:a05:6000:2dca:b0:431:369:e7b with SMTP id ffacd0b85a97d-4396f157e6bmr19371413f8f.18.1771867120734;
        Mon, 23 Feb 2026 09:18:40 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d4c982sm20871454f8f.31.2026.02.23.09.18.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 09:18:40 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Val Packett <val@packett.cool>,
	Luca Leonardo Scorcia <l.scorcia@gmail.com>,
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
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Eddie Huang <eddie.huang@mediatek.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Julien Massot <julien.massot@collabora.com>,
	Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
	Gary Bisson <bisson.gary@gmail.com>,
	Fabien Parent <parent.f@gmail.com>,
	Chen Zhong <chen.zhong@mediatek.com>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rtc@vger.kernel.org
Subject: [PATCH 9/9] arm64: dts: mt6392: add mt6392 PMIC dtsi
Date: Mon, 23 Feb 2026 17:12:48 +0000
Message-ID: <0eaee8c3be8dc848314b2e9aaac9303659fc2a49.1771865015.git.l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1771865014.git.l.scorcia@gmail.com>
References: <cover.1771865014.git.l.scorcia@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[28];
	FREEMAIL_CC(0.00)[packett.cool,gmail.com,kernel.org,mediatek.com,collabora.com,bootlin.com,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267565-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lscorcia@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[packett.cool:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0804217ACEB
X-Rspamd-Action: no action

From: Val Packett <val@packett.cool>

Add the dts to be included by all boards using the MT6392 PMIC.

Signed-off-by: Val Packett <val@packett.cool>
Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
---
 arch/arm64/boot/dts/mediatek/mt6392.dtsi | 133 +++++++++++++++++++++++
 1 file changed, 133 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt6392.dtsi

diff --git a/arch/arm64/boot/dts/mediatek/mt6392.dtsi b/arch/arm64/boot/dts/mediatek/mt6392.dtsi
new file mode 100644
index 000000000000..d0d86ae0f073
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt6392.dtsi
@@ -0,0 +1,133 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 MediaTek Inc.
+ * Copyright (c) 2024 Val Packett <val@packett.cool>
+ */
+
+#include <dt-bindings/input/input.h>
+
+&pwrap {
+	pmic: pmic {
+		compatible = "mediatek,mt6392";
+		interrupt-controller;
+		#interrupt-cells = <2>;
+
+		regulators {
+			compatible = "mediatek,mt6392-regulator";
+
+			mt6392_vproc_reg: buck_vproc {
+				regulator-name = "vproc";
+			};
+
+			mt6392_vsys_reg: buck_vsys {
+				regulator-name = "vsys";
+			};
+
+			mt6392_vcore_reg: buck_vcore {
+				regulator-name = "vcore";
+			};
+
+			mt6392_vxo22_reg: ldo_vxo22 {
+				regulator-name = "vxo22";
+			};
+
+			mt6392_vaud22_reg: ldo_vaud22 {
+				regulator-name = "vaud22";
+			};
+
+			mt6392_vcama_reg: ldo_vcama {
+				regulator-name = "vcama";
+			};
+
+			mt6392_vaud28_reg: ldo_vaud28 {
+				regulator-name = "vaud28";
+			};
+
+			mt6392_vadc18_reg: ldo_vadc18 {
+				regulator-name = "vadc18";
+			};
+
+			mt6392_vcn35_reg: ldo_vcn35 {
+				regulator-name = "vcn35";
+			};
+
+			mt6392_vio28_reg: ldo_vio28 {
+				regulator-name = "vio28";
+			};
+
+			mt6392_vusb_reg: ldo_vusb {
+				regulator-name = "vusb";
+			};
+
+			mt6392_vmc_reg: ldo_vmc {
+				regulator-name = "vmc";
+			};
+
+			mt6392_vmch_reg: ldo_vmch {
+				regulator-name = "vmch";
+			};
+
+			mt6392_vemc3v3_reg: ldo_vemc3v3 {
+				regulator-name = "vemc3v3";
+			};
+
+			mt6392_vgp1_reg: ldo_vgp1 {
+				regulator-name = "vgp1";
+			};
+
+			mt6392_vgp2_reg: ldo_vgp2 {
+				regulator-name = "vgp2";
+			};
+
+			mt6392_vcn18_reg: ldo_vcn18 {
+				regulator-name = "vcn18";
+			};
+
+			mt6392_vcamaf_reg: ldo_vcamaf {
+				regulator-name = "vcamaf";
+			};
+
+			mt6392_vm_reg: ldo_vm {
+				regulator-name = "vm";
+			};
+
+			mt6392_vio18_reg: ldo_vio18 {
+				regulator-name = "vio18";
+			};
+
+			mt6392_vcamd_reg: ldo_vcamd {
+				regulator-name = "vcamd";
+			};
+
+			mt6392_vcamio_reg: ldo_vcamio {
+				regulator-name = "vcamio";
+			};
+
+			mt6392_vm25_reg: ldo_vm25 {
+				regulator-name = "vm25";
+			};
+
+			mt6392_vefuse_reg: ldo_vefuse {
+				regulator-name = "vefuse";
+			};
+		};
+
+		rtc {
+			compatible = "mediatek,mt6392-rtc";
+		};
+
+		keys {
+			compatible = "mediatek,mt6392-keys";
+
+			key-power {
+				linux,keycodes = <KEY_POWER>;
+				wakeup-source;
+			};
+
+			key-home {
+				linux,keycodes = <KEY_HOME>;
+				wakeup-source;
+			};
+		};
+	};
+};
-- 
2.43.0


