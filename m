Return-Path: <devicetree+bounces-237416-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1576BC50E5A
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 08:21:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B7DCA3A9F9E
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 07:12:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 829BC296BCC;
	Wed, 12 Nov 2025 07:12:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gvTDzYVg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CUzXQJqh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98773285C96
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 07:12:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762931568; cv=none; b=FjIg74UOmt9pi/fZzkSV3YufdJtiltqMK8sKVNlqtxxOH/GNzW16q2yUSGJNNd3QDNZRQfqUhuDXw0Xus7uhwFRqv/UIFH4tK6peiv+B5tsYBSdsMD4A1MZoPIFzV8dqfalpoxcjGqhsaw5IDZbG/G3yhKLKNgQxOIXSaJ7SVVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762931568; c=relaxed/simple;
	bh=nm2Ff6jo8I+QGuD3PQnqbmzX4vD+x9n9obxne1ccimM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=iKxqDSvDHDj0GZmM3w7t1b3A8l76Tqq1tUOmGQuGgJj8/EwI9mfYIGlVStp+6Y/3Z0IEWKNvvwpYP5+ff+svitggmKzbSU5ILSvRmXjJomVKH37oW6gHwS0l7qo7q1K6aVgilCIO0cFiDWAJ8nupwZzTVEe/732cFHfb5WQqb0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gvTDzYVg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CUzXQJqh; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ABN3LqA3921752
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 07:12:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=cTUtPl+F/Wsa2a4a3fwMU2pSucYtfz3vonO
	DrbZBpqI=; b=gvTDzYVgC58SDEn3SJOa90vgLPsdtqItCt5LsSLBFFGE+xxceAK
	ZaRjUVGVY8ceh0t6ciZG6gORwB/3QTpkOd1mA20AIgAi0Wu/pdWmws+QoUbFOmNT
	V3j5z6sR46pMtRozoA1nXnQmxku/83fpghn6DnIDrA17ef0bXJNrWUQf5KiSaBdm
	W+/GMMHgECRQnUdBiYLnl60FUIIzk2N/L83oCHpiE4hCZg/u/Mqw6n/5vDhE1unk
	mHDNZ25eXZcYgSwxXcaE3kScdjlRW2aFSNv600VQp5Hm3xX6j+J03ZmC8XnkGKna
	cwYPYRNEPGn63D6Stp/TFY8hkyQdSqfP2Qw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acefus4rr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 07:12:44 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7b0007167e5so181861b3a.3
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 23:12:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762931564; x=1763536364; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cTUtPl+F/Wsa2a4a3fwMU2pSucYtfz3vonODrbZBpqI=;
        b=CUzXQJqhfH53ZFHB0PLdHMZbrY1ckYdAbEKd+EEWGCiYW+KVH19lSUpRTriUUn8GCE
         nEx8rc/Vc81K/tKzKSxt1N0P/VHJosuKIfr7JMAhf4HZHKUL+RxijGyt/yp+yckoMNJm
         n8hVczhdc/bgxjBvWgSZWg4lWbx1mqFsC49K9omrw0nQV9aiYsjjn/vqaWTYxVBBBnSb
         5YoTuyL4rMKE/C9LYJbbxfeIaJ8LomcZTQhUhQSly0dOGUtlm77CSi2mcU33/729IWpT
         GT56rK5y4o6W510qzZnenxUhoDGw3CRxplVadGGaZhVnjXMgE7Wt+Z6K5apbI9uiDWk+
         3S7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762931564; x=1763536364;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cTUtPl+F/Wsa2a4a3fwMU2pSucYtfz3vonODrbZBpqI=;
        b=apk32MtYcqu7v5wqxL0wY0T6LKiA3u9ayR77uQecdhVNnZhH05gCFXYvIPDEZ2YKsm
         8RccFnO3nBuE4L0lgk3JG5cjxa9TgaysqGjt3QbyjM8nYLs5UX9Ds+YkZ1J0xSO2M0IJ
         W7+ek6lJMXlWuDsPbATgh7y+JgKtqofTxoN1r6CP9OnkUfxrgss/Zw+fOfeOq72TVHOE
         /oaxBQqo2U2I425FChhM+egpPEn5H98GBs3fRFdchNn2oeOjHcNTWnh5+Dpy858cmj29
         3lxscPAsPugprYG4s9sz1mxpf2xDQDBSMxzyR0vqxzKzp3Jbo4uF2zhkwVxobsckZ64I
         7aDg==
X-Forwarded-Encrypted: i=1; AJvYcCXSBWV1QWzAW/rG0I56lxcTarTb6SAddZGkgo9RzqQez856ibEJ+YoyFxEX1BSXaklrn1wyzS9uSIIn@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8HUZVF2IhgfcAVvJd7AaBXp9XlJzR5cssLP2cLyt+tkFf0SjS
	NT8IscSiKIM7/yFukL/R5JSBi0vLdhosAN8DbJm5CLRvMOncR+BGNbk2OP03SiRC3/pq3tjUNr/
	I6UzGiRvYOsks9tvzzG7k360Q8BW+45SOiL5ASq5JWMPR7MJP0no7R+hareJXCRA=
