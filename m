Return-Path: <devicetree+bounces-262092-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cPNAC7KugWn0IQMAu9opvQ
	(envelope-from <devicetree+bounces-262092-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 09:15:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8018BD61AA
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 09:15:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9097D314FA19
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 08:09:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B82A3939C2;
	Tue,  3 Feb 2026 08:08:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Kmb3gAAl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="j+Ao8n8T"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B951218C33
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 08:08:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770106137; cv=none; b=jXCPxGhTWQh8XGpDsyAv4D4HAdU5BSa4mO4XBgoIkGTBy6j0CdbmvZ/Q6BVqjuxolCV5nMa9DmkV/wP8fXBxuYoi5GRrTS8jn3j7/lWVSdnOtekOIrPUkmDMTQV249Jcxtg5tJu9blQYZ9Rc4iFgHAa0PwwluC0ga5d0xOGWs2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770106137; c=relaxed/simple;
	bh=MmRh2JiBpDaFVC7myctfzKWNEp/EVU+H7DSEDhr01cc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Xbkx0yxW1xOaPqJt3ZcRX+/vFrYSKLyujPpYaHmazv1c2bh+0sB7QReL5T6hDaVmS+XlpXhoaor3evJ4M+BDIZvwd2Mh80k2HXaoCo1INUC49ljETJqdMwK5xw6DB6tWYzw2p/ePUJhb9TNcwjtSlifjU4+oNZUbuvk9bHz3eI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Kmb3gAAl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=j+Ao8n8T; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61360cYW3915983
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 08:08:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qltUqOfSxitFH26aqGz70TycTTJ/d1VqzyG6H1vAznQ=; b=Kmb3gAAll5yvulU+
	8SW/Umnsaf/SrAe6K8/zgygRNEZwPloxzX+1ffLvUY/YXgkS2Np2ELv7VhhflTgx
	vv/OXo2zmWensOwpYVf87F7gQtfWhjYxH2RMIJxbE9c73y6DMVw1Ai7Z3HmJAwwt
	0GF4a+wBGowhbTmno1nCDSrbJzMo0mxUcq1eeHwpNN4JdkdEAiDgj5tU6UCkjQ1J
	aOvgoIeDqodskNtfL/EZDqS3Z7wI8sDVwRZ+EGvQKykXC3h8gpfRM1tUnC5LiDez
	MN9CHj86E6oWoG4gVXA4vF9pwj7Tja/OS3kUyDNSA6CKnNL7ot4OJtmtYC6Fq3c3
	LFnadg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2tkmkgyn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 08:08:54 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a0b7eb0a56so48811245ad.1
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 00:08:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770106133; x=1770710933; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qltUqOfSxitFH26aqGz70TycTTJ/d1VqzyG6H1vAznQ=;
        b=j+Ao8n8TXSa1hjCq4nPxNqRA3XbTLvlffvNoVdrPR/KxyN6bwQrccZwXe2M3oRU0xQ
         qHoXLdsh65IVM9qH5Psmk02/V2DZi9rD7SS7bnQHDk02gRUMnm7k9bqWlM9gVz7vd6AL
         q6VWY9yExThTnlpoZxilOCAeuMzYxlMhkPg1ybu7OKxq5mNhIcsXbrwVY+kaFp0uYnp9
         UrNvFpVJ5w7E03jqhDV6Qt87KqIw/BrPYHcSGsBLcBRfM9jQJioWUC04BJEpP2ieu0T5
         QskE0EeCYU1vWcHWMdqNVhRU2MVvyjVYuhRFSvCTDyhgxfkqf85OvoPTsBTU324I+mnj
         dRGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770106133; x=1770710933;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qltUqOfSxitFH26aqGz70TycTTJ/d1VqzyG6H1vAznQ=;
        b=U1M2jOZ4tc8otm+9jkov1BdRNvmjrNLVjg6QKLMZj2uyB9pY+P6pvJFCCxTZoyAGGY
         lNCUFrgC2JgArUDt20BU7YI2inLEiDX6+QDtw1xky/U68wB5GHJHyUkYKi0f5ORSYoqw
         yRR9gi1AInwfJZN8eN3ANa5l5QimMuD+Qz09At04xk8LlE+WCovcrl2aWAbBnJwLrcgj
         JcR4sDxYfDrEiVMc/2MG+btonALKUg2IQDV1E2V75WK6IQK+E4LeIqfWjQWYqdHVqhEU
         O77gtZFqyAPIWe+H2DGbBIk5nPAEQR9++uApicLcY8iDiyBnfR0vHyAIPI2pi30i1trT
         m5Qg==
X-Forwarded-Encrypted: i=1; AJvYcCU/pqx5dMqVENH7QJJRermOzFUOXT9vh47jChbNCCIpGiZjzY2Er4c2WqlGLqjcLfrEmKwcMhzZVKeg@vger.kernel.org
X-Gm-Message-State: AOJu0YwYoShqUUvfl8chryLpuRBXdv8jux5j0ehQH+9aZvDan7lUqylg
	IwDBul6VeunBpGQEsLdE0LOzgXXSE/ZgdDUTMB7sq2QIuFvE8B2d0WA53xuEOqh+sFUxoQVKO9K
	ArECFdUzC9Dfig7cvDSVYwg4eKP/gxd2dKElOcn7EePWb4IJHlX6N+dcDkGiQOzLw
X-Gm-Gg: AZuq6aIU//6C8v9Vm0tHwjLS7ucRb8+hDTkfRAYALRUgnnNeKmiPgD5HLzxAvR1jrOU
	kYw2kLS6FCm1aEkFKxGh8vBCbwBg9R1akPGuPje7YNPU1Vhu0lPUSg3G1t1ckwOftGl89QCqu7v
	jhY3nQLNi9HaGQBpe1seGe4SK9oe9ZRcscAHRHjDypnHcJLsr6BcBmGiwTijQrzS1mV+ryVmF/S
	QCAcYXd9vLx6ZqlTmCELEn/n0NqUEWysjG7oBanR68TCtY7Hdrni1oa0RaEHj3n3QKuHYidKUoi
	yxwnDkauQDHGlCYIFcojKxmuH7p+fz47LzF5Dj15O74FF2a74f7gCCG1rRu61B9AuA6LCSVN2GU
	8DW064zmnIGi2JJmwpmMNZcJ0LRZWjBPj871U28aQ+5Euyp+AkEKqAn3KBl4P6LzmmHz5EpUI
X-Received: by 2002:a17:902:e944:b0:2a1:e19:ff4 with SMTP id d9443c01a7336-2a8d8037a5dmr163075585ad.29.1770106133366;
        Tue, 03 Feb 2026 00:08:53 -0800 (PST)
X-Received: by 2002:a17:902:e944:b0:2a1:e19:ff4 with SMTP id d9443c01a7336-2a8d8037a5dmr163074945ad.29.1770106132506;
        Tue, 03 Feb 2026 00:08:52 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a8e512bc2asm103144485ad.100.2026.02.03.00.08.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 00:08:52 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Tue, 03 Feb 2026 16:08:25 +0800
Subject: [PATCH 2/3] arm64: dts: qcom: hamoa: enable ETR and CTCU devices
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260203-enable-ctcu-and-etr-v1-2-a5371a2ec2b8@oss.qualcomm.com>
References: <20260203-enable-ctcu-and-etr-v1-0-a5371a2ec2b8@oss.qualcomm.com>
In-Reply-To: <20260203-enable-ctcu-and-etr-v1-0-a5371a2ec2b8@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770106119; l=4204;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=MmRh2JiBpDaFVC7myctfzKWNEp/EVU+H7DSEDhr01cc=;
 b=jXw9fBnOgTrZ64vwsEqqkAQfIpgHq3+uHhp5p5GYasFIVD1lh+OeEnkOv9lE8MKFA72vV8hNh
 NP6O4dYOisuCASDplk71WBQAAZVMv19h3nLZedGgA6tQ66OdPKki6pH
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Authority-Analysis: v=2.4 cv=TaebdBQh c=1 sm=1 tr=0 ts=6981ad16 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=kFQAvpsttJVeTngcj60A:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: JS9ymdrA0d2Tf5nztLFpZnvVO3n6-B_V
X-Proofpoint-ORIG-GUID: JS9ymdrA0d2Tf5nztLFpZnvVO3n6-B_V
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA2NCBTYWx0ZWRfX3OGBmB8irXoU
 t4IeX/7ZVUX7J++bZMD9tBXQo645Z30unQlAOgqLEx6MtCfkZcPI+3PLw6zcgxRRXe2tzBJRoEL
 SoRfWPN2kRQQzOIEDFhYYMZ1EOIb+FmjmPnGKBUNoX4fuy28eDxCyQZzS/aYLjEFVCebx/JW7PR
 0J0OYxipG0JbF7AsRtTXIpUVch3tSinjhDrkG/PfW14FWQRjwSz2I96WJcOj0FsdtvUvqnypiYk
 Opy7+MtsuZ9vhqpVe6Ia2swel1sWss4CwdtNv5yEzYgKTDybJLcbb+ov1ZclLsKAHURmtjvCiQf
 PHLiYtCFManaY7/2HwzfFRcXR19MYwqan8aMLMsor3ztH0RmKks0n0oKex1YNzVDxtk/6s41roT
 ZF30vRk/KYzBD8DaL1xWh72EklnrY3wkr7hxPeBmLWt4HNfsVZ8Q6DWFMG131xlXJ63R8+knul0
 lsg1gzRiDT3IifpFJRw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_02,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 suspectscore=0 bulkscore=0 priorityscore=1501 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602030064
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262092-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.152.158.80:email,0.164.203.128:email,1004e000:email,1004f000:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.153.74.48:email,0.0.0.0:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,0.153.82.0:email,0.0.0.1:email,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_PROHIBIT(0.00)[0.152.154.104:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8018BD61AA
X-Rspamd-Action: no action

Embedded Trace Router(ETR) is working as a DDR memory sink to collect
tracing data from source device.

The CTCU serves as the control unit for the ETR device, managing its
behavior to determine how trace data is collected.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa.dtsi | 160 +++++++++++++++++++++++++++++++++++-
 1 file changed, 159 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
index db65c392e618..88ec29446ba1 100644
--- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
+++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
@@ -6771,6 +6771,35 @@ data-pins {
 			};
 		};
 
+		ctcu@10001000 {
+			compatible = "qcom,hamoa-ctcu", "qcom,sa8775p-ctcu";
+			reg = <0x0 0x10001000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb";
+
+			in-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					ctcu_in0: endpoint {
+						remote-endpoint = <&etr0_out>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					ctcu_in1: endpoint {
+						remote-endpoint = <&etr1_out>;
+					};
+				};
+			};
+		};
+
 		stm@10002000 {
 			compatible = "arm,coresight-stm", "arm,primecell";
 			reg = <0x0 0x10002000 0x0 0x1000>,
@@ -6985,6 +7014,122 @@ qdss_funnel_out: endpoint {
 			};
 		};
 
