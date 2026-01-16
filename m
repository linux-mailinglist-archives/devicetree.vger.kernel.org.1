Return-Path: <devicetree+bounces-256290-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DB5EBD389B7
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 00:21:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 73F9C30A27D6
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 23:21:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA43C315D51;
	Fri, 16 Jan 2026 23:21:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m710OcfS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DG9ADfLN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0C42FCBFC
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 23:21:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768605671; cv=none; b=hVKED7hfCBrkRjflIRZtCB58tfHVWcD7lxjPZyygTErJnU3ZcROEGk1XlbmglzDTeolsWG7HmvOp91OQEpCIN/4SAW05lUBtbWWHQFj95EoU6N3iQyrjYJSl3Y3SUH8BxsbIlLLQR886KhrAHLrz/j5i+mOrW4RH8x1TRhxq6RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768605671; c=relaxed/simple;
	bh=iQQKTJXh4jVViiDh1uBxCyJh5+dwGFy8mlbi+GK47q4=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=FI7IRu39qk+gd8ERfzmpKLo4qRyFvzxpTisT7DHHL5uFCR1+XZ2GUo+HHyP77H+zQJSOVjosyWdjfrb/Ttaudyq98GzS6cVl6jMi1/uawFeTMncNtKVsLuSOjHRLnFg4qV5q2is5h0I37PSoJ5hLW3NFOPxPBW6MD/4zCq6b1hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m710OcfS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DG9ADfLN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60GNDTVQ3384617
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 23:21:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=RT/RfM1KoDrJ7wIYu4iXct
	kP9u3nbJNWzJOBhFkshN4=; b=m710OcfSVBZz5EvSstbrvtLcCCdWD4/aOcn2WK
	I07Y59XrYAZUQuR+HQnB3gxvgCHDbpMY/mCAPc1ebfqqMJy0PKcai1VnlLy+vrx3
	NrOLdHMNJv2k6sPhjqIPL9+L9rgwJ6vwjtX5rM/4eP8lqmow7aOlYL25IweHVEwV
	tKAGIIM1kDIpoQuBxJu+mdIdcNg+R3DU4vjtz2wtwfIrpUOLoInvxoCF6X+6CO6A
	z/uB4EviuLq7rs04b23+m3VyFIV2t9JEPoIrAQylXfbuojFtlFZTD+LYHETj8PUQ
	gitFbYdYdIT2plNQ2DuEQWf6fprhuuRbMh3Wqn7oTcICJjGQ==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bqvj58aam-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 23:21:08 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-121b1cb8377so4573676c88.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 15:21:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768605668; x=1769210468; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RT/RfM1KoDrJ7wIYu4iXctkP9u3nbJNWzJOBhFkshN4=;
        b=DG9ADfLNM+xqI2MU8GUZSuXrXJ2BbOYEle5Kff5lVcFjXInFxFzgOuSCtuSTWjyowc
         hJyaYKjOY5jvuRAeUp+HiPxwUrK+Rm3n6S4Rpxc1H/TePPqnOuHfQhzFN0wOORo91YZu
         H4yxIwY4zNYj2XA8CPqBNuZf2pIfali0TzykClTgg8w076RGJ64Z5/PkCzSWYO7vc+0y
         66AbgBbFEXfylwCCqMuYUcrBL/CafuHzu/1Dq93T7uMRAI8kFXnkm3vtJhLHuaVnmUkL
         g9/WygqVBM2mGz0mF9nYbtY7QDVULfMh16NFCfawIiN3UgymgiIEGSLvHUFVnsSdeBVd
         SrqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768605668; x=1769210468;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RT/RfM1KoDrJ7wIYu4iXctkP9u3nbJNWzJOBhFkshN4=;
        b=YTRf7gjkuVTSyIm2326aBiigLgkOy6pI68Ag20jTfv0LEXjJ7G+zBTe6G++OcMjOvL
         AGfY5ebK+S/R1fKwhIy5PDTNpg1g2DGteypzXWNWdgnzF1wNlQRxZ9/PpJhl7eVn1D9V
         MclELvmYMyodeHborNdmNY2UmVhcgzculR1LOk8uUcWNaVC+f6rfUY2Cb+ZksdCb+M+f
         fEjSPqPpWIOAuvLD0vM6VPuvdWiQWUK10yrvQJilzTRQ4WuDDgRCQaaFZyLRXv13sDtO
         yQ7jEz6MaCFvx0PDCUaUBU+1We8JIF1O9n9c9wKQkU4me/ByJCPbPAoDSa8EjFkTKjnx
         KHag==
X-Forwarded-Encrypted: i=1; AJvYcCV6xGdFbFpIx2l/r/O15AAR1gfLK3UhB9HTjoDZaC0FEcP9EkFCUvOGADabXZKnaCTD/7YMapAxOcrQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwU2jdYQrPnQ3PenvTgxrCvZZnYeDhU1ZcalpMQ2dFM8jByXwc3
	koec0gjque+RC6mRHLcevtEtib0yvKqCZJOQeDdab/44jRZHSFCyA4onF+7hJALHO8nDDNIX0M2
	lzHZoyeT911up8qjjnTKuswzlh1syAKRCkZP6JBMIxWxkbSfFitjYFrzflHPog2Wu
