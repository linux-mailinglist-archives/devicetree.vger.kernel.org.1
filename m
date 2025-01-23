Return-Path: <devicetree+bounces-140656-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A75A1ACAE
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 23:29:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C02E73A4AAA
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 22:29:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F0AE1D4610;
	Thu, 23 Jan 2025 22:29:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="djaz6w/p"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DA571D357A;
	Thu, 23 Jan 2025 22:29:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737671356; cv=none; b=OnpICulk+HwPK465+FhZT+p6Dd7l0ktYwg6fg7hl+mpxO+b0zK5reb4M+iseB7nvaRSR2JrP2WtgEIdS5Gxy7U1jNzgVZH8bJnPYhasbUTNgLGUfanGCDqlVIRqm7dXsXbR+dOj+3HQW6SH1yvQDmR16L23JmJJfosl00Dp/FTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737671356; c=relaxed/simple;
	bh=twC0RMrM8bUfl7mX7Z2YIjp6R/TmSBMPgArJFrmLLkw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=arTnyXWDBL533RN5438ZnXVs2r8g/q9raUaJ//uk0LVdZRAqUFtVqwZLDYmPXg8JCkQA2+Jf+042PCUncsVmO9cTB//tqjEOq4LO7OKBVdcuRH66YG3/PKduBOUWpoPiM8PnRUybVjFkXCUJxMOVVWHAUlNfz6VTQJk0S6Tb+sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=djaz6w/p; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1737671351;
	bh=twC0RMrM8bUfl7mX7Z2YIjp6R/TmSBMPgArJFrmLLkw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=djaz6w/phklRgk6Qd+ilVU98bDI+7+VYP8DC7hpWWmyvwwumtxVsNFpamhTwPykoo
	 D8p3ejgSwmndCTeMBDAmvx2jHdkESIM1mL1cknlheol5T1CYJ5VmlYLfjEE430kKUH
	 CisOPI/7JqTbGvr8y8oXib1F6XJzQ/1tW3Mrwh7uiJowqWGJov/YImFsRcm72zmboV
	 bYKXKDHAH1mrpCz9m7HKrir/McejUnd3Mtxjx9jIJkymtSMh+DcEXbo1TuehXSw/Cl
	 UB/vB4sOFX55jl2XH9riywfe/8r4qWJHFEsUPGhbFbbMA+hDnoq+qG8FP+aViYd78g
	 sZZKNE4yMauvg==
Received: from earth.mtl.collabora.ca (mtl.collabora.ca [66.171.169.34])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C68B317E0EAB;
	Thu, 23 Jan 2025 23:29:07 +0100 (CET)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Alexey Charkov <alchark@gmail.com>,
	Jianfeng Liu <liujianfeng1994@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Johan Jonker <jbx6244@gmail.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Sugar Zhang <sugar.zhang@rock-chips.com>,
	Algea Cao <algea.cao@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	kernel@collabora.com
Subject: [PATCH v2 1/2] drm/bridge: synopsys: Add audio support for dw-hdmi-qp
Date: Thu, 23 Jan 2025 17:28:06 -0500
Message-ID: <20250123222850.223255-2-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250123222850.223255-1-detlev.casanova@collabora.com>
References: <20250123222850.223255-1-detlev.casanova@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Sugar Zhang <sugar.zhang@rock-chips.com>

Register the dw-hdmi-qp bridge driver as an HDMI audio codec.

The register values computation functions (for n) are based on the
downstream driver, as well as the register writing functions.

The driver uses the generic HDMI Codec framework in order to implement
the HDMI audio support.

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c | 424 +++++++++++++++++++
 1 file changed, 424 insertions(+)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
index b281cabfe992e..f79d38de4c6c4 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
@@ -36,6 +36,66 @@
 
 #define SCRAMB_POLL_DELAY_MS	3000
 
