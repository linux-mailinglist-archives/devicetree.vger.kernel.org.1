Return-Path: <devicetree+bounces-110073-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F639991DA
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 21:08:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B2CB6282FD1
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 19:08:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38B381CF5D6;
	Thu, 10 Oct 2024 19:02:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rocketmail.com header.i=@rocketmail.com header.b="MivYweOW"
X-Original-To: devicetree@vger.kernel.org
Received: from sonic305-20.consmr.mail.ir2.yahoo.com (sonic305-20.consmr.mail.ir2.yahoo.com [77.238.177.82])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9FF13774D
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 19:02:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=77.238.177.82
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728586948; cv=none; b=ZBli89jsGm9O/FzMIfGB22b0gEy4btJ8AsqRJ3jf3TVSmVnpoa05UxKlGnzSuoa7rLm7gp756MfPpQbrji3RAN9YYBQpqE45k++Hz6SmtxjdxVbplk6hVeHP9bwKCIISI+QIneUV0C+cksgUhQWoMhHm6iAYc+dxysdUuAo/pQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728586948; c=relaxed/simple;
	bh=+K7st0vTlWzpYMdiSmHaufzk58eKg2Y8fgt9ikLTh84=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=POxadYyLiOq9pM9OQQUz5DG/s4GH9MBDCT1wcGInEYvtNgM8enAGMib6BMysQPzUJA/rNESys7Sv2yconsP9Ch/daOtDfxXVYSk2OT30kL3ss9ph6DWtgndbzIPop5As3CAMsYgogm29Ip24GNLP9lycd0V1djwX6KWXbeyVjvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=rocketmail.com; spf=pass smtp.mailfrom=rocketmail.com; dkim=pass (2048-bit key) header.d=rocketmail.com header.i=@rocketmail.com header.b=MivYweOW; arc=none smtp.client-ip=77.238.177.82
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=rocketmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rocketmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rocketmail.com; s=s2048; t=1728586944; bh=IVfo7djHn4E/gSfrgafllB8vhzaZmFnMX4/kh+1ZHS4=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject:Reply-To; b=MivYweOWTVJaUWOkKXCO55xt0O9zCF0RiK7U+9RzYru7DLdydrpWyN7htkBu061ThKN9rPnYiq8xLkoiSafO8GiB/WpLB2coSTVrrb3HE1pF9GUlLwipytRcTN+Nebw5opp3mw5QJrtZwy4rxvzFAPQQe/H46M7YVObl2epfAsdgoxIH0z5WHKcKjjRp5NoEMdIkkKds4VTauhsmCq9OCbxNXH/BPAFI4AioCdzpgZ2Adg+XTpFgCehjlhrMaoBpu8jZw4MnpMIT99XteO6fgKXUcJ9RqQPtOh9u7L7vH8bNuTff1dnU6aFFRZOdgWbJz9e+1jFEP9gOHJLwQ77//g==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1728586944; bh=pnls8pv3PnThaKt0Xoqqi5NK+FzH8LNpemRKYG7Kih7=; h=X-Sonic-MF:From:To:Subject:Date:From:Subject; b=cp4+H+hT/uip9vuC7gVVlCor+laROGH9TVZ/aWFwU6nRLFY+FqKcD15R+MYvQ6Hpyb+jSEhVt4yNk0TdPUTKOTd6CwQzWsue8ImcsMvK0rl9JUiu64pKeJ9TiiAP0/iJ4aE3t5iU0TT9V3wF2DhTSKOvi234KjVHm8ocDlVLD7OZYkYrRuKH82cCsBYC5FuzDsIzE8w6uMWO9jIbgtZqTCRJBC1HREBfcu3ujS0R0ZYfHKMxmBCv4Jnc3MAL4mJMkiVmsZGZziTpFqWAk+AJFyayBSy3GUAfeydQlvwpwfMVO7ob6VaI3bxnNm00SmA/K2XaNCLhr3jQlpU+3ZaNag==
X-YMail-OSG: 7fq7bQIVM1kYuCzJK3MU9or9tkfjWMRXocQVEGDF87ZBxVtO0RJtIZplkT4yovU
 jzYeq7Ioq.lSOmmQ.2f4uBsPmBFNVRRLiqNWJxTRs_B3j23A.CDJQomDIULVF_2qvxAQSLMvLgOc
 6c2qRJStjTy8WDAwYJEQ6AxeUoTQefLYKVqPr4wZEzqP5ERhrjrGNOXKWSGmtP1gF7fAn4J3cAXh
 pTB1vQP0EZmrTUPLb7M4hpmptM7GRLY9GNZZsadANxr_KKen2_E2mTJi7atllYuAiEQBAgp3gQnE
 k_d863n5vk5CmsuqecWGmbEzpE35.HklPIarIyoDgYUw3fWmIpJiFRL_dviyQtHm704PPCX1DnbJ
 XNuA7gBPMcG9PBHMVbfrqqpOLiaCWxn8LsFftVcUPINxh2Ui3xFOmZ5mbGTHEJ7QtKoSdYYrk70.
 a7_uuRO2YLu7TmmsxAXHEzRwdWoAdBHyHWr5HdeykheegahRmR8Tc9QlAttEp3c_b3l8PyoxNxFs
 Vi6YvGv5Jl4Vz9upCtC25IYR2SiqfX_mBxZSYkkRkWQ.W_pzsIWPnalu16fPmt9WRyjIiuUbvmPF
 AgGpahqGfW358dF4C20gSb4WFtnvb5VE4xHmXEuDnCUl6NnakxNFOJzLaL2iZWrod7ZeSwV13itp
 gAccMDIFizbYMOOIzGoqVvXhHPRwELWi6K0eLWWHpmHSVXkZBFpqj3VcNvnp2mw0tRFoDc6S.orq
 uLOKKwZo_Ei0pJgSnOW.e6l4GeYrL7BHHxkyue5kjvAO64V4CKuxQVzgciPgcgtajyTnNktuzqQs
 GtSBR_fjxfsGAEUOWYAz_SYoZAtE00gzof81gfxaAf5vaqGb.PW6fNvqJRObEUDmENjvCBt8pl1p
 J9B8Cq0rs_pLlxHZ3XcrIK93XXRH8cThQotKxKixM87eV2cAoV6.5.SXryyALCshmNdkFsEFLdPX
 mzwSqYdzpMie.56fbfumaPD8dZ3D0eBwnlaZaiaYTOQlH.dUKiGiqqpXyYD8yzuTOQzw0h7fkiZW
 F8cg7Lz1F_k.hyvqxfg26U_vIEgJZtD0qSxr_DxKsEw.evwxF.1n.jyR9uQsb7W5SEw8h9M5TtDB
 gOAIPJm7nhu.ce50bOgBJOMyhRKII6XhC3lrV59vqPutnwD.PMUIQPGLcO1aTxdn18Go7Rqs5wrE
 zMBHIKpTrvouWZmgB67.O6DG1Ovnt2Ne.xN8q391y7NyDhMt0inuLFHKwM8lF6_8aSurKB91V2Et
 n55ZRG71Yc1IDavcAVuTD.iBu5Cv2pWUocpU9eS35Eunk455vD_mzEPvIbNRLw7lTrDSv9RlBAof
 Zbn37PtC7qZTKJRCSUM9yAgCyG5U0tXS_Ztp2ms3144517yW8CtAWHJInzLYr63n4IrEQNebvSFf
 TDBkMSp0QyCNYQ3v2FGKVi0JZfgcHRzc8BivMhS7QtNm2H_KHXx9BnlC0JuzUVuwWfPluLnhefX2
 ZWUQs0_gcrOLfOgw_.7odMONLaEz0P4KtrnCglaIgyUQpDxQAPEqAlwNSFQuRRS.tNZwFyI.455q
 2vobW.a0XzYgqYxNH1Yj8JHR1nn0ZNum8ssnLf06OxUokPiLrSMAdfhRQ3txdf8.eU1EpfV7fFgU
 YTiHqWvR0GSJrb5FmtOncckjGd9rA_T4kVZnx4iUsT.P9BBd9fAOnH2fKl_35POJjPzQxnTqTpai
 guPilNze70Uu1yQfipZucp7j.Wo_NFco4EuSGl0rgHHAJeqq7mPMc5awZVOtzLHuwYuMx9dHqu8P
 VeMrMzeeuhVD0ftgnSXI01nvp1W4_5Dzp2UtbIQbu0RcoPH6kMXdntx9tG2T803q7ZnuTG2Sucrb
 jmHD2tiBcekdmnC.rt9CTnscLCpzRU7otJ8EHXh5BKF94l7WHwMYQGI9.48j4enRBk8LZd7yJPoQ
 BbeIpLmMrmVY6g2YhA9UgHs2yREIVt0hz2NR_BxaUHBC.jSTyU9SQMxbrrwfaUqntNNhhkohRAMD
 ggYZsvFTjcIrhR5GCbm9xMuM.OBxg93cMRNwAa6kjkRW8AzLhpL9A1zBEGlBCp83P6ClRA3RyTKM
 FDM7euuqyJaANYVoa4WswDjtWMhlFfp8gWM6v2l01eu6Q3KXhHx.P0QwLLQPtb4_70S6kqAgX7ks
 3nGnxfn9j17LRxU8Xv1Z9e7UjCJvEcL.kCZ.MWUeQ48pEwk2sSbzFqruaSlEIvUzJKeWpUGzZdhf
 l9BNdHM6LOR1F8xh_1IhLXj16a2mNHw4NtFo5crHc9gHEl8n0lmNPCEUFPUMtZC_zF27TdnTM_cZ
 ltucKazhJyfjSfEdDj1eOQHra7LSDKjJeVyIsJOQri8iLXP6XjViCDymy1w--
