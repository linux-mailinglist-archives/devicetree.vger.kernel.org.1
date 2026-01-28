Return-Path: <devicetree+bounces-260488-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iGXZH70vemkc4gEAu9opvQ
	(envelope-from <devicetree+bounces-260488-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:48:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 94605A4704
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:48:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4DE1C3070074
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 15:37:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAFA82DAFD5;
	Wed, 28 Jan 2026 15:37:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iPmmk9am";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="U8QjRtNy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549DA2D9EFB
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 15:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769614662; cv=none; b=jTUsttDvQdOnK6wJgxGYERdhvwkc4i4Q1u/m97OoB3B+gNXHeHzBKeDCW4PVKuF4W5Hf8G1hQd/Uo+RwBLt14acKNfw6kIlF2PGE3aOHAMutFGy40wZRdIa5eMxdb6KxMS1ndTz2yMiqixbOA1CkMaOXa4LHaWKYacSrfTi2QOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769614662; c=relaxed/simple;
	bh=YuCxHRB5eTOlGHlMzqnyfdRTTWvaCTT2XjDgLQEJT+s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=S76BPZ+ugD4OYBOqnAPeWkL6SDKf/EBVLXBJRREWq4pdf2pwoF7DEyM7USClBwTjJ16/hJL6a3EmID6jgBlsguPk/f+L+AcnGFnvS1896++BjFc50NwKFWZzLw2vcJG11BadvmQL+htv7c3DHa6Puds5LOH5xDk9f+oF3C3qgQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iPmmk9am; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=U8QjRtNy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S92c6Z041997
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 15:37:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Sc2/NUEJQWTjoAzk7P9Fi/Yxp2R55mEpExCaYi6v6J8=; b=iPmmk9ampmWxdwJq
	sbCArtrabrXIrv1erJL9Z4OVEFvYczjjr2eus8gWkFBw8HCuqxwVtiRgYgpwY+Ve
	vZdFdo06BVgiB17ait2twrtQlj28vha+UubHpr1RVAeLhz5G8xA5jwrcV5WFuRng
	2KppQE8Q4Nc9yPPxYKH4s+50JYBuI5Sd569cjT+UxLU/GdJYyVbkNVFE8jBv/btn
	UrBUzDifp5aWRIyAsMmII5RIoG6ucPZMAprv3omdgHmviARCxZ7v6n1/sHQZpbm4
	zZtTVmknyTKMDdhiKtWEMBQkfyhwtOZqK/BfMVui99W5yxLjojwhNcNg2TgzII9b
	/ZtNxA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4by355unx3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 15:37:40 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a7a98ba326so14240995ad.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 07:37:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769614660; x=1770219460; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Sc2/NUEJQWTjoAzk7P9Fi/Yxp2R55mEpExCaYi6v6J8=;
        b=U8QjRtNyCIshocwH55IqkrX/ZpnnO9XrvzOlVg0cMyjPFH01Hj/YFeKdQJ50WMQoge
         UMLcs/n8BIQNr/xnLX6VoK42uKErhMnMDSWW/tP6iR33Rc1ZfcGawct0PoMdCa2iLa4r
         oG0UxQ/w/y9uqKoOWoUG2ev4KJlJdiQJjHU5OaeBCXEowWKUhUyee8RKRjPWE/0CsQR1
         vwcLD6JHkewKisNVHIYpXuGBnuftCF4Efs0FcojqP0ClfT6pan5VP4u0qWZLSEJkFtK2
         fhd/JEa7tfPlGefXKM0bHGVf/PO3AJXrDgSLwfiNqCozylTmBS2puHe1CCX32IBTPOSs
         o7dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769614660; x=1770219460;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Sc2/NUEJQWTjoAzk7P9Fi/Yxp2R55mEpExCaYi6v6J8=;
        b=qZrNtO5QtZsT+yir46WIoWZ2crqsa5PMXJ6ZRH6HY2QMQXafTtVSwheRUXey7hWXTu
         5IVttQN2r0897lOJAxpJhQgzS6An8U2HaYYVxIRzhZbhcQWI1dP1hYtahmbVhMH0QLY4
         9UN7kFUTOsdO7ql/3VhdE9OcrD9IsuFCZHUk+I1ZaReGxMkF2opnHKhe1sBzzBusqMkR
         NhKdQ0a+1o28jG4ljORpik/wK1DXqW0AiZ5qqobQjWLf1AfrosBOcFPNrn6IauT8CDqv
         E5hqs/TLJGjbPoVileTbLW+Soee7MsaFc9zXh7WHXEdFs7ZsJUawbuSs8A2qBosv4F1j
         vbPw==
X-Forwarded-Encrypted: i=1; AJvYcCWtAfSPW+nZhpKiseBlwElenR3Gf5JS7IMkPBW79doc0Aj1AckVmg1zNhW9WRbsxdZMEruxpuYc5dLg@vger.kernel.org
X-Gm-Message-State: AOJu0YxKhOL2ciWST0ATghaVTyR6gTYqwYG7HiWdBgkz1QnBGDqKwVL5
	fOBM7H+S34C7oG+yVRfki3cz7tqiWd/ozUfNmzcWpVlmGJmUjxikRBh8Obbw1PU0gujcxozuUH9
	xWamrk1zN1IEa5lueCo5vPwWYQsIBLkls+n0h7N56Owt7WHYG6S77LYSuGNn7LJ94
X-Gm-Gg: AZuq6aIVKslJ3YEGh67ivPECzHUDGKFdGamTHPrwGVeuba4x/XgB4qrXKByrbHxIPNF
	wSZflhsLZ4Ncjcs2kIpmyzvKmW3pat4Uxp6KUx38L89tLFh3RO85QNAxTSu5J683Jvi9xOAr2U8
	NawHlJtRsXog1NHBOs6u8UJm1F7Av7GglNTYeHaMIkuK7oBV+ea61Sv7Xm7vNyC1rwrXnbNTWrH
	sTWM0JEZv8NxGhcIKNSHDw47W0enM224WGxeGjl40u/RCL/RnItsVcVKTLji69Yes1izjXoOfbE
	xnc4Jw5cJkUzO4gEuuZNTPGExdpsXTXyGMSvaw2mJP97HwqwsUUm+LuJ5Hgab4ZBde0UVJnGB1l
	Lv7QSKUJ1GLat2/YhD+oac9GrnFIwbK5GVHXg8w==
X-Received: by 2002:a17:902:e74e:b0:2a0:fb1c:144e with SMTP id d9443c01a7336-2a871249903mr58411275ad.7.1769614659778;
        Wed, 28 Jan 2026 07:37:39 -0800 (PST)
X-Received: by 2002:a17:902:e74e:b0:2a0:fb1c:144e with SMTP id d9443c01a7336-2a871249903mr58410585ad.7.1769614659076;
        Wed, 28 Jan 2026 07:37:39 -0800 (PST)
Received: from [192.168.1.102] ([120.60.55.34])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b3ee98fsm26371725ad.9.2026.01.28.07.37.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 07:37:38 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Date: Wed, 28 Jan 2026 21:07:15 +0530
Subject: [PATCH v7 1/2] PCI/pwrctrl: Add support for handling PCIe M.2
 connectors
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260128-pci-m2-v7-1-9b3a5fe3d244@oss.qualcomm.com>
References: <20260128-pci-m2-v7-0-9b3a5fe3d244@oss.qualcomm.com>
In-Reply-To: <20260128-pci-m2-v7-0-9b3a5fe3d244@oss.qualcomm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Damien Le Moal <dlemoal@kernel.org>, Niklas Cassel <cassel@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Stephan Gerhold <stephan.gerhold@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-ide@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=4156;
 i=manivannan.sadhasivam@oss.qualcomm.com; h=from:subject:message-id;
 bh=YuCxHRB5eTOlGHlMzqnyfdRTTWvaCTT2XjDgLQEJT+s=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBpei01fAplyLyNRf11V0pBcb7WhCsGPDRbQBrwz
 3fog/SYMJ2JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCaXotNQAKCRBVnxHm/pHO
 9RnoB/4n85PkHzIS1q/BTcCI2d/fLPeKMN2IX7VAG+fERBkkMkctcVvhO0CsrUjC6mhZtfHE1tz
 yBnNqApasY5ptGy1fSEXChLYZ5z3rVoSehTpZKvgiVPiyvsNkVhO4n+YrTGdaf0HZ/+g/ir3DJv
 7b5IL8wE6ZKr4tk6NWfYbSlaCFF3YUSfUful6Q+Tdjgp4zZQiS/Vj7jnkWRdu4fChceYi11jKli
 C6nqLif0pr1fuuUAI3dr+mHCm7ctbNFki5RP79OIm23Jgn5xmM61uhJx08mPoQIumllUVj1pkdr
 IBcziRiCrjRRxIz26WDrKAloo9yQ6W+xdRdxvTx87fHI5CrV
X-Developer-Key: i=manivannan.sadhasivam@oss.qualcomm.com; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-Authority-Analysis: v=2.4 cv=YNWSCBGx c=1 sm=1 tr=0 ts=697a2d44 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=F3mjE3T3/ow0zpRzCzjSvA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=PM17ATdnGC-R3TcMHX0A:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: MNG7AEmz6nR_ZesXobirpJxC4Sq4KsQD
X-Proofpoint-GUID: MNG7AEmz6nR_ZesXobirpJxC4Sq4KsQD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDEyOCBTYWx0ZWRfXy70OC02I0vPn
 RNjXr7qQb1OuNF5dnG/2ZzwX+zXtelJlp6+z40ZxEKrZi6sGfzrSI3k4dP837BKg+QwcEZUOaKK
 fg/QHP8C/1FEC9DsvVrl9d7D+pgq7Vl+MLgi/LBd3z6UJUwPSpCF/gKjGtL8xUBlj3XNpb9GgSa
 e9LM3z6Be6w3aMxaxSbZQ1w/pziw8CzbP/P95OyAUkVcmlEKvSoPECLLHSs42h+a4hGqvp4bc0e
 kE+UNBNTWAzg/eprgv9Uqbs7xUJbK8GBBelOJ3DEwFQcKGsjIDnyeletJBjEuL2IFtR+QkhLUmm
 7L8M3Jc3A2UA8OXAE84FclnNVADd0TNJLS3phqlFcdcGejIfkVO1W2L8PoOK3g41F1q2YXz17L1
 3GtKng9UMyEqSJOBINjEoZiKU28Wi1/MCs1hXs7JANllDcSojaFBKJn8LStrwNi6+1Q+G4FNDb5
 +VzVcedhO/gwtVm33ow==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_03,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 spamscore=0 impostorscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280128
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260488-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,linaro.org:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[manivannan.sadhasivam@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 94605A4704
X-Rspamd-Action: no action

Add support for handling the PCIe M.2 connectors as Power Sequencing
devices. These connectors are exposed as the Power Sequencing devices
as they often support multiple interfaces like PCIe/SATA, USB/UART to the
host machine and each interfaces could be driven by different client
drivers at the same time.

This driver handles the PCIe interface of these connectors. It first checks
for the presence of the graph port in the Root Port node with the help of
of_graph_is_present() API, if present, it acquires/poweres ON the
corresponding pwrseq device.

Once the pwrseq device is powered ON, the driver will skip parsing the Root
Port/Slot resources and registers with the pwrctrl framework.

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
---
 drivers/pci/pwrctrl/Kconfig |  1 +
 drivers/pci/pwrctrl/slot.c  | 31 +++++++++++++++++++++++++++----
 2 files changed, 28 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/pwrctrl/Kconfig b/drivers/pci/pwrctrl/Kconfig
index e0f999f299bb..cd3aa15bad00 100644
--- a/drivers/pci/pwrctrl/Kconfig
+++ b/drivers/pci/pwrctrl/Kconfig
@@ -13,6 +13,7 @@ config PCI_PWRCTRL_PWRSEQ
 
 config PCI_PWRCTRL_SLOT
 	tristate "PCI Power Control driver for PCI slots"
+	select POWER_SEQUENCING
 	select PCI_PWRCTRL
 	help
 	  Say Y here to enable the PCI Power Control driver to control the power
diff --git a/drivers/pci/pwrctrl/slot.c b/drivers/pci/pwrctrl/slot.c
index 44eccbca793c..082af81efe25 100644
--- a/drivers/pci/pwrctrl/slot.c
+++ b/drivers/pci/pwrctrl/slot.c
@@ -8,8 +8,10 @@
 #include <linux/device.h>
 #include <linux/mod_devicetable.h>
 #include <linux/module.h>
+#include <linux/of_graph.h>
 #include <linux/pci-pwrctrl.h>
 #include <linux/platform_device.h>
+#include <linux/pwrseq/consumer.h>
 #include <linux/regulator/consumer.h>
 #include <linux/slab.h>
 
@@ -18,6 +20,7 @@ struct slot_pwrctrl {
 	struct regulator_bulk_data *supplies;
 	int num_supplies;
 	struct clk *clk;
+	struct pwrseq_desc *pwrseq;
 };
 
 static int slot_pwrctrl_power_on(struct pci_pwrctrl *pwrctrl)
@@ -26,6 +29,11 @@ static int slot_pwrctrl_power_on(struct pci_pwrctrl *pwrctrl)
 						struct slot_pwrctrl, pwrctrl);
 	int ret;
 
+	if (slot->pwrseq) {
+		pwrseq_power_on(slot->pwrseq);
+		return 0;
+	}
+
 	ret = regulator_bulk_enable(slot->num_supplies, slot->supplies);
 	if (ret < 0) {
 		dev_err(slot->pwrctrl.dev, "Failed to enable slot regulators\n");
@@ -40,6 +48,11 @@ static int slot_pwrctrl_power_off(struct pci_pwrctrl *pwrctrl)
 	struct slot_pwrctrl *slot = container_of(pwrctrl,
 						struct slot_pwrctrl, pwrctrl);
 
+	if (slot->pwrseq) {
+		pwrseq_power_off(slot->pwrseq);
+		return 0;
+	}
+
 	regulator_bulk_disable(slot->num_supplies, slot->supplies);
 	clk_disable_unprepare(slot->clk);
 
@@ -64,6 +77,15 @@ static int slot_pwrctrl_probe(struct platform_device *pdev)
 	if (!slot)
 		return -ENOMEM;
 
+	if (of_graph_is_present(dev_of_node(dev))) {
+		slot->pwrseq = devm_pwrseq_get(dev, "pcie");
+		if (IS_ERR(slot->pwrseq))
+			return dev_err_probe(dev, PTR_ERR(slot->pwrseq),
+				     "Failed to get the power sequencer\n");
+
+		goto skip_resources;
+	}
+
 	ret = of_regulator_bulk_get_all(dev, dev_of_node(dev),
 					&slot->supplies);
 	if (ret < 0) {
@@ -73,19 +95,20 @@ static int slot_pwrctrl_probe(struct platform_device *pdev)
 
 	slot->num_supplies = ret;
 
-	ret = devm_add_action_or_reset(dev, devm_slot_pwrctrl_release, slot);
-	if (ret)
-		return ret;
-
 	slot->clk = devm_clk_get_optional(dev, NULL);
 	if (IS_ERR(slot->clk)) {
 		return dev_err_probe(dev, PTR_ERR(slot->clk),
 				     "Failed to enable slot clock\n");
 	}
 
+skip_resources:
 	slot->pwrctrl.power_on = slot_pwrctrl_power_on;
 	slot->pwrctrl.power_off = slot_pwrctrl_power_off;
 
+	ret = devm_add_action_or_reset(dev, devm_slot_pwrctrl_release, slot);
+	if (ret)
+		return ret;
+
 	pci_pwrctrl_init(&slot->pwrctrl, dev);
 
 	ret = devm_pci_pwrctrl_device_set_ready(dev, &slot->pwrctrl);

-- 
2.51.0