+		replicator@10046000 {
+			compatible = "arm,coresight-dynamic-replicator", "arm,primecell";
+			reg = <0x0 0x10046000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				port {
+					qdss_rep_in: endpoint {
+						remote-endpoint = <&swao_rep_out0>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					qdss_rep_out0: endpoint {
+						remote-endpoint = <&etr_rep_in>;
+					};
+				};
+			};
+		};
+
+		tmc_etr: tmc@10048000 {
+			compatible = "arm,coresight-tmc", "arm,primecell";
+			reg = <0x0 0x10048000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+			iommus = <&apps_smmu 0x04e0 0x0>;
+
+			arm,scatter-gather;
+
+			in-ports {
+				port {
+					etr0_in: endpoint {
+						remote-endpoint = <&etr_rep_out0>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					etr0_out: endpoint {
+						remote-endpoint = <&ctcu_in0>;
+					};
+				};
+			};
+		};
+
+		replicator@1004e000 {
+			compatible = "arm,coresight-dynamic-replicator", "arm,primecell";
+			reg = <0x0 0x1004e000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				port {
+					etr_rep_in: endpoint {
+						remote-endpoint = <&qdss_rep_out0>;
+					};
+				};
+			};
+
+			out-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					etr_rep_out0: endpoint {
+						remote-endpoint = <&etr0_in>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					etr_rep_out1: endpoint {
+						remote-endpoint = <&etr1_in>;
+					};
+				};
+			};
+		};
+
+		tmc_etr1: tmc@1004f000 {
+			compatible = "arm,coresight-tmc", "arm,primecell";
+			reg = <0x0 0x1004f000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+			iommus = <&apps_smmu 0x0500 0x0>;
+
+			arm,scatter-gather;
+			arm,buffer-size = <0x400000>;
+
+			in-ports {
+				port {
+					etr1_in: endpoint {
+						remote-endpoint = <&etr_rep_out1>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					etr1_out: endpoint {
+						remote-endpoint = <&ctcu_in1>;
+					};
+				};
+			};
+		};
+
 		tpdm@10800000 {
 			compatible = "qcom,coresight-tpdm", "arm,primecell";
 			reg = <0x0 0x10800000 0x0 0x1000>;
@@ -7298,7 +7443,20 @@ swao_rep_in: endpoint {
 			};
 
 			out-ports {
-				port {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					swao_rep_out0: endpoint {
+						remote-endpoint = <&qdss_rep_in>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
 					swao_rep_out1: endpoint {
 						remote-endpoint = <&eud_in>;
 					};

-- 
2.34.1


