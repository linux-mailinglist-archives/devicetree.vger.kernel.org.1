Return-Path: <devicetree+bounces-319554-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0RFJDKivRmpmbgsAu9opvQ
	(envelope-from <devicetree+bounces-319554-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 20:36:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id BC1CB6FC227
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 20:36:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b="kH/LVAXN";
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b="Z694M0/Z";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319554-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-319554-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 13B3D302D340
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 18:35:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E15B6369234;
	Thu,  2 Jul 2026 18:34:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EA09369225
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 18:34:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783017275; cv=none; b=XNIvqNhABRCBoWyGgc6EEVXXfnmgPIGqM96Hi8mR9XOFe9BvYSD54TmizTXbsTrW4EycRnxe4iHW/WrkvaCULl7GYrlf2b0w0mmSAgRBzE6kuecJIo5pFcrhcMYxagfvgM1xXgvOvbsIqqJl60SXmlZs48THGSHtMv0TxwQ1eSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783017275; c=relaxed/simple;
	bh=vEZCAk9bX58jYAl+/vm7G2IzcvyJQv724sGua82/GL8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SHBn3giJKqZhMpNpc1s2drS58cj11InEQZlndr9AYpEGc79PHOTVrmfj5979Yl1dF+eMqazhWVydko+le6gXn/aYmAIF1GOVOsC/nrQQJiVCpSMU0JsJeGlivM4WtY+vPmWkSHh4Kt+tbWCk0bYBqfeRR7a4d0VB5h0Lw8ciqgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kH/LVAXN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Z694M0/Z; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 662E3MxA663488
	for <devicetree@vger.kernel.org>; Thu, 2 Jul 2026 18:34:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	INxEC9lkQk8WXwhSmUHbixXVYFbQZX7AQC+fRCLBU1Y=; b=kH/LVAXN8uwmEPzx
	0i0s3Crsm+jNbPl7M2PjPVPV5GFLa6IvAvMvSnoBPi+4xydboQHQc72cLyhLwzhp
	49tlfJGzDYL2ViY0zJDC733Zm9pjEAc5BeXEWn9mMyxKpqRBET3jGi6oYs9LD658
	7nFXvIm2WKz4/rdJC3dsA4AFvzlVTLzNwYr5JQtLv6WSyMhHhT2Gs8pYv6bMK2gu
	dMCw8s/K7RZ4otbiZ4QA7ySJZIFUX9lYRqj4prDHvuCrsxNO6NEz87eCZtkGrLFK
	4mtNdH9dhy1EHIz9DSJZ/hNki7Wq3RiXMi2o4raeN+AUihNLSUWiwdPgF/DzlWfl
	H55faA==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f5qfc1tyd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 02 Jul 2026 18:34:33 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c8620ee0971so2212637a12.0
        for <devicetree@vger.kernel.org>; Thu, 02 Jul 2026 11:34:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783017273; x=1783622073; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=INxEC9lkQk8WXwhSmUHbixXVYFbQZX7AQC+fRCLBU1Y=;
        b=Z694M0/Z6+pBVaLOnyX6jO7ZZX/CSxIKQRhMO6VN6AJ5+eB0aNn59UBCz9S24AcaHG
         eFq2CPLNVBjpPMZGOZ2oObAGwfsc2POWTCtkfXsZ9gVru8Y2EqQl7XyhZxYgsmkgzzoE
         2eO/HcDp16HgDJnemabSnqvXND5/oGNuuvEgmBlpnbwmjpjSHGQLTEAOtt9xuqTAj70s
         nhZ3nnhPy4+ofwrAeIuPZsgkKw/qlLH95nWOMFzIt7/yLEvgy+2K3nHCZJlwlS9DsNwh
         8N8CGLko69z84qRkJtgYF9jClDJM+sG5/PCdLcWyQ2fIIPZGCUBTeniYmWeWtvbC5Kfi
         Jxig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783017273; x=1783622073;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=INxEC9lkQk8WXwhSmUHbixXVYFbQZX7AQC+fRCLBU1Y=;
        b=neGfoDlGL54zLdWJ9jQpVKnqCth3M0BmW8zrfHg3hnBGr+U/o/Wo5KjZyudUN0P/r/
         GzHFiRa0oGClvv+9n8mGI8WzqSJfoByZCf9Mdlr+x8sz4dzNRom9JbjbRkAfs9jxkauJ
         BXiz7YzMS3OLHP1U6X1+9HNx9Ig149YyVeflPQAIEytYcR1De+lXHoaRn8A7g/UMl9b6
         OSeDM4Vf8k+Sivk71WabLaCHFnUg58NIzLDWHFFeRMhuD66j2jxCg9jJyGjsyHcyUhll
         wYx2eNCsO/ePbm7lnDPFbl7+4M6n/3carwSxVmtDUkMs+6atF9Y3msyHm9+KHCIayT1J
         c2pQ==
X-Forwarded-Encrypted: i=1; AFNElJ+RcAjJsSVmHx70678F5wvuXjeR/ZtRGqfNxl3KG/oo9dSIRHpY+dBR3gm4JaRvamRSVSjHdPxdpioP@vger.kernel.org
X-Gm-Message-State: AOJu0YwJFEF5A3kTc8zUSyAULyrPp5V7BcBDsLvZXFMUMZgYMZY8hyey
	vT9SdOzGJkt09DcqNcj4LDVofXD2mZPqt4uYk9FA0Y/KotQudhsEnaLWT2/t9V2Dx6iqMQ1D3mz
	l3YU28B58Fqk1BrGgUfU1BoIRIzp4NOm/oQjgMI21AnXohWuuKATOB4nviw8KA76p
X-Gm-Gg: AfdE7cmQ/QPKO85IZTLp0b7XWnJfZ9pnzouD/XfesTGIqZL/e7o+UNFfi0uETRr4S/F
	iP3XDfi9CbCY8uicot4WknsMYcy3Q5XVA6KD8otTQcCfHMbbNmBU6ST+DFRlionv5Jdttb8ft8v
	qGLmNI2uCB/iZHPHJERJqnYI9RwEuS5MEWJqFZmd9DW2b4XtjOXPlAmEyHQsfQuDcRDTDcuIS/m
	nLpIlj7miwimEh8qFq5Kff2Bzq/Qnxxez5RuRDdHLNBk8JSvD+9NTCQptQGPIjA4q+j36yIU1y5
	tKA1nyF/46ahO2piDTeYO05/cGriBFlFSzkGl5oNmKlXKvJrCafkV+oQZbBlO4IMEhCQTZBA2Vz
	Di+pe+cny9rp643wCCf8UlTfx2r7jehgqGagcCWDdfw==
X-Received: by 2002:a05:6300:4049:b0:3b4:84c5:45c8 with SMTP id adf61e73a8af0-3bfed236e9dmr8276185637.24.1783017273221;
        Thu, 02 Jul 2026 11:34:33 -0700 (PDT)
X-Received: by 2002:a05:6300:4049:b0:3b4:84c5:45c8 with SMTP id adf61e73a8af0-3bfed236e9dmr8276139637.24.1783017272767;
        Thu, 02 Jul 2026 11:34:32 -0700 (PDT)
Received: from hu-imrashai-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-13b3c7ef5b3sm15704735c88.1.2026.07.02.11.34.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 11:34:32 -0700 (PDT)
From: Imran Shaik <imran.shaik@oss.qualcomm.com>
Date: Fri, 03 Jul 2026 00:01:39 +0530
Subject: [PATCH v5 17/19] arm64: dts: qcom: agatti: Add DSI1 PHY and sleep
 clocks to DISPCC node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260703-shikra-dispcc-gpucc-v5-17-cc13826d4d5a@oss.qualcomm.com>
References: <20260703-shikra-dispcc-gpucc-v5-0-cc13826d4d5a@oss.qualcomm.com>
In-Reply-To: <20260703-shikra-dispcc-gpucc-v5-0-cc13826d4d5a@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Brian Masney <bmasney@redhat.com>, Dmitry Baryshkov <lumag@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-ORIG-GUID: 4V1ysb2F_oUvgp74OHxpadvGkyk9GDCG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAyMDE5NSBTYWx0ZWRfX1YrzYcwWFSZy
 ePKJ7NWkgQfsE48EumbSYoUYIcf01yCmNt3xvmshP4uMCPOpJ2nw74zRouLqOJDE3H+uAMWTs+3
 VRXUwqVYCZWR/hWm9e+oiFqCXKxjiKaIKEW3FsNlHFhYsBvcAX38YoAQAG91MbremllLu0V1jY9
 eSuzHtMlqQTEIoTiCowDNF73BCzezR5bU3qJLkAZcc0GLxsRiqCqJ5L880DyCVDP56RNdFwQk7b
 s1yGhKiDlopLOUEuBxRMpXZn4+y5aSvwrRGQJsOe036V/RNHBsxRa3WIa/QKaG5iwhn+ZOP8sds
 rv4GolpTeBBUi9QQN0QtM+XQLQ+XLLNNwg8tn8y+4DTm8lSShWXfZl0Uw8SDli/Xi7DlimGw77B
 2hn/zi7yK3wQmtTodEUsdOdt3WHg41ytpXy8UvygieYjTOuRzh8ERnFXKxV9/uklnxU9WPgZoAo
 L9JR9MDLucSHjnTKMGA==
X-Authority-Analysis: v=2.4 cv=dvXrzVg4 c=1 sm=1 tr=0 ts=6a46af3a cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=Gd0QNvzNEKi-DX6Kg7cA:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: 4V1ysb2F_oUvgp74OHxpadvGkyk9GDCG
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAyMDE5NSBTYWx0ZWRfX/WP8wr/bQfXL
 DvEY5LDdanhDRpAHi/QdBqRrAt0t2mo6zH1XRBj4rxTWf13MLXjiffxjlvT/Rno6ALom+bhcK5b
 CuM9QpzCBfJhu4NEOg22B0JFhc7AIcQ=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-02_02,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 priorityscore=1501 adultscore=0 impostorscore=0
 bulkscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607020195
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-319554-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,qualcomm.com:dkim,qualcomm.com:email];
	FORGED_SENDER(0.00)[imran.shaik@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_RECIPIENTS(0.00)[m:andersson@kernel.org,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:konradybcio@kernel.org,m:loic.poulain@oss.qualcomm.com,m:bmasney@redhat.com,m:lumag@kernel.org,m:ajit.pandey@oss.qualcomm.com,m:taniya.das@oss.qualcomm.com,m:jagadeesh.kona@oss.qualcomm.com,m:linux-arm-msm@vger.kernel.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:imran.shaik@oss.qualcomm.com,m:dmitry.baryshkov@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imran.shaik@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BC1CB6FC227

Update the DISPCC node on QCM2290 (Agatti) to align with the latest DT
bindings changes, which adds support for the DSI1 PHY and sleep clocks.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Imran Shaik <imran.shaik@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/agatti.dtsi | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/agatti.dtsi b/arch/arm64/boot/dts/qcom/agatti.dtsi
index f0b6ae9b81528a848a75f6884f1b27137d780f07..f1d93f86d0a62a813f76580362e850ab847e51eb 100644
--- a/arch/arm64/boot/dts/qcom/agatti.dtsi
+++ b/arch/arm64/boot/dts/qcom/agatti.dtsi
@@ -2190,13 +2190,19 @@ dispcc: clock-controller@5f00000 {
 				 <&gcc GCC_DISP_GPLL0_CLK_SRC>,
 				 <&gcc GCC_DISP_GPLL0_DIV_CLK_SRC>,
 				 <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
-				 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
+				 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>,
+				 <0>,
+				 <0>,
+				 <&sleep_clk>;
 			clock-names = "bi_tcxo",
 				      "bi_tcxo_ao",
 				      "gcc_disp_gpll0_clk_src",
 				      "gcc_disp_gpll0_div_clk_src",
 				      "dsi0_phy_pll_out_byteclk",
-				      "dsi0_phy_pll_out_dsiclk";
+				      "dsi0_phy_pll_out_dsiclk",
+				      "dsi1_phy_pll_out_byteclk",
+				      "dsi1_phy_pll_out_dsiclk",
+				      "sleep_clk";
 			#power-domain-cells = <1>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;

-- 
2.34.1


