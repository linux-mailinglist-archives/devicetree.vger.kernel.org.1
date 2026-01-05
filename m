Return-Path: <devicetree+bounces-251582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A05CF437D
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 15:48:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8ED9A302D893
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 14:47:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBF57137930;
	Mon,  5 Jan 2026 14:47:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Qf+inBUR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YAc8h7lz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369503469F7
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 14:47:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767624436; cv=none; b=Qj4BZ4TDTwPzyaIRgp6qd3A4tNflNiUsRCUII/9Q3OdXReXqF04k5YT9WLU8fIKIJdzWzkibhJ6YQolSUGQ/O1+vXaX7QVyep7BOtTmIOmXK3PB7qbTcC21X+ncvVIkMvdcNuYwOlcoQIBBjQOeIWRJ91RPot+85esGaKiLRbfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767624436; c=relaxed/simple;
	bh=0/49bV7xcWqrx+PER+pNr4EOl5y9jYDTYIF1B5vedJI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Sxzn50C+LVue5QeV0lvMpp5UkTqiAa0M7gEUWxQ4fsGv6Z8Wngh62Wp0VvEpiq6EWIql/6buDK7uIorYjebkAg8UN/jKp8IVZX8woPFF7gz5XupzWmZnGGd3QZcjzHkjIzZBGoeAOFaLwXd5Avx7cmjs9nzcpfq6hnw7hBFL3AU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Qf+inBUR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YAc8h7lz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6058531A978749
	for <devicetree@vger.kernel.org>; Mon, 5 Jan 2026 14:47:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=JL9j8lRAbIP
	3UrbUnDDXBBLQaw+rdcjrIyfR5u1zqHA=; b=Qf+inBUR0kFomEu0Bkh0Ab4lDyB
	y1LMAEysQYWehe1ZdZbPSULtPU6EUp1JkyO43JHYjePhF2ozRKtUwezxCosRy/EO
	I6G0/1RflZeuIzImTgwKNUoeAwAHVOW0KinhoZR9U1fCyVWh8uDj0ZrrmRJ4iD7R
	kFLE0ZsqWrSf9uM/kh1jofH7y2M470MpKzSKjyQmtjU0jVvCqoSlfldHNeftsGRZ
	ESvTzor8v9F46pXwfCknhK0IEpET4DwS/0g1QujUfS7PgawFuVQJlmwRQqnnZ9ly
	rf89T/9Lm//ZJ9C7/1pxoW7ks3aDtuHQqRVOHciXIWInZuGfsx9OUHklgBg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bg9fth2jy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 14:47:11 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34e5a9de94bso59709a91.0
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 06:47:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767624430; x=1768229230; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JL9j8lRAbIP3UrbUnDDXBBLQaw+rdcjrIyfR5u1zqHA=;
        b=YAc8h7lzp20BaAgAHkRG9wicnhnfBuoc+6Y5dYTQLc/DJigU+RajWLRoCejpI8wm0v
         V3wBk8lRTGenK2L7rBhmrsn1zPmmYixrkaznWhi2bHdg44x7kvMGjd9Q+not30NSqGhn
         69t2N3d3j9zVWBRnmgRkgXoHOEvL4fPHQUbOgBjGZWUcifVd99naGVvRJDRaWassMkQ7
         N9LdIFiW8NeqAWK3Bu2pAQB6ucG7uns/MLwxFxsOigCrNCBJ/QqQmvGJH6d9hqTOKUQ7
         1dt8syMPIBJYY1qxPJsyFZiIhhqLQGpQE4gfbui/IQ+bBmMk5slqWNuouy0+0BZt2JE0
         dTCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767624430; x=1768229230;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JL9j8lRAbIP3UrbUnDDXBBLQaw+rdcjrIyfR5u1zqHA=;
        b=Qx7H8XQtm5DfoBO9y+xKi2pliW8yM2OunQlFJ2EArzAcLk0S00xI1BS3wtfc1qBAmW
         /MStW8S7pzX8c9a7J4d0LX0JHydnx7Hof7rCWacGJqr7Bhn53i2A7LhyFeLCmlPr+Pq0
         ZjU/S7aa2KsIqMQWn7DqG8s+bb/Kl9oDz/f8k+k0fCZoepK+yrxn0NH9Uhc2sc4GaEg/
         /tOGGiDDrvtrxPz3Xhwv/bm511YX3Q0d1rMUhMeB7Nc9GtpDFarySKwGAWXycKTNdXvc
         Gbm2H6dwCuJkdy1nJPAs7WW0uEsOMlwpw8pkxmYyPJyAiJ22euIPTutvf2z5cr+X/svT
         KwSQ==
X-Forwarded-Encrypted: i=1; AJvYcCVacVmPi9rbCAEHifprfmBN2/6JobjPZQ764OfdO8ubw75OsPCs7+qBYKde5JfQyBcSZYQVGlxT1PVI@vger.kernel.org
X-Gm-Message-State: AOJu0YySXTBOK1GgfbGUK/qqD38bvYg68+N+vw4/YcVUR3w5FwB5S4gv
	iGPn8j+JMq7zLVqDO0mWa3G1Djc9xQXksc+3PBrAAqZgZcERhen7R4GqyHvcCKGZECro5Zh7t85
	2Kt2pIUoAJuj9gsaHtJSd4Eb+zQUcsINssJQo4NaBvmgJft9T26GILCge9ibfKtU9
