Return-Path: <devicetree+bounces-261884-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oBEWH2LJgGl3AgMAu9opvQ
	(envelope-from <devicetree+bounces-261884-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 16:57:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C1ECE81B
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 16:57:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 07685301CFFE
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 15:56:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D53721C9E5;
	Mon,  2 Feb 2026 15:56:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="llmtW8VC";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SgKtJoGO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5347625A359
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 15:56:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770047778; cv=none; b=cGS+ftYbGHM0EysITUai5nVsfiJlfdVIwuOn02zOjK01ENJvhE3XOqUOf9ZL9ytCB4NgO/9GD5DFUXR3By5BiFrFtYWUah313NIOa1zpd2o8bufOL6neeBvIT4k+e+ak23xOQXBtCT/ljuLxSUcACZgco/e59B5wzY1Rgsa06+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770047778; c=relaxed/simple;
	bh=vuV/PYOxRqDK1yj2KqhBcROSaIuQDTaOAweQPJaWS2A=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=MONiT/XuThsWShnTr8ZnhPfm0RdwENlhJXHRODxK+LWuA9BksKw/BHFTQKkQ+GEsNUv3KBSH6GvYJ5BSLMsfKuV4pxDFHUNWfb2S60HjcH/V0IUTIw07CCsaiWfj+noPgGWJYWzs3LyDL6igFq2Libe0sxMyOZ7WrLsD6WINUR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=llmtW8VC; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SgKtJoGO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 612AP0xZ2100879
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 15:56:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=C7ZGTfPcszDOojkgkxZk10WNWNudcuqiTYp
	0jeL5NIY=; b=llmtW8VCYvvPIcp5nHOAc8ikWYy2A9Tkm6NURYxv2hDBNdqN/jh
	jcbZZiDG2QEFDkJWTyAfhetSqDGnpCimeRlLlmjpW6eOXr36ZarpMeqQVvfLBwt+
	jqtETe01Q1dJPMZrR1wkx1eoaAbcZHuImOirzlGVQc+A0lXbb9mTNOS8UBAYRBO+
	xUtEMIyhVuq0LLCO1f7tpYsMUeRw5HFA3UhXk9YFASKo82W3qK3x7+Ad/ItrE12w
	j1/JBDDUfeGtwL2D4KNFYQ8UVpEmu5UU1g7SkskNxJ1Zh/K0oCGpl0Z1RRjWg1mD
	rkuIJM/T9RG3s64ZQsjX34DZyoB+YRH/Nzg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2t5e8xn4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 15:56:16 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c70ab7f67fso2061400385a.3
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 07:56:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770047776; x=1770652576; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=C7ZGTfPcszDOojkgkxZk10WNWNudcuqiTYp0jeL5NIY=;
        b=SgKtJoGOxIzCZVKIpatlOhLSmyNOsiBn02rJGJw52dnvB6cNa7Ywj5UkZYdLWahZ/n
         mGG1G8sAxlwhRxby2szZ/P9cpb/Gg2Bwv2IiOcTq7pTQtJ5uRYn+kQ5tKPIXwB9gUBcZ
         z/5WxGHf464T+hXN3/HfEQj917lhXeMuQnxYSn+f/yaa+WCMQvafWxZiNAIdy512N1uy
         QfWVMP5K+R+hpmQp1nOdZyoN+AFRtjFSytot5xvI0m1l6mK1fVQJSm+0nMvopD5kx78g
         v61M8b9ve23vjWWQfmF9E3ILlPagwI4/ptIuIS2z0Pldr8yfWFfIwdUHNvJM8Z/QLTyD
         /p/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770047776; x=1770652576;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C7ZGTfPcszDOojkgkxZk10WNWNudcuqiTYp0jeL5NIY=;
        b=T7N29ivWEDPI7JwomowDQ2uEavAR5qOyVFjqjiGzMOEqrVIVOdw94w2rKBH1uDT+EE
         qD7Xr4aNJzKSLuSqNfTTmnES/clayZfBTElNGdgCn8QyTFx+1LfTgpTJmjXbF2hPNJYT
         U3+hGvyjwzvBiRD8DDicwYn7qpmdiaibQlJiKqO41B+uda1br7oBNCE3oLcu9zKArLAc
         qQmg+UdY66Z9+24wVyut8yj5/8BOocjRlwq4vPAirwfpB2eLkDgF/Okli9cbfU572jbm
         /Z8dbbz9KWFnoo7PrK3mA9x2SRLFvnp+Z4LfZ+kwRvRg0YKLX+9Gj8ODoEaIwJ8UTxMl
         UH9A==
X-Forwarded-Encrypted: i=1; AJvYcCUv9rLqs0n48Bjn5JfZ1goLMe/jPHoKofkJlU//1FfMT7Va1wujVPdrqWSW1J7q6jV/wlsVkWRbINCx@vger.kernel.org
X-Gm-Message-State: AOJu0YyNjjvi2RIgw7Vc3usO3Sz7fhMyB7qAjQefnjpjioSPU7AouSdZ
	RjRg7x9MISA6xNy0botiyKU5N5dxBtpdrfim8c70pWiLkQRuZrmWHEwBanESs0I7BevaVDzWZSC
	dzeHJDTQaBQZ+Qr7hFzDyFg1wvJGUdjszuOHNz93VsUT2em8hDl+AYURp514FM07L
X-Gm-Gg: AZuq6aJFbRwx2FzCcTMt4ba9aBt+IGmL65tg7al3z3qY2s6Lm7Z10GGef9yuAIAQtHM
	uu6rB68GPg3x6dUavs/YxXiVcay18awFKNh99/4Z/m9dOQRXJxqqxfwz4FA7UfqCRvSwj+wlgXi
	fynqJBxKLNoWVFz5STGvd9eFI/+5TR8N44bulxCRdp30U6JgaKqxLz/pgTRVmiefhsalshj6QJN
	8L248xaRY5b7yWO8Gz8eLK2YtGJcTotKfvelMgGDfdLmM31Zh19JD80N26tZsDX2pyG+LhMn/ok
	GB6KCDDTcHLoTQCu3y4Si7glloI0sBSrYtEZZDSPwDN0LFeDO4qs8Vh338PE5flTu/E5FOr9840
	xzRD6+DUeZgEDURCBgxyG6Bb2tYsTNApBijItQ5nnSHBjeEmxpSWlMaBEtm2QAF4Ndzn0SszUkh
	qz
X-Received: by 2002:a05:620a:294f:b0:8c8:807d:21af with SMTP id af79cd13be357-8c9eb302372mr1632462585a.73.1770047775745;
        Mon, 02 Feb 2026 07:56:15 -0800 (PST)
X-Received: by 2002:a05:620a:294f:b0:8c8:807d:21af with SMTP id af79cd13be357-8c9eb302372mr1632459585a.73.1770047775325;
        Mon, 02 Feb 2026 07:56:15 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:103a:9c65:ad2d:82fc])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e10edf62sm49308956f8f.13.2026.02.02.07.56.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 07:56:14 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        quic_vdadhani@quicinc.com, quic_msavaliy@quicinc.com,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH] arm64: dts: qcom: monaco: Fix UART10 pinconf
