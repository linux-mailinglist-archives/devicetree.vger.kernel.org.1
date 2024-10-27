Return-Path: <devicetree+bounces-116234-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 89EBC9B2176
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 00:43:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1AD5A1F2129B
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 23:43:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAB6518C939;
	Sun, 27 Oct 2024 23:42:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rocketmail.com header.i=@rocketmail.com header.b="Ux2O67mz"
X-Original-To: devicetree@vger.kernel.org
Received: from sonic305-21.consmr.mail.ir2.yahoo.com (sonic305-21.consmr.mail.ir2.yahoo.com [77.238.177.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC7818B47D
	for <devicetree@vger.kernel.org>; Sun, 27 Oct 2024 23:42:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=77.238.177.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730072555; cv=none; b=GaVeeXmG3bPnpfCzKbKK/pDvR21GjufxzXP+//5UlzN4KNSw0BifnMRkhKtvAWl8tcWPJV1Yqt3J+Sm5wG3AaNe+z7IknkmXt2MdzcNmqjudkLVO1sDtJwHErw/Y5b4anpIXilZbJFC0VXFCPgfSqvDwAkqiLvUwz4oJq199owA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730072555; c=relaxed/simple;
	bh=8ksW8qLqkwME/AXebrzB80NPHSECFifQJ3VXjSxP6mE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=g4KApOVAzhihx2+I89I6aGBCm+K7KAOJUAB0Kt0ebzkOpZx1nhaW6m3g8SdgqXG3Z7n71K3LHS6aRR8VRwcvkmIWqyrXVnDwBwt1oueOfq887EwY7oya+fxNoAi598s0LMFU2RVlEiWZ4wP3rPnhtIBLYrVj5mpaMSgjuxc+3FA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=rocketmail.com; spf=pass smtp.mailfrom=rocketmail.com; dkim=pass (2048-bit key) header.d=rocketmail.com header.i=@rocketmail.com header.b=Ux2O67mz; arc=none smtp.client-ip=77.238.177.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=rocketmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rocketmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rocketmail.com; s=s2048; t=1730072544; bh=z8nBSKxFFHJVB9C4KSDm0bQHQ+p/cM57cnvkv4CUKnE=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject:Reply-To; b=Ux2O67mzpIwzxfzD6WyV3CH22+ahmiBt5vYapjiyhwWmYY+THzbyMiz/XJ1GK19Sj/tBodNQStTzUTQ6Oz9bhu5SgB7SCpEf9TqTw/NRk1GsPN12s8pYmjnjAI++i4Z9x61A6mwnmRotQkc7ly9yWLLAT4ZfxVpgdrSiD69pEJAIpRcDKdRZa4zCquM3FBN84xX18iyk0QlhnRPZPtVm1Wsl/nGadpR6fmMLHE8W6ju4RS54l6tWxCON7nKHg7Ny+EAaFeBIDJizZsATHVDw39VvRR2YL6EBiVN81hTrYN2R+JpoGGVUlZVv/aYIclJ1MqM3upnBnAwEd/DWWtyqVw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1730072544; bh=gxLRuGayVAMva4euPL3gga+XiaX5v68JN7ftwcLvzyb=; h=X-Sonic-MF:From:To:Subject:Date:From:Subject; b=NYL/NzBaO0Z9oGV9a/CNWL65q6RcuVArFuz9RiORcZsgBMJb3q/9KmtCd0/Ecyxa2IsRfF5mDJXh5M9ssA/6Ca3+WHM7waLuNg+EzIP0Y+UTc8384alqN8kF1/tCPI1NHuUAjg1qdinVJ0rJDym9iiyYONT9M6Ck+eaZNOaGwA3D2XqBMpVh+NpoY4oNiilKxAmjew3cO1kuE23WSNS9u2cOvTh8mFUwCM8O7KM2LFHptuOsG8opfvSpq5sEpwqUPZQXWyHyY4+uZWXY7C84M6Ot02cvFG0fpZEiyZyliy3N/Kim0CqIevhd2dGomSw3PlLyJNEV0XbfHJe7yWCezA==
X-YMail-OSG: zSdI2toVM1mxu35LhC6.SslXaWpq_i4Y5bA6oC6fYhwMFoBRteL0F4D1Jic3gJl
 i9570qQCr_h3QFDVjI6szZcXLHqUO7hVQ1dQ3nPQvS5Fddtn7D0woI.cJaShKyE57iNcrIZZ6rUD
 K4603EuVaO5X7_ptjsTJDL5pzmhSX7loYBX.OWwulWmmhY2ed58ZfXcCMtiEn9zVfej.saFRZ34z
 ufCI4lP_k0b6WIRgCOPMpJz0rnV3wSoBJx5f4VGT.gjfsJTLvyHVEoMSodAuaBRb8EqyYn9UsmOy
 JTNItyVhxKDhxE31d_9F6IkZHqh03D5PbyWPmkQO849gdzFF4KUnAPXByW6mDQ2hvD9xM5WfN4By
 mnFU00h4kVXa88yN5LbN0D91YQ0BNlnM51GS0ow6XWe0aB7oxMEiPLA1SLKyuQESrE6npI1OwKwK
 0vgZ9rwJZlx5v6.yvHpP6wMNGBNuPcs8TsYwrsc7TU3AD6YDbv0.eHKdlIqxIa2SxEmtDyEBgydO
 sFTwfcOhURlpcilIUty0ePcSD70HZ1346lDJ2N7gm_yG2gfXB.12Hs8PHLbYzbKfRMhY_F65gElm
 nydCYLpuKMbnNKu9dT_BXwmVI7qBRTJl7T2kzIgJ8tCS.Qt15wADHAavl1Mj7n1lJWkRifMhM2hz
 1.nISx0K1LYp8aClhQ5VrlC69dc1aMOCk.42WA_zWA7wMmYap_5xEdlDbuKLfBsTdpWstO7R5rmb
 HTn0WKTr_lcTqCT8vMpRJaPTAUgJTvGobNa_Sm61hy61v3panZop6I6AfPQy3DVBaJC4vH21vmLy
 O.Cl5XBRgEYtHaMlIcCQuF6i7bVv2DHX7q2k8vD5EJzMMjV0MsHtw.fELPNe56H2Q9oYf1kLUvl_
 vqgo9q4jBZOyhW9KQaNkQWJotZyhYVPqpqaORnd0gUIN.q3faRIW_BwDo8o7pYcDgmvrf_sZw7QS
 BkYUxRKPdST_Me2MDaeVpHrx9yBNSXi.ag4i2qVDrumDNv2JML9SJp5k5gmyZ24QVz_3s09b5qF0
 V8Edp097IDTde7bbWqcVgG9XpD.nYbEpVgFMP6hRVfdMg5MxIRkxjr71D613ZqQF8FH8yyUznLgy
 HoLzFnf6FblmGxZrpevf5mfKd9baS_VbchaGU9tO_cMPJeRP.GLuYO1rvz9o6Y4JHTej541SoQAg
 Pyw5nbxD7d4asETTYng4b9ek_zjyMt44O4BovYGxY6rbL4KbDx8eOHii_eO4OKlVKMpGk6wE4hBs
 SDBIZ1akJgLfQ5nmtWJlWKKCzYo25D8Sokfx.pXKBuVU3HX2.q93oqpMzvlCkutNN237QxE2byZy
 MdVKaFQYWuYDlzLxIWFlede.DlDbCidn4WbkPTnUkFwNrMcyc6l0Qxu3YRqtHGlIJ.4HtZq8j3ZO
 EfWmmIS3rnKRxBr1dQbKiIkLjIL3G1r29Zud2tEFbj.e3u8MuetFDj_Q25QOPIBDcReKtJgOBU_b
 4URhsLHRYPcH_kMYo503gljPUYixcA3ztQ8K3cPWDY1D3mJxr93K8D9f8Gsvke5dfMr23hsr9LfG
 MUUJnlg3d_aOiPQIbpOjMLHWTzntWesCs3MCJTzuZqBOzJK4UKBVcb0UjAX_8op_txYrlAOn0N2V
 ALVju6.w8OFWEMjv.ywXO3UH2kbazt2GGti9YkgnjyZz7z3WaAEnkGAxB6nZZ0dIdRtX.SWVY2qW
 TIAaLFutilnUVZY5oSWVmMH9UKMxKDiiZOoaEHRwUVUZVGhZwvr2Elpk9skbUjaLY1G_tPJ9y05g
 CgNCAHLb6wWuybz6OTrtOQ7HsGKw8cjOizGdAK7mSAzhPz.g4pk_VzVm7yVnYIaM.jd8fhXPGyGu
 yQ2VtNzrtZypNQdOzYV4JJFkzvVn7st_0UkaJLIRJfEohqPdjq_Yr_ep2nMApjI_JWsilLzKJFAX
 kURRFkeEIUEdOp.YCa65u_PXydtkGzj7XeGvsSYYlkV1_hruhhT_e_AuXKl3bK89eBFkRcIfAPAd
 SCNoLumXHJB5Emc7iUrEi_gUzakg2Ds_voRAoPxB0B4X2TrzlfyQZTK0bjAFdets9Za31EyroNfw
 5N0pW6qDsThBQyA4SKYq.Uk_epA9YurgiPoNPMzC2NP8kymA9mDLz11EUFGSo9OBtIqfVwxgeyun
 R7lrKawHm32vzMWFuOgc4NsrOwoC5sD83BbsyYfUj3SBcETFeMpuz57aicImbODgLMD74jRgcVX1
 35vlL887eoJnBcIGFzUDLG3LGGGp82yOfJRAMdSUKriPrReCN2gv0US_jNXAExYzC9oR0zRymRkE
 11H.a8xW6upnsSz4lzPzpf8E42jYr4PQmouScz0S26YFsMS_2wg19PDQ-
X-Sonic-MF: <jahau@rocketmail.com>
X-Sonic-ID: c4f486ca-a70b-41f1-9e63-fa74cc22709d
Received: from sonic.gate.mail.ne1.yahoo.com by sonic305.consmr.mail.ir2.yahoo.com with HTTP; Sun, 27 Oct 2024 23:42:24 +0000
Received: by hermes--production-ir2-c694d79d9-qzm27 (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID fc681596c483b48011d8a98a0d7203e6;
          Sun, 27 Oct 2024 23:42:23 +0000 (UTC)
From: Jakob Hauser <jahau@rocketmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Thierry Reding <thierry.reding@gmail.com>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Jakob Hauser <jahau@rocketmail.com>
Subject: [PATCH v4 5/5] drm/panel: samsung-s6e88a0-ams427ap24: Add flip option
Date: Mon, 28 Oct 2024 00:42:06 +0100
Message-Id: <1491f275e9956b2da1f1e2580abd54f4e459c7d2.1730070570.git.jahau@rocketmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1730070570.git.jahau@rocketmail.com>
References: <cover.1730070570.git.jahau@rocketmail.com>
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
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v4:
 - Added a comment to the mipi_dsi_dcs_write_seq_multi() line, according to the
   other lines before and after.
---
 drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams427ap24.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams427ap24.c b/drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams427ap24.c
index 4b8aa088f445..e92e95158d1f 100644
--- a/drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams427ap24.c
+++ b/drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams427ap24.c
@@ -38,6 +38,7 @@ struct s6e88a0_ams427ap24 {
 	struct mipi_dsi_device *dsi;
 	struct regulator_bulk_data *supplies;
 	struct gpio_desc *reset_gpio;
+	bool flip_horizontal;
 };
 
 static const struct regulator_bulk_data s6e88a0_ams427ap24_supplies[] = {
@@ -550,6 +551,10 @@ static int s6e88a0_ams427ap24_on(struct s6e88a0_ams427ap24 *ctx)
 	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xcc, 0x4c); // pixel clock divider pol.
 	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf2, 0x03, 0x0d); // unknown
 	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf1, 0xa5, 0xa5); // level 3 key off
+
+	if (ctx->flip_horizontal)
+		mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xcb, 0x0e); // flip display
+
 	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0xa5, 0xa5); // level 1 key off
 	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xfc, 0xa5, 0xa5); // level 2 key off
 
@@ -710,6 +715,8 @@ static int s6e88a0_ams427ap24_probe(struct mipi_dsi_device *dsi)
 		       DRM_MODE_CONNECTOR_DSI);
 	ctx->panel.prepare_prev_first = true;
 
+	ctx->flip_horizontal = device_property_read_bool(dev, "flip-horizontal");
+
 	ret = s6e88a0_ams427ap24_register_backlight(ctx);
 	if (ret < 0)
 		return ret;
-- 
2.39.5


