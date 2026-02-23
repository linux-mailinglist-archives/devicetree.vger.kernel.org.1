Return-Path: <devicetree+bounces-267278-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cJTDHuz5m2l5+gMAu9opvQ
	(envelope-from <devicetree+bounces-267278-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:55:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD761726B2
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:55:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BDAA8301C12B
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:55:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36D2134A795;
	Mon, 23 Feb 2026 06:55:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kwu+edER"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCC7434A3BC
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:55:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771829717; cv=none; b=X8D/8LArBdzB5AlpSaCsWUlrydTJT61IQCtKYgzb+GvhU7s5mV5WP81HY7IvXS5suiBHQKP2JraUp/dJym/XoC2oDqVcZLp5zgunbd8AaKIwuIjPD0xw7z7jmFH0fL9icqRTPokTvRTqwqqO2DL5yJtFfNErtXgC85N+dPA+u8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771829717; c=relaxed/simple;
	bh=OOPv17YuwhtF5qN4VXKo5vOvfgfmMuTBBGc+yr6hm6I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HHbkybsdYMLJwN/jhdcBRLxUNV5yEdGGZdvdptRFnH71RzBhetlNJS7B9wWE0kLACCu54cmSmH0pMmMlexNee5Ah14lNUZQFDuacBa0JdmCCANorW9oy8H37GxrJcAS6eMJd50ND/QqmUWJTyMkPbo+dfHYzXTg5KdS1RG65ikc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kwu+edER; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-59e60b3ccdfso5294721e87.0
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 22:55:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771829714; x=1772434514; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tfKVvY3zEHHWaD06pd/pcj59qAyzkCZLLQIV8hNmtWk=;
        b=kwu+edERONaYh4RnoTSn9pZMmOggqP65rnytgK7VmwBDCa4E7Ixj/7dQRaTqqvmMjL
         xtZUheW6mX3FYhpPghzBdc9zx0TsAq/qXzBUjFFEC3GKIUgEitVRoFKrlGzfC/p4juE0
         9hzM9xy9CAGw/zNw2w5++HcxU0nk0dXR1h7H+B46aowv44cyn/fp/blQ7UsaZJXBhVao
         HNSiPRVLfqSbw7iuIxuH6rqFPVhWyriAIinSWKPL07Q9mtYWmqOswWjIsPzbdY4Ufwsc
         8Mcl+IiPox3BEhB/ZoxAeh7/LXdEMG/B8dZGJBpX1YbR2IE7kDk4HREk+S16DVKE9qIn
         kzdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771829714; x=1772434514;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tfKVvY3zEHHWaD06pd/pcj59qAyzkCZLLQIV8hNmtWk=;
        b=GBoAsq6tOB2j5ah1nJjHUbx9jM1okNoIOPWfYNN7LdpTAPHu1cZMmGy6NSXQLFktc+
         CXkUQUQboPe4xN61tkOKGFY/ywvofCqyK2k7Yy9difAyPNB4L0GJyY0ztu5Lxiq14HA9
         u+BqWnxt240BqlEe6KaVoSReLF/BIo2OGFv828oWf/yFDq5KEP0P5xRmef2Xphkl5fcp
         l2I1b2i7P8PY5dbnqD6CjK/hwbbrG0nDwbKRjK+Ptlnro1Mg7KXT/HdIKz2AU4TEruaj
         k0qxHNNS8JBF8DRniNsLf4ZMCFDuvgz5ezwJzngtYJ8920AxQReJVTkgHO49J3xS+45W
         v0kw==
X-Forwarded-Encrypted: i=1; AJvYcCWVFAgGI/kMZGl20MqR1Yml7sIXhv8j6OOa7DXEdnepHx/BQDNRC+VfU3cwsd+18ZF52id+nf4rw570@vger.kernel.org
X-Gm-Message-State: AOJu0YySbJOyXZ57msY0m8MOjkcBK6wBmLKdo8SRX5J8ZjlMSMUSf5VB
	/cmhJCGAOl+9aMfjdfs3VMIFkQ8GSDDumM5pqvZfRtLsRNR/UgA2U0DX
X-Gm-Gg: AZuq6aLasB6KWC+WtRoFDN3Z0MzwJyvet3jLJT+pQCXlNCJD1ajPTKZs0IVTSD8VCCd
	F6e9kCDnju36JIpDV12Ed4OjbxsA0QdlojXWL/eYbn7kfcSML88Y8GoOPqbIznrhnUEuaL1q6tv
	kAeyVwFGQKarWyujhsbMYA4ytP0ZQmP1ZIl4aSWHJf0tjKAxmaEFyVV8ctM1VXDJ1PaNuHEmabB
	cYgmo0mYX6jmMFAdyerxhv0VVPTliLS+aYvn4MiH8efXiye11TUAZI2x2BKy+PUphzO9bwhhLNb
	ssOWPJHPUl+kdHdY0HfW3OMte4T9Ztwt9TUN14+ajT3jgAKxKngQDuauhmDQ2zTw/7jfOURFOmH
	ooUp0XU7wxlG/BTGXgmlHJvLLR1oENSoF7Vv/vrAnCJVZ6YEYu9zskOVuBCf39y+B+qTsP7VbGV
	EE1XK4koB4cnMB
X-Received: by 2002:a05:6512:2348:b0:59f:76ca:9893 with SMTP id 2adb3069b0e04-5a0ed87f9d5mr2208819e87.4.1771829713866;
        Sun, 22 Feb 2026 22:55:13 -0800 (PST)
Received: from xeon ([188.163.112.76])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb4c60bsm1373802e87.84.2026.02.22.22.55.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 22:55:13 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Thierry Reding <treding@nvidia.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] ARM: tegra: transformers: add connector node
Date: Mon, 23 Feb 2026 08:55:00 +0200
Message-ID: <20260223065500.13357-3-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260223065500.13357-1-clamor95@gmail.com>
References: <20260223065500.13357-1-clamor95@gmail.com>
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,nvidia.com];
	TAGGED_FROM(0.00)[bounces-267278-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	DBL_PROHIBIT(0.00)[3.60.63.64:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[3.60.141.96:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.0:email]
X-Rspamd-Queue-Id: 3CD761726B2
X-Rspamd-Action: no action

All ASUS Transformers have micro-HDMI connector directly available. After
Tegra HDMI got bridge/connector support, we should use connector framework
for proper HW description.

Tested-by: Andreas Westman Dorcsak <hedmoo@yahoo.com> # ASUS TF T30
Tested-by: Robert Eckelmann <longnoserob@gmail.com> # ASUS TF101 T20
Tested-by: Svyatoslav Ryhel <clamor95@gmail.com> # ASUS TF201 T30
Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 .../boot/dts/nvidia/tegra30-asus-tf600t.dts   | 21 +++++++++++++++++--
 1 file changed, 19 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nvidia/tegra30-asus-tf600t.dts b/arch/arm/boot/dts/nvidia/tegra30-asus-tf600t.dts
index 1ed0536ae3fa..498780a96cf9 100644
--- a/arch/arm/boot/dts/nvidia/tegra30-asus-tf600t.dts
+++ b/arch/arm/boot/dts/nvidia/tegra30-asus-tf600t.dts
@@ -67,8 +67,11 @@ hdmi: hdmi@54280000 {
 			pll-supply = <&vdd_1v8_vio>;
 			vdd-supply = <&vdd_3v3_sys>;
 
-			nvidia,hpd-gpio = <&gpio TEGRA_GPIO(N, 7) GPIO_ACTIVE_HIGH>;
-			nvidia,ddc-i2c-bus = <&hdmi_ddc>;
+			port {
+				hdmi_out: endpoint {
+					remote-endpoint = <&connector_in>;
+				};
+			};
 		};
 
 		lcd: dsi@54300000 {
@@ -2302,6 +2305,20 @@ clk32k_in: clock-32k {
 		clock-output-names = "pmic-oscillator";
 	};
 
+	connector {
+		compatible = "hdmi-connector";
+		type = "d";
+
+		hpd-gpios = <&gpio TEGRA_GPIO(N, 7) GPIO_ACTIVE_HIGH>;
+		ddc-i2c-bus = <&hdmi_ddc>;
+
+		port {
+			connector_in: endpoint {
+				remote-endpoint = <&hdmi_out>;
+			};
+		};
+	};
+
 	cpus {
 		cpu0: cpu@0 {
 			cpu-supply = <&vdd_cpu>;
-- 
2.51.0


