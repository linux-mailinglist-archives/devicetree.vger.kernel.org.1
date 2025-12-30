Return-Path: <devicetree+bounces-250512-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 310C0CE9AF1
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 13:35:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 090693043F34
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 12:34:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E19AA2E6CDE;
	Tue, 30 Dec 2025 12:34:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OEFFuAyE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RzJcDiyB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 789C12D322F
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 12:34:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767098066; cv=none; b=Mt2IZ+H/yna/DP65mHCKbld9TLKm2kccocc54nlwnMAEjGAZi37+Kh9smN8KErOwoK4IbFBWIR50cUJC9beGaw33MGc25g/DePPBRgvDBKAGdE2O4seggeb20M5nMNLAc9Ducifc5A89Kmjoi7bJL3I7cfZeFlUxfGki9vzLzro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767098066; c=relaxed/simple;
	bh=3NuLQ7ILP4nX4v4WKID3hOQ6idOK6brJb8aAZsNOqx8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JxyiCDmxPsT8xUa31DiGKACj//FQ5ItSgVDF2P63muIx/MoXE7egron+xUeSEuVE/3Fy7yTTWt4hN2evjzCJjsYACgA3AxcMZpERbmAA3WfaEDWcuPN89+tfILBBbM+e4d0kD6xaNhHyd0Witm9fiL1x3HfCWxhVqPoKoiOuu7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OEFFuAyE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RzJcDiyB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BUB0Wtf956323
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 12:34:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aEVGgk43InWXkMlLBp7TeOfwGrquzepV3s4rSmf6aYs=; b=OEFFuAyEu7bJS70j
	bzvtz8ZbQct21UjEyrooakqrq/RColVR96ir5rpwryYthuhoYskAimiy0KUcDJ4v
	CB1ZaRlaMZQm57L7Xb9CDim6OpD7Kr+l3q+TSLMPb/+MJrZlApgIQrF2yfbFnsH1
	KIXZ9AxZPeCM4pIUqPCm+pWeZEiag639mhuzJhLavRVjHWN1eVZReqD2ipuSf51s
	6aTNfxUwOpRLAY3qBh9nkscwciObwroleFYYuJgEe7LYUQ18qqDNLz9QmNUqBUcV
	MKyE4cL94ggyfNJInCv5uvJRuDdY/Zl3K8PhvlD7AhKsgRL9tEt+dBxGvhZE0zla
	1n/GAA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bbqk1b4t6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 12:34:23 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a0c495fc7aso143533735ad.3
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 04:34:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767098063; x=1767702863; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aEVGgk43InWXkMlLBp7TeOfwGrquzepV3s4rSmf6aYs=;
        b=RzJcDiyBXbgbbiyDrLVrllhr7bprqhktW2ya0PUcleCkfitUZvCsIupFjSZAchlilC
         lc6BRIbtYK9Zp3WfFwl3QNm8KDczzuv5FYuyOsIojwkWlHWY6fLx7QLch+ABZ51mQSg/
         w6wyYN4d20b1hS3UF9dUEdp7aH3sEWcRNd9lDVjtvkmJGbfr2IVFE/TAnjLonMAnrX0p
         6iptd/jUBeX7ufdecS0xE06Amd6SM6JBAgmgARkVCQ8FRzBiLlq+1rhLcTZ7/qlqHVj/
         QWrwRxQwhVeSeqyVI4SsOThEkCOORDyWm9CGg+S08xzUw8QDJGTaAF5IIrz65miusDpo
         eB9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767098063; x=1767702863;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aEVGgk43InWXkMlLBp7TeOfwGrquzepV3s4rSmf6aYs=;
        b=SGS4hQQrkAf+kHDErvbfAX7RbW9tG1anDY9X+23xBScA8sr24/Xwbkgcsfdo0sOUl/
         4KVuXmTyU1fXOfkFsY0f0Zim6TaTiarPTpdVVURhr5LhQOyFig5TVjWHVFodJKyLV1fs
         fQJEjAetSTboVWkqCl7Ykev3rrjAY4yzaJPg1GJuZQLxLMXJKCK1mK55cxZ1/vuE6l6A
         jP6c68/8iT5X6SW9yhncmA67r6dCTf+MTq7vwJHDrvcbLp+RehdbiC95is4E8oedqPy7
         Y8A5jsHrT53FFPTjwkE2DQeK3qoopadXb0u2IQmj/9I0OFknJdzAN4zJQPiwdjollhLX
         PLsg==
X-Forwarded-Encrypted: i=1; AJvYcCXi9Z+4cYdf/8pnsxUYJqxiuV0ZnAV5MuH7hFjfOAKaRAn+hZnudXKEm/WNNWVutj6Kb+THDR58HIxH@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0oGWbXeVc9vY/dG2NdkNp9PtvTe2iwq2Tco6mwe5/rMR+t3El
	Hjt20Wrs+S+MqxEYDzN+TH3XPbomVa8BHThipoFpBUT12Helh80KVnLT//BEX8BcoabLx4dJlnj
	/2ksjn5c1ofqdI1YRokKZiuRJ8rgPev0WILcl/S4qGKCAqEkmRAZTFDdTTjWNyrXU
