Return-Path: <devicetree+bounces-260194-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2C5XC+6seWm3yQEAu9opvQ
	(envelope-from <devicetree+bounces-260194-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 07:30:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E8A9D6FB
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 07:30:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EC6DB305665F
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 06:27:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 782A03382C4;
	Wed, 28 Jan 2026 06:27:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="juXfa6p6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SYRvQLTe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 857D5302176
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 06:27:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769581662; cv=none; b=m0Joc3n4pFNw1KmjnYMfxR0Jmm8uLyWg9cD4A+n+L3CW6D/BxHefNSN+9FA4rd3hsbegDocieiHxS5fisp6pC2+b4qQ/V2sVmeB6AXbr+vZsTAu6k8n8cquRlpdDNk6QBngJJdoFem0QxAPUA0VJS1UWysWeQmlxlraV+rZIbJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769581662; c=relaxed/simple;
	bh=awBN+2UPawtPE3LzwYb9B3gzsXAhKqtiAMk2b1GAM1c=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Zpc5ApKZOrbbI+nG0j79EG16T4xau27ABaEnk8Q+CeSlT+ZSJvGOCieGDHLOV8Si3M6puLJgSFtjaYVR8345Pm/7sIjov1/c4OXFIePcG/iaD6780ohJu+ffACJhKOZwNUiu/dR8z97KGUOjuPNseSJ5jzuOOyqiIYxADfI4kHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=juXfa6p6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SYRvQLTe; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S3dXJw1953410
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 06:27:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=fzlH0VLD7da
	4u1uMeFOUCy1PtaOyFRw9PC0RkKlJPZ4=; b=juXfa6p66exexHATN3sPOKwgdpC
	IvFFE9lbf1LPLjAMI5A8Qrk729wzEscGSFUsmTFG3bHXvkRKi34QYXJgNLc8BryR
	wUxdxpk69D3P4zkzlPCeu8e4wOkvHBqf7XCOYF+1YoU7Sbwjj/0k1XyxwuSIuf03
	6dfFdFrPa97l12v8AiX7OyXaYjFGQuxVj5puoQrMmu5tf45TfhNvFKOHgghvRCmo
	1rz6K0vshIFkKx4gCvrZiR6RFMk+NM+XOTMuHZXAWgga0Kd52a1uJo7h5kqOUL4G
	ASMq0fD++OW5ukxM9Or5GtPQjc4pOaqJfT16vH9JgiX/YBRnrEqd94jTvvA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4by211a402-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 06:27:39 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34e5a9f0d6aso946173a91.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 22:27:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769581659; x=1770186459; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fzlH0VLD7da4u1uMeFOUCy1PtaOyFRw9PC0RkKlJPZ4=;
        b=SYRvQLTe95Uvuat3m1V1pENbAce6TGkUjEao/MoHsX4RJwqyu7ZdN6vnTQzeup8J9q
         BINHzFOIy1XYiFxAyFPNaAbSYx0GgnmghYPmNaJALk2beQ+Veky79zDMwyn/OWVYythI
         2OxQakfm+HoN6irXme+M9s9mtgNuV4wRF7DiNkHt1yeFQfKXTA2EYeVIqX6RH0tBqRDV
         7cmE79IZtqWk25qf7EEH+dQAK10qDqxSF3W7Hw7wRYrS9QP+8OSwLoCpZU2bN4ZS+jNR
         Ci6BwG/xhKMlYEB1DN+8RHQAX8qoSMpWCjBN0AVsY4kYPe35xlrK5a3AiKk/F4hXYv99
         NR3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769581659; x=1770186459;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fzlH0VLD7da4u1uMeFOUCy1PtaOyFRw9PC0RkKlJPZ4=;
        b=UrAG1bOlLDOQaXYAbWfDABSB8YZAtDOS5RPHLdy+i1lBQJtBsQkCBvuxftZcW1n5BO
         aNlpSrqQ0AZeLApxTA0ZUcR2xx5zKMud5VmbhcuKT2ui6yYT++M6kq+opT/07Pi51WJo
         XfX/q2HNK+hNVRGHWHkosYf+VP/duyjWH0uGjgzNG6KTSFbt2U4C9dcLjRqCM7suSH0w
         nS+6R0sIKlsVfFaTt7a+sIpWRZRT99vJafsi3bEr4SIMVEhpwPlNy/rSUxEfr/0Zndq3
         j0JRMg+Ptw/wlLmRK2sb4U/gAs5+LZCyD9yh1RpyS6u6xfcXWxIFNLyGpuYZ3I12KJXq
         h5Lg==
X-Forwarded-Encrypted: i=1; AJvYcCXYhr902ffjEEtPE2cJBmRZAKy+shd/NMiAPX27Psy2BbQCY2JM0uRpGMVCiaVleKaGZbBfRG6hRy2b@vger.kernel.org
X-Gm-Message-State: AOJu0Ywn0UKfhejfA8tZ2LU5pe/cClWcL7QAdY7WKcgiiOu/tuAwwTC4
	L+2GNNMlhCiRbnP+MYhcFAf01SMwj1P6LGtL+50Gw9M9ZJtqNusN2F3BZufcj7YzNr14C1jJ0yz
	0VHwmeqpfkWL29K2nwBjn8hD/xS+n4CoT7b7DacSM3Kd/hk9+s1rgSyswtyMvb7O4
X-Gm-Gg: AZuq6aI/UM6eBOIlNIppK7IGbLoxSwcVOpLVo3s4YC4MlMXkqFC8RG5nQlZpJk5wzKE
	VsdobSyqEa/f4iL9zv6Fd1YtEwzxdfCli9Vhh47m5Urq3RQVanY04KMoK5OayTuUo0KHZu01uWQ
	wXaredrnbpFzj1uuRken/Doz4CYroLxQR1Oew8dVyu+ts6nwYuEMMyzdFDfc3lLdvrCJKFeKR93
	gdYas7xK/pn0uC46t0cf67OA2jlslwqn8UYne2VXNsqT4bBTSQM+7TFHoe837Fqye5gD3T0WhVF
	A/Es6ig03BwoJkCNbnj0VWVeDC3BL/Zt+ctZ2PiJJgtWsSwU/lWp40+RLvO4d1KwlZCVxOE+WR2
	Y6sEHbAIcq3bWSMqiCPxNJybYrRDCj46LGfhf0JcufpMQCug=
X-Received: by 2002:a17:90a:d2cf:b0:34a:c671:50df with SMTP id 98e67ed59e1d1-353ffad8b57mr3853001a91.17.1769581658843;
        Tue, 27 Jan 2026 22:27:38 -0800 (PST)
X-Received: by 2002:a17:90a:d2cf:b0:34a:c671:50df with SMTP id 98e67ed59e1d1-353ffad8b57mr3852977a91.17.1769581658342;
        Tue, 27 Jan 2026 22:27:38 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3540f17955asm1276381a91.0.2026.01.27.22.27.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 22:27:37 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v2 2/2] arm64: dts: qcom: talos: Mark usb controllers are wakeup capable devices
