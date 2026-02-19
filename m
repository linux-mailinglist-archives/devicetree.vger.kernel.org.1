Return-Path: <devicetree+bounces-266656-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kKidH+MRl2n7uAIAu9opvQ
	(envelope-from <devicetree+bounces-266656-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 14:36:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B2E15F21A
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 14:36:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2F26A301CC6F
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 13:36:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E184733D51F;
	Thu, 19 Feb 2026 13:36:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QrOKaUNy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BhPJJktQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E91E2EB87E
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 13:36:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771508192; cv=none; b=DLRtvIDLMg8zA0pqRMneR/3uJnLY9UXXZGOXLDgi7YnaXTPwcKMciVN3HVSk3U1nBiA4YMeJw6GzNBzoy8R4NbzciH9aKvhVxohejXdIn5bv5mTnkfWd3pQ66Z8+/vCFf3e8YEtBzGvnZhxtS0x6UxG3PkG47pVsDJohJE99Z1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771508192; c=relaxed/simple;
	bh=+5XQHmu2U4WuwNjDEL3ujcWuVAFarNyjLQrPe//3z7E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=HhvuDBy+J3AxchaF0pi1NrRiLzrNzq84f7JfolyDohPY/GykIB3jAUHdvVvfzJlNTOlMtV5cC7Js6xPjLYuoZI5sHN6JSI5tkonQA2l2g2WiVQX53LWTv/Xgpy41QTRG+i+3E5yUFxoAaErglYQFhGmV+xZKJLiw+Rd+TDS0ihs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QrOKaUNy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BhPJJktQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61JCOZmg408676
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 13:36:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=/Q9EcX+k20P6PgWd2zIhrI
	cxV339V+I9p9uMoW9+0Ok=; b=QrOKaUNyYmnbUGKyIyv+MP1dcdCOCsInhOF0te
	Ed3c9URiiqkZbzs0CXnyEoYdJpH8xmB1tFzRIVGBPhxL9OxbDJ+9YyPjR5Isk/fg
	CSVsEWlslo7giDIGf3UUs0pPgv3LkbryDZQ9oU/4I1qmRn5Gw82wcozaHwOyLmtD
	3IgJG47skpPH54a/Kd6Quttf1qXLsgB25ve6qcdFaE9+BkoWZ33lbnkRw9wOG10S
	y2r+6vPmb4pxZegyziN/NCgO2UIA7uyO3tvPMmZ178OrGb/PxX206R9d2SBadlef
	sbqSzANDdLciSYEJHuDUAMTr8c4GfYyE1N51LwDPhTpyWf9Q==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ce2geg6nk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 13:36:29 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c6e1d074b26so562526a12.3
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 05:36:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771508189; x=1772112989; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/Q9EcX+k20P6PgWd2zIhrIcxV339V+I9p9uMoW9+0Ok=;
        b=BhPJJktQBGrHeixkVd0Z2Lv7fVGEGz279RXgsMz3rXg+Ics2sitEOg/Uw+1jv26Am3
         h31ulZdeZBRaGmRWRr+fKhgHJrG7JQCPYv6Cnw5LuLHyiYBPyfRZ0V8hz4VpZcdsxEdo
         qjbg2YMcUy0W8+cal4kD+t+1FEEVn9M3qN0g6qA3VPxt4kqFfc08JLfuYNSGvr8U5yyP
         s9XMVJ+kLNfiwBhxtopI+l67kFi3/DEqcS7U3qydpNFzZG9VBA8lXPoAf7MxzwROX03P
         JGkrkuAGL+Bc+THvQ3TRTa7Pfi982BsNhmu/rCuqx6TNyKDkpqkX9Xu6x3opXYLn4XCT
         pk1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771508189; x=1772112989;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/Q9EcX+k20P6PgWd2zIhrIcxV339V+I9p9uMoW9+0Ok=;
        b=Fi4qDk3Y62XSE8gaHKLy0c2oMUQdyjwFu9Y7NSUfJSs557HyAbD18j/KoKDVrGp9gj
         Ld1dL03WMdy53Je7Uhv4zLNlcTEorwnDOQNCH78gmvTZYnf5a0vjXylBwKg1rlW2qoeW
         dwzUDhKpZoizw0GJl1SjoftmvXi+dcYAIczQysaqQ1mSGcooC2ge8Ps8bSjOlax1y/lj
         kY2UZBOLGjzTOEvYVoOJeU7fQ4J0T6+8rUoG1CNkrby/GpAWOldHSKgWQOzgtDtnDE96
         NrSAnIYMEmV1f+X0DMEqlk6G0EbUYLHvaSRXacAaShedVsTKALVgdYNkGDvgbXc034lM
         2xgg==
X-Forwarded-Encrypted: i=1; AJvYcCUaq63ApLMT2HDrqqk3rGof6Aj5Ak9IfgJgjwoM0JxiSMS/uacgKPPIDV2N5tHscSxaMd9BiQm5py2o@vger.kernel.org
X-Gm-Message-State: AOJu0Ywy4Ehao9gDdrMP3VLAGKehHFJekPG1kUkwKa0zVOnYrTfZxz8U
	I/G8oBd0x4RMj9VkUq5ZTX2Ft4POXPipmyTVh5KpsCZnhIo6IbvYUGWa6bc9/7CkO+bC0Xq0m3U
	HlssHR5WRhoxJYB1naEZ3t0vbZ1PHVlECoxqSCvSF8oLuSa5Tnsm+OGuIMY5+ngee
X-Gm-Gg: AZuq6aKfjRa3l7iosxc5nlLYl7Gt6RGrtoHisWOyTWjax74gcw4F9PJXH9B44S4WISu
	SIpqu2w8j7kWYLA7NdpnEoxGwYzkAemjz6uZvESFGq44Pwoq2tE3BFgSfcn0SE0K4tqZLnOsgJ/
	r+DOD6hhzQFPMWLqDyHGcPzu+ObztVHL03M1YSdj4BMD9qIeavx3r0s4AaNmya4CLNacENZ5Coe
	LbkyhUg+AGiHznUJl4fa87Lebn/6TbrI+8NVdTZRUvmjYTfYLj/RYzD1WydH6tZaG6vnTUu+WcK
	ZOTniBBvw0ENapRGF/l+ABzrEY9M49G2KrI6O4v1T1fKoR1uC9iULAmD1S9rb2ubRe3jTatISbr
	LhRDyLr16uudYN7qFbZHQdXK2ejzKz9BW+hVLQZQe4DTOofoKBBcMUauxgRyG6A==
X-Received: by 2002:a05:6a00:3e23:b0:81f:5198:ba2d with SMTP id d2e1a72fcca58-824d95140a6mr16748397b3a.18.1771508188993;
        Thu, 19 Feb 2026 05:36:28 -0800 (PST)
X-Received: by 2002:a05:6a00:3e23:b0:81f:5198:ba2d with SMTP id d2e1a72fcca58-824d95140a6mr16748374b3a.18.1771508188527;
        Thu, 19 Feb 2026 05:36:28 -0800 (PST)
Received: from hu-botlagun-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-824c6b94562sm19648014b3a.54.2026.02.19.05.36.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 05:36:27 -0800 (PST)
From: Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>
Date: Thu, 19 Feb 2026 19:06:12 +0530
Subject: [PATCH] arm64: dts: qcom: lemans-evk: Enable mdss1 display Port
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260219-enable-edp2-3-lemans-evk-mezzanine-v1-1-969316806538@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAMwRl2kC/2WQwa6DIBBFf8WwfkNgsCJd9T9eugAdKqlgFW1e2
 vTfH63Lbia5d3FO7jxZpiVQZsfqyRa6hxymVIL8qVg32HQhCH3JDAU2AqUBStaNBNTfEBSMFG3
 KQPcrRHo8bAqJQDryxigkanpWQLeFfPj7SH7Pe15o3opr3UsWKWf7cR2r3SSUNKqtWy5RKaEBY
 SumC++GgXp7mnLm82bHboqRl/PWfEOkFlrWKDhiLVQrQEK8bmktqNO8hi+Cs5ngXYS1vMCKFo1
 Bbb3z1BzqrimTHJLWxluFvW/x4ETDzq/XPwkwjY1HAQAA
X-Change-ID: 20260219-enable-edp2-3-lemans-evk-mezzanine-1bef9932ee6d
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, venkata.valluru@oss.qualcomm.com,
        jessica.zhang@oss.qualcomm.com,
        Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771508184; l=3025;
 i=venkata.botlagunta@oss.qualcomm.com; s=20251110; h=from:subject:message-id;
 bh=+5XQHmu2U4WuwNjDEL3ujcWuVAFarNyjLQrPe//3z7E=;
 b=QpWYvp3Gt3H+v62AFTuoOipWt4TszbbLUFahMYHmPyc0pWUQv/QGjkcMkMmIIWFie44WvH9Eh
 xPfJxJH2/00C8YyFo4Gl3cHXiVk7/P4qc262N4WlkcnrUTDMlDmGQ8n
X-Developer-Key: i=venkata.botlagunta@oss.qualcomm.com; a=ed25519;
 pk=/SnYBwlkTzDCLnHFgEY0qFwPgKIV+aQWRbc3naiLzrk=
X-Authority-Analysis: v=2.4 cv=Z5/h3XRA c=1 sm=1 tr=0 ts=699711dd cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=lcgM4KOETyTTvZj5T8AA:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-GUID: GrjKXcVKjYelJJFs763XeHX6XLotxeJK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE5MDEyNCBTYWx0ZWRfXycOYVq5Qwy8L
 5QhNJv99YqHjBnf4Sa5riB00bqFVygA3r1Y43OXWF/DIruSGNmrXkdmgoZqaA66Y+K+QSV2PcQc
 /N0Ihf+9lBft+rYvVO3p14rOgEKoLk/p4sz4yzkZ4fDU+Ox7yXPvbrejayTRbtrFVJRWX88K+yH
 pKvU2bWhauw2qtME4KAaotuutzjgirQ/v/DuN/iYyRE/gHL/YHBD9Tk2tIgyXMDMSQoIG7dMvZn
 POATuw5LsnGdE4+qW7KsHtQUGESGf9NDHQ2Rhrn94xdrmrgoi6IM/rRJNveu5lTFFKlkglaTvO+
 K/htlh85hdv2d521l4b8rpxlLU0UkCGmASUzMmSaFOQ9mDANjC2A7tsYE3/YxrAe2rMkBqPZK5P
 D1dO8QAKToTFR0GpMQKCgAZUIJcMRX9uHqVa++ttLx8XaYyQcK3tB6+knXttAfWawGbqk4EonZa
 zyE5ft4z7XgNUnudg+g==
X-Proofpoint-ORIG-GUID: GrjKXcVKjYelJJFs763XeHX6XLotxeJK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_04,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 bulkscore=0 adultscore=0 priorityscore=1501
 malwarescore=0 lowpriorityscore=0 phishscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602190124
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,0.0.0.0:email,qualcomm.com:email,qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266656-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[venkata.botlagunta@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A8B2E15F21A
X-Rspamd-Action: no action

This change enables DP controllers, DPTX0 and DPTX1 alongside
their corresponding PHYs of mdss1 which corresponds to edp2
and edp3.

Signed-off-by: Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk-mezzanine.dtso | 73 ++++++++++++++++++++++
 1 file changed, 73 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk-mezzanine.dtso b/arch/arm64/boot/dts/qcom/lemans-evk-mezzanine.dtso
index 4fab96ba873c..52f890fa9ab3 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk-mezzanine.dtso
+++ b/arch/arm64/boot/dts/qcom/lemans-evk-mezzanine.dtso
@@ -11,6 +11,30 @@
 &{/} {
 	model = "Qualcomm Technologies, Inc. Lemans-evk Mezzanine";
 
+	dp2-connector {
+		compatible = "dp-connector";
+		label = "eDP2";
+		type = "full-size";
+
+		port {
+			dp2_connector_in: endpoint {
+				remote-endpoint = <&mdss1_dp0_out>;
+			};
+		};
+	};
+
+	dp3-connector {
+		compatible = "dp-connector";
+		label = "eDP3";
+		type = "full-size";
+
+		port {
+			dp3_connector_in: endpoint {
+				remote-endpoint = <&mdss1_dp1_out>;
+			};
+		};
+	};
+
 	vreg_0p9: regulator-vreg-0p9 {
 		compatible = "regulator-fixed";
 		regulator-name = "VREG_0P9";
@@ -179,6 +203,43 @@ mac_addr1: mac-addr@0 {
 	};
 };
 
+
+&mdss1 {
+	status = "okay";
+};
+
+&mdss1_dp0 {
+	pinctrl-0 = <&dp2_hot_plug_det>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&mdss1_dp1 {
+	pinctrl-0 = <&dp3_hot_plug_det>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&mdss1_dp0_out {
+	data-lanes = <0 1 2 3>;
+	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
+	remote-endpoint = <&dp2_connector_in>;
+};
+
+&mdss1_dp1_out {
+	data-lanes = <0 1 2 3>;
+	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
+	remote-endpoint = <&dp3_connector_in>;
+};
+
+&mdss1_dp0_phy {
+	status = "okay";
+};
+
+&mdss1_dp1_phy {
+	status = "okay";
+};
+
 &pcie0 {
 	iommu-map = <0x0 &pcie_smmu 0x0 0x1>,
 		    <0x100 &pcie_smmu 0x1 0x1>,
@@ -273,6 +334,18 @@ &serdes1 {
 };
 
 &tlmm {
+	dp2_hot_plug_det: dp2-hot-plug-det-state {
+		pins = "gpio104";
+		function = "edp2_hot";
+		bias-disable;
+	};
+
+	dp3_hot_plug_det: dp3-hot-plug-det-state {
+		pins = "gpio103";
+		function = "edp3_hot";
+		bias-disable;
+	};
+
 	ethernet1_default: ethernet1-default-state {
 		ethernet1-mdc-pins {
 			pins = "gpio20";

---
base-commit: 1a0829927afbfe654c632eb2e779fa32df825b06
change-id: 20260219-enable-edp2-3-lemans-evk-mezzanine-1bef9932ee6d
prerequisite-message-id: 20260203193848.123307-2-umang.chheda@oss.qualcomm.com
prerequisite-patch-id: baf07fce333b86c35c3d4cefbba5800a519952a3
prerequisite-message-id: 20260217071420.2240380-1-mkuntuma@qti.qualcomm.com
prerequisite-patch-id: 74a76fd6a1129cdbbd32d91d2a119d693dba78a7
prerequisite-patch-id: f4a858f7e707c8e330daf2ea1f4da58b4da00f05

Best regards,
-- 
Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>


