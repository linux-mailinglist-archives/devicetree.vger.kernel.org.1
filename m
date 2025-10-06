Return-Path: <devicetree+bounces-223956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id F0796BBFAB0
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 00:21:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CE9C24F1CE5
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 22:21:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 200F62DCF4C;
	Mon,  6 Oct 2025 22:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XNzmyh2X"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58348196C7C
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 22:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759789221; cv=none; b=i8W/wBp0nJyyHzGXEoOprRGhPvcVvamiE4kmqsPuYZK9wXS7bu5tIG+bkw2gK2HpUhcvbhOe4hHoaN4pSK7+BZLUj3D9ixzzs3L2VQ7gP0Nm1EHcnLaZLxXz80EwEPCPaR0y1gsX3MWUKhd1AAuZMmE6cxTnC99sTLstLaFqNG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759789221; c=relaxed/simple;
	bh=hda2Xd4Mz5OnSn10548Jx0ge0zF0dKZ+ZJ+uSDZXASE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=johkmC4DbSvfepDH21SbHJ6rxSM3jk3qb/CQFlkH2VlJCCIx8toCgs9zZr42J6WIFvPsCXgbos7vdF2v5+jLGj31IJ/9+WAw9FHsJxtZUbokgjcBqL3rpTaStli2/tGVnlx7AwxyRhfpHJMhD+V4iv9JfxoLL16oTkuQFABRaBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XNzmyh2X; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 596FBK66024117
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 22:20:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=DQ/0YD5xMRw
	3lWfka6oyOcJAqHz+tEBt1EbVwdyanDU=; b=XNzmyh2XOAAmRvkmnEGA9YOas+D
	TYNRCEo37uwuxgKSoVQ2PNZOqqXuza1cPH6fDea7aQ950p9NlUSH3uxOZn7Jv6/6
	BBvbmdA9fg2GDlh2/ocumOWL+3rQeiIrF2/tze39ZEBVDcl3R4qpNyzEQ9CFlISz
	fYHw6K7ed8c+izO13JIZ2Sof6+DhzrjDK2kYrl/jbEWQ+Qor14qvLS59Msy5wDF+
	LzuKqmTepXBELIVbR6o622fHxqTZpn/weNV3B9HewUTcKRRB9EbMOfrDGtfXY5K5
	wSgPiZFGOJoO6scn51m6sk2AE2F0lF2b1ovtIMZhlPI8bZF/sfoV3PMTxvg==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49mg6a92wd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 22:20:18 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-780f9cc532bso5269004b3a.0
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 15:20:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759789214; x=1760394014;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DQ/0YD5xMRw3lWfka6oyOcJAqHz+tEBt1EbVwdyanDU=;
        b=ZMhhxN9Gu3eRFhjZDrEaaC5hiXCn+0J0CrHSbhRXCsZagWLj9pI5YOcQTc06FfpDPs
         B1OX3lgOZDZaNziD2PiMMrFkajgWfkQvmC32Vx3NN94YZIlZmGdLs8jJgWQyF5NqqHyI
         ssNeIgyJug3bpjby8TREOKiqwkDixqhg3kpne7/OtKY2HI6/F7wCCWerX0oGBNe4mvQt
         vQvHsqOeYFjVuL6zEMbtTFsJzwoAeYTj11F4BOC6ehf6FRXX69TEeW1d4+PU6YW91H8j
         RRE8zh6/Hfvj+hX7XuVUE1AomTOJ6GdjlO2KvHzfC8+fQvHvR72e0//Kem11PqG7JzRO
         c3fQ==
X-Forwarded-Encrypted: i=1; AJvYcCUHhwZ/pqS2p3TvWaeHdH67Ny+IBpLTvVCDQoU7FHApv3VJWS07DEXxSpfAolAba8hMWfQ0KNPW29QZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwmPm+6GJzVxUuI2oHpk1hgdEHf+CKw5A7CRwBHTUVcmargtQQD
	fefVOrxMwy+nNOBKEuJ2V8K5G4CT7sXsmwxys+PmzDP7tWGGt5IFo2O+yvUOy9smHxxOg09rsBl
	8hxiecA6hijbQ3VAx0mZrQ5IRTntDkjB8Drco9l16KLOJOfRl4faX7ohi2NgD8dzS
