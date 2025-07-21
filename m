Return-Path: <devicetree+bounces-198368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB67B0C8D4
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 18:32:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CB9901C214BD
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 16:33:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2541D2E0939;
	Mon, 21 Jul 2025 16:32:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ePn2qgyb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD0BA2E091F
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 16:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753115557; cv=none; b=eVbun7dwWt1jHDaqVuN+nPJ3did+yKyTo3n+3s969yH9+tKZPQSwLhQtXzeoHfp/VIE9ekNdUky37UtMegPW5lIwYUP4Rxzg/hjuvKZdZMwy81dfhDIgU85PHYCbAfsEnNHxpekLB+wpeuQLbVu/0obQpWKbExaGDR03weGcZcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753115557; c=relaxed/simple;
	bh=iyIzr+jC5KDjXspPRwBZrSh9tU6LfOxoBKt9zdZWbdo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=SQkJkiJFkgvzpp00FbmdoK/KryqKzEa50mBLhz1UzEDM0YEpGeIL9FzipA4ArhBdQB/etRLEZmy3w8NRh26VFdiiLQ1ABOXL0SJjkY2wrt1DpTbVdep94DNKu2iNdjxsutzungDMq8N/bsCWJ9W1kPX1tcfhauDDjBdixp5zcdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ePn2qgyb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56LEeuG4012541
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 16:32:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=T4Klmseu2Mfh86rZxIp8QLkDs/hpniEhGQD
	JVIutbVc=; b=ePn2qgybduqreyyB2iatoTEJLk+Y5+qbVXVWb1lH8TqElslkGqK
	PGuIBlt/Z+2PeiO5IrPjxbITe6w2H6iFkZgpIPomx/uaxVp/f5IPbdbsiJXQhggy
	W6gIdK4smPLuBgv3gHHo2lE3sP//tD/E0AWJWNWqh/m7CzrTFs37WA2FiO94ig9g
	AInNEnPmktoTJwmGKYWbMkJAmM3z50m1Ercf7GEivxsWl2UU1zHUCCcC9OzBsEFX
	rTbJYbp434LGvKVQ7Rr97W1jb9oFxNjCrVtBo3Y4m4a/djNnzdPfDbvD9MblzGEF
	psXZE15Dw2U1N0D7pQlyqBPRpNZ2lblu7LA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 481qh6gj52-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 16:32:33 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2355651d204so39496475ad.2
        for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 09:32:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753115552; x=1753720352;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T4Klmseu2Mfh86rZxIp8QLkDs/hpniEhGQDJVIutbVc=;
        b=N/N+kZwfMHc4PeSa4wUyGSVyr5YJwzljss7gp+k1+4H96nJVe8GS6n4BSTbRo8nTVA
         n6uF6kH5PmR3VWyZC8KnjUtwYoNX2ufGn+eZGnnu1c+k5gtnQ8z5UGtuwjfA2KozwT0/
         GiF+EYG8+/wtEHT/qJPE3/F2j3axFHyy8h94Kt4XloxoYtBE1nIdvFYcYgR6fNq+N62T
         WgN4iIaKgSrF/hcy+PSNd5h/1QHNfAKa+HSSGWchgogqev2TNe4oIht4peB7Mm718Ivd
         t2vIzpMYEh3bikY6ywB6N/bRCV0rfbi1zHUBH67lECK0GpR6qshErAB/4BR8V7wOUF/E
         0mBA==
X-Forwarded-Encrypted: i=1; AJvYcCWjr0uH3y7NCYkdtoGMZQTT9ty3YcmkAcR5Tqi+17s+NK8pQq/iur3b7Jg+rqEIL1t/nLmt/ba4ju7U@vger.kernel.org
X-Gm-Message-State: AOJu0YwIThnktHfXQ8T7Me0tvwZmEnEVn6fHkZZoNJ4uhhtFzVv5XURf
	/7Ko5GCGMgQjYJys8uAZ2hfO2m1K5JznOCDOK2OoayE+pysyPz0dr9XJu4l21eMo6A4Z1zYLoKq
	rv2AqvL3EE/hX1ZQZnIR5iwVfCJGCec+SmAhPstCb5H+V8y45R7gTQdSfctwQ9ZLV
