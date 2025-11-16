Return-Path: <devicetree+bounces-239133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F17C61978
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 18:20:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B77A14EB444
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 17:17:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70E7930F921;
	Sun, 16 Nov 2025 17:17:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Aq5AqNd+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JKvtkBP+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C165F30EF67
	for <devicetree@vger.kernel.org>; Sun, 16 Nov 2025 17:17:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763313446; cv=none; b=DXf+Jjpj1UqviBj6/MLib6aN1XZKDTa4L4AUvU7WVJdadFTT2G9EcuzRQQZSnVKQrmo5ji+LSKDv3d7A4bhuUADgRNizSvJTpeJwEJkQedCI2vy+VBi7iE406UmXxQFvDl6leh2nSgZBMxW60XmWDjik2kKESmqiBUK5kI4Fdd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763313446; c=relaxed/simple;
	bh=jnszFHmKNM1a9F0cXTGUxupAHwO4OuJVmszVfLbqIIc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=MMeLTe2TeRiNDldO2HndygqxCUDoo4R8JC3yPMEz24BdaTI3uEvHPPInkZdi0cVLfe9iBUIrlEul1MiTUACq5tPQTLqz4PcwGzBXUZF+nK8j/l5Vq1bhDdYRXLpx3/B048UCOU/yBxU14bIRKffdjTkZbrYdCkRmvmNC+RtoAD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Aq5AqNd+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JKvtkBP+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AGFcJr91247241
	for <devicetree@vger.kernel.org>; Sun, 16 Nov 2025 17:17:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=1jl2ispOdO9La/5OQRAP02bv6sdNxLuaFxM
	tRQznV8w=; b=Aq5AqNd+SeupZPjpqfBrkc+yVyKJ7fHnv2qrq1sxEUlhQ+TsDtE
	Vu2UgzW1fPeiuljtcnXgTpBQpQvAhcHZWOI/GLJ9CtiTSyqY//BIrh7rSnkxK7vQ
	+ix5ADGgMDEh1TMn+WXAUVh+Bhdk/N1o+JzAubXCq7rtQ3sD8/8RsJRLdMeZZ1Tv
	53pyGcnh8CrKec81SGV0RULOp3dsZelSp5w2SRRNE+d7jQgUu+3MbosuyzWNjET9
	dHp3YUWnjsGzQtYQCM7C64F6BZCGgLeCN5ebsvcCGsHsOsyySPgjm+bJFjs+uFLH
	LaKNgWj6YNANQe+TMzAWnTJA8SbRvplPZWA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aejmytd28-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 16 Nov 2025 17:17:23 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-295952a4dd6so57485345ad.1
        for <devicetree@vger.kernel.org>; Sun, 16 Nov 2025 09:17:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763313443; x=1763918243; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1jl2ispOdO9La/5OQRAP02bv6sdNxLuaFxMtRQznV8w=;
        b=JKvtkBP+Mv6n2piaIw4SYiQE7scb/ahT4mGZOI7NufkJiitQP3uUfj2kS6yyBBsq3s
         LoL4n3Y4ZcqGqwK7RL3/Bhg+BZT8NOrlbXXVHrUWRi3UYbYZZ5cE9d0AYvLSeIaO3caM
         Hu60/126+elJioJeYXi0vOGqD6fy691yDun5ZsdoiQf2yfJ6S1ywVCWn/nu62163XWqU
         mOhxGo4CnD87CUySrKJDLfEZasMDfB9t3pAWVcXqBS5Jn6oaL3io3S/IBekZPqZIGKSm
         w0nnKH+yHC0ZYtsHUWcz7WGZQVbK4yZQhbHN+4TyS71wSaG8uixRrYMOxiDFLhHbLM4A
         mSRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763313443; x=1763918243;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1jl2ispOdO9La/5OQRAP02bv6sdNxLuaFxMtRQznV8w=;
        b=ROoWKOLWNOhtm0nmdLGVTPwQWR5T1J96JEopvdLeQYbr/5MTF8CX0OvlPn5DpHUba5
         symc3MxIgRvMgOEWbXBGFUlZQuxaqeea3ZjDLOaxJLl+KyVCxu/RD/uSTQKmt2nI9Bsh
         AOjluGzd4GF39EhoIYTTU/wQAs3qz7viTI3Ybo6TOk0npIbQbykLnAoSyfkWVCjaDfFg
         8W3vD9WjC8iqLjuW4NAodl892JAbofJ1n6psgc/vmThiGRtkPGvS0qGYV3+lyt+s57tm
         3kpishhfffDDufDkwC4LOM2rvVOyrdYyhAfXudnpTmPgrR/zxF1yEXPiOh3YrGD6yQyx
         8Mtw==
X-Forwarded-Encrypted: i=1; AJvYcCXtcrOf2+dOvHqdDRDvfhpxFB/SOzLpIQEH8awaA2HY42bHaf7qWvPJe/DvuBRCOhL+f4DoqiZkaC1P@vger.kernel.org
X-Gm-Message-State: AOJu0YzG/SGFqcD2e2VORRJgctP/yP1kmEOzOPYoOgoq95Xx7MVtV0kD
	KieF6RsN9xCjFeKlEJbkRKl7Tihr8Qo+vzt54+L5GFkqlQyMNQZ6HUQ19VAVkDRG839L2JS7LEt
	Zq3/32ykJ+nJv1oNRDO6X6MbkBtaAnQBn59xGgOM50BshUxpIXpwnb3jWlm4jkfh0
