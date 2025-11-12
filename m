Return-Path: <devicetree+bounces-237419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 40CD6C50E4F
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 08:20:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4AFF23BB760
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 07:13:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 371B92C21E2;
	Wed, 12 Nov 2025 07:13:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P32Hgkbv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="C+3sBROF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EA432C0F6D
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 07:13:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762931589; cv=none; b=GzzPGkl17CTbpPk6kDJQUFAj920W0eHGWTM4SMjdjR255l2IzqmlxhAkQtESbDIIiqouZVhCvj9J+9gDayAEFg7RYHjVJHXBZaiMCNtHygEiCqIFx16GlJYePU14wUv7+g1XYkwkWOzvrXjSl5GUV7K8dc9PMGhJO0SRphLMpLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762931589; c=relaxed/simple;
	bh=4aYdDZnJbmsoU2HiJYC8F1DbRX207Eq/Kr3uzGSvN8A=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=bLFNiJpkMsGFgBYXSNiJV5iRoItxbxZUeXDmcigNRasul73txaciD83t26x/EPJHdLW68M8x1Zu1mWl4c85zbfA8qt6d0GYaTtYWgs6FBH3QnnFHUSqhSboX7t6tIGtItSwpc3c+fmQyDah7ecupC5PDkqLeKZaQDwnTztWMdC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P32Hgkbv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=C+3sBROF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AC0vnCA4007672
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 07:13:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=eOYDtZaBwRZ
	Q9DetBBK0MKWCVmuGLVfh18056m/6hxU=; b=P32HgkbvBcc/LAkX/pDh0qx01Od
	918muVsKq5W1VqdOn9w4BvIRPSjuP32V5yNULs0+1Dk2By5WcMMnPGz3CevIGm5e
	YW8Wh7J4rOsVG/wZ9DFZIxVevRCeOuISODXNp1wKHvrKdqD1mESrgc09KD1Vg++g
	JU9/rxVoGwuc8+1Rp9w5NUA3pgre7M2CWYZfcXCz4Zp223Jtmn192qCYogRuoW6p
	dlOTxi274SPmKG86V7SRLxWf1IwVUK0ksiYTRf0vzz3lwDlN6M9WWuqdtxXflmZc
	HKtwlZqKvia+ClQXl1DgmVy55/LuoOrQAHRNmF7Xc5/fB5z0u9lvt0QjXfw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acg5bgwum-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 07:13:02 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7aed9ebcd67so164995b3a.1
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 23:13:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762931581; x=1763536381; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eOYDtZaBwRZQ9DetBBK0MKWCVmuGLVfh18056m/6hxU=;
        b=C+3sBROF8Z116Zmc1d/U+/FsGErWkFdbFvU0Hx9pCkoXQ44iORsL1kTo9u4prH2Nqx
         vddjqYZSC8lm6ZjJDfGyYtiJ+ror57wuvWybaITPooaQsq0XYnRh0TJzPvq/er1JFBcs
         sm+GNjbUjt05yk/aVfZvuDOz1AEAFv6TV8QosmPOOtQXUSQp17eNAbLnqTl+OBK0hWai
         qBEO8oVtG6LibHdNsMXJ60szTt28L5QdyFOlD5uJx7+rB3B7RAwLB2QdetMNhreqs7TD
         8QHn2eFYNvuRcV0QTCUD6mDo4F1BdZvBA1XPfCLW7JiLgs7S7YM+cUTviO6nB/339l4K
         zt8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762931581; x=1763536381;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=eOYDtZaBwRZQ9DetBBK0MKWCVmuGLVfh18056m/6hxU=;
        b=T4nROnmDD1sH/1K1Wj4cdfSNDG+aprj4BrpDAvySaB5SZ75DNFslxc82NDQ0IquYLz
         hGQcHrr0lPkP668q9sxCryqTfPZXepXErc7kyoLiCnObaxw10wDgli4sGn96lTRIxBvB
         ShoCTnv+qDf31/YlZT5xsiA3jVJdspsMTQFwkyUwVzAEs8rRKIwAKPft/AvKZZi+MHMb
         Zz0ei4RSMeMR3u81OZsy4uY64iwg7Fvvcd7u/g3fAj6ykZjNeuUe42sEOzheStwZHO3N
         kwxtUP4W/H8qNoGug2QQbgMRGHchj1hvB3Jz6ghTaUSA04cud/EvupqnXKdjfiCM0Vqj
         7irw==
X-Forwarded-Encrypted: i=1; AJvYcCXN0PYjYKBCwae1HNrgUuM0l77TiVjVeGWUi/+2YKzV7PNOwXemXXEuFERgwhRLlSLl2D2vGOWFITwl@vger.kernel.org
X-Gm-Message-State: AOJu0YwSsmF7PBsirfoiVsoeUvFsi96AGTZwV9v4O2EmfYzLbzm5tWLf
	fLR2qTVEXOHPnv78VeRGeI/D1mHj4EMIe6JVHKqRtHTktd35PhZnMvXTDBZK00boN8GsXSPf27S
	hEgTIhSFNSiaLLrjMsznhUXNGYPhMgRS0vSquOMx/MK12LKh0Vqf77m/Kk8BwtUE=
