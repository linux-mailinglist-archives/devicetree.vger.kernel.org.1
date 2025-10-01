Return-Path: <devicetree+bounces-223184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B63BB1ECB
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 00:07:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EA01A480E53
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 22:07:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E137331352B;
	Wed,  1 Oct 2025 22:05:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m8PBNmo3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38ED13126DA
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 22:05:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759356348; cv=none; b=MuHgwiwb7pv0xraSmhbY+i2VDp6SZiT0xOp2efRYcaviPyQTQkT9ruLOYgd0awvKu5svaJhAILuFNu0jyAb6bFm+PUB6HlUTJHvsNOZ1bFLpfpARt9CHY/Yl7Im7rg+IXUmuiCSofZKKDc1bAj3E5dVc55yk37f5Z43waNKBRb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759356348; c=relaxed/simple;
	bh=hda2Xd4Mz5OnSn10548Jx0ge0zF0dKZ+ZJ+uSDZXASE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=daCiS5J43QUXOD/b/f4bd3qRhyZxwRioiTiigZFzGmBQAz0dxDsu7zlZXpNOynIJn+becQYPooL80fBBhDp5s0MTbB0+may5RMYkH0jllZzJ14YJ6eSNkn3uh2RFLaqY3Hr1TLqFrN3VDsUzn01BBMD27e1KstEg9T6UDXeVGsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m8PBNmo3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 591IcIlI008790
	for <devicetree@vger.kernel.org>; Wed, 1 Oct 2025 22:05:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=DQ/0YD5xMRw
	3lWfka6oyOcJAqHz+tEBt1EbVwdyanDU=; b=m8PBNmo3eyDlXQAQxCYjNuc89IY
	dD4Y7iU5etjHZ6eSWWUsyRRMfSqwJ58XwUkvnPFiGNVJGUGDzrXs184yad/JR7Rh
	CCBPHSqnjTiTooIOt0Usk85xKZH+tvR7Hb2UUSfSOJ6TZdAaxUuYUY9nZDJlCgxi
	a9AfzDqMcvO0NC4ItA5eXfqFefjN0OJIM3vzMwxETCpp2A+Bfk9beXEH4tCZNTyU
	Yuxbp/pXm5OMGWsbOnRkOGesog96sX24Ae7fTExvLMcqYtOgbAW+OHKLLrtfy0vd
	KdURq7l2Mcu2pm5whproNNbPEXelBSLXr9UJ8vjPJRvIwRyCOdueAvLaGuw==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49fppr9djf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 22:05:45 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b522037281bso215169a12.3
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 15:05:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759356345; x=1759961145;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DQ/0YD5xMRw3lWfka6oyOcJAqHz+tEBt1EbVwdyanDU=;
        b=nOqQJIe6mnV8E7K3rxInnSRdU0PrmfK1qfVKYDwY1z8+w2aKpcHgKiw9jzrv9gf149
         d4ql87SesRvSpTyi3XeVCiPp2SLI40mme/InlV8uierz5LJ98usNmsZ+1p1EjSt0RIrB
         AWyy8oVtFr5a2r+nn7C4jHoKG/+0lRCE/xrSB/n9rRqN+hQP8wjgZgN/TFpVBchgR7p0
         ijvHehzveNdZMJbipV+sxti155RpWtbTUXU3e8+0xGTP9MesQpgNgsTbD+WfApVK3I4h
         6OLpcIp6OhAVuz32eIxcLyH68RS8hcYRjlByGHBITMktccrzjqu7De4uKPUVfxltGRbJ
         iAzA==
X-Forwarded-Encrypted: i=1; AJvYcCWPtE+GdchQxPUYFF1MyyfZLxyjanYjvBfs6qP2fVfX9Xd2WTl49LS2kx9QFRKrF6PO5XuqLRKCzBCC@vger.kernel.org
X-Gm-Message-State: AOJu0YzoEne+S8CGB8wlidiARZ6XifbutoaeBXbxw9k/RpbCF+Fy2R0K
	lzty8HFloXBszFi8Q0bU4i/+Ko4ZKlEHN2Kb+ls0JGH5EvCo/Wq5IvZ6oBY3ECXi1FaxmVgu+hK
	JXiYrxnxI+ndMkgyTNjTvtet0MW/34AQzIYWPwNlBOVLEfa7nd0y4vuD8JaXlQ2ce
