Return-Path: <devicetree+bounces-230230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A12C00BB6
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 13:30:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2B24819C59E3
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 11:31:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FE4B30E84E;
	Thu, 23 Oct 2025 11:30:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hhq5tgn0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB60A30DD2C
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 11:30:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761219002; cv=none; b=UXdcBudE8d2OiZ4UtPpxWO16KeoJ98sBPdDv/VNQQft7Bn1KK1nOGUQpudMl3p1py2QMlXtENE6PTXrV+gy7rACq/KwL4qjxSN9KOUG4h/YJn9ZPbaxiSyw6m5mIwTntM2/gDK5BmF2dlsswjr1HqLXwJxN3YM7qHngh6W8vLbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761219002; c=relaxed/simple;
	bh=hd0CoMo58CAUzr+VqJ+RAeH8nis97OD0oQjfGlLV2Lk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=E2GZZIIC8Z5W6hGHL3AdQ5arNEQtbdkOiJXQdPgGy5D8GdqfzJ9TblysJAn4BIB914KScHpVGrkb3QRiW6K5Fi44bvwrJ9VIQQ2D9TYavMzpVK7CizFzaE5zx1KMOLVd9F2P8cs+JpikIixhG19bU05B/K3fncYzSK43h+ridc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hhq5tgn0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59N6swAG007476
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 11:30:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=fR2JDFO0Mtu
	aMMk5vsO3PZEznusuCLxw5SSeKXZkFr0=; b=hhq5tgn0qZnnv4cXLZHGCmYzHg+
	+b+OgLayWgJSb7LgMITUGIWgHmV8MvxU3+pBC/FzFolZxvX34HQtK3mknRYPLAAY
	oYDQOfT7GjzZutZyv09Waap5meyrt67wc/qobDkoLT65fgmhfyJlDmo3tNp2HJ2Y
	QCDxCWiGcwo/UmG1ggmzhDMdRw1HUpxWVZlUR1d+KLzc3rS+u/SS/QUzMdy4K1/D
	eWdcT5dlc04lRyVly7dn1M97mLqP9bnhwdSMVO9M5aiINQ9dOKebT5fzZ6ySBLxu
	TTtV9QeiLgxMsQqfLpcyZL1S2u0ID2PNrtEVnSthWo1vSN5eooNI6q/aFcA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v34488x3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 11:30:00 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-293060b5065so1981915ad.0
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:29:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761218999; x=1761823799;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fR2JDFO0MtuaMMk5vsO3PZEznusuCLxw5SSeKXZkFr0=;
        b=oMHe56AEwiJ2Bbjtei95W/lYx3qlhtIO4EeCkJxBcRhKKzN9yPvs1FwBfAZhcaxKM6
         D0S5Cj1hjFhK0JpLpZpdXuZ0+lR4XsUGlk/kLXCoGVZI3VV9ji608sDHSj/R8Z7Gmsq+
         hG47uIuqiYAU061VpaLsnkgEAdJM1o+S3PP5T3qbI7yPkE5wkyuVFJxNdwygkwRNV5zk
         3WIVEnoXQ+WQxp89OTNspMnVOa6nlaeiQhLZIC3k/USjems/0mifXJp/Adj3lmQA8Aw4
         wuNfQIhW9n79Wb8FymvJj00ctR9/b+/yeqUj/ARPnTpjOJgG1qThD0zqNlLZSbhC0L6K
         R/9Q==
X-Forwarded-Encrypted: i=1; AJvYcCXyJbfdj8zIThT4m2MpYQmPIZcZc9ZtEa5dEBUOdPkPzG5gmt7mUTpGe9A2LrQ5CFlBrW5BgQYQXm4r@vger.kernel.org
X-Gm-Message-State: AOJu0YzjGLeuLj2lcJt1mTGhjjGgF373goNlp+Ja1qEKSJ2UbM6buC3y
	5IQ6O5P90pbPkfsYit7EpA9XalwV0GzxuMyXDuqIOgOe6V4q9vyN/R3tRIoX64WhhswWs4+vy3X
	Al8TVBGTtBqDt2tUdwgt3ubFNSwCfpOumBWh4oRUYh4q4QcQuJu7jewHotPoOljk=
