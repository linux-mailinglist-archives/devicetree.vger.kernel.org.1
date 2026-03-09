Return-Path: <devicetree+bounces-273046-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +BpQAXcEr2knLwIAu9opvQ
	(envelope-from <devicetree+bounces-273046-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 18:33:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB9723DAC5
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 18:33:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 37A5D301464C
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 17:33:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73D692D77FF;
	Mon,  9 Mar 2026 17:33:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GXC1+C5t";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Kw21v+Ju"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 099DB2D3750
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 17:33:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773077619; cv=none; b=ke9ro+dPA45i3mUguVE/9sfPgatnwSLgCaJ8SBWZXpCc4EyTsqeZaz2Q5rxGyglkhAhLSdDzGTVD2kOmXv3MthxVT9FaNTUwE+padBCaMw2I0t8gDLaDthQyoqwmHQf1umgc+T67yXMMxwl7Sxe/6ngZXdMFTpds2WwmL4Znv5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773077619; c=relaxed/simple;
	bh=TLz4jzeiALTc6Eb3FWtI1SdxpImn8cZAqISy3Dqot4g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=kBQJduLfnPLAtbJAO7Zmbz4OpwboF4cuV1Yb0qYma31OTGun7tIFW9Ob7U3TAjkt44vY/PCfbF78UCq2wiLpvhhtfL9kbk0kw/vVFqowhzL1LC585iu5pRy6O3M2LTGure8GIB11X1O6/VkbP/gTP7blWW4wUpqG6X0bqtp1Vvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GXC1+C5t; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Kw21v+Ju; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629HBtjZ3148326
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 17:33:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=PoTS5bu2pOBH2rQMsB31Hs
	J69HhruICKPzfjyEcjSXI=; b=GXC1+C5tKD4hXicHI4iVUuFteLmwA9Zy/qnHtJ
	hZYMYqaYGQD2WBmHskQHm0yHkLpYvo8lpIjlTQiH+BIo5DFysop8BNORWg2rWEY1
	ysmQ2+nUlMqNh+z7j4/aIA2uMeltlx3oaPYI6+imqIHozBa3hP0J29N4d6IHsSD3
	WDaEYSG7F2CAhcbhqEz2LyHtXceU+ZJyPqD/DH4nAeSD6E9WMEVaj5UIwTxPCSFg
	z6DA0MukVDKavNOBxztBYzDnVfGBQwYLbRN5fYg9qLGkiRVY3YaRjlaORR7hUpvp
	Am+H8JQNXFXfwA6n52YhOBpZ2iFoONgWsyLc8fxU1cXwosYw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csv5u9f8n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 17:33:36 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd7d4cc049so1861555285a.0
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 10:33:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773077616; x=1773682416; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PoTS5bu2pOBH2rQMsB31HsJ69HhruICKPzfjyEcjSXI=;
        b=Kw21v+JuiXi+U1qUIwYP+H/b4MrKrJf7v1rGFWq426sDnH2Z0M9lEp3HL1M5ZHO9EE
         D9af6FWg4c2bSnLWRLfjBj8/XDkBrpk1cHIinCckWpfbbp5Jtqf/vb2+fd7/4b286R4E
         FYGG7NQ2JjbrgJKtWEE5FgTmoGHtgY47/06z64SACrCmcWRulsruQe1IcJDQkJ9Ff2/J
         81PIQEcdLgIvywj7loHUnq6W+hV0whovtOIpobyeLsX7HmMZk6/nTL241DFfxuK4ZNgz
         Qn2S6ZyOCcJ4N5TXZs7QLfc/WmhW2T2kDkrE9an9e7z/pFaU1WRi271XMN+LxCzc1340
         LSGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773077616; x=1773682416;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PoTS5bu2pOBH2rQMsB31HsJ69HhruICKPzfjyEcjSXI=;
        b=v6118+uGFX85FdT0W0JPfScOrrmUdfGD+JxB1wS35qBQxeszBt4pEDqlajiPR1m4o/
         2MxNz6O6kXHBndJSKfotQISZYtl9hBWO0XLOyuvKwD3v0EFM0n9K8PYKs7jKzDx2fw/u
         jfrZLb1nLrYSrN0X/+nso2U64ua8RPdoc5AGswg7lf2np6MbdOjyzj5/8Yhzo3nrrgqk
         3PnQmSE+kRXRj++i8GcbQR60Vf/5j2IdtigYGeT014qppi5MeMy8Pbl+HY8rBWDWnTpk
         4cNqdAYGMpHIhr564hgacQPWsvyEXrNVa3il/ofa1qycGgbbhNu3U7lKKllqF3qgVHJC
         0npA==
X-Forwarded-Encrypted: i=1; AJvYcCVXIFXI3QX+mBkoHhhNZZ6RavkGA6LbyNgFOe0N74e0m8lsWKDgH0XeThSd5IpjNjmfxqvOOOp2MFD9@vger.kernel.org
X-Gm-Message-State: AOJu0YxGqMXBJxU6w53xqg968RYdnxe6kDQZYrvE5m643QCzo3GZBmiV
	oSGooAkXswkzR+jwEF/l80anZO1GY5i1Alhc6PpzOKXKqffmmda593b+zhgA1ziMyANQ2UNrP0N
	Ir2M6mkZE1KNyPC0PcI4b8kvRqAh286Bn5/otmWIdVXzYvcdbOR7qFg//yJYLwgZs
X-Gm-Gg: ATEYQzzK2GkSn1RhTT0HX18vi6/bBP5IEt3qNVdJXTLCfUPeYI8L3+gaVT5F0UkEHtQ
	Ev7FRD6UMCrcTMP4zaB+ur8Oq5RMThILwmO6B+QJb5Sb4NyeT5nh9rbQD2hlMAobMRre/Xv8gn2
	2in+/oleIS5j1NA5C7CO+IMSZbQa1+rSpiZ6oQtirya+68tLfG0Uc5x2ChrbjjiaHRgDRjh0SS2
	xuG1PHSXbsrl554Rs/hCUJJFDBxnkmRTmyKfkuGJn7VcfUqpGq8S/hXfwuYoVeHsRP5p/AMnrH8
	iODnUoR4FmjMV9cSBVcDtWOydsGwfSsoiIuH321jUz42fZd0pCn7ajbulHJe/sc17mWu3Iyzk9z
	p/39iHxAZrd6FroP4v2XTvGesrhR9Gg==
X-Received: by 2002:a05:620a:4514:b0:8cd:90d5:92f with SMTP id af79cd13be357-8cd90d5118bmr242656285a.9.1773077616083;
        Mon, 09 Mar 2026 10:33:36 -0700 (PDT)
X-Received: by 2002:a05:620a:4514:b0:8cd:90d5:92f with SMTP id af79cd13be357-8cd90d5118bmr242649785a.9.1773077615392;
        Mon, 09 Mar 2026 10:33:35 -0700 (PDT)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541b6f6e6sm12928375e9.10.2026.03.09.10.33.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 10:33:34 -0700 (PDT)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Mon, 09 Mar 2026 19:33:25 +0200
Subject: [PATCH] arm64: dts: qcom: glymur-crd: Enable WLAN and Bluetooth
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260309-glymur-dts-crd-enable-bt-wlan-v1-1-3badbddd5439@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAGQEr2kC/42PSW7DMAxFr2JoXQIaPMlXKbIQRTpV4SmSnLYIc
 vfKSQt02R0/8PH+400kjoGTGKqbiHwNKaxLCeqlEv7NLWeGQCULLXUrjbRwnr7mPQLlBD4S8OJ
 wYsAMH5NbgNBKX6ua0TlRGFvkMXw++K+nZ047vrPPB/SnEfmyl+H8rAl0icGv8xzyUDXK9LJX2
 JuerGaFoyfyHXYarVaN967l3oxS/BUeqoeuKrqH56XAfr0dEewJIe3btsYMreqwJUvSaD9c6/9
 ijtcPFNMGssyXm23XyANxut+/AWT0J7ZXAQAA
X-Change-ID: 20260309-glymur-dts-crd-enable-bt-wlan-db90c414ebaa
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Zijun Hu <zijun.hu@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=5902;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=TLz4jzeiALTc6Eb3FWtI1SdxpImn8cZAqISy3Dqot4g=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBprwRs9VasoHtO/wG/38wdlq3ak2A9LcI4F2Ac5
 wuM2cX/IUSJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaa8EbAAKCRAbX0TJAJUV
 ViZ2D/9e6mWXQ9pGGmkGlknkgDgfbXQ97Qf1sCK0cgloK2DUecAysAtZ6APsHbLuHJpiaPNbfT5
 72Jr3Qt0V0retoSLY/OjICGyhdr2S1x/oyVCs+X1w0VtBMkib1g10izBa3WycpMLoz7vPTL/GhZ
 ObGYs05iriXvmdUxlUtUJHQulV18JzLfTUCsquejRxhHvWsXgNzK7L8oNGUyqt/Cj0KWPp5pCYO
 eg3wK+OrcUgPcZc+/G6pNinE5mVSDTHuwzllWvUZVrQAcoyAMdOwMP7PJ3hT9JyClluR/ziWLhX
 0l3BN/OYaISCvLnq7nv/1NjO6n3/bVCePRy9cUDuGWq0yprtQmlo3LvgwiDyumcUIaTtof5LrV3
 JzBIzIs20jQ6wRO146pKXoTTZ+qt/ZLp7SIBOV5TU3JuaHBm4ryJiUcnBQT+rQCqIOh9z9upPD6
 s6aAk+mojKbOZ+OYULVO5qpFVgoOIFfF0u/dVNZFJWlnZfVOGuXZAIaXfgfA3smqO+vU+iYoaiZ
 YgmLaSNBJ4u40imzYpO6qrlWxnzc4dmMflJ/kFfQYoHvhlO6tC9ulJieaF51bKhDRFrmgL22h1D
 rtq1L94ntv3y1vnpXNN/WrW/WPZVJjXb7PMefyM0j1Xwftsr3wi7j/z9SwSXuR4sBYrwOGTULO1
 z29spdDVPacsrag==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-GUID: y7_sYSLflBDBCQ3xBlJo7JQ5IwmxZjmE
X-Proofpoint-ORIG-GUID: y7_sYSLflBDBCQ3xBlJo7JQ5IwmxZjmE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDE1OCBTYWx0ZWRfXx2HE6mbZneQS
 /Cvrl62AQ1B9o4+DYpAFKJ7oSr/SI8XnDxRZwuLjg/jWYlGLFbVTjVNrSFVifN4JrmvLWZhdP/i
 aCbWZu+9R3g/PHXOFk4UmZtPKpkE1w3yeUwva0k7ldXfv/gyz/EUvoe57eb/+9vZe2oAoc+gND1
 NEo6vActL1F9Sv9jYII4sqMle6BcnapEc7kPIFtyw8km3buc/AtzLPhFP+DcQ3MTOs+hRF3nNv6
 TaCKl12HfkxyKIAEu48N4pM5KfULN6nzPhVopQDSUFTQhOJpBwvSIkfyZDMuGDLuL//NzG+mO2p
 AVbL6ZcHCJXOh4Ou00TfECinSkowp26eRrmRlxXgOZfY2qWLiHpZlUypA1hdEU64XLicMwVkCeN
 RqkaU8K6bCtFzmmDte4q58ccLRU+pPA7eq4wuFtB0RYtCK6VxCsNriOedF1PHpxbnY/puUROn3p
 FW0OVYeftKo65u4ptsA==
X-Authority-Analysis: v=2.4 cv=Xr/3+FF9 c=1 sm=1 tr=0 ts=69af0470 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=GPKmwmUXrvMFAArN0YQA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_04,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 spamscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090158
X-Rspamd-Queue-Id: 5BB9723DAC5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,0.0.0.0:email];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273046-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

