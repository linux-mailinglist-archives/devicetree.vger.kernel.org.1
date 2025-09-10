Return-Path: <devicetree+bounces-215208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D18A0B50CE3
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 06:45:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D04F83B7279
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 04:45:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6241C2BE629;
	Wed, 10 Sep 2025 04:45:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="h7P9mXOa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED667258ED1
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 04:45:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757479538; cv=none; b=u79XGyE8BxhQtX3HUjv+O33YoCfhSaYJm28KJMRvL/4kDtUC7SVPubMjoJad34HUHcCnz9EFH86TpBvTrw3jN04U4kYWYLOdRcu2xxiBeJnsVie4oydYZtu3F3cqWzZCAs2OnSur+/QAoLABmwbe6IeetE+3WqYk24PZy0MzBQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757479538; c=relaxed/simple;
	bh=ZuJD7JdUTwyqcePUK3u6tcyt+3y92CC37Zydf2zrHaQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=UbKx4iabF7NyZThRmUhrsBXGUwenBjV7UImYqmIPhdOn4LwhVfmo8tWSr8i3OHDi+dqnZo9IKBAG35ANi5qq+Xt9/zBnfnvyGrX4WyxlGcbSLo97bakR0aXOvmwzhqT38ZkUyKM+uKMneXhgP1A+2KfN9spTi69+6s10b88YdIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=h7P9mXOa; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 589HJUPt020094
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 04:45:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=phs99IEbTxzLUUK84wJmfAYFpG6+OD7+fCp
	Ut6KGbd0=; b=h7P9mXOaj6tCI5bROrO0QSMsrHEUWXTfg8BRs9Lps21vq92tnBu
	gcJC5uW2k18AWQzyP8XHyn9FDzLHvMhP9GQgJJ8hfPo9a4E+UmHoBnE4OPPpYCoN
	PwGiv2hcgKOPOHb+rFXMh+yKhUP54y2RDe2WTO6Ano1eHdKMTFLGQLhnkL4Y4cDc
	O266Z9cqMzs87T04up5xxD/VfQgqtxzwtGvI6t7OiQhGrv0OLS4z6mhmPaznQdJ3
	dnBKUNMMUZ16b1O22wejkLfsmKFNjmBRjD1kXeRS3mVHNVUdjMZROuCfD8rnqVU1
	TJvgI+OeiNYLE7WO2GbOw341wrj1F0O8Bug==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491vc26ms4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 04:45:34 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b4dfb96c99dso4599559a12.0
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 21:45:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757479533; x=1758084333;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=phs99IEbTxzLUUK84wJmfAYFpG6+OD7+fCpUt6KGbd0=;
        b=B5v+9QRQ71q2j4B8/bUrwaMKncHnldAYYD2a/PDEsFLdlLrV1a/k6ZygtKsfq1SUc5
         pwN2LEAldqaHWmaTdlQKfwLpxxWJ7I05QjcyReBDu1BjSnFO/cKJoBkUd6yT07gf6/Bb
         exH0FVWFhzK8Bk2zbA4YX8l5Fw9Bhl5eecnkqG7ZMfY1UmjkYUl4yuu++g1qe1WoOPTO
         yUeYzz0xRvJgK7mjMSD42D7kKLAYVYhBHlcNItK6FStMFGA8LdRTm2711KE7NgEuVxnf
         CZSgyoj4Jwx64njKonyQ8dsmcdumZORG2x8It2LY2HWkF+8c7Nd3+Jxfs7MQqRZPOBRP
         2vuw==
X-Forwarded-Encrypted: i=1; AJvYcCX0nUQl0fGOkn0Ofk5YCMyJ4wwXmcIQf8DexUEBkLYSma6TVFToqlHeZ/z36p/CPx3VJx5RcZQbaBjv@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1KuNz9GG6rPJdTnZCqXJ8ZAkDiJkqHJGkUQZTYZKmVsdr2GIJ
	s3cQFrG5KSZpbuYyS1mFjqDSySUYwy6e9EzyTQXxmrASs8pOzr/EbWXeEJ2gJPlvNqN28YazYdW
	XoKPx0NLxDuHOTCY/bsTWmO02Fbmz9oi38O6ZOXANS9+Fwof/m8ujmCSMb2zPB91X7zlvEtV8
