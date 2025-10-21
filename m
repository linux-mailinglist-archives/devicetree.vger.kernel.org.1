Return-Path: <devicetree+bounces-229166-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EDBA0BF49EF
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 07:10:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9799918C4199
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 05:10:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B3A0225A38;
	Tue, 21 Oct 2025 05:10:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RkHpgUzp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CA401D516C
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 05:10:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761023405; cv=none; b=aTlcBEEKJIqqTG0ICo/85m+K0LreNQp4wkVEU/FpVXGkl5jAe0w43Yhd4ht2YiOgcs2c2JvzpJnhVA5PimoQdtbpvD+NcFaItryvtGZQIaUON2giXe9Sf9dVlbGrkFykl+TBh386Pt4Jtf5DsjLyn8c5NEUpxtEF9eHZHRzhiRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761023405; c=relaxed/simple;
	bh=A7QpE6xP5yHDlIHikgtSjNHApEj+WDTeaVVSj39KUdc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Fq+0ZIrdh15pbzuhnWM38a67Db44WWpb2FAcWI6DDse4apaVA7xNYJwXOTSVf/fV+ycgaFd08ziBP5uJgXWQ/+/kGDYyNoa5S53OigZSg0p7neYiLHVa539CsZoucF0Sk6ocFlgfA1SgFSE78E1Z7j96gV1yExtJEpkQfONfoTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RkHpgUzp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59KL1m2k018809
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 05:10:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=b/L/VzuulQNRZ8WRFUv8t0gHqQIOYCjkqlW
	LRFniZJ0=; b=RkHpgUzpWt3xagzTEgUgCtM8ecro2w2HGTBhzQTu3mrnIcBduVZ
	9wg/jBsjjf9Kj+1/kIcmUlzKpUVomgKxoDV0sJ/pT4FtcUXrmKv+zfjJl/1BULSj
	1/gYRZTijQ0D2gB/hnANOEn5nJzlqXmQaR/DZ6NtOFetQFMxJ5DhDiEP4Vv95yVr
	ZReUBtcNV6wRK9i3P/VjTw2H/j00QVmsTVWXtY0b25VRBkMxK4taob6vFY6uHzl0
	pUO7/bxquAoFyKPB6ybUFGFmKCyIJb2GrP84nUz78tjvD0MMaTdcmu/6cXMpMMHY
	e/0RtVL98TTiK2X05zjRCOBoNNOMNj0qw1g==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v469f2n2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 05:10:02 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b6a33319cb6so3817330a12.2
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 22:10:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761023402; x=1761628202;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b/L/VzuulQNRZ8WRFUv8t0gHqQIOYCjkqlWLRFniZJ0=;
        b=dpQfER88GJtagNyr2DHyWjZyr2ZJlZSdds95gzqU3R4Gq1jk849F8QnbZecrAlAyQT
         FpewO9kDYbi3S87EDaZAHDiAcpGC3RmMHwubwvQ+quSs3KXjsIVDPwlSqXl/sc14l0F4
         ZLtbzjr2mPNuHgb+vDRlHvRJwHmgfp1/HwYau+fr//ciLl+EfCC2qJSNOelpeaXvWjZ/
         IpN8ZCIA+DvvglAcDFzL7T+bpa4jctcvJt81ItQQB4Ah0zFUcagR6mstKWqK2lwvhv1I
         wJTLE8V4Njp9QATeudshzgNYl5okhvO1K6LTkKJJbgHOMg+d78JCi5BnYJm2kWhIsUiW
         jdYw==
X-Forwarded-Encrypted: i=1; AJvYcCWZgALd6RmfJKvL4M79XP/QFb/OWBuQ5GVi2ItsEZS/TRl4LgqBtJep5+NbD/OSN8NbU4EvT4wu3iq6@vger.kernel.org
X-Gm-Message-State: AOJu0YwDbDmFZdOsxp6AJr1Ll7WMPJFuQGXkSYchiiwC0guRH+Ixl/Xc
	8S9XOJwAZWqsxKaWQG204SHr0iaa5wLqR7j+fcsSIXoxbSLxBRncAoqgeq0xqvaiYOmMMa8u2CX
	J+tzzKwlMPtjTV8foumbHMHy7JPSvpC8UpMu3xjtRCNlvi7BzYOzFz4uNXZIhGLuG