X-Gm-Gg: ASbGncv7msQEfQGUzPqUnasbI3aO5fDgfWURoz7wAYgZ8ZwFuFSOnyp9GbkmnmD9Ckh
	DHRonJF/WVYC/GAABQxOVVRDWsobbrMxZr4OJaFOfTAQSvN8tqYbG84ko7xkpCPsAw+B8bkgzGi
	GhO9iBzW1nHrn7Cvr777NmpkGCHUuHtMUA1NXwwhBK+XbiGJP0XUHjmDqn7M/VCwUFFL2VO23vb
	HsRxxLhVirq9xpurOTmUom/3gQylZUOsXJQ2KXHJ8TyfU0e5hoeitl2tYoQIZERpvZpU8egDyWO
	HKWIQmXMKa4ExhITErpjpjXiEEPyRDUdQQaoaX7Gt1yVFASf/TiDFA+ALz6JCfB8d/MiXLDjcE7
	TrJZsNKIQnLKgOkjVdLwZuDDZxr24mA==
X-Received: by 2002:a17:903:1746:b0:25c:9c28:b425 with SMTP id d9443c01a7336-292d3fe2f79mr65295055ad.11.1761218999177;
        Thu, 23 Oct 2025 04:29:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFuXQI9VRXhnQMSIZ4xgGvAhDSywgxIFMeOu/zYuaXfGqNrmw1i1qi4dhUipSl7+nHiLMY6pw==
X-Received: by 2002:a17:903:1746:b0:25c:9c28:b425 with SMTP id d9443c01a7336-292d3fe2f79mr65294885ad.11.1761218998716;
        Thu, 23 Oct 2025 04:29:58 -0700 (PDT)
Received: from hu-sartgarg-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2946e1231b0sm20438815ad.97.2025.10.23.04.29.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 04:29:57 -0700 (PDT)
From: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        quic_nguyenb@quicinc.com, quic_rampraka@quicinc.com,
        quic_pragalla@quicinc.com, quic_sayalil@quicinc.com,
        quic_nitirawa@quicinc.com, quic_bhaskarv@quicinc.com,
        kernel@oss.qualcomm.com, Sarthak Garg <sarthak.garg@oss.qualcomm.com>
Subject: [PATCH V2 3/4] arm64: dts: qcom: sm8750-mtp: Add SDC2 node for sm8750 mtp board
Date: Thu, 23 Oct 2025 16:59:23 +0530
Message-Id: <20251023112924.1073811-4-sarthak.garg@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251023112924.1073811-1-sarthak.garg@oss.qualcomm.com>
References: <20251023112924.1073811-1-sarthak.garg@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: syuNmRwp31bLzjQba91Ae4zXZ0_UWrsB
X-Proofpoint-ORIG-GUID: syuNmRwp31bLzjQba91Ae4zXZ0_UWrsB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMyBTYWx0ZWRfX3wDGxZeMKliu
 KhhdDXYDTYHPdNMr7fbSlbJin+oGIvNzPorF/HahgeoWW5vzhkmi8q+DmVJ+H78Ytmmd7MYoPAD
 Y78miCdjpnzEU0N3vhxt2bBHnwqNzTyA0I1VGKJZb8DaFztl0sXyGSqFmyXE9VVuNRYPuwJDcH2
 p0TnQOcW8QrrG7tSSi8Wa9fwRnZYOhRS4356H/BMqAlN9TgUrrYGkDKBbkVGFYsA8GFxDflGf5G
 9NO0tRjGKkOxGoOLvAQiDrnFgNo9rn+0iBts19+oceNDTXM3EnzfrqGEOVNW9rJ8PcO0fbvIqP4
 GDvyyGFWysDm3j/CetzlUiF9+Kz275yghTEnbr+FNC05TxmET2lfZStW9oj7QU2h+FTJfcXPIVA
 00Yagj9HF4rhq3+83wHQe8+Bz2iAnw==
X-Authority-Analysis: v=2.4 cv=E/vAZKdl c=1 sm=1 tr=0 ts=68fa11b8 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=QH13294MLfywbrI7NfsA:9 a=zgiPjhLxNE0A:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180023

Enable SD Card host controller for sm8750 mtp board.

Signed-off-by: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
index 3bbb53b7c71f..a8727d353b46 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
@@ -1030,6 +1030,22 @@ &remoteproc_mpss {
 	status = "fail";
 };
 
+&sdhc_2 {
+	cd-gpios = <&tlmm 55 GPIO_ACTIVE_LOW>;
+
+	vmmc-supply = <&vreg_l9b_2p9>;
+	vqmmc-supply = <&vreg_l8b_1p8>;
+
+	no-sdio;
+	no-mmc;
+
+	pinctrl-0 = <&sdc2_default>;
+	pinctrl-1 = <&sdc2_sleep>;
+	pinctrl-names = "default", "sleep";
+
+	status = "okay";
+};
+
 &swr0 {
 	status = "okay";
 
-- 
2.34.1


