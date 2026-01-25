Return-Path: <devicetree+bounces-259239-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UErZNrMYdmnXLgEAu9opvQ
	(envelope-from <devicetree+bounces-259239-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 14:20:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A51B080A7F
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 14:20:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E9336300440C
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 13:20:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C09EE31B136;
	Sun, 25 Jan 2026 13:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="a1jHMo/7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UAVkMTUD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E03931E0FA
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:20:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769347233; cv=none; b=VkzMCDBid3UolNG4Iaoxui8aY83IHe2Y3/YVxUSS59/sZ7wFxqo0rU8v68cOmlkQD1/kzRhz6kXEqYypYWFChkmmDox8wYqDh8LmAMWDsWGxGZuy45yC6EVjIQKPaeArqI8UVNSVeI46eDZ28u08PPg8q7GcoG5WnZcsY+gycZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769347233; c=relaxed/simple;
	bh=PJiHYLnSEuffYvSKM8ePxKvMNbsPyKyLyejgTYc0tWs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OKq89dMe32dZKDNAlkNuJvakXjEfaEmBvS77MKDkIkzOgwHY7zJUBvmZIQDDdT4hLRab3BJ1VBAeAZCIYKydccOhTzr0D2aSZtyHuCLBLKGNgJcJROTFp1xaAEFmn1KJBmf3DdOjQJWfMW+DbEMEKiTPp2WHSVwFXG3Pj7lvQxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=a1jHMo/7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UAVkMTUD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60P5Tinx359754
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:20:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nMnZgFstSfhXFxxtUsEMfbmsL8APUsp+8DEipnzhrtQ=; b=a1jHMo/7sKixqGHO
	tk1KvDC8+616v6+IwrG/wXG1HIeGEnLSPY4hRWMD7bhgRIgX7fHRGk0Ftwtg//aB
	ETHmuIOYFJ+RLAD1jPjW6lwsKiQanyLUwpGU+/Jz6qeXtnKbVOi7KIRVSz/Ie1+A
	plEzkRvSWB5kNlMjrYhzUTwlAjrh5XxkT6H+r88q4y6wjKBV28eer3X4JuxzQQfJ
	zdbgXRaHcFmdsJHN9OAflyC00WMx/REsq+tLrVx3VGxW0T6/cxnGVtHalghYhJhQ
	XSrmb4eapiZoMGxDws2k+uuKbHRToI40m9nRAdvVB8RPJVNL0ovcNIc05iXvEtuQ
	I01S4w==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvq8dj5m5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:20:29 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-88a2ea47fa5so105840076d6.0
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 05:20:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769347229; x=1769952029; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nMnZgFstSfhXFxxtUsEMfbmsL8APUsp+8DEipnzhrtQ=;
        b=UAVkMTUDdoz7Ql4vtGOJC1uoQcKZK5wmh+0uEbNtFrncJk90fZiai3WGOm4fiYfQpq
         YWvsx4ROn6V2EWoESY1XLJJ3YNorrjmcVl+EdKtrLTb2Qt5GKyJf3GmJmqJ/IIWvE94Z
         Brx3d5AUKeBbxZybGchyKZ2iF/esfaba0pDw+b0CnilGVOBwlDS+seE4fP2sPK7jBwRH
         BkUcGZYN80M9UZXp8Y6pyAPBJIUvkh/Nn56D1UyLDNbrX0Xc9d8XaJB/FcIe07FDrpNu
         BI6l29tJGYEEXJDUuYUnawxKW7wnGBS9PbyfdGARe243zP1AwjtBwQilLP5jik/+7Iq9
         IhFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769347229; x=1769952029;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nMnZgFstSfhXFxxtUsEMfbmsL8APUsp+8DEipnzhrtQ=;
        b=RHr9BTXpfPsIbDDErG/jBxdrL4NbxxwKI478op/bVQcV+N9xP21y2WXYeCxcmewOHD
         zrSbV+pN+/g9aaRTHTrF6pdwCRtvRXc76spmpcfjXGCLCIMq9Siiz6LjXzCwrkcTwg4C
         UwusHie+MTPPO08NZeHe1vvde86EXoiai3QUx0+hA5wEq1RNAExV5CHzRVXokrEQb8j/
         bUdbsRRbZ10eiYzaA6AEk8KztEZD2F4+lZSEL8lZsE6ZbHBNJvWfK+nShA+DiIKtOu3i
         lOUFwAFa4qWtyAn/XACqa7Ew3pgvMxagq+yjq3rJf1N9qa6O5SydvR5Eq6VJGD6G2kmy
         b/Bg==
X-Forwarded-Encrypted: i=1; AJvYcCVDUlW7gFknpUAdQvytPaxZAbrnXsZpGFGhumgnY6bNjntqCcIQp5tHP/PUz5AARsWtuBWhcuZZolik@vger.kernel.org
X-Gm-Message-State: AOJu0Yx676N6dfrEDisyUPGXZB0ZHL25e1hnLNTln3oTmPLOHBE5KGAv
	xmLNGLm+lCyC+/+ImO+E50SUd0MRngcNNs+y5VDzXED0tVLkRY0mCtpr+EpNp3sEVvZ4IrA8FxT
	v52vv9cTf/tSIqmVUmv4colljhC34ezr3jnWj1lrBUW4vBE+CeMos9fVE4QadtvW1
X-Gm-Gg: AZuq6aLv9lgeTO+LrfVOahqKXqFb6ucOfBQvTF52Wze6XQkyEBiQ6nWKbdzU86xLhti
	8mMcjjr7xY7yhE0ysZDqlhSD4+TgzodxCrKNmK1Es3rEsMb3chc45H6K8mebRdLKwqy1mjkgpqk
	zCATLGnZULQJE/CACQUKZLuXEKreflosLY6noONF/lDLudxQUpaWTgd7dUS0eNXGiy6dGzu0O1v
	FfUqt2YUTYe4Uq8KyOt08CpihswWTUV+/GqKDVlP/2D5rDtVzITswQ/NApDh+PmHjf8KcQ40B0r
	fNrl6DMcB5uVOPXuXc3KdCu2P6cNc2zXNG3h7A4Nn1crgWbgFpqBOIcqJPFKdfRKAtBBIrw4G59
	jFfhGi6Ne3aD0lqQIqHbxSohKUFb72BNLQmqKsgcg94bHrfG4Ae2t4Tw+AoTRQtr9u7i7H24Ntr
	KlmGUDuvT5j4sgXYL3nRn/uIo=
X-Received: by 2002:ad4:5ba5:0:b0:894:22f1:88d0 with SMTP id 6a1803df08f44-894b042218amr17662306d6.16.1769347228624;
        Sun, 25 Jan 2026 05:20:28 -0800 (PST)
X-Received: by 2002:ad4:5ba5:0:b0:894:22f1:88d0 with SMTP id 6a1803df08f44-894b042218amr17662036d6.16.1769347228180;
        Sun, 25 Jan 2026 05:20:28 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-385da1706b5sm18901821fa.24.2026.01.25.05.20.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 05:20:27 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sun, 25 Jan 2026 15:20:20 +0200
Subject: [PATCH 3/7] arm64: dts: qcom: sc8280xp: sort reserved memory
 regions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260125-iris-sc8280xp-v1-3-2c5e69fae76b@oss.qualcomm.com>
References: <20260125-iris-sc8280xp-v1-0-2c5e69fae76b@oss.qualcomm.com>
In-Reply-To: <20260125-iris-sc8280xp-v1-0-2c5e69fae76b@oss.qualcomm.com>
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
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ2aZxGQ71SuHFGpLhUqMGO8zWstLzV+VuTkgY1GO9Wvlr
 e9/Js7pZDRmYWDkYpAVU2TxKWiZGrMpOezDjqn1MINYmUCmMHBxCsBEchPZ/4otcNof+96lVO6q
 wPeyffbqZctet0THuNRbSq2qLNjFdvhR7tcsEWUXDqP4U3pyNy67Sk99HVv6cGuxqPCk0uiyP5y
 r5rOs7q3Kq9HKSCr6YTXDt0FAyMzybf8apqI0uwKblYoiLCryPGsT1piEb/x44oN32TYV3uvnrx
 o8a7GwY5zscdXlZpGZSP9lvbDHP6eflzYrv2g4UbHqbPvNZSGzzz5fXLrn2fnfAd/V58tKvtAPM
 nm2xi7mYt6MXS5+r65ftdPaJll19r3ha8+JbQHRa9VK+GavZQ6aFV3h9CQmhFc+43tH239nY6Z2
 sdpQvYmpU1Nnv1wqpHPTu36zkOTxhPUnplvd44y9LFYMAA==
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI1MDExMSBTYWx0ZWRfX3bD/9PQd37pf
 q0U5hTyfzSRkw8V3gmwY006GkFl+0mgNCcNTLQz25yaEcnSaI2ltOKVwmkd3ay87+VqoDd42jPd
 ErpCF7OLTX5KTaIWq0ij7YK0/OihX2LU1FnaLJyqgTe94MDSqAVw9taF5mUHyZ9Rtn+9qu7PT3K
 zTnmZxubnJyOxfjF4KhCanWvlb2OU0TFjLeWIWQGnRE0u7fWTv2Ndi0nDJIue2JRLCX91M5dP5v
 6ldaqLX7467HJsE6tJ5E/2d3cok96sdpnjmB0d5UqTyV9YQCcGZEeeo+2uonePLwnUtwqemScvs
 77/M4AriH4u+iajRy08uapwzGHbK4/TH1cYVycICW1pOB3x80lLqoCSI62hBv8A5pC/TowLPNTB
 xuVhLwjAUzLRMqw9lApWo4Qg1GK9XhMrkOjZUZWJ+QCWqNmbMvwlPJdZFx9mVIsjeVJAdoXs5NC
 0DLtC+hycRm60kiv7hQ==
X-Authority-Analysis: v=2.4 cv=RIq+3oi+ c=1 sm=1 tr=0 ts=6976189d cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=dWPP9-k4-ZVWm8qm6WgA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: SkNZINGyBHvq2SAG3f2Cm0LSUn9gasNz
X-Proofpoint-GUID: SkNZINGyBHvq2SAG3f2Cm0LSUn9gasNz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-25_03,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 adultscore=0 clxscore=1015 phishscore=0
 impostorscore=0 lowpriorityscore=0 spamscore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601250111
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_FROM(0.00)[bounces-259239-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,8bf00000:email,8a100000:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A51B080A7F
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


