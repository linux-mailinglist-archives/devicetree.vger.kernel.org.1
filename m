Return-Path: <devicetree+bounces-125044-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB739DA9AE
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 15:06:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7693F16553E
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 14:06:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E7781FDE27;
	Wed, 27 Nov 2024 14:05:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="E79oSJ7a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A43CD1FDE2C
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 14:05:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732716341; cv=none; b=A7w5nbyEqfOI2L+gHop6SdMGCtT4aC+/dEimyoJGDLCl1oS+BkbcRCoBwhgSsyurANu2GYgVdScfiNReqa9En7CwF4a1eQUxeThGefzntnjJdn/yYOEV2lTqP1HXkHF7Zh2jANSCV1MNwOHJ+R9HdEx++kS2uHbFMgdu8i87s+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732716341; c=relaxed/simple;
	bh=5nl7J9DAIXEGP6XFckA2tv9xwlEwURwQ899BzKy9f8Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aL5/9CXY7sOtpBDX97z1t7JB7un6UCqw+yJpc/HQw3yrfjmm7L67JgR2ctjE2IYz7cwH80zRcNg+gpimtVrcXZJ/ExY7xep0+l4PfqoMoSJEvBoQUb8EUbhvQ081HnNY/ZQQ4kXhj1n7Y/WWFt5v5qKJxYUgyNEGJfTAudNl1yY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=E79oSJ7a; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3824aef833bso4902096f8f.0
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 06:05:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732716338; x=1733321138; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O3KnIWFjjoDSB2qzMeOzFANQJr83mKvOblCgk3APOdI=;
        b=E79oSJ7aM9So6DIi6ebvCTmbfD5uWSV/1HuUTRNHlPMJJbvLS6a86mUOQIr0q7Ec5c
         UwAlzOe7vKRAKfLiJBoNwKZDOPlWibS6Ij1DM1lrRFN24ZcW7ZHA1bSorkKl5E7D2MAs
         POEx90lE1W2Iy+a3/usxMLl0ZEDn/ZfQ4Pv7B1oByHghOaFRPrcubiu7rm6cyITVS2eM
         iK34GlitLe3eAKF4refj3z/jOaLrZJVs1wcoQsdOPD86n5/YNd6P48x7M8VwGj3wUmCK
         bg7ofvx27zG/z2a+wN8id3luwwB1GXPlhzfUmj2ELx+34RyEaSveoeGPTpr8X2KsBZdR
         MX9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732716338; x=1733321138;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O3KnIWFjjoDSB2qzMeOzFANQJr83mKvOblCgk3APOdI=;
        b=iY27aOJl0sIRMya3LGxoQudmRSeUEWMb2EVjWEr92EWRbKxzsRutt4XF7SjYNcxj7r
         6oxNcaK8BaMvmpMAT3O0ZvIuEEnI9M+5uR+oq2pBf9CFp88CdI4kam1LMWdf3mIpUiSU
         5gxstrOZ9t/qnSaRUvEVRb1OIqUzqXOqEy3IkOrMTNRzElh0VgI5tEYw6HSo4EmZrUsH
         gZkNmpXtP4nrRmBK/BgAWIA8wX8xo/2JhaCUaW/wHwJBorCebi4lZ2qm6WXc7qAKWxxz
         T/wIOKRW61NRjh283o3PQj6u6Ohy9WvDH3NL7mF1lvja2lew3HAPHeL7WNfQEEQhmNKs
         JB+Q==
X-Forwarded-Encrypted: i=1; AJvYcCUXVNlyswxlCSDMMA7/bnYdf12HgfHmypR/BPlXSJCZw3qmxbekdN0bWhGeacRg5KBKXYkDKl9SYCJG@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6LrcN9Wu/pH6eNBPwWjlErV7tx/XKvJ+McHLWM2sY3/+HpJ0i
	yq1YmyhqeKuBIelK0x4snQP64q3TO8iTi+p6NG6W9WbEzBJRWrnUnwwx4apSrFc=
X-Gm-Gg: ASbGncuFyFAZO6YP5qomlylCIH6lou9ly1nymkFFjLyXpZaROwG2LGfCYmgmWtDqyU8
	Ul6dDx8NyAKgEwGvbK7K9/dlDH8ZJ388xpItTkApjpsynUEYPzrwUY2zpjdIyGGRlGfrIqIP4r2
	Agw63pUIR6Gkiyg+6y93hXD+K2OkZXcrtbZ/tv4O+H59XYDAqAZcYRM+mv+7tNBwgNQr5W9SWxJ
	gleh3qIZJuliz5fwMSIFMJYnbHdiwXmBm+fg698dc2K65or1MDJJXaYhfY=
