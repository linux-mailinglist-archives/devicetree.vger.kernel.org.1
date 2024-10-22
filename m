Return-Path: <devicetree+bounces-114420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2E39AB925
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 23:55:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CC4ABB22E65
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 21:55:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1AB71D041B;
	Tue, 22 Oct 2024 21:54:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rocketmail.com header.i=@rocketmail.com header.b="jey+nl/O"
X-Original-To: devicetree@vger.kernel.org
Received: from sonic302-21.consmr.mail.ir2.yahoo.com (sonic302-21.consmr.mail.ir2.yahoo.com [87.248.110.84])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF26E1CFEDF
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 21:54:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=87.248.110.84
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729634048; cv=none; b=pxkTVqGsZb3Hs3Zt7p2HPwq3zJsdssrnPa2Uwg3m30L3ID56CV2RJqYPOhAx/ipBIVs3P3vhgvVobDuenXhAbf/YogG0RBYbVPxvj2Z0CuogJlBRiQsKQke8l/Yo4CTkU4q9i3ZAxO1ijsGoZxBKVG9yTnsiVBTe8EbQDs9Lf4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729634048; c=relaxed/simple;
	bh=zOMyIwvrjWngB9XpgRClzT6LO2z3ccv2zShnUyLoYHQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ocj9Ytb3YKfUw4Qx4KXMYJguo8lLyj7rFaKPsDcG+krM87u4i9YoXffs215+R+H8CWiP3K65bISKY5QOymgau+CIfIu1Y6AjsRezrPaA0IWIq7ZI7/2Cc91s1sbhwCVzhUehn0/EjFdDgKvbgy1Jw1xvhnspm6Zg6YGVqQ92KVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=rocketmail.com; spf=pass smtp.mailfrom=rocketmail.com; dkim=pass (2048-bit key) header.d=rocketmail.com header.i=@rocketmail.com header.b=jey+nl/O; arc=none smtp.client-ip=87.248.110.84
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=rocketmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rocketmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rocketmail.com; s=s2048; t=1729634045; bh=vFxp6V7ftU2GOHcy5DZ1sostkzSaRPaYmJbs4yP+a9A=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject:Reply-To; b=jey+nl/Oje7fuGpao5csbtVJfd/V33tGEvpFTYkQ0A9DG87HXqwMWvsvdV0FUKdr60NkOQ3qWR25veONjJ7DmjfvDcjh+ODfJwt7c9LX0GDCNS+6tRbqdMbFHTLHpqv29CZxEru3vHpBKimZjBCvL+5nwHpnB+5cF+2Gzb/87QpnRekzz3rPtCqaJpC9bI2oL9C4WMf6A0K8DWZ4ycVQWSN+61r13kXzb0P1l0bupflIf1dqrqDO5odln103d1MB/4+TZkJWU9orpoAW/k3rry2nszvIZCxDT0CGw5h5s60BfPO98QPPR9k01itC7mjvyl+NHKpTTHQpIBQ7ahAvFw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1729634045; bh=5QPS8pBV5Knf7Hf1N0NZiZZwrzz7rqSWaTMfcWNhc1k=; h=X-Sonic-MF:From:To:Subject:Date:From:Subject; b=neMKn4nvoWqbC+fOdWMWZ22Q1AVB27Hq/kYZgbJE79cg3gPjW1aBCON2b0z10DRzrKTRSWXMj1bNg517+Vuzh6jT622PPaNO+45hCYgynShpEqc6Dh8VmeNEMlYlunM75mYXTCU+4xxiNmOF+E1CWSF6zGRj7fxbheM837UPznHKLxFfNQQ0wJpgrI9Zc8bXBrrVBSNEhTepFDN/8b+kdb7oDGMuClI0Zb8II0VXIVKliwuWFsDli4F9JTR2ZWHNMgXX72yjt28jj7KmbgUPUSQmMjrb8JXaOfkXkIaHxKkMYfunFJWPpDmd2BNOQOZV2UxkjTcx0tEsY00Y/ni22g==
X-YMail-OSG: 8pe5oZ0VM1nIayulXc.WxoS8hNfG8a5yeNkaMZqkeSv1QKc8lnqo0PL8ik4tr9b
 R00Ds5cp2pQJ3_.IuCJh0eEuOfc8QDZ1DJu_ZxoVqaTISELkTiObhNPk2zRp3vbCih3SEKtnCeOC
 JDRokLy0csDePD1hGrANHw3IFLjyjxY3J4JrRCiwKu..zn1yezgAxtLMDIiD_FZdZY4TTWzJBnqp
 dS411XdAU5X4quvj2tosr7whkHfY2TR4JuW6LzAa45KhRRqp7CZ7vngbftbtDPAunYju9.MjTvCL
 AgkPVOaWvr3BiuI0OHZQvAmDNhwW.Dy.GTgBhzFCnswRjMkkb6UfzZMG0r79v1BB2cpVm8xQGHPZ
 K9uyXw2rN_qKhcakbdl6dkNjRpWXo.FAr.WQeMuSy.SJScFwVVeXazIxIyjWaXPS91elnDP2JTxf
 kFRnB8fW_ZtmcJ5Q_LHN0h2DKRmIvcDnlRu0PjN1mFLMZeEtY5qclI9zT93W7.eDlsTbn1qHVzmr
 OlIQ4IMgjDexRBjFHu2E1MWz8WERe4sSjK4U9CLpo5SisjkBDjnye0pRGRbyxZuHkuVmHHh1AovD
 yIZ_2d4TdNNSjiLxHt3MzuLkEN49ykVqfMqZvWdKbZsdw_WylsrLRVH1wpzK7B_yyPhBfCEwhQJW
 xn9BSLE8U9ZRqn78weHNbBgnmprCY4HOqZrlXw71RL1qinrjRJ0mgDNxs56WPB2BDDYEcJk3ySx4
 xaFLeDvKm1IdNl8UoTy1.Wx1FZfKpcAT9dl29n1MLqzmOoSTy3JS7AzyOoCnPa9Lc7jqPMqYT4hd
 J28Yf.YSM5YeQeM0fBjGSDSgiSU6dAzGSz36wYiqQSceyQd4HCGKbAT0YosrD7v0fEgfvacwmMoZ
 mifDBsI83tnBioflkf6GOp_RRuc3asoDKpZI5FxxOOFBDhKYaH2L4Y_96XRp_Znd9hcynnkmETNf
 Radpn0KKzGBO8nSGuiThDPxbSy_.cqF70pCO7pq7vgk9.qjYaMIozkJNILk2IeUU89U27CeHXt44
 u1i_zEqselvVrVJ5oLEtaJBZ17jqU9ic8tuua4IQg_lpw3t29iFhekd7n1FshAYrL0Kym9RatB.F
 YdjVoFoHBj6zD3lD5Y3jwS7dE1Y1W9N2.dkjh8lx_jVN_2UunVSzEJp0HGP97xMOfQa_I5gIDIpi
 gKaFDEG7BQO.HSkGe6JbWfL_CHCiPf0U2WtKpyiQyP.w_PDSc2TrNUxX_ZqbvPh5u00bf8HEKHcN
 bkmC6umeHEaXUhfllGgwRzlxXzvpFk0FGOB1bkpfVg51HMJBVmvpsr6bttGn8aixMd3QU3_OitS2
 tPMgGrzC0dWg1GJF9e7SNNS1oFUZbI8ypPWi6e4mzZbTX.DcH5gmQI66sW2jmAEW0hJy4Fh.vrgk
 _AWZRldnxbWItCXiRDUpYtLsTCJt0kQIN2kweUgOnzP1kE6ou6EymE1HRTn4Vj3b5faWEcB2HJ1v
 Bssew5BnSNd3Xus1vjzLNSQFjoWJz8QPqCczysrCW9qVXuHbNdsWNJ8CLhWDfXhlnKL8wB74UOs3
 exZAf8U9YM1Qptam0WD3RKbi.jEqo9qfZxpccDrT7_B9rvGwsYSVe6FABAaFDloIbzQ9OBoWipCo
 2V31TRs0J8yVNPrdYw5_Q57dPqPwWbcy0dnFEiXA2t0kxl5EewFp_udiXZ0Au4t.1LXToXSwkj4o
 YRwm_7MRYe19JpZZ0uf37GXKyu6HUQPf87XIucRlsKhkqjUvFah8jTCOkyV35L9HK3nQ1dr7m5Wk
 MYygUhFmF__oeXpJ4mgTJPhr7qvFVeKUbAn0gfxW49tetIkrTGj8iXe_zkOymAQzcEK4oWRce3PV
 1a2OF5ppEN_aUfwBLtMx02ie.tHSAOu_DYDT.LpzeWfHCL.NJmj6LeqJe2fit0HdARKuEZByhn2O
 tC7UamdJzQhN0PlutSe8ln2SfJ.NWnYSbkkMQU5TU.e48Uncb7J_KM8W.EesvBtPkNPkTjqdW8JF
 VmbqY77Bq0pJjWQ2GNxl2aRrxO84TMuFoyYEw9zPWpfYSGA4nUAPrKwp2.rmZzV971uomhACOn9i
 SjrUbirSY9ryDbmguD4.WYH4wNL5kLGHPsCOF7SYFiaYpd6n_DZIJW5IN9Xo5v4xnD6Dd9eYjaE5
 5i_tlx_pGzN18EIvewWslysQkwkI1aBu.IlNvfGXSzBAzmGtmRKPJ822IcbTBmtAgX.GC4AjmqWc
 idvB4eeqmNtBhjQSPaGnVbuYTOaHLrDML6.FIy2Qzk0htBk8FXzbcnvogDMPhlEf3ZgF5rJ1Y4.1
 M9aM.NX6FZVg17L9dcuIB8jxew6tpXpkhgLg6ttMlqFNyL.QK9V2foA--