X-Gm-Gg: ASbGncu6Dj3Z6W2y8JCcVAbVVZne1PPL6VOpcJFt0sFChUfESpp9StmTmaHcsUNZjwD
	O6TiyIJx19wRaXJMhsrNu74peaEv97V8XyMIQ8jReCVb7dsIMAcCF8DrF9BDnIWZ0WagKZ+DzxX
	Y/4NrpUGUXmU/Hsvm24WBdXtnGaCcKWIAHIVmlF599tr8y72DSaqfK+lGHpyTJtU1kYbCCliWVO
	qjHOtnVg7c146EzJN9HsLNobZ7yNkQZXpqSWkyU4Jja8y5x2rFPKXo5ma7A5hgCV7+2GR5WrZNs
	0sI+CBCWT8cpybii85SGLFJ34OY7cSkql7MnJFTtahCiQyERTATTZ3rL3hwqAr7S63jbfp7I2Xd
	utH9OLhBU7ENh2+lTa1shRw==
X-Received: by 2002:a17:90b:4a87:b0:32e:d600:4fdb with SMTP id 98e67ed59e1d1-339a6f37ce0mr5612394a91.18.1759356344601;
        Wed, 01 Oct 2025 15:05:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEwA03IVPTcB3jPZNykUMsai4acp6hXfEk2fjuAdlgpyO2JlX4KBGXUh1TStolV8ltoQm2vOA==
X-Received: by 2002:a17:90b:4a87:b0:32e:d600:4fdb with SMTP id 98e67ed59e1d1-339a6f37ce0mr5612350a91.18.1759356344166;
        Wed, 01 Oct 2025 15:05:44 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-339b4ea3c3dsm702085a91.5.2025.10.01.15.05.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 15:05:43 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v4 05/10] dt-bindings: phy: qcom,snps-eusb2-repeater: Add SMB2370 compatible
Date: Wed,  1 Oct 2025 15:05:29 -0700
Message-Id: <20251001220534.3166401-6-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251001220534.3166401-1-wesley.cheng@oss.qualcomm.com>
References: <20251001220534.3166401-1-wesley.cheng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI5MDA4MiBTYWx0ZWRfX9sFj4lyIdXk3
 VfgPMnhpdqsBGXtHTy/+O5mX2j5FNEB8Ml4dB9SO3dWOrUqsJ+naNWzfcmmCoOd9+1s4vFRA46W
 qEovO0Eu1nANZa9poMmEevLCnDL9IfOPUBufcekIpFbfgZghlzucTh6RzNJIWkn2ggwDc9WsHWP
 ls07XFOkIrkQC0lGoGuCq/sr7Og8KSTv2QByPHBORozzjamBtqE/na1zHCTxNkl0TtJjLddrOgN
 SHI97LD0F2o2ekm3eO2eWLNSB+C3k3K4VR1plg0+0H/N0c/yPQ+rwT/y45NkIKu0e3xj8snl52f
 y8mpUUNsG938dWtnphEEP8eDWQiVaSv4I6g8L4fUU2hreklAsYn9XtcK/AMqnCHwj8UeCY4INYa
 PthrFoX+ubMxLE62pLyruZbxD1vfiw==
X-Proofpoint-ORIG-GUID: 93Sn8Jz8uQge6eA42aiuzZ1RbpwCGyt6
X-Authority-Analysis: v=2.4 cv=GLoF0+NK c=1 sm=1 tr=0 ts=68dda5b9 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=9ZGL9VZrYHwIVTkvpzsA:9
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-GUID: 93Sn8Jz8uQge6eA42aiuzZ1RbpwCGyt6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_06,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 suspectscore=0
 impostorscore=0 spamscore=0 bulkscore=0 clxscore=1015 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509290082

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

