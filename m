Return-Path: <devicetree+bounces-124979-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 46FD09DA6F6
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 12:44:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 957CDB22888
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 11:44:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D83F1F8F0E;
	Wed, 27 Nov 2024 11:44:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BI3fWVAh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4411E1F8EFF
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 11:44:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732707867; cv=none; b=JxjtsodCCqyIyMA09ZKA7Dhn5CrV0nlW1h2WsT50aP+/zp/7doxddwcYJ10qngYXyq7rydehk8+l7rthnAEqScpFRKGF/e27Po2eeVEqA5H1MPYy60mVagVxIOIULSuSPvUB+kN9QbovhfQBfr18vi0BwJ/jfdNvTHruyBgNIps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732707867; c=relaxed/simple;
	bh=mPLzIOsMXumVzsSYo04I9Sy6D3KL3+6b4VayfdBVWQw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GU1MMN6BRufDRdU8W/ZnA0DYX/BxxY5x/ZYe1VqEsh0Rh+K+AetNCLCzNl42pohsrFfaRYGhDzXvmTzsrqkHJOvgMEzTg8jOtMGKNJfCNlNcvS88RecUi4jUjVYKLKxaMn+ifGJMuOMC9zEex6DQpHkQ+UGnCNBktcLPDpoALzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BI3fWVAh; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-432d86a3085so60584715e9.2
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 03:44:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732707864; x=1733312664; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qgRvASRnNGPqVsywLIM5NoewkMzzRPcFogNk/blUYTY=;
        b=BI3fWVAhl9tdbMu/sBydbAuiH8nI8haGo7E1YSDLROVu4SskmkgfDTyrUyE/sr2R9C
         1mEqQvSH3tq0igsunNy24Owi6GfRpwUFdBSJRZnaQ4mCfs+OG++v5mCrC+G2h5PMSS12
         tkCVr83AIcm8jtRVgMARaLnwoSW4FP/l2mlcR5cHW6272GC0j8x50CH+6oxXhiE5B1Ui
         +hA2pN6mgqG//xsP9wYXXgno175CH7F7dzeLditey78ibHVy5sZrCJnKNuSJpGgqNKFP
         y2egmFH+g4hSM1jorQIeCJtnSngo9k6eelcWHNLnchBkbDivQ00As33W/feMZB2I9Jfi
         h/kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732707864; x=1733312664;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qgRvASRnNGPqVsywLIM5NoewkMzzRPcFogNk/blUYTY=;
        b=pjeKTvKBuKhYlDGky3JC30E1wvXM2QkJxAnNrHjz+2xWwR7euTNzh693hu6vfxbECt
         JXpeBINhRvcqDxyPfSFDN0KQCP9V9y6GA3bxidyjaXwE9twxNP3n0gyEM85hkJdL+zLu
         hj1YacMh4g2cD4NU6YbzSC4F25beBR5WVfK+wrFcCWhDAMIN8vn2rL9pKA//bhpKXRdA
         323BV3LHo6Q2gAvk+Axz4D0v08XmvHLajJN95GVdF7kfQbcFjy4zuwaSfQ68IcI8+OjU
         9UXEiMZ7W0YibVu+8nEPIEenOLkbXg4S0MtKhI20RRFLj6z0NMUiBqkGjYZlhUX3yBIX
         Ob9w==
X-Forwarded-Encrypted: i=1; AJvYcCXRrOyLdiK4jrPIdU2OtLt/MhpD/EEqJCs2PP0EQZGPcmjiHpvcVlxrUIa1dHaBq7awYguhoqEYTeX5@vger.kernel.org
X-Gm-Message-State: AOJu0YwDZr1xmnQqL/CBdd+qm/h1qXGBuG5U67aclT1o+BBbBxrh5i2x
	BCOrxNBcVVmTJ15acDMwNI9ASm3avUrwGudLIxaUgxO7yPAw0LPDvJPCtgvu9tE=
X-Gm-Gg: ASbGncuHBmXrrjw6ePsVswhqC2dqz/eSPx2dXCClCtvOMUsl9Vm9XnInho0RHBQtbm1
	HQjkBibKhqVCRvVTySxzpyJl59pqtGtMMQx2OW2FYZtxMjvDpQKNJDhSz4PoTwtTksgsvD56II1
	upbM1JTyro4owE2EzQfZTtnS16lG8N3BEL1Jclpp7yaZECnVYM7Sw4wtbC9m/F4zbUKLPStfaSk
	oteVklNm2x65am2eCtsVWFIkTEjafrcN1s6rLgPKs8/FmTWhkhIpcsPbgU=
