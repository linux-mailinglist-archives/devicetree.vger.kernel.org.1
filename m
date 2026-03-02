Return-Path: <devicetree+bounces-269779-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YLmBGZz6pGlIxQUAu9opvQ
	(envelope-from <devicetree+bounces-269779-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 03:49:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BE9E21D289F
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 03:48:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3C4303016931
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 02:47:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E69B2C11C6;
	Mon,  2 Mar 2026 02:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LWOgcwqW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LOb2Hiuc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2961F2B88
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 02:47:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772419628; cv=none; b=IW4oH5f3VFrx7e/KFCVbQ/R3+dOkicwbYjzuz8B+WkRINj2v62piaKjvOD2CJ7CJvb8+gvxYOajVS5b2aw3pEUfywRiyycjQo0b/mNfLot4dHbL/I7q/l7HkWMkZ1x6GxuW6m5+hav/V58HEZqsqpaida6qoK6Kv/EUgfxBVZfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772419628; c=relaxed/simple;
	bh=E1qxH9Rxqp/WVoPXq2XiuAEUIfqgRisB2c/DoZN/pFc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=ob38BfK6ZkojGog1g/1MP8PGrF+M/yQAHZg7kuh9YdHU0aW34Op5btFMVK7d8Cjch7N1nF6j/Cx1QsxJ1utJEN+/eRda9NghA1B5myCDj+IDKuaTOQYuYij6cdfALLTGalN6Nmsdjek0Lu3AXRqo9odw/U+OMbvEgAQuUbTBBHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LWOgcwqW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LOb2Hiuc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 621Nk5uj352152
	for <devicetree@vger.kernel.org>; Mon, 2 Mar 2026 02:47:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=GvCgDjdGX42ztielkrXm2FhQj0uEUDj0OeI
	5oSwBSTs=; b=LWOgcwqWd8rSxMZk4oVeKZm6w+p3j4JDSxnbNkWXSmrQ8XovUD6
	CPUTj2AjlwjGle3EVLfJ4pAnwu8VjdpHglvlMSEmtl99MAhmC47enI8+eGBKEXVC
	fItVZPx/bDnlxedsILKd+ot+VhTSqioPpUFtyniwVvWcAIdVT7+QJPryLg7Js6NR
	DMQXpDDDp6iUc37xwsYnf/2XyGgqk/YQYoEvkI5TCmsUoCBeLYav4NAalTBbnwzV
	3nH/ho1qjmbxiqlexlxIUuG+aInOVhnRhInYWCZorxsgV4Dlgr6oWIM5kGBvExQD
	60uNFNMb67sukN880iVc9MbzKtatFLf1TMQ==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cmw648dxd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 02:47:05 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-2bdcd394fcbso178872eec.1
        for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 18:47:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772419625; x=1773024425; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GvCgDjdGX42ztielkrXm2FhQj0uEUDj0OeI5oSwBSTs=;
        b=LOb2HiucgqMrdewvZOf+w6Xqu9Mp24Bk7zgmXeA+AqrWuPr/gfMigxUUCCOg9IfpnZ
         HFVOtRWYrqZV8C4n4fZxcvB9cLXxaSIbTM2Nzhqdx0zBClgxa5lR+OMfOMuPXMwZ5G5o
         zCnpI1FymTHIM0zitbXbchlabuhSl/Q7r9kNsI/G/DLYh77vKCsCmXsMd+9CMd15Rmsb
         XiCTN0mKOTVJdu0XwbK+wofD+G5QiWeEVriYQfiP+3h8snFLyeHNKuDVgmt/QquXVBwK
         IR8wmJx9UM9IFEkoxPo4RxiQQ6erh6d3XVAbCCDG/p3s0YD8qvZ8+Q8N3PPbA2++4XL7
         D1QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772419625; x=1773024425;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GvCgDjdGX42ztielkrXm2FhQj0uEUDj0OeI5oSwBSTs=;
        b=bu/X2blmYXD78JotroIw07UUI/9KraO1lzHILpXrXID8GHDa4j6Yw2yRUbuq92AXBa
         ypiyM87yBIHlIvcy7Y14NxNnjzukPwKdzJuhQjNXPpm+qBI1eeT1JcS/RZGmGmIF31eD
         ZeKYaRgDykp02zvRKYECKJ/4qFjczS1rLm4FT7VabjLCoaXXDWfcJwj/wgZCaMey9QuG
         qV8mWA9ceV+8a5rGq6Hql9nrxN3mVS4aM6iJd9a49R29EjE2RysfPsNfrSvY3eMwPA6C
         /JlZsz0lZrSTNQRjQhIWN4FNTlW7MtF5H8y5FrDZuRngIqbr40kZtOLkfoYGNR/WS1O/
         89yQ==
X-Forwarded-Encrypted: i=1; AJvYcCWE8v+ybb89HQYPfN0+nInE6XwgQ+EN4WfuuMBzXGZzp9WusHYFPpjCE3C3h0MAPJJAIF9HCynNBh1j@vger.kernel.org
X-Gm-Message-State: AOJu0YxI1pgwKbBinVg8EFWBO6GrA3nV1IL8zitY/+WSwi3OnuUyLD9g
	pJamqjnW2NGKWxnalfCJw1eyVYToYnj9oa8ZnJMe3HM2+YXPCc8n/ado/GZmSuZU+v23KQE7WAU
	7lDVHNmJ3iuRzzZWWFEONU0SAqnPbERu5aD/C867wmZaZPstrhSIWftj1b4iBOgpf
X-Gm-Gg: ATEYQzyFkn+Wo5SGNOYmuP0lE7K1H6k8wSCl9PKGSoS6IPO8J1U/OSlTGVlkTEfuQdg
	j4v4rLs/bQBMx1ajSyPJ7YZmyI2ZoPaQkzwGcb5hs20Rp4c2JARxgRvlkhr1xBm8hDWdKxOh7OW
	h6fa55lXjfndAAfIy1GWlRmMmpC7clkHZp0jT3RGablOOsxx0pnpHE0wbcktAIv1iabdPK07B7f
	VrnT+J+bU3hsW17HeqPIajKF2t+06Sry21cR4L5jvhU+8W2w1izSVpfboH+sWokAqbBk7GXMhfN
	rzey5jqeoIJttxnC57T34U1YdQ33W4iZtVnFhZ3PI8jKaHAfY3d1QfyVTbOj0JVtkpYENl5s9Eg
	GDZckX2TJ+7Hr7z5+rJGEpDux354WuIHR6izwn31vJrmj
X-Received: by 2002:a05:7023:b06:b0:119:e56b:46ba with SMTP id a92af1059eb24-1278fcd91f4mr2302112c88.4.1772419624762;
        Sun, 01 Mar 2026 18:47:04 -0800 (PST)
X-Received: by 2002:a05:7023:b06:b0:119:e56b:46ba with SMTP id a92af1059eb24-1278fcd91f4mr2302102c88.4.1772419624173;
        Sun, 01 Mar 2026 18:47:04 -0800 (PST)
Received: from hu-weiden-sha.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-12789a43885sm15274748c88.12.2026.03.01.18.47.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Mar 2026 18:47:03 -0800 (PST)
From: Wei Deng <wei.deng@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        linux-pm@vger.kernel.org, cheng.jiang@oss.qualcomm.com,
        shuai.zhang@oss.qualcomm.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH V4] arm64: dts: qcom: qcs8300-ride: Enable Bluetooth support
