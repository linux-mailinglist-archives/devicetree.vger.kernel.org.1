Return-Path: <devicetree+bounces-238698-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 3662CC5D683
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 14:45:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id E177B35EBD3
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 13:38:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5961D31A815;
	Fri, 14 Nov 2025 13:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ITdHdQ2G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79A451DFDB8
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 13:38:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763127502; cv=none; b=SpJWMiyPfklVQWARA13nz0YmffMi/HMkXGGF6RaasOXyX2wvfnqtpZEMTbt4DfT4Y/w5sGcYAb8RZxVLOZND2LGtcrBQMal9iIRKj9U5DOqBaQp09pXAnAEQAfr6LMqKHcQdpjZchTPvh5Ni4MgJgnIa7VNM2Kta97ndlDfEPUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763127502; c=relaxed/simple;
	bh=foEwrfkVJlHKAY4hAyD7v8BZiF7HCnetDgamuS4Q2n8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Q/IJkPUy/vXYtCb60KwbEAj/Z51AbJJgewmFD7JzKVf0hoZ6GYI402dCnbZJqDAj0vLmuHGhviIM1012ziAJsZVK9HSo038GPizlRQbakud3YLZc+vTfAiNCLkrE8txIu2GunNd7Op0ytDZOUGXc3AQxcvPTYK196yszmBxr3kM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ITdHdQ2G; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-64166a57f3bso3163121a12.1
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 05:38:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763127499; x=1763732299; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XSTuk6bpUxNwcbGpcQuPugEknybGUY3HH6kETf+pWJA=;
        b=ITdHdQ2GZ5tgsOjkoeF8QpU6bxBhrxbl6idiv7iI52gSY4nI1xuEGNx0VoDPokXENz
         2XT3MKBi7EVL7HeSAhntz6S0LB/aja7zZzOZmJ1UwFgkjNT9iuqJH0t218l4/bKACJtE
         rLvaBCAnDxHwXTiPLvhBIKh8l7tcdiAdx6ca2Z69MvbOPQVDq5OtO77HgkEDF8r5t414
         EehhSO4WCWbszr3WqFgCqraJqL35z1Ws9qVJ+5SpqM08mNljadpvpp/E1r57ysGcEBTk
         rspscty/Z1M3TRKZGf8KqxwnfpBxONf1F6r26zxe+y1xlfyscpFfVXt/SnWUq4Gg7LFi
         bZsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763127499; x=1763732299;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XSTuk6bpUxNwcbGpcQuPugEknybGUY3HH6kETf+pWJA=;
        b=Z8Hdpr3iT+YRXRWSllS7c7WSyDK1cstwbpDtYxJgmk8eIorfy8Gu/pFrntP9csx5uK
         koA5ZWAZGtyN0m6bbXi7ehi10NbnNHWwx2j2sDNzOZOvjqyUI8muy49h9+h7j95OY4yl
         w2JoH2TMLbbzzz3UpDc9GNuk6iTlj+2hY2c4n/4MfNHENNqaz6eK+0MitSSEl2vvf9/T
         y+fvTJUnbPRawbqqlteFvjJ80c4Tjgi5ux+38z2aGV23VzdOuVpaDWWQrNPlQS1lHjkY
         RDeH8+uZ65C8MACZiM/fyA6rq8JQ7/FxapzY0B+8/5iqpl3PlgmM+pDlzpv7i5QpWTp2
         Q4iQ==
X-Gm-Message-State: AOJu0YwAjTVzSOZPQ7qsSeKonLzy/2rvchDAxi3DcAfvOaOmJgZ6Pon3
	TPeTilNqfxOiDW+YDZ9Ca18XVD5V+8niLeXuNLhy3jNytCVg5gMLL0EA
X-Gm-Gg: ASbGncudkQpER/a063xwlLrAKCcgMXnKmq8ybEOccEkSjwVjEzO228IPqJmphiMDm3G
	rBQ64B1aJ8xs/kAQCpndcXAiP55JDlwcG58k7htGfr2r7/L8yyfgZuhG76QGjNshd/yiDME4/yn
	7cF6iatuoDHsBB6X3Vp6nOIKnRMrl8yQavelKyhtR8olXYf12vUFDbebc3dC1tm4sVLlxyqIBF0
	+lmEQ+HMUdjyqKpf0X9CFJB+YzTfTZao/SscNcH7BzivgIUnuYeDouFGSYkhOd5vUOxo+MlFK4i
	cDsV6MVGxGu+TLectYvCsp+G9JXaWCQ1n8HMixKKuB3hyaD56F9aAA0VlQzNqXHUPa9WVz/1FEz
	K0XjiByc+zf1N5/wEoVugg+Epq3MX0qbwIeFNks+J06we1fzSfJ7q1xFN/tLkBgxBCdFALzt1mh
	rRp37i431BU8BaOoAfmqGQQ8rcFxg=