X-Gm-Gg: ASbGncs8B1Nd1FOAQzR/ybsoXThZ7MrSUNn+EZuGfbiacCWj3IC1n0K6dhQ8+yGPL1C
	kvTSzgQBYH64Kc/oHjzX3KG8vhGi1Q8Ydn105b6ct7Cp6gvAhzuq5vMoyGizP6eBdgfBVZsfjGF
	tQZhYkwduGRTGpiVYo30y6bKyMMNPs7lCulf0Z47UDGSray+E8LjKgtbtwhq8cwkuBOF0SqTMqr
	ENbssjO8BnAbWvRA81rLZWx7MaQ1O1tWX08sFyHnEJbVxuTzhIUdDolfkyBf8NDR4+W58o8v6C4
	iNX2fn56Gm5VMRqKf2iI3YQkawTdvXx6Jfd+aF+r9ALpt0MGx4egiLg9pVdpoa3YC5DuZ1c1F8m
	QUSyExoCKQrwkJ21XSonhB2WkR0dgIxDE7DTq
X-Received: by 2002:a05:6a20:6a1e:b0:306:51fd:553e with SMTP id adf61e73a8af0-334a8539817mr20650383637.18.1761023401770;
        Mon, 20 Oct 2025 22:10:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGRCOJtiQq21NoWumJOlPtutB2y4nxCBZ+svbSXhOYleR86k4V0TgjtU0aoFbwS7vwbpkMgqg==
X-Received: by 2002:a05:6a20:6a1e:b0:306:51fd:553e with SMTP id adf61e73a8af0-334a8539817mr20650359637.18.1761023401288;
        Mon, 20 Oct 2025 22:10:01 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a2300f159csm10081629b3a.46.2025.10.20.22.09.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 22:10:00 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v8] dt-bindings: usb: qcom,snps-dwc3: Add the SM8750 compatible
Date: Tue, 21 Oct 2025 10:39:54 +0530
Message-Id: <20251021050954.3462613-1-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: -_W7JnZXmYWJkgExXBkjoMzYFu_fhZRj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAzMiBTYWx0ZWRfX/wo1EjKWtPAV
 oa+I2k/tfLEtWVcIo5F0qGOMtIm4YyFrceGH7A6yVu+o3Gg7iZtoLVzyNohWAcTiOQf7eDBczSz
 3DuvPg0bcWUoYQx1tUtVeZCUZje8UKs2rZxL0kIFT7dvQuFQxpDW+aedXn8aD7UTy55DW/ID2F/
 z2IZOY5ZfcnAPwAQH7dvr53jV2TEFK5tbZaZSzfLHd6q1p1aX+yu/PK9JLw3YPm3zWdOVhV+M0O
 KSwXMSpKW5UklEQEzv7Xee3y7Xx09Sz7/xr/dXcAfLbr1rEqvG7/fSc0yAzJPSZDwczj7cGEeo4
 h72+ZWmuG4c/6rj18eO0LgI5xv6WZBLCHPslkC+el4XZ7KK/T7zUQpFtKAfP46wZO1uI/Wpntfo
 9AA6Rg4Xqus0Roj2z7CEfeYS86GvUg==
X-Authority-Analysis: v=2.4 cv=U8qfzOru c=1 sm=1 tr=0 ts=68f715aa cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=F9r5tr8hi6wSvKSliRAA:9 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: -_W7JnZXmYWJkgExXBkjoMzYFu_fhZRj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-20_07,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 bulkscore=0 malwarescore=0 priorityscore=1501
 spamscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180032

From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Add qcom,sm8750-dwc3 compatible to flattened implementation binding.

Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
Changes in v8:
-> Shifted to using flattened implementation.
-> Since the flattened implementation code was provided by Konrad on the
v7 dt patches [1], moved authorship to him.
-> Separating out usb binding patch from DT/Defconfig patches.
-> v7 was actually correcting XO clock. But this patch is adding the
target compatible to new bindings. Although v8 is strictly not a follow
up of v7 and has different content, marking this patch as v8 to retain
context.

[1]: https://lore.kernel.org/all/5a0a0255-3c29-4e31-ab15-d286dea1ccb4@oss.qualcomm.com/

Link to v7:
https://lore.kernel.org/all/20251015105207.2819689-1-krishna.kurapati@oss.qualcomm.com/

 Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
index d49a58d5478f..301e873684ae 100644
--- a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
@@ -67,6 +67,7 @@ properties:
           - qcom,sm8450-dwc3
           - qcom,sm8550-dwc3
           - qcom,sm8650-dwc3
+          - qcom,sm8750-dwc3
           - qcom,x1e80100-dwc3
           - qcom,x1e80100-dwc3-mp
       - const: qcom,snps-dwc3
@@ -213,6 +214,7 @@ allOf:
               - qcom,sdx65-dwc3
               - qcom,sdx75-dwc3
               - qcom,sm6350-dwc3
+              - qcom,sm8750-dwc3
     then:
       properties:
         clocks:
@@ -501,6 +503,7 @@ allOf:
               - qcom,sm8450-dwc3
               - qcom,sm8550-dwc3
               - qcom,sm8650-dwc3
+              - qcom,sm8750-dwc3
     then:
       properties:
         interrupts:
-- 
2.34.1


