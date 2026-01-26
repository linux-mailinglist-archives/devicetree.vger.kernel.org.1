Return-Path: <devicetree+bounces-259404-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CNWGKJMyd2mrdAEAu9opvQ
	(envelope-from <devicetree+bounces-259404-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:23:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B0F85F66
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:23:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 38A193004D91
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 09:22:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51A183081A2;
	Mon, 26 Jan 2026 09:22:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TTSG/xoX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48572309EEC
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 09:22:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769419331; cv=none; b=pX0jrhWX39+HTKqTWCFr+Smt784G1MqkOqYcMSRA1V1vr9mVEI6oFd8uqPfbe+ypjC88xWwmPVOJZyVCrpAV74k1IsS1nUrTJk05lBI555x+ajpKRFgpJariik/XiM3dM9YfecvvWih3PFwaJmc8UBM6ksGR6nrrftvnuNV/+eI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769419331; c=relaxed/simple;
	bh=rRZrBOTEL98igZrxjeyvohslWGlOhGCZd+W/KF9qYh0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=P/VyOjbDsUmfq+vCmfeBJ0auWPM6HTArrwzatHEzrlVgO5K3SOuo10zAuZc0ISiCH1TCSZXTeX3aLgvN+bPubm4AIpcFHAh3FxTEkNVIIceKhC/On6GROodyvsBl+oTAw6IsZvujMew83uM580GEtjWNn2hFE6Bq2/c1qVuLfuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TTSG/xoX; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4801d98cf39so30861715e9.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 01:22:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769419327; x=1770024127; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6l0bRB7VVDjDIq+ulMsBVmhmzBjYiR54K3+u8tiEuOs=;
        b=TTSG/xoXgiDAwLo/45en78JlxyD3JJLNcG/NzSxknEfQBGXffkbLy6Cv4Brx28JKLu
         mcZz7M4rMjAlXl9K2YM6FGfsZ3zkqWGFWLmeoYoYv9VCYCspQ9azT96CfQmZQXFQ1Y32
         DH9c1vwMeWr328YoYIMyrU3FDxAakG5R+FBWeYylFs8BxCp51TFN6rN9y/XrX0/i9QDJ
         yoKwTDkyez2FfVVaZhK46OQHx8eVc6BSZFotQRIZiuT6otJoCZNS4FnQRo6BsZWLr6Oe
         e++9HTLlZIxUmI10nQ9WgwJYmE7vPZzucmF4u26L4rHGeGYBiBJtPWe4YKJwkJnFAsOZ
         5c/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769419327; x=1770024127;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6l0bRB7VVDjDIq+ulMsBVmhmzBjYiR54K3+u8tiEuOs=;
        b=FUKFhnYvi3yzbJGNGO+Bh3KJRZAPKbzSzFiheSEgmOe8vkEGk75uMif57rFVtCHMqd
         Vhj9V/AuG2PUrdmoRx1WNpKD8F9MbR3zxPPPtTR7VNOe0CXthoIxN4Qh1Imkf5UNey97
         /l37IHxI7Qv1vA1AZzQqa5GLBaJkWHM/fljhQB51pkR7mlLjQ06FGD7BDp/GU8kIUNR1
         FrNDNOUS0vBf3gWJa3IEGnlK5sCnCUbEBhD53S60w6SUFCZMyzfMTNCW+CjkBUWsKhNU
         qCrPHvIdsrygjjhdfFw/bGupg2KytB80ue7q6DBjkVMkDO/BaUmUpR3HW4B1D41bBzur
         ON3w==
X-Forwarded-Encrypted: i=1; AJvYcCWoYuZmouVNKkhVj3t/Dtj0pgZgbfvlePCZBRLi7m5SR67jEwAgkqfFbi4+vRoloZQnFsf+yVUZd4c3@vger.kernel.org
X-Gm-Message-State: AOJu0YwlbTchIu4WMV8cnY+XWyjva4cwHJN7SENxn/e0V53RkWoeY94U
	QP3IX38EVSXe6XAmC524mpxKcfCJ0GTCU9zw39GPsiTORvvnbMx2LPI9FIwQeq0xZUk=
X-Gm-Gg: AZuq6aLpZcgHcxzHBYkIyJ/HYfWnXh3z2cCEoI+tU9q4coSpWOJCw/oYfgIx876+Ur9
	Bo7GXgm2K0s8ZCo/LWpOCZqC/0aUivSnxeNU8Nr/AQ+4vowG6SydLX3EJLiuSejfWmJEPNm43Ht
	IY5m+9EfJL4Z8fLFRJdvrDqo8t5PP/lMv8BN9e1diXV8BesBQkLyplCThbzZj2er0dL4r+1B2G4
	xLrKu4pgPInzkKQ6A7gSb4YWMovT8CPKlirWz1nGfnzgU43aXkjFmjCJMgQzhDgOgGUj/pa7In4
	kfEuey7dBWGpDC32fx0IuFt2ugo5q/v0EEF4L2kyB23vL0LIEc5+Q9xRBiM5FcjAT25AdycbanD
	16HqXD3BQIxqZok+qpA15MJxrbXzWY/iBUPv4BqTwW4XnfSHjV1wTNXro5V6EISG2S1kcyI+IoD
	uKMQlVgJ1kjXJCNfFoA0U=
X-Received: by 2002:a05:600c:3b9d:b0:47e:de23:dd6f with SMTP id 5b1f17b1804b1-4805ce42a6dmr67097725e9.12.1769419327486;
        Mon, 26 Jan 2026 01:22:07 -0800 (PST)
Received: from vingu-cube.. ([2a01:e0a:f:6020:e270:a43a:f2fa:900a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-480470cf1acsm346669855e9.14.2026.01.26.01.22.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 01:22:06 -0800 (PST)
From: Vincent Guittot <vincent.guittot@linaro.org>
To: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	ciprianmarian.costea@oss.nxp.com,
	s32@nxp.com,
	p.zabel@pengutronix.de,
	linux@armlinux.org.uk,
	ghennadi.procopciuc@nxp.com,
	bogdan-gabriel.roman@nxp.com,
	Ionut.Vicovan@nxp.com,
	alexandru-catalin.ionita@nxp.com,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	netdev@vger.kernel.org
Cc: Frank.li@nxp.com
Subject: [PATCH 4/4] MAINTAINERS: Add MAINTAINER for NXP S32G Serdes driver
Date: Mon, 26 Jan 2026 10:21:59 +0100
Message-ID: <20260126092159.815968-5-vincent.guittot@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260126092159.815968-1-vincent.guittot@linaro.org>
References: <20260126092159.815968-1-vincent.guittot@linaro.org>
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vincent.guittot@linaro.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259404-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: C3B0F85F66
X-Rspamd-Action: no action

Add a new entry for S32G Serdes driver.

Signed-off-by: Vincent Guittot <vincent.guittot@linaro.org>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 765ad2daa218..888674a308a5 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3202,6 +3202,15 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml
 F:	drivers/net/ethernet/stmicro/stmmac/dwmac-s32.c
 
+ARM/NXP S32G SERDES DRIVER
+M:	Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>
+R:	NXP S32 Linux Team <s32@nxp.com>
+L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
+S:	Maintained
+F:	Documentation/devicetree/bindings/pci/nxp,s32g-serdes.yaml
+F:	drivers/phy/freescale/phy-nxp-s32g-*
+F:	include/linux/pcs/pcs-nxp-xpcs.h
+
 ARM/Orion SoC/Technologic Systems TS-78xx platform support
 M:	Alexander Clouter <alex@digriz.org.uk>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
-- 
2.43.0


