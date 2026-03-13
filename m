Return-Path: <devicetree+bounces-275376-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8C0QNm4utGkEigAAu9opvQ
	(envelope-from <devicetree+bounces-275376-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:34:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC7028613B
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:34:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6491B304621E
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:27:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 629603AD521;
	Fri, 13 Mar 2026 15:27:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OvXNiWCz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Jr15SP3m"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA1F238C2C9
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:27:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773415642; cv=none; b=cgtSa53BQ7puG3aU1pgCm42M9XcDRlIEU6eaDJEhsAz3A66LySKvmRG04xtOPxFr5H9+GhXpcQT65pYhZkI9T0CO1+ZhQpPky4CEZOcxmFqtkUsWna+0IQxNJBEny9dvLniQztBwemjaP900JmDI5h2jOLxs8GbQgNQUgn1VCHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773415642; c=relaxed/simple;
	bh=LTMWrT4n4ReDOyf16sJY7UHX8jktus+r1nSFidaGJAY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tFk6JgJsaMggpU7vSPp/XOqkQPFEq5ggeZad6pjX/BBEaounErfzbwOJuV/5E387MvH7q1t8zmIiLhtUwRNADdiyblaPRoKxdtBfcrdjgpVz7SO6C1ycCYYA0QqErcsqX5dPip47GVNTLyQna1dS2OdI3auqiJJwIY+se5Mb+1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OvXNiWCz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Jr15SP3m; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62DA827u1749328
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:27:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oay1wcEaaCzIwAeqn8e4/HEDtm47kzESVcpsARSuAf4=; b=OvXNiWCz6ZraH3zQ
	i0tnR/A8IasYm3gjZ8b22Z75Qij4YepqwOhELz8TXqdd/VrVEA8p7KIFYI/bHLo4
	ySaY+zIvQJKrpaC1MJQESwqPN4+OkG85ZXPSt0Vo5mZS1YknfBT0ur0QX2HaSoI9
	5EZcYRsCT/xC3CSgir9k8U11fJKhhdsS1aJfUb0oQfEToSLLt3X+x6qMh4ho6cO2
	sUjiLT4XcIdVLLc1eIY7AxV9FqPVWlTCCyKjzOaPGyqwMalC7M0P/M7vdy+J5Ak0
	ctSmQQ94c9JYcetUtjAZEydH552XZ+IAFOKN1QuplNaIYr4mu+/rG/GQZ+8yF0YJ
	pDhLJw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvgj6h24e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:27:20 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb706313beso342521985a.3
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:27:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773415639; x=1774020439; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oay1wcEaaCzIwAeqn8e4/HEDtm47kzESVcpsARSuAf4=;
        b=Jr15SP3mU31pZepRFp53gMwA+4A5NkG5+z+KzQAoxMAJLgs86Bg+YShUrR6aD7B9Jf
         pUf4Vyj88W31y0lYAfiFTEL844n9/eQObLaIWPZXeFGkC4eVEJhZO4i8sdHBM8x13gq9
         nOEu2Oqt3/oOnL6+3R0xzCphbCIGRR+r0VyxokaygzlOXGtge9OlTRpFQ0fRfTpVYaaI
         wS2lIfs2Bc7IdeUksd4BSbCo2iqfckXqcNNYo2XoJeqdWzSWx6zx5+l7BW8KDH3YnyCr
         mVG1Nm9G93xN6nU7j4nz3xq2bHC6RISnUK3xDfEqa5w+6H6sYoIYKfsyh5Mfs9aaYATZ
         txbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773415639; x=1774020439;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oay1wcEaaCzIwAeqn8e4/HEDtm47kzESVcpsARSuAf4=;
        b=rLaNq6uIaEQ767Nstm1OVz9jyziaO1Yk2Zkho0W8f5lEjQqAejp66Chub6mkqPh7Xr
         76SAcUAp3a7+z0VLQCnHyMJObJ3zj9Ecu1ZvgmNB3uyGDXPTzAggMDKygxT2uL0gOGRx
         pJDc5D3saNBd6Tc+LwArPqxO8ZUWLTRh3D3qZCPgrr3LqzMwbjxy5pRn7JaJtDFoJPjc
         HXquec3U9I/MBXY+KLjzWtd67r14GwhHNuTuVgaYCHxdmZLIkYhqJD6UlrmjFfocELH5
         qdkX+MveNxLsi51zI+nDRTAdwxlC/2cKpiu3PjW6eVa133YkdcgG0LonBoVTwWnL0QVp
         uKFA==
X-Forwarded-Encrypted: i=1; AJvYcCVN2zTeJ5TUE2qIwDTRLZJv3c1S/YGjsDE8U7G7U9jgKIIqIQEZuzT9A8+eTPMwWXKcXdAjRCfa0kc5@vger.kernel.org
X-Gm-Message-State: AOJu0Yxq+aaDZc/8XZt6C2/ILhlMVibRV+Pq/vapnSB82MvP6reOlEDl
	W1iC2rFnF25Sf8+7X8545E7nqQbvwszMmqtf8+YlgHbunfeGiqHZIyodHY+pOobq3ViKm75khz9
	8//CtRFNm+Z8kOU54ueu6pVfKKFJab8PQQso9cpDL/R2IpTIy6/ZSqFuhLnaq0VM1
X-Gm-Gg: ATEYQzz11STnierRqCDcrfj5CVJejOAvIDX8KnN7DZv9eiJ7dmHLDVMuGBWofy9szLX
	qxqlO5q4D/Yet7tUCcHGrg4Yy8UcDY5Jq3s3rBiTdvlKnvFyTIoDtKT9//P8B2HLCc1+5fSMZEZ
	YJqZ5UyIxKwKXzGwcymsUqEhqmVKwMfMk8GrGkdjXs5X5FGe9vhWHHBNtHHXGFNhddZLyRNOPfz
	Vt0YSDQJoiXm21JeIRA8sgjP3qpwe0iIlIN9PfexpcDHWrwIzGe7VsY2Lx3u6T/c5CkoQFtOzAo
	i4Uz+lxZLczQzZp8Ak4UIuNn6oDEvL9cEDghrfNPnjKTh+it5KN43uZMjVf+mDjGZ2Dvi8TBkpu
	Ecb3J7na+oBEHaeNDqmOu8zRHSV5u2sDvo6zjQiEcLVAtDMah7NR+MxZblGooN95MGOTPWs+Hgj
	wT+iow0Z18TrC2GE9OQmRDwpAgER+toAEL5Vw=
X-Received: by 2002:a05:620a:218f:b0:8cd:8ee3:5004 with SMTP id af79cd13be357-8cdb5a4c477mr379284585a.27.1773415639415;
        Fri, 13 Mar 2026 08:27:19 -0700 (PDT)
X-Received: by 2002:a05:620a:218f:b0:8cd:8ee3:5004 with SMTP id af79cd13be357-8cdb5a4c477mr379278585a.27.1773415638908;
        Fri, 13 Mar 2026 08:27:18 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a155f33c0asm1603328e87.18.2026.03.13.08.27.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 08:27:17 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 17:27:10 +0200
Subject: [PATCH 3/6] arm64: dts: qcom: monaco: correct Iris corners for the
 MXC rail
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260313-iris-fix-corners-v1-3-32a393c25dda@oss.qualcomm.com>
References: <20260313-iris-fix-corners-v1-0-32a393c25dda@oss.qualcomm.com>
In-Reply-To: <20260313-iris-fix-corners-v1-0-32a393c25dda@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1293;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=LTMWrT4n4ReDOyf16sJY7UHX8jktus+r1nSFidaGJAY=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBptCzQPZssimWTYuBt/1zGCJlGSVxpolL5UNlVE
 Jm3Mdk6G3iJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCabQs0AAKCRCLPIo+Aiko
 1ZkDB/9fv3vAgMyJVh3R5zOEnplOxs8W84MumyxpfVfThpVk9iY9o1WxRj/GnK1bC/fR5OrfrqE
 se9ZxNFgQz0MFgXx8oEl5AAwBP4DKMh2uCr2xCZdlNUzu4tCbZMUWgdL8Nqu1R0/AyTe3i5bcqx
 zGHNyGoK2Aj5ajU50DmGtxmH9//Pvap+/JUoUJh8hNX2bPBcsTjgy8XaPkqRKS93OHvZSLVlLJx
 r2x6BvRZA7Co8NrLfET6FaCTZtCOI7OgkEW7iqeH0Pj05dPCb0iiqJqftYi418LzqYTr4cMnX72
 Is6XvPTjO4npgy07piloapdg7UXC5meu6Rshsl/xxdyFxCX4
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDEyMyBTYWx0ZWRfX0Z7Sf9QrF/ox
 Ft/E4mu3H8Y8B+owBtdR4dVvwFss9q1w7uOrL8yA/rFVRRog+2Bcuh7PKydtv2dBccFCTkSjjej
 v9NjSMgdakePWymkyyziWdMSAHic1+aOkImrI42X945oQx2Hkiss5TFWpeYvbRjLz2ad2pbWL5T
 0qwRMrPTrTIxQE4HGQ8SvHKT42Kq9gJGJHCiscee7B3oH3S5cE4jlSHOuL+qJigOrwShGoetlDN
 ix1SNRehyMnmDjzK1Tx08BJ+J8nnfBBr1RiH3hsBXiuk2Ch6OrDVVaKbHcc5OtupEyULspF9tU1
 QHZg+mqZFKMT/HnghU1bGIvPjovtK7V0voERHYPbivaMRiEl7wEuHn4xw3SP4b3wcN6oXq26ATU
 BDL204uGL1AQlSXHnbV6mFfLz+v9F/fzWTAIhfFoJU9yuvXt+NyDK58sbOyfgPlRSGL7dAbqvXG
 6GSxigxn8d4v9tqJ4oQ==
X-Proofpoint-GUID: yuDn34s6EQRx46F67DdMhx7PXJdVjlEE
X-Proofpoint-ORIG-GUID: yuDn34s6EQRx46F67DdMhx7PXJdVjlEE
X-Authority-Analysis: v=2.4 cv=H+vWAuYi c=1 sm=1 tr=0 ts=69b42cd8 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=UouAheEfswbHdU7NjTAA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 malwarescore=0
 adultscore=0 impostorscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130123
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-275376-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7FC7028613B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The corners of the MVS0 / MVS0C clocks on the MMCX rail don't always
match the PLL corners on the MXC rail. Correct the performance corners
for the MXC rail following the PLL documentation.

Fixes: bf6ec39c3f36 ("arm64: dts: qcom: qcs8300: add video node")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
index f92fdb1cefa0..e175e2967b91 100644
--- a/arch/arm64/boot/dts/qcom/monaco.dtsi
+++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
@@ -5305,19 +5305,19 @@ opp-366000000 {
 
 				opp-444000000 {
 					opp-hz = /bits/ 64 <444000000>;
-					required-opps = <&rpmhpd_opp_nom>,
+					required-opps = <&rpmhpd_opp_svs_l1>,
 							<&rpmhpd_opp_nom>;
 				};
 
 				opp-533000000 {
 					opp-hz = /bits/ 64 <533000000>;
-					required-opps = <&rpmhpd_opp_turbo>,
+					required-opps = <&rpmhpd_opp_nom>,
 							<&rpmhpd_opp_turbo>;
 				};
 
 				opp-560000000 {
 					opp-hz = /bits/ 64 <560000000>;
-					required-opps = <&rpmhpd_opp_turbo_l1>,
+					required-opps = <&rpmhpd_opp_nom>,
 							<&rpmhpd_opp_turbo_l1>;
 				};
 			};

-- 
2.47.3


