Return-Path: <devicetree+bounces-250649-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C0574CEAE16
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 00:36:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2FC4F3038683
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 23:36:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE03A2E2852;
	Tue, 30 Dec 2025 23:36:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Yv+o7+Lz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QLS+XWtI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E50262E5B1B
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 23:36:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767137774; cv=none; b=DRJwAJV4rVHVPavKoEoHnneGj8Hq9OnYWTjX3znRlWUcl42raOA8fNSHdcxkUWctSKnG82ohM+1Fse9Z2BBRpvkeoIBRNeIhZ7if+gpenL+yWYlbdZZyM+w5QR5Eh0exr/lVjA7/uvcua6/vU74th55Y1q/l9GUCNdI9yPH8whc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767137774; c=relaxed/simple;
	bh=dsdXZ95EeYH9C3J7omxSTW2//MbnLXvg26+sdstW5a8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RplJaI+GQGQ+doECDoYK7N1ROFa5ZaiGUGEkDqNIorn2/KgSyZKPdLISmCy5r7HS1Pncfsq1IA9ujD8MGMz9L6kFVHj/0EsAu+35ShP0Yseq+rl9ByrnZxNDa2rDOaor0qSCAsW0Kdm3vki8BmykPqQw/rbdq4f4dJOLvjXI8hU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Yv+o7+Lz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QLS+XWtI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BUMFgnL1181630
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 23:36:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GaHFmXFU2LgOEbPPkpReuSY4xCJ4+sCSY2NisbXzuSg=; b=Yv+o7+LzjZXcCX2b
	7JPyh9dZxYnPFPvoaXJK+MZLcII6w+nYNiZlcGovs9KUL0M8ZAZQW+bKoRxT5K7c
	4VyrMpDe2wrLxh7H6zVdTw23s5WWApL1T7WfQyUl1+WpGYZeMtoBFLPfh5rweUXv
	XKiMK3lCGnzN/qZSN+3vePKariXpGxjeIMaS7tt7COionftMy9+7mhzjPxMVYBMY
	KpZgSA+zu7cfJ/eIxEwYMwO/FSxXleDRFmAD6gjGdZkxUudT8CBl4KeblAzHC/un
	iVOGmwPvW+yRLgYJwQaQV/69BxbPPEdOQdzBtNnx1IGNgu17Bgi3KIVoB/FKafN5
	6ysvvQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bbqk1ccyb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 23:36:12 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4f4d60d1fbdso292995261cf.3
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 15:36:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767137771; x=1767742571; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GaHFmXFU2LgOEbPPkpReuSY4xCJ4+sCSY2NisbXzuSg=;
        b=QLS+XWtI/yYjhrIh6oIwkDKaGJygVqowTgMJARyEQ6xj+IMmwJWJIjxGhZc0WaTAkN
         9rdqqkBIEPnUNWB6JiiA2VsBiJRiIA2B9e+R8rkRoEmkQdDqdABANI9x4TRHfn+mW7qW
         d8PsyWmvlg2p9Y4d8GizNV1R+N5jxOkFHP4aenXAijIYmQEs/6wJ5/FFwavfAXBf0sha
         vzlzeGbmixXGTLpRmbhwB8ZCrBgqt9RQU+lJLVKvKdaT4ugwq01kCFSNkjdbS2aGN7Uu
         dWVwONsQ083uCNKrb8/8O0bF735YAxy/Gn2H/0Y0KHhPSk2DoiOGs9fMcz1X5mXxngVy
         C+LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767137771; x=1767742571;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GaHFmXFU2LgOEbPPkpReuSY4xCJ4+sCSY2NisbXzuSg=;
        b=EgBd8m+UjRmul8YF8yTsY10dRNmQ9SBuT/hItINHWamGo/STqQh1ryByr5VcHew5qD
         5RnBwj6b0gAVwmKbvVlyeeRG9q61oJIDXUgVTP11PzXt0Gqnpfz+bYL2djIAX/zw3nsJ
         T7wqZSm1GVtoj+p634TuZ1WIEIS7auWJ13ShMowo/6aqiR6YdNRm8FQy/Y5lDLVHtfKm
         peI0ezjicE/sVH8+IiavSv3V2CnIv4D2OockHiyX8iMpgWc6VJbDThac13ZamW2Van63
         rxNdpR277wd63KUMe2MNf1+s02JAe2RMM4hpclfRmvkdXEAKy8ohEUQLHqzc5apS2woe
         /9rw==