X-Google-Smtp-Source: AGHT+IHqACPaFAaxruo9TR3lJj0Md9Eg11jQTX9vNf4np+dj3QDhLTs6KMShKGdLl9uNDRr1Oq/wvA==
X-Received: by 2002:a05:6000:4819:b0:382:35e8:9818 with SMTP id ffacd0b85a97d-385c6eb7688mr2091643f8f.23.1732707863698;
        Wed, 27 Nov 2024 03:44:23 -0800 (PST)
Received: from [127.0.0.1] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fbc3531sm16463586f8f.80.2024.11.27.03.44.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 03:44:23 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Wed, 27 Nov 2024 11:44:20 +0000
Subject: [PATCH v2 1/3] media: venus: Add support for static video
 encoder/decoder declarations
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241127-media-staging-24-11-25-rb3-hw-compat-string-v2-1-c010fd45f7ff@linaro.org>
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

Add resource structure data and probe() logic to support static
declarations of encoder and decoder.

Right now we rely on video encoder/decoder selection happening in the dtb
but, this goes against the remit of device tree which is supposed to
describe hardware, not select functional logic in Linux drivers.

Provide two strings in the venus resource structure enc_nodename and
dec_nodename.

When set the venus driver will create an OF entry in-memory consistent
with:

dec_nodename {
    compat = "video-decoder";
};

and/or

enc_nodename {
    compat = "video-encoder";
};

This will allow us to reuse the existing driver scheme of relying on compat
names maintaining compatibility with old dtb files.

dec_nodename can be "video-decoder" or "video0"
enc_nodename can be "video-encoder" or "video1"

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/media/platform/qcom/venus/core.c | 56 ++++++++++++++++++++++++++++++++
 drivers/media/platform/qcom/venus/core.h |  2 ++
 2 files changed, 58 insertions(+)

diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/platform/qcom/venus/core.c
index 4e26b18790537885a77d66c1917a4e7a146eaf57..17506d547a6172b89acb77879337750c22f993cf 100644
--- a/drivers/media/platform/qcom/venus/core.c
+++ b/drivers/media/platform/qcom/venus/core.c
@@ -286,6 +286,36 @@ static irqreturn_t venus_isr_thread(int irq, void *dev_id)
 	return ret;
 }
 
+static int venus_add_video_core(struct device *dev, struct of_changeset *ocs,
+				const char *node_name, const char *compat)
+{
+	struct device_node *np, *enp;
+	int ret;
+
+	if (!node_name)
+		return 0;
+
+	enp = of_find_node_by_name(dev->of_node, node_name);
+	if (enp) {
+		of_node_put(enp);
+		return 0;
+	}
+
+	np = of_changeset_create_node(ocs, dev->of_node, node_name);
+	if (!np) {
+		dev_err(dev, "Unable to create new node\n");
+		return -ENODEV;
+	}
+
+	ret = of_changeset_add_prop_string(ocs, np, "compatible", compat);
+	if (ret)
+		dev_err(dev, "unable to add %s\n", compat);
+
+	of_node_put(np);
+
+	return ret;
+}
+
 static int venus_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -365,6 +395,32 @@ static int venus_probe(struct platform_device *pdev)
 	if (ret < 0)
 		goto err_runtime_disable;
 
+	if (core->res->dec_nodename || core->res->enc_nodename) {
+		struct of_changeset *ocs;
+
+		ocs = devm_kmalloc(dev, sizeof(*ocs), GFP_KERNEL);
+		if (!ocs) {
+			ret = -ENOMEM;
+			goto err_runtime_disable;
+		}
+
+		of_changeset_init(ocs);
+
+		ret = venus_add_video_core(dev, ocs, core->res->dec_nodename, "venus-decoder");
+		if (ret)
+			goto err_runtime_disable;
+
+		ret = venus_add_video_core(dev, ocs, core->res->enc_nodename, "venus-encoder");
+		if (ret)
+			goto err_runtime_disable;
+
+		ret = of_changeset_apply(ocs);
+		if (ret) {
+			dev_err(dev, "applying changeset fail ret %d\n", ret);
+			goto err_runtime_disable;
+		}
+	}
+
 	ret = of_platform_populate(dev->of_node, NULL, NULL, dev);
 	if (ret)
 		goto err_runtime_disable;
diff --git a/drivers/media/platform/qcom/venus/core.h b/drivers/media/platform/qcom/venus/core.h
index 27784fd7082c321222b23ca4b2902a04c49e19ca..4ce98a3ef186823a57ac40e2e8e42b08fafed575 100644
--- a/drivers/media/platform/qcom/venus/core.h
+++ b/drivers/media/platform/qcom/venus/core.h
@@ -90,6 +90,8 @@ struct venus_resources {
 	u32 cp_nonpixel_start;
 	u32 cp_nonpixel_size;
 	const char *fwname;
+	const char *enc_nodename;
+	const char *dec_nodename;
 };
 
 enum venus_fmt {

-- 
2.47.0


