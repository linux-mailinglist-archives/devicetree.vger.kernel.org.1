Return-Path: <devicetree+bounces-257657-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cKpxMjAScGlyUwAAu9opvQ
	(envelope-from <devicetree+bounces-257657-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 00:39:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 412854DF73
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 00:39:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D28AA62F2E5
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 23:20:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E96BE3B8D63;
	Tue, 20 Jan 2026 23:20:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NW5cr0Ck"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f177.google.com (mail-dy1-f177.google.com [74.125.82.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 679A835BDBB
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 23:20:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768951208; cv=none; b=K/BmdGHmfmpwQNAX9thCqh4qStI6UT+S0MLybFg49glJwtSEThzm9eKhktt8cS/BPe3mYPTfLOFMFZvtGdUrOiiFAsmWERrPs3iXfDFLn9x/9GpzpwALDZRLLKbtb0wNJnrLPKDiqmvQcnLhNigvbpNc7ah0/GqlHoOtF/Q9rms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768951208; c=relaxed/simple;
	bh=n+bDRTtDKAIti8gjmy3EkYqXiBgflIIJs0BEAp1eHQ8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=GbkFvG0YznxzmtFPsKMN0INCGeHf+rHcbZeMl9dcSNsC8j38bCXgS2WWYoSC87goKaM771eFVySFiK4MBIV+3lAQ+2pyEmAPnIpGU3sU+US6b41YYWxo/MSDzxKdep9X/GWgrjDq9PDZjSdqkNjSJQCtDWnE8mZqt4g1cPRWRyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NW5cr0Ck; arc=none smtp.client-ip=74.125.82.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f177.google.com with SMTP id 5a478bee46e88-2b4520f6b32so8258924eec.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 15:20:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768951206; x=1769556006; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a14UJSKywxQPG3jydJYjQCkFGY5UM/uMPPP66w0Rim0=;
        b=NW5cr0CkwZnMfHrIvaTpvinZBr7FPpCz9J2DpJjc+3t72tdPmIrwc8cneQFAy7UCsl
         qklI+a7//8fG+i8VeMRYTdNLct/RmMjjdLziBhZjqcHqJqf1ZUVzm/UNd5i+9eN/fhmj
         wxVduvqKW0GoJ09HlC/suiQl/+JKz7/O7BbeVz+ZkZ6GZyXDDwDjIap3Vz8ujhyVlDC1
         mMvdA5kTtV9oBNW7tGT0x6z4YkhvAVV3ru5G28j/GYeCVJQ5+qI+zqpHccvtSrb7lYYZ
         W7aIr0363JZkmn3SNB3fnvSoKnik198liVUnyH4ihiltx/HVacMjUNzxGRJZ3WWqyBfg
         k1mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768951206; x=1769556006;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=a14UJSKywxQPG3jydJYjQCkFGY5UM/uMPPP66w0Rim0=;
        b=DKyMkqyJS+XC3teKPbe2KvhLS+B2kkpmCbGmPtLfDqghS7jTBohgftGOWSnwc+sOpg
         62nHfixUMWJJDu3LHrV/kueEsemcof0lgOtjW6C4tBCvS/9fHAMqYzE2jqkBCvKl3OHL
         WO4adrefi8lpDtwagJ2hUp84jfQbRGXc1V0/RDIrhdQYxYI+mpGTZByiYJEX7UCPc5Db
         2tuROjRk0vpnywVQUySDBzzVvOu/Zi9gduq3Jh9BnA1VAf/gc9/CPYUWXiY3cJcYNxn2
         4ukjQLSeuXVXdBhIfGx/TavufSpFg8J4G3PQLGZOKf2d42MYNNFQ4O3DttD/tPmPmJ8R
         WSIA==
X-Forwarded-Encrypted: i=1; AJvYcCUwtTACtlu/WAZqu2949P1IGRj0u/raYb/nxxVTcNojhphc7ZfXQneOd3EJS3yTYfSuNfrNVR4RIAW0@vger.kernel.org
X-Gm-Message-State: AOJu0Yzlm57zuUAN9/WosJEQ5Th0zcIt1yTmggbTCzC5LoI9IscmVy2X
	eKC0W7DYzdmaFMA9Cf8HGgxDKTu1ns4uGZUvlTZ3KIs39TZyyDrPDuyD
X-Gm-Gg: AZuq6aLWVCMkff84GPQY3B2wLGzFW0EmWlHRIVB6cLF3NcrPwrJKLoyayTef7Dgg6EA
	igkkb5JMdXaWOHrJZ7Mos/nGnFJ7b59vhrAyy+owfm8LfgHEExOe+Dkq/whpC1eklijY9zJzKDc
	xg0SG9aivVmGME7hCbFUBts05NRZspAm5CPU9j4wSl5bIQndLEm6Mtns8zi/s97xyXVOUnpqmw6
	wnnovHJxqwFMxMXnI4rMu0KE2Yl9le/ACwEk/uUfFVk32HG8WRFda6wydXMNjaojwzPOHcAgYAs
	KAflF+DL06bRQRRZqaWQ8/ICF8Ow6nlITg7Rp8XWrF2yOSFtmkjau/LJ0A4ovImQP70qeZD+AWz
	+RtC/F/7o8pRCmqRB6z/yu1OGd2eF00hmjhJNPkq6kMgdmS3Nv4Ux1VbBGFy0QtcRhuDGDHyA8X
	YvYlrcpg==
X-Received: by 2002:a05:7301:4192:b0:2a4:3593:466d with SMTP id 5a478bee46e88-2b6fd5d7f52mr2740674eec.9.1768951206303;
        Tue, 20 Jan 2026 15:20:06 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61::1000])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b6fc2820a2sm4326816eec.35.2026.01.20.15.20.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 15:20:05 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: victor.liu@nxp.com
