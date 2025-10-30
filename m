Return-Path: <devicetree+bounces-233171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A1486C1FBD0
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 12:12:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 666421A26417
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 11:10:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F5FF33B97B;
	Thu, 30 Oct 2025 11:09:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="L0pHTEXu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FPvRDjsX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9503C33B94B
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:09:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761822580; cv=none; b=Y9B09lCj3ztzRfHr9jLdcRl1Gmj07l/sIzQROfeI2+UruUqo6ihHgX1hqi92yoXQxOVN/bnSREZ8UxfGu4EAK5OBskeJdMzbwtyjTwNGkaQC9KRWu+qMTmWfN09Z8mJKjyGuGMldkMNh56V9x+wuYJQyAm00hLFmofAUlMgTbwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761822580; c=relaxed/simple;
	bh=bTF/HTJGitlCWkiCQBfUce6uEKcUNHO5/aywbfeUeGM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=kC5k/xAKU0w5xtv9EbREaHGSVIz7wu0uwjaBWMQ2PBw7TlmZTNIimwzTqpSMG69LtC7P8o/7xn9AG8HYOqYmoTlMM9YH/cT4u3JdyEPu6kTyxoxd9TzMfYu13zZLvcs15kAwg2K7PUJZrC4Qb0cDtx7hr3dMXUi87lqDWfpWXtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=L0pHTEXu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FPvRDjsX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59U9PMAb3509330
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:09:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=ZH115Y6hMMe7/X3DCQWnOO
	KT6D/4xCNNKZ88coPhSO8=; b=L0pHTEXu6DbfaUXu8yCX71x1NoVEiv51N9n8gO
	pY/rA31xwHQ3yChNjxEKqQHrQGVeGlnqPIKvPVnEnfX9Y2b+ndrlgyU7+XyrREZD
	7QN0Dv1yFGKSrbS1gvd5bIDNbOqAFdOEireAWNG4WA3iBgPfgv2q8cDqss6v6fY+
	tV7oxqAwQPT28TMhNa4sM+dsDRj9xIQKiQceQ8uu+mGUsSPFIelKK+wyBenL6v3A
	fDBSoDpu4cmJ+wI7/dguM0KGQ3mBMZbdeqy+ovSygNNfEXE/8yZlnZ7ccJRLgI4o
	2/3FQ1eHMumwhfoIt+TIHg9Xjemq/mIcXi8SxI/0ZI9LFzEA==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a45cdga1q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:09:37 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b8f8e1f1044so974759a12.0
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 04:09:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761822577; x=1762427377; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZH115Y6hMMe7/X3DCQWnOOKT6D/4xCNNKZ88coPhSO8=;
        b=FPvRDjsXs8ASZZ462KcNM7z1Pzr97E+NBnsfz3um0NUG3+bBc7W7NRCzgFei5e25C8
         sC4sT+7cPLiJiDqsuP+Q+jfdRygBsf84SfpBH5mbwSqDEbgeCau7zvC/RD9ykfB54UY0
         P1j76NAWT9bb05kUIrZRO6fyY1j67k7mi20az3eb0gtPsgHYFCtWHr318xBhd099r72y
         9O42m+esTuHNjPbg21Rdg1/jNsIVUXmcAHurTMc471IL0MhHEpxpVZa9rcPCGk4P4twj
         9tDAPOS+1BMliUudAygibiMNRl7aOKwd6RQBnAyZ5EdujDfxDDZfhhqlBJN+ulk2HdYs
         nkZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761822577; x=1762427377;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZH115Y6hMMe7/X3DCQWnOOKT6D/4xCNNKZ88coPhSO8=;
        b=DxzVF58pNRuOXTF43rKMEkmm//AvpJe5bIecKGL8k397glCYFdR+t0yUqUZW80qu2D
         QtoIDnXw2x8RoV4OpgOXQq/FEzQIXsFZKkJvwm7hCrmLcfVyDgPW6eU72nkaSjqqjb7J
         U/a3NIgXsc2JBGrjw2s5iYOXxQ8fvWqO7nc20Vt8Fp3hyuhPx+aL7nH2k0vFr+e3vEOT
         fxXzISdC7SC3JAGO/zX6Aqsq1XXKxzqNhzf5M2PMEyicOCaTlk6RXfgMYIRkgOxGfcSL
         10ulxL5ycF4v0bGFRIyyXdp+Pt2UZyMgpdvbJNnkdwU7k39pDa3oSNKygPaPXLTzBAPM
         2O8A==
