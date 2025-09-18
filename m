Return-Path: <devicetree+bounces-212124-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B4DE3B41D75
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 13:50:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 13E9A7B4181
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 11:48:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 097FD2FF667;
	Wed,  3 Sep 2025 11:48:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JC/pRYKb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 716252FF643
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 11:48:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756900090; cv=none; b=KCBdOvWdDEif4+xJjWAipaiP8gMKPLzGPfK/GCbP43xSJ7tIlu2rsIPW8vaOdsFjDID3LJIMtewIzBV1vdbyyS12H0kJgiu9j6sewi3pPgRpbbYF7KV+5ZUdOu37JSCwRq2f6MpVmUwLpnXW8BaXwSznmIKe109/LeZ+DDlBC8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756900090; c=relaxed/simple;
	bh=iL/XzmseyPpV8hK/O4kgQg+47B+ikK5yJ0SDgvgg8R4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fpjeFan/3+NQ7wSfZEUFe/5c6DeV3FGrAImNyo2WM6a4zS2B4UUScjdaX+3k28f2JCNqcOrScG3hU2qVdZ6dFZUmZtF1pJxXJdZGh4SV7tmglFbprKs4j7DKXx0/MMm6KPKa3kT8SxiIyArvnhXQ0GglXV6ScvCG4ufl0qpYuxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JC/pRYKb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583BEnak013895
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 11:48:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ptzMoe5mzU7pe9gfLF0XACcwJawnpCLYmxbK3KE0HEw=; b=JC/pRYKbK3k92BXV
	5ieyjJGR9qqYiy+gkh88U9g4nNfZu7a3VAN3jfwXRwRECPXGNv7ZBqbXM/rXtxni
	XJHx06jOf79N1jS6Bd3FeJzQQ6hv0wCgx0VkCFisoZUgtpM3Y1uP1rkJRLKrwqmv
	mS+k/a5MQp1pdznDFX0B6Nn7zoBWSSFyv5oOjDYEdJ9a9acvCu1DaI1iSVYRx1CH
	hjHlh0P382tqnb+7a+kSnrwq/87v5r5XWZBabzacV4sWe6BNrKU7Fek7l8KAq9Rs
	yhoLvW0VErBp3KYDBF0SBypIMvpTZTPn3nwzkUjBsDxZFNTWFoKLF4+JV+uqVv2k
	EJLm0w==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48w8wy7ctn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 11:48:08 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-77264a9408cso4198032b3a.3
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 04:48:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756900087; x=1757504887;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ptzMoe5mzU7pe9gfLF0XACcwJawnpCLYmxbK3KE0HEw=;
        b=NzbOVAGNxoU1PW+nED2UQGwjf3zgsZLt5ZEpsDMZVKw0C2XIg24Nf2WH+nGYXk6DkI
         Cp1rRmFlxOPa+COD8/w9xd5o4/DqLSuuAHQRu7iXM7AGf4iViSZfaRijm2f7onuUjzXn
         O3mvs1e8Ka4FfO8CQLJuyU1koRU8xXaVZElFaOSTIa9eRcCaQBiu1rB1Y7p7/MYwUUYe
         jKeoXZZ+uyywoVZKBv0OpmDb9sItrEm9F3dKBHVlfbUoVo3n5W03oNZArKIrPr6XoEwM
         WtooqUtkWjruNg7XaeYRlRhwmsYuqKRXUgPSSf0B+u+c4nGqVxQn5EMaPEEh4g5yz2ik
         6I3g==
X-Forwarded-Encrypted: i=1; AJvYcCWr5veAgHEnCNHRlbMsibCet7KTzvt/nX6KYwI793C30udRHcn1lGqmRGUESbanWTPcVUlppkDUyyVk@vger.kernel.org
X-Gm-Message-State: AOJu0YzlSL/WJRhM5R/IJ0fJ5UwQUKKCFZ2kgmbGSIXaB9YEuPAVTX0O
	Uyzk2o2/f3yBdiJrwYeyAuDFSvIjRAsiA9FezRqh9Xg8ZiYiOE69XQXGUExu1En05TMquNBN+Tw
	FVlkedltAdZV0ukv3T8LLL3pW8mXikgfQu2Dmu3XzYc45XEDkL5ty4qEwkRunxH+Y
X-Gm-Gg: ASbGncsO9gyQlA9uZEEyRjPbs0qfZjIQUfczStpFj0Ph0w1832tOJzoN9Mscn8w+O2x
	CqsWKxokizCYEkGsne6YJkuo0pqpxI5fQKCoj4LHqUvRCqweE3SGmUyaF/UxFdecPkx96r741SG
	OWMsoWXJzUw3tOfkQU9k3/1P68FhqLLURL1qJrzVL7T0hBfciyXRDUwhEmFNF1t11iUlGl03i7M
	sHb0XybH1xAPaVRb5UytHUEw7P0PTgbRaX3MkWv5ejXrf+9LnpGg7dwX26Yiaf01n/ut3snVita
	UutyUCHuyTsAOF8IyBjTCq5DAS058e3tjKwl2MYBjqahP6gkM03q+B+cM/BZkpdwkUjm