X-Google-Smtp-Source: AGHT+IFvKA1+gNZSHXPhDg9R10UrD3Zf0H4eUhPkX/HS+B9nFWrGe5Hu0zKQ0XEyBpiDpJBP1vknUg==
X-Received: by 2002:a17:906:fe05:b0:b72:de4f:cea6 with SMTP id a640c23a62f3a-b736793de61mr322529466b.48.1763127498389;
        Fri, 14 Nov 2025 05:38:18 -0800 (PST)
Received: from SMW024614.wbi.nxp.com ([128.77.115.158])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fedb2cfsm385330666b.71.2025.11.14.05.38.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 05:38:18 -0800 (PST)
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Daniel Baluta <daniel.baluta@nxp.com>,
	Shengjiu Wang <shengjiu.wang@nxp.com>,
	Frank Li <Frank.Li@nxp.com>
Cc: devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH v5 1/6] reset: imx8mp-audiomix: Drop unneeded macros
Date: Fri, 14 Nov 2025 05:37:33 -0800
Message-ID: <20251114133738.1762-2-laurentiumihalcea111@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251114133738.1762-1-laurentiumihalcea111@gmail.com>
References: <20251114133738.1762-1-laurentiumihalcea111@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>

The macros defining the mask values for the EARC, EARC PHY resets,
and the DSP RUN_STALL signal can be dropped as they are not and will
not be used anywhere else except to set the value of the "mask" field
from "struct imx8mp_reset_map". In this particular case, based on the
name of the "mask" field, you can already deduce what these values are
for, which is why defining macros for them doesn't offer any new
information, nor does it help with the code readability.

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>
Reviewed-by: Frank Li <Frank.Li@nxp.com>
Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
---
 drivers/reset/reset-imx8mp-audiomix.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/reset/reset-imx8mp-audiomix.c b/drivers/reset/reset-imx8mp-audiomix.c
index eceb37ff5dc5..acfa92b15329 100644
--- a/drivers/reset/reset-imx8mp-audiomix.c
+++ b/drivers/reset/reset-imx8mp-audiomix.c
@@ -6,6 +6,7 @@
 #include <dt-bindings/reset/imx8mp-reset-audiomix.h>
 
 #include <linux/auxiliary_bus.h>
+#include <linux/bits.h>
 #include <linux/device.h>
 #include <linux/io.h>
 #include <linux/module.h>
@@ -14,11 +15,7 @@
 #include <linux/reset-controller.h>
 
 #define IMX8MP_AUDIOMIX_EARC_RESET_OFFSET	0x200
-#define IMX8MP_AUDIOMIX_EARC_RESET_MASK		BIT(0)
-#define IMX8MP_AUDIOMIX_EARC_PHY_RESET_MASK	BIT(1)
-
 #define IMX8MP_AUDIOMIX_DSP_RUNSTALL_OFFSET	0x108
-#define IMX8MP_AUDIOMIX_DSP_RUNSTALL_MASK	BIT(5)
 
 struct imx8mp_reset_map {
 	unsigned int offset;
@@ -29,17 +26,17 @@ struct imx8mp_reset_map {
 static const struct imx8mp_reset_map reset_map[] = {
 	[IMX8MP_AUDIOMIX_EARC_RESET] = {
 		.offset	= IMX8MP_AUDIOMIX_EARC_RESET_OFFSET,
-		.mask	= IMX8MP_AUDIOMIX_EARC_RESET_MASK,
+		.mask = BIT(0),
 		.active_low = true,
 	},
 	[IMX8MP_AUDIOMIX_EARC_PHY_RESET] = {
 		.offset	= IMX8MP_AUDIOMIX_EARC_RESET_OFFSET,
-		.mask	= IMX8MP_AUDIOMIX_EARC_PHY_RESET_MASK,
+		.mask = BIT(1),
 		.active_low = true,
 	},
 	[IMX8MP_AUDIOMIX_DSP_RUNSTALL] = {
 		.offset	= IMX8MP_AUDIOMIX_DSP_RUNSTALL_OFFSET,
-		.mask	= IMX8MP_AUDIOMIX_DSP_RUNSTALL_MASK,
+		.mask = BIT(5),
 		.active_low = false,
 	},
 };
-- 
2.43.0