Date: Wed, 28 Jan 2026 11:57:20 +0530
Message-Id: <20260128062720.437712-3-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260128062720.437712-1-krishna.kurapati@oss.qualcomm.com>
References: <20260128062720.437712-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDA1MCBTYWx0ZWRfX8vkCi1MV9he8
 L1vApmJCuWkL/RZtWzv96PclYBk+bZY56i+BJMu1OcwK621FnWCrUFXbFGgVU9P5yLNIMKuzhPN
 R64ybQ/4N4oogZgloKkSUbdEG44OIZ81uAKqJaqJk97WzOI6QT3GUEQzXyf1duJGSC2/OAMD9cb
 HxvmTy9aVn8JGPXCwey/+bkiyG8KFxN/Ygvy/rtdOgvXBbTgy0w/C3Q0KF2k7QL4l7hs8nBqkyG
 pz1/v+cmzN+/LFJnSauyC2CpYWlmW2tDrBHwo3ASMHEqRqr6gCy/fdHD9dWgiq+AOUDIheFiHNI
 cz5sMNbE73o1LHJAtel9PtAcASUBUE5Pf5FIxnQn1r4f36l3FjVwcoOIECWjBTV+L/F7KB/SwgH
 k8FHX7o8xG1coy1tDHTnWWcCzAeLcot9RXc/kInzGdpkO39HjqRgaLVJVWiucsJsql/vMUQI3Dn
 CmEBjGCswcL31VABHqw==
X-Authority-Analysis: v=2.4 cv=GuxPO01C c=1 sm=1 tr=0 ts=6979ac5b cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=TeXtiKqAHN7TYF9zc20A:9 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: eKYUNH67uEiCHofIfoGE1PHJAxgaOwKg
X-Proofpoint-ORIG-GUID: eKYUNH67uEiCHofIfoGE1PHJAxgaOwKg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_05,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0 phishscore=0
 bulkscore=0 impostorscore=0 spamscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280050
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260194-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[krishna.kurapati@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,a600000:email,a800000:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 73E8A9D6FB
X-Rspamd-Action: no action

USB controllers on talos are wakeup capable. Hence add wakeup-source
property to both controller nodes.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/talos.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
index 8b2e8d335d80..5e004967ae83 100644
--- a/arch/arm64/boot/dts/qcom/talos.dtsi
+++ b/arch/arm64/boot/dts/qcom/talos.dtsi
@@ -4539,6 +4539,8 @@ usb_1: usb@a600000 {
 			snps,hird-threshold = /bits/ 8 <0x10>;
 			snps,usb3_lpm_capable;
 
+			wakeup-source;
+
 			status = "disabled";
 		};
 
@@ -4593,6 +4595,7 @@ usb_2: usb@a800000 {
 			snps,hird-threshold = /bits/ 8 <0x10>;
 
 			maximum-speed = "high-speed";
+			wakeup-source;
 
 			status = "disabled";
 		};
-- 
2.34.1


