Return-Path: <devicetree+bounces-251166-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DE4CEFBA5
	for <lists+devicetree@lfdr.de>; Sat, 03 Jan 2026 06:58:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 943963035262
	for <lists+devicetree@lfdr.de>; Sat,  3 Jan 2026 05:57:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25305221FCC;
	Sat,  3 Jan 2026 05:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZggmQhCQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NOlcxBaX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA982701C4
	for <devicetree@vger.kernel.org>; Sat,  3 Jan 2026 05:57:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767419854; cv=none; b=Q4NQrJL2fIHF36BWGwcRCNuEyQK6jclfn7VaiC3XPLi39Tn8x/jtqjBlVMFwZokG1yLaAT5Fsuwn8Tf1IXBpSTqIf1blxTxUBvlIl3/K3Ndu7+oopnpVBxjkmJzOgd0ZreAzy/zJk8YDg6z9q4Mbklb+7bwK2X107LQFgLU/bt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767419854; c=relaxed/simple;
	bh=2pAbQ7vKfrqSqpvKuGBPoFyWbimAgVMkbmR4XRUDqZc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aTd2HtfmNqCGPrF0Q0o5owWh1Lq56bJEia4OZI8ObPcoqn2CrOV0PkAQT0i52JHB80onIUaQiKwVFhO+WFDTCj+P1EAqC319WImMr2y+zV5e6hxSAjxmqujesFGm7SmwqT5nL5K1CJyvO61G1SK3iSCFOZirLsla+sqKtrsAuyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZggmQhCQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NOlcxBaX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6033k1Lm3014018
	for <devicetree@vger.kernel.org>; Sat, 3 Jan 2026 05:57:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	L2wPt/bh0eDEJhclxcj9TAW/aPcYy5+cyfmqyWSjfD0=; b=ZggmQhCQbkrPJS/C
	804V7SE9FcYCV/aFIknFLRSE4v8Dt16X7M6cxB/Gq7rgVLpbVHJUGMjCBriLpjHU
	Aqa6OeEeWE7IyyKHuCuwXX1p1lMEaiyXGbEhDuirLYxbz8AeTr3c0qX15tYSmVYZ
	d1t5NhT18vM/KHdkaO7qrT7XN493F0faIUcpEbMutqQB3T64kEhv1f3IX74+Ll3o
	q81JJ/iCF3IN66GXiIUwgVYQtB56phMAgV+ShjqXzeIUtVl+VGQMnLUW6t33Ljjb
	yM78BA9SEnBf3qrI9ZzdBKyZEqz0ozlDzoyPziLxO6pJxtDBJaTzc28ZgSijaJR0
	KByr0g==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4beug6r4r3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 03 Jan 2026 05:57:31 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-34a9bb41009so21239108a91.3
        for <devicetree@vger.kernel.org>; Fri, 02 Jan 2026 21:57:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767419850; x=1768024650; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L2wPt/bh0eDEJhclxcj9TAW/aPcYy5+cyfmqyWSjfD0=;
        b=NOlcxBaXmKwfj3rANUW7E43230Xp8D2XxkAwljpgDcP6PxDhJBcLKXK58vq65+eC9T
         XeKsxHBZv9m7wAPBKVB2eL+aTsMETSC/Wsoqtc5N3gIrS0aHtanVnjWE/NmtnMEAR159
         wFRNbeluFN4MudkRhgAYVXuufWSD3uQH9izYHbDbvJOMSCi3nC/3GEzZGoAcwegXwo+p
         BUHIjxHCxcxpJgQQRhKZ2nZQ2IKye7B8qhEIj0MhNV8pGeulJoLfv23C5Bbr7hVEuaCQ
         d5R+qwg48j5sn6liJc5DHArbpfcJJ8La/JOF5UEWHAFcoNUb3YJ6ih3zad+wPvUPpjhE
         5rvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767419850; x=1768024650;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=L2wPt/bh0eDEJhclxcj9TAW/aPcYy5+cyfmqyWSjfD0=;
        b=kiPPbNiXiN1A6NBirVNTKpMmdCDPR0lPY4YXliMAt0f/iDStDbjdMdEKuBt0WQxCfD
         DTG4fOt93vtVF/wqqQxsZ/SHPoghcdadiMI2H9zw7gHzmzWdq9Angv4YWMzPRjD3KD9x
         q7crzmZV87nlqvrzbqkBi8wPDjiW16Wkb497pl4dE8Dy/8c2NpYqPg+5ssh0Plfc2iaz
         pMdn2D8DWGW8qMV/VItv6NSj2Rr1OvxuPj6J+gI1e3gdI2NyuXODiYgzye5USQrUuYV/
         NK65V00mbdSod96i0zS+IxwlynLE6fbuj+xy5BAFP0aKYlTzI4lDIHRvOViAqXCVZoAi
         D0+g==
