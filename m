Return-Path: <devicetree+bounces-267430-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ODdYH2ZZnGmzEgQAu9opvQ
	(envelope-from <devicetree+bounces-267430-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:43:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D11DC177271
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:43:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4C1BE3051C8C
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 13:40:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AA6B24DD15;
	Mon, 23 Feb 2026 13:40:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bfSAIr3F";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CIfoPGoO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C016923E342
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 13:40:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771854011; cv=none; b=otZBuGCsEqUIF2ybro1690eVujwtKXeAZffYgEShRcSOTAmDNiLepz9oOgFAYCKJb/qaAiFs29Fgmm1Lmqu5EK0Wc2IjLhQyQ34bzC6Z2z5+xdavjvChmbY7tAqyb7dOhmxJwdFynE0G/BS6MXW58XpT57hzMmOi9Loi3tdVG+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771854011; c=relaxed/simple;
	bh=cvnnoa9TUq1edsza/1iuku55/7S7VzMksVWv+y2617s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DJ3qCXw9XH08m7m5Ffgfn7gJtKC/cLhlwmbBw59xFfrF2r9MwnQeN4GfABGREsDUyBXFIJTgiQF4qlmGbYXmbArK0nRdb4SnuWoy2cfOCKkVTr6Kk3d5ur23uF4/cJ9yoBGfT0qkRyhtnebrHbLt6HAYTUW89ooGGm191Fbt2Cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bfSAIr3F; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CIfoPGoO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NA8EBI2565272
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 13:40:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=AyRTUiWDQKH
	zUMBCBzmWvBSqZuwEfX09XlO4fd3NbmI=; b=bfSAIr3FumL9RgkGplkaIZPrFhJ
	9pUkf/ocd5mIdh88uqNZQLoqoHCR3OpugxV4FWRUA8aJmfDokH2uan6SFiusbx7U
	t/O9QrgrMsASeh5jms9rC7PN4KYZCj+SAVfxlr8jWDYO1iH8ZZckQdQyrxWeuqKn
	GH/iHRKeeU9p/vuL1uyyD7hWcw4ODRHV9I9joUHklOrq1m7yq53eTkc/70i5szLS
	iqXVFgpE0GF1kZCZPttRNAqKG6snAcuSgkiF8emm3q/jsF7pjMB7rE9qfUfdAshZ
	kcpbaQqOhnP9K6nndQbGbSnzdGuVZ2Infz9SudstmKRBgwWSmznKZ45fGIQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5wyvv1c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 13:40:09 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb3a2eb984so1545110485a.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 05:40:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771854008; x=1772458808; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AyRTUiWDQKHzUMBCBzmWvBSqZuwEfX09XlO4fd3NbmI=;
        b=CIfoPGoOMg62vC+H5Qq+WNwjlQZjPBexwhKQuxRCWBiZrmgRXoxptLoiw+cyWqOQgL
         wX4AqQKvVn7QZ53PUfoJeAS703l0FOwJtc/x+p1nhjBqv5sKyTt3dadgPmCVDTjFobPl
         KGANvZVhjJ5pmaH39IpeYXuyLICTVTHcrzJ8TLfg84MD2UPsc2MANDPQOyLFMkevV0Ep
         R+cZ0syjaA25fu4hBhHEojus3nunLbIFd+Gh7i/Bk20qz/EXBmf4hKiQOiSLdU4t9HgJ
         VSeqfIIBiiLt+6MZG0kLodIpnJhU9fsVtMc+QkkZAY56WNIqhfj7CG+pM4d6Y9n8DcGZ
         5gOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771854008; x=1772458808;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=AyRTUiWDQKHzUMBCBzmWvBSqZuwEfX09XlO4fd3NbmI=;
        b=iZ2rM9//e/wthO1gDmEW/obTBD4fJ5QvqI/ucBIuLFL99rwMdIlF0zm6olbPL1vSI4
         yCXvM8CQ1h5vQpfQaJXVExji0qVvRsE7FpiBmbyOaHvoP37RipJxABHay+5eMC8FDxvx
         TiJ2TiNVbPGyv+7r1Y0MQUnpwW/IZhR87mJglcWOyknVMJ8NEZx1sBKIvzgelopl6wRw
         gy8NRIj499ad1//k9+I2MZOGloWFD33Uu/qL3A4nVNfZ0c+4IgE7C+FFU3e59FR3aLD2
         5n+Fchzdqi1Oj6Nfrc/OJxPUdLHJiENUFTUkkcyfs4fJM1eK31LnIk58L4W2fEUuU7mv
         m41w==
X-Forwarded-Encrypted: i=1; AJvYcCVyQynxeVrsgexO6yUGl0Ew3Mfl0sV6DpFBqHD4k7g6QwxErs9cqIyMuk4YfSJVdF0WclvN+AHGeoMi@vger.kernel.org
X-Gm-Message-State: AOJu0YyXhKSfSl+qKVmYd+v4yc7EssmWtp56WYjuCHtVrDEkgwkbdjXD
	OOFwOv8kbwSS0h48QvzEK5o4Cc9dadAQacMlRPTYOeWja6TUclDRUkKiGYEyhs7Ozyj5DIu6lk3
	zCQSX/uzlfDMIU8to9IwojWq46cWC/jqC5mtKa5HEI15AYpb56OK98L5EXQkgzyOK
X-Gm-Gg: AZuq6aIrTz6mmzvA9pF/bqFUoooX+c/aDQdq2ft6xCsyd5OA6w0WjYHDRexhqs9uVn8
	e1kcTS+ABDMgKwoQS9S8fjNjNwxYJbH7Xdji/XKdd2tghY0WEK25fOLJeQI2kKSwzGyv0X/p2Wf
	Hm3a82hS6tuycgp6Qor70SzrBvswn+jOTuqZFCz11uAKK6uVBVfRKZdzz4nOAlzVvZytKxUcY3i
	ahmdoYzLBhIrEkkH9TT9kJQzQtx4fuE5BSCGJAoKhawfQ1vgdK5p4tyvfYL3YbxnVJgXX2wrYJu
	mgXn6L4kFGXd6W+YOU0aSWlV+31hch0B5alVHRO0d2O7lDwxeGP7G56So8TQA11Z8+dMVNs6km9
	+D8nmzBAbMcnd/clT9QZ7gdAJJL2NEbSHYkZ1FFjdbxCLgqXffteSEAo=
X-Received: by 2002:a05:620a:f15:b0:8c7:1ade:29a8 with SMTP id af79cd13be357-8cb8c9fd18cmr986459785a.23.1771854008051;
        Mon, 23 Feb 2026 05:40:08 -0800 (PST)
X-Received: by 2002:a05:620a:f15:b0:8c7:1ade:29a8 with SMTP id af79cd13be357-8cb8c9fd18cmr986456485a.23.1771854007560;
        Mon, 23 Feb 2026 05:40:07 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d4c626sm21323985f8f.28.2026.02.23.05.40.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 05:40:07 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: lee@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, sboyd@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alexey.klimov@linaro.org,
        r.mereu@arduino.cc, srini@kenrel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v2 3/5] arm64: dts: qcom: agatti: add LPASS devices
