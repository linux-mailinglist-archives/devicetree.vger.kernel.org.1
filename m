Return-Path: <devicetree+bounces-153814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F76A4DED4
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 14:10:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 574937AB4D3
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 13:08:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C5782054FF;
	Tue,  4 Mar 2025 13:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jyiqlwbK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8E6D204C09
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 13:07:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741093641; cv=none; b=frxe2f3qyxoIONXu+Y/E8xKdywI4g1tlA51U4/VYflrxn7V/xrXWiMqS7gOQPG91FOZrnVU0lqGJrvvfpOa5y4fTec9dSpKjWIdVOpRMi9Ppd3rm/7vbqLgGxc6zTjtoyBZ1GIvoH/lRIALYcibhiktDxz+i1cdQAsN1k0gLhRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741093641; c=relaxed/simple;
	bh=IoiH9OQAEf3mXrHzsj+NdNwY3Jf5RojQPu8snsaCHFQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Trk9ZKaEcbJKxUrsB7Hnc22ATu4LDFdLSFwZfqp7Sg7uERCO4BrTlo6kVGank1M7fHq+zmTSbVdFw1e6vBQggqzWz/guSXjcrj6OZPw9frW46vVEZfIkTTTA8TlHb1wp6m1CW+fbEBPT5d1HIB8/+KZUg2Zb+TsQKdcW/D1Tx1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jyiqlwbK; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43bcc02ca41so5959995e9.0
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 05:07:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741093637; x=1741698437; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HN7nnD+hMqlXpSytJ9E50dtqwKHUCkr4EcUs1bwqocs=;
        b=jyiqlwbK8CPoT5ncAKwY9Dhh7NiDkdry1wVeJdvLYfzJlkw0BUEKuraPckLfQLZsH7
         L+XAiWFBhp2gI1Yw7WdckT+Qc4w6MrgmSaH36f3urPgTtAQXsQT+i8AL0OvbEtW/Nj34
         G2Dx49YrNWALV8dbKlXgjcW8UpyARMXEs0JgLMB4gw6rwzIYZULvwNrOOEnQvlnwPwaT
         T1kVdc6SHlMC11HF25Et021TVBHf3kpICaxaGj5AZ08jqNJhYnwfjQQyHwY49DfHrvdl
         0LNxWkU+C42AOiO+QeTMsSu9k668m9JTztzvg6HEBBuqtP4NbJxAyFjmTa3+g59x0h63
         08xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741093637; x=1741698437;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HN7nnD+hMqlXpSytJ9E50dtqwKHUCkr4EcUs1bwqocs=;
        b=YDIkta7av7z3M/735cYjBNNtrRNenX7ZejpndHuoMqHZo3n2Z/o0B4ryNjSJ8qDaNP
         dZxBgkcb6LBM2nVIVWC1QUbLz3HxZ/jHuoOQ1I8wr4SkykjBiHVGaQE+jb4mslvWs/Ap
         dP1Gq0Oi1JuBqbO3g12liADqYeoVFk0v/F1n3RE3Vq4BnbO/cmhnxNZMAyRsQfoOiOQI
         s0NVG6E+2RH0vPbJG/EBJ1N0JgV4Ktlbx1FwXNkxu+CKnk8092jtJ79Zf5uSjO/CBlfA
         7qBy+wL70jBR8ous4LisSthQ8zs0+32mtF6RFbnNV4HQU3Fu2oinqYUDraOgghmgjqRO
         SJlQ==
X-Forwarded-Encrypted: i=1; AJvYcCWloTLbRFlcWP1CUMPV2kj1jOpu4vnQMZQyIZkA/SkUnSJ73fZKWvSycdyHkVIZxnfia10UssZtwllj@vger.kernel.org
X-Gm-Message-State: AOJu0YxDP63tp/iMkqESQdhg3ZFsIOwc9sZLVVT2lvoKmqw4is1etK5O
	iajdGRd3zAgyRKngp3v5a/xK4oErpzeF0YOcZwnQmFTUlV4DZ5nlHymPD5ChDX0=
X-Gm-Gg: ASbGncuwkVy6GK6KyPHBItKC5KJDOyCYDP2T+LTm6CgtAa/ayqvvqmmmzznA1/zDWzW
	troUnrNE2d7d7+umxBJdvDBlrGFWTcJIg4pnZOGmswgx+JSCj9aDK+vvO/+4GmChf7nLK3S2CC5
	QgeXH4UCoWJEowhdjRbOiLRyA2eK2W4pPECS2YdxgXF23SHD+j96MtxxS76/9G7JObvsxR31LF8
	0VM7tZmTrLwhxqBfxvmctXepOqmxAQDNqy1OLZ/gvev+Uba4hfXzqbGsRaQKZGXUQsFK942YDMk
	ITDt6QNge5oDjgKq2nc6vKpdoutykgfiBpNvJpQLs3W131Ub+KYRJKNG81DWHAmeoFGt7bbLhUB
	zAdZz4w==
