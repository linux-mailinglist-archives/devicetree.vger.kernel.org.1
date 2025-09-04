Return-Path: <devicetree+bounces-212946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 537AFB44329
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 18:42:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 658A01605C6
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 16:41:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B2103126DB;
	Thu,  4 Sep 2025 16:39:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dPrOq2X3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE4EA3126A7
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 16:39:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757003988; cv=none; b=d0R22g5AvS9Q1vyuS8+7kIQxg+3D0RGW/O/mBGMYj64PH9fghI7BOPHKPmD+advXRPWscKa3rHeyKngz7BUu7/KN+kScGXpxi/b2Lav+j5E+5C4zkea1nSxDpsGb9dIWQkluq4t6/8A6tDt8EPCEmAmKEen+RoWAg5K9lHv/kBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757003988; c=relaxed/simple;
	bh=HhL7R2sKeXiIqlZtecSPlVNqig495+ove8KywGSPyYM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FzoB50/0OwznJH313/iV18RYRz8d8tgsQMi7lKnKg+OzHnQuqRJGcqoWxnRK7bPBYD2i0r8NOb53Pkv43w5YfGSeTWxZGVJ4H/JUaJH3aoN/lXoIAjNJ8eb+rpb57MB6q28r2ZdXL6kpT4juiC3ynMVFf/lx5kQ/tZKyhbW+HGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dPrOq2X3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5849X7Fq022151
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 16:39:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uKDDTZaIKoToqk8fUCVl9/PoEAVOsBabIY9X0ZzII60=; b=dPrOq2X30vuUjcqA
	qdDU5SBWGN61IJcp1GcTxGrJrHDKbP6MOFgss63MYZeZ8rrALkf/KhDPmwKE+3Yh
	AtPm1SlOx5XQhnSm30J60csq8lbT5MLJrfC4R3GuZHxqPD4k46HRuyD2zRhjT/Bg
	hfg089DB7yhUoBn4Y01T0SqPe6gsanl21ZNXCYqsq+1/QWa8UH0/biBhFqKEEIgM
	ClWfKbAQzX6scc0A+49oUPLSQH0iy8BM4lSQpQsGDgs2POXije92ocGphCeoPnfm
	vXz6UPwEkj38w2BYnKbxzluW1x5kFUy0yH9vrcEESWn451gi3D2vrwXU0v+KfRwG
	OvvCVw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48utk981eq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 16:39:46 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-32b58dd475eso1304094a91.1
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 09:39:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757003985; x=1757608785;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uKDDTZaIKoToqk8fUCVl9/PoEAVOsBabIY9X0ZzII60=;
        b=e1vnUNAwln8sUZ77/VAwrD9/FPpNwQdKNdX9o+KdpIR9lhKlIL40hKeUpwDHJg+Ixd
         5N0vl+VdAKXli9Ej54fiLLhrwbBSLzyTHf2n8UA/OAWypZbWzqQHrMM9fbqy4fv1PWJ5
         uAu3kVpzZdc1YJ4aCisqz+XmuRf7XGXlcMPH9B9hWHYPGVAhrCs/50jDlPVV+0kTTKlw
         cbTxzUv6k/BNjOaQUZiBKnzsB4hlOPadbRiB7CR5WqybnHJGiKp19n15Xj8TEYz53i2u
         zj1q83D+oF99++lttRMpaGaz9GYWeQTMUP9xwxnlpgJ3Tw1yY1+ehNUn/GO6v/kDth1e
         Swzg==
X-Forwarded-Encrypted: i=1; AJvYcCXWrG72iAqkr2GOvPxKvdBHZY00cNnEdQIkxKGC3AHR5XFsPM1axYVlL7xgJzgABmiANXkwyVxRaIZo@vger.kernel.org
X-Gm-Message-State: AOJu0YxeZgEUV1WARWwCMMrmOux7NhUDnMzSXo8+nyLDzuBHU4GCkX4C
	yzphpTvFW24bXaIHRkfL8fHbDCoAGf7c1H1XSN/qNMaZPDmewP3+Ceam6o9h8R0G3NomaQNfNDo
	rKrW3ZwG3+lXpNvY4l7/PIAxyq2nnhv+cu5IqGfvKC3wkVGZWQe3QWyzm2jRHN4Hc
X-Gm-Gg: ASbGnctuGaQdAwgqHZpY9hq6t4k0gSkcFft84hDgfK6MbK4Qez+FUphqaa5B5O5pC3y
	8RXeV6fT93+EJHWHfnE+K180Ws/ZYHr9B4Lxy5Sohq0sMgJhLcrPBFads5RdeQY6FjolHmDC/59
	Q4rZTJgQlxtJMaokc8ItWaod08kHtjrt9CKfM05Z4JoDAjvdbELadMFNsfjITB5bF48gWQjBTuX
	aYhV8BkMeMgE+TZrodhZ5GVZgdtDC/huKeIeZmoQYENs3bSCTh5ZJb614H9ENrvgqHSPOmC3+E+
	jePAH9/29/ohDlXqKnTwTvEKaP/4+rXpypuESgmzod2yDYiYXYIVDbLJAcxKHxGbDKY6