The Glymur CRD features a WCN7850 WLAN and Bluetooth combo chip.

So describe both the 0.9V and the 3.3V regulators, then WCN7850 PMU and
the PCIe WLAN and the UART Bluetooth nodes.

This enables WLAN and Bluetooth functionality on the CRD.

Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur-crd.dts | 119 ++++++++++++++++++++++++++++++--
 1 file changed, 113 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
index 0de7d35e1148..bcee513e477b 100644
--- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
@@ -190,17 +190,27 @@ vreg_nvmesec: regulator-nvmesec {
 		regulator-boot-on;
 	};
 
-	vreg_wlan: regulator-wlan {
+	vreg_wcn_0p95: regulator-wcn-0p95 {
 		compatible = "regulator-fixed";
 
-		regulator-name = "VREG_WLAN_3P3";
+		regulator-name = "VREG_WCN_0P95";
+		regulator-min-microvolt = <950000>;
+		regulator-max-microvolt = <950000>;
+
+		vin-supply = <&vreg_wcn_3p3>;
+	};
+
+	vreg_wcn_3p3: regulator-wcn-3p3 {
+		compatible = "regulator-fixed";
+
+		regulator-name = "VREG_WCN_3P3";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 
 		gpio = <&tlmm 94 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
 
-		pinctrl-0 = <&wlan_reg_en>;
+		pinctrl-0 = <&wcn_sw_en>;
 		pinctrl-names = "default";
 
 		regulator-boot-on;
@@ -219,6 +229,66 @@ vreg_wwan: regulator-wwan {
 		pinctrl-0 = <&wwan_reg_en>;
 		pinctrl-names = "default";
 	};
+
+	wcn7850-pmu {
+		compatible = "qcom,wcn7850-pmu";
+
+		vdd-supply = <&vreg_wcn_0p95>;
+		vddio-supply = <&vreg_l15b_e0_1p8>;
+		vddio1p2-supply = <&vreg_l18b_e0_1p2>;
+		vddaon-supply = <&vreg_l15b_e0_1p8>;
+		vdddig-supply = <&vreg_l15b_e0_1p8>;
+		vddrfa1p2-supply = <&vreg_l15b_e0_1p8>;
+		vddrfa1p8-supply = <&vreg_l15b_e0_1p8>;
+
+		wlan-enable-gpios = <&tlmm 117 GPIO_ACTIVE_HIGH>;
+		bt-enable-gpios = <&tlmm 116 GPIO_ACTIVE_HIGH>;
+
+		pinctrl-0 = <&wcn_wlan_bt_en>;
+		pinctrl-names = "default";
+
+		regulators {
+			vreg_pmu_rfa_cmn: ldo0 {
+				regulator-name = "vreg_pmu_rfa_cmn";
+			};
+
+			vreg_pmu_aon_0p59: ldo1 {
+				regulator-name = "vreg_pmu_aon_0p59";
+			};
+
+			vreg_pmu_wlcx_0p8: ldo2 {
+				regulator-name = "vreg_pmu_wlcx_0p8";
+			};
+
+			vreg_pmu_wlmx_0p85: ldo3 {
+				regulator-name = "vreg_pmu_wlmx_0p85";
+			};
+
+			vreg_pmu_btcmx_0p85: ldo4 {
+				regulator-name = "vreg_pmu_btcmx_0p85";
+			};
+
+			vreg_pmu_rfa_0p8: ldo5 {
+				regulator-name = "vreg_pmu_rfa_0p8";
+			};
+
+			vreg_pmu_rfa_1p2: ldo6 {
+				regulator-name = "vreg_pmu_rfa_1p2";
+			};
+
+			vreg_pmu_rfa_1p8: ldo7 {
+				regulator-name = "vreg_pmu_rfa_1p8";
+			};
+
+			vreg_pmu_pcie_0p9: ldo8 {
+				regulator-name = "vreg_pmu_pcie_0p9";
+			};
+
+			vreg_pmu_pcie_1p8: ldo9 {
+				regulator-name = "vreg_pmu_pcie_1p8";
+			};
+		};
+	};
 };
 
 &apps_rsc {
@@ -616,8 +686,6 @@ &pcie3b_port0 {
 };
 
 &pcie4 {
-	vddpe-3v3-supply = <&vreg_wlan>;
-
 	pinctrl-0 = <&pcie4_default>;
 	pinctrl-names = "default";
 
@@ -634,6 +702,21 @@ &pcie4_phy {
 &pcie4_port0 {
 	reset-gpios = <&tlmm 146 GPIO_ACTIVE_LOW>;
 	wake-gpios = <&tlmm 148 GPIO_ACTIVE_LOW>;
+
+	wifi@0 {
+		compatible = "pci17cb,1107";
+		reg = <0x10000 0x0 0x0 0x0 0x0>;
+
+		vddaon-supply = <&vreg_pmu_aon_0p59>;
+		vddwlcx-supply = <&vreg_pmu_wlcx_0p8>;
+		vddwlmx-supply = <&vreg_pmu_wlmx_0p85>;
+		vddrfacmn-supply = <&vreg_pmu_rfa_cmn>;
+		vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
+		vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
+		vddrfa1p8-supply = <&vreg_pmu_rfa_1p8>;
+		vddpcie0p9-supply = <&vreg_pmu_pcie_0p9>;
+		vddpcie1p8-supply = <&vreg_pmu_pcie_1p8>;
+	};
 };
 
 &pcie5 {
@@ -873,7 +956,14 @@ wake-n-pins {
 		};
 	};
 
-	wlan_reg_en: wlan-reg-en-state {
+	wcn_wlan_bt_en: wcn-wlan-bt-en-state {
+		pins = "gpio116", "gpio117";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+	};
+
+	wcn_sw_en: wcn-sw-en-state {
 		pins = "gpio94";
 		function = "gpio";
 		drive-strength = <2>;
@@ -888,6 +978,23 @@ wwan_reg_en: wwan-reg-en-state {
 	};
 };
 
+&uart14 {
+	status = "okay";
+
+	bluetooth {
+		compatible = "qcom,wcn7850-bt";
+		max-speed = <3200000>;
+
+		vddaon-supply = <&vreg_pmu_aon_0p59>;
+		vddwlcx-supply = <&vreg_pmu_wlcx_0p8>;
+		vddwlmx-supply = <&vreg_pmu_wlmx_0p85>;
+		vddrfacmn-supply = <&vreg_pmu_rfa_cmn>;
+		vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
+		vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
+		vddrfa1p8-supply = <&vreg_pmu_rfa_1p8>;
+	};
+};
+
 &usb_0 {
 	dr_mode = "host";
 

---
base-commit: 5138081b838d92e1bfcddc7b72b9215cca6e83f0
change-id: 20260309-glymur-dts-crd-enable-bt-wlan-db90c414ebaa
prerequisite-change-id: 20260109-dts-qcom-glymur-add-usb-support-617b6d9d032c:v4
prerequisite-patch-id: df42484b224c01014637ec5a8f56bab459890557
prerequisite-patch-id: d986d8d948eaf7b80028b2244750dc7aff7de307
prerequisite-patch-id: 7ec5f802a334d96421d8f95d4d9e9773655cc947
prerequisite-patch-id: 8d9e016b49979fa817cf9eab70b809fdb9d4656f
prerequisite-change-id: 20260109-dts-qcom-glymur-crd-add-edp-03f0adde9750:v4
prerequisite-patch-id: df42484b224c01014637ec5a8f56bab459890557
prerequisite-patch-id: d986d8d948eaf7b80028b2244750dc7aff7de307
prerequisite-patch-id: 7ec5f802a334d96421d8f95d4d9e9773655cc947
prerequisite-patch-id: 8d9e016b49979fa817cf9eab70b809fdb9d4656f
prerequisite-patch-id: 6a291fd702870ca28d64439313d498593996b741
prerequisite-patch-id: c96958ab5c5605fb9577645ac5bfe5912cdfebfe
prerequisite-patch-id: bfa283218723a48e54fcd842484b004c877339b7
prerequisite-patch-id: 346f2db0933c551a039f63b945f989a5c8320657
prerequisite-patch-id: 919020405b70d588fa4356a5cbfb44e67006102e

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


