Return-Path: <devicetree+bounces-217911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 722C6B59B51
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 17:05:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 22D7316B742
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 15:01:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 463113570C3;
	Tue, 16 Sep 2025 15:00:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MnTqs0m0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAED534A32A
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 15:00:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758034819; cv=none; b=e5WDBdhcQz+k95Kks/1M4aincY/fgrdhjBk1pB+Y+yt9j9nvwsaif1Xy/uXDrTr0HzKMtGQpze+RhQAffYwauoAybXnqreZxEDY0QA0EZ26aaBFejjB2aYq6ErOv/1TqAfqmt13O5IN/XYeBwteXFhmitar0iPG38T4D4Uc9EYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758034819; c=relaxed/simple;
	bh=VITe518dJvceZYXI5Zs5G2EbxFecKGbskjkdUpE+OBE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=R9wX6Cg4+WrXCCf8M+9GRqqQ4IVxuwaAwGmij7TC6mAzsn/KBxsNkXlJO1xdub5rG2X7hpx7gq+zFHvPQBz6sVwvgw6PpvLUwTn2JnRV0RqH3kXW6XmpQcdfDtnUpKc1mbP13XrA52MIhbtD67MW233o5jAwSYcnG/rSxdW1OVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MnTqs0m0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58GA49TL005233
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 15:00:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	B8o0rUX3vuCCRx+XIt3VRsCZEuZbtOTNGliDlDNmyC8=; b=MnTqs0m0BQFkF5uo
	i9LaohX20Vl8eMhtydS4Y8FPYJhLqReF1+E8l1lYLYf+tCGVg0KZrXDWlXs6sDsR
	1hMDou8T0H0I1KAnrn4XJs5sgBOzFqImfV3R7U0Al2Ca+z7UaoxpdXTti4A6ZAbB
	s6GlxwOZnzmrr0kyfE8dKIb50859LFiC1cUTczjLjt/W7tFun+TgZdbeNb+nSZpG
	AZbtBCXjN4IxCNgqZk1D4Igq335tJ9HVTwyWW2EQfSqOECPhFr2WPlfi453KRhMt
	JCXKOpg3A+Y9ZsCeN3Zuh5DnMOYdtB3HglZPRwkXOHZ+eC0PpTS9WOSkB0zV58PO
	/uIjQg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 496g5n4x2d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 15:00:16 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-244581953b8so65255485ad.2
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 08:00:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758034816; x=1758639616;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B8o0rUX3vuCCRx+XIt3VRsCZEuZbtOTNGliDlDNmyC8=;
        b=MfiGCimAltdnwqh3mCBdr+lT5NqvlFwh/z39Bv1WGIHZuTjVn4yCApMGF7o+MEJF5a
         VmngTgUSYXVQXUfqIJ6b+oGVhjtdJn9RKWlJlat9Xujw1VH8q4X5MPpqK8MjhiIqGP5y
         dU0ur0dTXq/W+qOD+GMFvFHz1V2L6c7Bmom5n7792AlJrW35U/2t2Pcauc5X4kG2EVSs
         UjjTMnsiyhAneMlX+9sEp8yGfhqINWYw3LmHB+cyDiliJmOyUXDZUbuqET3nf8n33SiB
         VhDl4VJXagaibgejKzk5IYDsk46J4i1rC0S72jzKEEO6BSeUaX7v8iVeRpV3QBfiFJ6Y
         VYSg==
X-Forwarded-Encrypted: i=1; AJvYcCXKz+SkHuKaTo47+BFCiYwLgBE18oFlOS4TRyp/7F9LIDmR4aSYB7sH6y22sSED1lYm5BEVp2s8/0jl@vger.kernel.org
X-Gm-Message-State: AOJu0YygPsjv48jZoMBOA2PkNTa6lj6NwaTjcaT++qRqcWqneRDCScoM
	3CPr6hdRQoXSaGFGsjUd/C//sFtLT59nNBQrWwRivkk8InGphTzXBj+Nc+vTAYylu7e0jqEzAC0
	+9SH7zz/JBocnFomySvr1JBbzgoxX+hDPFzEdim1islYs9L8fgpZYMK2nfAjMygk8
X-Gm-Gg: ASbGncu4dYD+RVlOnkCfD11L04EWILqPAvkmqcIvSX6HpKpBmBJZLz8QQM50DwEv3Mn
	tnMo/03fbg8zLqcV6z1ce13Q6YmzhI1RoPG9u5fHogKBpSGbU4llstA86noVaWJ36t48jwW01F4
	zAGDOu3U4AX9MpGh+z5IYxPEaaoq13cYNoGUCzrAl39jLer5SPPZqzGh7Y+cH0Mex9Wx+7awdYs
	0/EPRz3SSYP+HBE/+m6rbya8kN/D8VqbXcIIruPykRz2e1gEucLsKM+X/2URdZ7GmhCVNbDInlP
	KGr/qOxnhywqwutMHSDW6lC+WMkXUNgiDtTnWAWwJCzzAYmxj7SLNh9d8E6x4dgYmbgQ