X-Sonic-MF: <jahau@rocketmail.com>
X-Sonic-ID: 7a3f520f-1a87-4daa-a1f8-fdf9c98d8612
Received: from sonic.gate.mail.ne1.yahoo.com by sonic305.consmr.mail.ir2.yahoo.com with HTTP; Thu, 10 Oct 2024 19:02:24 +0000
Received: by hermes--production-ir2-6664f499fc-97g4x (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID 7a7b462d09211a1a6528a42ebeb90f61;
          Thu, 10 Oct 2024 18:32:00 +0000 (UTC)
From: Jakob Hauser <jahau@rocketmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Jakob Hauser <jahau@rocketmail.com>
Subject: [PATCH 4/4] drm/panel: samsung-s6e88a0-ams427ap24: Add flip option
Date: Thu, 10 Oct 2024 20:31:51 +0200
Message-Id: <70ea852342001779956905ed9002a977d1d95293.1728582727.git.jahau@rocketmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1728582727.git.jahau@rocketmail.com>
References: <cover.1728582727.git.jahau@rocketmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The way of implementing a flip option follows the existing
panel-samsung-s6e8aa0.c [1][2][3].

The value to flip the screen is taken from a downstream kernel file of
a similar but older panel [4]. The mipi clock [5] for the new panel
samsung-s6e88a0-ams427ap24 matches 461 MHz and a hardware read-out of the
0xcb values corresponds to revision R01 of that older panel [6]. Although
for samsung-s6e88a0-ams427ap24 that's in non-flipped state while in this
older driver it seems to be the other way around. Further up there is a
hint [7] basically saying for revision R01 to change the first word of the
0xcb command from 0x06 to 0x0e, which is actually setting BIT(3) of that
word. This causes a horizontal flip.

[1] https://github.com/torvalds/linux/blob/v6.11/drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c#L103
[2] https://github.com/torvalds/linux/blob/v6.11/drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c#L207-L211
[3] https://github.com/torvalds/linux/blob/v6.11/drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c#L954-L974
[4] https://github.com/LineageOS/android_kernel_samsung_msm8930-common/blob/lineage-15.1/drivers/video/msm/mipi_samsung_oled_video_qhd_pt-8930.c
[5] https://github.com/LineageOS/android_kernel_samsung_msm8930-common/blob/lineage-15.1/drivers/video/msm/mipi_samsung_oled_video_qhd_pt-8930.c#L2027-L2028
[6] https://github.com/LineageOS/android_kernel_samsung_msm8930-common/blob/lineage-15.1/drivers/video/msm/mipi_samsung_oled_video_qhd_pt-8930.c#L137-L151
[7] https://github.com/LineageOS/android_kernel_samsung_msm8930-common/blob/lineage-15.1/drivers/video/msm/mipi_samsung_oled_video_qhd_pt-8930.c#L66-L74

Signed-off-by: Jakob Hauser <jahau@rocketmail.com>
---
 .../drm/panel/panel-samsung-s6e88a0-ams427ap24.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams427ap24.c b/drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams427ap24.c
index 657120d7dd33..4d5c494e03ae 100644
--- a/drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams427ap24.c
+++ b/drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams427ap24.c
@@ -32,6 +32,7 @@ struct s6e88a0_ams427ap24 {
 	struct mipi_dsi_device *dsi;
 	struct regulator_bulk_data *supplies;
 	struct gpio_desc *reset_gpio;
+	bool flip_horizontal;
 	bool prepared;
 };
 
@@ -539,6 +540,10 @@ static int s6e88a0_ams427ap24_on(struct s6e88a0_ams427ap24 *ctx)
 	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xcc, 0x4c);
 	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf2, 0x03, 0x0d);
 	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf1, 0xa5, 0xa5);