Date: Mon, 23 Feb 2026 13:39:48 +0000
Message-ID: <20260223133950.221234-4-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260223133950.221234-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20260223133950.221234-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDExNyBTYWx0ZWRfX0TbHNkkY5+k2
 7URET1gqws/PcNmtl7yt5Ja2r5UPPxo8koJeJB7Q1FwydsROkY7rihT3V3G93WqopmguEvF9Vyd
 q2d3L4qwi3vuaiStqTNn8yTYx91EiTunMINlletJlv/BFhoPKPBM5Hay/eyoG5dstkc7xptj0LN
 Uf1zFs/v7Iv5FXPRFj7TXLVRcdYLUkp57VHb+S3j2ZBkzQZv0OaZFCavhSx/h4DSikiieNO+jE0
 YPYcP2f/hwK+FgphcJPNd0STpShX+kohneZtiI2Smml5fX1hTOSKxJjUGxhRIuw1Af3WfoMe+gU
 dZ10QBMknk9gXGHWlK/Fe+/04Q8g0C8tI81Qb10j6YFzxE6T+KqlUOuHhoOJXLRtKOkrDZfqHoz
 y38vT+yiBF7MZDtidPkmoPQrcvO2q77Ju1RgRQdwTdw3CnoE8WqPeK5jRedDviArrxcGfySyQYx
 BICjtjIZuBPkKoGZeLA==
