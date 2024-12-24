Return-Path: <devicetree+bounces-133732-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF7E9FBAAF
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 09:49:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 78F25167479
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 08:47:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEF351B2192;
	Tue, 24 Dec 2024 08:46:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gs7VcH9c"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9DC31B1D65
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 08:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735030014; cv=none; b=onAHYKymvclS73LCMoTGJVS9yuo2jtxZGpftNOFTnkQqv2ctm7MlCd2TlF0xux0ss4nCKQG+NXSt66h47DJc5l/LGZlZFv3Gw5n4Lx+8RjlK7/gKx9CtZhwWtu5Ioue1RyxERbF7vKyYFO3eppbDhXspDdHmHJASJ/QtWW1TJx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735030014; c=relaxed/simple;
	bh=qGpWgIXL47YBUsbnUQeWjPLqABrak3lVm1Q6K257iLo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=OUsE1Hgo6lLLxYbEAnwQaRfYRwfK7jAkgodD/1vkhceEmMV3pJlCNwHp3YL7NUZO8MoXvpEbeuUbr0P1m/D2apsF65sOjpOicN4rp6dV72XsvX+vBl2Pm5JScVWy35lW2+dFZP8NO+maWHEfcyRAUsLOActn6O9vvfJSyATrEwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gs7VcH9c; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BO5vjbj032403
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 08:46:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=suI55uQNzGC
	SiQih4YuTNalcRhTRpBC18Rzl3f7fUjE=; b=gs7VcH9cb0WKlxVuEkk6YPCR+th
	7pgopASOK2rGRLaX3o+HJqmIiptGf/hxMHYvNK8ZMfLw1IjDBtGVO29BAc/MO2Gq
	w3TAJlQ569k0F2WsNrk96ZpGFgu0VnJfQvEbxKnoR2hFoz01m86HR3AP3ZBTWJ75
	0R3EWaaJQ5TU9qVwFNLQwo4m9OWnSv6UbE7GdxMiTBfNtYtSiyPTUo5s/X1cPYOv
	VekT2DG0y9cv+NNGHvPxteJoS7O+Z6iGHxAsG6JHvVclYycP0Vvp9QuVB84fD32q
	2MPL0GLymdNNcISV37olrTqVUZLY/CXnOfbWUHo/bSh4q+YwnvEbgZKsLYw==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43qq908py8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 08:46:52 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-2ee8ced572eso5263850a91.0
        for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 00:46:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735030011; x=1735634811;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=suI55uQNzGCSiQih4YuTNalcRhTRpBC18Rzl3f7fUjE=;
        b=E7WRP1dTiOxO//DtsZun4Ow4zFyHY3FHq4Al3rq3r9rU+6OdwU9bD5sgIYF8ZrXPHW
         Qry2glzg2kpOXRJ6NbDTQrCnEQmIjCRtGk9H/uZ6xfev5ECoV5Bnpm/5dvaJhbfZokeM
         Mhbeg4vviHPnLTwIABk4x5VNoSzNeNdc2g+qI0LkNDXnMT8egq8oT28gOz3KgWF/7SWH
         w3h63X9z6ZQ1wGZHRSl35NhyYfEu9tWzvIQRsgynh1yPHAtJ4QsbHKIizvM84uHi/Lb2
         x2Op94IWVfaup9n/QO5CN4SKS8LH5OL6MyYyXwFzW9E6EtpMQEorzfKP04cxltGbsUy6
         zMyA==
X-Forwarded-Encrypted: i=1; AJvYcCWz9zvJuBcZnyLs0ZK0X0cuj57umBQ/8zCGctLwgqZRgf81RMUK4Pc8BCRR1NWvynPvoZ3H9GklutYq@vger.kernel.org
X-Gm-Message-State: AOJu0YwPBpKOjkCMxel+6h8aLoujldihCBvHVUTdWHziPIxE4QZossXg
	68MmIvi1iGqzMZMPNxHA1KLUb8e8FwR2gcmQBENBr2Jo5vGPbh+7e71O57QZPjc2oW+XZNHQ+vN
	rRncgwdLvHSuthVh/0hs9EYAN1k1x9gkD2iElGec9/J0gg2w3xNq/5KPlbDZi
X-Gm-Gg: ASbGncvB8mt5hIHVYhXOZ9K+bm96TqFpquhed5xl2woo024Oll7Oz4gCIa6Tp2/WkzZ
	L4LBgTAZS7dkQvYxp2VujzmI2AFGkL/suuG9l604BYVo+KWLTa9R0Zv6WprwpN5aWx2QISDCVd0
	Ac42rbY6f9k7UbpdQ6hfbGjoyN6ZHKWday//0iq8y5k6oTosLcEtJgvozX8y5KUu689WvhH5kTb
	Jegin5DGNITNrAazcqLtF/CCgYxrYBnkseG7sBqXZ+TIcpbZNzJ2VZtWqbYqzGg52Ja5uCqRV43
	D5WP51dTJSIjG08utA0=
X-Received: by 2002:a17:90b:5202:b0:2ee:d186:fe48 with SMTP id 98e67ed59e1d1-2f452ec6a53mr22070971a91.28.1735030011256;
        Tue, 24 Dec 2024 00:46:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH0+3qD4z7RnyTP4+sb8Ve+3MnRYVWj8h/D611r2RH3W4G7mum8I0Hgbn+yFyukzggbMv9nwA==
X-Received: by 2002:a17:90b:5202:b0:2ee:d186:fe48 with SMTP id 98e67ed59e1d1-2f452ec6a53mr22070941a91.28.1735030010895;
        Tue, 24 Dec 2024 00:46:50 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-219dc9f692fsm85471195ad.216.2024.12.24.00.46.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Dec 2024 00:46:50 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, quic_ppratap@quicinc.com,
        quic_jackp@quicinc.com, Krishna Kurapati <quic_kriskura@quicinc.com>
Subject: [PATCH v3 3/3] phy: qcom: qmp-usbc: Add qmp configuration for QCS615
Date: Tue, 24 Dec 2024 14:16:21 +0530
Message-Id: <20241224084621.4139021-4-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241224084621.4139021-1-krishna.kurapati@oss.qualcomm.com>
References: <20241224084621.4139021-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: GdmPOGD13IIBj4f8ovSCiU4YuMB6aqwT
X-Proofpoint-ORIG-GUID: GdmPOGD13IIBj4f8ovSCiU4YuMB6aqwT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 suspectscore=0
 impostorscore=0 lowpriorityscore=0 spamscore=0 mlxlogscore=999
 clxscore=1015 bulkscore=0 malwarescore=0 mlxscore=0 phishscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412240073

From: Krishna Kurapati <quic_kriskura@quicinc.com>

Provide PHY configuration for the USB QMP PHY for QCS615 Platform.

Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index cf12a6f12134..5e7fcb26744a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -1124,6 +1124,9 @@ static const struct of_device_id qmp_usbc_of_match_table[] = {
 	}, {
 		.compatible = "qcom,qcm2290-qmp-usb3-phy",
 		.data = &qcm2290_usb3phy_cfg,
+	}, {
+		.compatible = "qcom,qcs615-qmp-usb3-phy",
+		.data = &qcm2290_usb3phy_cfg,
 	}, {
 		.compatible = "qcom,sdm660-qmp-usb3-phy",
 		.data = &sdm660_usb3phy_cfg,
-- 
2.34.1


