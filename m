Return-Path: <devicetree+bounces-256298-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 83CC9D389DD
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 00:24:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AF1AC313FAD7
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 23:21:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF4D034321B;
	Fri, 16 Jan 2026 23:21:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZCs2Y3vA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Fa8NN4Gf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9967231DD90
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 23:21:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768605681; cv=none; b=Ta6CCTvkysgvW+4xsR3B0aFQmwAlh5n/4xfkq98de3pKLD20LXaK95onqVzpBTBJJ8vuOhYwep0Iz7vI+x0zOo0dkDqINMD/U2D3DE5ZTBAxv8QtzYHdmLEEJtr04eCskxXjXzPngJ4JyfvPOxmNCjCWtXsKc9zOV6wAlz+hamo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768605681; c=relaxed/simple;
	bh=jYMZSplTH/Weoy7w2xwkPNIev4l2TEwX13EaENGM7y4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=A+7ulTHhCuaT88Fcz+BH2E3z2lApk8v2Co6fDjczHLhzyX560rpNR0PawC3+Bm348Tp5mQlB78Pfc2wfyJir2Yr9mPN4bTJcfk2Y/5XzV6dBM8cE+4tCJjIaaD3M327J9J1atAO6iEGy78YRNeIoOLO9ULA5j8vRwZ0Kr04iWRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZCs2Y3vA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Fa8NN4Gf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60GNDqi82959783
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 23:21:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=7PTKth0UrDe
	AreEEoorgLCH/1E+7Lkz0YAQpMI46XKg=; b=ZCs2Y3vAIhSwRp2Hfh2X86eqnec
	Vp0LrLS2Q4rJzkgo6vMRUdnShjXyQM8txvRnalpRx0A85f4v+2gasrlq/nKcv09o
	LXsKGXJqZcYWkCOWkrSmJfyT9C+0/J5MxYB/pyIqQsnEmhzZwKWuoLxfbsZ6LjuF
	a11ILSL4iGtXw0LNv8MxbTWUFg+2mtxYNXHzznJ5wVfkTmmY1NCawOLuKSYDfoiv
	Zo50Gt3eOZS6Nlvp8g1hRwgLpm69fRHLm314Ye1qDwTOCAMyw2/cycbKZGWLnFG/
	jln7gCcAu6Vxd9t8OUUDfp50by1fxv0XPIJv74nvtHYWE86jjBvuVmI7nVA==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bqvhh8ahu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 23:21:14 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-1233893db9fso2730221c88.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 15:21:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768605674; x=1769210474; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7PTKth0UrDeAreEEoorgLCH/1E+7Lkz0YAQpMI46XKg=;
        b=Fa8NN4GfJIbM+nJB5tXxrqJmFhkilYLl4U+knmm48DBsxBqbyRPj3RXb9I3slPhcEz
         8QPiD7N5DFM9vrrvsoukMEt5ZJW+6xqwxZGPLk3bzUVMgdD6oi5FudforWSqDxk0mZQC
         QoeJaPDzxiw13Gto8s9HOLZOGzXmNIubnjmEsRkOCaVY/sVk/AjmNApcPGrO3WwYYFAZ
         kkNtwbm89nHgBEooYrHAVpN2l7gSo8uOLo5u2dh1jQOroV+VpqGQ0li+2kLBdj5ELgJr
         e/YU77NUrEYqpo7mh+H6+AlM1OOyQgcewr6MF3BM5/kM+Dpnu6mPxx3oXVIolkWNR4Eq
         9Yqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768605674; x=1769210474;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7PTKth0UrDeAreEEoorgLCH/1E+7Lkz0YAQpMI46XKg=;
        b=f4kdJDTMf7cPoDabmNJhfacuYMjz2jGJrjALwaH98wz+2xGRPbmM7u2Og5UDKIvVjc
         MTttpxmgFPmbUmkvWcliT5K+efGlZZKL92gFkgv0eIIRZm2OwWsDP4N6fZkmc4XqrR29
         qdbVSUvg6jqSLRK8PwYenKjPMm4KegzZ1JB1joQgGZo9JD+fs9rmbmR0kHa2jzF+Gy3r
         MggfucecyjQOUTkg53xYVdeMb2RExaXbXL4dQTfxHVPUV3kecOga7UKpCfdR6/bf1vOp
         sggCfWlvvTImLjikYHDfO5kPOiukB6ZOiA2eK8sijGc9KMIa1Xrs+GUIeMK6h0RNEzPK
         O3cQ==
X-Forwarded-Encrypted: i=1; AJvYcCUwEDhkIAUB1WTyRnntoZZp/cbpyq3AGhUk2Vw5S8RUdW3D4zmh7cOKWcFN+LWbZ0BrvQ2ZKzyiC39X@vger.kernel.org
X-Gm-Message-State: AOJu0YytLTDkityxCWoQPcvTJwjuWXZh0sf51QmiHElV5umiqww8QcSs
	p9WfmFEpMUlEZv6tEJq1kZ7Ft5Z/HbDYwGYAz9s1wM89NwonOOWVQAWuUj/+ZjeAUxxK/L/yQ6U
	AtVHwjtkwB5MKGC6uQVxdI4F99/z52LftMvf5/bztaLDhnx7aNuRssGWxVCHCfXCr
