Return-Path: <devicetree+bounces-163845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8EFA7E494
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 17:35:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 28EFE17F64D
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 15:25:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60E291FDA65;
	Mon,  7 Apr 2025 15:24:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zFXNDVs3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A345A1FDA9D
	for <devicetree@vger.kernel.org>; Mon,  7 Apr 2025 15:24:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744039467; cv=none; b=iuq9AimK0/q578hlHvYutdMFo9N49HVnh8XZRKr7bd7iFUIYIKmc2Fwy5cB4KtTs39Z2/TTqjYOBcz3A5HqijKAAkkqguwRGzbvIbmEA/e3jaKSthSjcjOpOzsvmpwQ8Voes6/KvRMu2wYmYLftQ73Sk6N0xsvrugKAnKV/KImk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744039467; c=relaxed/simple;
	bh=yF/nZpFIBaoPgtK083tpBRuL0o6ITykxH9hfKXrn2O0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SIAyHYvq5jGzitypqdy+oiOEUaeuteGVPNd+U7IjPUtd1U/uSVbYuyktqI3KmeDjY+RKtTl9IuFt4A3ni+9K3j5xg7YpWL1xBG3gGDi2a0RHodMTRJoya4ZK4J7TBfxE1ieNDALfw2znIob5QuZwwmaHDOQ+9QJymjX31B3tBh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zFXNDVs3; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-39c0e0bc733so3945940f8f.1
        for <devicetree@vger.kernel.org>; Mon, 07 Apr 2025 08:24:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744039463; x=1744644263; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IcSjwmZr8ORweNU9kIIwQdANNDnxoTJTNwIPGaZvALc=;
        b=zFXNDVs3VzihPdvE7Bja5ASLiF7MlJDgxaxC210zD32Z52Ik/Ca0aA6LbGRb5BnQur
         eWpt9vVZCsKHnLBkcC/VfirNgE8JE16GH1MFWNryj1tl3mZKP2qo4UGRlkpOQ3aiKsPv
         o5hLpnbge1+alRru5/I9kV0pQgbEXna6VWnpGpM2zkNObhhGl4Qq26elZbdRwba/VDjP
         3hpgIJF98WfB3TjpZmQLT7j5nUYvkf5bR0LwwbvYmgTp//Bz+Fzpc+bu8oJvlxiCe0O9
         9I2ktBMq3ahiZEH/xLn9w+QNkkTvNxQVjW2a9vrcMrjfFQCjUekIF6vq8lwVn+vnL2AV
         OBAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744039463; x=1744644263;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IcSjwmZr8ORweNU9kIIwQdANNDnxoTJTNwIPGaZvALc=;
        b=XPZu+hXXdWWUgL96SkNShwkoghjaS05Br8hJhwMsWaCf3rXhuuVgopovkUAdqJhOpr
         GYayvkcQxwlTSzlg3XJtNotNu1QdLdFB44OyO+xlYKr7mj3xCVeap72mw5QSyz2EqTdS
         WvAsXTWfo880M7X+60WOD1DWMVMdg5v0x72pOUVuQWz75FSORa2b/9OHVWr2Qr9JfxE1
         lD10gU3VqfUTqh2+Gv1PMplpO87k315oEM29QXEhFSJ8KcVIo9QQOJlVbibhY4PcDQHs
         lbKdLQqEhx6QqQBzH7TJP6pbKL/ubOcZIoTrpLW8ZW3rB6wJaja6HhMELNDZfheIDr2N
         X2MA==
X-Forwarded-Encrypted: i=1; AJvYcCXLgcHqdHvxO0ifY0ylI9rvJDB7CGrR+Nbgqoawo/HWzBVNlrVHcWymnf7ji6XOE3il2xymAZPi8yEe@vger.kernel.org
X-Gm-Message-State: AOJu0YxPkPb/Sq2VrKpimBhGhpeGxH25esSSLBCcTCdnSUdGaPOLIfTY
	D6vOCz9lSMDUJdaCye9SZcvVUuJbpxcPqJG4z3GRO2aViwqvY41eaWi28P0vU1A=
