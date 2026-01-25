Return-Path: <devicetree+bounces-259256-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Ac8SMYcidmlFMQEAu9opvQ
	(envelope-from <devicetree+bounces-259256-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 15:02:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0626780E89
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 15:02:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 47B313053763
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 13:57:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13B1532142F;
	Sun, 25 Jan 2026 13:57:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mJIIjGCI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ezxCtycj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85FA931D757
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:57:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769349477; cv=none; b=tdGuqfBhMgjh0GXT2Fd5asplBDm2BtRl0TvdABKohOH5Ysbf8Z4NfospLSBjdqdgUqbi4Vlfw2nOHTqm+jhZ4+fSte1u4m+cTVyZsiTnA/hGhICVZ5aRBjf0if77gFHyp/xmm98g37UwTRvbiKIbDdlGNUGq0RRS8awsMl+np4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769349477; c=relaxed/simple;
	bh=dIO5YayCmsnxyES+C8CIdExF900jm6HWgkVRfQodJ/4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kSng4TfmtzzUtjkVV3Tsh2o0w7nAbeIZqMcZCXAQNSBbZLL8B9Fja7st9xpbxE7NZUcXPo9+p2AFUafnrMpXzgl8B25hPM/DHCF2PYA1/sJBe7/UEbSP2vCl/SERIy1CAsm/MG53I2JXIjFYdNJSetOSodC5tO9JEcBkrPLJr9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mJIIjGCI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ezxCtycj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60P0DCDs1515925
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:57:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	R55yhKJIM4GxZKFd/ExviBVtmS7VFYCJqkhbikeyemo=; b=mJIIjGCIDMZaBOCL
	bfp09Z2IFXIq8nh2iBtYuTiouqqJug7r1NIGlpfMijSnqYHToyxSdDuNFuTB9odx
	cbxzflrp1v5sYwvYF33dFZp7ZFqD21bFZqSxnV6F+hMpYDnLMtcQ3nYRCIQ9Ds6O
	021gIyrDkNXsp8NtYPuICiAr0daE0DPhSjGWRRqiKtx1JH7MfuJ2j0jiKEVzpHsE
	xltyFfbjd44hH4o3xcblYlfLDCQOCbUJvjExgudZ8L1oMZ/2XflZqTf5xVMtYFaE
	Yv5Jz45hNSPirWWoRsDJLhCFjeL381TBqc8OfUqQvBeS/VydNxkM0aPhhCRU+vXj
	wznvNA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvq24j705-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:57:47 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c53919fbfcso957887185a.2
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 05:57:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769349467; x=1769954267; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R55yhKJIM4GxZKFd/ExviBVtmS7VFYCJqkhbikeyemo=;
        b=ezxCtycjORjOqMKTWcTyz+9rIhcOY53PdnHnLGQIM3G/imLpLVDrGFycL2rlNbRw+O
         RpQcb4+uxbQoeqnaekApy4siY2yFJwIkfgrBTSz3v3iTmnDSJSPwm0/8HvZ5azNakgjk
         5oHv9mHwWedMgGugDDFYD/ryYs5c3HI11k2VVxXLsG+eQoTNlq7dF49iHjivQH9kMu+Z
         mbyzw7a07Fcq/X7B0l+u6FsA+dMacpuaGWWo9VL1t+s6d1uLH44Q2ZgD2/Z7IaUEsdA6
         UDfjWWANqv2UtyMsrfq0PbTGHu2saJzfZorGCyMcQuAjLNR0OsPuiYqs9oB1CjodAlkR
         Di/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769349467; x=1769954267;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=R55yhKJIM4GxZKFd/ExviBVtmS7VFYCJqkhbikeyemo=;
        b=MEYUibmkFQ83D6Ej4ZiFf1tnjQNZHWsOG6xk++PZH+ci119N1XiF5rUITNNXNjfvlU
         iCBnnr4RNdVV2gZqiMpXvLbsThLK+8gS/3W7wedcG/ffDge0r9KmjQr/2qK2xRJvMQrw
         RVfkZHuJzDKJ598qqx9KZ+wogMehXb1CAW83Yg6G/K7CSq5yTfvGBMl6FFSansgqq076
         /hyfLKMCcMkowNI9XQxYXCrpeLh2ZXeMFkeDDE7uoaYahMnEcsIldzKTfOB/XHiIcgH5
         mtHAgiVndHbMjDGQpIfScpO16cSwj7hQdA1rMyOR6kUCcQpJ02Kj+FcAvTGiIA63FhQG
         QzrA==
X-Forwarded-Encrypted: i=1; AJvYcCXzRdh3KGS2EvjR7e74fStm2Q0nIMHUCoX1Y+MqohMkKnQ72wBe4LaICN+3u36BIuJhw9VVIH7YqgU5@vger.kernel.org
X-Gm-Message-State: AOJu0Ywx57owv+C6dJ1/bxF8jCLUvUbSKCpn6lY808NdJH60lacbyYR2
	RvKM8mZzhl+o8noIeFMgbSsx3tQ+UvU4WK55mTW0wMLW8JPCOA1VDARh/I6OjEuodYHXsTkD/nc
	rF+XDb8+7mz0cqH9nuZI/S8hT9F9BhOwYU02AG4EMQJQYJLkfi1gBXPUNG+AWTfbxmquoG0Ng
X-Gm-Gg: AZuq6aKPhXShu8EUmtUIxmM19SicA/SWf3+cRFlEZ7mySe8DqcEFeaufY8R7Unmv07G
	tNDOO/HKrdCLUSfLmFOqcitwGcnECiAbdOcpuQ/p6HcQpcm08vMQAOBRW3iuMCD5LPTp892dlwE
	2R7qL+Ay+HIfT3tBx7gQChDTD8Fu44gJxAauqg0ujxV+nttds4Q29Lg8TpXYzrWeAVYN2it3L0U
	q1wRTdbdwZyKjeOlzQ+blj1AJjdUt64aSb+8LDkszh4ohgLCw3Aw8d0Kzuh+rCoxS+ojMSVXG4G
	qUrHvkDJf1jExMUg1EoHiuQnThqaiuYIQjJHyvZFitDUMxlH9nM4BghYA2qUZSilHNNgMrRmbj2
	uKZ03XR77kXjoCsnoAL5dps2LS4AWfOb5/8oD8Vvt8kHezSifOW9LkHfb7pkG2aWUH2e89JHE6s
	Twk/CwrwJ78CieDrjBNJH5jkA=
X-Received: by 2002:a05:620a:4620:b0:8c6:ae63:dbbe with SMTP id af79cd13be357-8c6f9693b6emr173213685a.79.1769349466708;
        Sun, 25 Jan 2026 05:57:46 -0800 (PST)
X-Received: by 2002:a05:620a:4620:b0:8c6:ae63:dbbe with SMTP id af79cd13be357-8c6f9693b6emr173212185a.79.1769349466186;
        Sun, 25 Jan 2026 05:57:46 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59de4918a3asm2033621e87.52.2026.01.25.05.57.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 05:57:45 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sun, 25 Jan 2026 15:57:30 +0200
Subject: [PATCH v2 7/7] arm64: dts: qcom: sm8350-hdk: enable Venus core
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260125-iris-sc8280xp-v2-7-552cdc3ea691@oss.qualcomm.com>
References: <20260125-iris-sc8280xp-v2-0-552cdc3ea691@oss.qualcomm.com>
In-Reply-To: <20260125-iris-sc8280xp-v2-0-552cdc3ea691@oss.qualcomm.com>
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bjorn Andersson <andersson@kernel.org>,
        David Heidelberg <david@ixit.cz>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=771;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=dIO5YayCmsnxyES+C8CIdExF900jm6HWgkVRfQodJ/4=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpdiFGMlmbbXYuiwT9bw/VLrqqu9Y4L0m626IE5
 Q/3bGAJg3aJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaXYhRgAKCRCLPIo+Aiko
 1aw7CACJLvV90JUstbr0QcoZJiIQkKsvDAaMysmbdiXvqEa97jGxUf5h/vGmWKI0q4F+2L4XfGe
 /F2p6/Vj7k8TGFaq/ma6cQLFxsj/z52pC4JFukr5nld8JmUfg738RP2U3nOWIkMHBfekwZQQvak
 u4tntOYsFyBoABVy9susQXzYOsoqHfWS5cJX0jEsAsCrGM1en1BIuIH7Poy4Zv8MuYmY3jiIpWZ
 0xd04YQbBmczgNsXDC2qs822nGnYFEaJgIwgKoCNAnZ78977TO7PhjvaRmvfn6vtu2H3DbGWH83
 Grd/dauZ2l7JAejjvo2vlawDxEKSwPdPw8a1W3aR0kU6/kPF
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI1MDExNSBTYWx0ZWRfX1VNttGyV0qEA
 6GFUIqI93E5HsbWDHGLzIj7Wca2/6d5EJzFdIH+uYygseVLnx+Q66SgqgkTLEYe6Lml+tHPOJW1
 xHyH8+szJg0PqAGZwZl98zNqUfIZ2g7RsjmJTh9yTkFmPoQSCsr5R2rAQ3H7KJ9TkEkJE4J7rBP
 mcGr30xTwTtxHmSqEfY6Zlmexj9lgdR6bpiSEENtOz1ZxsE/+rVaucBLKgUBGqKgUunZDB1YXGa
 LbsEtpxzVF8WUlfRpORESQ23NSrSOiu8xwukv1iI677Biu5JvzqH4csEJ2jtWSEI5oodnSyQYUA
 ErSpHVJAMCwh1B3bRPX4G8Kq1+U63GC6z+0U8DDQ79DfcjVpfeN1AUVjrcOQJPhkEthaVbzUlCo
 xaqzEcHbOpcYjpSi842RwLlmaFh0puqCRYbRT5RHz5WVTH7pNbRIBkZUBeOfuIaL1viwbo2N0MZ
 eCknXMmfEYEQ7tl07rA==
X-Authority-Analysis: v=2.4 cv=EsXfbCcA c=1 sm=1 tr=0 ts=6976215b cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=sbAN9nOpwR4X-TBSHOkA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: BGULW2MBQXDSHfl2IQT9WOIQvBuhaV7q
X-Proofpoint-ORIG-GUID: BGULW2MBQXDSHfl2IQT9WOIQvBuhaV7q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-25_03,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 lowpriorityscore=0 bulkscore=0 priorityscore=1501
 suspectscore=0 impostorscore=0 adultscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601250115
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
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259256-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0626780E89
X-Rspamd-Action: no action

Enable video en/decoder on the SM8350 HDK board. There is no need to
specify the firmware as the driver will use the default one, provided by
the linux-firmware.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8350-hdk.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
index 5f975d009465..79f024fd47f9 100644
--- a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
@@ -894,6 +894,10 @@ &usb_2_qmpphy {
 	vdda-pll-supply = <&vreg_l5b_0p88>;
 };
 
+&venus {
+	status = "okay";
+};
+
 /* PINCTRL - additions to nodes defined in sm8350.dtsi */
 
 &tlmm {

-- 
2.47.3


