Return-Path: <devicetree+bounces-33354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0879E83307E
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 22:53:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B5A1C2848AC
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 21:53:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F10235822A;
	Fri, 19 Jan 2024 21:53:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="dYR7R8wr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ED4D58123
	for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 21:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705701208; cv=none; b=Y+v1NN3JNAHlJd5S7Kx68B2SpU8mVoElm5Q5iRyTrDH3f0+CAXccKfC4IO5j5WMzGB9YH8+1JCHvqWa9Fu9gSTyBcj7p/+UIE+b7B1nvBvi4auZertK0vrbfeohIin1KojjambqqEH1cuCd/FTOaca8FvcZT9XnY8Zs5uQKpUTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705701208; c=relaxed/simple;
	bh=hoWJbemUFLCRVA/CsQjaythDoXbfbmHVmyUdH/Dbfec=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cUWhpVsxgBg3i4Ik1xX9edbqxKHJKy+g7ZUfZZr9fds9lHlSZ16fDdD0+hrG4xVYU0ALuoCUWAATOrhJ5AjJ6o8SKAMcUzQOlTHW4usS0qMPMs97gzhmHcnfg5Bu1ZBL/W7L/8hhpdXb/oO+buazbxUwbFDTe/42F5x3tcdadMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=dYR7R8wr; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-1d3b84173feso2341415ad.1
        for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 13:53:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1705701207; x=1706306007; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4foceVJeKU3mOZhwsqt+SDrGA8I9pAkcPI2DCqgKfW8=;
        b=dYR7R8wrzPwo9odTBbYJ+nlgHs++MlbmiJND1HJ0GKBIHKAA/kW//9NtcSVsGcJhQT
         HLIhfXW3KVJPF7QN7DZ4E2Yk/nXAPEgxMvHFkpqauuYQUBuSQO3MKuXc2XnpUwQirKKJ
         Kr4kTBvLqktYh9BsDZI2t9ESBKZkO025XIsRo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705701207; x=1706306007;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4foceVJeKU3mOZhwsqt+SDrGA8I9pAkcPI2DCqgKfW8=;
        b=Kq2/eQX8El1DXGV5sm+Zlx3OZMw+2jxcFuVMsSIu0nuMZBeUQenVf/AgJ2mTxR+RoQ
         5YMAIgJaJO2fllTHEWDGy9BJUB9A2uBgzRlNpD9Hqc5PdGuBQ43MZOXukOdTb72FTa+i
         7YnQl05BsFMa0iVf3L5e0SqlzfpBeyNpIdN/UzK4mEuijxhp0etnJC/vSQltuGNv1aRP
         D7d3If/rJ0mXHv5VTPK9N6161qxMBS136PhtxYDDGlwUpPRS7tWK/SszLzYo+MdvmXRR
         UBrgKXNZRwbyTNef5HJ+c5CbUOE4p7nY+2qShtol18UzbgdttnMEzvvgS//P+yT0JAuT
         A10w==
X-Gm-Message-State: AOJu0YzTolFtisp5E0USfDzsLXSYLagDhk0r1urtvzV9qassbQrFn5jo
	QN1lB/gV3gXfWm+rrc9zIu3D8Y6SwNrk9PVOzWvXwFd76PCGywM0/znNwkVOcvBcW55nhkumAxr
	zyA==
X-Google-Smtp-Source: AGHT+IEPlEjeWnPqgsDAVLeQmSjXW6eI+DLozLXQSMdK1MKkz1OHDLdAaeP0RQjOtee5AAJ7UJmZmA==
X-Received: by 2002:a05:6a20:439f:b0:19a:efad:f1c3 with SMTP id i31-20020a056a20439f00b0019aefadf1c3mr1075337pzl.4.1705701206901;
        Fri, 19 Jan 2024 13:53:26 -0800 (PST)
Received: from lbrmn-mmayer.ric.broadcom.net ([192.19.161.248])
        by smtp.gmail.com with ESMTPSA id e11-20020a63f54b000000b005b92e60cf57sm3932995pgk.56.2024.01.19.13.53.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jan 2024 13:53:26 -0800 (PST)
Received: by lbrmn-mmayer.ric.broadcom.net (Postfix, from userid 1000)
	id B163E89A; Fri, 19 Jan 2024 13:53:25 -0800 (PST)
From: Markus Mayer <mmayer@broadcom.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Markus Mayer <mmayer@broadcom.com>,
	Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>,
	Device Tree Mailing List <devicetree@vger.kernel.org>
Subject: [PATCH v2 5/5] memory: brcmstb_dpfe: support DPFE API v4
Date: Fri, 19 Jan 2024 13:52:28 -0800
Message-ID: <20240119215231.758844-6-mmayer@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240119215231.758844-1-mmayer@broadcom.com>
References: <20240119215231.758844-1-mmayer@broadcom.com>
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
 drivers/memory/brcmstb_dpfe.c | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/memory/brcmstb_dpfe.c b/drivers/memory/brcmstb_dpfe.c
index a44a70d028f6..97dcb3762666 100644
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
@@ -932,6 +957,7 @@ static const struct of_device_id brcmstb_dpfe_of_match[] = {
 	{ .compatible = "brcm,dpfe-cpu-v1", .data = &dpfe_api_old_v2 },
 	{ .compatible = "brcm,dpfe-cpu-v2", .data = &dpfe_api_new_v2 },
 	{ .compatible = "brcm,dpfe-cpu-v3", .data = &dpfe_api_v3 },
+	{ .compatible = "brcm,dpfe-cpu-v4", .data = &dpfe_api_v4 },
 
 	/*
 	 * This "default" compatible string should no longer be used. It has
-- 
2.43.0


