Return-Path: <devicetree+bounces-199457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 96D5FB10BBF
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 15:42:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7C5753B21D6
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 13:42:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 543842D979A;
	Thu, 24 Jul 2025 13:42:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YDISVEdl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C915425F78D
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 13:42:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753364568; cv=none; b=WtfOztBZS2FZNcNpRKuZsmWfA1C9SSXYcAifNqHEINX9p6pIoX0W3Qa6jwP/aJ0vTwza9szVDkUGwkDDlyX0f9DPEnA/uesg5uDkk1Gox9SKCHeUCDsE6ET7zhgoPLWHBDRYYidI3XyAOLnSxP/ul8zVbfzdhIu8BVnqv12gjwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753364568; c=relaxed/simple;
	bh=kMhPDLRft58cFZj+7bDbN07osFzXbyRLO+xR3b0qJmg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=RZK5bwprxlTSFyA5kIPFDQvMgb2V+yn9I2CNUi12XB7pru0vwZyuDM0tF65uTMJfuePw/uN8vqK7o9ZRD1zaAoLkW3mapL7v33xEbq2PCPrJAn3epSJBb6l0/129nWvw0Guck6eZpIGJxp38qX6nIrYMxfA7nFnZXiRBxRVmGhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YDISVEdl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56O9sx04012570
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 13:42:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=tsUjJO0iLJb/UG0dtmULJPTzB+FcOPgkwsm
	DaJ4piAY=; b=YDISVEdlwwJL4Jp3sjRXEiZnt7qMrCT+tple+g2+hVnF7wei8xf
	eKrbR4FPpc0u77TTC57OI0M4tw/8l0mrG9PyPqVu7enK4xFrCyk65eyqSagGoLK1
	igjFIbB/aLVgKWYix+E6QQGQeHnVBbSceFEImZkGDnCPBjBdgosE7NEY2gINkvPK
	/HqK8JXo+qvw0dezTKP36m07BnyDcOmEF4Px1WOkxBhwKwKrjQQIg75SGcK1B2fv
	XIH9to7szgfYYKo7fdRpW/njQ2CucprPT89S1pdWcw+jcLSYG9A3Pm7OXHPy1u9V
	2r77cd/hF+Iq+mcO0AC/CLFafQmIubS8GIA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 482d3hxw18-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 13:42:45 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7ceb5b5140eso183751585a.2
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 06:42:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753364553; x=1753969353;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tsUjJO0iLJb/UG0dtmULJPTzB+FcOPgkwsmDaJ4piAY=;
        b=XyVn3fU47kVuGQ1qBfF4x7wZp/j6pmJnbNq0wadmCtKwgE8fzXK4MEl+G+ZfgHesYN
         Um4VbAMqGxt+pDzi3dRhnAUFCmGC/cgk4ZyaVLGHRLu0bphSo19h+GwJqWZcW4UweTUY
         uKtgohvV9xdfOQS1f3Lp4EizDGmSxoHKX3xAbxRuzW5wnRvk281iXomWMBwj2iv/+imk
         8J70WEzUBDrM9KjxudaEUb//Xl2HRRBbwf97Pqj6HI/ybNnYbH5FNQu3DucT5P2W1yTJ
         1iPIhq55Ed5CJJ/ImNLcwwWGEucByKcYtOhSEaMIEnNbEKmUfBAHcHKW5RebN6EvfbuS
         FICw==
X-Forwarded-Encrypted: i=1; AJvYcCUTkYbO1c48rv1sEsl5EUVyqCZH1sQr1uGlR7DjqEB77iMye/6ZNsot6cZ6US91Jtq1ZaiR7lpxV8VO@vger.kernel.org
X-Gm-Message-State: AOJu0Yy07aJtch8mmkWEas/fZAkqnQI/ZYUnQexFtcwcV8mAL3JSBCHB
	tCEfLuW/nMe4Z9CKgWMjMdOd4QykeMpxFLFeAjY9bqtYFMyK3MbhRGYhGRgQ/XBuFXjKi5tl3qL
	zFU5FGqPh1gOKdrw8jiJ490AaEUcclTrjE9NVPA4isjf7LDAhXprine+fqqt1yXzW
X-Gm-Gg: ASbGncu79I6ERvLj3H/jBL4UlPAltSBgf59voJVZ6r7pElBhuIci3FR4U24DoN2uPnP
	D6OIZk9FPSge80Ebk47WAqoIPL4jZfghnKLsXfQPLCThsLLH7+RiONhdSlNHIUtkdca4u3KLsTZ
	nwHMPWcUdpwkteDTPAxOuRyhNajXDUbiFA+eLWPhxOeP/tXdlBg1QfvriAarpKgCyhSexVencGs
	GR5nkPddvXKpRwwtDNVd2iEJm4/7dOC0d20gTbNIH+/R9A/equJf0lBqURVOq5CVrLUcLl1KwXm
	FwOVJR2ibIaSjQqvn9W3omN+Lg1CBd8LpDCMwtzfoYeGg+mYsmnpsQ==