X-Forwarded-Encrypted: i=1; AJvYcCVDnM/q3gJIywiOhZEdeaCg171qrlHh5xChpgDSBU5gLY+l/l8ue78plN3NlJDTTPzwXAO0/BA//pxK@vger.kernel.org
X-Gm-Message-State: AOJu0YyALwBRIbYmEpXLA8nEv9pBmR3weyKMIn5Jqr5AI5hcwO3hNQfL
	zFUQQBlxbrSJqsIx2faZnInZ6bydDBTNBrI5Ozeq6YJSp30dHD7pLNEA+jAzNke6YSkAGHl8P5M
	jFXQ3Mn/Z7EN29Z4zWroYy/XB94vvLy9YCu0BbrBjMqFvegOEQ3la41F2GQc/oviG
X-Gm-Gg: AY/fxX4trGDDUtIr+13+hPst6H6QyvQy/O7mA7wFfs2Y0F6YSQQ4zoheFPJjl4+UCn+
	Y2KsNYGnudkbExor55wLouyrO1NcU7a4J7Kq0WbjHFGNa0DIs2djoZNn40adNmdDpCL1hiFWFKf
	bHmCTc5IUdOHsCxBMkyZ+H3mdoEKTDc7+d/Z8OFv9sVR7t+9bg7/o/SJrJxzwtBxKp0TSogOFc1
	ntUkIdyhM50Q9M5oPRVqjdnY4sLdDjipCA72qhtCNGuDwFzJNxIxqSBMZkDZO2tbYI5w/ZfDbde
	aFucAxiiyw891wgmGiEXg7hF4KPkEMsghddFlq3Kds77RRoIKM8xSS+bv5hsLWTXfH9aDVIVXnI
	zrXuL8poXxxE20I3rvoTjMSJqI8ORhw9TtHfjLcbXThX1oS1NeEh3MyC61SO/zM+7kZQiYLtgCG
	JaFcmSxuxlXum8IlTWmx2LN8E=
X-Received: by 2002:a05:622a:28f:b0:4ee:1563:2829 with SMTP id d75a77b69052e-4f4abdaad3cmr497925421cf.72.1767137771257;
        Tue, 30 Dec 2025 15:36:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF7BCqXmSeXpjNJMgSVwWhyvWdlkv5tk6ilmCUcGI8RE1/asO6kLVQNDkJuRevRigqYoaXlzw==
X-Received: by 2002:a05:622a:28f:b0:4ee:1563:2829 with SMTP id d75a77b69052e-4f4abdaad3cmr497925031cf.72.1767137770776;
        Tue, 30 Dec 2025 15:36:10 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a18620337sm10349574e87.86.2025.12.30.15.36.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 15:36:10 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 31 Dec 2025 01:35:53 +0200