X-Gm-Gg: ASbGncsrac8A67N/YB2ZvOuBNl7iJ2n3N/Xw0VxfX80nLV7YOvRmOfhV/WfsOYJwaGE
	n0lo/TesZ2fyuBw2pYZ0HZt9s/W284MIcjpdA3QIoQgPtHyd4PB/3Egm/bayYA38IjH/xyfkDPp
	VzWy9gbLvfkfR2M3XIlgzM+OjgzBS/SHc2Y81FEI1Qn3C9A68SfvsaJfZzIEUYiiOHHbzI63Lmq
	OHJ1+0Rn61POAWlIGdxq9yW3cNOu22i/FObGMT3lz2bOGWwqMGOai5hD5wYwhkGCXZVWQUAJYvL
	ex98EDqsbH3CTBwvJTVeYh5VzfBpb0tOs4sbkHvg0gciEO9I1eYiTl/BQaR2vQCRg+Pi0U+YrQF
	aHUokb2GGpn/dCecPj7ZFj5hogArYQg==
X-Received: by 2002:aa7:888e:0:b0:7ab:8c7b:b6ec with SMTP id d2e1a72fcca58-7b7a4fd90f3mr1068475b3a.5.1762931581132;
        Tue, 11 Nov 2025 23:13:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGGm1EfQnyHmeFSWOow73JVFByzZLix55It94bORz/gjlPFJ1ZrPYyFozMf2jGzU59fA9HgQw==
X-Received: by 2002:aa7:888e:0:b0:7ab:8c7b:b6ec with SMTP id d2e1a72fcca58-7b7a4fd90f3mr1068449b3a.5.1762931580634;
        Tue, 11 Nov 2025 23:13:00 -0800 (PST)
Received: from hu-sartgarg-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b0c9632e22sm17949037b3a.8.2025.11.11.23.12.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 23:13:00 -0800 (PST)
From: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_nguyenb@quicinc.com,
        quic_rampraka@quicinc.com, quic_pragalla@quicinc.com,
        quic_sayalil@quicinc.com, quic_nitirawa@quicinc.com,
        quic_bhaskarv@quicinc.com, kernel@oss.qualcomm.com,
        Sarthak Garg <sarthak.garg@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH V5 3/3] arm64: dts: qcom: sm8750-qrd: Add SDC2 node for sm8750 qrd board
Date: Wed, 12 Nov 2025 12:42:34 +0530
Message-Id: <20251112071234.2570251-4-sarthak.garg@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251112071234.2570251-1-sarthak.garg@oss.qualcomm.com>
References: <20251112071234.2570251-1-sarthak.garg@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: TLNqEXDD_L-Ng82wAZQrmg7BDwHQ_nZf
X-Proofpoint-GUID: TLNqEXDD_L-Ng82wAZQrmg7BDwHQ_nZf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEyMDA1NiBTYWx0ZWRfXzfe3C1Uw8aLl
 F0lQfF0I+b/vDhqpY6ra6vXAnt8wGQT9kD/XBQHRWlF4/aUQPrYBJVCdwz9D1NHNaKnqeLeUPrV
 V4QYj/+slQIZ1XwnLtc8NiyKfwVHg8dXKkrsXYmRRJjBLMUUupjGyVelI9WbhmTrSrCzQ8RXbmv
 5hogc8RoW9tGSogcwtiyGCaprOjEZ5ANCZqa0xy0vLJQYlAaH97AwU2SeonoXFWe/+lXBlWW6rA
 NSF6andcb6CiDN9In6YKG00SjWBkTFg0+yOlImPvJG3F1I0yI65pcsqXHTelNpBd9+9oYM+3H3i
 R1uTn1GfJBKY9GqGrYt121S74MrOHFoLjqtmzYDJNzsAFZ9M+WhXkeUhD6FoYJ5+0EEeZbPgQJl
 fphbs90u0vH693+pWHjLDWJ56YSAMA==
X-Authority-Analysis: v=2.4 cv=YYawJgRf c=1 sm=1 tr=0 ts=6914337e cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=CuSXmbl0-BlP8Dydlo4A:9
 a=IoOABgeZipijB_acs4fv:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_02,2025-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 impostorscore=0 malwarescore=0 spamscore=0
 priorityscore=1501 phishscore=0 lowpriorityscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511120056

Enable SD Card host controller for sm8750 qrd board.

Signed-off-by: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8750-qrd.dts | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
index b0cb61c5a603..439ffb202599 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
@@ -961,6 +961,22 @@ &remoteproc_mpss {
 	status = "okay";
 };
 
+&sdhc_2 {
+	cd-gpios = <&tlmm 55 GPIO_ACTIVE_LOW>;
+
+	vmmc-supply = <&vreg_l9b_2p9>;
+	vqmmc-supply = <&vreg_l8b_1p8>;
+
+	no-sdio;
+	no-mmc;
+
+	pinctrl-0 = <&sdc2_default &sdc2_card_det_n>;
+	pinctrl-1 = <&sdc2_sleep &sdc2_card_det_n>;
+	pinctrl-names = "default", "sleep";
+
+	status = "okay";
+};
+
 &swr0 {
 	status = "okay";
 
@@ -1053,6 +1069,13 @@ &tlmm {
 	/* reserved for secure world */
 	gpio-reserved-ranges = <36 4>, <74 1>;
 
+	sdc2_card_det_n: sd-card-det-n-state {
+		pins = "gpio55";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-up;
+	};
+
 	spkr_0_sd_n_active: spkr-0-sd-n-active-state {
 		pins = "gpio76";
 		function = "gpio";
-- 
2.34.1