X-Google-Smtp-Source: AGHT+IE3DuQ06O0EnwZraoN4Izgb+nThp2nxKKlJ9gEJ3NSSMpW+apKTyi1H7hUDREkQwtXTLJ8z3A==
X-Received: by 2002:a5d:47c9:0:b0:391:1473:336a with SMTP id ffacd0b85a97d-391147333f7mr3080494f8f.36.1741093637175;
        Tue, 04 Mar 2025 05:07:17 -0800 (PST)
Received: from [127.0.1.1] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e47b6cd8sm17401715f8f.44.2025.03.04.05.07.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 05:07:16 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Tue, 04 Mar 2025 13:07:12 +0000
Subject: [PATCH 6/8] media: venus: core: Add SC8280XP resource struct
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250304-b4-linux-media-comitters-sc8280xp-venus-v1-6-279c7ea55493@linaro.org>
References: <20250304-b4-linux-media-comitters-sc8280xp-venus-v1-0-279c7ea55493@linaro.org>
In-Reply-To: <20250304-b4-linux-media-comitters-sc8280xp-venus-v1-0-279c7ea55493@linaro.org>
To: Stanimir Varbanov <stanimir.k.varbanov@gmail.com>, 
 Vikash Garodia <quic_vgarodia@quicinc.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Johan Hovold <johan+linaro@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
X-Mailer: b4 0.15-dev-33ea6

From: Konrad Dybcio <konradybcio@kernel.org>

Add SC8280XP configuration data and related compatible.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Link: https://lore.kernel.org/r/20230731-topic-8280_venus-v1-6-8c8bbe1983a5@linaro.org
[ johan: rebase on 6.9-rc1; convert vcodec_pmdomains ]
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
[ bod: added static video encoder/decoder desciptors ]
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/media/platform/qcom/venus/core.c | 47 ++++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/platform/qcom/venus/core.c
index dbce635f9fa45..3d23a5919462d 100644
--- a/drivers/media/platform/qcom/venus/core.c
+++ b/drivers/media/platform/qcom/venus/core.c
@@ -1116,6 +1116,52 @@ static const struct venus_resources sc7280_res = {
 	.enc_nodename = "video-encoder",
 };
 
+static const struct freq_tbl sc8280xp_freq_table[] = {
+	{ 0, 239999999 },
+	{ 0, 338000000 },
+	{ 0, 366000000 },
+	{ 0, 444000000 },
+	{ 0, 533000000 },
+	{ 0, 560000000 },
+};
+
+static const struct venus_resources sc8280xp_res = {
+	.freq_tbl = sc8280xp_freq_table,
+	.freq_tbl_size = ARRAY_SIZE(sc8280xp_freq_table),
+	.reg_tbl = sm8350_reg_preset,
+	.reg_tbl_size = ARRAY_SIZE(sm8350_reg_preset),
+	.bw_tbl_enc = sm8250_bw_table_enc,
+	.bw_tbl_enc_size = ARRAY_SIZE(sm8250_bw_table_enc),
+	.bw_tbl_dec = sm8250_bw_table_dec,
+	.bw_tbl_dec_size = ARRAY_SIZE(sm8250_bw_table_dec),
+	.clks = { "core", "iface" },
+	.clks_num = 2,
+	.resets = { "core" },
+	.resets_num = 1,
+	.vcodec0_clks = { "vcodec0_core" },
+	.vcodec_clks_num = 1,
+	.vcodec_pmdomains = (const char *[]) { "venus", "vcodec0" },
+	.vcodec_pmdomains_num = 2,
+	.opp_pmdomain = (const char *[]) { "mx", NULL },
+	.vcodec_num = 1,
+	.max_load = 7833600, /* 7680x4320@60fps */
+	.hfi_version = HFI_VERSION_6XX,
+	.vpu_version = VPU_VERSION_IRIS2,
+	.num_vpp_pipes = 4,
+	.vmem_id = VIDC_RESOURCE_NONE,
+	.vmem_size = 0,
+	.vmem_addr = 0,
+	.dma_mask = GENMASK(31, 29) - 1,
+	.cp_start = 0,
+	.cp_size = 0x25800000,
+	.cp_nonpixel_start = 0x1000000,
+	.cp_nonpixel_size = 0x24800000,
+	.fwname = "qcom/vpu-2.0/venus.mbn",
+	.dec_nodename = "video-decoder",
+	.enc_nodename = "video-encoder",
+};
+
+
 static const struct of_device_id venus_dt_match[] = {
 	{ .compatible = "qcom,msm8916-venus", .data = &msm8916_res },
 	{ .compatible = "qcom,msm8996-venus", .data = &msm8996_res },
@@ -1125,6 +1171,7 @@ static const struct of_device_id venus_dt_match[] = {
 	{ .compatible = "qcom,sdm845-venus-v2", .data = &sdm845_res_v2 },
 	{ .compatible = "qcom,sc7180-venus", .data = &sc7180_res },
 	{ .compatible = "qcom,sc7280-venus", .data = &sc7280_res },
+	{ .compatible = "qcom,sc8280xp-venus", .data = &sc8280xp_res },
 	{ .compatible = "qcom,sm8250-venus", .data = &sm8250_res },
 	{ .compatible = "qcom,sm8350-venus", .data = &sm8350_res },
 	{ }

-- 
2.47.2


