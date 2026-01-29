Return-Path: <devicetree+bounces-260832-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0JnZOR09e2mNCgIAu9opvQ
	(envelope-from <devicetree+bounces-260832-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 11:57:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A9CAF433
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 11:57:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 66245305A410
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 10:49:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 000883816EF;
	Thu, 29 Jan 2026 10:49:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="W7CA5ZyS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5740C3816E7
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 10:49:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769683742; cv=none; b=d+KbhP4CTNGYv7IVR7lnZmK/51XdAhwLvnWMMi2eKoPSjNmTcTB/IOAflV+LXeNXQP8TZZrQ9hHmdTU2wEg22nFtBrtY1lZfI8UxFsU/5HK7xFPf+8egpi+ZZnAnRCW1FOFyOekG5/B7XjXBJ4qiwdc0BpXUDZsPrL+Ex7fED1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769683742; c=relaxed/simple;
	bh=+qtb/t+0xDSDGfD5B5cb7Zpuf4UiYelnPEUWlU2u+Q4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=HWlZRJ1MIkxnJb+6lXw8ax+VXhZnFYaTipGNIZ1w2Ef592xMWnYgdX/A0gLFUZ3Y2Aa2Q0480E+AEhAdd1y58rhdkHC5jZ6A3r2wIpstCLsVnwMOwDZ5AvL/CU06aS63cxirPsxTckLlsadaGOFlX2AhRfJ7VPYjs6ZyOnjOmT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=W7CA5ZyS; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-480706554beso8515815e9.1
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 02:49:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769683740; x=1770288540; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1MaVol00ZtirOaVD8s5awZQiRxb5rtZJQIGYIkDlUXM=;
        b=W7CA5ZySmjRyElUnAedrC3087HPUM27XISmN2l/F8Gfap9e3fOSpv9femYUmcFe/ig
         0k65o9WyVm1K/mpL6pYuQ2LvQ5j2Cx3eojZyUze61h+/E00DhzyHXjLe4IBtzjszrih1
         tG77Y/B34CjaUL5J0NlzuNhjiplzwL3Dbzz47PfhejpIFOovQl+y5vsCJUDCb9l0OIa2
         ICwaxVP+NdgiZWp26w59olrN3khZ85BNVhkr4mBGTMG+NzBwQkaKpijJ3sm8gOuqocT5
         PBYIKRA9Q11FdbmOq/HqIjiNLQNtfKUyApkrFnAfkdyB37dxGSGRpoHcFfhYBQl9QPd1
         PtNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769683740; x=1770288540;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1MaVol00ZtirOaVD8s5awZQiRxb5rtZJQIGYIkDlUXM=;
        b=RnkruSn12M0wtee5KS8dJNDsya3A4lgicLtxL0yZ9flNyP6L751bzvB3ERyQjL6f7o
         EI8IvHRVXi8EgcrLqvxmZX9BLt6mOSqNhyueNypODv+LDDW/ey1VyVdOlXdwpNsqQ5xx
         U4ROg7GvsV2iDRzA34aLRo9tZkyPjA2LO9lN+1aPkQLowKNpzywlRj+7WkLlji5DZUsK
         sJKlO8LCZ18/g9aJ6VpR+Npv/yaJve2t1Id/3JUvaoBMgMKHXqdylM+IZC2pCAbeltfk
         f+kaoHDu4P+FiXOX1HFr70/44d0LMcHZrGbfKGtR9XX/akWvGfkv1KKALvgSBGW6uwqy
         vFUg==
X-Forwarded-Encrypted: i=1; AJvYcCUR/gZPyC9c2z+PvDdWph7rrhI+FmzX4SBodUa3CLsLQ3HM877/iFsGRCMzDGyvlazrUciH26IxsbXo@vger.kernel.org
X-Gm-Message-State: AOJu0YzWm5TsXysUUCkxFqDwkbXFb8k8pFPAN8t86BDWcZDHgS2ki+2b
	Co9sgJKdl3PCAMjZ4xgxrHp3rBGwIbV6yxHbE8RujpLcLCBeHEDs5Vt5
X-Gm-Gg: AZuq6aK9Z3xAhLd44mJajZ9WkcVGN3eu49RqWXLZtO3ZGRPvzmOuCv+L2WKphhmzSqt
	uSiFPq25UD3Ja/ZSoVBCdi1S+hZld5hjgP4eRnkzlYcLxA2/Uke88wwWPM6xs0/Ty2uo955ngvG
	fiRB7TQhlAc9pJyUX8yJX9Ro2L3ckeQKmCa4xiLqD6X8bG+3ShR9N+t0S18IUlfA9NuYPTIMV8J
	laiSygpG70xlRvr7CDgqVWN29iM68CkKHzLOdd74/Gb5r2eH3NE0xzy79E+qcPa1DITWFgL4Emh
	0tkqkvFbaSz68LP01vDii5ujOWabSSnK4FAdOYcRYanSqyRUOTjppQpxOMfGXUAy4gP9+yTliz+
	WWcVGh5nB5XJYVoSL7uGKm37MMhTK3PAmHLkxqhL/5O2pEG2CRfBDWYviJwewwogDuGdliqHW1y
	0bqFXjT3H+wTM1DX1bxeULTUBhfKquqoKDnJjZ5X0NNs93ASg3TqZFRUwC+vfI7sh5sK/HPiN1B
	ldissvPdVxvflTVGcB5ehA0TVr18A==
X-Received: by 2002:a05:600c:83ca:b0:477:b734:8c53 with SMTP id 5b1f17b1804b1-48069c1a96emr105858205e9.12.1769683739413;
        Thu, 29 Jan 2026 02:48:59 -0800 (PST)
Received: from emanuele-nb.corp.toradex.com (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch. [83.173.201.248])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e10ed952sm13365525f8f.10.2026.01.29.02.48.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 02:48:58 -0800 (PST)
From: Emanuele Ghidoli <ghidoliemanuele@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH v1] arm64: dts: freescale: imx95-toradex-smarc: fix PMIC_SD2_VSEL label position
Date: Thu, 29 Jan 2026 11:47:35 +0100
Message-ID: <20260129104741.888670-1-ghidoliemanuele@gmail.com>
X-Mailer: git-send-email 2.43.0
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-260832-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ghidoliemanuele@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,toradex.com:email]
X-Rspamd-Queue-Id: 47A9CAF433
X-Rspamd-Action: no action

From: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>

Fix the PMIC_SD2_VSEL gpio-line-name position. It should be on line 19
of gpio3, not line 20.

Fixes: 90bbe88e0ea6 ("arm64: dts: freescale: add Toradex SMARC iMX95")
Cc: stable@vger.kernel.org
Signed-off-by: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>
---
 arch/arm64/boot/dts/freescale/imx95-toradex-smarc.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx95-toradex-smarc.dtsi b/arch/arm64/boot/dts/freescale/imx95-toradex-smarc.dtsi
index 5932ba238a8a..f64c05dc50f8 100644
--- a/arch/arm64/boot/dts/freescale/imx95-toradex-smarc.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx95-toradex-smarc.dtsi
@@ -262,7 +262,6 @@ &gpio3 {
 			  "",
 			  "",
 			  "",
-			  "",
 			  "PMIC_SD2_VSEL";
 	status = "okay";
 };
-- 
2.43.0


