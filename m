Return-Path: <devicetree+bounces-293311-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QFMDBZll+mmnOgMAu9opvQ
	(envelope-from <devicetree+bounces-293311-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 23:48:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E8D4D40A4
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 23:48:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D2BDD30C14AC
	for <lists+devicetree@lfdr.de>; Tue,  5 May 2026 21:46:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 049854968E9;
	Tue,  5 May 2026 21:46:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="b03c5jwR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f42.google.com (mail-yx1-f42.google.com [74.125.224.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4A94968E4
	for <devicetree@vger.kernel.org>; Tue,  5 May 2026 21:46:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778017563; cv=none; b=KxQ02/4uTaa9dBM1SkybkWDStEWoPKB6O7n9jZzp1sHYRxKagRMrnKmzZNkMJiGc16FBRY68yJ13nbfd5vbvWmmo2sOwzYOJO00oKMkYzcKni7V5NkRUlT2/NRtNQrtj4koMsfV8qEakK3EisgE9l4LjhMWLbiLQmRCTB+XNDRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778017563; c=relaxed/simple;
	bh=vJYzAXbPfCbAJaswowQbOeDCxV6PLVD1NV5VrklEQlI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=O6EAyrQUxr3QjcyDAkpGqQqmifrdRFSf/gTZBxcwy5bpgYJ8+H0nHIfODpCyobMDcGaiIt9b/zjuF1NfFB3RePJ4JdnuT31kZrqPyaeyrMVmm/yxjvO5PUuaC+uMfWMXnaTmAAQAsJ7QLA3mu2YGQoOSDfP2Qig2qBjGHx1GraQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=b03c5jwR; arc=none smtp.client-ip=74.125.224.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f42.google.com with SMTP id 956f58d0204a3-6563f83ae9fso6257054d50.1
        for <devicetree@vger.kernel.org>; Tue, 05 May 2026 14:46:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778017561; x=1778622361; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mPTICstFofCWSe/VAQJ+1i2Ou3dGd2vNpDTutFRZN8A=;
        b=b03c5jwR6c4yDMNz7aKs52mI1+zmkV0REbCklQSVLOrCIb30djAvBrGbMRQ13aoHjX
         s91cBORtB2SczCgixZqO2H+ehtoJcVCC5wm3U76LnPwarnZ8mKUZjNPqaPnDYkz796a2
         6pZ3hVbmurLRANHo6acFLGuf8u2p4E0I8g0XqGFQgAwKl68bHj9sv7X4IkC7ZKcOsdEv
         8shgZhicfQ7lAUE6xDo4hjl8YrnY4W1GpRfhBUB5HeFGNV1K7K8VGBy0cYl0Ma7mL8+b
         /gF+lx3NIDP0rUtmxXMKJJtA9RrOQUdvmnH+v8nuk0iyyUjm58+tXXgW5CV92MvpaxM/
         WF8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778017561; x=1778622361;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mPTICstFofCWSe/VAQJ+1i2Ou3dGd2vNpDTutFRZN8A=;
        b=o7t60f0s2nr8DdaN2izEz066pF6Eh2+2CCAYAKp7l3S8k+3JUvoaQaEANoVYlmqPbj
         p3IxwPwukoa93PfleVFjiMsK7RaTqiEzbYSzwJHgyvrDD9uk5gBtCIQAzDFl0qBK0GcC
         Iigw/r/BHOJu7HOR0R8oqct/sKt3MVLBsBxlvv+lMOHCf2fKvGRTM27iD4GeiQtNOW4C
         NnmYtTwV42zEGkiPRaXM4Ao4i0tOWaDGNFNUoB9Vi2oPwQMeLQHv/Rq7USb1MpY+I/tT
         U4E1iOiwkeP3+fV41LHSuZdTIxLFpCt5o+4srQsDHQClO14+7RST3TL6ZqCfkYECMBEb
         8ayw==
X-Forwarded-Encrypted: i=1; AFNElJ+S/h9n3PBHiE45IsyaqzUwk8mo9yxnSN3d49N2qrBMQH3+ZCTgv7W9EJks2kuK+h0Y3jtNcW+YzCJm@vger.kernel.org
X-Gm-Message-State: AOJu0YyNrzstYkpw40nZSBNXN5eUsq35/XwhyKi1jrKbg94KjX3rBgGi
	siq3eV22W2ejs8SH8725LozsVR0sXCd3wdgebE3HIBUinaNSMTM8XVLM
X-Gm-Gg: AeBDievKcaf7fsBuiM07RJRRQXUdCQXWHHU4bfSn48zszDj+KVcZSdjNOECmbrycI4x
	m2VFgaz2H8b391tb61+2XR0Qji6YAWLpHJ7f/fuGY1EB6vmq71IUlB3bLn5pAvSqiUFwiws3ho4
	jqnsMb1mAjatE17E86vq2SNLOrNiLLkiqR/mqinEUmkQuQCkJ7w0rUFApkDzGYt+POoT+LyeR2e
	TFEZ1x5qG7jh0xAOcins6aPpciVoszbAYDXdS8fKAxqXhoe1bs3GE+iN9OXIenzLmTUGEdlzaHN
	XW/39vI88dIb4I2YnvikpjFpzV3yUTaNSGrY/rZTm3YInb7BkX2rfSZ6qq7VBDWS6kJk32OTySw
	/iypYXW83CFRQnpa78TXwrZiL0z8e+o3Yb1/Lg/pOCK9hHpQwj3EwRBbUDUSOIx2w2AcIrfubX5
	aqbTS4a6gr956M9aDb/HZJuEIHntXN2hTP6oK5mY5+sfFULxsDSKER+5NzcQ==
X-Received: by 2002:a05:690c:e64b:b0:79b:cf31:9787 with SMTP id 00721157ae682-7bdf5e6575emr8174507b3.28.1778017561163;
        Tue, 05 May 2026 14:46:01 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7bd6656542bsm70158767b3.20.2026.05.05.14.45.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2026 14:46:00 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Wed, 06 May 2026 00:44:40 +0300
Subject: [PATCH v4 3/9] media: qcom: venus: Add msm8939 resource struct
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260506-msm8939-venus-rfc-v4-3-994f5eb22acb@gmail.com>
References: <20260506-msm8939-venus-rfc-v4-0-994f5eb22acb@gmail.com>
In-Reply-To: <20260506-msm8939-venus-rfc-v4-0-994f5eb22acb@gmail.com>
To: Bryan O'Donoghue <bod@kernel.org>, 
 Vikash Garodia <vikash.garodia@oss.qualcomm.com>, 
 Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-clk@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Rspamd-Queue-Id: A3E8D4D40A4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-293311-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com,oss.qualcomm.com];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.30:email,qualcomm.com:email,apitzsch.eu:email]