X-Gm-Gg: ASbGncumg7tMeuFARH5SWf/VTRxUjjEihZs/RPn3O/+dZVzLOzNdPBXHChNvbRWjz4a
	dZESesXbxcT2ssaAZR65SiVejtTfq1SqWfOTxC0Xs+n/crMafioVFZ9FZcBHgtEuyOVV19jwRlG
	w+tUjdTHEUboIb9VDwwqxHydqKOzxKa+yS/OKl8mDNf6I2eOxuk+QZFjMUyBX8nCPuN9gSHxxGk
	1bh0cZNV9RXvyOs9dKdWTCk/o67Zn1l0DSLpQaqoyYoc+LIi1899RdwmMR0DJK0pp8lnTXQgN2I
	d4bhDLFTPE2bWzIyA3zeImTmaZ66qSmJ3OhLddD5OQReTRlqo0e7rx0WcXpg1EUYrhQnIscKyxY
	D
X-Received: by 2002:a05:6a21:3282:b0:251:a106:d96c with SMTP id adf61e73a8af0-2533e5725bcmr21049853637.10.1757479533195;
        Tue, 09 Sep 2025 21:45:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH1S+sjKgyN1lKxHVmFMTXNNAC58Alg7A+2ktpMH7cl+9ZuEPxHZYkd5o0sUtN8NWcXLqsGzw==
X-Received: by 2002:a05:6a21:3282:b0:251:a106:d96c with SMTP id adf61e73a8af0-2533e5725bcmr21049815637.10.1757479532703;
        Tue, 09 Sep 2025 21:45:32 -0700 (PDT)
Received: from hu-mohs-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b548a3f3facsm1308056a12.7.2025.09.09.21.45.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 21:45:32 -0700 (PDT)
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org,
        kernel@oss.qualcomm.com, prasad.kumpatla@oss.qualcomm.com,
        ajay.nandam@oss.qualcomm.com
Subject: [PATCH v1] arm64: dts: qcom: monaco-evk: Use correct sound card compatible to match SoC
Date: Wed, 10 Sep 2025 10:15:12 +0530
Message-Id: <20250910044512.1369640-1-mohammad.rafi.shaik@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=FN4bx/os c=1 sm=1 tr=0 ts=68c1026e cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=yYq7zTALbQGsISW0NoIA:9
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: fx-3ZB8vjgIoD2l0YMrJnfa_eR_gwnjH
X-Proofpoint-GUID: fx-3ZB8vjgIoD2l0YMrJnfa_eR_gwnjH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDA5NCBTYWx0ZWRfX0GVV0nYynrF0
 6E+vUWXt5NfxyQ479RFtDcit7UEiBoYCsKPFA+h5aBYjDjFiZJRLYI27/4MH7JmKSq3zxpdcvhM
 Q3woCV7V/bfgshss0WVCyRSNigSacIRNfXKDLkKsjmpBul0El/ihTN3muBVgmfV4XigBlXojYvk
 CfphT8ptjj3GJ8EfJKjwkJ8/bCOkoY+RT8JnXPX0GtpYZjolkWgvdTPGPfM4abTtDZQTN4Ohz+T
 yAahtaY6ODCqms653tX/fs42r/lmx43CeQUtrUkwmDdTqnQqdmIbfl6OtJlMDipgM9lCxMrAyWR
 lFC91JcaM4tinKLx6RPByk3fm5boS73m0QJMpY+p52u2F+3yAnBS+RDd/Oa1280WYKAjTaLIAc9
 qvcyCac2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_03,2025-09-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 clxscore=1015 phishscore=0 adultscore=0
 bulkscore=0 impostorscore=0 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080094

The Monaco-EVK board is based on Qualcomm's QCS8300 SoC. The DTS
previously reused the sound card compatible as "qcom,qcs8275-sndcard",
which is based on existing coverage. To maintain clarity and consistency,
the naming conventions for the compatible should reflect actual SoC
rather than the board. Therefore, update the sound card compatible as
"qcom,qcs8300-sndcard" to avoid potential confusion.

Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
---
This patch series depends on patch series:
https://lore.kernel.org/linux-sound/20250905142647.2566951-1-mohammad.rafi.shaik@oss.qualcomm.com/
---
 arch/arm64/boot/dts/qcom/monaco-evk.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/monaco-evk.dts b/arch/arm64/boot/dts/qcom/monaco-evk.dts
index f3c5d363921e..7187c1760ef5 100644
--- a/arch/arm64/boot/dts/qcom/monaco-evk.dts
+++ b/arch/arm64/boot/dts/qcom/monaco-evk.dts
@@ -38,7 +38,7 @@ max98357a: audio-codec-1 {
 	};
 
 	sound {
-		compatible = "qcom,qcs8275-sndcard";
+		compatible = "qcom,qcs8300-sndcard";
 		model = "MONACO-EVK";
 
 		pinctrl-0 = <&hs0_mi2s_active>, <&mi2s1_active>;
-- 
2.34.1