X-Forwarded-Encrypted: i=1; AJvYcCXOlI55nQnpJ1KO5jNKpNXwnso0iIHgOOcVIHqBzYpQGTuofXxODNu5SGMl8/x0brY32vlTS4OFdauL@vger.kernel.org
X-Gm-Message-State: AOJu0YwPGyCUxjcxcyObD91xlGuwkK2woEYmVwvPTifnWUrT3PtR7tPD
	11XiLgqFC86w8DTitet3phi/YBUFVMwN1EtfR/Q0biiy9ibOLpt6MVgTGSQtVre3sHB//Mai+wn
	bf9dhOssWcu1Hlzw4cp5gwxxIs3MdVmHH4g+sZxQqV/YKp3AKuTrdtS+MJb9iVzz0
X-Gm-Gg: ASbGncvdgQ4ladP9p9blRsNaOAqH92SJqv5lpLgNJ6R4ljt+37noi7guGyO/NQxaOSw
	OSLnESbx0uTilhv+7I8XdKyIltOjo8yM3S25uhpuXcjLeYh65thSQLmHpN9yQbS/6rpAXanYUrb
	k3IJGUmvk+6Jy2XYqbvj9kbCJeJ3R7F20KqNZq4d0OPsxm74MO/lvSvSQrXlhdWTRLR90bmu4c0
	Gej/ABDaiQaU8RWzWssnxBZmSE/ziTccWSjmFb4sSvvTdOhiAWkCC1gz9otEM6Q9QLWYlPKn5yb
	XjzfQWpa/wnqrCEylGrVN2IRuwBFM70cMmVqwJ89QOmWjWrzw2CvTQlD/UfhsXerLB5Et5emium
	FENOHY47vHa0ZTyI55KcxrxM=
X-Received: by 2002:a05:6a20:2451:b0:343:70a2:bca9 with SMTP id adf61e73a8af0-34787577cacmr3578906637.53.1761822577068;
        Thu, 30 Oct 2025 04:09:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHatE8uROAdnCWiw8m3mzuGzWhz3CpHUlu9lY8QggHRB5tUmuEVy8KbUaCVgmVdYIa95m2z6A==
X-Received: by 2002:a05:6a20:2451:b0:343:70a2:bca9 with SMTP id adf61e73a8af0-34787577cacmr3578880637.53.1761822576558;
        Thu, 30 Oct 2025 04:09:36 -0700 (PDT)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-340509727fesm2262839a91.4.2025.10.30.04.09.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 04:09:36 -0700 (PDT)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Subject: [PATCH v2 0/6] Add support for Clock controllers for Kaanapali
Date: Thu, 30 Oct 2025 16:39:03 +0530
Message-Id: <20251030-gcc_kaanapali-v2-v2-0-a774a587af6f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAE9HA2kC/x3MQQqAIBBA0avErBN0QKKuEhGDjjUUJgoRhHdPW
 r7F/y8UzsIFpu6FzLcUuWID9h24neLGSnwzoEZrNA5qc249iCIlOkXdqEZtPAfNhixCy1LmIM+
 /nJdaPxM5/s1iAAAA