X-Gm-Gg: ASbGncvBaGHDknuyVpf8cRwQpg8q5Xr8kUeK31ykJx0THOIbAFOSoH0GKGXgFluZqbi
	fFhtvUGXhKekltzR5pfqb8owvp0D1iLEXRfGGXoigKg6Ex2An/o67gkJCK2B2JxsJfPslyKsgUZ
	/1ORsOUoZ+KBiQu0l4w1RGqFJ7UivEJybYWDUtsgWnvg/rpOWZfij8347BkyFru+5sF81GYIXya
	Zya6W9LnHDl4ZEatHFmitTSIwGhA9/4GDVomKoTefh1IsLln3AvKjszbTLRgl3VHOUpz3chPWtF
	PbJA4CFp3XMaKGFyQmfwxuxeomQeMtfrd0a/dqKdAgJ0I+MBIxxTARb+H0zn2RrKlZggtSOnm2u
	nY3mzAroQxQKlT2urkD0hRw==
X-Received: by 2002:a05:6a00:399b:b0:78a:f6be:74f2 with SMTP id d2e1a72fcca58-79230757802mr1247805b3a.5.1759789214000;
        Mon, 06 Oct 2025 15:20:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFnkZXwidFHz7CWQzFnYlI1XTWEVkHlGYGjn1W8QN2IS0V8sHRnZ70wzY70yU9/PuxBu2FvJw==
X-Received: by 2002:a05:6a00:399b:b0:78a:f6be:74f2 with SMTP id d2e1a72fcca58-79230757802mr1247773b3a.5.1759789213473;
        Mon, 06 Oct 2025 15:20:13 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78b01fb281bsm13734968b3a.37.2025.10.06.15.20.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 15:20:12 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v5 05/10] dt-bindings: phy: qcom,snps-eusb2-repeater: Add SMB2370 compatible
Date: Mon,  6 Oct 2025 15:19:57 -0700
Message-Id: <20251006222002.2182777-6-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
References: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=QtdTHFyd c=1 sm=1 tr=0 ts=68e440a2 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=9ZGL9VZrYHwIVTkvpzsA:9
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-ORIG-GUID: E4jIXidjcQyPd18MXinNL13b75L50lQY
X-Proofpoint-GUID: E4jIXidjcQyPd18MXinNL13b75L50lQY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA2MDEyMSBTYWx0ZWRfXxSNRRiN67kWe
 5y2h7byzDxDj9fhTETqW+FbWhR+6FyUcivoPNI8ke9Xhqi2vdcNNPSJgEyJRYlMrv74kIjtXoZ3
 VB8wA/aWuijmqlMqD949bK3MjmrEFzZMgAr0xYdpUd9QNQu6oVFxqTtdy0xVEf605Rm0hjlSiod
 vTmLpBGj1AxKtgntspVbVLBbHrahSM4SfrlratP3NpogCkurcDXxq8gkKGBZOxYqHPnJOzo1DSI
 zY/uIAIb6fEdnFSatopK4pZZIZyhgbqnOy0Vr2LHc6sgqbp2SQwpX8mTMsRM/4I0WG/NTo1N6FT
 CP/h0m/JTnxk6EmVCSTHRTUk3yvj4KEQcFE3PW4sB6ihVKdWRVlkH7qRGxKLO6LH1n5ptRLHFjC
 M9pPvh3oSosg7ToOIqV0SXaQSjH5PA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_06,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0 bulkscore=0
 adultscore=0 clxscore=1015 suspectscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510060121

Add the compatible string for identifying a SMB2370 USB repeater device.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml        | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
index 5bf0d6c9c025..0f015a4c2342 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
@@ -24,6 +24,7 @@ properties:
           - qcom,pm8550b-eusb2-repeater
           - qcom,pmiv0104-eusb2-repeater
           - qcom,smb2360-eusb2-repeater
+          - qcom,smb2370-eusb2-repeater
 
   reg:
     maxItems: 1

