Return-Path: <devicetree+bounces-264198-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6D6CAb+VimmuMAAAu9opvQ
	(envelope-from <devicetree+bounces-264198-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 03:19:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B07D1163FC
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 03:19:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 03EB73019193
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 02:19:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 146AC2D3ECF;
	Tue, 10 Feb 2026 02:19:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZAnK5Ntq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C09032D1907
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 02:19:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770689979; cv=none; b=Rcwvpv1BCuFBY8hUpmkGMBast52+KHNXKisaw4kerOBpVS4zPV1G0hRmSr/QtKZZiL/05DDXG+FktF8sH+HVb/Rf68z3kabM7tWTrTyT69GJZeKWSvGeoKo6nSwU/gksxd7+yBmEs+aO5OLKgbUZ0ksySIcsI9fPcm4n+J+G5CM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770689979; c=relaxed/simple;
	bh=oOLKfQhplLPkksnqPu6jGg/HV4MpMelwgSgfRLfxuPs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LfJ6Vc5n5lc5Ox2OL9M00fUwvDsx8rP+acwDRwGtNXHqBHZCjDwg92CZ4FXY47oJ43+EearrNm2P8chTInO1jIlzz2cJEdtt25kasVANQutzLvGgbM0UTyFnN9cgDpheZQ7jCS0T3jEeyH9R4v5yMS+BTYuYjlqHC8lhU/FyIj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZAnK5Ntq; arc=none smtp.client-ip=209.85.222.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-8ca3807494eso27747285a.2
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 18:19:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770689977; x=1771294777; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KxExnHAcD18UQwwwaoDAhxWnwLUGHdshY5r3R5qxHk0=;
        b=ZAnK5Ntq9DWVnRH/oIVCCj2iMX9K+E2Vg/41gor6CpWL+OuY94bI+uKurvaanXlXc4
         VRfjd9zAbP3PUfVmQccPEiB3LoYaK2bAIVuhoEwXkz6NUCjCAePU7tFztl18hRtn4XFh
         oU308NFE9Fd0CJCrqUHgToU+OUWQxBOl/0pfACStwumn2whiWvem8CmbtK5CRMver3au
         pfpT0MBj2Yr2QISA/ZglXSf4wUhalpZHStVfNdjdhx8D3ctJNrOJwNbgBj2VgPG78MGv
         uHRruWcNe/ccKroSily+iC29/pR/jIXtx6GGB3OEd9MIwNCseMvS2leYDq2nxAoGGU1G
         bulg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770689977; x=1771294777;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KxExnHAcD18UQwwwaoDAhxWnwLUGHdshY5r3R5qxHk0=;
        b=c7Fz2c8kuODeMSuOI2gstaFsDeIYeDw02NwxDOERKNWsZ9cx8gEDUEix5VItSBrpdL
         6SKsQ1TXAtfA2w0ocDcHsI+5s+JykHmbL2T3ljZf7NdR5l2KWTRu4SVOA0IANQUxRxLA
         jZ8MzQisEaYMRcWdQDr03IwQLiEo900sDBvKsj4Iq+EJI7+i/cLffD1bBWjavzGF9EP8
         ENmxedXEmD1WIuhtKSk9ubvc2VAg49IBZrBRu9bsNEATOx+qBrUpwEv/ynIf9p34JO6e
         JQV+vMpQhNm6P3Rsln0E6zBCBYoDmezJtfFxwsYDaCIff20w7mAC+TYSUDv2anSEqXNV
         xEiw==
X-Forwarded-Encrypted: i=1; AJvYcCUby+mWqqFXdLzpDChnydCgbuKDzqSko/2hAm02d785yPqhSEQjakmOM/EjtXAhFVNRD7/VePUvG9TP@vger.kernel.org
X-Gm-Message-State: AOJu0YySW75FgY9pISwkTtOkCcImX/c02G6K+6PC6vOsuO0p3f+L12Hd
	u+tj98aYMrjniKykvxXqfZF+1o/1TFjkI6yr3iRN5YSy22OkJLAj7N+rgDPMbA==
X-Gm-Gg: AZuq6aINyTzBppauNcqwr/NBtneTPgCzVVEMfpouUSy2s5X+kzTqKQaCvq/X76UX23u
	v3O+UEH9P/QyWUWmF8vieINRrBPPOkwLF+OGcu0W7bT+Zd0DSZYCmdnoxO+5AgLOfWcuFQywY4k
	sJK1Oach/5RYJ9WmBh/EQO72B78QNidsCPOl3sI2ODMiHwEvaXA0WcUJbUZ0CdNSUbaBI2OKAK1
	Ae+m0F0tqy6ohy4jC3H8IDOerVH8A3eK20muZIeF3YqsQs69Q6+MNnnDboyS/3bHZaHgcRCp90A
	wEVpB9/j6LfR3Gcv6V3SerbByo/L8eVMKSZ0mOrGI05ZYd9CbOoBYF2FlcYdSPSYDMbWvvrGaHy
	/gd0x3iV0ZlAAnGO7E5jEp3F67M30WAdC05fDGMQGEVy35Y85ZZYfS38myozuO7o6hI40Xn81OJ
	Ew4Th0ZQ7sOuxd8XNVWN53DMKXYbxT49ZxHZAxdpJIV8D6lxZS+KTbAIw0gbsPlQef6Gf/mj93/
	CaMMmm7hWlj188=
X-Received: by 2002:a05:620a:46a9:b0:8c6:b315:1452 with SMTP id af79cd13be357-8caeeb510c0mr1779994685a.7.1770689976800;
        Mon, 09 Feb 2026 18:19:36 -0800 (PST)
Received: from localhost (bras-base-toroon21-grc-75-184-144-58-243.dsl.bell.ca. [184.144.58.243])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cafa4b6b8dsm930751885a.50.2026.02.09.18.19.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 18:19:35 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Conor Dooley <conor@kernel.org>,
	Jonathan Cameron <jonathan.cameron@huawei.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH 2/3] soc: qcom: llcc: Add configuration data for SDM670