From: André Apitzsch <git@apitzsch.eu>

Add msm8939 configuration data and related compatible.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: André Apitzsch <git@apitzsch.eu>
Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 drivers/media/platform/qcom/venus/core.c | 40 ++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/platform/qcom/venus/core.c
index 7e639760c41d..1871cf3830ac 100644
--- a/drivers/media/platform/qcom/venus/core.c
+++ b/drivers/media/platform/qcom/venus/core.c
@@ -688,6 +688,45 @@ static const struct venus_resources msm8916_res = {
 	.enc_nodename = "video-encoder",
 };
 
+static const struct freq_tbl msm8939_freq_table[] = {
+	{ 489600, 266670000 },	/* 1080p @ 60 */
+	{ 244800, 133330000 },	/* 1080p @ 30 */
+	{ 244800, 200000000 },	/* 1080p @ 30 */
+	{ 220800, 133330000 },	/* 720p @ 60 */
+	{ 108000, 133330000 },	/* 720p @ 30 */
+	{ 108000, 200000000 },	/* 720p @ 30 */
+	{ 72000, 133330000 },	/* VGA @ 60 */
+	{ 36000, 133330000 },	/* VGA @ 30 */
+};
+
+static const struct reg_val msm8939_reg_preset[] = {
+	{ 0xe0020, 0x0aaaaaaa },
+	{ 0xe0024, 0x0aaaaaaa },
+	{ 0x80124, 0x00000003 },
+};
+
+static const struct venus_resources msm8939_res = {
+	.freq_tbl = msm8939_freq_table,
+	.freq_tbl_size = ARRAY_SIZE(msm8939_freq_table),
+	.reg_tbl = msm8939_reg_preset,
+	.reg_tbl_size = ARRAY_SIZE(msm8939_reg_preset),
+	.clks = { "core", "iface", "bus", },
+	.clks_num = 3,
+	.vcodec_clks = { "core0", "core1" },
+	.vcodec_clks_num = 2,
+	.vcodec_pmdomains = (const char *[]) { "venus", "core0", "core1" },
+	.vcodec_pmdomains_num = 3,
+	.max_load = 489600, /* 1080p@30 + 1080p@30 */
+	.hfi_version = HFI_VERSION_1XX,
+	.vmem_id = VIDC_RESOURCE_NONE,
+	.vmem_size = 0,
+	.vmem_addr = 0,
+	.dma_mask = 0xddc00000 - 1,
+	.fwname = "qcom/venus-1.8/venus.mbn",
+	.dec_nodename = "video-decoder",
+	.enc_nodename = "video-encoder",
+};
+
 static const struct freq_tbl msm8996_freq_table[] = {
 	{ 1944000, 520000000 },	/* 4k UHD @ 60 (decode only) */
 	{  972000, 520000000 },	/* 4k UHD @ 30 */
@@ -1121,6 +1160,7 @@ static const struct venus_resources qcm2290_res = {
 
 static const struct of_device_id venus_dt_match[] = {
 	{ .compatible = "qcom,msm8916-venus", .data = &msm8916_res, },
+	{ .compatible = "qcom,msm8939-venus", .data = &msm8939_res, },
 	{ .compatible = "qcom,msm8996-venus", .data = &msm8996_res, },
 	{ .compatible = "qcom,msm8998-venus", .data = &msm8998_res, },
 	{ .compatible = "qcom,qcm2290-venus", .data = &qcm2290_res, },

-- 
2.54.0


