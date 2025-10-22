Return-Path: <devicetree+bounces-229656-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C180BFA8C1
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 09:29:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 09A2A34ADA2
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 07:29:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04DC02F90DE;
	Wed, 22 Oct 2025 07:29:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZY6krDsL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3530B2F83B5
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 07:28:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761118141; cv=none; b=tShg1RoZqTDiYn5hFw6aBRGkLRjUJ9l58f3GVCFXV6jQQe5TUthUqPY+zeJ/0ETDgPfUp/VOtuAMYGl9oXD3Qm6lg7w10w+ZPv/xVGm5WeLkDGEUSBcm3qngsWTaNFbIEzrI8hfcgBjsmJa5m4HAAH5a3iEUNovZw6z7POWZhkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761118141; c=relaxed/simple;
	bh=jwAg/fX3RHeusGY6KoIA8mmpz+S+raOvxoiw5Q2SpXg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VTA3s/RKnSV5upmEL6mWqnobvCoODe6oZupFVUuFbsrLV9y/TDM0Lj9VQ2VqgyDTVm1s4nm1fqlzVNqkvBU0CX0VgPhqjqPZL369WjQ6MaVTq7owP9KHdfyQFUCUMjLLaZvCB3oyGgyjxfvRujwz69erRiCMmCmH9KeHy4TskBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZY6krDsL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59LNFq1u003559
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 07:28:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8MM3ZnxMKNX/HOlQQQw5DE4q0GrhaHbNC2oVd9aKK98=; b=ZY6krDsLY1xJbbiT
	HbH1xIu8cY7uQZ8vJTfBij7EE+8DmJTfyiKgRMsE8wEy2GyS1UjOeXoHSuRDk96r
	UMPKCBqP6qllq4/ze5/LCz86LgKhxKfY6otcGdqy3o79s0tXRWa8Rs/jdchMhRty
	2s0LwqepUf2dj9kZT9M3jW3fkwgiPcEfWw8h56HAH3Igi95baaW3e1oBeQrA4PUK
	pobQQA6pShAjZvpN5xD5pAab/oO/jO+NB+E+kK9m1T10Q86ly2ZcAfkd7kw/gktj
	alJpQSHGCsOCR6zr7QACO2zYwAbuZGFkiAMdRF6Wfd4POxa6lNWIS+PsQVtK2ytn
	F8wH/Q==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49xkps9732-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 07:28:59 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-33bb4d11f5eso6506758a91.3
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 00:28:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761118138; x=1761722938;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8MM3ZnxMKNX/HOlQQQw5DE4q0GrhaHbNC2oVd9aKK98=;
        b=M6/bDA7wjUuYWBmHvdtn5EkIfuOelE2LybKlKpWaqufrEGtXUYBLQPqZEbSRIMAHf+
         ybTQx8XCtS0f5ZXQaRvaRKGFA/Mh0+pQFEUMQY5t6W5FZyug2dfI3mv79rT4SFx9Fimt
         NDzqn045nJVrkzvFH+CQISOYD9DiVsfb/xGDaWdljDsJlUhO7eh0twUOEToYV6gaIt9R
         wzTs9JUZG5SUGRizm1/k9qU8/vsrGquU5p4YuYk4kC7ZyzdbY5J9h1/LuL/bhMo0ej1d
         ThYJQf0pdDHbOaNjEym8PXcFLjjKwOX3oM2pmz1g2qDFGoYeDyqZWMuwYr/XfY9ouoVo
         WJUw==
X-Forwarded-Encrypted: i=1; AJvYcCW/iSKLmGiDD6BekERKutWvojKedECo3XvTLFmV0hSbpq83/1L6/YCP/tTRmJH/0FAidLnlmUfNPcKg@vger.kernel.org
X-Gm-Message-State: AOJu0YwEc0KEP97TNNNPW0lgch3a36Lx2YStd0TzSF4MdWIJy/JjRRen
	V+CCEey5pL2q2WJFUUnOYAhwn6YKIZ6BOqJv05I3DdVldeuXb/oK5f6JSSCalwOKT1ufeZ9iiHO
	msNbtanjEqRks6SQ2Iq2rnfmobZxJhsTDvSA5FpaWK/jVRun9aU7MJGhBn3ziha0x