X-Gm-Gg: AY/fxX6PzPRT5/jXWNO3HJjb5KKOlbWA8ggsi1JHYnQ0U3cHM927MIWSu/8dMNyKqk0
	EPxhI4qoSNDTRyZ++eNCVKByr9oV9Z5wUeN+xgWRQ9L+TD4yUcHTq0UUjqyJ4ibTFh/qc2puPJZ
	XgSGpIuhhYfCUIY8lZGZYHUzHejmRT1gsyg4rjUG4iLZ5eoeOmI6f7ha1wB/RpjwJRcIADuFGjL
	d1JghVOEjxE20zbxek/nJe2qI5J9OZhhWSpfAILJTP1YUHmUGXttsqm7Wt3T7Wbkt/+CIy8W/xa
	NoIxJa3zwS9WMZHHFkgujksWus0gQquYBEkDVTNfpdGXR1e3vF6ziRC336ytzStXrM84QcFAABa
	SbgFMyzLywp7SHpXLh4DdXs7zboBZIs+sjQ==
X-Received: by 2002:a17:903:2a8b:b0:29d:975a:2123 with SMTP id d9443c01a7336-2a2f2a4a33dmr253486475ad.60.1767098063066;
        Tue, 30 Dec 2025 04:34:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGmUlMjN0jkXXsLDM0SUj4DZctVdikMsb13RbrT2rvJj3FRqIOh6cgbO6/abhTatzQ9x/L5Dg==
X-Received: by 2002:a17:903:2a8b:b0:29d:975a:2123 with SMTP id d9443c01a7336-2a2f2a4a33dmr253486345ad.60.1767098062600;
        Tue, 30 Dec 2025 04:34:22 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c6a803sm295748695ad.6.2025.12.30.04.34.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 04:34:22 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Tue, 30 Dec 2025 18:03:27 +0530
Subject: [PATCH v9 3/4] arm64: dts: qcom: lemans-evk: Enable Adreno 663 GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251230-a663-gpu-support-v9-3-186722e25387@oss.qualcomm.com>
References: <20251230-a663-gpu-support-v9-0-186722e25387@oss.qualcomm.com>
In-Reply-To: <20251230-a663-gpu-support-v9-0-186722e25387@oss.qualcomm.com>
To: Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Connor Abbott <cwabbott0@gmail.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: Gaurav Kohli <quic_gkohli@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767098036; l=748;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=3NuLQ7ILP4nX4v4WKID3hOQ6idOK6brJb8aAZsNOqx8=;
 b=wUjP9BE+EXI92DFSQNDKgSm4uzwATlh0dVGWbBXws19VW6ZI1MhWCZLGxCpMCy9LMdlKGJ+tJ
 z/PjNhxzyJIBHB0iAm2tYl7SXz949/61j2aCy/sdteGpxiL7YyXzmdr
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-ORIG-GUID: ymDXs9ylcUSEOaS0rN4D7WfNc3QcBTul
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDExMyBTYWx0ZWRfX/ympCEqB7xji
 qhoPPoa7F4j408XlneXN5agxX+kwbq7nRr0HW9zM6bgR8tmiqBDnooCiTrdnGFHOPjUTS68+MXd
 f9gqPr5c6ovu8li2HLtv64mg8TnwnkHKB0pgpE/7ACUUAzcuW3ESsdt3dyHfYLGnsRVtI2g3rjk
 cPVaKrG0j9KCpZTOc/PtUwt7HYh6VxHtwV2wLdxu8eLq/woUdv4r7G2zeIOEqd2cY+IOpMQG7aG
 5NVB8QnXS99bhi5cKyndHhrTOa3KyE5BM/ze3UgpvmnQTgeVVa3GBFVC7fnf1PPhhXRzmBorUFb
 IoffvinOO0Fs6/8m9AIqrfCJ6YYgl+00LQM7VPgOlV45y60ll49GqGTF///iLlu1ntu/488k+D1
 975vEcNMG9QfNyfgiJ0HRpRc0uJuSfY2uRwqrACO4KwjZsB4TLyBjuy1Frxo5Pb+E6cPJxp9uJk
 xQUOX5GP/NCmbdNhZmw==
X-Authority-Analysis: v=2.4 cv=Tf6bdBQh c=1 sm=1 tr=0 ts=6953c6cf cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Xl3f10jGzgz6Ja07nhwA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: ymDXs9ylcUSEOaS0rN4D7WfNc3QcBTul
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-30_01,2025-12-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 impostorscore=0 suspectscore=0 malwarescore=0
 spamscore=0 lowpriorityscore=0 phishscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512300113

Enable GPU for lemans-evk platform and provide path for zap
shader.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index b40fa203e4a2..28bf152f5fa8 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -454,6 +454,14 @@ &gpi_dma2 {
 	status = "okay";
 };
 
+&gpu {
+	status = "okay";
+};
+
+&gpu_zap_shader {
+	firmware-name = "qcom/sa8775p/a663_zap.mbn";
+};
+
 &i2c18 {
 	status = "okay";
 

-- 
2.51.0


