Return-Path: <devicetree+bounces-253086-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A3AD072A0
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 05:46:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 09F16302AB8C
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 04:45:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 199872F7ACA;
	Fri,  9 Jan 2026 04:45:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BF3vgD4e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DDA42E091E
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 04:45:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767933910; cv=none; b=tMe/6zqAIbn1/fYNh453xL15aCD+lcJ/uxMOI/8DQdPSqFwtoatGKYr+KgijBxPAxEMFhN687OcBnJuH7Vn1Qk6hfjdvS7liowVTyfBqXXJTgnxvAsr307Ni2/a7MFPr9jj/J5FWpv1/yJPh9L+SIsx357ExiBMQEJ1Ah18Q6Ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767933910; c=relaxed/simple;
	bh=6iQDwtevvySAUcxuOQU2gUPx2JfPZcBpHSFcpdzIBcg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=p2MgONtPnZytJqtfxdZkY2YrBB6taEuJ+hwoGtJM/j8f5Zgj2lfz1bIuYaJw2LlX2ns834DBYuog6Ft9S2O7BxbCEaWwQVK2UE6ZxU/BgMQhKY1j6f9iYsAWBi5QvF9GywyocYdQladLDs3Y9fqupAY7dsLlFXAz+1LkzG0C52I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BF3vgD4e; arc=none smtp.client-ip=209.85.210.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-7c6cc44ff62so3026742a34.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 20:45:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767933907; x=1768538707; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ypKeszfpgojbgy6wMmI/rGB/PjQY3jemXow+UjHywJQ=;
        b=BF3vgD4egiT2mkVWe3lIXN05NxYHYFMOZhxj6J/7YXIGs6/iNsJEPy91Yo0oq/NAvf
         2MMy5rqVM8NayPIoYHDwbFsZr3MFERy2vn+DXDqF78c2ZGUvHVwQJpTgO0+h0bTqyXeJ
         oWdtOyx5bpNalaHP87GqmSpgo1uXLN2nTZwGiY2KeUsCQhJMAnJ/yU+ZhhA8xLjkzox9
         jmHO7rPOKJYIDQOSSGM9C7hyJlJOYIRJt35RkhNeM1b4mtOXhUFgg7h5ZY5DZz5kwWOF
         speWMqpDR/HXs68aAR43pY/Omauk61U3wNIRCokSpq+h7GPlY0mHIIVEHkZHTTEoWPOx
         SrBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767933907; x=1768538707;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ypKeszfpgojbgy6wMmI/rGB/PjQY3jemXow+UjHywJQ=;
        b=LCiKR4mE0HJ/8ruazauORIoZq2SVDA+4FrLKVzjmXNKiYN3pdePGlecqoi5rCDdpGA
         ugPJ5tpK8iEGWvNOUyhsdQMggDE6SU8lLq65mDFlwXzLxzMjo+rS4HXI3YYyZItOP3aC
         6Iqdw0Zg9UGwB/ZongbTYxY2JL9FbaXQ4/DwwVhFJvYblTUjeFSSB8ZE7P5SkiOgUhfw
         LfTVDA4SEjycYHhXwBqLgypExtBO4Fb1idZ+Ah55pwjJVsK+wnK1/qeH+UKFpI7a1c5X
         wIUv/RCC5hbVEwXTPimr0QIEXH9yHbEVF0M49D/5YDRboDCE48odefAjJQrVIegUo7ws
         C3WA==
X-Forwarded-Encrypted: i=1; AJvYcCXdhx4UNpmmvcFqOPrG2903RXtDPvo+wat3BWtF6/1dLn/mmLShRJbJHD8Jq1XmrQAXgnRpxXpHUrEl@vger.kernel.org
X-Gm-Message-State: AOJu0YxBfvWPQZVmOsqruhOPPh7yCQOeArDT8rrc9qYE1UEv4hkmFOLl
	zor/GaMtaO9+uTZg7aK+nTobe2OnHacd3pec2szy6OrCNrvMiKut4uva