X-Gm-Gg: ASbGncscED8jrQ4CRnca+ZxG4oC9uKaAyP0o9kSP2cBj+XwTp7nY59/d/JvIKSYdwL5
	VSUBKJoXgCO1GkbogLSHsC6eNHyfITDHBHom3Jd6tSaLTjV5y2NHcK1QACvhqFT/F82+/EHaXo+
	8VKzLKOo2dupw7u2wQnqUu6lo0WBI+NvFdOvG43Op6li8h3aCX6pTATIf1HzGDHIHWDFw9CiAAl
	WxG6zMW6AhG5uekdMkchJlCgtmVKtk4V1Az8z18jvI4PFFh8+Av42PXwO3X+Mh8Mvb3snY7LWuR
	saQIGyQI12Ac3i3gwc2fYlKDNVaiUkLbp10122BELVCXkFYkEdE+rc/WCHGSODDlWXySmW+TkJj
	0RzJMqLkkfZJf1Lr+cnDXjuYMl+HU1g==
X-Received: by 2002:a05:6a00:3e21:b0:7a2:861d:bfb with SMTP id d2e1a72fcca58-7b7a59978c8mr1337967b3a.7.1762931563641;
        Tue, 11 Nov 2025 23:12:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE8/WVzXtZC81bsT/lVupwJpWgLlYk4J1uvkWrhn84yol6tDqvbdYjpuCd7yrTjhx/IcgUuVQ==
X-Received: by 2002:a05:6a00:3e21:b0:7a2:861d:bfb with SMTP id d2e1a72fcca58-7b7a59978c8mr1337946b3a.7.1762931563095;
        Tue, 11 Nov 2025 23:12:43 -0800 (PST)
Received: from hu-sartgarg-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b0c9632e22sm17949037b3a.8.2025.11.11.23.12.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 23:12:42 -0800 (PST)
From: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_nguyenb@quicinc.com,
        quic_rampraka@quicinc.com, quic_pragalla@quicinc.com,
        quic_sayalil@quicinc.com, quic_nitirawa@quicinc.com,
        quic_bhaskarv@quicinc.com, kernel@oss.qualcomm.com,
        Sarthak Garg <sarthak.garg@oss.qualcomm.com>
Subject: [PATCH V5 0/3] Add SD Card support for sm8750 SoC and boards
Date: Wed, 12 Nov 2025 12:42:31 +0530
Message-Id: <20251112071234.2570251-1-sarthak.garg@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 4PMYtUiOjEMLzuwNRg5mWWfG9uRx5BQU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEyMDA1NiBTYWx0ZWRfX24tYS0L41XLY
 3/Mg3l3sIftS7k5q4uQshbE68P2wtsymv+9yv+YXeQH1ypBfJtgVBh9qqFDz9/Bjfwz6ivb9emF
 nTiMsN08jCO5lLKVkRKbxergQ/Mq/9oGI3eUpqC36iE6Octd2FV5TLt2NmBZY3+2Pd754u2h1hY
 WycQFnJVp7IzM6323v15p8DUfm8y6/lJBBc+XIBsXAAOV/Z3Y+uDRhryzuFbhHTQPxeKt3tAOWo
 8+xWtfstK4HQbI9fYCw1n5pn+9tZLExWXiZoPUQmOfH934Zlrt0yjeQwvWDMZeyC7CeJ5y0Ko88
 a7zna3mLEfhPOzTSSMObHnUjlG4876eGExJwqUemra7c/oXk+hjPcBEuVTLqa+mXR+wSSGGT4HK
 Dqbp2KTBVJvxXVa9ukaPZGwuNfWfRg==
X-Proofpoint-ORIG-GUID: 4PMYtUiOjEMLzuwNRg5mWWfG9uRx5BQU
X-Authority-Analysis: v=2.4 cv=H8HWAuYi c=1 sm=1 tr=0 ts=6914336c cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=rfq7y1KLf-xer_pzc54A:9 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_02,2025-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 priorityscore=1501 spamscore=0 bulkscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511120056

Add SD Card support for sm8750 SoC, including MTP and QRD boards.

- Changed from v4
    - As suggested by Konrad Dybcio sort nodes with a unit address
      (numbers after @) by that register address.

- Changed from v3
    - As suggested by Krzysztof Kozlowski refactor the code to follow
      DTS coding style and use hex everywhere in reg.

- Changed from v2
    - As suggested by Abel Vesa move the GPIO configuration for SD card
      detection (specifically the pin settings for gpio55) from the
      SoC-level device tree (sm8750.dtsi) to the board-specific device
      tree files.

- Changed from v1
    - As suggested by Konrad Dybcio the patch into separate commits per
      board and did formatting improvements (e.g. aligning < symbols,
      placing each item on a new line).
    - Addressed Konrad Dybcio comment to use SVS_L1 for opp-202000000.

Sarthak Garg (3):
  arm64: dts: qcom: sm8750: Add SDC2 nodes for sm8750 soc
  arm64: dts: qcom: sm8750-mtp: Add SDC2 node for sm8750 mtp board
  arm64: dts: qcom: sm8750-qrd: Add SDC2 node for sm8750 qrd board

 arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 23 +++++++++++
 arch/arm64/boot/dts/qcom/sm8750-qrd.dts | 23 +++++++++++
 arch/arm64/boot/dts/qcom/sm8750.dtsi    | 54 +++++++++++++++++++++++++
 3 files changed, 100 insertions(+)

-- 
2.34.1


