Return-Path: <devicetree+bounces-217987-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA3BB59F11
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 19:18:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E994E4E2E58
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 17:18:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC57D258CE9;
	Tue, 16 Sep 2025 17:18:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gcs7SwaT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D034246BB7
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 17:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758043115; cv=none; b=DvInuAyd4PicrY0c/SXV2pIi0R6DpfCDX+PLMUCACGmw96AS2w/U8Acv95cordEgPVMEw+8mOAXxCsGooYlMYhtdVRt5WKYw+YE0foxcWYqKAMxEnOXdYTXAYB92IruyKyMTRv2nllgOJBLXATnuil77G38WyWlKakb0c7xXBOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758043115; c=relaxed/simple;
	bh=ZwNYRbTm/3ihTxA98YM0MdJCldz5qyJxHbgzBPaav5M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DPTVL9aRInhHxu/EXtrn+d3zbnb23k9FA9MNz2FmTXs6KkaF54kBifV5BlkJhGAREBwavEXgKYYBp6+fHKMp0JR4q8Ww/GwX6Xac+0k9l4oH1bdxBGwYHhKlkeMRoRYh8GWZi9PPn107j91M8Ou/s/QvbRiTlvYO3j/8OfInmb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gcs7SwaT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58G9vlBY020041
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 17:18:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yxc/mILM1q/0/Fa5uPgQbbHEHYivQLwEMC0hzGNMM/c=; b=gcs7SwaTuRxXpRgZ
	0YXOf/aNXN3819AmjzGz2fx5Kf+z0aOrE5ntpbFEFlRO/6iQqOdeDQmTEEoUDRfG
	GRLZT4zBaVrtN+BcF7qTPIVIp3Vb3uAC1qFa6lam7pPFtA96IrZSrxXDVoNciecY
	6Ym2m1Ge6xhSeynuhmSW+MYi4VyFP+nvig4OlKgL9ve0BG9UzVgBTUX8LecjzciN
	othX6hbQ8HKOPv7p7iURo7reh5h9gt6NebHVHn7GNczfL9Z2Ha3lrjmQSEDZaURW
	/LieIefcKbOWcd9vaR1f/J8CM0P+Yqj0rFmNfalsmA0uNwyO8b0GRp1bqk9bc0oH
	3Y2mRA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 496h1snauk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 17:18:32 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-770c2440225so72048686d6.0
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:18:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758043112; x=1758647912;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yxc/mILM1q/0/Fa5uPgQbbHEHYivQLwEMC0hzGNMM/c=;
        b=ALC6o2yzUk2fQ9mAnIX+aLPjiXKijwiHnzf2gk2BrSlduiuG4Y9PxDOsyXq/LSmiOe
         AuQOKg5t6ilcc99bC6LZNNRLTfceBpEos6k2rNI0kAwxzVxQN+Jb/OkQOMhfTrLY/cdF
         wjAFvR6M61hc7S20J/bkLskLMx7pZ8lUUhvFQFPxelXI6DBhFOsm1VD/fMHzQJ2nqED7
         u+dHFTL6sqPml6me5FXSv7zrrhT47g0NmpLiBbx4ccWUsXHUPgvBEoddmj4gbrjZnbdm
         h3K5j5QTpOHAsKGgYczHgMvetWwk3FDiGFhaPeI09XnPtynIj6++vNG4tOhd8aobD4YM
         OeBg==
X-Forwarded-Encrypted: i=1; AJvYcCWiJ5XiK2tfyYjQFbNDm4X8r77N+Jol4hlR9TLXPTP6wNky2pgPjaHIr4FBCr1PjzbuwxI0DsjYMFZt@vger.kernel.org
X-Gm-Message-State: AOJu0YzPaVRgMLkw3ZAee10aLVUNHlvts6YvqNLHWwWaCzU5smkWMZPx
	i3VjTi4DouRan6msykNK91pQS6rOOLZniJGE2t9D9BFwWxRno98bFkBOg0uxSpr8QE+Km7oVif1
	xyVir2HRn2tfDAZBk4qxUBg1gFBMQ73gxi17CuKrKaLwQrLNHSRWk/+rvRQy9KOV4
X-Gm-Gg: ASbGnctU48yr7isyVQ0bxGGtKPLZ+HVlYPgOwNGVGqZDbfwAJhHyQ/Tz12tf21hgb2O
	NdvFCXSWFASefQ/K7aVm7LCI6HFKdeURPUXbzUbUCoAC8IUam+pbAcH+CBvHXANCeOP00i0951g
	gwMH9w3JKixLC1hNQ6DPJCk9kAVbJtrEXCSjHuul+WUvrXNM77T5lOJ4KJLUuh1L9XlaKsarPhm
	42M4fStBwZca5EfIySEfZUf79Xlk9064vZjcP4LK8Yog+SI58W7SgVg2RSdCi81FUXNJQcBJvFn
	5A31IzYGCuieYw1tjbxJX61GsMPjE98sXJbgPBU1FiH3eEdn+w0R+RLDfopm1BhSBwB8S2oS9bU
	E7m5Pq2eDDiElehAvGUJS9r/WKQTiM+S4TBwsTyLhRSnDgEdJ62EV