X-Gm-Gg: ASbGncvJ5M/ohgmpKtIAZCVQ9kdgq5cHusLHJ8wNh9nW1MWPGc9RxMi1BQoeQ5TpXXQ
	rzjhZ5pzihg5wdH3IRbCGx/mmAcV0XSZv3T+NsHdI/dIFc5BPea5OZgMlpNQg991CKFwF1x4ba9
	Qh627FfIbGDrfY86SsNDFzhRgH+MBoGP0xxK9oPSD3W0jB2gJZGcf0LCZeD9EczNz8qXqSd7t6H
	4zVzr9ipuRF1dCJeggnXMdjG7NMNSyeAByGqmIaxfHhJAIfQdqGCiyEvbdPWTAf+rMvn5aJZyEn
	NSjNK96o2Bec0FLxnU63A3nPl3EqvK1Gtb/PjibRR9wvg+uFZnrXIFrRTdagGwvDuF3R1tG/Voc
	ZIpwHWaKFGP03ed0z5nh50dfmJpKksCyexEVey7qYyOSUKpNaEw==
X-Received: by 2002:a17:90b:224c:b0:33b:a096:2231 with SMTP id 98e67ed59e1d1-33bcf920efemr23228834a91.32.1761118138295;
        Wed, 22 Oct 2025 00:28:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHoiORJH1jQ1h5FNacmn38SH9uOfXazAABC/+UHRf3iMOZk3OQRydS2TLV9FjVlt0+yyYmXKQ==
X-Received: by 2002:a17:90b:224c:b0:33b:a096:2231 with SMTP id 98e67ed59e1d1-33bcf920efemr23228800a91.32.1761118137814;
        Wed, 22 Oct 2025 00:28:57 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33dff4498d0sm1687342a91.11.2025.10.22.00.28.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 00:28:57 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 22 Oct 2025 00:28:41 -0700
Subject: [PATCH v2 1/4] dt-bindings: soc: qcom: Add qcom,kaanapali-imem
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251022-knp-soc-binding-v2-1-3cd3f390f3e2@oss.qualcomm.com>
References: <20251022-knp-soc-binding-v2-0-3cd3f390f3e2@oss.qualcomm.com>
In-Reply-To: <20251022-knp-soc-binding-v2-0-3cd3f390f3e2@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Robert Marko <robimarko@gmail.com>,
        Das Srinagesh <quic_gurus@quicinc.com>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Eugen Hristev <eugen.hristev@linaro.org>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761118135; l=803;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=jwAg/fX3RHeusGY6KoIA8mmpz+S+raOvxoiw5Q2SpXg=;
 b=JXJoF0O53vOjmOQ2/dzhvBeiZjPXcC7M0KRAc0APkQo8S0f9QvNYWsrXfwuMj7oOEBFN9thhC
 XZABTsmlYPSCDtvTtBBDa0ptuzS7Bk80tgId1gA4wCGP5XiFCpps3Nn
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIxMDE5MCBTYWx0ZWRfX3synGqvO+sUo
 RMJMmyNZwxdaNTX8kwYcmEi/Wm7p9gteKmqVkQ74scksLebBLa6VHSIe84VbBqSkVudToYHghoo
 XC1HHM8eUBqNYz3sts6MV6IMGJmTEuvwNdNllyDWGCWp/mIaqnpJUnXFA28YXa3mc97R4xw41wU
 WIZCwXttZ92dEhwMdXNNiPbqt2+AinrZJgan6p+uu8mQf8CCsRrcvmsdNxrmXNAkNPH53PvqzRh
 rFTTDwC0anwHRBh/8sE2m8/m95DAP6TlTLrZ2Ky1/zk5bWFXFyU2UGAH6iOFxCblE9loCOSmFma
 EwhDlPxklw8kG7U2q774B7lAT3Niv/kpIJJNYRz/yT7iDnZBdb61kUNVVqa9dyeD5ByCZLztJeK
 sSdJupQ0uRryVCJiB5W0wfdOGjexag==
X-Authority-Analysis: v=2.4 cv=FbM6BZ+6 c=1 sm=1 tr=0 ts=68f887bb cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=Ety4sU5WZCxzx5fwigcA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: yPvFcRnZJbwt5_nK8-hyD5bthFbP823G
X-Proofpoint-ORIG-GUID: yPvFcRnZJbwt5_nK8-hyD5bthFbP823G
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 lowpriorityscore=0 priorityscore=1501
 suspectscore=0 spamscore=0 impostorscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510210190

Document qcom,kaanapali-imem compatible.

Reviewed-by: Eugen Hristev <eugen.hristev@linaro.org>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/sram/qcom,imem.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sram/qcom,imem.yaml b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
index 6a627c57ae2f..1e29a8ff287f 100644
--- a/Documentation/devicetree/bindings/sram/qcom,imem.yaml
+++ b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
@@ -19,6 +19,7 @@ properties:
       - enum:
           - qcom,apq8064-imem
           - qcom,ipq5424-imem
+          - qcom,kaanapali-imem
           - qcom,msm8226-imem
           - qcom,msm8974-imem
           - qcom,msm8976-imem

-- 
2.25.1