Date: Mon,  2 Mar 2026 08:16:58 +0530
Message-Id: <20260302024658.2836798-1-wei.deng@oss.qualcomm.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: mJ2w7i9D44fNT9V0BK9DUuJnt5dJoFUB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDAyNCBTYWx0ZWRfX9G192cCbYSRi
 ler78uV78zpzaEFcWkfA0QykIjpaYHXdKBGYjY2MjSv9NzVnmUNXafVuSh2U3Z2u+IAfItp68tG
 V+eXE9vKLFewftnqaDhikxFKNy07m5UuznqwjPub6keQMST2qBZBIZyfodNBL24EFpsmyuDTECa
 uAOP7hc3oKA3uKisnTbEXdwxWp8UPPvryAbXI4iDCGdso3BPcDdtuBpk+54wws0MtJNb8DwzsVW
 Y/ENly19XPC05PcdK8QOdL/4CZdW8g8kXQPgd0pi6ZYPqzEq5kJwqCn4BmOLiiQPicXTEcqsRvo
 GtkA2erJIhB+dugM/ZaDL8OaCI/wCvtcx80Byw6KrOhljK+2hMcaxt1dM87cHmk8bSnvRuakmBO
 EOXIijsDges6fkajL58gqfzf96x5xsSJX0Z9HlOhhg1JCGOv8q8R+530Kgriv6uQSI8Ej2KNizA
 CgJfIF52QAYbPC0B1gA==