X-Change-ID: 20251027-gcc_kaanapali-v2-901def0e1a52
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, jingyi.wang@oss.qualcomm.com
Cc: aiqun.yu@oss.qualcomm.com, Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-GUID: gYIF63WlZvW_O9oZLew4kCzxeR0RzuMa
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDA5MCBTYWx0ZWRfX4mIHlJE4IWjN
 elk6hKKKOm09BIsXgPU5Ihvs7GrQWbIl4/j0xViQwgdmd2WGJjH/XYG514AH6XsUDJuGzUpvbYb
 Ks6BZ31HRTwdWILBlJb/+pKBVwLkEEl6kEmgX9WIu+M8Pe9soNN0uH0k6Cu2iIz8DYm2qRnFJtL
 9iCIG1R2k3iA8LBR7quxrkSOXT81n9TXzETiL95chkkbuHFB4/9BXFELwL43hncRo5TD4k8RZaN
 E7wppVUQ2bqhquBtDIizD8x34oWUnvX3ecRyzNZd7axcJA8f/0lKtQXgixqOA5Nu7r5FQlvR43C
 vurDlBLkTob7aoOkMwNsKUkWVTKMqC28UGe3Sa8yppxg/5Nxo9ZcygiMx37As3BoY5iMhxfhg5n
 E5xvOchbmf15Synlz3bZFRGZQPbT7g==
X-Proofpoint-ORIG-GUID: gYIF63WlZvW_O9oZLew4kCzxeR0RzuMa
X-Authority-Analysis: v=2.4 cv=ItUTsb/g c=1 sm=1 tr=0 ts=69034771 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=pU5keNj5C49EkLXuPzUA:9 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_03,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 suspectscore=0 spamscore=0 lowpriorityscore=0
 bulkscore=0 phishscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510300090

Add support for Global clock controller(GCC), TCSR and the RPMH clock
controller for the Qualcomm Kaanapali SoC.

Kaanapali(Snapdragon SoC from Qualcomm):
https://www.qualcomm.com/products/mobile/snapdragon/smartphones/snapdragon-8-series-mobile-platforms/snapdragon-8-elite-gen-5

Changes in v2:
  - Update the commit message for all dt-bindings to incorporate
    "SoC/platform" inplace of drivers [Krzysztof]
  - Add RB tag from [Krzysztof] for dt-bindings
  - Split the TCSRCC to a new driver instead of reusing the SM8750
    driver with offset updates [Dmitry]
  - Update the new RPMH clocks to use 'clkN' convention [Dmitry]
  - Add RB tag from [Dmitry] for GCC
  - This series does not have any strict PLL code dependencies [Bjorn], thus
    drop them and will be added in the Multimedia clock controller
    series. Drop the following patches.
	- Update the PLL support for cal_l
	- Add support for controlling Pongo EKO_T PLL
	- Add support for controlling Rivian PLL
  - Link to v1: https://lore.kernel.org/lkml/20250924-knp-clk-v1-0-29b02b818782@oss.qualcomm.com/

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
Taniya Das (6):
      dt-bindings: clock: qcom-rpmhcc: Add RPMHCC for Kaanapali
      dt-bindings: clock: qcom: Document the Kaanapali TCSR Clock Controller
      dt-bindings: clock: qcom: Add Kaanapali Global clock controller
      clk: qcom: rpmh: Add support for Kaanapali rpmh clocks
      clk: qcom: Add TCSR clock driver for Kaanapali
      clk: qcom: Add support for Global clock controller on Kaanapali

 .../devicetree/bindings/clock/qcom,rpmhcc.yaml     |    1 +
 .../bindings/clock/qcom,sm8550-tcsr.yaml           |    1 +
 .../devicetree/bindings/clock/qcom,sm8750-gcc.yaml |    8 +-
 drivers/clk/qcom/Kconfig                           |   17 +
 drivers/clk/qcom/Makefile                          |    2 +
 drivers/clk/qcom/clk-rpmh.c                        |   42 +
 drivers/clk/qcom/gcc-kaanapali.c                   | 3541 ++++++++++++++++++++
 drivers/clk/qcom/tcsrcc-kaanapali.c                |  141 +
 include/dt-bindings/clock/qcom,kaanapali-gcc.h     |  241 ++
 9 files changed, 3992 insertions(+), 2 deletions(-)
---
base-commit: 8fec172c82c2b5f6f8e47ab837c1dc91ee3d1b87
change-id: 20251027-gcc_kaanapali-v2-901def0e1a52

Best regards,
-- 
Taniya Das <taniya.das@oss.qualcomm.com>


