Return-Path: <devicetree+bounces-268219-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AGrPIHG/nmnsXAQAu9opvQ
	(envelope-from <devicetree+bounces-268219-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 10:22:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A80B9194DC3
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 10:22:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5F793305D93B
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 09:17:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26401389DEA;
	Wed, 25 Feb 2026 09:17:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fthnKRhE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="d4dbD+TH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD997389469
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 09:17:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772011033; cv=none; b=nsdL51/OEj5jb+sOGgHKUI8Ed4QD+/A2nChxcryvqFLFYwswK12Okkol+HEdCb02LEp7WCEGUS1HLV3DYmlPS54j7lXvRricAwkcVlYYDek4RxMkuzq7yOorWefiC6xU2Sz/kjhyqjhfK0rkwSdoy77JZAzu0z/q8+Qc8YvmMXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772011033; c=relaxed/simple;
	bh=vCe6eRdEnoX5wrPjWditaUdOWecdI5Lh6B8J3UkVwCA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=oveHVTevxJeSqovNZZxRaf1SjtqIEtIoww1lbOxOjnHzpaObUxxnwgtjSr96CooaDxZdIICh2QxYD2krTDS8rG7BDsgwMUAhjPfa82pdCllSxKGKrYpkzw81cKU5LyjSKHjkEMCEfnAzqDt6Gx5H3+omTyzdk4Lnb+ZoBU1RwP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fthnKRhE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=d4dbD+TH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61P94dg14044329
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 09:17:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=xyYMQp/RAotOxbl0cC9uDXLVLev7ys7mCX0
	LhQGwDDQ=; b=fthnKRhEFw09Gcwx4k5B7ZdiJ9avCs/yC0mMvfqCZ/z7lxNQeMV
	YibXfcuFSh5WL54o9aYCcdO/wXbZB9azJO20peaqx/2cxspD0ySFn+0ljFPLNRbx
	v7+XdLNFSYIJTiIJjeJKMndIzRtCiPgcyMJGFrUxdH59URjea3w9dhGMaCUxyyN8
	H5Amg1A5AkQL2g7GJbFZqQNMDO12xdC4dAdygU6VSAfpqeU8bzJAZfBPbOFrOOxB
	CiyiemMk2lCwPRq2QV4s6oiMK3lmYc5iMCKLYBQfLQe8BGEQv/OoSjNCSi+Hp19B
	RZXMAPzIUeNxQqywFmv92etNfTNWpP3pBcQ==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chexejwr7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 09:17:09 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-1273a25d558so386642c88.0
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 01:17:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772011028; x=1772615828; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xyYMQp/RAotOxbl0cC9uDXLVLev7ys7mCX0LhQGwDDQ=;
        b=d4dbD+TH+/iZWh1b/2P5AscKCfr9vJrq85ehNaeL8DUaNoHwxWVi99qFCcv+agyhLG
         9PWVJJFOq/YNM0RevXNFlxAJ+Dv2vemmf1LoZipVSKUZCsIPKObd5kI7FLrEEhveHR8o
         mP0ZEFCqrUYjRWi+be7ZUPd9CmcMyC/gL5c/I3RXVh9/W/SKgnpq/5j88aVkxBLXHNyw
         ayntRAhn4qc6jm9dKO/GtVeo8i5vhFdplP0/3NdOnxtZrj8fkyLsPFF4Z1J7ENR7yVA4
         icWife8XbB29yX8hfgB2yKYcfuD3RYs0fL4r6WUZzrqziJOwkqsWkzkPzfPJe82mSXsJ
         7zDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772011028; x=1772615828;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xyYMQp/RAotOxbl0cC9uDXLVLev7ys7mCX0LhQGwDDQ=;
        b=oZySK4XeiFrAdC5ZDDoxuXBD/9WTr8L/nnDIb1kW8oWTCjv8+S7Ia2gThCAxqdX0fl
         bM+jBg9nJqr6Aotundgb3WpkT+shLeLtKwZpIT0I+VP6rg6j6K9RJ9zHpvwY7svTixIO
         2PDl2qAA+zJNIYa5a2YB0y7oW9l5sq++ClB0OZmODyaR+gJJ3pphjSKN+AdZtmJRvfve
         NU+Zhb4i/dnAG+AtjAPpyDiZ1nydPLOPYscKb/G5aAxYIn0s58JB+GXjUIhFYgxsuVfi
         6JcVpCNRcB2wjE9DjYJFSCNODxZLBZdCXicgPZvsVT/A+LmSpnHjj1bgH1x/h815pBuc
         NzBg==
X-Forwarded-Encrypted: i=1; AJvYcCUY7EZLaeLUquXjhUu7faGUYgQyS2ObICnKXSF14pzeyZWcfxVGmzgJ9ir43TrwBLDlLrv0pb6op7ze@vger.kernel.org
X-Gm-Message-State: AOJu0YysbYSwDfamu0pnmfVv4LHn4n6s0RzI8SY/pTd+3I2xynsEyzYE
	IfTdMb1p1wvcqcLJZrH/iNzIXKJV0oAeDBbo/8oF3FBijAy0ejv+d5ozf7E9UUrkmckIgNbtg1h
	Xz/fRPUbUhnWUhTqjASVD3Ny+rDPMg+jm+VWnbJVBl1rOzLATca+wpRbGonKVIMIx
X-Gm-Gg: ATEYQzxrBW36uXMcHeGfwWrHG5ls9+OxvIfgcx2aSiSpnBTDh0Odsh2ErFb8CCO5YiR
	zDs/Cchg+ylz31AVK0qDTeELsV3dJnrpq4c5YMKRtyo7oRY/Hcf3bUD7Gt/NGpRX0nCJ9TT1+Yg
	14P50WB1fjfJYVxnglmfxuMpAORHDqShW363QmBr824z6EqOKMTCGOT568Axlf4K1A5g6kd8+31
	Fwc2UXe9+LN4qqk2i9UE3LkWIFiZlVkVyHLEiJpDT4Mzs9oLH7gFHWno9lDSE3TDtbBouytzL4l
	7TdLMFXbkBgZCAGgitzVIHEoTIdf4lrulFKXGY27LdQkidwecg3PPDr9PzT6Vk8IA92E2ad7dBs
	yz0FeRmBqwm7X1VpDgTHwjcPWOPiukIKRTKc06xhIxenk
X-Received: by 2002:a05:7022:f40f:b0:127:3480:7ca9 with SMTP id a92af1059eb24-1276acaff99mr3188817c88.2.1772011028349;
        Wed, 25 Feb 2026 01:17:08 -0800 (PST)
X-Received: by 2002:a05:7022:f40f:b0:127:3480:7ca9 with SMTP id a92af1059eb24-1276acaff99mr3188800c88.2.1772011027768;
        Wed, 25 Feb 2026 01:17:07 -0800 (PST)
Received: from hu-weiden-sha.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2bd7dc167b2sm8386514eec.28.2026.02.25.01.17.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 01:17:07 -0800 (PST)
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
        shuai.zhang@oss.qualcomm.com
Subject: [PATCH V3] arm64: dts: qcom: qcs8300-ride: Enable Bluetooth support
Date: Wed, 25 Feb 2026 14:47:00 +0530
Message-Id: <20260225091700.286108-1-wei.deng@oss.qualcomm.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDA5MCBTYWx0ZWRfX7YISNj84hN72
 PTf/gK453U6xwV/McHrSkrwzZ0MWuJFYc902yoCgIrhTFqiIuCXz71/DXewwnuh1zbBcfGvHXdk
 5IB508j+av+aJSsGOvjXcmf/YROzg5GU8p35VUwIUMulS8GetOW/xWd5ta2KZMk6neWHeHVs3ir
 OjFIdhawFl6Uj4gSuoncr/qa/j4hTA3NiRGvPixfZ/6JK9cokLnNq0xFh3/D7dQjjIYEG6jV5NU
 tkyg3vXbrUdOqFTCXXScLL3q0auIUKNg382mmhjCgovY0I64Y6LkNXnc6jovaYlAdnNqOi5/VXT
 ctLudoSUn7M2ge/Ce07iuj9pb+bgZcGGB8mDLOcgq+A/p+izD/tCZWZi7AYvQfunrYq/6gZv5vq
 E6FwGV4wRqUWx/qj21ZWWQGqbtQ5MXxyvu+kR1ysjkJQvXv3tDl7t9QZS+/lGDIlv7wt0PSAYYn
 6Zmo4YRzVKKx/SstGxQ==
X-Authority-Analysis: v=2.4 cv=V85wEOni c=1 sm=1 tr=0 ts=699ebe15 cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=lDHZPWx9vk9YBGX9cKsA:9 a=Kq8ClHjjuc5pcCNDwlU0:22
X-Proofpoint-GUID: r5hDJNQVH9s4fav3vjcjio5rkIegqYL3
X-Proofpoint-ORIG-GUID: r5hDJNQVH9s4fav3vjcjio5rkIegqYL3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_03,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 malwarescore=0 priorityscore=1501 spamscore=0
 suspectscore=0 phishscore=0 adultscore=0 lowpriorityscore=0 clxscore=1011
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602250090
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-268219-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,holtmann.org,gmail.com];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wei.deng@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A80B9194DC3
X-Rspamd-Action: no action

