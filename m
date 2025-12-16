Return-Path: <devicetree+bounces-246993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EDACCC2DEE
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 13:44:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EB554313CF63
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 12:20:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96462361DAE;
	Tue, 16 Dec 2025 12:08:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TS8YYneZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HBSjRY/H"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C57535A95B
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:08:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765886922; cv=none; b=CuaQZBGYg+aCNWjeePvXDlPDspphV1MPbn+Q/LFJGYSrhfBJo14TOMASFm8LXUT58iPL6yw7hIcnnZtHWIWoUqKQ9KGePFgOgB6WXsplaxInztT20TQF4/F15f0/oob1tOD46iMcZcEBXL2wVyC3DAIWY/nRnSD1+Z0f8f8dPXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765886922; c=relaxed/simple;
	bh=2b1Alj3wBZKsar6ol3N/z7tGI3xylLbJNIQYpSw6+AU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=aQvAp2pUkyrTFZ1MqbilkyngNbL8xrBsF8NQSwnoC5yCrceEVA+f6kL3vULTweqm4hyDWjYRb+GIoDQVuIF5tzrCqOC8b342vJ6ebWvkGkZ+5CqODmn5woanTS616Y4wA2XLAnU975dYVFhw68FgFb/ukQsm/+oKHckxQS0UGus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TS8YYneZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HBSjRY/H; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BGC7I7u3708638
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:08:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Tqcwn+P25d0
	0PMlHe5d9yaW8K4sqII6hMYNjnSzNAbE=; b=TS8YYneZRRWGhwZNfTDlHZRS2Mx
	xmiqRBzt7TB3EJLD8FzQMd7paehPEoBwiBFBB5zosCEtxh+MQcA3zcPlRidiXhBU
	NdT1zDPBmwpwwBXGuhz+FMjcnAqPoPjVnnd1dD4wEa1c8yy+KhLpDFx1EPSyG1dn
	KT59RsNYTWKDYnlUrcRzIDTT1qi90hzPPpuipR679hXPfnFQ5VLnJyXG/pxNdjpI
	0euuue/8BG6R69RUgZCPhBlLfiOMY8se+E+/lckdlN/t0vLrY0WjizXl/elMRzEK
	6vO+q+7S++zWHLVN6yyv5wvKWi+bUgVWFbtyLWq4+YNwjsaNZFjjcAVIvxA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b375b009p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:08:40 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a0f4822f77so56739795ad.2
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 04:08:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765886920; x=1766491720; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tqcwn+P25d00PMlHe5d9yaW8K4sqII6hMYNjnSzNAbE=;
        b=HBSjRY/HnkZPRZg67xLdP2GRK0PiL7Shb8hipve1M8nrdkJSdpOhoaoi5n0Uc5JOc2
         VoqYGVLyL04V2jAn6j6Vu+ntrqlwYw/BXW+89QIwE8GF0nfjerAZdYSroIq8kMwPyIrw
         MqBYSfUgeVMygIXI9gtnWS3iVSUE8G+lug25LKOJ3pSyjU4O3UEB7yo3ZNPLKCLJxCBp
         QU5JcKhFyZZqtIkHZSKjQmisWW783LmbqKH5a87MsUMiINw94rMoKRBAoQ8SW6CaG1lc
         0E8QDB5R6JJyRjmFKyvgYZVqLcv6kxXPRtJRwbEGVuTePS7fKw5XHjepVAQ8zVjtfee3
         I81g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765886920; x=1766491720;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Tqcwn+P25d00PMlHe5d9yaW8K4sqII6hMYNjnSzNAbE=;
        b=g7+L/tYDYEbpk/zvHOGVPsQl8+KEzjDrECtQwBUGVsUqM98Az9raWC/bzL7+gJ84hC
         kYPGR5Q0d+aiFYbtZGudJcKB6O+BFRMhBNdaIdRCABaiVbygCJx02XvPG9z95gVnQRwk
         kPE3LQ+ATn52mP40l4Q2Fz2h4AuEbHzMiooXwBIxhF+2pIuDt43aj1ZaCw/RSEaF4SMA
         uqNQOnZeJoeTHIG+kAMCgTAbZEiIaIkwtEmns4MZnfQaVIsy45vktMfqrivNNlLBU/1M
         muOdCvkdTuo4a3rYTDqXyZCCdcpnEMYGmN7x6V/NVvBw4Da8aqC4H1NJY5vyIuDSJWNP
         2t1A==
X-Forwarded-Encrypted: i=1; AJvYcCXN2LBdO0zUsVRsBh6bNkCACmcMFJw8fRDaflcL1HN8eHfNI9Ejg61Uz02ywzgQ9HhTCcdtiQkvhb9S@vger.kernel.org
X-Gm-Message-State: AOJu0YyWq9fjdn48hDUH9mR4Z9Sq1OGYSmgAh1xNrla5ATJZjafzEH8a
	GDujo9cMRR+BeQDy0BoJ9oqhXMu39X/AWN1XkJkCh1+ItE4MFL+mJPghIZCGui+erz24XPcONir
	/j8mZnl5tgVBnPihlYiyrgwqRiwFxNcCppyVYt519aPcifP8NnhWJGGo0TpNuiDfA