X-Received: by 2002:a17:90b:3c91:b0:32b:6223:259 with SMTP id 98e67ed59e1d1-32b62230456mr7502196a91.13.1757003985496;
        Thu, 04 Sep 2025 09:39:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFcJGB1HfigKhlcseZuGD2dtBOZEFUdCtR1Qdkw0I+kOZzDpeSQstZ3kbfO4q41mt5kED78NA==
X-Received: by 2002:a17:90b:3c91:b0:32b:6223:259 with SMTP id 98e67ed59e1d1-32b62230456mr7502162a91.13.1757003985074;
        Thu, 04 Sep 2025 09:39:45 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4cd006e2c6sm17346371a12.2.2025.09.04.09.39.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 09:39:44 -0700 (PDT)
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Date: Thu, 04 Sep 2025 22:09:01 +0530
Subject: [PATCH v3 05/14] dt-bindings: eeprom: at24: Add compatible for
 Giantec GT24C256C
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250904-lemans-evk-bu-v3-5-8bbaac1f25e8@oss.qualcomm.com>
References: <20250904-lemans-evk-bu-v3-0-8bbaac1f25e8@oss.qualcomm.com>
In-Reply-To: <20250904-lemans-evk-bu-v3-0-8bbaac1f25e8@oss.qualcomm.com>
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
        linux-i2c@vger.kernel.org, Wasim Nazir <wasim.nazir@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-e44bb
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757003953; l=724;
 i=wasim.nazir@oss.qualcomm.com; s=20250807; h=from:subject:message-id;
 bh=HhL7R2sKeXiIqlZtecSPlVNqig495+ove8KywGSPyYM=;
 b=bgkk/VscrfaA2/hD0MOxPzz3j6BO3GCVxc+5R4gTrIIsO0E6coSAdgcyTz97r1uWzih4pZ74O
 0uVXMCw3Y02AEkF2PrgKKFK5vv/0lgO26zSG7N4OT1QRJWv4W77TVKT
X-Developer-Key: i=wasim.nazir@oss.qualcomm.com; a=ed25519;
 pk=4ymqwKogZUOQnbcvSUHyO19kcEVTLEk3Qc4u795hiZM=
X-Proofpoint-GUID: z7x4Om_il7NMGR4eS2nYBLj5rNpM8Jqa
X-Proofpoint-ORIG-GUID: z7x4Om_il7NMGR4eS2nYBLj5rNpM8Jqa
X-Authority-Analysis: v=2.4 cv=ccnSrmDM c=1 sm=1 tr=0 ts=68b9c0d2 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=Yg4z3stHfqcsaZAJ4NoA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDA0MiBTYWx0ZWRfXz5lQnMn73CKb
 aMhr7ZVFHoiuwoW0sx9X4rqG7lUDmOWi3lgXb8Lif1qQC0+au0c8az+V75wBrBZ9CYgcL0E3swv
 cVrsi3PPnRiqyEDGpHxT2GoS21mylzr8S5drlcE2Ohf7pcerLaEWuohKegmHEi5/9lQJT5x5ohD
 bx8hpXm+z17FXn64YosUiss9dO/H+TnBNAQFy3dfJI8mhmXekd8eZHVkZBzLRk+ZiAIKc6KOqYu
 s7ouDzf8aDVM3ZlgYV5dAAlkZTwG7VDNONcdWEUeb/6gKW7OOEePLbbq55qB48TOGnZrNMHqBxB
 jBY8ffkmBaz9UakjuPrFXzFF2bxR5e+A4JmPYaiShNhp1RppfPUZYIX+xmemKfdAAyUcl/SpPuU
 DxlmRt4c
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_06,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 clxscore=1015 suspectscore=0 spamscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300042

Add the compatible for 256Kb EEPROM from Giantec.

Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/eeprom/at24.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/eeprom/at24.yaml b/Documentation/devicetree/bindings/eeprom/at24.yaml
index 0ac68646c077..50af7ccf6e21 100644
--- a/Documentation/devicetree/bindings/eeprom/at24.yaml
+++ b/Documentation/devicetree/bindings/eeprom/at24.yaml
@@ -143,6 +143,7 @@ properties:
           - const: atmel,24c128
       - items:
           - enum:
+              - giantec,gt24c256c
               - puya,p24c256c
           - const: atmel,24c256
       - items:

-- 
2.51.0


