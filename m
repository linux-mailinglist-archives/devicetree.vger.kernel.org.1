Return-Path: <devicetree+bounces-209433-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A036B3721A
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 20:21:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 44D173666E4
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 18:21:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5572E36CC8B;
	Tue, 26 Aug 2025 18:21:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="auS89GN1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8A6D36CC7C
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 18:21:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756232492; cv=none; b=J2TYp1UkHLuB4XF07OWtwzCFwrdGfKLoGYZ5run8NKfID3KjMBdN66/mIsNkGqWTuFjhk+zCY2KN5cUkPrmZpa7I31JHMkTC6XxZ0/LGljbDQMsgxemUDI1s4KV9o3eNmGwml8eEoZn0POZV421FrQkeW44gQTqRHRKJEXdAD8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756232492; c=relaxed/simple;
	bh=JxYcgKcmhaQur96n/POTBQUFznkRKuR1GNH5Rn9msRc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=f0gtKl1Fn88jjUOhWaPqYCQ5OwKBoZ1Xx3wSXb3A2+ucK5vj7zBYeHRj4JphjDCzfZSQhxBtN6tvep8BMCntgMSuyfDG+p34sN0H9ysuABkifiljWLlovW7RQdgACI73PlQhftJT8sZjGRzAeXXhzcCzT/5FjpgaB/+OIuUWT0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=auS89GN1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57QDRSgs008235
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 18:21:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eL0QgrgRy3cWfotIYWgvsMBQYI7kvhF7uQsBTion3yA=; b=auS89GN1MxwKhY5Y
	eyute2YrIR2oGMQkEgnhXLr349CrCx2PQv7B//8ltmJTQaDC0MBQ0C9hNLDX6aDC
	r92r6tipLqBldJHRVt+fG5WqwOS4HIrJ8UWtdo8Qkp1IWNVQ/WZq9NF0K1w/OsPi
	g8JOoNmFfyBx0DWHh297CVA2vMkWcVx3i7k89KC8jz09tOY6Hpp0evY9vbWbtXco
	xfGvVToEDb7/5QCKhASJvgtIvhlr18z1mpQvgyJBcEdt1sGVKGVGsaFpy/CCP3t/
	BkFSKCRYLCl3BuHc1/QKqopukyWVdrzZGxbzOYUQMP1YEXISMnjrKLkBOzvZdkg4
	Xgf18A==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5unsum2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 18:21:29 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-771f28ed113so1583898b3a.0
        for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 11:21:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756232488; x=1756837288;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eL0QgrgRy3cWfotIYWgvsMBQYI7kvhF7uQsBTion3yA=;
        b=Y3qa4D71wNCIEhZBuKwCdqDToYN2xGoOpiJ6UC9WAULuIIzcILxAV0VJHPJ7HIuoRe
         J3XRMbxZpSvG3uQ09mwI1f9uJ+yyBoHkwJR0I5M4e3wFfyAOAMKPWIHtDL3iU5AATwnJ
         lB/FLDFCpQoHhhfqNNk4yh22E+Aeo+DuXEHdAIjyNHk/653ZWDMCwAvi9ztcObhB0X4+
         458fAI3/k8S1b7CmJ70BncGOswUV1UA8QWxLpN9L07YAy0v61E13YRWjGd+GM2f9NlML
         UfBc4VwSBBe6hDebvFqTL1Bn1XMe0Xh/nltOM33Ya9Sqt4d1GdN1HPZw4V0n4TobXazo
         PP7A==
X-Forwarded-Encrypted: i=1; AJvYcCXDmrCebIacJipSsClCu0UW+CTQdhlWYz0oYwbExy3PvM7ZSilS0ztj8Fk+PJbos93So8Wbm7/3oFHq@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8Ne1aQsyyIYBEM6nn9cERK3ANJlGgxN4023KdjcSidDwvuv8O
	SZoGsrkLLXGRNRq/2IHJlEoq/uXaxxx/tMStx+r5GebjNSUV3AmtlSvA/UfMlWKERS290sFyqK9
	EgW3GupWAkqfKrpF1FL36iTF26/PEzDGy+ljWdZE7N9F682CjHDBYIkezokdTTx0p
X-Gm-Gg: ASbGncvjwUwZSYlBI9VR5Yk/bI2Kn05WKqnMwcYCgmJ1iFq7wmiAjKhP7lBqzWE7D+x
	4fyeLP+HjwsCImdprh4MOdhSXmPtnSIGXqxpxXYoqUEa57w28SGdqQA/eKvDwF/NxWQ6AJatcZr
	2zbGm4RIL0Tg++fabt3fMMuWRO/4KvIbnFk8FU7wWUqZ3uOjmjw2szsN5lk3uddyhcWKYX67AJg
	1kIPR6p/+8roHpPlZBRXGCMLUwqtbc+eB+tPVA+nI9xChgETLrN/0nQTau2WV4ebOnpUEEcPe5l
	1l5Mkg7TKXATEJtshqch0QFWMIxf+X13pyS/RY61M5Szt5pFqTb3G21xI+IwVr/z58fa
