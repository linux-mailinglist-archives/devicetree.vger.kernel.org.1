Return-Path: <devicetree+bounces-60313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B1B8A8C6D
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 22:02:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A74C61C20DB2
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 20:02:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 771853D576;
	Wed, 17 Apr 2024 20:01:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="awexAEvD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A06438F9B
	for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 20:01:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713384089; cv=none; b=D+waS9wV2LGXg40DL6qu/6w4yvB0HWQlf0Kf4gY3B7lHxo3snnejhnIoOud1A0vG0RwGi1cqyz+FgiMZqXuiM97HSHPj48MEeQFRDSEkEfSLBCIpp/vLqTCV5pKYw3pL5eiwLS5DusJc9OJ24BXsHVUFDtyKjaJRic2iGjizEY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713384089; c=relaxed/simple;
	bh=YI6kFnUdqCb3smm8drA7puqPY4IMwS3WgmIgWIqmjO4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AFvYr0Eo8djm3MdmzH79dQh9dTAzvIhq4BUVNvyAIhy3d6CB7GyEY3kqo5P4eMCuIDiKTJFpDtzGGWmvk/J108HiUZrFLiOu3AiSiuv4f5BaDVVlXoPp7Sq2TG6cr3jV4VVBLB8tdsr9uIC4jCGBYuUZj6PHWByOP0tiwEB+dWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=awexAEvD; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5700a9caee0so76173a12.2
        for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 13:01:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713384086; x=1713988886; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vkJszbQYs1o414BkCnfzaobHDnZKDVd8xFkMWbtLTqM=;
        b=awexAEvDM9WrO8KGFLHmi69DtvjgYHqcpxeRzNTzDWtyn1BWqdsd3oasNvZipDuf9X
         OOgWhTwVeDT9nCAGY6eOsYeq119y3Lli+O2h64qlCo0ZjMiHK/K+oNnF7UMDzsTIl+4R
         IHFcsGF0Q3BT7mcOdHeUaRFMODCZfIuWzDeMmdImgkZdiSwCSsUIFN9l5x72C95jZHbj
         6jeR40C+/bDNjmIKbGVRWZ2QKdJJLj4fLfg5TvG7ZHIMm2Un25npY0Nrtey2yoCKEn5W
         URMEK9f+959SH0kpIPDIPX+IJ7BssLdkNu+uAIQAecWvt9ur9vklzj94DQrQTzF1ZqF1
         TrGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713384086; x=1713988886;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vkJszbQYs1o414BkCnfzaobHDnZKDVd8xFkMWbtLTqM=;
        b=WrblBSl8++fW5Eo8MjcCX0FIhTjdH3NU/SreOX3Ccz0eSBAUG+QMvyv/CCl2KW7rcP
         TYyywITY2uvkHu1uDp7SdbvaLqzsiVvl0vq4+LxjAPpy0I83Qfn1Fp6V/dvcFhULz2nD
         HMcfRZhVEw200hpfwouJ13+hKk2grmeuT9D0LR9ZomqyTslM0t35UXX++E1c+3DKS8dO
         DZJTt2w4xETYJxpoujdwcDZ38UURe2Fyc67Qb46dpCsuANGeS/UwYVrGF7DYypOwUkNp
         K5XaFKI49DVot6BUYfIFq/wgZlQtM8koOnMig1jSCOqrxFJuLW5cGBXGgW7jHRTvJzZr
         W9KA==
X-Forwarded-Encrypted: i=1; AJvYcCV907tRu3GiZLl/aCYzA73nI124tNt/v/PfLSvcyUjT9euU179sFL/jBCJ/F1q0DGP7SoZ1L+ZeQ0bySItQvfo6GhalBeY7iBw7og==
X-Gm-Message-State: AOJu0Yxi1TwiQcM2FwW+z2lzElmQ81sNx+lNdeOe8S8iCJcWQUwdCVJu
	FKyUnQ5JDYnmOxFrVydShJ2ZQgb83AP21W/Qx2/rmDF43w8K09tkszQ1YGhWIbA=
X-Google-Smtp-Source: AGHT+IFpQveQN0WrZ+igZQXQ/yZHaNlkS0Wb8UjbefxIeVkiBGAZDA+tfI2DaDqdb7B/J0ieeXhS+A==
X-Received: by 2002:a17:906:3108:b0:a52:408f:8575 with SMTP id 8-20020a170906310800b00a52408f8575mr323610ejx.12.1713384085598;
        Wed, 17 Apr 2024 13:01:25 -0700 (PDT)
Received: from [127.0.1.1] ([79.114.172.194])
        by smtp.gmail.com with ESMTPSA id gs6-20020a170906f18600b00a555ef55ab5sm939981ejb.218.2024.04.17.13.01.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Apr 2024 13:01:25 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 17 Apr 2024 23:00:55 +0300