X-Gm-Gg: AY/fxX5pTE655bWl6dticjs/Uv8PiRNegGcFQgElV6uycwdZaQ7fpxwTjzZY0T0J+WE
	dgb1dOWnVUfYMAeFfhiamKODJN4acP8SSkthWCsz3IM2hnELn/y7p1Br72Tx6YfmTXcbjDfsGh+
	1LWH8K75XtydlekdQfpEArzqL9B0pspAEJv6AioPN1YC7pQoDvrdzVxYQfJAcNCXJI4aKLs6hst
	ZPblcEfco3lsdsCKwwXN0ew7a2EYnRGUQmfs4bjutr4TxS+pYCOwqeZE7WhAiJ7U1Rp5MJN94h9
	6ayWeINVoiurHjZ3FGplaTOdVSL/5FyLYFxBhm0DI9957lDerqFerkgd2vP0FFZBuYOJ9GeTvWa
	ZWwipsTs8SRHw1wPVyunK4VPHC5RpdIa7xy55nUzAaSo=
X-Received: by 2002:a17:903:40c5:b0:295:543a:f7e3 with SMTP id d9443c01a7336-29f23e55ccemr126913935ad.27.1765886919707;
        Tue, 16 Dec 2025 04:08:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH1ZncudyMaD+WtlZSwHsMeY1HVl6gGe4UsDzx9nAXmNaDnHbPF+ZYcS9Fcal82pvdLUkYzHw==
X-Received: by 2002:a17:903:40c5:b0:295:543a:f7e3 with SMTP id d9443c01a7336-29f23e55ccemr126913405ad.27.1765886919150;
        Tue, 16 Dec 2025 04:08:39 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a110f6374asm48568695ad.63.2025.12.16.04.08.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 04:08:38 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Icenowy Zheng <uwu@icenowy.me>,
        =?UTF-8?q?J=20=2E=20Neusch=C3=A4fer?= <j.ne@posteo.net>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Mike Looijmans <mike.looijmans@topic.nl>,
        Pin-yen Lin <treapking@chromium.org>,
        Catalin Popescu <catalin.popescu@leica-geosystems.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Subject: [PATCH v2 3/4] arm64: dts: qcom: lemans-evk: Rename hd3ss3220_ instance for primary port controller
Date: Tue, 16 Dec 2025 17:37:48 +0530
Message-Id: <20251216120749.94007-4-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251216120749.94007-1-swati.agarwal@oss.qualcomm.com>
References: <20251216120749.94007-1-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE2MDEwMyBTYWx0ZWRfXxpeuMPFx2DSz
 EeF4JXU4N1qXqU5msK1CAAeTfQ9ToIb9FZPmZ9h/+vzYOvoJUUWmZCFLM5V6RD78FhJ4kGX51R6
 m9aFP345pL0qHPsWmf1i8aOecAvh8nf+3Z3rq/y/SpUAHJ/Z9JYhuUHvmMeI6xxN39NUmxcLY3V
 f36xt1BstISxc+7gtwi/SbVJUxrXoxtc9P19+Wg2knFyZ5UdB5vABWqfmaB2wsq8E0iakN+CHuK
 Hxo2awrdmg0ldWdX/tyIr2C8v12jAswio2bbEgXDw0X+Us+2x2yvzlZZaAt8wZ1m1Av9+R7fewK
 ztOWp3YKfJiMrnVTNKeR3w8QDqih0ORxkRdd9VOfqJw0tZ2hRXA5Gxc+r4XzQnlaBjoF7etLF8H
 sPCu3OgwumtcRL1AhmM99FnAf20BzQ==
X-Proofpoint-GUID: r3EJqyEMhutv6D8OWdN9BPUAaHYLSjKO
X-Proofpoint-ORIG-GUID: r3EJqyEMhutv6D8OWdN9BPUAaHYLSjKO
X-Authority-Analysis: v=2.4 cv=T9qBjvKQ c=1 sm=1 tr=0 ts=69414bc8 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=NdE2umm2-Z7CMbYs9IQA:9 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-16_02,2025-12-15_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1011 priorityscore=1501 impostorscore=0 bulkscore=0
 adultscore=0 spamscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512160103

Rename the hd3ss3220_ instance to improve clarity and simplify usage when
adding a secondary port controller.

Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index 2536ebe36edb..70d85b6ba772 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -61,7 +61,7 @@ port@1 {
 				reg = <1>;
 
 				usb0_con_ss_ep: endpoint {
-					remote-endpoint = <&hd3ss3220_in_ep>;
+					remote-endpoint = <&hd3ss3220_0_in_ep>;
 				};
 			};
 		};
@@ -513,7 +513,7 @@ ports {
 			port@0 {
 				reg = <0>;
 
-				hd3ss3220_in_ep: endpoint {
+				hd3ss3220_0_in_ep: endpoint {
 					remote-endpoint = <&usb0_con_ss_ep>;
 				};
 			};
@@ -521,7 +521,7 @@ hd3ss3220_in_ep: endpoint {
 			port@1 {
 				reg = <1>;
 
-				hd3ss3220_out_ep: endpoint {
+				hd3ss3220_0_out_ep: endpoint {
 					remote-endpoint = <&usb_0_dwc3_ss>;
 				};
 			};
@@ -885,7 +885,7 @@ &usb_0_dwc3_hs {
 };
 
 &usb_0_dwc3_ss {
-	remote-endpoint = <&hd3ss3220_out_ep>;
+	remote-endpoint = <&hd3ss3220_0_out_ep>;
 };
 
 &usb_0_hsphy {
-- 
2.34.1