X-Gm-Gg: ASbGncsNV1KIB4w+cYA2I4zZYG8bsGvE46UnvfccMx/hMwphOvr2ZfYMuVLs1XICeEt
	5H2vBUoQIFpz8nDYOjdVh905d7F7+e7+B8iyV/nx2J77v+HBlKQLBTCHocyBiT0auuk16PY+Md+
	sYRsHICt3iO0EuumZqhcu52iC0HvxMW01cG4YT/96Oi7TyFMsujBu5loLkv2BV2gZodW9OyGiP3
	9/ghMqX4ZRRseVi7eD3nGrc7z73A06HGgZKZyzPQaSceMdpBmwfBfIef7vHoxkaMipQAXkI7VXI
	gGCQnJY2bY/LyrHSLmnL9Mb+t3WFYD4MlKLiKDXbhcD3yXvGDjuMAfq52lMwVSQuqxD4A8Jbpnn
	OIb1ZU3rtswEbzD8qsO1C80lRvOvnKy2oF48=
X-Received: by 2002:a17:903:37d0:b0:295:55fc:67a0 with SMTP id d9443c01a7336-2985a4b04admr154189975ad.2.1763313443313;
        Sun, 16 Nov 2025 09:17:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHk8MyWeaDy5xJlFGfVzLFXZP9K3vQI78np6fV/wBn7qbFqtjl6F8oXUYRft86A2WLaOraRDA==
X-Received: by 2002:a17:903:37d0:b0:295:55fc:67a0 with SMTP id d9443c01a7336-2985a4b04admr154189785ad.2.1763313442831;
        Sun, 16 Nov 2025 09:17:22 -0800 (PST)
Received: from hu-mohs-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2b1055sm114415105ad.59.2025.11.16.09.17.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Nov 2025 09:17:21 -0800 (PST)
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@oss.qualcomm.com, ajay.nandam@oss.qualcomm.com,
        ravi.hothi@oss.qualcomm.com
Subject: [PATCH v1 0/2] pinctrl: qcom: Add SA8775P lpass-lpi
Date: Sun, 16 Nov 2025 22:46:54 +0530
Message-Id: <20251116171656.3105461-1-mohammad.rafi.shaik@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE2MDE0MyBTYWx0ZWRfX96CQMN4I6szh
 K/SCMmBxhxWTKqdAj8PElpeH6qfwnYF+kSbipNA4BiAkMB0WcNKSEI5CXSpm2ENTqtFAoFniLdy
 aYBWaHLY8PlMxgQpJm1/GmNk9D6wiBbwgRraf7p1/iVXB3/Uzz+1jhijSS4WRBIfx3+QY8gwsaH
 dmny6CSzZPXX9O8vW6roVaSalV+vfp0G+lpCa9UGkTsD7nTg9muLHr3lGDPxkQZEaYAbmnOMwf5
 xfoKRCaSNjvch8QMQbcL/zkuyFP5OZO4H25CCVgTA/QmpUu1OwGAvIodVMRbFNs7f15AvyJia+n
 G0OC7YCeGyVeJQ9xQjCWeKp3nC31anSVQ2yD2lNfNz+oUtn9Uxu1bUzTxQqAfVbfS9aF4rpvA5B
 r43qgBKDOTHnVNTJc4LmPoxE2nt13Q==
X-Authority-Analysis: v=2.4 cv=BPK+bVQG c=1 sm=1 tr=0 ts=691a0723 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=lAFZS77bQIXJJI-DYKkA:9 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: B-n-BpujSgSBUR1T7kSF5k4IzBtEh6PG
X-Proofpoint-GUID: B-n-BpujSgSBUR1T7kSF5k4IzBtEh6PG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-16_06,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 suspectscore=0 phishscore=0
 malwarescore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511160143

Add pin control support for Low Power Audio SubSystem (LPASS)
of Qualcomm SA8775P SoC.

Mohammad Rafi Shaik (2):
  dt-bindings: pinctrl: qcom,sa8775p-lpass-lpi-pinctrl: Add SA8775P
    LPASS pinctrl
  pinctrl: qcom: sa8775p-lpass-lpi: Add SA8775P LPASS pinctrl

 .../qcom,sa8775p-lpass-lpi-pinctrl.yaml       | 106 +++++++++
 drivers/pinctrl/qcom/Kconfig                  |  10 +
 drivers/pinctrl/qcom/Makefile                 |   1 +
 .../pinctrl/qcom/pinctrl-sa8775p-lpass-lpi.c  | 216 ++++++++++++++++++
 4 files changed, 333 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,sa8775p-lpass-lpi-pinctrl.yaml
 create mode 100644 drivers/pinctrl/qcom/pinctrl-sa8775p-lpass-lpi.c


base-commit: 9823120909776bbca58a3c55ef1f27d49283c1f3
-- 
2.34.1