X-Received: by 2002:a05:620a:4095:b0:7e3:4413:e494 with SMTP id af79cd13be357-7e62a1957b6mr823187985a.60.1753364552564;
        Thu, 24 Jul 2025 06:42:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFaDLmi5F7qLiXnyBH4lS2oCZRlvOc0P2LHa/r9heMqn1DJzqor51NTb7bwX2PM8IlM8IoNgQ==
X-Received: by 2002:a05:620a:4095:b0:7e3:4413:e494 with SMTP id af79cd13be357-7e62a1957b6mr823183085a.60.1753364552035;
        Thu, 24 Jul 2025 06:42:32 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b76fc7885esm2228471f8f.35.2025.07.24.06.42.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jul 2025 06:42:31 -0700 (PDT)
From: srinivas.kandagatla@oss.qualcomm.com
To: andersson@kernel.org, sboyd@kernel.org, broonie@kernel.org
Cc: mturquette@baylibre.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, srini@kernel.org, lgirdwood@gmail.com,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v2 0/2] clk: qcom: drop sm8250 lpass gfm driver
Date: Thu, 24 Jul 2025 14:42:27 +0100
Message-ID: <20250724134229.103001-1-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.50.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=G8UcE8k5 c=1 sm=1 tr=0 ts=68823855 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=FWHBK-Jb_X8E8erFsI4A:9
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI0MDEwNCBTYWx0ZWRfXw1MtOpCYiO9D
 EEiLHK1Y1h5yMAhOryYJxWMRBLxrHW53oc1tKFxJauhP7hGBWkyX6MYO2AmZJYduPkkmMNQvOEo
 brT3qqEPrwk7L3T2qOQT5TO0PXMEd+Fa13e/WZ8odfVnE5s4B32P82O+Nab9FO8whbd0Ek8CbXc
 z8pxTSdsM4NWLd+cUA2mrjOcvGoyl8xUkEjxVlg9Ukgc2SviqE29tf384OUcHUxa8Es8leTvVLO
 fC/s6jO6I/GJKU4eHjIyrOEvEFMjssZiNswKPOwpeoqKG74aQ7wtVZ5QPd6A5eyqmpsJnlu26wD
 gHURxjCx5brV/3cRNMZjQ6k8zN585kqCKy+rEiKb4FT+rwC9YRYc6S09+wBRxhTVlioF1+bKVPk
 ZpbSX8Aqbj5rMeEFC9BMELE+BJfMrBeQ2RsC8e/rPp65PqgWW01c+VJMyW1kAIKcUaKNb5FU
X-Proofpoint-GUID: pwGd51dfOHvu47IXtbP5J_miEOHH0O7E
X-Proofpoint-ORIG-GUID: pwGd51dfOHvu47IXtbP5J_miEOHH0O7E
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-24_02,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 mlxscore=0 suspectscore=0 priorityscore=1501 clxscore=1015
 bulkscore=0 impostorscore=0 phishscore=0 spamscore=0 lowpriorityscore=0
 mlxlogscore=664 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507240104

From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>


Its been more than few cycles of kernel releases that the device tree
has been updated to use dsp clcoks directly, so there is no need for
this driver.

iIts time to remvoe this driver, as there are no users for this driver

Remove this driver and associated device tree bindings.

Changes since v1: 
	- updated lpass-wsa bindings that was including a header from
	  gfm.

Srinivas Kandagatla (2):
  ASoC: dt-bindings: lpass-wsa: remove un-used include
  clk: qcom: lpass-gfm-sm8250: remove unused gfm driver

 .../bindings/clock/qcom,aoncc-sm8250.yaml     |  61 ----
 .../bindings/clock/qcom,audiocc-sm8250.yaml   |  61 ----
 .../bindings/sound/qcom,lpass-wsa-macro.yaml  |   1 -
 drivers/clk/qcom/Kconfig                      |   7 -
 drivers/clk/qcom/Makefile                     |   1 -
 drivers/clk/qcom/lpass-gfm-sm8250.c           | 318 ------------------
 .../clock/qcom,sm8250-lpass-aoncc.h           |  11 -
 .../clock/qcom,sm8250-lpass-audiocc.h         |  13 -
 8 files changed, 473 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/qcom,aoncc-sm8250.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/qcom,audiocc-sm8250.yaml
 delete mode 100644 drivers/clk/qcom/lpass-gfm-sm8250.c
 delete mode 100644 include/dt-bindings/clock/qcom,sm8250-lpass-aoncc.h
 delete mode 100644 include/dt-bindings/clock/qcom,sm8250-lpass-audiocc.h

-- 
2.50.0