X-Gm-Gg: ASbGnctBS535gxj9qas05z58uC/c0WoC1D11r4WRKvMG2wYS1lz0i6u/UJDHz/jUodA
	olKE75Xmt85YGH+FRmdFT5aKMX+x58FUrgrIjDZuygt+cmurmyVVTHML3Nsejp/K9WvtjFWzaOy
	op0KLNxi+Vf6WNznxOmfLMKbr6swrI+2f+4H/lAjcBMxtnULACyr0SueVWnQp9YwAMpuVj2JHvZ
	Il9csZ6qF/QjuEzyn4ffLDFdplwhlRsOSMn/tZptOddgxDETtAlM2jLi+Rpt82VuglfQxpNgTx5
	hRbAjsKizxTxUIobMw3sMkfhgU2hSF3Tj8akIAsUdSf9vVFxcI6A95Hfh/jg9HKyhg==
X-Google-Smtp-Source: AGHT+IEiztIgBCTamZNWx7wXWdVS9Mdv/TxnRw3HiOV9XILWkE1LHblkaE4EeM/P1T2cQOYdvHuaPA==
X-Received: by 2002:a05:6000:4312:b0:390:e9e0:5cb3 with SMTP id ffacd0b85a97d-39cb36b2a91mr10562781f8f.12.1744039462633;
        Mon, 07 Apr 2025 08:24:22 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c301b42besm12212001f8f.41.2025.04.07.08.24.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Apr 2025 08:24:22 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 07 Apr 2025 17:24:15 +0200
Subject: [PATCH v3 3/5] media: platform: qcom/iris: introduce optional
 controller_rst_tbl
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250407-topic-sm8x50-iris-v10-v3-3-63569f6d04aa@linaro.org>
References: <20250407-topic-sm8x50-iris-v10-v3-0-63569f6d04aa@linaro.org>
In-Reply-To: <20250407-topic-sm8x50-iris-v10-v3-0-63569f6d04aa@linaro.org>
To: Vikash Garodia <quic_vgarodia@quicinc.com>, 
 Dikshita Agarwal <quic_dikshita@quicinc.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3992;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=yF/nZpFIBaoPgtK083tpBRuL0o6ITykxH9hfKXrn2O0=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBn8+4ipaaLhBnlbScsYbBzP5yhs0djrxvD3iyc0RFs
 V5IeTC6JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ/PuIgAKCRB33NvayMhJ0VIREA
 CJei6IXdQrW7QLe/TcP/GwmC3F+un8EItAZKWCQAeJD6KaR/kab+E2OhirbnLJOQG/BSPFB77n6z3x
 mI2ZZqkYYH+0gA2HTu+i1JzhWUxeYC2Dcga5WZupLkTs0hLrgoZnzsiC1h0GvNtlcwQiyGr65pJm3q
 /UcSj7QdL2Zo8vR3PNlZq0cAT2w/V5U6XjRm3/G9VTR5z/YUx6sykWIsWL4GaM/EK2TsU8J9BeJiuq
 2JTote7vWKuZ2elPL5AzWDl2VKG8+gVMtItQr90kHv04j40HuBNvx2+BNZzdPld5Qa3m6KXT69AOR6
 Q21OHGRif1Dxt9kfEFZb0m849oJyDz78xPptarZr0qrPeuDI5KmwX1o37vfHzFJm6QLxdry971Gjgx
 3mWBU660QE/DEBtGYsYuDPZOiQoW57zcHHIbpMDTRlZHWzF6ENyAJFyL2e5kQDs6vUVU+S0COKRJTs
 6W9KaBHxsNRSBSW86jHQ61hDD9quViZKWyvi27iRfhWo/vbKkOPD4ZB6pm75ih5NakrhngMhNghKdc
 dQxYGwKSUfK7vyAvYHDd6Qb+eA+nQLn+XYG0nqPtIA1q5/1oqNqjRWqC1/+NTBjeuhzaHbHqws0skY
 erL5ZWLM+8ciDgkBD9Bmem1ClaDc1AgPYjafMzLx/FJWeQ0x6RnKYW7+2Mgg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Introduce an optional controller_rst_tbl use to store reset lines
used to reset part of the controller.

This is necessary for the vpu3 support, when the xo reset line
must be asserted separately from the other reset line
on power off operation.

Factor the iris_init_resets() logic to allow requesting
multiple reset tables.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/media/platform/qcom/iris/iris_core.h       |  1 +
 .../platform/qcom/iris/iris_platform_common.h      |  2 ++
 drivers/media/platform/qcom/iris/iris_probe.c      | 39 +++++++++++++++-------
 3 files changed, 30 insertions(+), 12 deletions(-)