X-Authority-Analysis: v=2.4 cv=UO/Q3Sfy c=1 sm=1 tr=0 ts=699c58b9 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=OKQivFIISjCID7q7bPgA:9 a=IoWCM6iH3mJn3m4BftBB:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: c7yrnbP-RLorQoxMdkEL8dhExuOlzhLs
X-Proofpoint-ORIG-GUID: c7yrnbP-RLorQoxMdkEL8dhExuOlzhLs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_02,2026-02-23_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 lowpriorityscore=0 adultscore=0 impostorscore=0
 malwarescore=0 priorityscore=1501 bulkscore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230117
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267430-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D11DC177271
X-Rspamd-Action: no action

From: Alexey Klimov <alexey.klimov@linaro.org>

The rxmacro, txmacro, vamacro, soundwire nodes, lpass clock
controllers are required to support audio playback and
audio capture on sm6115 and its derivatives.

Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/agatti.dtsi | 167 +++++++++++++++++++++++++++
 1 file changed, 167 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/agatti.dtsi b/arch/arm64/boot/dts/qcom/agatti.dtsi
index 76b93b7bd50f..e59a1a87ee0a 100644
--- a/arch/arm64/boot/dts/qcom/agatti.dtsi
+++ b/arch/arm64/boot/dts/qcom/agatti.dtsi
@@ -758,6 +758,42 @@ data-pins {
 					drive-strength = <8>;
 				};
 			};
+
+			lpass_tx_swr_active: lpass-tx-swr-active-state {
+				clk-pins {
+					pins = "gpio0";
+					function = "swr_tx_clk";
+					drive-strength = <10>;
+					slew-rate = <3>;
+					bias-disable;
+				};
+
+				data-pins {
+					pins = "gpio1", "gpio2";
+					function = "swr_tx_data";
+					drive-strength = <10>;
+					slew-rate = <3>;
+					bias-bus-hold;
+				};
+			};
+
+			lpass_rx_swr_active: lpass-rx-swr-active-state {
+				clk-pins {
+					pins = "gpio3";
+					function = "swr_rx_clk";
+					drive-strength = <10>;
+					slew-rate = <3>;
+					bias-disable;
+				};
+
+				data-pins {
+					pins = "gpio4", "gpio5";
+					function = "swr_rx_data";
+					drive-strength = <10>;
+					slew-rate = <3>;
+					bias-bus-hold;
+				};
+			};
 		};
 
 		gcc: clock-controller@1400000 {
@@ -2188,6 +2224,137 @@ glink-edge {
 			};
 		};
 