Date: Mon,  9 Feb 2026 21:19:56 -0500
Message-ID: <20260210021957.13357-3-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260210021957.13357-1-mailingradian@gmail.com>
References: <20260210021957.13357-1-mailingradian@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-264198-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9B07D1163FC
X-Rspamd-Action: no action

Add system cache table and configs for the SDM670 SoC.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 drivers/soc/qcom/llcc-qcom.c | 105 +++++++++++++++++++++++++++++++++++
 1 file changed, 105 insertions(+)

diff --git a/drivers/soc/qcom/llcc-qcom.c b/drivers/soc/qcom/llcc-qcom.c
index 13e174267294..c5f7647ec8de 100644
--- a/drivers/soc/qcom/llcc-qcom.c
+++ b/drivers/soc/qcom/llcc-qcom.c
@@ -1591,6 +1591,94 @@ static const struct llcc_slice_config sc8280xp_data[] = {
 	},
 };
 
+static const struct llcc_slice_config sdm670_data[] = {
+	{
+		.usecase_id = LLCC_CPUSS,
+		.slice_id = 1,
+		.max_cap = 512,
+		.priority = 1,
+		.bonus_ways = 0xf,
+		.res_ways = 0x0,
+		.cache_mode = 0,
+		.dis_cap_alloc = true,
+		.retain_on_pc = true,
+		.activate_on_init = true,
+	}, {
+		.usecase_id = LLCC_ROTATOR,
+		.slice_id = 4,
+		.max_cap = 384,
+		.priority = 2,
+		.fixed_size = true,
+		.bonus_ways = 0x0,
+		.res_ways = 0xe,
+		.cache_mode = 2,
+		.dis_cap_alloc = true,
+		.retain_on_pc = true,
+	}, {
+		.usecase_id = LLCC_VOICE,
+		.slice_id = 5,
+		.max_cap = 512,
+		.priority = 1,
+		.bonus_ways = 0xf,
+		.res_ways = 0x0,
+		.cache_mode = 0,
+		.dis_cap_alloc = true,
+		.retain_on_pc = true,
+	}, {
+		.usecase_id = LLCC_AUDIO,
+		.slice_id = 6,
+		.max_cap = 512,
+		.priority = 1,
+		.bonus_ways = 0xf,
+		.res_ways = 0x0,
+		.cache_mode = 0,
+		.dis_cap_alloc = true,
+		.retain_on_pc = true,
+	}, {
+		.usecase_id = LLCC_MDM,
+		.slice_id = 8,
+		.max_cap = 512,
+		.priority = 1,
+		.bonus_ways = 0xf,
+		.res_ways = 0x0,
+		.cache_mode = 0,
+		.dis_cap_alloc = true,
+		.retain_on_pc = true,
+	}, {
+		.usecase_id = LLCC_GPU,
+		.slice_id = 12,
+		.max_cap = 384,
+		.priority = 1,
+		.fixed_size = true,
+		.bonus_ways = 0x0,
+		.res_ways = 0x0,
+		.cache_mode = 0,
+		.dis_cap_alloc = true,
+		.retain_on_pc = true,
+	}, {
+		.usecase_id = LLCC_MMUHWT,
+		.slice_id = 13,
+		.max_cap = 512,
+		.priority = 1,
+		.bonus_ways = 0xf,
+		.res_ways = 0x0,
+		.cache_mode = 0,
+		.dis_cap_alloc = true,
+		.activate_on_init = true,
+	}, {
+		.usecase_id = LLCC_AUDHW,
+		.slice_id = 22,
+		.max_cap = 512,
+		.priority = 1,
+		.fixed_size = true,
+		.bonus_ways = 0xf,
+		.res_ways = 0x0,
+		.cache_mode = 0,
+		.dis_cap_alloc = true,
+		.retain_on_pc = true,
+	},
+};
+
 static const struct llcc_slice_config sdm845_data[] =  {{
 		.usecase_id = LLCC_CPUSS,
 		.slice_id = 1,
@@ -3995,6 +4083,17 @@ static const struct qcom_llcc_config sc8280xp_cfg[] = {
 	},
 };
 
+static const struct qcom_llcc_config sdm670_cfg[] = {
+	{
+		.sct_data	= sdm670_data,
+		.size		= ARRAY_SIZE(sdm670_data),
+		.skip_llcc_cfg	= true,
+		.reg_offset	= llcc_v1_reg_offset,
+		.edac_reg_offset = &llcc_v1_edac_reg_offset,
+		.no_edac	= true,
+	},
+};
+
 static const struct qcom_llcc_config sdm845_cfg[] = {
 	{
 		.sct_data	= sdm845_data,
@@ -4158,6 +4257,11 @@ static const struct qcom_sct_config sc8280xp_cfgs = {
 	.num_config	= ARRAY_SIZE(sc8280xp_cfg),
 };
 
+static const struct qcom_sct_config sdm670_cfgs = {
+	.llcc_config	= sdm670_cfg,
+	.num_config	= ARRAY_SIZE(sdm670_cfg),
+};
+
 static const struct qcom_sct_config sdm845_cfgs = {
 	.llcc_config	= sdm845_cfg,
 	.num_config	= ARRAY_SIZE(sdm845_cfg),
@@ -4953,6 +5057,7 @@ static const struct of_device_id qcom_llcc_of_match[] = {
 	{ .compatible = "qcom,sc7280-llcc", .data = &sc7280_cfgs },
 	{ .compatible = "qcom,sc8180x-llcc", .data = &sc8180x_cfgs },
 	{ .compatible = "qcom,sc8280xp-llcc", .data = &sc8280xp_cfgs },
+	{ .compatible = "qcom,sdm670-llcc", .data = &sdm670_cfgs },
 	{ .compatible = "qcom,sdm845-llcc", .data = &sdm845_cfgs },
 	{ .compatible = "qcom,sm6350-llcc", .data = &sm6350_cfgs },
 	{ .compatible = "qcom,sm7150-llcc", .data = &sm7150_cfgs },
-- 
2.53.0