Subject: [PATCH v10 3/7] spmi: pmic-arb: Fix some compile warnings about
 members not being described
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240417-spmi-multi-master-support-v10-3-5bc6d322e266@linaro.org>
References: <20240417-spmi-multi-master-support-v10-0-5bc6d322e266@linaro.org>
In-Reply-To: <20240417-spmi-multi-master-support-v10-0-5bc6d322e266@linaro.org>
To: Stephen Boyd <sboyd@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
 Johan Hovold <johan@kernel.org>, David Collins <quic_collinsd@quicinc.com>, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2479; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=YI6kFnUdqCb3smm8drA7puqPY4IMwS3WgmIgWIqmjO4=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmICqCsJCp5gvQLMFFQqhO6XcTbU8fTs4T/CIWa
 AXutDY5l12JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZiAqggAKCRAbX0TJAJUV
 VuoPEADFvtdR0eoFq683MWj9bQyN6Ev9lNZORhL83dK7WvbVw5uafRLMCnA8CU4fP3w0Kf9IL9L
 n2+Ur2s+mFLl3pmu4dirqFKWJ1LLsB6bMwwxQ6RiBOlZuzE4UPaRLlJmwHLqngTW/XYdYecjBuM
 FO+inXrw4Wdasn0e0h7YPAAgolDlPESnihqZbwn5ej+XRKWIEy38Wg4wMG0dm1dGs6tqAJkWa0B
 Z5mdv9QnJIkakiwkXsAEthf4EBpuT69ko6SfBIQXsvKVNGS5fYpYluyzj4kDbTxmldyCXiOWpwU
 4UTt6nDZ0e0703FBlPHnIFVxUEsyNP6XawDt/7b7XNRhhEXIrgOUzqT7WWPTPoP0xLD30VGatWp
 ScUxn6pqpbFo+eL7ARai0GUsGKnyLCESqSG3x7NOmpgJ7vHZ3TJuU893QVmpOnjIIBoENLLDJ/O
 yW0AQW+LokEnUW31ICYLlRdt4i8iJ5Hsr9eHd2CZ6Xr8p77O6bDVkp1vLmxElC5fdoR0aISE7pl
 5jMF3HaDzquGQRvE/yG7JHeCoSAeyIR4j/ZtlKR6Gvecd0HLQnIhYLq2crXtSIDWbrZdrbijulw
 2SpE9/SpxhZ8D9rkwLvWp46T0nGpFJrFgljjVD4M39zH9X+yKnjpyvWkaXV0FoCrFn/bKR1gXDS
 h3TrYgCKNQ5rzeQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Fix the following compile warnings:

 warning: Function parameter or struct member 'core' not described in 'spmi_pmic_arb'
 warning: Function parameter or struct member 'core_size' not described in 'spmi_pmic_arb'
 warning: Function parameter or struct member 'mapping_table_valid' not described in 'spmi_pmic_arb'
 warning: Function parameter or struct member 'pmic_arb' not described in 'pmic_arb_read_data'
 warning: Function parameter or struct member 'pmic_arb' not described in 'pmic_arb_write_data'

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/spmi/spmi-pmic-arb.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/spmi/spmi-pmic-arb.c b/drivers/spmi/spmi-pmic-arb.c
index 937c15324513..12c0efd744c2 100644
--- a/drivers/spmi/spmi-pmic-arb.c
+++ b/drivers/spmi/spmi-pmic-arb.c
@@ -132,6 +132,8 @@ struct apid_data {
  * @wr_base:		on v1 "core", on v2 "chnls"    register base off DT.
  * @intr:		address of the SPMI interrupt control registers.
  * @cnfg:		address of the PMIC Arbiter configuration registers.
+ * @core:		core register base for v2 and above only (see above)
+ * @core_size:		core register base size
  * @lock:		lock to synchronize accesses.
  * @channel:		execution environment channel to use for accesses.
  * @irq:		PMIC ARB interrupt.
@@ -144,6 +146,7 @@ struct apid_data {
  * @apid_count:		on v5 and v7: number of APIDs associated with the
  *			particular SPMI bus instance
  * @mapping_table:	in-memory copy of PPID -> APID mapping table.
+ * @mapping_table_valid:bitmap containing valid-only periphs
  * @domain:		irq domain object for PMIC IRQ domain
  * @spmic:		SPMI controller object
  * @ver_ops:		version dependent operations.
@@ -232,6 +235,7 @@ static inline void pmic_arb_set_rd_cmd(struct spmi_pmic_arb *pmic_arb,
 
 /**
  * pmic_arb_read_data: reads pmic-arb's register and copy 1..4 bytes to buf
+ * @pmic_arb:	the SPMI PMIC arbiter
  * @bc:		byte count -1. range: 0..3
  * @reg:	register's address
  * @buf:	output parameter, length must be bc + 1
@@ -246,6 +250,7 @@ pmic_arb_read_data(struct spmi_pmic_arb *pmic_arb, u8 *buf, u32 reg, u8 bc)
 
 /**
  * pmic_arb_write_data: write 1..4 bytes from buf to pmic-arb's register
+ * @pmic_arb:	the SPMI PMIC arbiter
  * @bc:		byte-count -1. range: 0..3.
  * @reg:	register's address.
  * @buf:	buffer to write. length must be bc + 1.

-- 
2.34.1