X-Forwarded-Encrypted: i=1; AJvYcCWLtY3E/8iXqANtX7rUI2nErGCHoEvCnvTlXk/wl67D/sShPx5NT/TXdhgN77v0Ks2O9PgAA7UAGAun@vger.kernel.org
X-Gm-Message-State: AOJu0YxFGvBd7PBgf+wKiLChn9xoUlU7AKFoJBkzAe5PcuOMB4vMIHFE
	0aOCMuC109YPNzMvt8e0onVr6mfMK6sEm5JTLIDP5VmH99QsTJy4nDYYOSOz6IMf/C6jTPvomGm
	IuflOJOtXdiYS5XYaNOmGgdVH81uq5zhusSfQb4EhKXOeNeHnpkUhDprTd/zAGw7H
X-Gm-Gg: AY/fxX47jqz++UnQ5sYZ+rMiTTVQ4XJx/c5yvI53fclShZQ5lkk3F+Eh/i3PqFDRRGf
	huL6dtPdZc8ds09FZ8Dnggnbxx7s63+FUxl5LRj2Jm06Td3EqoJwDJCd9HF0ksvDzZC/bEE754Y
	dGVZ76orMbn5OA4vfiZ9bWsBFQq3og09LrFNmcCu5Cw1OHwoGgLqnA2tlhtTevkEyINYJeT+00i
	79jI6s2ldXRV9VbT67UZHqBO8tkQ7De6wGEG6zarwqBXKFBWZhxHTahuEsTiBKTjOVmQHsT5NlL
	horg74mANN8hyK9QoSKCAnts9ZW9Jychm+EJm97jOXIVc26Owma/T68Mud+70TdtC9DaKpNSa/2
	GWP8/Sky2UD5sMAVVOru57CTmWDk18tTEzg==
X-Received: by 2002:a17:90b:2e08:b0:340:ad5e:ca with SMTP id 98e67ed59e1d1-34e92139e3amr39340773a91.12.1767419850116;
        Fri, 02 Jan 2026 21:57:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEpcCg9fX+H0Pn+w+Tps8ZXvwhpB5foLwu3uwOPMtZE7QA+g21xkYFtg/YbNaZowr2UC0nDaw==
X-Received: by 2002:a17:90b:2e08:b0:340:ad5e:ca with SMTP id 98e67ed59e1d1-34e92139e3amr39340751a91.12.1767419849639;
        Fri, 02 Jan 2026 21:57:29 -0800 (PST)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f475f1726sm754760a91.4.2026.01.02.21.57.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jan 2026 21:57:28 -0800 (PST)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Sat, 03 Jan 2026 11:27:07 +0530
Subject: [PATCH v2 3/3] arm64: dts: qcom: hamoa: Extend the gcc input clock
 list
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260103-ufs_symbol_clk-v2-3-51828cc76236@oss.qualcomm.com>
References: <20260103-ufs_symbol_clk-v2-0-51828cc76236@oss.qualcomm.com>
In-Reply-To: <20260103-ufs_symbol_clk-v2-0-51828cc76236@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-GUID: ifc_T106XCojaUa5qsBmypz4gjrNihkB
X-Authority-Analysis: v=2.4 cv=P6Y3RyAu c=1 sm=1 tr=0 ts=6958afcb cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=us8TmX896EGkFYs_XRIA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: ifc_T106XCojaUa5qsBmypz4gjrNihkB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTAzMDA1MiBTYWx0ZWRfX/ks+MNn5wcvr
 FQF17Nd0CpSBiyH+TGuqibUqsS6OWzN5NexD8qyUvldYI/Vq9LYRhcOraT/uaX+0W60CDqzH7Av
 0ZFKXODiYcXZmO5UTYM+M0hUOCJR7Ln/cYN2OI57GxYCvJs2WT6iGtfH635hOqxIJVh1PsT62mx
 tpnOOFThdFj8ECnNmlad9mlff8mgP57MxnOOgQSOhVU558WWdNuTwGsbvQNuFA68SkliHz0tZkd
 jdc4Tej3yC7MZ9INndbnQoJo8zh7PzbRY3bLQHbp1cLCwG+lmG8nSC30YU0CHodJJ9bOYh4F9DT
 L6iomqdsEldq7vQPlAyxCBi4x4bF38eCackVGA8xMyLkLiGjqm6ntAanYWfOe4jxLxVLu1B6bSM
 5SGekSy6KuanPTPWuE8itdFk6N6IUCFahCoSWcUAWjklxa7MtfzLmu1UeVhHTIDalK30n3uGCAu
 55WAfarCZzqOOVVEJYg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-02_04,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 malwarescore=0 impostorscore=0 lowpriorityscore=0
 phishscore=0 spamscore=0 suspectscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601030052

The recent dt-bindings were updated for the missing RX/TX symbol clocks
for UFS.

Extend the existing list to make sure the DT contains the expected
amount of 'clocks' entries.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
index bb7c14d473c9c523e1501f9379ee7049c6287e96..21ab6ef61520695d977f9d741ce633cf537171ac 100644
--- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
+++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
@@ -834,6 +834,9 @@ gcc: clock-controller@100000 {
 				 <0>,
 				 <0>,
 				 <0>,
+				 <0>,
+				 <0>,
+				 <0>,
 				 <0>;
 
 			power-domains = <&rpmhpd RPMHPD_CX>;

-- 
2.34.1