X-Received: by 2002:a05:6a00:14c7:b0:770:5987:5b3a with SMTP id d2e1a72fcca58-77059879144mr10408761b3a.16.1756232488299;
        Tue, 26 Aug 2025 11:21:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEdbni7xGAlaDwJvZNQie+3PflKT30+F6qVX4DcxiW8gpRJHQkgNR9tu1A3N7ospcq9hZ+02g==
X-Received: by 2002:a05:6a00:14c7:b0:770:5987:5b3a with SMTP id d2e1a72fcca58-77059879144mr10408719b3a.16.1756232487815;
        Tue, 26 Aug 2025 11:21:27 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77048989fe6sm9881803b3a.51.2025.08.26.11.21.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Aug 2025 11:21:27 -0700 (PDT)
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Date: Tue, 26 Aug 2025 23:51:00 +0530
Subject: [PATCH 1/5] dt-bindings: mmc: sdhci-msm: Document the Lemans
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250826-lemans-evk-bu-v1-1-08016e0d3ce5@oss.qualcomm.com>
References: <20250826-lemans-evk-bu-v1-0-08016e0d3ce5@oss.qualcomm.com>
In-Reply-To: <20250826-lemans-evk-bu-v1-0-08016e0d3ce5@oss.qualcomm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>
Cc: kernel@oss.qualcomm.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org,
        Monish Chunara <quic_mchunara@quicinc.com>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-e44bb
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756232476; l=1192;
 i=wasim.nazir@oss.qualcomm.com; s=20250807; h=from:subject:message-id;
 bh=vYOX3rphXNqw4BaZtF1OQs+qVbxZRa6V2tNPd8V2s/o=;
 b=d02cyucfOmtC1y0r5qc+700gCtMeGv1Xx4u39k3ipECsmsgdJU/b+YdquOEEBuIb8Ab8VQ6ha
 UCtR4syOGZqCio2iFgsKBjK6ubiSLuHnl4u9Rq4tQRTIQi0rS8U9uTY
X-Developer-Key: i=wasim.nazir@oss.qualcomm.com; a=ed25519;
 pk=4ymqwKogZUOQnbcvSUHyO19kcEVTLEk3Qc4u795hiZM=
X-Proofpoint-GUID: hUgL1klx8gG676jIOV7OgpMuoY4YbnYs
X-Proofpoint-ORIG-GUID: hUgL1klx8gG676jIOV7OgpMuoY4YbnYs
X-Authority-Analysis: v=2.4 cv=JJo7s9Kb c=1 sm=1 tr=0 ts=68adfb29 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=h4M2rFpPKqSdi5wqdTYA:9 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMSBTYWx0ZWRfXyPHLAE7iijxC
 c9k6wP2sa1kd2J7ljgrmTU+YzHrkN8eblO3J1J+6W1ms1NiNJ64BcuT4Hrkm4CDvmL/vP8/f8VC
 3jVm9znKaWtPGGugAfPZKAihNOirch3fwPrXT6KtSTWKv/6JTonCbYwm0p1xseb6VWAh23RzIv7
 WTS82Roq0gdcjqzQzw8Rd1KpxCWmEy7OIjGR7+S10SRncxoYhuivxr9LLDOJsZ1oiHeoC7IGc5o
 k97gsbyt+pSp/TTlwaW56eVzANb7uipOJC32tt/smSwloL7GNY8olUvMVZLhMuusN6/BNrJvcpI
 i02GPSmwAfXjQ8ed3z/o6EVzRHqz3Gc5wuasM9mPnz8BWAnI1yUV0DxaWHPrF150lrMXugFWQit
 q/6111TG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-26_02,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 bulkscore=0 spamscore=0 impostorscore=0
 malwarescore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230031

From: Monish Chunara <quic_mchunara@quicinc.com>

Add the MSM SDHCI compatible name to support both eMMC and SD card for
Lemans, which uses 'sa8775p' as the fallback SoC. Ensure the new
compatible string matches existing Lemans-compatible formats without
introducing a new naming convention.

The SDHCI controller on Lemans is based on MSM SDHCI v5 IP. Hence,
document the compatible with "qcom,sdhci-msm-v5" as the fallback.

Signed-off-by: Monish Chunara <quic_mchunara@quicinc.com>
Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
index 22d1f50c3fd1..fac5d21abb94 100644
--- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
+++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
@@ -49,6 +49,7 @@ properties:
               - qcom,qcs8300-sdhci
               - qcom,qdu1000-sdhci
               - qcom,sar2130p-sdhci
+              - qcom,sa8775p-sdhci
               - qcom,sc7180-sdhci
               - qcom,sc7280-sdhci
               - qcom,sc8280xp-sdhci

-- 
2.51.0