X-Gm-Gg: AY/fxX6WpkMGEph1X9K6JVdXH/nJjGZZojcpHcApMwcrNilPw/ri1cjKyam+fIiUOkE
	5nrxB8L/w21RiglxgdezEEGgZY/zlSSPVcgGq8Qzl2tjh0PlYl6NxKAKSsiwn2MAtZeMkbFNHIN
	Ri0rTLl0S4CCsRF5oQ6jGxGiA38dD7fl6iSja2ZmCubo4+c3FCFssRY4UHvR7zZqujV1abm0M2T
	+rMijXAuhLhg4WGs2KWHbQ6vHgUP0EP47xvneCwY/9lC/0q0d/YMpS++ZbGIDYappzHwdDJte7L
	/B4PBTr8KZyNyTClU66fARF4VAUbbwVoeK72dg8Qw/8fbBHbYuGIy3vPmz6y4s2G/K17ct4BYSU
	3LIilLxHCCG9nckmDAmLO9HKofVn1mK/fz2kYkuNd+hP5OPKdxvG16g5pwsc/al4WLQSu3swD3V
	XRMnM2Zkch/oz1EEWAAu9ZVad8tTHHe2R9xAYpmXSaePwQe1SN2IxgDuj4cjC5uFWnu3zy49Qzm
	00xRk2BbASKuRQ+AOSGyCC2IRKeWJlZZW8UVO0=
X-Google-Smtp-Source: AGHT+IHzGEtr343kQgjxmKV9EME11PnTGtdoj63Wm6AsleFjdKkdyI4VIVj9KJa4nZdVheAIBE7S5g==
X-Received: by 2002:a05:6830:2b28:b0:7c7:586c:846c with SMTP id 46e09a7af769-7ce50b8d34fmr5291070a34.19.1767933907080;
        Thu, 08 Jan 2026 20:45:07 -0800 (PST)
Received: from nukework.lan (c-98-57-15-22.hsd1.tx.comcast.net. [98.57.15.22])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7ce47802551sm6683515a34.1.2026.01.08.20.45.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 20:45:06 -0800 (PST)
From: Alexandru Gagniuc <mr.nuke.me@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	jjohnson@kernel.org,
	ath11k@lists.infradead.org
Cc: johannes@sipsolutions.net,
	linux-wireless@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Alexandru Gagniuc <mr.nuke.me@gmail.com>
Subject: [PATCH v2 2/2] wifi: ath11k: support ipq9574
Date: Thu,  8 Jan 2026 22:44:54 -0600
Message-ID: <20260109044457.3074510-3-mr.nuke.me@gmail.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20260109044457.3074510-1-mr.nuke.me@gmail.com>
References: <20260109044457.3074510-1-mr.nuke.me@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The IPQ9574 can be coupled with wifi-6 chips, like QCN5024 to expose
a wifi device over AHB. Add the data structures necessarry to describe
the IPQ9574 wifi hardware.

The CE configs are identical to IPQ6018, as confirmed by inspecting
the out-of-tree qca-wifi-host-cmn (cnss2) driver.

Coldboot calibration does not seem to work. One of two issues are
seen. (1) The remoteproc firmware crashes with a fatal error, or
(2) the firmware stops sending qmi responses, appearing to hang. Leave
coldboot calibration disabled for now.

Tested-on: IPQ5974 WLAN.HK.2.9.0.1-01890-QCAHKSWPL_SILICONZ-1

Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>

---
Most information about the fields cames from the donwstream patch [1].
Analysis of the out-of-tree driver [2] shows that the IPQ9574 uses the
same CE configs as IPQ6018.

[1] https://git.codelinaro.org/clo/qsdk/oss/system/feeds/wlan-open/-/raw/NHSS.QSDK.12.4.5.r2/mac80211/patches/324-ath11k-ipq9574-support.patch?inline=false
[2] https://git.codelinaro.org/clo/external-wlan/qca-wifi-host-cmn/-/blob/caf_migration/wlan-cmn.driver.lnx.2.13/hif/src/ce/ce_assignment.h?ref_type=heads
---
 drivers/net/wireless/ath/ath11k/ahb.c  |  4 ++
 drivers/net/wireless/ath/ath11k/core.c | 82 ++++++++++++++++++++++++++
 drivers/net/wireless/ath/ath11k/core.h |  1 +
 drivers/net/wireless/ath/ath11k/hw.c   | 51 ++++++++++++++++
 drivers/net/wireless/ath/ath11k/hw.h   |  1 +
 5 files changed, 139 insertions(+)

