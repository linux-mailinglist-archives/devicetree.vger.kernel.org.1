Return-Path: <devicetree+bounces-259269-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6D2+OcE3dmmTNgEAu9opvQ
	(envelope-from <devicetree+bounces-259269-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 16:33:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C7281392
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 16:33:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 589383004D3F
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 15:33:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FB3432573E;
	Sun, 25 Jan 2026 15:33:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ovh9zf6w";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QAGTizYJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89DB8325729
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 15:33:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769355192; cv=none; b=QgxPuJO418AFBpMiX04ZW5RuzQtrCjI1o1fMASG3CV1A90i5o8U5iLHKBkBY0J1Th0Fs6UP3Sc1Knw1zuZ80MbZSpjtP9uqhFLrlLgio/vCPy2ZISEvLfmj31SruOcd/ZtTyvvTVMTVIBHb6eV7BbQhtJzPOSt/SAUo4AhhWHh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769355192; c=relaxed/simple;
	bh=PJiHYLnSEuffYvSKM8ePxKvMNbsPyKyLyejgTYc0tWs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Gp3RydTNTj7iVocfylrMODfZsZQvzoLU8LY6kfRxfyPYGEOCbEHdbbKAJGnFfcMWF1iiDHel4y+GfZ8CATwOHhjjDwga8C7UndRues5sKgnmgC7orXcyQ4df7lejKz41WLiEOhuZ2DvLLr+IKD+RYyy83UPTU9YbX1w8jxArh4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ovh9zf6w; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QAGTizYJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60P8oHYJ3692731
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 15:33:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nMnZgFstSfhXFxxtUsEMfbmsL8APUsp+8DEipnzhrtQ=; b=ovh9zf6wlMl+Q7vZ
	Xwv4t4ADzIfcX2DYHPsVtiKnrTa8dm1R9tC4N+pymdki76GWYt6QA6PCLVa2Ggiy
	q0xm0ampT2p5BIgC7PhQFD4RusYg0MWD0u4ZAm2Zwv6KEhDgnYiFH9plMDKTa3ed
	a/tpswVv1xyCgvu53JHtbxpWUxdqjz1DAD3QtHA4ySbs6Gep6cVRS7nsV0eHkymB
	iQCggtWRbR2xkTI9HR4CVrgQ2KiD4tr1nGrpCURXxAP3Uxq/krPaTCfxsM0y9n09
	UfUaZh4XyfcUYEGXfkAqZtWfHaqKg7AS07bWjbk2DmKagRkI5kNqrqJ4s8sx/lA3
	1Bq1SQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvwty9s3k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 15:33:09 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c6a291e7faso36522185a.3
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 07:33:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769355189; x=1769959989; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nMnZgFstSfhXFxxtUsEMfbmsL8APUsp+8DEipnzhrtQ=;
        b=QAGTizYJgrtmnNpjH49irnsl++qcjndjRO6HOVQ6/6ItnFVvrkwQG+XePOw6q+vsF4
         NwUoNEPRBospqxHYtoTzZLx2uOyIsECEP7IFRONlJJRYnUnYc6rdS1EVBWRKqNTLL5k4
         QLTlLXsXUIxuONXT2etBs1XvNxocohqreOoaeMBDKiGAG/4Ka+qEmwGT3bNGbg+MGjgk
         blyLmWTNnZNua3XMqpKRZ5k0A5A36okAXD3mFq06JSFIHEdiJvdZ5QTlVRusVfxj3wT4
         WI2U7mEDN958fSkYrQiV7zsyF1V22TxgPYr54Pv5dRmJBvhoD7D9zDbq++jNy9sUZnN5
         NlwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769355189; x=1769959989;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nMnZgFstSfhXFxxtUsEMfbmsL8APUsp+8DEipnzhrtQ=;
        b=T5aIPI3aUFfVATlopGQjHyhkJERQw4njWowfYsyFnX4MWkkKxgsextqsmVIj1PrWBQ
         21Q1XmNpvSZt2itDANBvBsnoZ8FlL2Qc0eXoq2Nr1+gTBtzO6HW3rUp1E0lcaaxBNw7R
         bMUaZ/Xa0S+L1MGV4A9HVUZ+HWb3kkhmqaFFGhqHgmiCagK+PzCYWBLiKt2nexe5GFm5
         EkUi+RypduvnhQQHaCHJoV9GQo40c4U3RJwLZ/AXr8mCXlUmM4sTt33T/pi+s2l+OzUE
         F6+Hq4RIAaNRyoF3OgiO/Lw/wMvs/tg5GtfszcJ6J9Md/mzoNk1nWjDvgKUcLHe2rMsP
         U9Gw==
X-Forwarded-Encrypted: i=1; AJvYcCX/yYdXQHdnU5+i2+eiHILWcUsUtbfqlT4h4Kc6F9HhN5/Dq0bx3aKgu9CIC+R0OiCurt22/ghvkwZw@vger.kernel.org
X-Gm-Message-State: AOJu0YzUoZjloLCR/LbF7fJWRfS+tqq1XAwAAytxRhfldEIN8dSRrStB
	j7U33TgK4Is0RB/TbyNUvMViVTjDSwZ3fU+qejCevczb5jkGp0RUW+IWr3owIfz1ZGI6J3j85Tc
	yJRN2bv2/vMuGfW50QQfo+XBzqouw+B1w9g41834IJRRTLhcLnXETq8WREBCzkpag
X-Gm-Gg: AZuq6aKLO7zeN1pl2JSIhc+U1U5PLcQAPTP/mWpk+C0CSKXemU525R04YrKKY7q3Jsy
	6v0ejbn62DXmwQI7N4OIJdrtd/LTa3QWk5iSOR47rEdcAV42jbz0GWRkpjTiWHHYJtzYM4hYoyZ
	qvOOlCHrGCqi3yj7uCDdAnx9n9LW7Whb2hMJERQaaXJx51tPy1bVoRLaZ58sjbXCItGKuS+kYOI
	GNiQOyc6OAeF/gPq4Zw+Le7ExHyBVrcX9oXSD08r3iZvYJWvBCKQ4zL0tvDu4WdX4LU1Pcnp04/
	eNnTFyXe1Uu5zzq9dI6mQz72aw7LDkb8AuAw6gxFCPyGP5MAk9qLXjvZqfzp8ohosSysu/FOpt9
	ZW4+uQT8U4omI4gtiYW49yIgtY/fFL6Fs83+emOnLOs+IbVkvrCXpGL+1lyuXpd9lRN7+510pYP
	i1ODxhzKvtFNzs2H+Zxpsvrew=
X-Received: by 2002:a05:620a:8b17:b0:8c6:b14b:8a6c with SMTP id af79cd13be357-8c6f9572a75mr157735585a.6.1769355188985;
        Sun, 25 Jan 2026 07:33:08 -0800 (PST)
X-Received: by 2002:a05:620a:8b17:b0:8c6:b14b:8a6c with SMTP id af79cd13be357-8c6f9572a75mr157733385a.6.1769355188532;
        Sun, 25 Jan 2026 07:33:08 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-385da1a0a45sm19154661fa.34.2026.01.25.07.33.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 07:33:07 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sun, 25 Jan 2026 17:33:00 +0200
Subject: [PATCH v3 3/7] arm64: dts: qcom: sc8280xp: sort reserved memory
 regions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260125-iris-sc8280xp-v3-3-d21861a9ea33@oss.qualcomm.com>
References: <20260125-iris-sc8280xp-v3-0-d21861a9ea33@oss.qualcomm.com>
In-Reply-To: <20260125-iris-sc8280xp-v3-0-d21861a9ea33@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1110;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=PJiHYLnSEuffYvSKM8ePxKvMNbsPyKyLyejgTYc0tWs=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpdjesD1a4RxxNBNxxxD9jFoq3Kt0SH2L09if81
 T5Ari+O3V+JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaXY3rAAKCRCLPIo+Aiko
 1e7FB/9ks/6z7PTg3zg8PbMYeD1FIq1Bm/HvznkTUZtHSpfxHNn2bOKEv38fCxu6fy9ea2vohDY
 Z4BGT6oYjrdKomjyq1zUvywEngHeQNbmy1uD/9zsoq2F/RmzPNL9Hap0jDPZggdpZviulm1au/l
 vELPfGUA+AwcD6mWWakuHrMCs8EUYPclQkaBnyVYhgR4h5lmrOYJe7T96oMMxisOORVz/vUolu1
 3XQCJp2g1bqK271jbWQyYMK+CzwGhsHtU0ZZHwgs20kK/7Nw778Q6Y0tEXnPaF0WpUIs8zrQEyA
 ZoMYu/FF9OlDIwEzX/LqPkSz1sDmNr7qVnjhca12yGlmhYi0
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: Z46YgnkxvfW191s21hJV77dt141bM0Ov
X-Authority-Analysis: v=2.4 cv=BteQAIX5 c=1 sm=1 tr=0 ts=697637b5 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=dWPP9-k4-ZVWm8qm6WgA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: Z46YgnkxvfW191s21hJV77dt141bM0Ov
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI1MDEzMCBTYWx0ZWRfX/FZ35uea2jZc
 MuWX8T89ImpqMG5wlO//ynIptdbJkSH4wi5cAYTC9W87r3KDP4KN//5u+zRhHNF0R/LXDbcdFf5
 pTFrnHas4iBAthKc9mmyWdKk3LuHC5t9G9exHqLtjnLeh9TPUMDPlsX3gZqRDer1LzP06P8xHLu
 5Fh9Bt3Be2zO6rVEV79jFgLO1+2XW77oWKQ6RcwP1ZaqjvwAYEhmqINRW5dAEjn4Z5eZwEcGr09
 PTts06XhPk8Y8Hr0xYs/mcjmOoi6kBBxojmodheWgEW9h72FceDVQYi5O6VQG45n+5YJUV7so/u
 BMKNi3QyFanRLdPue1QZ0YSrBTUWMwhHvk0GSvIn3lJ1z51qipaQiL/N7eoH58M3lFLoAHCKZ0Q
 hwEayBLI3EWL7GIjJkQoOxC50upDXCXSFO7eWL+8iV2PCLA2VfFP9XmSnQXOkY2DXvOJNWhg4Wv
 zUag4xvEtLpQ2+tPxIQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-25_03,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 suspectscore=0 clxscore=1015 phishscore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601250130
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259269-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,8bf00000:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,8a100000:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 81C7281392
X-Rspamd-Action: no action

Move memory region reserved for the GPU to its proper place in DT.

Fixes: 6e9612ced0c9 ("arm64: dts: qcom: sc8280xp: create common zap-shader node")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index 706eb1309d3f..41c57e7dc433 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -691,11 +691,6 @@ reserved-region@85b00000 {
 			no-map;
 		};
 
-		pil_gpu_mem: gpu-mem@8bf00000 {
-			reg = <0 0x8bf00000 0 0x2000>;
-			no-map;
-		};
-
 		pil_adsp_mem: adsp-region@86c00000 {
 			reg = <0 0x86c00000 0 0x2000000>;
 			no-map;
@@ -711,6 +706,11 @@ pil_nsp0_mem: cdsp0-region@8a100000 {
 			no-map;
 		};
 
+		pil_gpu_mem: gpu-mem@8bf00000 {
+			reg = <0 0x8bf00000 0 0x2000>;
+			no-map;
+		};
+
 		pil_nsp1_mem: cdsp1-region@8c600000 {
 			reg = <0 0x8c600000 0 0x1e00000>;
 			no-map;

-- 
2.47.3