X-Sonic-MF: <jahau@rocketmail.com>
X-Sonic-ID: 395ddffb-acb6-449b-9b75-1ae2036c4cac
Received: from sonic.gate.mail.ne1.yahoo.com by sonic302.consmr.mail.ir2.yahoo.com with HTTP; Tue, 22 Oct 2024 21:54:05 +0000
Received: by hermes--production-ir2-c694d79d9-qjs6q (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID 00a5d0a4af66107c7c1614b6d685cac8;
          Tue, 22 Oct 2024 21:33:48 +0000 (UTC)
From: Jakob Hauser <jahau@rocketmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Thierry Reding <thierry.reding@gmail.com>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Jakob Hauser <jahau@rocketmail.com>
Subject: [PATCH v2 5/5] drm/panel: samsung-s6e88a0-ams427ap24: Add flip option
Date: Tue, 22 Oct 2024 23:33:39 +0200
Message-Id: <57a8498440695218d095cb037a5dc818d6fe7355.1729630039.git.jahau@rocketmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1729630039.git.jahau@rocketmail.com>
References: <cover.1729630039.git.jahau@rocketmail.com>
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
index 6e02b881434d..8372d0d307c8 100644
--- a/drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams427ap24.c
+++ b/drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams427ap24.c
@@ -32,6 +32,7 @@ struct s6e88a0_ams427ap24 {
 	struct mipi_dsi_device *dsi;
 	struct regulator_bulk_data *supplies;
 	struct gpio_desc *reset_gpio;
+	bool flip_horizontal;
 };
 
 const struct regulator_bulk_data s6e88a0_ams427ap24_supplies[] = {
@@ -538,6 +539,10 @@ static int s6e88a0_ams427ap24_on(struct s6e88a0_ams427ap24 *ctx)
 	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xcc, 0x4c);
 	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf2, 0x03, 0x0d);
 	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf1, 0xa5, 0xa5);
+
+	if (ctx->flip_horizontal)
+		mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xcb, 0x0e);
+
 	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0xa5, 0xa5);
 	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xfc, 0xa5, 0xa5);
 
@@ -672,6 +677,15 @@ static int s6e88a0_ams427ap24_register_backlight(struct s6e88a0_ams427ap24 *ctx)
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
@@ -706,6 +720,8 @@ static int s6e88a0_ams427ap24_probe(struct mipi_dsi_device *dsi)
 		       DRM_MODE_CONNECTOR_DSI);
 	ctx->panel.prepare_prev_first = true;
 
+	s6e88a0_ams427ap24_parse_dt(ctx);
+
 	ret = s6e88a0_ams427ap24_register_backlight(ctx);
 	if (ret < 0)
 		return ret;
-- 
2.39.5