+/*
+ * Unless otherwise noted, entries in this table are 100% optimization.
+ * Values can be obtained from hdmi_compute_n() but that function is
+ * slow so we pre-compute values we expect to see.
+ *
+ * All 32k and 48k values are expected to be the same (due to the way
+ * the math works) for any rate that's an exact kHz.
+ */
+static const struct dw_hdmi_audio_tmds_n {
+	unsigned long tmds;
+	unsigned int n_32k;
+	unsigned int n_44k1;
+	unsigned int n_48k;
+} common_tmds_n_table[] = {
+	{ .tmds = 25175000, .n_32k = 4096, .n_44k1 = 12854, .n_48k = 6144, },
+	{ .tmds = 25200000, .n_32k = 4096, .n_44k1 = 5656, .n_48k = 6144, },
+	{ .tmds = 27000000, .n_32k = 4096, .n_44k1 = 5488, .n_48k = 6144, },
+	{ .tmds = 28320000, .n_32k = 4096, .n_44k1 = 5586, .n_48k = 6144, },
+	{ .tmds = 30240000, .n_32k = 4096, .n_44k1 = 5642, .n_48k = 6144, },
+	{ .tmds = 31500000, .n_32k = 4096, .n_44k1 = 5600, .n_48k = 6144, },
+	{ .tmds = 32000000, .n_32k = 4096, .n_44k1 = 5733, .n_48k = 6144, },
+	{ .tmds = 33750000, .n_32k = 4096, .n_44k1 = 6272, .n_48k = 6144, },
+	{ .tmds = 36000000, .n_32k = 4096, .n_44k1 = 5684, .n_48k = 6144, },
+	{ .tmds = 40000000, .n_32k = 4096, .n_44k1 = 5733, .n_48k = 6144, },
+	{ .tmds = 49500000, .n_32k = 4096, .n_44k1 = 5488, .n_48k = 6144, },
+	{ .tmds = 50000000, .n_32k = 4096, .n_44k1 = 5292, .n_48k = 6144, },
+	{ .tmds = 54000000, .n_32k = 4096, .n_44k1 = 5684, .n_48k = 6144, },
+	{ .tmds = 65000000, .n_32k = 4096, .n_44k1 = 7056, .n_48k = 6144, },
+	{ .tmds = 68250000, .n_32k = 4096, .n_44k1 = 5376, .n_48k = 6144, },
+	{ .tmds = 71000000, .n_32k = 4096, .n_44k1 = 7056, .n_48k = 6144, },
+	{ .tmds = 72000000, .n_32k = 4096, .n_44k1 = 5635, .n_48k = 6144, },
+	{ .tmds = 73250000, .n_32k = 4096, .n_44k1 = 14112, .n_48k = 6144, },
+	{ .tmds = 74250000, .n_32k = 4096, .n_44k1 = 6272, .n_48k = 6144, },
+	{ .tmds = 75000000, .n_32k = 4096, .n_44k1 = 5880, .n_48k = 6144, },
+	{ .tmds = 78750000, .n_32k = 4096, .n_44k1 = 5600, .n_48k = 6144, },
+	{ .tmds = 78800000, .n_32k = 4096, .n_44k1 = 5292, .n_48k = 6144, },
+	{ .tmds = 79500000, .n_32k = 4096, .n_44k1 = 4704, .n_48k = 6144, },
+	{ .tmds = 83500000, .n_32k = 4096, .n_44k1 = 7056, .n_48k = 6144, },
+	{ .tmds = 85500000, .n_32k = 4096, .n_44k1 = 5488, .n_48k = 6144, },
+	{ .tmds = 88750000, .n_32k = 4096, .n_44k1 = 14112, .n_48k = 6144, },
+	{ .tmds = 97750000, .n_32k = 4096, .n_44k1 = 14112, .n_48k = 6144, },
+	{ .tmds = 101000000, .n_32k = 4096, .n_44k1 = 7056, .n_48k = 6144, },
+	{ .tmds = 106500000, .n_32k = 4096, .n_44k1 = 4704, .n_48k = 6144, },
+	{ .tmds = 108000000, .n_32k = 4096, .n_44k1 = 5684, .n_48k = 6144, },
+	{ .tmds = 115500000, .n_32k = 4096, .n_44k1 = 5712, .n_48k = 6144, },
+	{ .tmds = 119000000, .n_32k = 4096, .n_44k1 = 5544, .n_48k = 6144, },
+	{ .tmds = 135000000, .n_32k = 4096, .n_44k1 = 5488, .n_48k = 6144, },
+	{ .tmds = 146250000, .n_32k = 4096, .n_44k1 = 6272, .n_48k = 6144, },
+	{ .tmds = 148500000, .n_32k = 4096, .n_44k1 = 5488, .n_48k = 6144, },
+	{ .tmds = 154000000, .n_32k = 4096, .n_44k1 = 5544, .n_48k = 6144, },
+	{ .tmds = 162000000, .n_32k = 4096, .n_44k1 = 5684, .n_48k = 6144, },
+
+	/* For 297 MHz+ HDMI spec have some other rule for setting N */
+	{ .tmds = 297000000, .n_32k = 3073, .n_44k1 = 4704, .n_48k = 5120, },
+	{ .tmds = 594000000, .n_32k = 3073, .n_44k1 = 9408, .n_48k = 10240, },
+
+	/* End of table */
+	{ .tmds = 0,         .n_32k = 0,    .n_44k1 = 0,    .n_48k = 0, },
+};
+
 struct dw_hdmi_qp_i2c {
 	struct i2c_adapter	adap;
 
@@ -83,6 +143,326 @@ static void dw_hdmi_qp_mod(struct dw_hdmi_qp *hdmi, unsigned int data,
 	regmap_update_bits(hdmi->regm, reg, mask, data);
 }
 
+static struct dw_hdmi_qp *dw_hdmi_qp_from_bridge(struct drm_bridge *bridge)
+{
+	struct dw_hdmi_qp *hdmi = container_of(bridge, struct dw_hdmi_qp, bridge);
+
+	return hdmi;
+}
+
+static void hdmi_set_cts_n(struct dw_hdmi_qp *hdmi, unsigned int cts,
+			   unsigned int n)
+{
+	/* Set N */
+	dw_hdmi_qp_mod(hdmi, n, AUDPKT_ACR_N_VALUE, AUDPKT_ACR_CONTROL0);
+
+	/* Set CTS */
+	if (cts)
+		dw_hdmi_qp_mod(hdmi, AUDPKT_ACR_CTS_OVR_EN, AUDPKT_ACR_CTS_OVR_EN_MSK,
+			  AUDPKT_ACR_CONTROL1);
+	else
+		dw_hdmi_qp_mod(hdmi, 0, AUDPKT_ACR_CTS_OVR_EN_MSK,
+			  AUDPKT_ACR_CONTROL1);
+
+	dw_hdmi_qp_mod(hdmi, AUDPKT_ACR_CTS_OVR_VAL(cts), AUDPKT_ACR_CTS_OVR_VAL_MSK,
+		  AUDPKT_ACR_CONTROL1);
+}
+
+static int hdmi_match_tmds_n_table(struct dw_hdmi_qp *hdmi,
+				   unsigned long pixel_clk,
+				   unsigned long freq)
+{
+	const struct dw_hdmi_audio_tmds_n *tmds_n = NULL;
+	int i;
+
+	for (i = 0; common_tmds_n_table[i].tmds != 0; i++) {
+		if (pixel_clk == common_tmds_n_table[i].tmds) {
+			tmds_n = &common_tmds_n_table[i];
+			break;
+		}
+	}
+
+	if (tmds_n == NULL)
+		return -ENOENT;
+
+	switch (freq) {
+	case 32000:
+		return tmds_n->n_32k;
+	case 44100:
+	case 88200:
+	case 176400:
+		return (freq / 44100) * tmds_n->n_44k1;
+	case 48000:
+	case 96000:
+	case 192000:
+		return (freq / 48000) * tmds_n->n_48k;
+	default:
+		return -ENOENT;
+	}
+}
+
+static u64 hdmi_audio_math_diff(unsigned int freq, unsigned int n,
+				unsigned int pixel_clk)
+{
+	u64 final, diff;
+	u64 cts;
+
+	final = (u64)pixel_clk * n;
+
+	cts = final;
+	do_div(cts, 128 * freq);
+
+	diff = final - (u64)cts * (128 * freq);
+
+	return diff;
+}
+
+static unsigned int hdmi_compute_n(struct dw_hdmi_qp *hdmi,
+				   unsigned long pixel_clk,
+				   unsigned long freq)
+{
+	unsigned int min_n = DIV_ROUND_UP((128 * freq), 1500);
+	unsigned int max_n = (128 * freq) / 300;
+	unsigned int ideal_n = (128 * freq) / 1000;
+	unsigned int best_n_distance = ideal_n;
+	unsigned int best_n = 0;
+	u64 best_diff = U64_MAX;
+	int n;
+
+	/* If the ideal N could satisfy the audio math, then just take it */
+	if (hdmi_audio_math_diff(freq, ideal_n, pixel_clk) == 0)
+		return ideal_n;
+
+	for (n = min_n; n <= max_n; n++) {
+		u64 diff = hdmi_audio_math_diff(freq, n, pixel_clk);
+
+		if (diff < best_diff || (diff == best_diff &&
+		    abs(n - ideal_n) < best_n_distance)) {
+			best_n = n;
+			best_diff = diff;
+			best_n_distance = abs(best_n - ideal_n);
+		}
+
+		/*
+		 * The best N already satisfy the audio math, and also be
+		 * the closest value to ideal N, so just cut the loop.
+		 */
+		if ((best_diff == 0) && (abs(n - ideal_n) > best_n_distance))
+			break;
+	}
+
+	return best_n;
+}
+
+static unsigned int hdmi_find_n(struct dw_hdmi_qp *hdmi, unsigned long pixel_clk,
+				unsigned long sample_rate)
+{
+	int n = hdmi_match_tmds_n_table(hdmi, pixel_clk, sample_rate);
+
+	if (n > 0)
+		return n;
+
+	dev_warn(hdmi->dev, "Rate %lu missing; compute N dynamically\n",
+		 pixel_clk);
+
+	return hdmi_compute_n(hdmi, pixel_clk, sample_rate);
+}
+
+static void dw_hdmi_qp_set_audio_interface(struct dw_hdmi_qp *hdmi,
+				    struct hdmi_codec_daifmt *fmt,
+				    struct hdmi_codec_params *hparms)
+{
+	u32 conf0 = 0;
+
+	/* Reset the audio data path of the AVP */
+	dw_hdmi_qp_write(hdmi, AVP_DATAPATH_PACKET_AUDIO_SWINIT_P, GLOBAL_SWRESET_REQUEST);
+
+	/* Disable AUDS, ACR, AUDI */
+	dw_hdmi_qp_mod(hdmi, 0,
+		  PKTSCHED_ACR_TX_EN | PKTSCHED_AUDS_TX_EN | PKTSCHED_AUDI_TX_EN,
+		  PKTSCHED_PKT_EN);
+
+	/* Clear the audio FIFO */
+	dw_hdmi_qp_write(hdmi, AUDIO_FIFO_CLR_P, AUDIO_INTERFACE_CONTROL0);
+
+	/* Select I2S interface as the audio source */
+	dw_hdmi_qp_mod(hdmi, AUD_IF_I2S, AUD_IF_SEL_MSK, AUDIO_INTERFACE_CONFIG0);
+
+	/* Enable the active i2s lanes */
+	switch (hparms->channels) {
+	case 7 ... 8:
+		conf0 |= I2S_LINES_EN(3);
+		fallthrough;
+	case 5 ... 6:
+		conf0 |= I2S_LINES_EN(2);
+		fallthrough;
+	case 3 ... 4:
+		conf0 |= I2S_LINES_EN(1);
+		fallthrough;
+	default:
+		conf0 |= I2S_LINES_EN(0);
+		break;
+	}
+
+	dw_hdmi_qp_mod(hdmi, conf0, I2S_LINES_EN_MSK, AUDIO_INTERFACE_CONFIG0);
+
+	/*
+	 * Enable bpcuv generated internally for L-PCM, or received
+	 * from stream for NLPCM/HBR.
+	 */
+	switch (fmt->bit_fmt) {
+	case SNDRV_PCM_FORMAT_IEC958_SUBFRAME_LE:
+		conf0 = (hparms->channels == 8) ? AUD_HBR : AUD_ASP;
+		conf0 |= I2S_BPCUV_RCV_EN;
+		break;
+	default:
+		conf0 = AUD_ASP | I2S_BPCUV_RCV_DIS;
+		break;
+	}
+
+	dw_hdmi_qp_mod(hdmi, conf0, I2S_BPCUV_RCV_MSK | AUD_FORMAT_MSK,
+		  AUDIO_INTERFACE_CONFIG0);
+
+	/* Enable audio FIFO auto clear when overflow */
+	dw_hdmi_qp_mod(hdmi, AUD_FIFO_INIT_ON_OVF_EN, AUD_FIFO_INIT_ON_OVF_MSK,
+		  AUDIO_INTERFACE_CONFIG0);
+}
+
+/*
+ * When transmitting IEC60958 linear PCM audio, these registers allow to
+ * configure the channel status information of all the channel status
+ * bits in the IEC60958 frame. For the moment this configuration is only
+ * used when the I2S audio interface, General Purpose Audio (GPA),
+ * or AHB audio DMA (AHBAUDDMA) interface is active
+ * (for S/PDIF interface this information comes from the stream).
+ */
+static void dw_hdmi_qp_set_channel_status(struct dw_hdmi_qp *hdmi,
+				   u8 *channel_status, bool ref2stream)
+{
+	/*
+	 * AUDPKT_CHSTATUS_OVR0: { RSV, RSV, CS1, CS0 }
+	 * AUDPKT_CHSTATUS_OVR1: { CS6, CS5, CS4, CS3 }
+	 *
+	 *      |  7  |  6  |  5  |  4  |  3  |  2  |  1  |  0  |
+	 * CS0: |   Mode    |        d        |  c  |  b  |  a  |
+	 * CS1: |               Category Code                   |
+	 * CS2: |    Channel Number     |     Source Number     |
+	 * CS3: |    Clock Accuracy     |     Sample Freq       |
+	 * CS4: |    Ori Sample Freq    |     Word Length       |
+	 * CS5: |                                   |   CGMS-A  |
+	 * CS6~CS23: Reserved
+	 *
+	 * a: use of channel status block
+	 * b: linear PCM identification: 0 for lpcm, 1 for nlpcm
+	 * c: copyright information
+	 * d: additional format information
+	 */
+
+	if (ref2stream)
+		channel_status[0] |= IEC958_AES0_NONAUDIO;
+
+	if ((dw_hdmi_qp_read(hdmi, AUDIO_INTERFACE_CONFIG0) & GENMASK(25, 24)) == AUD_HBR) {
+		/* fixup cs for HBR */
+		channel_status[3] = (channel_status[3] & 0xf0) | IEC958_AES3_CON_FS_768000;
+		channel_status[4] = (channel_status[4] & 0x0f) | IEC958_AES4_CON_ORIGFS_NOTID;
+	}
+
+	dw_hdmi_qp_write(hdmi, channel_status[0] | (channel_status[1] << 8),
+		    AUDPKT_CHSTATUS_OVR0);
+
+	regmap_bulk_write(hdmi->regm, AUDPKT_CHSTATUS_OVR1, &channel_status[3], 1);
+
+	if (ref2stream)
+		dw_hdmi_qp_mod(hdmi, 0,
+			  AUDPKT_PBIT_FORCE_EN_MASK | AUDPKT_CHSTATUS_OVR_EN_MASK,
+			  AUDPKT_CONTROL0);
+	else
+		dw_hdmi_qp_mod(hdmi, AUDPKT_PBIT_FORCE_EN | AUDPKT_CHSTATUS_OVR_EN,
+			  AUDPKT_PBIT_FORCE_EN_MASK | AUDPKT_CHSTATUS_OVR_EN_MASK,
+			  AUDPKT_CONTROL0);
+}
+
+static void dw_hdmi_qp_set_sample_rate(struct dw_hdmi_qp *hdmi, unsigned long long tmds_char_rate,
+				       unsigned int sample_rate)
+{
+	unsigned int n = 0, cts = 0;
+
+	n = hdmi_find_n(hdmi, tmds_char_rate, sample_rate);
+	hdmi_set_cts_n(hdmi, cts, n);
+}
+
+static int dw_hdmi_qp_audio_enable(struct drm_connector *connector,
+			    struct drm_bridge *bridge)
+{
+	struct dw_hdmi_qp *hdmi = dw_hdmi_qp_from_bridge(bridge);
+
+	if (connector->status == connector_status_connected)
+		dw_hdmi_qp_mod(hdmi, 0, AVP_DATAPATH_PACKET_AUDIO_SWDISABLE, GLOBAL_SWDISABLE);
+
+	return 0;
+}
+
+static int dw_hdmi_qp_audio_prepare(struct drm_connector *connector,
+			     struct drm_bridge *bridge,
+			     struct hdmi_codec_daifmt *fmt,
+			     struct hdmi_codec_params *hparms)
+{
+	struct dw_hdmi_qp *hdmi = dw_hdmi_qp_from_bridge(bridge);
+	struct drm_connector_state *conn_state =
+		drm_atomic_helper_connector_duplicate_state(connector);
+	bool ref2stream = false;
+	unsigned long long tmds_char_rate = conn_state->hdmi.tmds_char_rate;
+
+	drm_atomic_helper_connector_destroy_state(connector, conn_state);
+
+	if (connector->status != connector_status_connected) {
+		dev_dbg(hdmi->dev, "connector status is not connected\n");
+		return 0;
+	}
+
+	if (fmt->bit_clk_provider | fmt->frame_clk_provider) {
+		dev_err(hdmi->dev, "unsupported clock settings\n");
+		return -EINVAL;
+	}
+
+	if (fmt->bit_fmt == SNDRV_PCM_FORMAT_IEC958_SUBFRAME_LE)
+		ref2stream = true;
+
+	dw_hdmi_qp_set_audio_interface(hdmi, fmt, hparms);
+	dw_hdmi_qp_set_sample_rate(hdmi, tmds_char_rate, hparms->sample_rate);
+	dw_hdmi_qp_set_channel_status(hdmi, hparms->iec.status, ref2stream);
+	drm_atomic_helper_connector_hdmi_update_audio_infoframe(connector, &hparms->cea);
+
+	return 0;
+}
+
+static void dw_hdmi_qp_audio_disable(struct drm_connector *connector,
+			      struct drm_bridge *bridge)
+{
+	struct dw_hdmi_qp *hdmi = container_of(bridge, struct dw_hdmi_qp, bridge);
+
+	if (connector->status != connector_status_connected) {
+		dev_dbg(hdmi->dev, "connector status is not connected\n");
+		return;
+	}
+
+	/*
+	 * Keep ACR, AUDI, AUDS packet always on to make SINK device
+	 * active for better compatibility and user experience.
+	 *
+	 * This also fix POP sound on some SINK devices which wakeup
+	 * from suspend to active.
+	 */
+	dw_hdmi_qp_mod(hdmi, I2S_BPCUV_RCV_DIS, I2S_BPCUV_RCV_MSK,
+		  AUDIO_INTERFACE_CONFIG0);
+	dw_hdmi_qp_mod(hdmi, AUDPKT_PBIT_FORCE_EN | AUDPKT_CHSTATUS_OVR_EN,
+		  AUDPKT_PBIT_FORCE_EN_MASK | AUDPKT_CHSTATUS_OVR_EN_MASK,
+		  AUDPKT_CONTROL0);
+
+	dw_hdmi_qp_mod(hdmi, AVP_DATAPATH_PACKET_AUDIO_SWDISABLE,
+		  AVP_DATAPATH_PACKET_AUDIO_SWDISABLE, GLOBAL_SWDISABLE);
+}
+
 static int dw_hdmi_qp_i2c_read(struct dw_hdmi_qp *hdmi,
 			       unsigned char *buf, unsigned int length)
 {
@@ -361,6 +741,40 @@ static int dw_hdmi_qp_config_drm_infoframe(struct dw_hdmi_qp *hdmi,
 	return 0;
 }
 
+static int dw_hdmi_qp_config_audio_infoframe(struct dw_hdmi_qp *hdmi,
+					     const u8 *buffer, size_t len)
+{
+	/*
+	 * AUDI_CONTENTS0: { RSV, HB2, HB1, RSV }
+	 * AUDI_CONTENTS1: { PB3, PB2, PB1, PB0 }
+	 * AUDI_CONTENTS2: { PB7, PB6, PB5, PB4 }
+	 *
+	 * PB0: CheckSum
+	 * PB1: | CT3    | CT2  | CT1  | CT0  | F13  | CC2 | CC1 | CC0 |
+	 * PB2: | F27    | F26  | F25  | SF2  | SF1  | SF0 | SS1 | SS0 |
+	 * PB3: | F37    | F36  | F35  | F34  | F33  | F32 | F31 | F30 |
+	 * PB4: | CA7    | CA6  | CA5  | CA4  | CA3  | CA2 | CA1 | CA0 |
+	 * PB5: | DM_INH | LSV3 | LSV2 | LSV1 | LSV0 | F52 | F51 | F50 |
+	 * PB6~PB10: Reserved
+	 *
+	 * AUDI_CONTENTS0 default value defined by HDMI specification,
+	 * and shall only be changed for debug purposes.
+	 * So, we only configure payload byte from PB0~PB7(2 word total).
+	 */
+	regmap_bulk_write(hdmi->regm, PKT_AUDI_CONTENTS1, &buffer[3], 2);
+
+	/* Enable ACR, AUDI, AMD */
+	dw_hdmi_qp_mod(hdmi,
+		  PKTSCHED_ACR_TX_EN | PKTSCHED_AUDI_TX_EN | PKTSCHED_AMD_TX_EN,
+		  PKTSCHED_ACR_TX_EN | PKTSCHED_AUDI_TX_EN | PKTSCHED_AMD_TX_EN,
+		  PKTSCHED_PKT_EN);
+
+	/* Enable AUDS */
+	dw_hdmi_qp_mod(hdmi, PKTSCHED_AUDS_TX_EN, PKTSCHED_AUDS_TX_EN, PKTSCHED_PKT_EN);
+
+	return 0;
+}
+
 static void dw_hdmi_qp_bridge_atomic_enable(struct drm_bridge *bridge,
 					    struct drm_bridge_state *old_state)
 {
@@ -477,6 +891,9 @@ static int dw_hdmi_qp_bridge_write_infoframe(struct drm_bridge *bridge,
 	case HDMI_INFOFRAME_TYPE_DRM:
 		return dw_hdmi_qp_config_drm_infoframe(hdmi, buffer, len);
 
+	case HDMI_INFOFRAME_TYPE_AUDIO:
+		return dw_hdmi_qp_config_audio_infoframe(hdmi, buffer, len);
+
 	default:
 		dev_dbg(hdmi->dev, "Unsupported infoframe type %x\n", type);
 		return 0;
@@ -494,6 +911,9 @@ static const struct drm_bridge_funcs dw_hdmi_qp_bridge_funcs = {
 	.hdmi_tmds_char_rate_valid = dw_hdmi_qp_bridge_tmds_char_rate_valid,
 	.hdmi_clear_infoframe = dw_hdmi_qp_bridge_clear_infoframe,
 	.hdmi_write_infoframe = dw_hdmi_qp_bridge_write_infoframe,
+	.hdmi_audio_startup = dw_hdmi_qp_audio_enable,
+	.hdmi_audio_shutdown = dw_hdmi_qp_audio_disable,
+	.hdmi_audio_prepare = dw_hdmi_qp_audio_prepare,
 };
 
 static irqreturn_t dw_hdmi_qp_main_hardirq(int irq, void *dev_id)
@@ -603,6 +1023,10 @@ struct dw_hdmi_qp *dw_hdmi_qp_bind(struct platform_device *pdev,
 	if (IS_ERR(hdmi->bridge.ddc))
 		return ERR_CAST(hdmi->bridge.ddc);
 
+	hdmi->bridge.hdmi_audio_max_i2s_playback_channels = 8;
+	hdmi->bridge.hdmi_audio_dev = dev;
+	hdmi->bridge.hdmi_audio_dai_port = 1;
+
 	ret = devm_drm_bridge_add(dev, &hdmi->bridge);
 	if (ret)
 		return ERR_PTR(ret);
-- 
2.48.1


