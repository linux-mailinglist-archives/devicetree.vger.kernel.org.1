Return-Path: <devicetree+bounces-13587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2032F7DF156
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 12:42:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 738DDB211DB
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 11:42:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D385B14AB3;
	Thu,  2 Nov 2023 11:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O4ReXCx3"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C78AB14F68
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 11:42:15 +0000 (UTC)
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66359198
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 04:42:06 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2c503da4fd6so11557061fa.1
        for <devicetree@vger.kernel.org>; Thu, 02 Nov 2023 04:42:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698925324; x=1699530124; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x91L6v0kSDqfN/qnO2ofEPMA3FOEMKvoz3hZlW11E/M=;
        b=O4ReXCx3nSnOeD3FGsFtbjD1AJtR1vpoYqWF482XLg/e69/oAkGOIdkbFzmiJ+fkIQ
         DbmVdjmno2naLI3XqlhEbClwUtpD8c3P8KFNzor1jbzm1Q7Q6QpHYLlT4COPio6PVUIZ
         QHHRlayNiRrNkF8eHZCHCk4J2wZAkdGY7mCc36RWxpgXvPYBN+U0N/NYb4cj1pT8Pow1
         yLl3jn+F/lGW+4nW9E6Z6/R61mBq231ZmLVsUY7rog46ZzJg/qut5v19WH6DntJt0Gu6
         JvImzPXtJ5+EqmXBebmKIc35Ww7dNzZ3ekAcSB5P2AhZvD1C24woyAXfEmLt4gIKs3z+
         BvGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698925324; x=1699530124;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x91L6v0kSDqfN/qnO2ofEPMA3FOEMKvoz3hZlW11E/M=;
        b=FhEGFljUpLcnYKgFQTk1k7e++jiB8sFmIRTIkoUAfEip/q7nkKWDd+ebOyvMYRVUUw
         ayIwyhqmRuO/QTaJyzlpNW7sZQB3Jd5aCMlayLqhSAUf97GbOaj48hMELoxrVlApy6/W
         5BJPyB0BbWnL8Nj7PXn36t0S3qXicov+/hmR5HiF+pL3wg/8TEr3cx0+SGB7QhT6YG4g
         Dh2TaoRI7fbqmpV3qr/DesCtPjRXU21foELMVCFZmcJ2oxRQpAS7zM2X7R16DG8HRPmy
         RBTzCL44i6Q8DWzfD3huvTUzyirPGpp5WrcbSp01em/lMZtN+g3/cbRQoQp6tPzUG0iW
         fpOQ==
X-Gm-Message-State: AOJu0YwwvzgPn5ZYe/CoOEX5uCLrnvD0Z+vD+cXR3czLa/ZIttAlucsx
	KNJuW9EmaXCk924pYszuThHIEw==
X-Google-Smtp-Source: AGHT+IEvSFeGQKEaiFrhOVFsu/DZLc1BZMm0ChN/cz6WMzb/nAObqFNNex3KFndWz05FIcU+WbFD9Q==
X-Received: by 2002:a2e:3c12:0:b0:2c5:1542:57e9 with SMTP id j18-20020a2e3c12000000b002c5154257e9mr15062900lja.41.1698925324607;
        Thu, 02 Nov 2023 04:42:04 -0700 (PDT)
Received: from [127.0.0.1] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id j41-20020a05600c1c2900b004060f0a0fdbsm2717720wms.41.2023.11.02.04.42.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Nov 2023 04:42:04 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 02 Nov 2023 11:41:57 +0000
Subject: [PATCH 4/6] media: qcom: camss: Add sc8280xp resource details
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231102-b4-camss-sc8280xp-v1-4-9996f4bcb8f4@linaro.org>
References: <20231102-b4-camss-sc8280xp-v1-0-9996f4bcb8f4@linaro.org>
In-Reply-To: <20231102-b4-camss-sc8280xp-v1-0-9996f4bcb8f4@linaro.org>
To: hverkuil-cisco@xs4all.nl, laurent.pinchart@ideasonboard.com, 
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Todor Tomov <todor.too@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, vincent.knecht@mailoo.org, 
 matti.lehtimaki@gmail.com, grosikop@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.13-dev-83828

This commit describes the hardware layout for the sc8280xp for the
following hardware blocks:

- 4 x VFE, 4 RDI per VFE
- 4 x VFE Lite, 4 RDI per VFE
- 4 x CSID
- 4 x CSID Lite
- 4 x CSI PHY

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/media/platform/qcom/camss/camss.c | 376 ++++++++++++++++++++++++++++++
 1 file changed, 376 insertions(+)

diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index d9304e060666a..258ff85aad387 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -935,6 +935,366 @@ static const struct resources_icc icc_res_sm8250[] = {
 	},
 };
 
+static const struct camss_subdev_resources csiphy_res_sc8280xp[] = {
+	/* CSIPHY0 */
+	{
+		.regulators = {},
+		.clock = { "csiphy0", "csiphy0_timer" },
+		.clock_rate = { { 400000000 },
+				{ 300000000 } },
+		.reg = { "csiphy0" },
+		.interrupt = { "csiphy0" },
+		.ops = &csiphy_ops_3ph_1_0
+	},
+	/* CSIPHY1 */
+	{
+		.regulators = {},
+		.clock = { "csiphy1", "csiphy1_timer" },
+		.clock_rate = { { 400000000 },
+				{ 300000000 } },
+		.reg = { "csiphy1" },
+		.interrupt = { "csiphy1" },
+		.ops = &csiphy_ops_3ph_1_0
+	},
+	/* CSIPHY2 */
+	{
+		.regulators = {},
+		.clock = { "csiphy2", "csiphy2_timer" },
+		.clock_rate = { { 400000000 },
+				{ 300000000 } },
+		.reg = { "csiphy2" },
+		.interrupt = { "csiphy2" },
+		.ops = &csiphy_ops_3ph_1_0
+	},
+	/* CSIPHY3 */
+	{
+		.regulators = {},
+		.clock = { "csiphy3", "csiphy3_timer" },
+		.clock_rate = { { 400000000 },
+				{ 300000000 } },
+		.reg = { "csiphy3" },
+		.interrupt = { "csiphy3" },
+		.ops = &csiphy_ops_3ph_1_0
+	},
+};
+
+static const struct camss_subdev_resources csid_res_sc8280xp[] = {
+	/* CSID0 */
+	{
+		.regulators = { "vdda-phy", "vdda-pll" },
+		.clock = { "vfe0_csid_src", "vfe0_csid", "cphy_rx_src",
+			   "vfe0_cphy_rx", "vfe0_src", "vfe0", "vfe0_axi" },
+		.clock_rate = { { 400000000, 400000000, 480000000, 600000000, 600000000, 600000000 },
+				{ 0 },
+				{ 0 },
+				{ 0 },
+				{ 0 },
+				{ 0 },
+				{ 0 } },
+		.reg = { "csid0" },
+		.interrupt = { "csid0" },
+		.ops = &csid_ops_gen2
+	},
+	/* CSID1 */
+	{
+		.regulators = { "vdda-phy", "vdda-pll" },
+		.clock = { "vfe1_csid_src", "vfe1_csid", "cphy_rx_src",
+			   "vfe1_cphy_rx", "vfe1_src", "vfe1", "vfe1_axi" },
+		.clock_rate = { { 400000000, 400000000, 480000000, 600000000, 600000000, 600000000 },
+				{ 0 },
+				{ 0 },
+				{ 0 },
+				{ 0 },
+				{ 0 },
+				{ 0 } },
+		.reg = { "csid1" },
+		.interrupt = { "csid1" },
+		.ops = &csid_ops_gen2
+	},
+	/* CSID2 */
+	{
+		.regulators = { "vdda-phy", "vdda-pll" },
+		.clock = { "vfe2_csid_src", "vfe2_csid", "cphy_rx_src",
+			   "vfe2_cphy_rx", "vfe2_src", "vfe2", "vfe2_axi" },
+		.clock_rate = { { 400000000, 400000000, 480000000, 600000000, 600000000, 600000000 },
+				{ 0 },
+				{ 0 },
+				{ 0 },
+				{ 0 },
+				{ 0 },
+				{ 0 } },
+		.reg = { "csid2" },
+		.interrupt = { "csid2" },
+		.ops = &csid_ops_gen2
+	},
+	/* CSID3 */
+	{
+		.regulators = { "vdda-phy", "vdda-pll" },
+		.clock = { "vfe3_csid_src", "vfe3_csid", "cphy_rx_src",
+			   "vfe3_cphy_rx", "vfe3_src", "vfe3", "vfe3_axi" },
+		.clock_rate = { { 400000000, 400000000, 480000000, 600000000, 600000000, 600000000 },
+				{ 0 },
+				{ 0 },
+				{ 0 },
+				{ 0 },
+				{ 0 },
+				{ 0 } },
+		.reg = { "csid3" },
+		.interrupt = { "csid3" },
+		.ops = &csid_ops_gen2
+	},
+	/* CSID_LITE0 */
+	{
+		.regulators = { "vdda-phy", "vdda-pll" },
+		.clock = { "vfe_lite0_csid_src",  "vfe_lite0_csid",
+			   "cphy_rx_src", "vfe_lite0_cphy_rx", "vfe_lite0_src",
+			   "vfe_lite0" },
+		.clock_rate = { { 400000000, 400000000, 480000000, 600000000, 600000000, 600000000 },
+				{ 0 },
+				{ 0 },
+				{ 0 },
+				{ 0 },
+				{ 0 }, },
+		.reg = { "csid0_lite" },
+		.interrupt = { "csid0_lite" },
+		.ops = &csid_ops_gen2
+	},
+	/* CSID_LITE1 */
+	{
+		.regulators = { "vdda-phy", "vdda-pll" },
+		.clock = { "vfe_lite1_csid_src",  "vfe_lite1_csid",
+			   "cphy_rx_src", "vfe_lite1_cphy_rx", "vfe_lite1_src",
+			   "vfe_lite1" },
+		.clock_rate = { { 400000000, 400000000, 480000000, 600000000, 600000000, 600000000 },
+				{ 0 },
+				{ 0 },
+				{ 0 },
+				{ 0 },
+				{ 0 }, },
+		.reg = { "csid1_lite" },
+		.interrupt = { "csid1_lite" },
+		.ops = &csid_ops_gen2
+	},
+	/* CSID_LITE2 */
+	{
+		.regulators = { "vdda-phy", "vdda-pll" },
+		.clock = { "vfe_lite2_csid_src",  "vfe_lite2_csid",
+			   "cphy_rx_src", "vfe_lite2_cphy_rx", "vfe_lite2_src",
+			   "vfe_lite2" },
+		.clock_rate = { { 400000000, 400000000, 480000000, 600000000, 600000000, 600000000 },
+				{ 0 },
+				{ 0 },
+				{ 0 },
+				{ 0 },
+				{ 0 }, },
+		.reg = { "csid2_lite" },
+		.interrupt = { "csid2_lite" },
+		.ops = &csid_ops_gen2
+	},
+	/* CSID_LITE3 */
+	{
+		.regulators = { "vdda-phy", "vdda-pll" },
+		.clock = { "vfe_lite3_csid_src",  "vfe_lite3_csid",
+			   "cphy_rx_src", "vfe_lite3_cphy_rx", "vfe_lite3_src",
+			   "vfe_lite3" },
+		.clock_rate = { { 400000000, 400000000, 480000000, 600000000, 600000000, 600000000 },
+				{ 0 },
+				{ 0 },
+				{ 0 },
+				{ 0 },
+				{ 0 }, },
+		.reg = { "csid3_lite" },
+		.interrupt = { "csid3_lite" },
+		.ops = &csid_ops_gen2
+	}
+};
+
+static const struct camss_subdev_resources vfe_res_sc8280xp[] = {
+	/* IFE0 */
+	{
+		.regulators = {},
+		.clock = { "gcc_axi_hf", "gcc_axi_sf", "slow_ahb_src",
+			   "cpas_ahb", "camnoc_axi", "camnoc_axi_src",
+			   "vfe0_src", "vfe0", "vfe0_axi" },
+		.clock_rate = { { 0 },
+				{ 0 },
+				{ 19200000, 80000000, 80000000, 80000000, 80000000},
+				{ 80000000 },
+				{ 0 },
+				{ 19200000, 150000000, 266666667, 320000000, 400000000, 480000000 },
+				{ 0 },
+				{ 400000000, 558000000, 637000000, 760000000 },
+				{ 0 }, },
+		.reg = { "vfe0" },
+		.interrupt = { "vfe0" },
+		.pd_name = "ife0",
+		.line_num = 4,
+		.ops = &vfe_ops_170
+	},
+	/* IFE1 */
+	{
+		.regulators = {},
+		.clock = { "gcc_axi_hf", "gcc_axi_sf", "slow_ahb_src",
+			   "cpas_ahb", "camnoc_axi", "camnoc_axi_src",
+			   "vfe1_src", "vfe1", "vfe1_axi" },
+		.clock_rate = { { 0 },
+				{ 0 },
+				{ 19200000, 80000000, 80000000, 80000000, 80000000},
+				{ 80000000 },
+				{ 0 },
+				{ 19200000, 150000000, 266666667, 320000000, 400000000, 480000000 },
+				{ 0 },
+				{ 400000000, 558000000, 637000000, 760000000 },
+				{ 0 }, },
+		.reg = { "vfe1" },
+		.interrupt = { "vfe1" },
+		.pd_name = "ife1",
+		.line_num = 4,
+		.ops = &vfe_ops_170
+	},
+	/* IFE2 */
+	{
+		.regulators = {},
+		.clock = { "gcc_axi_hf", "gcc_axi_sf", "slow_ahb_src",
+			   "cpas_ahb", "camnoc_axi", "camnoc_axi_src",
+			   "vfe2_src", "vfe2", "vfe2_axi" },
+		.clock_rate = { { 0 },
+				{ 0 },
+				{ 19200000, 80000000, 80000000, 80000000, 80000000},
+				{ 80000000 },
+				{ 0 },
+				{ 19200000, 150000000, 266666667, 320000000, 400000000, 480000000 },
+				{ 0 },
+				{ 400000000, 558000000, 637000000, 760000000 },
+				{ 0 }, },
+		.reg = { "vfe2" },
+		.interrupt = { "vfe2" },
+		.pd_name = "ife2",
+		.line_num = 4,
+		.ops = &vfe_ops_170
+	},
+	/* VFE3 */
+	{
+		.regulators = {},
+		.clock = { "gcc_axi_hf", "gcc_axi_sf", "slow_ahb_src",
+			   "cpas_ahb", "camnoc_axi", "camnoc_axi_src",
+			   "vfe3_src", "vfe3", "vfe3_axi" },
+		.clock_rate = { { 0 },
+				{ 0 },
+				{ 19200000, 80000000, 80000000, 80000000, 80000000},
+				{ 80000000 },
+				{ 0 },
+				{ 19200000, 150000000, 266666667, 320000000, 400000000, 480000000 },
+				{ 0 },
+				{ 400000000, 558000000, 637000000, 760000000 },
+				{ 0 }, },
+		.reg = { "vfe3" },
+		.interrupt = { "vfe3" },
+		.pd_name = "ife3",
+		.line_num = 4,
+		.ops = &vfe_ops_170
+	},
+	/* IFE_LITE_0 */
+	{
+		.regulators = {},
+		.clock = { "gcc_axi_hf", "gcc_axi_sf", "slow_ahb_src",
+			   "cpas_ahb", "camnoc_axi", "camnoc_axi_src",
+			   "vfe_lite0_src", "vfe_lite0" },
+		.clock_rate = { { 0 },
+				{ 0 },
+				{ 19200000, 80000000, 80000000, 80000000, 80000000},
+				{ 80000000 },
+				{ 0 },
+				{ 19200000, 150000000, 266666667, 320000000, 400000000, 480000000 },
+				{ 0 },
+				{ 320000000, 400000000, 480000000, 600000000 }, },
+		.reg = { "vfe_lite0" },
+		.interrupt = { "vfe_lite0" },
+		.line_num = 4,
+		.ops = &vfe_ops_170
+	},
+	/* IFE_LITE_1 */
+	{
+		.regulators = {},
+		.clock = { "gcc_axi_hf", "gcc_axi_sf", "slow_ahb_src",
+			   "cpas_ahb", "camnoc_axi", "camnoc_axi_src",
+			   "vfe_lite1_src", "vfe_lite1" },
+		.clock_rate = { { 0 },
+				{ 0 },
+				{ 19200000, 80000000, 80000000, 80000000, 80000000},
+				{ 80000000 },
+				{ 0 },
+				{ 19200000, 150000000, 266666667, 320000000, 400000000, 480000000 },
+				{ 0 },
+				{ 320000000, 400000000, 480000000, 600000000 }, },
+		.reg = { "vfe_lite1" },
+		.interrupt = { "vfe_lite1" },
+		.line_num = 4,
+		.ops = &vfe_ops_170
+	},
+	/* IFE_LITE_2 */
+	{
+		.regulators = {},
+		.clock = { "gcc_axi_hf", "gcc_axi_sf", "slow_ahb_src",
+			   "cpas_ahb", "camnoc_axi", "camnoc_axi_src",
+			   "vfe_lite2_src", "vfe_lite2" },
+		.clock_rate = { { 0 },
+				{ 0 },
+				{ 19200000, 80000000, 80000000, 80000000, 80000000},
+				{ 80000000 },
+				{ 0 },
+				{ 19200000, 150000000, 266666667, 320000000, 400000000, 480000000 },
+				{ 0 },
+				{ 320000000, 400000000, 480000000, 600000000, }, },
+		.reg = { "vfe_lite2" },
+		.interrupt = { "vfe_lite2" },
+		.line_num = 4,
+		.ops = &vfe_ops_170
+	},
+	/* VFE_LITE_3 */
+	{
+		.regulators = {},
+		.clock = { "gcc_axi_hf", "gcc_axi_sf", "slow_ahb_src",
+			   "cpas_ahb", "camnoc_axi", "camnoc_axi_src",
+			   "vfe_lite3_src", "vfe_lite3" },
+		.clock_rate = { { 0 },
+				{ 0 },
+				{ 19200000, 80000000, 80000000, 80000000, 80000000},
+				{ 80000000 },
+				{ 0 },
+				{ 19200000, 150000000, 266666667, 320000000, 400000000, 480000000 },
+				{ 0 },
+				{ 320000000, 400000000, 480000000, 600000000 }, },
+		.reg = { "vfe_lite3" },
+		.interrupt = { "vfe_lite3" },
+		.line_num = 4,
+		.ops = &vfe_ops_170
+	},
+};
+
+static const struct resources_icc icc_res_sc8280xp[] = {
+	{
+		.name = "cam_ahb",
+		.icc_bw_tbl.avg = 150000,
+		.icc_bw_tbl.peak = 300000,
+	},
+	{
+		.name = "cam_hf_mnoc",
+		.icc_bw_tbl.avg = 2097152,
+		.icc_bw_tbl.peak = 2097152,
+	},
+	{
+		.name = "cam_sf_mnoc",
+		.icc_bw_tbl.avg = 2097152,
+		.icc_bw_tbl.peak = 2097152,
+	},
+	{
+		.name = "cam_sf_icp_mnoc",
+		.icc_bw_tbl.avg = 2097152,
+		.icc_bw_tbl.peak = 2097152,
+	},
+};
+
 /*
  * camss_add_clock_margin - Add margin to clock frequency rate
  * @rate: Clock frequency rate
@@ -1812,12 +2172,28 @@ static const struct camss_resources sm8250_resources = {
 	.vfe_lite_num = 2,
 };
 
+static const struct camss_resources sc8280xp_resources = {
+	.version = CAMSS_8280XP,
+	.pd_name = "top",
+	.csiphy_res = csiphy_res_sc8280xp,
+	.csid_res = csid_res_sc8280xp,
+	.ispif_res = NULL,
+	.vfe_res = vfe_res_sc8280xp,
+	.icc_res = icc_res_sc8280xp,
+	.icc_path_num = ARRAY_SIZE(icc_res_sc8280xp),
+	.csiphy_num = ARRAY_SIZE(csiphy_res_sc8280xp),
+	.csid_num = ARRAY_SIZE(csid_res_sc8280xp),
+	.vfe_num = 4,
+	.vfe_lite_num = 4,
+};
+
 static const struct of_device_id camss_dt_match[] = {
 	{ .compatible = "qcom,msm8916-camss", .data = &msm8916_resources },
 	{ .compatible = "qcom,msm8996-camss", .data = &msm8996_resources },
 	{ .compatible = "qcom,sdm660-camss", .data = &sdm660_resources },
 	{ .compatible = "qcom,sdm845-camss", .data = &sdm845_resources },
 	{ .compatible = "qcom,sm8250-camss", .data = &sm8250_resources },
+	{ .compatible = "qcom,sc8280xp-camss", .data = &sc8280xp_resources },
 	{ }
 };
 

-- 
2.42.0


