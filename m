Return-Path: <devicetree+bounces-220447-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0412DB96540
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 16:40:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 13C433ADDE6
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 14:35:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C960E25A322;
	Tue, 23 Sep 2025 14:34:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aVyagMFW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D20D14A09C
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 14:34:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758638085; cv=none; b=jaQoqDC0otn+6ibL4BW/No0azFrtOqKTiwYoqFjO+OHtP25j47RDE99k5LY3Frz5Rk9vYEcHWNzFR1Pqz0VhpYgy3jUi4UDDt6r6nOjY9iSUbz39sc/VkADFzQ/4KfiKCaRMsc7H81fKt6//uUOJmq0jQWc4MQLQF4abp0QMLXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758638085; c=relaxed/simple;
	bh=/lziSapCEzH2gqTs6jMXh7MDQ4LI28NR9zhl2YHnVE4=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=FRhzdkmnVafRnFs1tNQsZ6V5OtshvTxs81lFuqa4uXJSfp1jgVad/2vEbmum5ihdgudZKqOaPwFx3coQXHMUaC7jMIyOShS6q8gKg2nSCg7JmyxMrBKaX0g/yh508Wv6ZdGQuYUejfkTiDECn7pyQgFNggl63t3gkNJqEfBlN/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aVyagMFW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58N8HAYj002839
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 14:34:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=iHjpdqs7eCb9fs9KxqbTEla33T54OtQRS2i
	QSrd1H1M=; b=aVyagMFWf7gJ3+5rtZNOb35mFxxF/ClZb+3MTCktfqcnDbHWfPK
	Vi0iUnnNjM0dUWkyR3qPx1npO/vRMd70ozViV+8s5RNqGqrmgjYptKm2LkkbrV3f
	ZFAyQ+4myrq2N6Pb+jNl/DFP8MxoAr+/01XZiO+RODF/MoEl15zz9SvWPZdVRBCl
	5z3ebEAvnX79YJ66OtXUEmMR/iJqkzf1NyH3lIgt6SaTzssCrWOW40MHYLSJLfht
	xiv2pqSt55jc98th59RotUbHAiWhbviByN0nnU0VMaTw0W0CVuGllXMxG/53+S3B
	UqKj/dfIusAfqCIvPegVGkFO7k11b31tDXg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kv10xub-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 14:34:43 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-329c76f70cbso4774930a91.0
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 07:34:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758638082; x=1759242882;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iHjpdqs7eCb9fs9KxqbTEla33T54OtQRS2iQSrd1H1M=;
        b=XqzXgH+KUT29FOcN6sGL2Yeb29QwVLEJh8YuUzQWSXqi+/HGh3qqU7I3e6dvVNo2tf
         XGh0Xxp1i/9MmTDiKama6pLxHZ5eQ3zgKtsYDZHz1OYIh6H4V3m5/P/EW8lMp1rfWa1i
         4EqIzz+6ZeSXG3G6A9T8zJ0tTFKLOYDYtQ5Mn9M7jodnG0TwSl2N28NaM0e0Bwncrd7h
         WSHAT5AIrR3k3014nEBQcZcxRgEX5863Mc75GnIsXEFSnsMqvZD5DCRPzDedKwxpf3zi
         LogRMkGGCcP4hW94O+gtzfmQmrGwxJqUqXGHSIqV8SkfDIpdme29A1qhwTssnsZs2gJb
         5tKQ==
X-Forwarded-Encrypted: i=1; AJvYcCXkeodcYaUvw05Ykat7GI3hhftZEJtglVAih57anq53Sk7lucUkn18O7+Xi3e3BTII37vLcRiNpYXqY@vger.kernel.org
X-Gm-Message-State: AOJu0YwyRoD0oyuhFooBSb6ODYQvdDEds01r7GhTGMl6kYTfDKNiQK0V
	tHoIwUnWPFyQw343sZMZ4SEaWYDB/KaNo8IHbvTggSXss5I5XSglTcCyJt3Sit36SBUns4FsPjk
	awXcX02YfCmZ3LKSGxwTCPXGt7b9FqFzDawvdWInjAKti0GN60VsBL28snu7RkKJo