X-Received: by 2002:a17:903:2f4e:b0:24a:f7a1:50c6 with SMTP id d9443c01a7336-25d26e474acmr191844185ad.52.1758034815499;
        Tue, 16 Sep 2025 08:00:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFnw+Uwp2QJ+pgYTFNW0n9rgW10ooTfi2mixtIM9GmU1l5WTOC9wSvj9pEC52bbnXIrfCo21A==
X-Received: by 2002:a17:903:2f4e:b0:24a:f7a1:50c6 with SMTP id d9443c01a7336-25d26e474acmr191843395ad.52.1758034814786;
        Tue, 16 Sep 2025 08:00:14 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2651d2df15esm74232615ad.45.2025.09.16.08.00.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 08:00:14 -0700 (PDT)
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Date: Tue, 16 Sep 2025 20:29:29 +0530
Subject: [PATCH v6 07/10] arm64: dts: qcom: lemans-evk: Enable Iris video
 codec support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250916-lemans-evk-bu-v6-7-62e6a9018df4@oss.qualcomm.com>
References: <20250916-lemans-evk-bu-v6-0-62e6a9018df4@oss.qualcomm.com>
In-Reply-To: <20250916-lemans-evk-bu-v6-0-62e6a9018df4@oss.qualcomm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: kernel@oss.qualcomm.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org,
        linux-i2c@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-e44bb
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758034770; l=993;
 i=wasim.nazir@oss.qualcomm.com; s=20250807; h=from:subject:message-id;
 bh=NIyml1MlGj+Kf1AvBGjrERl9vMVGWIsWbRk5tvoG0bI=;
 b=enpnufxvvX/x3jsXtCtPfnox8ZuwvUDUthNXJbnpsvbid5A8yO0r4f+UEK3C5tW9XdoCSjANo
 IUqf2MYDo9EA53ORwebFmbPqjriF2gSNjMB2H9CZVDHO6HMHFb8vQ7n
X-Developer-Key: i=wasim.nazir@oss.qualcomm.com; a=ed25519;
 pk=4ymqwKogZUOQnbcvSUHyO19kcEVTLEk3Qc4u795hiZM=
X-Proofpoint-GUID: 4H4-aKoFQ61vai139UNJYiiQynrEdlgC
X-Proofpoint-ORIG-GUID: 4H4-aKoFQ61vai139UNJYiiQynrEdlgC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE1MDA4NyBTYWx0ZWRfX3M9E0rVdXpG6
 CPlpHTHcv/OTS/Z465KbH9eynasV/qlifwChR557yLi2kf6CGMaWhbTqYTCEVg1QKCc1d8zwbaO
 xayYdDV04rODKnCVWDNYpis+4CF1jhkMcpLP4W5XyucP4L7DnAsT7QNSbvN82r/M1nM6nUlFKn7
 a+t8HO8uvg+4Lx7TG2JUPonOaQLwhj052vCD4dTjBqH81A+jIKBdXy8HN2vx4eziOgGMJtinp8/
 6Vwl75oTQM4SdKikl3qkR/pQZLI6DYlibI0XeA369tIVm/iVwMWSQg2sMnQciIXjLT5VykFXP6D
 OKEv4eUEMLtGPYCG6cdqKaHkxbG/P/lxYo8rBHiVssPNTPPrO9lgz+TrkX86+vckxTjbZykpLCN
 zSdwLu6v
X-Authority-Analysis: v=2.4 cv=SaD3duRu c=1 sm=1 tr=0 ts=68c97b80 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=5Avgj7R_EIYQh5X_CpQA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 malwarescore=0 phishscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509150087

From: Vikash Garodia <quic_vgarodia@quicinc.com>

Enable the Iris video codec accelerator on the Lemans EVK board
and reference the appropriate firmware required for its operation.
This allows hardware-accelerated video encoding and decoding using
the Iris codec engine.

Signed-off-by: Vikash Garodia <quic_vgarodia@quicinc.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index d92c089eff39..5e720074d48f 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -385,6 +385,12 @@ nvmem-layout {
 	};
 };
 
+&iris {
+	firmware-name = "qcom/vpu/vpu30_p4_s6_16mb.mbn";
+
+	status = "okay";
+};
+
 &mdss0 {
 	status = "okay";
 };

-- 
2.51.0