X-Received: by 2002:ad4:5cc8:0:b0:78d:8207:a2ec with SMTP id 6a1803df08f44-78d8207a382mr27514466d6.43.1758043112088;
        Tue, 16 Sep 2025 10:18:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF/N0yTxBMVhcA2jmh05zZcG5VyJCQKu/QBpWCiji1XzpwhIBMZ8Nk16EM65M5m6Qs/P0AFiA==
X-Received: by 2002:ad4:5cc8:0:b0:78d:8207:a2ec with SMTP id 6a1803df08f44-78d8207a382mr27513986d6.43.1758043111456;
        Tue, 16 Sep 2025 10:18:31 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e63c63cb4sm4488026e87.78.2025.09.16.10.18.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 10:18:30 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 16 Sep 2025 20:18:28 +0300
Subject: [PATCH v9 1/2] arm64: dts: qcom: sm6350: correct DP compatibility
 strings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250916-dp_mst_bindings-v9-1-68c674b39d8e@oss.qualcomm.com>
References: <20250916-dp_mst_bindings-v9-0-68c674b39d8e@oss.qualcomm.com>
In-Reply-To: <20250916-dp_mst_bindings-v9-0-68c674b39d8e@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1329;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=ZwNYRbTm/3ihTxA98YM0MdJCldz5qyJxHbgzBPaav5M=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoyZvkAHdDuX4Rb9hZqHh5ODghfd0eL4fukyLMy
 yzFCMnsG2SJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaMmb5AAKCRCLPIo+Aiko
 1Wv4CACGXYevxIXML+dHLFTglgQu9Gzvf4Kz5Bl59T1UcCvLleCvWO7qV1LbnGWiekQpJtW2LSV
 q5/pPAxO5psX8rVDuwUxqBjOZmQNaoqLs8JHhJFnTYJaPeJrFauL111Ec40QwXnjY6zbna0hFyn
 fp36x5WnbsPCEWynYtrvyj4flbazjrSa3fBXkQgfFzCN3yTLyPhASGjYilEGr5RSs1nfeQnCgwI
 YfHDSPG2MnbQNkTwzasahVoIYjV7BNf8EuTUyBXd4ViSNDvxtcaUnpZDBdK+fGrE7C0YPDj/h1D
 G9y6gtFpPS+z9kl5ovXw6rlTNJ3x3eIL8W2OZEDCfy0nI2wl
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: AKvMkRb5OwOYbXjVE49NaSjhQWEeeNvF
X-Authority-Analysis: v=2.4 cv=A/1sP7WG c=1 sm=1 tr=0 ts=68c99be8 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=llJQ5I4GozCAaw4gE5wA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: AKvMkRb5OwOYbXjVE49NaSjhQWEeeNvF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE1MDA5OCBTYWx0ZWRfXxfxDA41KIzLo
 ocnRzDdeQNScV8roWiBPy2zTk8LpGFGgl3gIVOdIe+dWyMC+8YAERScH1Ki9uLw25zLlnBXWxKN
 842VhwnraBmCFyWRQqdgUX0ST0l3yXTev223D6pMYctHH16gV2AMAqImqkGneenp8NMF+/jtg6q
 ICvtImmm4repVys0yhiNNuOneEWwIEEZh3CLiYy6+PKNwqYmqC4P5IbQwLc7ZUexxB1MSb1BEJj
 yRqpFc2CmGJB03gMdoYaGjg48MvssAuhGex+ulm4ZPqNc6GR+hhGFiy4obQ/FM5OEWB0deEa6Gu
 ds0spPPEQ5l6dKs5jAoc0rZKRULlXDgdfjMgJLNpXazkspKg5VR5r7MT9nzIOyMNt5p9owWVKJc
 xt81Qeol
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 spamscore=0 suspectscore=0 bulkscore=0
 impostorscore=0 clxscore=1015 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509150098

SM6350 doesn't have MST support, as such in DT schema it has been
switched to use SC7180 as a fallback compatible. Make DT file implement
this change. DisplayPort on SC7180 has been supported long ago (and long
before we added support for DP on SM8350). The driver will continue to
work with the old DTS (having qcom,sm8350-dp fallback compatible) as
even after adding MST support the driver will have to support old SM8350
DTS which didn't have MST clocks.

Fixes: 62f87a3cac4e ("arm64: dts: qcom: sm6350: Add DisplayPort controller")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm6350.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
index 2493b9611dcb675f4c33794ecc0ee9e8823e24d4..8459b27cacc72a4827a2e289e669163ad6250059 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -2249,7 +2249,7 @@ opp-560000000 {
 			};
 
 			mdss_dp: displayport-controller@ae90000 {
-				compatible = "qcom,sm6350-dp", "qcom,sm8350-dp";
+				compatible = "qcom,sm6350-dp", "qcom,sc7180-dp";
 				reg = <0x0 0xae90000 0x0 0x200>,
 				      <0x0 0xae90200 0x0 0x200>,
 				      <0x0 0xae90400 0x0 0x600>,

-- 
2.47.3


