Return-Path: <devicetree+bounces-18131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2F97F5441
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 00:09:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4658B1F20F09
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 23:09:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A1CD219E5;
	Wed, 22 Nov 2023 23:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rLBVzgs1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-x130.google.com (mail-il1-x130.google.com [IPv6:2607:f8b0:4864:20::130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12D8BD40
	for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 15:09:18 -0800 (PST)
Received: by mail-il1-x130.google.com with SMTP id e9e14a558f8ab-35aa43c92daso3565805ab.1
        for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 15:09:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700694557; x=1701299357; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UZf5YHbhcbeS57bvX0d7nyKtoOQx7TeuCp4s7XpeiHk=;
        b=rLBVzgs1wAPd46J70F9TjjxkX2xnQA7hzV1MIB0lvi0/PIGJOSa1e4vjlcoNjBghac
         as/jRZqpw4Cs7tKwugH5WRmjX4s660O4F8bSLM8GXe6LmTp297rqdeS3YK/f+ii40DHD
         ZJ5viD+o7OcEG6oeDhJ2Gs3emiasrQhz4HrAGkw6PzXlHvhQTbba5rQFDdp9FyAil2JZ
         7DboGGnOJYHzFheJReGRIL2yhS0xXSa1t9m/cFqZVv4cY25iI2RAp3KUsNK5XUaFqpDv
         BmLMG0fouw5ysDbJWVKN9cVdZaKeZ5gWjOERnW+8i/s31YDjZDusK8AGbidG7gc1rAo2
         uoHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700694557; x=1701299357;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UZf5YHbhcbeS57bvX0d7nyKtoOQx7TeuCp4s7XpeiHk=;
        b=UO9cWUWEqRFu+R7MuiwvXtQdUZn1xDm0wROFz6HCviJ9oTOqmWrHriffxr079xcZNZ
         82kDep/a1t18Z2A5QkfCmLx19QrGtL+Q/7koL6fggMo3wjzjEjHhumBCaCVDtNwbDZk2
         LVh/CdLT7yTuNYAB0KyI24aI1w7J10bBRCrGwMqaSI7IbYEuHvpfsN7RB+mlUPErtsal
         iwGsTANnNyu65CtYo3B9OiNGNpBJEO1iIl5p762veo9w5z7SY9g0FIjMl/oEey+dC2lH
         Tb9/8YrEVhB1x3EBlZCjK5YpYT11bPfNRB4Gfv80T0HO+2Vrxukbed6fLSQMlpquGH/E
         eRzA==
X-Gm-Message-State: AOJu0YziDHTesr016JDqXVdPhSyvwx3ncPdxqXzqSKUdbS31ellHzoEM
	ciathGRA0Rmod+8ZxxOuUC/flA==
X-Google-Smtp-Source: AGHT+IEfjpYWs3J+rg1YT6DrvMGYXJRFcAQx/1a3k54mm8zLVVoK0kvzyQyY2FB5iMNa8151Z7QUGg==
X-Received: by 2002:a92:c5c9:0:b0:357:592a:8c4a with SMTP id s9-20020a92c5c9000000b00357592a8c4amr801254ilt.12.1700694557360;
        Wed, 22 Nov 2023 15:09:17 -0800 (PST)
Received: from localhost.localdomain (c-98-61-227-136.hsd1.mn.comcast.net. [98.61.227.136])
        by smtp.gmail.com with ESMTPSA id fm29-20020a0566382b1d00b0043a20ad93c8sm117754jab.41.2023.11.22.15.09.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 15:09:17 -0800 (PST)
From: Alex Elder <elder@linaro.org>
To: davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com
Cc: andersson@kernel.org,
	konrad.dybcio@linaro.org,
	agross@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	mka@chromium.org,
	quic_cpratapa@quicinc.com,
	quic_avuyyuru@quicinc.com,
	quic_jponduru@quicinc.com,
	quic_subashab@quicinc.com,
	elder@kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH net-next 3/5] net: ipa: prepare for IPA v5.5
Date: Wed, 22 Nov 2023 17:09:07 -0600
Message-Id: <20231122230909.895482-4-elder@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231122230909.895482-1-elder@linaro.org>
References: <20231122230909.895482-1-elder@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

For IPA v5.5+, the QTIME_TIMESTAMP_CFG register no longer defines
two fields in the DPL timestamp.  Make the code referencing those
fields in ipa_qtime_config() conditional based on IPA version.

IPA v5.0+ supports the IPA_MEM_AP_V4_FILTER and IPA_MEM_AP_V6_FILTER
memory regions.  Update ipa_mem_id_valid() to reflect that.

IPA v5.5 no longer supports a few register fields, adds some others,
and removes support for a few IPA interrupt types.  Update
"ipa_reg.h" to include information about IPA v5.5.

Signed-off-by: Alex Elder <elder@linaro.org>
---
 drivers/net/ipa/ipa_main.c |  9 ++++++---
 drivers/net/ipa/ipa_mem.c  |  2 +-
 drivers/net/ipa/ipa_reg.h  | 32 +++++++++++++++++++-------------
 3 files changed, 26 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ipa/ipa_main.c b/drivers/net/ipa/ipa_main.c
index da853353a5c72..8893290e132b4 100644
--- a/drivers/net/ipa/ipa_main.c
+++ b/drivers/net/ipa/ipa_main.c
@@ -74,6 +74,7 @@
 #define IPA_PAS_ID		15
 
 /* Shift of 19.2 MHz timestamp to achieve lower resolution timestamps */
+/* IPA v5.5+ does not specify Qtime timestamp config for DPL */
 #define DPL_TIMESTAMP_SHIFT	14	/* ~1.172 kHz, ~853 usec per tick */
 #define TAG_TIMESTAMP_SHIFT	14
 #define NAT_TIMESTAMP_SHIFT	24	/* ~1.144 Hz, ~874 msec per tick */
@@ -376,9 +377,11 @@ static void ipa_qtime_config(struct ipa *ipa)
 	iowrite32(0, ipa->reg_virt + reg_offset(reg));
 
 	reg = ipa_reg(ipa, QTIME_TIMESTAMP_CFG);
-	/* Set DPL time stamp resolution to use Qtime (instead of 1 msec) */
-	val = reg_encode(reg, DPL_TIMESTAMP_LSB, DPL_TIMESTAMP_SHIFT);
-	val |= reg_bit(reg, DPL_TIMESTAMP_SEL);
+	if (ipa->version < IPA_VERSION_5_5) {
+		/* Set DPL time stamp resolution to use Qtime (not 1 msec) */
+		val = reg_encode(reg, DPL_TIMESTAMP_LSB, DPL_TIMESTAMP_SHIFT);
+		val |= reg_bit(reg, DPL_TIMESTAMP_SEL);
+	}
 	/* Configure tag and NAT Qtime timestamp resolution as well */
 	val = reg_encode(reg, TAG_TIMESTAMP_LSB, TAG_TIMESTAMP_SHIFT);
 	val = reg_encode(reg, NAT_TIMESTAMP_LSB, NAT_TIMESTAMP_SHIFT);
diff --git a/drivers/net/ipa/ipa_mem.c b/drivers/net/ipa/ipa_mem.c
index db6ada2343afc..694960537ecda 100644
--- a/drivers/net/ipa/ipa_mem.c
+++ b/drivers/net/ipa/ipa_mem.c
@@ -165,7 +165,7 @@ static bool ipa_mem_id_valid(struct ipa *ipa, enum ipa_mem_id mem_id)
 
 	case IPA_MEM_AP_V4_FILTER:
 	case IPA_MEM_AP_V6_FILTER:
-		if (version != IPA_VERSION_5_0)
+		if (version < IPA_VERSION_5_0)
 			return false;
 		break;
 
diff --git a/drivers/net/ipa/ipa_reg.h b/drivers/net/ipa/ipa_reg.h
index aa1cbe76a4505..23231f0df93a6 100644
--- a/drivers/net/ipa/ipa_reg.h
+++ b/drivers/net/ipa/ipa_reg.h
@@ -277,8 +277,8 @@ enum ipa_reg_idle_indication_cfg_field_id {
 
 /* QTIME_TIMESTAMP_CFG register */
 enum ipa_reg_qtime_timestamp_cfg_field_id {
-	DPL_TIMESTAMP_LSB,
-	DPL_TIMESTAMP_SEL,
+	DPL_TIMESTAMP_LSB,				/* Not IPA v5.5+ */
+	DPL_TIMESTAMP_SEL,				/* Not IPA v5.5+ */
 	TAG_TIMESTAMP_LSB,
 	NAT_TIMESTAMP_LSB,
 };
@@ -329,6 +329,7 @@ enum ipa_reg_endp_init_cfg_field_id {
 	CS_OFFLOAD_EN,
 	CS_METADATA_HDR_OFFSET,
 	CS_GEN_QMB_MASTER_SEL,
+	PIPE_REPLICATE_EN,				/* IPA v5.5+ */
 };
 
 /** enum ipa_cs_offload_en - ENDP_INIT_CFG register CS_OFFLOAD_EN field value */
@@ -387,7 +388,7 @@ enum ipa_reg_endp_init_mode_field_id {
 	DCPH_ENABLE,					/* IPA v4.5+ */
 	DEST_PIPE_INDEX,
 	BYTE_THRESHOLD,
-	PIPE_REPLICATION_EN,
+	PIPE_REPLICATION_EN,				/* Not IPA v5.5+ */
 	PAD_EN,
 	HDR_FTCH_DISABLE,				/* IPA v4.5+ */
 	DRBIP_ACL_ENABLE,				/* IPA v4.9+ */
@@ -412,6 +413,7 @@ enum ipa_reg_endp_init_aggr_field_id {
 	FORCE_CLOSE,
 	HARD_BYTE_LIMIT_EN,
 	AGGR_GRAN_SEL,
+	AGGR_COAL_L2,					/* IPA v5.5+ */
 };
 
 /** enum ipa_aggr_en - ENDP_INIT_AGGR register AGGR_EN field value */
@@ -585,9 +587,11 @@ enum ipa_reg_endp_cache_cfg_field_id {
  * @IPA_IRQ_DRBIP_PKT_EXCEED_MAX_SIZE_EN: (Not currently used)
  * @IPA_IRQ_DRBIP_DATA_SCTR_CFG_ERROR_EN: (Not currently used)
  * @IPA_IRQ_DRBIP_IMM_CMD_NO_FLSH_HZRD_EN: (Not currently used)
+ * @IPA_IRQ_ERROR_NON_FATAL:		(Not currently used)
+ * @IPA_IRQ_ERROR_FATAL:		(Not currently used)
  */
 enum ipa_irq_id {
-	IPA_IRQ_BAD_SNOC_ACCESS			= 0x0,
+	IPA_IRQ_BAD_SNOC_ACCESS			= 0x0,	/* Not IPA v5.5+ */
 	IPA_IRQ_EOT_COAL			= 0x1,	/* Not IPA v3.5+ */
 	IPA_IRQ_UC_0				= 0x2,
 	IPA_IRQ_UC_1				= 0x3,
@@ -596,11 +600,11 @@ enum ipa_irq_id {
 	IPA_IRQ_UC_IN_Q_NOT_EMPTY		= 0x6,
 	IPA_IRQ_UC_RX_CMD_Q_NOT_FULL		= 0x7,
 	IPA_IRQ_PROC_UC_ACK_Q_NOT_EMPTY		= 0x8,
-	IPA_IRQ_RX_ERR				= 0x9,
-	IPA_IRQ_DEAGGR_ERR			= 0xa,
-	IPA_IRQ_TX_ERR				= 0xb,
-	IPA_IRQ_STEP_MODE			= 0xc,
-	IPA_IRQ_PROC_ERR			= 0xd,
+	IPA_IRQ_RX_ERR				= 0x9,	/* Not IPA v5.5+ */
+	IPA_IRQ_DEAGGR_ERR			= 0xa,	/* Not IPA v5.5+ */
+	IPA_IRQ_TX_ERR				= 0xb,	/* Not IPA v5.5+ */
+	IPA_IRQ_STEP_MODE			= 0xc,	/* Not IPA v5.5+ */
+	IPA_IRQ_PROC_ERR			= 0xd,	/* Not IPA v5.5+ */
 	IPA_IRQ_TX_SUSPEND			= 0xe,
 	IPA_IRQ_TX_HOLB_DROP			= 0xf,
 	IPA_IRQ_BAM_GSI_IDLE			= 0x10,
@@ -613,10 +617,12 @@ enum ipa_irq_id {
 	IPA_IRQ_GSI_EE				= 0x17,
 	IPA_IRQ_GSI_IPA_IF_TLV_RCVD		= 0x18,
 	IPA_IRQ_GSI_UC				= 0x19,
-	IPA_IRQ_TLV_LEN_MIN_DSM			= 0x1a,	/* IPA v4.5+ */
-	IPA_IRQ_DRBIP_PKT_EXCEED_MAX_SIZE_EN	= 0x1b,	/* IPA v4.9+ */
-	IPA_IRQ_DRBIP_DATA_SCTR_CFG_ERROR_EN	= 0x1c,	/* IPA v4.9+ */
-	IPA_IRQ_DRBIP_IMM_CMD_NO_FLSH_HZRD_EN	= 0x1d,	/* IPA v4.9+ */
+	IPA_IRQ_TLV_LEN_MIN_DSM			= 0x1a,	/* IPA v4.5-v5.2 */
+	IPA_IRQ_DRBIP_PKT_EXCEED_MAX_SIZE_EN	= 0x1b,	/* IPA v4.9-v5.2 */
+	IPA_IRQ_DRBIP_DATA_SCTR_CFG_ERROR_EN	= 0x1c,	/* IPA v4.9-v5.2 */
+	IPA_IRQ_DRBIP_IMM_CMD_NO_FLSH_HZRD_EN	= 0x1d,	/* IPA v4.9-v5.2 */
+	IPA_IRQ_ERROR_NON_FATAL			= 0x1e,	/* IPA v5.5+ */
+	IPA_IRQ_ERROR_FATAL			= 0x1f,	/* IPA v5.5+ */
 	IPA_IRQ_COUNT,				/* Last; not an id */
 };
 
-- 
2.34.1