X-Proofpoint-ORIG-GUID: mJ2w7i9D44fNT9V0BK9DUuJnt5dJoFUB
X-Authority-Analysis: v=2.4 cv=I5Vohdgg c=1 sm=1 tr=0 ts=69a4fa29 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=lDHZPWx9vk9YBGX9cKsA:9 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_01,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 priorityscore=1501 lowpriorityscore=0
 clxscore=1015 phishscore=0 impostorscore=0 bulkscore=0 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603020024
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269779-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,holtmann.org,gmail.com];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wei.deng@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BE9E21D289F
X-Rspamd-Action: no action

Enable BT on qcs8300-ride by adding a BT device tree node.

Since the platform uses the QCA6698 Bluetooth chip. While
the QCA6698 shares the same IP core as the WCN6855, it has
different RF components and RAM sizes, requiring new firmware
files. Use the firmware-name property to specify the NVM and
rampatch firmware to load.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Wei Deng <wei.deng@oss.qualcomm.com>
---
This patch depends on:
- WLAN
https://lore.kernel.org/all/20260225071459.1600394-1-wei.zhang@oss.qualcomm.com/

Changes in v4:
- Rebase patches
- Add an empty line before the bluetooth subnode (Konrad,Dmitry)
- Link to v3: https://lore.kernel.org/all/20260225091700.286108-1-wei.deng@oss.qualcomm.com/

Changes in v3:
- Rebase patches
- Remove unintended 'output-low' from bt-en-state pinctrl
- Use prerequisite-message-id to replace prerequisite-patch-id (Konrad)
- Link to v2: https://lore.kernel.org/all/20251118140406.1551669-2-wei.deng@oss.qualcomm.com/

Changes for v2
- Update commit message, add firmware name detail
- Reorganize patchset
- Link to v1: https://lore.kernel.org/all/20251113130942.2661069-1-wei.deng@oss.qualcomm.com/
---
 arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 27 +++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
index 2ed1015b3465..01ec10dd4879 100644
--- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
@@ -18,6 +18,7 @@ / {
 	aliases {
 		serial0 = &uart7;
 		mmc0 = &sdhc_1;
+		serial1 = &uart2;
 	};
 
 	chosen {
@@ -108,6 +109,7 @@ wcn6855-pmu {
 		vddpcie1p3-supply = <&vreg_conn_1p35>;
 		vddpcie1p9-supply = <&vreg_conn_1p95>;
 
+		bt-enable-gpios = <&tlmm 55 GPIO_ACTIVE_HIGH>;
 		wlan-enable-gpios = <&tlmm 54 GPIO_ACTIVE_HIGH>;
 
 		regulators {
@@ -560,6 +562,12 @@ &sdhc_1 {
 };
 
 &tlmm {
+	bt_en_state: bt-en-state {
+		pins = "gpio55";
+		function = "gpio";
+		bias-pull-down;
+	};
+
 	pcie0_default_state: pcie0-default-state {
 		wake-pins {
 			pins = "gpio0";
@@ -635,6 +643,25 @@ wlan_en_state: wlan-en-state {
 	};
 };
 
+&uart2 {
+	status = "okay";
+
+	bluetooth: bluetooth {
+		compatible = "qcom,wcn6855-bt";
+		firmware-name = "QCA6698/hpnv21", "QCA6698/hpbtfw21.tlv";
+		max-speed = <3200000>;
+
+		vddrfacmn-supply = <&vreg_pmu_rfa_cmn>;
+		vddaon-supply = <&vreg_pmu_aon_0p59>;
+		vddwlcx-supply = <&vreg_pmu_wlcx_0p8>;
+		vddwlmx-supply = <&vreg_pmu_wlmx_0p85>;
+		vddbtcmx-supply = <&vreg_pmu_btcmx_0p85>;
+		vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
+		vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
+		vddrfa1p8-supply = <&vreg_pmu_rfa_1p7>;
+	};
+};
+
 &uart7 {
 	status = "okay";
 };

base-commit: 11439c4635edd669ae435eec308f4ab8a0804808
prerequisite-message-id: 20260225071459.1600394-1-wei.zhang@oss.qualcomm.com
-- 
2.25.1