Date: Mon,  2 Feb 2026 16:56:11 +0100
Message-Id: <20260202155611.1568-1-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDEyNiBTYWx0ZWRfX0FJyZCvEIQXD
 piImG8km27ulUiGJT1TMnqTMMKwvnEPvTl8QephzC76ribpD5xbEdEwsvjL2eWaRHvVZlvKEq5Q
 9nqrjFAgOXYRhVdj27oJDg818brOiOgXJezwJKwZ/45GgrCLNAXsWWCSiRmJ7w+inEQkLZ6Ot4H
 pgPGM4DRIKcg9LA/zfswv9vd9Qzx+O5rkd8ILVaPk2fWqEgSYx7suPsx5gIOGgHzs9M0XHSrsdf
 RGh04zVHXiP9eKD8Q9Z4IcCRvr9s6df/JNeVyWXusMtOiTCZF6NvGQbmJB+RV5FQFVbZf1sirOB
 AGH61Z37zIXBpMbLrqr58fflx9F8a6F1jJxpIX6DGNDc8hLHQablulmBihb8nyPevceStHOe+Xc
 ahbCitBi74yBosdC3sIBJz+wzSTXck/tJwkEYWrk13OowC05cgZLcQzRlfZwPzFXmX0WFAEFY0b
 K2n7EnCWySOlKfKQhGg==
X-Proofpoint-GUID: 97VHBij5xnxcfgyP3XXdwIrGa-mUgULk
X-Authority-Analysis: v=2.4 cv=NOfYOk6g c=1 sm=1 tr=0 ts=6980c920 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=HzLeVaNsDn8A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=w5cLSrw8bnM9wMX07V0A:9 a=NqO74GWdXPXpGKcKHaDJD/ajO6k=:19
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: 97VHBij5xnxcfgyP3XXdwIrGa-mUgULk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_04,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 priorityscore=1501 suspectscore=0 impostorscore=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602020126
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[loic.poulain@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261884-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E9C1ECE81B
X-Rspamd-Action: no action

UART10 RTS and TX pins were incorrectly mapped to gpio84 and gpio85.
Correct them to gpio85 (RTS) and gpio86 (TX) to match the hardware
I/O mapping.

Fixes: 467284a3097f ("arm64: dts: qcom: qcs8300: Add QUPv3 configuration")
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
index 5d2df4305d1c..dbb2273b0ee8 100644
--- a/arch/arm64/boot/dts/qcom/monaco.dtsi
+++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
@@ -6414,12 +6414,12 @@ qup_uart10_cts: qup-uart10-cts-state {
 			};
 
 			qup_uart10_rts: qup-uart10-rts-state {
-				pins = "gpio84";
+				pins = "gpio85";
 				function = "qup1_se2";
 			};
 
 			qup_uart10_tx: qup-uart10-tx-state {
-				pins = "gpio85";
+				pins = "gpio86";
 				function = "qup1_se2";
 			};
 
-- 
2.34.1