diff --git a/drivers/net/wireless/ath/ath11k/ahb.c b/drivers/net/wireless/ath/ath11k/ahb.c
index 8dfe9b40c126..e68bcc6b6069 100644
--- a/drivers/net/wireless/ath/ath11k/ahb.c
+++ b/drivers/net/wireless/ath/ath11k/ahb.c
@@ -25,6 +25,9 @@ static const struct of_device_id ath11k_ahb_of_match[] = {
 	/* TODO: Should we change the compatible string to something similar
 	 * to one that ath10k uses?
 	 */
+	{ .compatible = "qcom,ipq9574-wifi",
+	  .data = (void *)ATH11K_HW_IPQ9574,
+	},
 	{ .compatible = "qcom,ipq8074-wifi",
 	  .data = (void *)ATH11K_HW_IPQ8074,
 	},
@@ -1117,6 +1120,7 @@ static int ath11k_ahb_probe(struct platform_device *pdev)
 	hw_rev = (uintptr_t)device_get_match_data(&pdev->dev);
 
 	switch (hw_rev) {
+	case ATH11K_HW_IPQ9574:
 	case ATH11K_HW_IPQ8074:
 	case ATH11K_HW_IPQ6018_HW10:
 	case ATH11K_HW_IPQ5018_HW10:
diff --git a/drivers/net/wireless/ath/ath11k/core.c b/drivers/net/wireless/ath/ath11k/core.c
index 812686173ac8..fed888414005 100644
--- a/drivers/net/wireless/ath/ath11k/core.c
+++ b/drivers/net/wireless/ath/ath11k/core.c
@@ -40,6 +40,88 @@ module_param_named(ftm_mode, ath11k_ftm_mode, bool, 0444);
 MODULE_PARM_DESC(ftm_mode, "Boots up in factory test mode");
 
 static const struct ath11k_hw_params ath11k_hw_params[] = {
+	{
+		.hw_rev = ATH11K_HW_IPQ9574,
+		.name = "ipq9574",
+		.fw = {
+			.dir = "IPQ9574/hw1.0",
+			.board_size = 256 * 1024,
+			.cal_offset = 128 * 1024,
+		},
+		.max_radios = 1,
+		.bdf_addr = 0x4B700000,
+		.hw_ops = &ipq9574_ops,
+		.ring_mask = &ath11k_hw_ring_mask_ipq8074,
+		.internal_sleep_clock = false,
+		.regs = &ipq8074_regs,
+		.qmi_service_ins_id = ATH11K_QMI_WLFW_SERVICE_INS_ID_V01_IPQ8074,
+		.host_ce_config = ath11k_host_ce_config_ipq8074,
+		.ce_count = 12,
+		.target_ce_config = ath11k_target_ce_config_wlan_ipq8074,
+		.target_ce_count = 11,
+		.svc_to_ce_map = ath11k_target_service_to_ce_map_wlan_ipq6018,
+		.svc_to_ce_map_len = 19,
+		.ce_ie_addr = &ath11k_ce_ie_addr_ipq8074,
+		.single_pdev_only = false,
+		.rxdma1_enable = true,
+		.num_rxdma_per_pdev = 1,
+		.rx_mac_buf_ring = false,
+		.vdev_start_delay = false,
+		.htt_peer_map_v2 = true,
+
+		.spectral = {
+			.fft_sz = 2,
+			.fft_pad_sz = 2,
+			.summary_pad_sz = 0,
+			.fft_hdr_len = 16,
+			.max_fft_bins = 512,
+			.fragment_160mhz = true,
+		},
+
+		.interface_modes = BIT(NL80211_IFTYPE_STATION) |
+				   BIT(NL80211_IFTYPE_AP) |
+				   BIT(NL80211_IFTYPE_MESH_POINT),
+		.supports_monitor = true,
+		.full_monitor_mode = false,
+		.supports_shadow_regs = false,
+		.idle_ps = false,
+		.supports_sta_ps = false,
+		.coldboot_cal_mm = false,
+		.coldboot_cal_ftm = false,
+		.fw_mem_mode = 0,
+		.num_vdevs = 16 + 1,
+		.num_peers = 512,
+		.supports_suspend = false,
+		.hal_desc_sz = sizeof(struct hal_rx_desc_ipq8074),
+		.supports_regdb = false,
+		.fix_l1ss = true,
+		.credit_flow = false,
+		.hal_params = &ath11k_hw_hal_params_ipq8074,
+		.supports_dynamic_smps_6ghz = false,
+		.alloc_cacheable_memory = true,
+		.supports_rssi_stats = false,
+		.fw_wmi_diag_event = false,
+		.current_cc_support = false,
+		.dbr_debug_support = true,
+		.global_reset = false,
+		.bios_sar_capa = NULL,
+		.m3_fw_support = false,
+		.fixed_bdf_addr = true,
+		.fixed_mem_region = true,
+		.static_window_map = false,
+		.hybrid_bus_type = false,
+		.fixed_fw_mem = false,
+		.support_off_channel_tx = false,
+		.supports_multi_bssid = false,
+
+		.sram_dump = {},
+
+		.tcl_ring_retry = true,
+		.tx_ring_size = DP_TCL_DATA_RING_SIZE,
+		.smp2p_wow_exit = false,
+		.support_dual_stations = false,
+		.pdev_suspend = false,
+	},
 	{
 		.hw_rev = ATH11K_HW_IPQ8074,
 		.name = "ipq8074 hw2.0",
diff --git a/drivers/net/wireless/ath/ath11k/core.h b/drivers/net/wireless/ath/ath11k/core.h
index e8780b05ce11..9a4acde3acfa 100644
--- a/drivers/net/wireless/ath/ath11k/core.h
+++ b/drivers/net/wireless/ath/ath11k/core.h
@@ -142,6 +142,7 @@ struct ath11k_skb_rxcb {
 };
 
 enum ath11k_hw_rev {
+	ATH11K_HW_IPQ9574,
 	ATH11K_HW_IPQ8074,
 	ATH11K_HW_QCA6390_HW20,
 	ATH11K_HW_IPQ6018_HW10,
diff --git a/drivers/net/wireless/ath/ath11k/hw.c b/drivers/net/wireless/ath/ath11k/hw.c
index caa6dc12a790..6862b718b004 100644
--- a/drivers/net/wireless/ath/ath11k/hw.c
+++ b/drivers/net/wireless/ath/ath11k/hw.c
@@ -34,6 +34,17 @@ static u8 ath11k_hw_ipq6018_mac_from_pdev_id(int pdev_idx)
 	return pdev_idx;
 }
 
+static u8 ath11k_hw_ipq9574_mac_from_pdev_id(int pdev_idx)
+{
+	/* ipq9574 is a single PHY radio which maps to PHY B(mac3) */
+	switch (pdev_idx) {
+	case 0:
+		return 2;
+	default:
+		return ATH11K_INVALID_HW_MAC_ID;
+	}
+}
+
 static void ath11k_hw_ipq8074_tx_mesh_enable(struct ath11k_base *ab,
 					     struct hal_tcl_data_cmd *tcl_cmd)
 {
@@ -900,6 +911,46 @@ static u32 ath11k_hw_wcn6750_get_tcl_ring_selector(struct sk_buff *skb)
 	return skb_get_hash(skb);
 }
 
+const struct ath11k_hw_ops ipq9574_ops = {
+	.get_hw_mac_from_pdev_id = ath11k_hw_ipq9574_mac_from_pdev_id,
+	.wmi_init_config = ath11k_init_wmi_config_ipq8074,
+	.mac_id_to_pdev_id = ath11k_hw_mac_id_to_pdev_id_ipq8074,
+	.mac_id_to_srng_id = ath11k_hw_mac_id_to_srng_id_ipq8074,
+	.tx_mesh_enable = ath11k_hw_ipq8074_tx_mesh_enable,
+	.rx_desc_get_first_msdu = ath11k_hw_ipq8074_rx_desc_get_first_msdu,
+	.rx_desc_get_last_msdu = ath11k_hw_ipq8074_rx_desc_get_last_msdu,
+	.rx_desc_get_l3_pad_bytes = ath11k_hw_ipq8074_rx_desc_get_l3_pad_bytes,
+	.rx_desc_get_hdr_status = ath11k_hw_ipq8074_rx_desc_get_hdr_status,
+	.rx_desc_encrypt_valid = ath11k_hw_ipq8074_rx_desc_encrypt_valid,
+	.rx_desc_get_encrypt_type = ath11k_hw_ipq8074_rx_desc_get_encrypt_type,
+	.rx_desc_get_decap_type = ath11k_hw_ipq8074_rx_desc_get_decap_type,
+	.rx_desc_get_mesh_ctl = ath11k_hw_ipq8074_rx_desc_get_mesh_ctl,
+	.rx_desc_get_ldpc_support = ath11k_hw_ipq8074_rx_desc_get_ldpc_support,
+	.rx_desc_get_mpdu_seq_ctl_vld = ath11k_hw_ipq8074_rx_desc_get_mpdu_seq_ctl_vld,
+	.rx_desc_get_mpdu_fc_valid = ath11k_hw_ipq8074_rx_desc_get_mpdu_fc_valid,
+	.rx_desc_get_mpdu_start_seq_no = ath11k_hw_ipq8074_rx_desc_get_mpdu_start_seq_no,
+	.rx_desc_get_msdu_len = ath11k_hw_ipq8074_rx_desc_get_msdu_len,
+	.rx_desc_get_msdu_sgi = ath11k_hw_ipq8074_rx_desc_get_msdu_sgi,
+	.rx_desc_get_msdu_rate_mcs = ath11k_hw_ipq8074_rx_desc_get_msdu_rate_mcs,
+	.rx_desc_get_msdu_rx_bw = ath11k_hw_ipq8074_rx_desc_get_msdu_rx_bw,
+	.rx_desc_get_msdu_freq = ath11k_hw_ipq8074_rx_desc_get_msdu_freq,
+	.rx_desc_get_msdu_pkt_type = ath11k_hw_ipq8074_rx_desc_get_msdu_pkt_type,
+	.rx_desc_get_msdu_nss = ath11k_hw_ipq8074_rx_desc_get_msdu_nss,
+	.rx_desc_get_mpdu_tid = ath11k_hw_ipq8074_rx_desc_get_mpdu_tid,
+	.rx_desc_get_mpdu_peer_id = ath11k_hw_ipq8074_rx_desc_get_mpdu_peer_id,
+	.rx_desc_copy_attn_end_tlv = ath11k_hw_ipq8074_rx_desc_copy_attn_end,
+	.rx_desc_get_mpdu_start_tag = ath11k_hw_ipq8074_rx_desc_get_mpdu_start_tag,
+	.rx_desc_get_mpdu_ppdu_id = ath11k_hw_ipq8074_rx_desc_get_mpdu_ppdu_id,
+	.rx_desc_set_msdu_len = ath11k_hw_ipq8074_rx_desc_set_msdu_len,
+	.rx_desc_get_attention = ath11k_hw_ipq8074_rx_desc_get_attention,
+	.rx_desc_get_msdu_payload = ath11k_hw_ipq8074_rx_desc_get_msdu_payload,
+	.reo_setup = ath11k_hw_ipq8074_reo_setup,
+	.mpdu_info_get_peerid = ath11k_hw_ipq8074_mpdu_info_get_peerid,
+	.rx_desc_mac_addr2_valid = ath11k_hw_ipq8074_rx_desc_mac_addr2_valid,
+	.rx_desc_mpdu_start_addr2 = ath11k_hw_ipq8074_rx_desc_mpdu_start_addr2,
+	.get_ring_selector = ath11k_hw_ipq8074_get_tcl_ring_selector,
+};
+
 const struct ath11k_hw_ops ipq8074_ops = {
 	.get_hw_mac_from_pdev_id = ath11k_hw_ipq8074_mac_from_pdev_id,
 	.wmi_init_config = ath11k_init_wmi_config_ipq8074,
diff --git a/drivers/net/wireless/ath/ath11k/hw.h b/drivers/net/wireless/ath/ath11k/hw.h
index 52d9f4c13b13..0ea36c8ebb66 100644
--- a/drivers/net/wireless/ath/ath11k/hw.h
+++ b/drivers/net/wireless/ath/ath11k/hw.h
@@ -273,6 +273,7 @@ struct ath11k_hw_ops {
 	u32 (*get_ring_selector)(struct sk_buff *skb);
 };
 
+extern const struct ath11k_hw_ops ipq9574_ops;
 extern const struct ath11k_hw_ops ipq8074_ops;
 extern const struct ath11k_hw_ops ipq6018_ops;
 extern const struct ath11k_hw_ops qca6390_ops;
-- 
2.45.1