X-Received: by 2002:a05:6a20:2e1e:b0:245:fb85:ef69 with SMTP id adf61e73a8af0-245fb85f22fmr6898054637.40.1756900087308;
        Wed, 03 Sep 2025 04:48:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IESmO9fuCQGZL0dDqdivH4Yd3OgnaOimF5E4/NDsZ5Ka2qIuzRAwLWEesSF7738knmXbVKR1Q==
X-Received: by 2002:a05:6a20:2e1e:b0:245:fb85:ef69 with SMTP id adf61e73a8af0-245fb85f22fmr6898025637.40.1756900086874;
        Wed, 03 Sep 2025 04:48:06 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4f8a0a2851sm6584074a12.37.2025.09.03.04.48.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 04:48:06 -0700 (PDT)
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Date: Wed, 03 Sep 2025 17:17:08 +0530
Subject: [PATCH v2 07/13] arm64: dts: qcom: lemans-evk: Enable remoteproc
 subsystems
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250903-lemans-evk-bu-v2-7-bfa381bf8ba2@oss.qualcomm.com>
References: <20250903-lemans-evk-bu-v2-0-bfa381bf8ba2@oss.qualcomm.com>
In-Reply-To: <20250903-lemans-evk-bu-v2-0-bfa381bf8ba2@oss.qualcomm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>
Cc: kernel@oss.qualcomm.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-e44bb
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756900050; l=1181;
 i=wasim.nazir@oss.qualcomm.com; s=20250807; h=from:subject:message-id;
 bh=iL/XzmseyPpV8hK/O4kgQg+47B+ikK5yJ0SDgvgg8R4=;
 b=ehU7262fiOcOFmjWpHiqhp3CyfXbLbOyDWLLhlZwJMNZYrcsDHNXGKfhHqTPFDGcrJDmqUoZ6
 mp35mSc0QhTArkAIimiorimSB98rb2w81w6HnSuE0LJQC0RT8YEwLK3
X-Developer-Key: i=wasim.nazir@oss.qualcomm.com; a=ed25519;
 pk=4ymqwKogZUOQnbcvSUHyO19kcEVTLEk3Qc4u795hiZM=
X-Authority-Analysis: v=2.4 cv=Ycq95xRf c=1 sm=1 tr=0 ts=68b82af8 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=08pr6S3s0jzPFaFj3AwA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: 3QW8VY2NLZufloDefEVLqEz8OMvCwlKI
X-Proofpoint-ORIG-GUID: 3QW8VY2NLZufloDefEVLqEz8OMvCwlKI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTAxMDEwMSBTYWx0ZWRfXyR7+IsvDr7eN
 rZyeYVdrRH1kynb4HrKajfpcbuSbwknhDE1wbqvWzxlA8HU59ep76XCseCqpEWuNEuLdQSkRASf
 hkHFdgg9FGi32Ae1VZYwuuOeUkL6IHRvWQZerDb+1GiDl/j4SuOWVwvcN/8KA3rp9cNxMaYkshC
 J8dgRRATdmmb2xs+J8TKDIMK4Tc8dY+snq9sNpH202/fX2/cmlCOLfw5SMRmdirhFc/ME+3/ik1
 9sYCS3WTFV1qXv+1un7TAKLRSPMNBwEkUjmc+otpGwcvbQv1W3KL8buVg2tIzYLQp2a4iR98PnH
 PXVHZKjvIByCsDcZZJ/TBvmenQtfF3BtDdfgoVbYZYuLHPsA1N66l90FYDTZVie8QM4GuUs0Eae
 fhJc7brK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_06,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 phishscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 impostorscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509010101

Enable remoteproc subsystems for supported DSPs such as Audio DSP,
Compute DSP-0/1 and Generic DSP-0/1, along with their corresponding
firmware.

Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index 7528fa1c661a..eb7682fa4057 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -425,6 +425,36 @@ &qupv3_id_2 {
 	status = "okay";
 };
 
+&remoteproc_adsp {
+	firmware-name = "qcom/sa8775p/adsp.mbn";
+
+	status = "okay";
+};
+
+&remoteproc_cdsp0 {
+	firmware-name = "qcom/sa8775p/cdsp0.mbn";
+
+	status = "okay";
+};
+
+&remoteproc_cdsp1 {
+	firmware-name = "qcom/sa8775p/cdsp1.mbn";
+
+	status = "okay";
+};
+
+&remoteproc_gpdsp0 {
+	firmware-name = "qcom/sa8775p/gpdsp0.mbn";
+
+	status = "okay";
+};
+
+&remoteproc_gpdsp1 {
+	firmware-name = "qcom/sa8775p/gpdsp1.mbn";
+
+	status = "okay";
+};
+
 &sleep_clk {
 	clock-frequency = <32768>;
 };

-- 
2.51.0