X-Gm-Gg: AY/fxX47foxMg0hWgO2PTrXNNrGhLB6CadCkU1l70CDEqO5BfDe+L3F9MY922Y9B5mu
	d4zixiSAt0iSs2Juv3ylTuyh81kygwO937tw/8MAspBPKU/vzgfEjIhtYnJfFuiCmGj5o/TugPN
	vyo0qIQDujz/QrUS/Q4/Aa9wCinW/kYEqsS5PKYkthH69nm+Xv1YM6BDtPD9NOhWnQdA/MCSxzY
	6E9QVpDcRF0jr3GWu8s7Bh7XVbn7Lh6QVuF4MDN6FTEEFikJdlFLK83Cz3ucikDrQdvmQ/I5Nqn
	nga4/GI7W4Mu4pujk50XP1Ge/cujLQo7LweK+0fGumD9ClhNi/g2KHzSsHmwe5p9RsgUH2cbnh3
	iOOryCtT7g8DDi8TlrP5MUGtJEApN25kL8WrZ3v0zeHEn15mmIOoSZLdauF1Di+w=
X-Received: by 2002:a05:7022:4190:b0:11b:9386:a3cc with SMTP id a92af1059eb24-1244a78115bmr3483067c88.45.1768605673615;
        Fri, 16 Jan 2026 15:21:13 -0800 (PST)
X-Received: by 2002:a05:7022:4190:b0:11b:9386:a3cc with SMTP id a92af1059eb24-1244a78115bmr3483059c88.45.1768605673137;
        Fri, 16 Jan 2026 15:21:13 -0800 (PST)
Received: from hu-eserrao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1244af10e21sm4611267c88.16.2026.01.16.15.21.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 15:21:12 -0800 (PST)
From: Elson Serrao <elson.serrao@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Souradeep Chowdhury <quic_schowdhu@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 7/9] usb: misc: qcom_eud: fix virtual attach/detach event handling
Date: Fri, 16 Jan 2026 15:21:04 -0800
Message-Id: <20260116232106.2234978-8-elson.serrao@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260116232106.2234978-1-elson.serrao@oss.qualcomm.com>
References: <20260116232106.2234978-1-elson.serrao@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: fMk3AGVloOxQw6OJoLoJabHlDSlN-Sgx
X-Proofpoint-ORIG-GUID: fMk3AGVloOxQw6OJoLoJabHlDSlN-Sgx
X-Authority-Analysis: v=2.4 cv=foDRpV4f c=1 sm=1 tr=0 ts=696ac7ea cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=oDIJ3hVRoRHbvujwG_AA:9 a=vr4QvYf-bLy2KjpDp97w:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDE3NSBTYWx0ZWRfX0BFNqc5slcBq
 de/mKom+1OOJtO9WXPIIN+zJcoOd/1jY80MqcVDOjYqRHNGPTAY4IKqdWU0D3ovO86p/KBXfAfl
 7I7h74Z53FlPbo+91ulvd0+F0r2EWdfSkkl2Bgaqrx1PLpYsImY9sZEeBBB0oUWX0xQoVMk0U2p
 cOgWCC3hywQi2kI86QAEJ2Z3IgP4v8cL9sDSw6Ibr5Zwcp+GX+fbMT1EZed1HMlE6Qek/vqugtm
 MMqi95HbfGbr++Y8QUIUWxCiPMugplz6A+xM54QMmQ5McaI6I7aUUSUkjvLa5c6Te5gqbVzfXyM
 QWHP8FbSjVH6YtXC8N443N+yfh1teDKcY6SEMH1F+o6JjODijVAA4itPImyCbkhphwwdHf8EBn1
 wkc4iqJYd1B+xHh96yGXJwkfULWkJJ18zNgN5ZNFj8pKXQog2YHgM+p4TY5lPzOol/87d4KHfcS
 w4Cic5lF2pRFN7jHxRA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_08,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 phishscore=0 lowpriorityscore=0
 impostorscore=0 priorityscore=1501 adultscore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601160175

EUD provides virtual USB attach/detach events to simulate cable
plug/unplug while maintaining the physical debug connection. However,
the current implementation incorrectly sets the USB role to HOST on
virtual detach, which doesn't represent the disconnected state.

Fix the virtual detach handling by setting the USB role to NONE
instead of HOST, correctly representing the disconnected state.

Signed-off-by: Elson Serrao <elson.serrao@oss.qualcomm.com>
---
 drivers/usb/misc/qcom_eud.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/misc/qcom_eud.c b/drivers/usb/misc/qcom_eud.c
index 3f1cc7ea2a6a..60f566427abe 100644
--- a/drivers/usb/misc/qcom_eud.c
+++ b/drivers/usb/misc/qcom_eud.c
@@ -343,10 +343,26 @@ static irqreturn_t handle_eud_irq_thread(int irq, void *data)
 	if (!path || !path->controller_sw)
 		goto clear_irq;
 
+	/*
+	 * EUD virtual attach/detach event handling for low power debugging:
+	 *
+	 * When EUD is enabled in debug mode, the device remains physically
+	 * connected to the PC throughout the debug session, keeping the USB
+	 * controller active. This prevents testing of low power scenarios that
+	 * require USB disconnection.
+	 *
+	 * EUD solves this by providing virtual USB attach/detach events while
+	 * maintaining the physical connection. These events are triggered from
+	 * the Host PC via the enumerated EUD control interface and delivered
+	 * to the EUD driver as interrupts.
+	 *
+	 * These notifications are forwarded to the USB controller through role
+	 * switch framework.
+	 */
 	if (chip->usb_attached)
 		ret = usb_role_switch_set_role(path->controller_sw, USB_ROLE_DEVICE);
 	else
-		ret = usb_role_switch_set_role(path->controller_sw, USB_ROLE_HOST);
+		ret = usb_role_switch_set_role(path->controller_sw, USB_ROLE_NONE);
 	if (ret)
 		dev_err(chip->dev, "failed to set role switch\n");
 
-- 
2.34.1