+		rxmacro: codec@a600000 {
+			compatible = "qcom,sm6115-lpass-rx-macro";
+			reg = <0x0 0xa600000 0x0 0x1000>;
+
+			clocks = <&q6afecc LPASS_CLK_ID_RX_CORE_MCLK
+				 LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6afecc LPASS_CLK_ID_RX_CORE_NPL_MCLK
+				 LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6afecc LPASS_HW_DCODEC_VOTE
+				 LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&vamacro>;
+			clock-names = "mclk",
+				      "npl",
+				      "dcodec",
+				      "fsgen";
+			#clock-cells = <0>;
+			clock-output-names = "mclk";
+			#sound-dai-cells = <1>;
+		};
+
+		swr1: soundwire@a610000 {
+			compatible = "qcom,soundwire-v1.6.0";
+			reg = <0x0 0x0a610000 0x0 0x10000>;
+			interrupts = <GIC_SPI 297 IRQ_TYPE_LEVEL_HIGH>;
+
+			clocks = <&rxmacro>;
+			clock-names = "iface";
+
+			resets = <&lpass_audiocc 0>;
+			reset-names = "swr_audio_cgcr";
+
+			label = "RX";
+			qcom,din-ports = <0>;
+			qcom,dout-ports = <5>;
+
+			qcom,ports-sinterval-low =	/bits/ 8 <0x03 0x1f 0x1f 0x07 0x00>;
+			qcom,ports-offset1 =		/bits/ 8 <0x00 0x00 0x0b 0x01 0x00>;
+			qcom,ports-offset2 =		/bits/ 8 <0x00 0x00 0x0b 0x00 0x00>;
+			qcom,ports-hstart =		/bits/ 8 <0xff 0x03 0xff 0xff 0xff>;
+			qcom,ports-hstop =		/bits/ 8 <0xff 0x06 0xff 0xff 0xff>;
+			qcom,ports-word-length =	/bits/ 8 <0x01 0x07 0x04 0xff 0xff>;
+			qcom,ports-block-pack-mode =	/bits/ 8 <0xff 0x00 0x01 0xff 0xff>;
+			qcom,ports-block-group-count =	/bits/ 8 <0xff 0xff 0xff 0xff 0x00>;
+			qcom,ports-lane-control =	/bits/ 8 <0x01 0x00 0x00 0x00 0x00>;
+
+			#sound-dai-cells = <1>;
+			#address-cells = <2>;
+			#size-cells = <0>;
+		};
+
+
+		txmacro: codec@a620000 {
+			compatible = "qcom,sm6115-lpass-tx-macro";
+			reg = <0x0 0x0a620000 0x0 0x1000>;
+
+			clocks = <&q6afecc LPASS_CLK_ID_TX_CORE_MCLK
+				 LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6afecc LPASS_CLK_ID_TX_CORE_NPL_MCLK
+				 LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6afecc LPASS_HW_DCODEC_VOTE
+				 LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&vamacro>;
+			clock-names = "mclk",
+				      "npl",
+				      "dcodec",
+				      "fsgen";
+			#clock-cells = <0>;
+			clock-output-names = "mclk";
+			#sound-dai-cells = <1>;
+		};
+
+		lpass_audiocc: clock-controller@a6a9000 {
+			compatible = "qcom,sm6115-lpassaudiocc";
+			reg = <0x0 0x0a6a9000 0x0 0x1000>;
+			#reset-cells = <1>;
+		};
+
+		vamacro: codec@a730000 {
+			compatible = "qcom,sm6115-lpass-va-macro";
+			reg = <0x0 0x0a730000 0x0 0x1000>;
+
+			clocks = <&q6afecc LPASS_CLK_ID_TX_CORE_MCLK
+				 LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6afecc LPASS_HW_DCODEC_VOTE
+				 LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6afecc LPASS_CLK_ID_TX_CORE_NPL_MCLK
+				 LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+			clock-names = "mclk",
+				      "dcodec",
+				      "npl";
+			#clock-cells = <0>;
+			clock-output-names = "fsgen";
+			#sound-dai-cells = <1>;
+		};
+
+		swr0: soundwire@a740000 {
+			compatible = "qcom,soundwire-v1.6.0";
+			reg = <0x0 0x0a740000 0x0 0x10000>;
+			interrupts = <GIC_SPI 296 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&txmacro>;
+			clock-names = "iface";
+
+			resets = <&lpasscc 0>;
+			reset-names = "swr_audio_cgcr";
+
+			label = "VA_TX";
+			qcom,din-ports = <3>;
+			qcom,dout-ports = <0>;
+
+			qcom,ports-sinterval-low =	/bits/ 8 <0x03 0x03 0x03>;
+			qcom,ports-offset1 =		/bits/ 8 <0x01 0x02 0x01>;
+			qcom,ports-offset2 =		/bits/ 8 <0x00 0x00 0x00>;
+			qcom,ports-hstart =		/bits/ 8 <0xff 0xff 0xff>;
+			qcom,ports-hstop =		/bits/ 8 <0xff 0xff 0xff>;
+			qcom,ports-word-length =	/bits/ 8 <0xff 0xff 0xff>;
+			qcom,ports-block-pack-mode =	/bits/ 8 <0xff 0xff 0xff>;
+			qcom,ports-block-group-count =	/bits/ 8 <0xff 0xff 0xff>;
+			qcom,ports-lane-control =	/bits/ 8 <0x00 0x00 0x00>;
+
+			#sound-dai-cells = <1>;
+			#address-cells = <2>;
+			#size-cells = <0>;
+		};
+
+		lpasscc: clock-controller@a7ec000 {
+			compatible = "qcom,sm6115-lpasscc";
+			reg = <0x0 0x0a7e0000 0x0 0x12000>;
+			#reset-cells = <1>;
+		};
+
 		remoteproc_adsp: remoteproc@ab00000 {
 			compatible = "qcom,qcm2290-adsp-pas", "qcom,sm6115-adsp-pas";
 			reg = <0x0 0x0ab00000 0x0 0x100>;
-- 
2.47.3