diff --git a/drivers/media/platform/qcom/iris/iris_core.h b/drivers/media/platform/qcom/iris/iris_core.h
index 37fb4919fecc62182784b4dca90fcab47dd38a80..78143855b277cd3ebdc7a1e7f35f6df284aa364c 100644
--- a/drivers/media/platform/qcom/iris/iris_core.h
+++ b/drivers/media/platform/qcom/iris/iris_core.h
@@ -82,6 +82,7 @@ struct iris_core {
 	struct clk_bulk_data			*clock_tbl;
 	u32					clk_count;
 	struct reset_control_bulk_data		*resets;
+	struct reset_control_bulk_data		*controller_resets;
 	const struct iris_platform_data		*iris_platform_data;
 	enum iris_core_state			state;
 	dma_addr_t				iface_q_table_daddr;
diff --git a/drivers/media/platform/qcom/iris/iris_platform_common.h b/drivers/media/platform/qcom/iris/iris_platform_common.h
index f6b15d2805fb2004699709bb12cd7ce9b052180c..fdd40fd80178c4c66b37e392d07a0a62f492f108 100644
--- a/drivers/media/platform/qcom/iris/iris_platform_common.h
+++ b/drivers/media/platform/qcom/iris/iris_platform_common.h
@@ -156,6 +156,8 @@ struct iris_platform_data {
 	unsigned int clk_tbl_size;
 	const char * const *clk_rst_tbl;
 	unsigned int clk_rst_tbl_size;
+	const char * const *controller_rst_tbl;
+	unsigned int controller_rst_tbl_size;
 	u64 dma_mask;
 	const char *fwname;
 	u32 pas_id;
diff --git a/drivers/media/platform/qcom/iris/iris_probe.c b/drivers/media/platform/qcom/iris/iris_probe.c
index aca442dcc153830e6252d1dca87afb38c0b9eb8f..4f8bce6e2002bffee4c93dcaaf6e52bf4e40992e 100644
--- a/drivers/media/platform/qcom/iris/iris_probe.c
+++ b/drivers/media/platform/qcom/iris/iris_probe.c
@@ -91,25 +91,40 @@ static int iris_init_clocks(struct iris_core *core)
 	return 0;
 }
 
-static int iris_init_resets(struct iris_core *core)
+static int iris_init_reset_table(struct iris_core *core,
+				 struct reset_control_bulk_data **resets,
+				 const char * const *rst_tbl, u32 rst_tbl_size)
 {
-	const char * const *rst_tbl;
-	u32 rst_tbl_size;
 	u32 i = 0;
 
-	rst_tbl = core->iris_platform_data->clk_rst_tbl;
-	rst_tbl_size = core->iris_platform_data->clk_rst_tbl_size;
-
-	core->resets = devm_kzalloc(core->dev,
-				    sizeof(*core->resets) * rst_tbl_size,
-				    GFP_KERNEL);
-	if (!core->resets)
+	*resets = devm_kzalloc(core->dev,
+			       sizeof(struct reset_control_bulk_data) * rst_tbl_size,
+			       GFP_KERNEL);
+	if (!*resets)
 		return -ENOMEM;
 
 	for (i = 0; i < rst_tbl_size; i++)
-		core->resets[i].id = rst_tbl[i];
+		(*resets)[i].id = rst_tbl[i];
+
+	return devm_reset_control_bulk_get_exclusive(core->dev, rst_tbl_size, *resets);
+}
+
+static int iris_init_resets(struct iris_core *core)
+{
+	int ret;
+
+	ret = iris_init_reset_table(core, &core->resets,
+				    core->iris_platform_data->clk_rst_tbl,
+				    core->iris_platform_data->clk_rst_tbl_size);
+	if (ret)
+		return ret;
+
+	if (!core->iris_platform_data->controller_rst_tbl_size)
+		return 0;
 
-	return devm_reset_control_bulk_get_exclusive(core->dev, rst_tbl_size, core->resets);
+	return iris_init_reset_table(core, &core->controller_resets,
+				     core->iris_platform_data->controller_rst_tbl,
+				     core->iris_platform_data->controller_rst_tbl_size);
 }
 
 static int iris_init_resources(struct iris_core *core)

-- 
2.34.1