+
+	if (ctx->flip_horizontal)
+		mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xcb, 0x0e);
+
 	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0xa5, 0xa5);
 	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xfc, 0xa5, 0xa5);
 
@@ -673,6 +678,15 @@ static int s6e88a0_ams427ap24_register_backlight(struct s6e88a0_ams427ap24 *ctx)
 	return ret;
 }
 
+static void s6e88a0_ams427ap24_parse_dt(struct s6e88a0_ams427ap24 *ctx)
+{
+	struct mipi_dsi_device *dsi = ctx->dsi;
+	struct device *dev = &dsi->dev;
+	struct device_node *np = dev->of_node;
+
+	ctx->flip_horizontal = of_property_read_bool(np, "flip-horizontal");
+}
+
 static int s6e88a0_ams427ap24_probe(struct mipi_dsi_device *dsi)
 {
 	struct device *dev = &dsi->dev;
@@ -707,6 +721,8 @@ static int s6e88a0_ams427ap24_probe(struct mipi_dsi_device *dsi)
 		       DRM_MODE_CONNECTOR_DSI);
 	ctx->panel.prepare_prev_first = true;
 
+	s6e88a0_ams427ap24_parse_dt(ctx);
+
 	ret = s6e88a0_ams427ap24_register_backlight(ctx);
 	if (ret < 0)
 		return ret;
-- 
2.39.5


