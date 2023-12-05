Return-Path: <devicetree+bounces-21967-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1F8805E0B
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 19:48:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ED12F281C11
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 18:48:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37E8B63DFD;
	Tue,  5 Dec 2023 18:48:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="Sd1uSfKe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-x133.google.com (mail-il1-x133.google.com [IPv6:2607:f8b0:4864:20::133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7411BD64
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 10:48:31 -0800 (PST)
Received: by mail-il1-x133.google.com with SMTP id e9e14a558f8ab-35d626e4f79so3414905ab.0
        for <devicetree@vger.kernel.org>; Tue, 05 Dec 2023 10:48:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1701802110; x=1702406910; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c83gTiuSNlfK6LuG6NDT4lKYycGtpFWRhFgpMEcF2f0=;
        b=Sd1uSfKeg/vkyrL7j+/8c8WoxdnHmQ94waLtsfDQly9ykwlOR7CW5OVXw9//l1UmB7
         sbdpANDp7hAgHPBb3XYD5a5jzrNuKK87Xlw2M3gKE1BcOed9zJmYRHsdmpzAmvKHwPRq
         IAl1Z0mGy1taoEqa7iD5PYMf+07ubTz/JQOkg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701802110; x=1702406910;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c83gTiuSNlfK6LuG6NDT4lKYycGtpFWRhFgpMEcF2f0=;
        b=xIwgZ1yUgTxSYScfywjItVY6zIWV2iIGktpnY1agUyhFAn0AbsrlXcy+aWN0r3+DRQ
         kq285dBiC0gr1xsGEHVS3JKzv8dnSqZe4m4E1jKEDhZW6tfpWi0Kui/N+Tm+FvnyqNUO
         k1mpSTlbDL1VJAWs3EoCYv6Ur7HwdKmYchcsLlaQKlU1ub4Ypd3t40jFUpFDj1cn0Jbk
         GkKEhPGIQKk0w7E8EUZYzMsHiAk2bz0fuyYjQqJdfPJDRttw5BnHjwZNAVN3O+TUiZxp
         Ks9e2CIxIT/D03sWmQd3ZCIPn0ovokc96/KgmFzsAf8vrLvOeZmrF5zh4ggbkT35ruh7
         DKPQ==
X-Gm-Message-State: AOJu0YyALb9FRXuClKdVCfDKqkDwDOly0knrER3aVLKGPjIOb3EKggpp
	/kjW7YqTLAdwAkOgVq7SBbiHWQ==
X-Google-Smtp-Source: AGHT+IGfGYG2l4gFdK0OsrZ02weECf9cy2uaEaj17cAMQGSoXntfIxayPGE2QlhNtQlxn10jqttbVw==
X-Received: by 2002:a05:6e02:2195:b0:35d:5550:76b7 with SMTP id j21-20020a056e02219500b0035d555076b7mr13324536ila.0.1701802110636;
        Tue, 05 Dec 2023 10:48:30 -0800 (PST)
Received: from lbrmn-mmayer.ric.broadcom.net ([192.19.161.248])
        by smtp.gmail.com with ESMTPSA id bd9-20020a656e09000000b0058ee60f8e4dsm8440189pgb.34.2023.12.05.10.48.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Dec 2023 10:48:29 -0800 (PST)
Received: by lbrmn-mmayer.ric.broadcom.net (Postfix, from userid 1000)
	id AD769D06; Tue,  5 Dec 2023 10:48:28 -0800 (PST)
From: Markus Mayer <mmayer@broadcom.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Markus Mayer <mmayer@broadcom.com>,
	Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>,
	Device Tree Mailing List <devicetree@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH 3/4] memory: brcmstb_dpfe: support DPFE API v4
Date: Tue,  5 Dec 2023 10:47:36 -0800
Message-ID: <20231205184741.3092376-4-mmayer@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231205184741.3092376-1-mmayer@broadcom.com>
References: <20231205184741.3092376-1-mmayer@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for version 4 of the DPFE API. This new version is largely
identical to version 3. The main difference is that all commands now
take the MHS version number as the first argument. Any other arguments
have been pushed down by one (i.e. what used to be arg0 in v3 is arg1 in
v4).

Signed-off-by: Markus Mayer <mmayer@broadcom.com>
---
 drivers/memory/brcmstb_dpfe.c | 31 ++++++++++++++++++++++++++++++-
 1 file changed, 30 insertions(+), 1 deletion(-)

diff --git a/drivers/memory/brcmstb_dpfe.c b/drivers/memory/brcmstb_dpfe.c
index 66876b409e59..0b0a9b85b605 100644
--- a/drivers/memory/brcmstb_dpfe.c
+++ b/drivers/memory/brcmstb_dpfe.c
@@ -37,6 +37,9 @@
 
 #define DRVNAME			"brcmstb-dpfe"
 
+/* Generic constants */
+#define MHS_VERSION		0x04000000
+
 /* DCPU register offsets */
 #define REG_DCPU_RESET		0x0
 #define REG_TO_DCPU_MBOX	0x10
@@ -301,6 +304,28 @@ static const struct dpfe_api dpfe_api_v3 = {
 	},
 };
 
+/* API v4 firmware commands */
+static struct dpfe_api dpfe_api_v4 = {
+	.version = 4,
+	.fw_name = NULL, /* We expect the firmware to have been downloaded! */
+	.sysfs_attrs = dpfe_v3_groups, /* Same as v3 */
+	.command = {
+		[DPFE_CMD_GET_INFO] = {
+			[MSG_HEADER] = DPFE_MSG_TYPE_COMMAND,
+			[MSG_COMMAND] = 0x0101,
+			[MSG_ARG_COUNT] = 2,
+			[MSG_ARG0] = MHS_VERSION,
+			[MSG_ARG0 + 1] = 1, /* Now the 2nd argument */
+		},
+		[DPFE_CMD_GET_REFRESH] = {
+			[MSG_HEADER] = DPFE_MSG_TYPE_COMMAND,
+			[MSG_COMMAND] = 0x0202,
+			[MSG_ARG_COUNT] = 1,
+			[MSG_ARG0] = MHS_VERSION,
+		},
+	},
+};
+
 static const char *get_error_text(unsigned int i)
 {
 	static const char * const error_text[] = {
@@ -929,8 +954,12 @@ static const struct of_device_id brcmstb_dpfe_of_match[] = {
 	{ .compatible = "brcm,dpfe-cpu-v1", .data = &dpfe_api_old_v2 },
 	{ .compatible = "brcm,dpfe-cpu-v2", .data = &dpfe_api_new_v2 },
 	{ .compatible = "brcm,dpfe-cpu-v3", .data = &dpfe_api_v3 },
+	{ .compatible = "brcm,dpfe-cpu-v4", .data = &dpfe_api_v4 },
 
-	/* API v3 is the default going forward */
+	/*
+	 * For historical reasons, API v3 is the default if nothing else is
+	 * specified.
+	 */
 	{ .compatible = "brcm,dpfe-cpu", .data = &dpfe_api_v3 },
 	{}
 };
-- 
2.43.0