X-Gm-Gg: AY/fxX4Zb0mFZqIs+IAV+jWmx0KJtFhQOnvyOvo8f270p+tEpPnrlo+JaPMY4+wjD5x
	K+vgTgApedHEYcQIAOR9v/mvck3EzNs7d+reAn2s1fJzPD718+ZoqpcnFYBsFAHohgfFTNwlyra
	+6JC+FtFM01rxhsIFAxBO9rJQceM1kq1qIDKj1mrfGXqGEllUoTxg1CFCTSyWOhYgccQ3TeOsJ/
	UEVeNS/QYcXfZGM1mhVwS1LC1QOdQzeukwMwQBlYFfUezV3Eu2sOXKluwUqkkQCdzKe/4GZNVgD
	LtkXno7K+eP09e8ACNm8ZRa0cvRkCAD38TbyfENInKs8US4Bf12yrcG7jCVdNpocny5a8n1QGJh
	6xq1lly0aFw8/n23Pac39YN6N95xOptWGc2EB5vKi/JJtraWi2iZEj2K/n3Ltpfw=
X-Received: by 2002:a05:7022:6084:b0:11e:528:4185 with SMTP id a92af1059eb24-1244a782eb1mr3946265c88.38.1768605667968;
        Fri, 16 Jan 2026 15:21:07 -0800 (PST)
X-Received: by 2002:a05:7022:6084:b0:11e:528:4185 with SMTP id a92af1059eb24-1244a782eb1mr3946241c88.38.1768605667432;
        Fri, 16 Jan 2026 15:21:07 -0800 (PST)
Received: from hu-eserrao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1244af10e21sm4611267c88.16.2026.01.16.15.21.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 15:21:06 -0800 (PST)
From: Elson Serrao <elson.serrao@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Souradeep Chowdhury <quic_schowdhu@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/9] Improve Qualcomm EUD driver and platform support
Date: Fri, 16 Jan 2026 15:20:57 -0800
Message-Id: <20260116232106.2234978-1-elson.serrao@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: ds5Jd4AFbzJGanLDOkSWagCjZmBtqizM
X-Authority-Analysis: v=2.4 cv=J7inLQnS c=1 sm=1 tr=0 ts=696ac7e5 cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=gxp_OhC1Z7o2wZrAEi8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=LnhvVPq8fVUA:10 a=Fk4IpSoW4aLDllm1B1p-:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: ds5Jd4AFbzJGanLDOkSWagCjZmBtqizM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDE3NSBTYWx0ZWRfX+uuYUgQSshAq
 ctdRBmpdp9Dx6MwWvIYZWuwlQiJTUQzQRCORdykdqdUTMKAfmANooqLuq5Num7ZVJABD9xKxPvt
 21zkM/FkKFUV8P/AnyvRWj7jq7utgqAC6ZFsa5pGEIgp61ZqewDEekHeyamuXAosxEJyg666wFG
 At9GU+eyjAwacQs2sB6KRTC3T6BhHdVUggltW48hEr2Osq7VG3P/R2Fo/lVBzLr9dhnoQEr8DxO
 nOhWRohTfqGT2tBXoI/6tbqjc0/x9nMC16yd38QfEjWMOabiUPMWIqcIch7J6JdXzHTaEKtCpzh
 4uN/aMfHVFpPOE0T6UK9m0cP9UzDhgF87cD3cpVXLR9d1Xcn5dThbcrgYXhJoOVglRNQQpyG8n9
 NvuQY5U4apUStxn9Vt2o4lYpU1M7WKdkuNRacRx7WXVrTYC78SGrJnC2OrHBnmmErdvGN5xc3i7
 ZfarehVr7sMhnr59Sxw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_08,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1011 spamscore=0 lowpriorityscore=0
 malwarescore=0 impostorscore=0 suspectscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601160175

The Embedded USB Debugger (EUD) is a High-Speed USB on-chip hub that
provides debug and trace capabilities on Qualcomm platforms. The current
EUD driver, however, lacks essential hardware resources such as PHY
references and support for multi-port configurations. This series
addresses those gaps and introduces the necessary device tree updates
to enable testing and validation of the enhanced functionality.

This work builds upon an earlier EUD driver submission:
https://lore.kernel.org/all/20240730222439.3469-1-quic_eserrao@quicinc.com/
and extends it with support for multi-port use cases and proper handling
of EUD operation across different USB roles.

The series has been validated on the Qualcomm Dragonwing Q6 platform
(RB3 Gen2 board), confirming successful OpenOCD connectivity to the EUD
interface. For detailed usage instructions, refer to Qualcomm’s Linux
kernel debugging guide:
https://docs.qualcomm.com/bundle/publicresource/topics/80-70020-12/debugging_linux_kernel.html#debug-using-openocd

Elson Serrao (9):
  dt-bindings: soc: qcom: eud: Restructure to model multi-path hardware
  usb: misc: qcom_eud: add sysfs attribute for port selection
  usb: misc: qcom_eud: add per-path High-Speed PHY control
  usb: misc: qcom_eud: add per-path role switch support
  usb: misc: qcom_eud: improve enable_store API
  usb: misc: qcom_eud: add host mode coordination
  usb: misc: qcom_eud: fix virtual attach/detach event handling
  arm64: dts: qcom: kodiak: Align EUD node with binding
  arm64: dts: qcom: qcs6490-rb3gen2: Enable EUD debug functionality

 Documentation/ABI/testing/sysfs-driver-eud    |  16 +
 .../bindings/soc/qcom/qcom,eud.yaml           |  97 +++--
 arch/arm64/boot/dts/qcom/kodiak.dtsi          |  33 +-
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts  |  20 +-
 drivers/usb/misc/qcom_eud.c                   | 365 +++++++++++++++++-
 5 files changed, 474 insertions(+), 57 deletions(-)

-- 
2.34.1