X-Gm-Gg: ASbGncuykJWQjuKr53YRFc1peyqpGsUUveB3o6TIdLXSqLgEk20Tnh6V5ZN6De+PHIr
	CRU23Vu12NU9eXtr1HkZfaOfZwlUTd6lZtqHfp47qy5PKCkM34qH++uNE2msdhhmyITbabxtghL
	aPEffCeDkhtiNI4HKXQI3YUyAL7Drp1TJci5JcThtZk4n0C2H/R2F8X/sXc65ajaEzKAL2DU8nA
	1TB9G0yg+5yFqXlxDKwNNL+AwfrQjxLk3cJ4HNhumFdOqY4aRaIDsemy+prs47MEJ8l/JaStw69
	PMCzAb4z53cZm2p8hm0uOdJPWp21u1uuiG7TzOBxopqVXSUE+gl6i8L6BJrOp4j6EdaRBEBpAkO
	E1T3ghtTtde6mHxUEXjPUfhYi7w0TcKDz3sJiZNThXKnSFXpe31b2jn+D4lD2
X-Received: by 2002:a17:903:b8d:b0:234:986c:66bf with SMTP id d9443c01a7336-23e24ec7396mr273613865ad.11.1753115552382;
        Mon, 21 Jul 2025 09:32:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGC0qoXvxpN+826ak4QR0pKSE6QgwEdRBv235JvB5HIj/InSR7Zq+Oi7gRegvz0g7tfqG2gRA==
X-Received: by 2002:a17:903:b8d:b0:234:986c:66bf with SMTP id d9443c01a7336-23e24ec7396mr273613485ad.11.1753115551964;
        Mon, 21 Jul 2025 09:32:31 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23e3c3b2c4esm59893255ad.189.2025.07.21.09.32.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Jul 2025 09:32:31 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
To: andersson@kernel.org, linus.walleij@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, quic_rjendra@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/2] pinctrl: qcom: Introduce Pinctrl for Glymur
Date: Mon, 21 Jul 2025 22:02:19 +0530
Message-Id: <20250721163221.310746-1-pankaj.patil@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=CZ4I5Krl c=1 sm=1 tr=0 ts=687e6ba1 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=Wb1JkmetP80A:10 a=TVyXueylgh4vxAmsgxgA:9 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: XZdBHnk2Uhf6l8RHpkhPSYaSrKymp-nY
X-Proofpoint-GUID: XZdBHnk2Uhf6l8RHpkhPSYaSrKymp-nY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIxMDE0NiBTYWx0ZWRfX0LT4NGhoSACt
 1u75CHYFD0SfadVz9+j8ybLdOIu+wUVR5CrqXf+WUdxGtdyhob+owufdwouT0FMTvWfFI8fuhRa
 ZcQVQ2+4sP3tmTZnShjx7jzwPczry7bjaiEZDObJNZlWlN6XrU2HiJoqnFgJbM+OiRTTYVXIl31
 ah26RJ1SOR9S+Yf7INevjchk0CxR1h7llX7Kcj7ntU6vyO8Ry4TuCC3noPzZCqzn519Zcbo6NeQ
 To7rd1rxxcEVwB/JYQ2HGzcxY+q7zaIgbt/dThdg821yXOdJaFoxJWiTCnasy1DSRyFcKHc++wP
 jIWfZfaG0gQjq8gDm9e/P6PgmvyXcLJ2A0iIS3FNhBRQ4JYcPllMJuJrQOozmSJtjW2INK4xqr7
 AOqe3xcbQ6QI4mtmabWie2It63thH5Qd/F2lvxxFQPJjaI1cPJdBGQsDhRFik4MqMdO2PfE6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-21_04,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 mlxlogscore=866 impostorscore=0
 clxscore=1015 mlxscore=0 lowpriorityscore=0 phishscore=0 adultscore=0
 bulkscore=0 spamscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507210146

Introduce Top Level Mode Multiplexer dt-binding and driver for
Qualcomm's next gen compute SoC - Glymur.

Changes in v3:
Fixed indentation for example tlmm node in bindings file
Fixed s-o-b and review comments in the driver

Changes in v2:
Fixed dt-bindings error from example node's reg propery
Fixed gpio-line-name maxItems
Driver UFS_RESET macro updated
Removed obsolete comment for pingroups
Updated ngpio to include ufs_reset pin

Pankaj Patil (2):
  dt-bindings: pinctrl: qcom: Add Glymur pinctrl bindings
  pinctrl: qcom: Add glymur pinctrl driver

 .../bindings/pinctrl/qcom,glymur-tlmm.yaml    |  128 ++
 drivers/pinctrl/qcom/Kconfig.msm              |   10 +
 drivers/pinctrl/qcom/Makefile                 |    1 +
 drivers/pinctrl/qcom/pinctrl-glymur.c         | 1777 +++++++++++++++++
 4 files changed, 1916 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,glymur-tlmm.yaml
 create mode 100644 drivers/pinctrl/qcom/pinctrl-glymur.c

-- 
2.34.1