X-Gm-Gg: ASbGncv3pnDRwfBUKBcL+zB3hy9HffYuefFW3yBmqHSM52rueC0h03aqXlRCfcLzsdR
	TLV1oRRrOV9YHO1UxEx3n2wHRjIIAtqOtrAlyjDRyW9mjFGGBzsz9OmKfpETM15zSRaNzRoZlym
	j81T44+rabo48bMHbGlYxldrm48pLZ3yAWYjcMTPigigd8xMpKJpzI0/XYLRd7xvrTzMe87GxSo
	fU4STNUwRagG73S5MTEr6Fm6ZYbZJef40K0sW40j9OVIwDeu8pDD093VNQiC/tDJkMrg+7g6zuW
	adD/Wkt+DvchjeXaOijYKKjG7coXb4PJVu1pNKpXLqRK1n9ab1/LjR9Y8kIP0cP8ymfcAvyGxc7
	d
X-Received: by 2002:a17:90b:560f:b0:31f:5ebe:fa1c with SMTP id 98e67ed59e1d1-332a8d243a4mr3540114a91.0.1758638080285;
        Tue, 23 Sep 2025 07:34:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHwGhl6ZWmSj85Mjuc7FJXLjxNRqQjqt729aWTla6N7ewM+DbD5u9AnCsCrlBb44Z46976trQ==
X-Received: by 2002:a17:90b:560f:b0:31f:5ebe:fa1c with SMTP id 98e67ed59e1d1-332a8d243a4mr3540084a91.0.1758638079868;
        Tue, 23 Sep 2025 07:34:39 -0700 (PDT)
Received: from hu-vdadhani-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3306064f420sm16676047a91.11.2025.09.23.07.34.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 07:34:39 -0700 (PDT)
From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        mka@chromium.org, luca.weiss@fairphone.com
Cc: --cc=mukesh.savaliya@oss.qualcomm.com, anup.kulkarni@oss.qualcomm.com,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Subject: [PATCH v1] arm64: dts: qcom: qcs6490-rb3gen2: Add firmware-name to QUPv3 nodes
Date: Tue, 23 Sep 2025 20:04:31 +0530
Message-Id: <20250923143431.3490452-1-viken.dadhaniya@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: SoKg1RsX5PoHotE5do8vuvUMXWWXutbL
X-Authority-Analysis: v=2.4 cv=RO2zH5i+ c=1 sm=1 tr=0 ts=68d2b003 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=pdVGFcHJ2_4qoVWHVlUA:9
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyNSBTYWx0ZWRfX/00bbdaQ6rGB
 XIJOJNBpN/Q5/COjhTIp4y3zPgIZOHHlzsle7ayMMv4TOJ09JmVHvexpbeykq+3yubD5SEVShBr
 xkNn0wzs5yHmBHAUrUZu1xcv6QiZOkkoxrhDW4NJ2l+73UaTiC2MMQJLJWJ265RYJwnfEHLyBVm
 wJfmD2I512HflxMo9ZmI1q97Xjv+rkt6SXpAZYyknK4Q45pACS7pPzXjYo40lLK/k5xTvN/LOyZ
 K87Sn26FNd+NVxN8oumzWEvm0OS7gauDB27/kidCekFG6rGssEbUHS6bITcFiQJDw5BAZNXdIA3
 zYan/NUrAyAB9dCuFQjiZQ6rh7NYd+ESfE8DvkCUejuJTFa5ODnYc2uq8yCcysYKEhnOgVgg3ZD
 +DpE9lw7
X-Proofpoint-ORIG-GUID: SoKg1RsX5PoHotE5do8vuvUMXWWXutbL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-23_03,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 impostorscore=0 spamscore=0 adultscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200025

Add firmware-name property to qupv3_id_0 and qupv3_id_1 to specify the
QUPv3 firmware ELF (qupv3fw.elf).

Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
index 18cea8812001..4e361580ddf1 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
@@ -1009,10 +1009,12 @@ &qup_uart7_tx {
 };
 
 &qupv3_id_0 {
+	firmware-name = "qcom/qcs6490/qupv3fw.elf";
 	status = "okay";
 };
 
 &qupv3_id_1 {
+	firmware-name = "qcom/qcs6490/qupv3fw.elf";
 	status = "okay";
 };
 
-- 
2.34.1