X-Gm-Gg: AY/fxX68d4wTmNA0XmxJ7LOEwVQVzDhXLrmNWvreaFS6JpDZtXmQNFFbltvVo8jJGl8
	LgWOggZpXP5Gyt6Ec6Es2JHtHzKNIg/0dZNZ7KcoR12Xs5h6EKiSkaglavOuMhhFyeJKRpQLro2
	rprKQEjhfiPk010ALHmkmbj9xbvgNa8lDWDIQG1/lmkZgGu7bIqff5MRcIBJ+vyQE59YrUCLyLo
	6OxjIPZmsGFDO064N+mZr71IAL05IvXVOG4CmAUeJjaJeFDA0rZ/svm2u+gq66tmLhvRR30YV34
	z8kcU9vDMusVd+9RZiEBfN+Eb1J2V8P7O3jWMjmqoj+/m4pG5RDZCY54LB25g5AS+rQbCaq/hbY
	uY6MoMHFkK+6FbwdkpNVjun6TusKD9jWjFrBDJ53MXb8pNu0T6Nfl
X-Received: by 2002:a17:90b:1346:b0:34a:8c77:d386 with SMTP id 98e67ed59e1d1-34e92139a88mr40066100a91.9.1767624430159;
        Mon, 05 Jan 2026 06:47:10 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHYO4fyY/NKZqP522dc4OZGpMKPzWFprBwP1/RIUeyvYF9tNegohUl3Ei5e98Hahvi876HNPw==
X-Received: by 2002:a17:90b:1346:b0:34a:8c77:d386 with SMTP id 98e67ed59e1d1-34e92139a88mr40066079a91.9.1767624429411;
        Mon, 05 Jan 2026 06:47:09 -0800 (PST)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f476ec311sm6634868a91.4.2026.01.05.06.47.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 06:47:08 -0800 (PST)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Subject: [PATCH V3 2/4] dt-bindings: ufs: qcom,sc7180-ufshc: Add UFSHC compatible for x1e80100
Date: Mon,  5 Jan 2026 20:16:41 +0530
Message-Id: <20260105144643.669344-3-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260105144643.669344-1-pradeep.pragallapati@oss.qualcomm.com>
References: <20260105144643.669344-1-pradeep.pragallapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: ju8iB1A61tmVXCtbisEVvK2LnEK0ARNL
X-Authority-Analysis: v=2.4 cv=GboaXAXL c=1 sm=1 tr=0 ts=695bceef cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=YpgvqVHoR88ruzM84CIA:9 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: ju8iB1A61tmVXCtbisEVvK2LnEK0ARNL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDEyOSBTYWx0ZWRfX4M9ODK+qj0BP
 g+rFlOlMeSA8RTAT4dvWTDp4zQbsvZhbeU/9nQNOhuCAFhFDgxmcqzHYPD3o+D+meQQv6qdaRZ3
 2uXyRQ34L4NlEjHZZUOmMmMjMpdXCkMCrRtN+l+U1nUgv8WNpbu9pROx9PwYIxotdpUEbHy2nN3
 nNTGq99Ho3HOgTf87O6XdR9C33H/T6HJtNUhQ23m3z/2gdxxbf38QhgFKmIE79EdhaPQuwQnmfw
 6QzVP9v4Z/Rwbi8m9IfbjL+nqmbNxKKBFT0dpcgNQgPX37HbaZQWMQN5mBTrD6uFbSaeAkyRsSO
 e7TPCiIfkt6OJJMMIzbraqG0Y1kI9x4DTy0+2OsWU1g5YPP3uk1nZ1RKC8keHCbbmD8XgCPWkLp
 NNtIbHF9haTzFTC6FfOc6LrNaWS4QLTIU8p34XFMxMgN9s2VuPZlKVvuLjyQPLtcIQuJt4kUk7t
 sb+ZvVZRxnnLKVX346w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 bulkscore=0 lowpriorityscore=0 priorityscore=1501
 suspectscore=0 impostorscore=0 spamscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601050129

Add UFS Host Controller (UFSHC) compatible for x1e80100 SoC. Use
SM8550 as a fallback since x1e80100 is fully compatible with it.

Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 .../bindings/ufs/qcom,sc7180-ufshc.yaml       | 37 +++++++++++--------
 1 file changed, 22 insertions(+), 15 deletions(-)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
index d94ef4e6b85a..c1085d178421 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
@@ -31,21 +31,28 @@ select:
 
 properties:
   compatible:
-    items:
-      - enum:
-          - qcom,msm8998-ufshc
-          - qcom,qcs8300-ufshc
-          - qcom,sa8775p-ufshc
-          - qcom,sc7180-ufshc
-          - qcom,sc7280-ufshc
-          - qcom,sc8180x-ufshc
-          - qcom,sc8280xp-ufshc
-          - qcom,sm8250-ufshc
-          - qcom,sm8350-ufshc
-          - qcom,sm8450-ufshc
-          - qcom,sm8550-ufshc
-      - const: qcom,ufshc
-      - const: jedec,ufs-2.0
+    oneOf:
+      - items:
+          - enum:
+              - qcom,x1e80100-ufshc
+          - const: qcom,sm8550-ufshc
+          - const: qcom,ufshc
+          - const: jedec,ufs-2.0
+      - items:
+          - enum:
+              - qcom,msm8998-ufshc
+              - qcom,qcs8300-ufshc
+              - qcom,sa8775p-ufshc
+              - qcom,sc7180-ufshc
+              - qcom,sc7280-ufshc
+              - qcom,sc8180x-ufshc
+              - qcom,sc8280xp-ufshc
+              - qcom,sm8250-ufshc
+              - qcom,sm8350-ufshc
+              - qcom,sm8450-ufshc
+              - qcom,sm8550-ufshc
+          - const: qcom,ufshc
+          - const: jedec,ufs-2.0
 
   reg:
     maxItems: 1
-- 
2.34.1