X-Google-Smtp-Source: AGHT+IH1besm8MXed2bbNz2tG5fNbHLcusvV2pLrja2OfQ86xatsGvkilUchOdemfTRmClezQOvYuQ==
X-Received: by 2002:a5d:6d02:0:b0:382:4fb2:cca2 with SMTP id ffacd0b85a97d-385c6ba6858mr2794455f8f.0.1732716332392;
        Wed, 27 Nov 2024 06:05:32 -0800 (PST)
Received: from [127.0.0.1] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fad6436sm16442335f8f.13.2024.11.27.06.05.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 06:05:31 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Wed, 27 Nov 2024 14:05:13 +0000
Subject: [PATCH v3 2/3] media: venus: Populate video encoder/decoder
 nodename entries
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241127-media-staging-24-11-25-rb3-hw-compat-string-v3-2-ef6bd25e98db@linaro.org>
References: <20241127-media-staging-24-11-25-rb3-hw-compat-string-v3-0-ef6bd25e98db@linaro.org>
In-Reply-To: <20241127-media-staging-24-11-25-rb3-hw-compat-string-v3-0-ef6bd25e98db@linaro.org>
To: Stanimir Varbanov <stanimir.k.varbanov@gmail.com>, 
 Vikash Garodia <quic_vgarodia@quicinc.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: quic_renjiang@quicinc.com, quic_vnagar@quicinc.com, 
 quic_dikshita@quicinc.com, konradybcio@kernel.org, 
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Stanimir Varbanov <stanimir.varbanov@linaro.org>, 
 devicetree@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.15-dev-dedf8

Populate encoder and decoder node-name entries for the upstream parts. Once
done the compat="video-encoder" and compat="video-decoder" in the dtsi can
be dropped though the venus driver will continue to favour DT declared
video-encoder/video-decoder declarations over static declarations for
compatibility.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/media/platform/qcom/venus/core.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/platform/qcom/venus/core.c
index 17506d547a6172b89acb77879337750c22f993cf..847caf4d9cdb6fc3f4133450d40b69a4baba522d 100644
--- a/drivers/media/platform/qcom/venus/core.c
+++ b/drivers/media/platform/qcom/venus/core.c
@@ -638,6 +638,8 @@ static const struct venus_resources msm8916_res = {
 	.vmem_addr = 0,
 	.dma_mask = 0xddc00000 - 1,
 	.fwname = "qcom/venus-1.8/venus.mbn",
+	.dec_nodename = "video-decoder",
+	.enc_nodename = "video-encoder",
 };
 
 static const struct freq_tbl msm8996_freq_table[] = {
@@ -847,6 +849,8 @@ static const struct venus_resources sdm845_res_v2 = {
 	.cp_nonpixel_start = 0x1000000,
 	.cp_nonpixel_size = 0x24800000,
 	.fwname = "qcom/venus-5.2/venus.mbn",
+	.dec_nodename = "video-core0",
+	.enc_nodename = "video-core1",
 };
 
 static const struct freq_tbl sc7180_freq_table[] = {
@@ -895,6 +899,8 @@ static const struct venus_resources sc7180_res = {
 	.cp_nonpixel_start = 0x1000000,
 	.cp_nonpixel_size = 0x24800000,
 	.fwname = "qcom/venus-5.4/venus.mbn",
+	.dec_nodename = "video-decoder",
+	.enc_nodename = "video-encoder",
 };
 
 static const struct freq_tbl sm8250_freq_table[] = {
@@ -950,6 +956,8 @@ static const struct venus_resources sm8250_res = {
 	.vmem_addr = 0,
 	.dma_mask = 0xe0000000 - 1,
 	.fwname = "qcom/vpu-1.0/venus.mbn",
+	.dec_nodename = "video-decoder",
+	.enc_nodename = "video-encoder",
 };
 
 static const struct freq_tbl sc7280_freq_table[] = {
@@ -1012,6 +1020,8 @@ static const struct venus_resources sc7280_res = {
 	.cp_nonpixel_start = 0x1000000,
 	.cp_nonpixel_size = 0x24800000,
 	.fwname = "qcom/vpu-2.0/venus.mbn",
+	.dec_nodename = "video-decoder",
+	.enc_nodename = "video-encoder",
 };
 
 static const struct of_device_id venus_dt_match[] = {

-- 
2.47.0


