Return-Path: <devicetree+bounces-13776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B857E0668
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 17:25:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 420721C20DD8
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 16:25:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 561CB1CA8F;
	Fri,  3 Nov 2023 16:25:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NEzEOWh0"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 021E8FBF4
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 16:25:21 +0000 (UTC)
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51AB1D58
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 09:25:12 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-32ded3eb835so1521019f8f.0
        for <devicetree@vger.kernel.org>; Fri, 03 Nov 2023 09:25:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699028711; x=1699633511; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xVhfvAV1sseHeHoQosCAQU0IdhydZ3F9lmBGCI45fqM=;
        b=NEzEOWh0XUHNPM+lt067qjQrWh2d0djpfXjWhrBad0O1zJG88ZTmvUy/R+TqbR/FPP
         XZjN8oAN30Pncqqak+Rh12e5ZRxRNRAn5/F6HssJ3JmCKT8SLVpDtV9aovFfbtNcmLop
         bNTkOEQXNvRR1Ntm65j6WTiH0qeHtAcLAAHlK9b0qiWSkgyvX7bpKwHRCTevRtkNnhVi
         X7h2bif00S28gK16xYI4T6w77FWucdQRjzk9O0pUSjjmy0cA3ALr1V0NMreNGncuRVul
         +l7w2l08tqrS62Ut6xeEx1o9eOK1xrg3W02outdqXnXQ0hfZU0KrgtxkzH+g34xb3waG
         F+QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699028711; x=1699633511;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xVhfvAV1sseHeHoQosCAQU0IdhydZ3F9lmBGCI45fqM=;
        b=lPeVggVL+/cz7wGNF2TJFa3xlnSgncZHsQ3xv+wdflXsuP0tOH7CZ0SS2JwHGQA4a2
         9ADwF+NO23xOhj3GO6vdU/ECgrcJ4rTqG2xChbJp8gRMvwOuk27kLSO7rB1h4qxUl2gx
         2VUL7mhtxnIWsqee929TIqv03wKXW/00M+SYOEydsjzFxggoHGcQdyNkMkvR4/mnI0GS
         b8H9Pclko7hXVIE0cWe6kg5iJlTLSgm6kbcxhRERcjDhXx+caTX3cS8L9adaYfcZk3+p
         rhDiZz/EH2E1g2tkCSsys5M5jHZi98fLMGsWRlUgREwLuD52kTOsbIBJKNRtLoSJxS4k
         MhBw==
X-Gm-Message-State: AOJu0YzlY2J8vFRA0R2B8xbV/hVTS/uXN62bLZJasEQksU8clHcp6o23
	XoER87SrgaDtYB2R2bSIpekJ6w==
X-Google-Smtp-Source: AGHT+IH+pWIJ4osRggP1NRUKcHyJ5kedN1gjO7wa1bdm3llXEeX4ktGLZUKdl1y3lCu6UtW+MjeZFw==
X-Received: by 2002:a05:6000:154d:b0:32f:7ff9:b753 with SMTP id 13-20020a056000154d00b0032f7ff9b753mr16010965wry.62.1699028711070;
        Fri, 03 Nov 2023 09:25:11 -0700 (PDT)
Received: from [127.0.0.1] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id x13-20020a5d650d000000b003142e438e8csm2219972wru.26.2023.11.03.09.25.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Nov 2023 09:25:10 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Fri, 03 Nov 2023 16:25:07 +0000
Subject: [PATCH v2 4/6] media: qcom: camss: Add sc8280xp resource details
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231103-b4-camss-sc8280xp-v2-4-b7af4d253a20@linaro.org>
References: <20231103-b4-camss-sc8280xp-v2-0-b7af4d253a20@linaro.org>
In-Reply-To: <20231103-b4-camss-sc8280xp-v2-0-b7af4d253a20@linaro.org>
To: hverkuil-cisco@xs4all.nl, laurent.pinchart@ideasonboard.com, 
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Todor Tomov <todor.too@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, vincent.knecht@mailoo.org, 
 matti.lehtimaki@gmail.com, quic_grosikop@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.13-dev-26615

This commit describes the hardware layout for the sc8280xp for the
following hardware blocks:

- 4 x VFE, 4 RDI per VFE
- 4 x VFE Lite, 4 RDI per VFE
- 4 x CSID
- 4 x CSID Lite
- 4 x CSI PHY

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/media/platform/qcom/camss/camss.c | 383 ++++++++++++++++++++++++++++++
 1 file changed, 383 insertions(+)

diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index 8778fdc1ee342..51619842f3925 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -941,6 +941,374 @@ static const struct resources_icc icc_res_sm8250[] = {
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
+		.is_lite = true,
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
+		.is_lite = true,
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
+		.is_lite = true,
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
+		.is_lite = true,
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
+		.is_lite = true,
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
+		.is_lite = true,
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
+		.is_lite = true,
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
+		.is_lite = true,
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
@@ -1824,12 +2192,27 @@ static const struct camss_resources sm8250_resources = {
 	.vfe_num = ARRAY_SIZE(vfe_res_8250),
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
+	.vfe_num = ARRAY_SIZE(vfe_res_sc8280xp),
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


