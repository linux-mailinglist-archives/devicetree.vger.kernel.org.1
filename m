Return-Path: <devicetree+bounces-258738-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +nQpECEfc2l6sgAAu9opvQ
	(envelope-from <devicetree+bounces-258738-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 08:11:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D9B6F71759
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 08:11:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8F4C53016904
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 07:11:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE16A35A95F;
	Fri, 23 Jan 2026 07:11:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SXFidl5T";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kuqu6ITx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ACED4315A
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 07:11:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769152265; cv=none; b=BpO8tJHE0opkRIUQaBF0F9eiaCWYGWr54J5uPOi50nL33zsCJw7kaKKYeLGQHfnhXuL+rPlNvx300PvapvvaI2ZwfR/I5Xjax6gMalma1Ogs/x7hWdDAEsNsg536uNe0wuThjVNxthrFgxLzrfr8VO0owBzAIxoxCqe1dtAxlh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769152265; c=relaxed/simple;
	bh=TylLAhNCMKqVBj5uxnqA+4lw1pa3tSVa/3CyKMBGtrI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=dJdLd9Ou53EpLXHAqmKTtR0mDKfcxB4UguPLQiAmMoJ2GN0AkZWMnfkWf4nLKMtBzPZwWqyRZZHPzfKfKGXwCXVOHtGMrEBpGWXRJ4+d0zy0x+srMXSYGMh2THC5TwDGxprj8r0YF+Y1PLCYph7vNERmzLhbhF4s4LTHxmK1rvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SXFidl5T; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kuqu6ITx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60N560NV3656019
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 07:11:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=p8hHPfRk20SmhnrK+fPq3K
	Tueqe9Ig0bSHfFCJNpDLk=; b=SXFidl5ToW/Qk/AuI1qDIkuUk+R5ru71gLfc/9
	4HO6PCLvirPMK62qFC75MhcrbFAIcB5vU3LQxTPFjopG1eXrzQDhJ9y0Rb6jNEnV
	6X03QYRHkBJeER2E4ZTVQDUaWV5x6iG6p+F39O016CTKsNVIu/Jp91imcd13XSvE
	9F69VUpnuljAWYpGjz/qflZZeMBJlOH55htIz6E9xr+EYrnmok+cx292gO9g//rM
	a3YwMuIOWbWb6Q4zLrqsr7gJQTO2PnuETiKtohJ/kUnHXcc5lTd5jtVRTcfDPpwB
	igKSbxUDKj9quY35O5jZpHgJ69JuLamTtXugdrSkQAMeFgcw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bv2hw8cpv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 07:11:03 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-35301003062so4190408a91.2
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 23:11:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769152262; x=1769757062; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=p8hHPfRk20SmhnrK+fPq3KTueqe9Ig0bSHfFCJNpDLk=;
        b=kuqu6ITxYyOHzSJKKqIg1cI8is/PLkAwyiRs1PE6JHILGrS2AjhMnO11XFPhHW3D28
         YPz+kmq10gXCGQ7NxE3tGssOiju8Ox4y1ZROSGUziwjk7dpKwnsHV0rrvvU4an7tH0xU
         U73VmbV9RbNZQop9Hlzsm2tgs5vg+1NBuVBxiBx9UiRjPonMyypmxMhgxaUFgLkbUiIm
         O3n0VpjmCB4Rme7zLMFwp8+UNdGmJ2gT7LCBUFeN962Y7SWYUdgiP5U3fxnICNDSKvo0
         aLcVyrTRdbUIaKeKcnxURL67SKw3D6MWJaOEw+Mtlddj/5c+7QfkGdbYfAz4pDwFwXOS
         xqwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769152262; x=1769757062;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p8hHPfRk20SmhnrK+fPq3KTueqe9Ig0bSHfFCJNpDLk=;
        b=dCY0Vv0WqNZeDG38tZbSNOCh8tcmJ6cKWcSAIUmsXgs8CZ82asRUUvxf9qz0/3Guc5
         cMN+DjlZXxCoeVBZSPnxl+GSInIi6V1r2ZohAMKs5C+uoeo66BmTOJFDCrnPgsgBTeh6
         LIy1U+vmXd/5DP41l2ehbqLjF0aoq/fDVgrnD3eRTaEOIscduQn/CMt8zpgi6wfBVjfO
         TRooRw5Sd/9+vGwMAYu3WGYiokNYqQXvR8/gKQeNV6btC235skVc91adsPBlUhxDWN1H
         GrHjGLLI//9OSGTeiVRq5rGS3SfGFByGbqAw7NFpMd85vghthoNbKZt6kw17HZ9FWrGI
         wkXQ==
X-Forwarded-Encrypted: i=1; AJvYcCXsqhksO96MmrTEXppEtt+Biof5lTLFjRkCz2OXSU6+MAnYxGo83jhbiZBfJ0YY+nUMz4CXcgCxzlA7@vger.kernel.org
X-Gm-Message-State: AOJu0YzS+XHlDSIUAztxeyCzY/G+VRDpqE88cv7LUgLrmCxjx1XloP5i
	sM6o4ILP5SbWoZnpUXCpGjpyca61nnnczthGXTRKpEn+J2+Yi3tvdXY7xztp41qMh9N7v48z4Ty
	vgBpwFwIRDxiugya9o6s/4y+FIN6zo7Tfj+gC7RTNx89KxxmfiUDrov9pCqJnkac+
X-Gm-Gg: AZuq6aKRlXteih5VGttyPuzg1eG0yV/SALcl2p95ASFxChegvUeB5/9edGtybhp9MyE
	jOc//aR39HRw4G7e79oLnHmntWbDJ/sl5xPmtVYJTe0rSp5olOj/aT1f/HDuM4CGStAhuTEjjPx
	lm9M5ssGXwoKke2hTtkW8JFksbdco1ZDFWkZ4DL93zH4BZuiY+00QNO1wXNs9CAHG1xqC1eq3lh
	KM7YG7X+5n+ZpUuj+B3v5216obKMgFnepWYWEh2Yo++9hw16n+qE18e37SFB/2yG2kbnXMLI0U1
	+rJPj1DqTnzjQN/v1CmKSAKrHEjgdfhB5neETZkq/JUxYns/pxoYPG6HcM3VA7QSfdQr1FYROa3
	mGU8a8k8rfhgU6kJjvEcyuKe2PJp6OqOrS0eJUR/lrW/+zYT/1Ax/w292VGXhQZVeQVLOUaLg
X-Received: by 2002:a17:90b:2d08:b0:340:ad5e:ca with SMTP id 98e67ed59e1d1-353670247b8mr1984480a91.12.1769152262173;
        Thu, 22 Jan 2026 23:11:02 -0800 (PST)
X-Received: by 2002:a17:90b:2d08:b0:340:ad5e:ca with SMTP id 98e67ed59e1d1-353670247b8mr1984455a91.12.1769152261708;
        Thu, 22 Jan 2026 23:11:01 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-353354cdcc7sm4186703a91.16.2026.01.22.23.10.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 23:11:01 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Fri, 23 Jan 2026 15:10:46 +0800
Subject: [PATCH] arm64: dts: qcom: talos: add ETR device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260123-enable-etr-and-ctcu-devices-v1-1-5fbb3423a2d7@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAPYec2kC/x3MQQqFIBRG4a3EHXdBDaTaSjQw/asL4XtoRRDtP
 Wn4Dc65KSMJMvXVTQmnZPnFAl1X5FcXF7CEYjLKWKVNw4hu2sDYE7sY2O/+4FBCj8xq0k1r264
 zVlM5/BNmub77MD7PC51dWxptAAAA
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769152258; l=1494;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=TylLAhNCMKqVBj5uxnqA+4lw1pa3tSVa/3CyKMBGtrI=;
 b=E/DttrUEv/8zvBF1jdeWvGb5BPHXBK+AAX9eCZSHF06CNSsHoI98qvpxlpoURwTm9HRU64XCG
 VygRyRUk/cMDj+nE8njHEsEp0qTPdtDvpiYg3yPThjmYaa4H/t+K0mf
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-GUID: _it2DsdgxlrJUl9uL_3AWEguYX8Rry0J
X-Proofpoint-ORIG-GUID: _it2DsdgxlrJUl9uL_3AWEguYX8Rry0J
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIzMDA1NCBTYWx0ZWRfX/DYzU4n+xgGH
 SIen11iozI+eL0Ik/EfjrL4/Tf+Zgf92797gHh6olbTWK1zWcDzRktNslQ6v/T/f9vsnTHZHHS5
 +7/INLGNvOu0sSdzxh1vTK9OWaN0frx9YI0JyLRCMsLedRZpecSh3hfefOaUPU0f5JBOIDeEbRP
 moH1oyRQBfNRngMywd+V2lEhPbtEVtOaGYXBJRF6JChSiQavCUwDfwK6r4CRdCvcQ8gqQxI+DB/
 JzemZGiY5MymI78tWYfVC8oFxFQ8vilgSs/jU8up+ccfaTN8cqyO+JqOnfYo9a6Bsfke1ITd+JR
 UjI8EksVrcZqMh2KGkE6aixl7T3+Zpkpx/c8UifZ+h4WuVl4crEriBe9ODNIk02V4nDwMJe5woD
 MmgO8PgR07gwsOqhYPIiAOZH5GM+ohpSbj27JPhegsd7JYD7b8WzWQynpSqKb8eskqYEz+jz8wn
 Fr0SjaxLQ6xVunVRl/w==
X-Authority-Analysis: v=2.4 cv=A4Rh/qWG c=1 sm=1 tr=0 ts=69731f07 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=rJ1OjL6diA_ycIJh-hIA:9
 a=+jEqtf1s3R9VXZ0wqowq2kgwd+I=:19 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-22_06,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0 phishscore=0
 priorityscore=1501 spamscore=0 suspectscore=0 bulkscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601230054
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-258738-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,0.0.0.0:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,0.92.73.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,604a000:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.1:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D9B6F71759
X-Rspamd-Action: no action

Add the TMC ETR device to store collected trace data in DDR memory.

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/talos.dtsi | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
index 75716b4a58d6..3b081ce9d202 100644
--- a/arch/arm64/boot/dts/qcom/talos.dtsi
+++ b/arch/arm64/boot/dts/qcom/talos.dtsi
@@ -2253,6 +2253,14 @@ out-ports {
 				#address-cells = <1>;
 				#size-cells = <0>;
 
+				port@0 {
+					reg = <0>;
+
+					replicator0_out0: endpoint {
+						remote-endpoint = <&tmc_etr_in>;
+					};
+				};
+
 				port@1 {
 					reg = <1>;
 
@@ -2287,6 +2295,25 @@ tmc_etf_out: endpoint {
 			};
 		};
 
+		tmc_etr: tmc@6048000 {
+			compatible = "arm,coresight-tmc", "arm,primecell";
+			reg = <0x0 0x06048000 0x0 0x1000>;
+
+			clocks = <&aoss_qmp>;
+			clock-names = "apb_pclk";
+
+			iommus = <&apps_smmu 0x01e0 0x0>;
+			arm,scatter-gather;
+
+			in-ports {
+				port {
+					tmc_etr_in: endpoint {
+						remote-endpoint = <&replicator0_out0>;
+					};
+				};
+			};
+		};
+
 		replicator@604a000 {
 			compatible = "arm,coresight-dynamic-replicator", "arm,primecell";
 			reg = <0x0 0x0604a000 0x0 0x1000>;

---
base-commit: a0c666c25aeefd16f4b088c6549a6fb6b65a8a1d
change-id: 20260123-enable-etr-and-ctcu-devices-0b1386899261

Best regards,
-- 
Jie Gan <jie.gan@oss.qualcomm.com>