Cc: marek.vasut@mailbox.org,
	neil.armstrong@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	frank.li@nxp.com,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH v3 2/2] drm/bridge: fsl-ldb: Allow the termination resistor to be enabled
Date: Tue, 20 Jan 2026 20:19:30 -0300
Message-Id: <20260120231930.2782444-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260120231930.2782444-1-festevam@gmail.com>
References: <20260120231930.2782444-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [1.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-257657-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,nabladev.com:email]
X-Rspamd-Queue-Id: 412854DF73
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Fabio Estevam <festevam@nabladev.com>

The LVDS Control Register (LVDS_CTRL) register has an HS_EN bit that allows
the 100 Ohm termination resistor in the chip to be enabled.

Add support to setting the HS_EN bit when the optional property
"nxp,enable-termination-resistor" is present.

The motivation for introducing this property was a custom i.MX8MP board
that was showing visual artifacts. After enabling the 100 Ohm termination
resistor the LVDS signal quality improved causing the artifacts to
disappear.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
Changes since v2:
- Rename variable to 'use_termination_resistor'. (Liu Ying)
- Remove clearing the LVDS_CTRL_HS_EN bit. (Liu Ying)
- Use dev->of_node. (Liu Ying)

 drivers/gpu/drm/bridge/fsl-ldb.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/bridge/fsl-ldb.c b/drivers/gpu/drm/bridge/fsl-ldb.c
index 5c3cf37200bc..7b71cde173e0 100644
--- a/drivers/gpu/drm/bridge/fsl-ldb.c
+++ b/drivers/gpu/drm/bridge/fsl-ldb.c
@@ -92,6 +92,7 @@ struct fsl_ldb {
 	const struct fsl_ldb_devdata *devdata;
 	bool ch0_enabled;
 	bool ch1_enabled;
+	bool use_termination_resistor;
 };
 
 static bool fsl_ldb_is_dual(const struct fsl_ldb *fsl_ldb)
@@ -212,6 +213,9 @@ static void fsl_ldb_atomic_enable(struct drm_bridge *bridge,
 	/* Program LVDS_CTRL */
 	reg = LVDS_CTRL_CC_ADJ(2) | LVDS_CTRL_PRE_EMPH_EN |
 	      LVDS_CTRL_PRE_EMPH_ADJ(3) | LVDS_CTRL_VBG_EN;
+
+	if (fsl_ldb->use_termination_resistor)
+		reg |= LVDS_CTRL_HS_EN;
 	regmap_write(fsl_ldb->regmap, fsl_ldb->devdata->lvds_ctrl, reg);
 
 	/* Wait for VBG to stabilize. */
@@ -340,6 +344,9 @@ static int fsl_ldb_probe(struct platform_device *pdev)
 	if (IS_ERR(panel))
 		return PTR_ERR(panel);
 
+	if (of_property_present(dev->of_node, "nxp,enable-termination-resistor"))
+		fsl_ldb->use_termination_resistor = true;
+
 	fsl_ldb->panel_bridge = devm_drm_panel_bridge_add(dev, panel);
 	if (IS_ERR(fsl_ldb->panel_bridge))
 		return PTR_ERR(fsl_ldb->panel_bridge);
-- 
2.34.1


