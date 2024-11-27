Return-Path: <devicetree+bounces-124981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5369DA6FB
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 12:44:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B9677B22B86
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 11:44:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58E511F940F;
	Wed, 27 Nov 2024 11:44:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KyxbHMxa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D92A1F8F08
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 11:44:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732707868; cv=none; b=q3c2vLGoOZC1AW0AWcKEAyYviHbvzCnv4HvzjZcnrVvx7HT0YaNYFd34/9o2jAAGJxLDXtOBNAQrxa0oVbWzk5wun85VBhgYQSVcN+W0YauRXh7FaiA2xvjtiNYFHDQa/7W5rjpJaI4b6ngU0tBd5d1fe19Yt+dq5RvR+XLMqmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732707868; c=relaxed/simple;
	bh=5nl7J9DAIXEGP6XFckA2tv9xwlEwURwQ899BzKy9f8Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=n1lEZySxm61IsqsT7FJFawV/IKtmO15UetnTd6UwXOG5orbqZ7InerHXXUKUlCZT6Ls22u4Bh9tJxLVyo+5fTCa3okTeg0+sp5fZJgO+ZhnQTYEHgy6bHJ6ZLzFOHqcTAAOMMXIkEQ9PIW++pUd8zWzWSGA5XwBWkFpKpQBTFIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KyxbHMxa; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3824446d2bcso5932917f8f.2
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 03:44:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732707865; x=1733312665; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O3KnIWFjjoDSB2qzMeOzFANQJr83mKvOblCgk3APOdI=;
        b=KyxbHMxaiZUItlR9t4tObsD1iz00aQ7JIYytg1pVcD/KLIml1EWIyvH+qlsyUoMz/8
         PPf/i53BgZVpEeosvfiy1AKC4yy/9B32MJHbRaWZwlUB9bXphgpqnfzAcc8pM8BzWWLT
         gnQQkaEgvzxmKeDA1Lb7w3BX+f+r+3yYyJ/6BxP6Kh7LDLPJhCiza7x9UmD5o83Z3BKR
         t9LKq00KPcwGCRo2PfxmxRRpgbqq3CL8aqWQSvqKvfYMyaIFClp6jFr4jvst+ZGVb9vJ
         N2YIbKeH7PztjpeC/AFRXfwZ7+Z6gTf/z6yLEAcJSUF/grfTny5BzUYIy6l/yumc+qQM
         MSRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732707865; x=1733312665;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O3KnIWFjjoDSB2qzMeOzFANQJr83mKvOblCgk3APOdI=;
        b=fP47kmJ6Oe4yWRuSiTCuiMVwpDLQWFNtYMnF+hxgyRcBqUrmsNl4edIgs0TG9NxkWI
         gDXIS9HldvlUxOFvGKC+1C2StkMQfwkKgeO/K6vcB/TnWFYliKfXuofeHUc8FvsP5V3j
         DO5fq7QgLrEYqo7Z6nqRO3iE3xOfdidsvOGMGWCRuEgw4RfV60iW3df3IYTwGBlZTAui
         hCvQ6u23wTcpRGWaVoEVKLTvFe68Z2DRny5/wmG0fKdN9muNBBniFNOCEPW4zW7xqEXv
         3ir+NINiPnEl8jv/AYav1KMNSiLzeq8t4zXi7opIavtfR893NX/4k2D0M7Y7LngdaUps
         YomA==
X-Forwarded-Encrypted: i=1; AJvYcCVHT3b/33ddfw753EmNwff2Rp8JlUuJ3RwWVUMR+eR7RORrH9mGy/RVNAplRL/Ki5DCLnOIddWYrKwL@vger.kernel.org
X-Gm-Message-State: AOJu0YxHQXxBf+yBVUDQbyh/5yqf3R+PbVjsrY07FGjAu2Hou3txtNA0
	WLLl7CV2jqjeejYmIIdA3/LsH4jYKsIM1Ml2rBb4znxxU4//9eb0cxdIN3cTi5c=
X-Gm-Gg: ASbGncsQEZ94hXijYcunZYYQDJQH9hnzxqVhdjeH4QclPATVzs8bqkE7dQfM3W0sJeg
	8lY7yC8dNwDa1fyzANy4JTzIDL2nh/yhO1Rw1LqLIdG6ZiIcEOuW9kNL18J5K6tgwx1mSJlMCUc
	6JAaHyFAlZ1v9/tV1kLNmPChjAtQbh2scSpTWEonZYlx9+gD380gCTdMcRoXdzM5zsW0C0VPevV
	UHbdbx531TH3LJUmI/rVPVLRLBmfkGu0ls8JuuQCjB7t6Ae0oPgAFkown0=
X-Google-Smtp-Source: AGHT+IE0pK2hTwaunQOjZoX6SVQi9BmMtvCCwAMVwiCR1lY2+Tt/vnpsknckg/1+k2IZIpKPguxvvw==
X-Received: by 2002:a5d:5983:0:b0:382:3d04:9646 with SMTP id ffacd0b85a97d-385c6ccaf23mr2199795f8f.11.1732707864752;
        Wed, 27 Nov 2024 03:44:24 -0800 (PST)
Received: from [127.0.0.1] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fbc3531sm16463586f8f.80.2024.11.27.03.44.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 03:44:24 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Wed, 27 Nov 2024 11:44:21 +0000
Subject: [PATCH v2 2/3] media: venus: Populate video encoder/decoder
 nodename entries
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241127-media-staging-24-11-25-rb3-hw-compat-string-v2-2-c010fd45f7ff@linaro.org>
References: <20241127-media-staging-24-11-25-rb3-hw-compat-string-v2-0-c010fd45f7ff@linaro.org>
In-Reply-To: <20241127-media-staging-24-11-25-rb3-hw-compat-string-v2-0-c010fd45f7ff@linaro.org>
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