Enable BT on qcs8300-ride by adding a BT device tree node.

Since the platform uses the QCA6698 Bluetooth chip. While
the QCA6698 shares the same IP core as the WCN6855, it has
different RF components and RAM sizes, requiring new firmware
files. Use the firmware-name property to specify the NVM and
rampatch firmware to load.

Signed-off-by: Wei Deng <wei.deng@oss.qualcomm.com>
---
This patch depends on:
- WLAN
https://lore.kernel.org/all/20260122053624.4068718-1-wei.zhang@oss.qualcomm.com/

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
 arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 26 +++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
index 2ede6efd1afd..03c01ae630b4 100644
--- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
@@ -18,6 +18,7 @@ / {
 	aliases {
 		serial0 = &uart7;
 		mmc0 = &sdhc_1;
+		serial1 = &uart2;
 	};
 
 	chosen {
@@ -107,6 +108,7 @@ wcn6855-pmu {
 		vddpcie1p3-supply = <&vreg_conn_1p35>;
 		vddpcie1p9-supply = <&vreg_conn_1p95>;
 
+		bt-enable-gpios = <&tlmm 55 GPIO_ACTIVE_HIGH>;
 		wlan-enable-gpios = <&tlmm 54 GPIO_ACTIVE_HIGH>;
 
 		regulators {
@@ -559,6 +561,12 @@ &sdhc_1 {
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
@@ -633,6 +641,24 @@ wlan_en_state: wlan-en-state {
 	};
 };
 
+&uart2 {
+	status = "okay";
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

base-commit: 7dff99b354601dd01829e1511711846e04340a69
prerequisite-message-id: 20260122053624.4068718-1-wei.zhang@oss.qualcomm.com
-- 
2.25.1


