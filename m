Return-Path: <devicetree+bounces-217664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6311AB58CCD
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 06:24:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E59D31743E7
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 04:24:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 479702C1595;
	Tue, 16 Sep 2025 04:24:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eyvtSAoh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B09F7259C9F
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 04:24:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757996666; cv=none; b=ogdVd9dt6HE1D+wBLf572tlY3g2xCW/yt8C4vCAI9eIa0E2NULKhysVHioU7/Tg0dtr1ShOB/HyttiiTh65XFJKbraix3e0GsKgDacaRKEo8g+DB4dbELvr52wed0x+wzCy1jDhnKC5TvhBNWggILqDNRHg+4W/xxgnN6gBDXQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757996666; c=relaxed/simple;
	bh=nhd2RHIK/5Wkk1VEUvBtU5/9EbZeITdPPkKg7Vsnmys=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ITXvHG623AowtE3qNrtHs1r8vVe6WWtqq+ktMssGuCtiVIL0rqVyTZG76qlZpq0Xe22MbpKqYb4nsnLX3RX8gKPjqXUV2sijcvKR3SCI0miWD/ldOIiEuoOz9k4qpb7ImJy8SPA+TZInNkk2SiNAIwDIj6cHVMwi0w3IqPMW5SE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eyvtSAoh; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58G3q3Hw020444
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 04:24:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fy02dgHGxGtACOefh+UkfUw5SOovP9+RPFkgwrZZl+4=; b=eyvtSAohgz19I+k3
	ULf1TnqUmsSn5qitT2IcwscI5dQbnPQbSNZcXiQ7iSTT1GN9qgHgbFRq8Zz4WC+o
	f73Vqo/KH8RdxjMRN9PSZw3UA9xMf8ka877Nw6zFa5rhiNO3TMIfIt65Vj4jX6PI
	7McFTz2V/EF4Kvz1MtgREjygfSNeNuGrWn6ch0KfDrqw1MfxdTpnZ3Z38qwPenTg
	PV/Da8z2DKBUjl378i/ZHJFtjNYxyEnrDhk+W44JPDUHpt+BqEsqwgcnSt4+YyJv
	YphkQtx2G09Q9zJnYx7a0My+vTXxkjbEmLWnzxndzLDAsTbOs90qdMy0ZC8ZVKZ/
	CGwoLw==
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com [209.85.210.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 496h1sjuq4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 04:24:23 +0000 (GMT)
Received: by mail-ot1-f70.google.com with SMTP id 46e09a7af769-746d4801fc2so6384351a34.2
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 21:24:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757996663; x=1758601463;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fy02dgHGxGtACOefh+UkfUw5SOovP9+RPFkgwrZZl+4=;
        b=atTuhfYpmNkJO2igr1ujs2nnKhw433mkglrTn8Utfsb77Ce7vsgd5rWOE5aGw6z3Ta
         7d/Nzqfw9AMgK6b3pYhqJhiiv8CzPx2cBS51KbYJnR1Kfq4xOt22ipBKZMhUm1gvlPw6
         OM0cf+F6ynOutmXvlfgbwqdev2hd6IXWRhBHiqaaNy1tybEaZI5lr7GS1zF0oeHXickJ
         bzDmNPV9iseSrXNjQARWMm1lAcrCUCd34Y3uWgzpsRrjHSGTU4kUo2cwWUrJIFxFVPbM
         yBWEbwo71ipfEpSqOWcAnc+QlPkH6CY2nTOT9rwf97q5FD6sANkF9GCtQZ1QqKMLA3Vx
         BxVA==
X-Forwarded-Encrypted: i=1; AJvYcCWVULhXSXHv2ZS0ABelRvHKyusrQv24JyqsL5jPrJw+on4/e12fVEgCqWKn3AdcUw/lm5Bz3kCeAr+1@vger.kernel.org
X-Gm-Message-State: AOJu0YyepZUFHPliyijLvpOiK4ejdRMnKK3UJ8IazcFEwUQ7hGdUw9+1
	YkI8iWD9hgr4qNoI7F4cxBWJVLK1BqwrsFU6siAOa5Rwsm5cQipVPtu4/9xbYpL/15c5O/rcj5e
	DKYmOn4aQ+xrMmJauoyvPOWjlf98gSY8Ku/iK0hLF5sEvoMDFtAMHyN2sbq4+NQDIsLhMrdNH
X-Gm-Gg: ASbGncuM+LTaHdrWYK9OBRKO43k1EGUKBonQBMtPehUEHeTWQogDF2FEgv75Uqbpom7
	cPSpEzRCWwCfhKpROHELOzxVQ8TFuf/kwpcMufrmXXPDNO7KYHSMNLwog4ED7oxLmZjSkSF3yPl
	E1zu4uItoIy8a4cICtFYRBL/C5gktmATnwCVTBo7yO2GkxQjbLA/+M0FR5YYN11E31ArYryD1f/
	CXt3kfKKI97XGfEc/JJJwRbZBJuJ0+Z/pbNLjPlAivQFdrBjSC6IbJr9yQPUHtZXQ/mrirj7E/d
	ZUmgQNpRLcWi5OmOKfmnw7c1VvHrJL26Zu3PTMi6pE3TXYaowk5+hiMUFGAzWTCXJeT2ifOlrvU
	JFKaRq1FLkWFxCYmOMaOW48XqNgeQwyQAY9+o7JA=
X-Received: by 2002:a05:6808:1881:b0:438:1c9c:4dbf with SMTP id 5614622812f47-43b8d87a904mr8067289b6e.11.1757996662733;
        Mon, 15 Sep 2025 21:24:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGo5uj+Rp//6eSBlEaQ82sl0S4ZcUJU4mROLG35WU2YM36kgfmzqs1AhRCiE/a80HwWw71qyg==
X-Received: by 2002:a05:6808:1881:b0:438:1c9c:4dbf with SMTP id 5614622812f47-43b8d87a904mr8067267b6e.11.1757996662347;
        Mon, 15 Sep 2025 21:24:22 -0700 (PDT)
Received: from [192.168.86.59] (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-43b82a73075sm2772862b6e.19.2025.09.15.21.24.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 21:24:21 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
Date: Mon, 15 Sep 2025 23:24:16 -0500
Subject: [PATCH v2 2/3] dt-bindings: arm: qcom: Add Particle Tachyon
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250915-tachyon-v2-2-4f8b02a17512@oss.qualcomm.com>
References: <20250915-tachyon-v2-0-4f8b02a17512@oss.qualcomm.com>
In-Reply-To: <20250915-tachyon-v2-0-4f8b02a17512@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=972;
 i=bjorn.andersson@oss.qualcomm.com; h=from:subject:message-id;
 bh=nhd2RHIK/5Wkk1VEUvBtU5/9EbZeITdPPkKg7Vsnmys=;
 b=owEBgwJ8/ZANAwAKAQsfOT8Nma3FAcsmYgBoyOZzE6OxVcsRncpsCjDerjCjZb17b2m/rg2vg
 ud2xO90zKaJAkkEAAEKADMWIQQF3gPMXzXqTwlm1SULHzk/DZmtxQUCaMjmcxUcYW5kZXJzc29u
 QGtlcm5lbC5vcmcACgkQCx85Pw2ZrcUzMxAAwJUJlxydchMCkwNQdx3zeUuGQ6JQXD6aPD1FQk0
 5SM+Fk416mTsS1xpoNCr+90YcHr/4t2TGhC7OeBNPWgSDYz1PC9OeHXiR9P95d/2WD6RawXjpyP
 uAaYl3qP8mZxwdPLX8/yOE5o4wY0678iFBvF16iN6J4613Gls8k1jRYwbMxjXQ3AjU5EUPgFpew
 xPIR1gBZ4bEBgq8wSdb/r6c/yTyOPU7kF9cAGDAufNc4d7zqk9R6ScRXpl/mmWiaNsR6GrhC74P
 UhOKmi5RABMOtC0WeMfx7zKZb5Zj7gzUZ8r4bqXoNuR7FMcaWkX48Mvj01maxM+MHIDc/WPGFMI
 a7u2hoccGW70NysZaArRDQAxErp8iPVOhCLf+FWM3CjRlLvpwVn9mrbKEjwolJpyMPBpy6vdcvq
 jdV4jR6XdMslMHFXzEn3nH9rhlmTabSdtyhBtns1Wfb57mocAaQFcM1Sn7mLpKTLnxOq9ic0W50
 SnQjbG8d748yblq2niNLoUQKhjO1SYMc7AMGERPuGyiGtUaNIe4HExpdmIU4+grUJK0z7B6tCNe
 D20iQmCmc7+R+ce+TUEq5fpzCSIUlOrnKVlMZwVaqwgjwsWwP+2oL0MhOTng8zLdH0vIJcVfhAu
 i/YTxdMbFfHwA3wnw6RFcSSRR271+pWNrxhcPGo0L4c8=
X-Developer-Key: i=bjorn.andersson@oss.qualcomm.com; a=openpgp;
 fpr=05DE03CC5F35EA4F0966D5250B1F393F0D99ADC5
X-Proofpoint-ORIG-GUID: -WLz83t5hQmnK-kHSwExC6fe-6xCRwFU
X-Authority-Analysis: v=2.4 cv=A/1sP7WG c=1 sm=1 tr=0 ts=68c8e677 cx=c_pps
 a=7uPEO8VhqeOX8vTJ3z8K6Q==:117 a=DaeiM5VmU20ml6RIjrOvYw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=wQQti8BIFarMilUVRaAA:9 a=QEXdDO2ut3YA:10 a=EXS-LbY8YePsIyqnH6vw:22
X-Proofpoint-GUID: -WLz83t5hQmnK-kHSwExC6fe-6xCRwFU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE1MDA5OCBTYWx0ZWRfX951eQtGCS2B7
 OlUzPAy6ZXivd9Ymzm4WUiqdMUXpS6RzJ6KPPIE3ehfZRD/GDp9/jn0esYHR6CQkSfmXr6/AEKW
 WXOk9v51hXxWEtxMmw9Jt0K1WLLT6TEeyu+c83K8o2N8FUQk+JhAhNyMFbKrvNv5V/Qx2FTOjf1
 lmdnl4DXEWDeOydQEtVCbFx8nk26fLy44IFCSvh6G9GsdAT0Cv+oWRm77R2eODbox2ylzZdqlEn
 JuHW4wKimgadJgfCMYQ/R9JnZV7op5Oegxhx+lQfe7+Dp/uA9yYHlmNtPubnHdK8p8sZSmF0eyx
 /0M1sWEh3ZwzCc+PGh+sk+PHgLkq0zPHCvQ7MFoVqG6ThkPsLdtXM78ahLZ3gD7zsj/38dEgXpx
 oW+PbP1M
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_01,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 spamscore=0 suspectscore=0 bulkscore=0
 impostorscore=0 clxscore=1015 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509150098

The Particle Tachyon is a single board computer with 5G connectivity
with AI accelerator, based on the Qualcomm QCM6490 platform.

Document the top-level compatible for this board.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 0a3222d6f3686f1647b9e2ea192c175b0b96d48a..8e0b42ad65607abe687a0bcc5310df264e14157b 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -337,6 +337,7 @@ properties:
       - items:
           - enum:
               - fairphone,fp5
+              - particle,tachyon
               - qcom,qcm6490-idp
               - qcom,qcs6490-rb3gen2
               - shift,otter

-- 
2.51.0