Subject: [PATCH 03/14] Bluetooth: qca: fix ROM version reading on WCN3998
 chips
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251231-wcn3990-pwrctl-v1-3-1ff4d6028ad5@oss.qualcomm.com>
References: <20251231-wcn3990-pwrctl-v1-0-1ff4d6028ad5@oss.qualcomm.com>
In-Reply-To: <20251231-wcn3990-pwrctl-v1-0-1ff4d6028ad5@oss.qualcomm.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Jeff Johnson <jjohnson@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Matthias Kaehlcke <mka@chromium.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
        linux-pm@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1411;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=dsdXZ95EeYH9C3J7omxSTW2//MbnLXvg26+sdstW5a8=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpVGHks3ladrkLXuAKtpF6vTDXvxft+w/1qQfxX
 qPTZ4Pi+fqJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaVRh5AAKCRCLPIo+Aiko
 1X1XB/9RVAlu0fS0XyVVNsfzMyzV7ZUtWWfh4tVhINiynx0u4UygowO8h7lO24yuVEKKVUSTBHJ
 b8NAbdOwfEjJFZXEWol5x8ywChGdEwbxHR8bd44LeF80FJA8rlZlbgp/bs2mKAvCreZsyofEnZf
 +OOl+6Cu5kLFc6XDte7pn1yPsPv0OOMiZgodEdd5Q9eXgVpyzbaX625o4PSLYrcfAuxIPOE7oyc
 3wZydLNC3ueDiOeKRhr2+Rc4tPFuwf7vP2z/THMgsn315cBcWgPx9uHF6jFM3elHZxpD1j6gBTr
 Pm6F4L60wOXU6YCQkgQY2jTpWojPNK1V4OsD9CXb3lP/spvn
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: X2E24suxPfZsWDl04A0kvt0cb_HIeClb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDIxMSBTYWx0ZWRfX9I0WAk8EQBYp
 HWirc/QOpudEQH8qR+x1EawqAgUcce0gaxkjT78Hvt+7Vs/bxfzHyoR7TdOKy/vQta2sGWrgHD4
 0jDIUfeS74h4GapA/dT/GMM5h6qmjw5DozzYi4plWy8n+cJf1s0Er6vv0UVDsKyaEW1QgScFJgD
 MpavL5XogH1V6jZWIOS2R+dG0E47gMgcIl1MYRtRkSVriJdH+aqLmEgbhuhdVCnHEXw0p7mbOuJ
 MrjANtFmtJWSSgmSD1zybj4R4HhExVnDHFSOmcHjp1pB/7u4kLKe5MPl7mlgHrUZYltLlZPNOmD
 0o2oYKQ7CHs+tNDBrzDxbsLwaZ8L8oYtkylu8Jj/LygwGVPuzsk3NL3CeJ1WXjFD1PyTC8Ygpml
 rS8m7exyNdr5ye7NNZafkWT8oTOi9rCZfoaNW9fUIMY+vswPQPVlxwGYzpBh3Z0jUVjatOpb7Tx
 Ikh8lKDsxvi1jCClS0g==
X-Authority-Analysis: v=2.4 cv=Tf6bdBQh c=1 sm=1 tr=0 ts=695461ec cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=TaVSYX7Pq2PjI-6xwy8A:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: X2E24suxPfZsWDl04A0kvt0cb_HIeClb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-30_04,2025-12-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 impostorscore=0 suspectscore=0 malwarescore=0
 spamscore=0 lowpriorityscore=0 phishscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512300211

WCN3998 uses a bit different format for rom version:

[    5.479978] Bluetooth: hci0: setting up wcn399x
[    5.633763] Bluetooth: hci0: QCA Product ID   :0x0000000a
[    5.645350] Bluetooth: hci0: QCA SOC Version  :0x40010224
[    5.650906] Bluetooth: hci0: QCA ROM Version  :0x00001001
[    5.665173] Bluetooth: hci0: QCA Patch Version:0x00006699
[    5.679356] Bluetooth: hci0: QCA controller version 0x02241001
[    5.691109] Bluetooth: hci0: QCA Downloading qca/crbtfw21.tlv
[    6.680102] Bluetooth: hci0: QCA Downloading qca/crnv21.bin
[    6.842948] Bluetooth: hci0: QCA setup on UART is completed

Fixes: 523760b7ff88 ("Bluetooth: hci_qca: Added support for WCN3998")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/bluetooth/btqca.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/bluetooth/btqca.c b/drivers/bluetooth/btqca.c
index 7c958d6065be..86a48d009d1b 100644
--- a/drivers/bluetooth/btqca.c
+++ b/drivers/bluetooth/btqca.c
@@ -804,6 +804,8 @@ int qca_uart_setup(struct hci_dev *hdev, uint8_t baudrate,
 	 */
 	if (soc_type == QCA_WCN3988)
 		rom_ver = ((soc_ver & 0x00000f00) >> 0x05) | (soc_ver & 0x0000000f);
+	else if (soc_type == QCA_WCN3998)
+		rom_ver = ((soc_ver & 0x0000f000) >> 0x07) | (soc_ver & 0x0000000f);
 	else
 		rom_ver = ((soc_ver & 0x00000f00) >> 0x04) | (soc_ver & 0x0000000f);
 

-- 
2.47.3


