Return-Path: <devicetree+bounces-232679-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 827C9C1A113
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 12:36:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D5107502810
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 11:32:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FB0E2BFC9B;
	Wed, 29 Oct 2025 11:31:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QZljZNyU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="US/z6kE0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38050340DBD
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 11:30:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761737462; cv=none; b=qT+/ZozDQi3odYCKlqrNTCSIqoWMsGwSDOFl1oJ1+e/fGPmuLYu1I41VYiun+wc4HFF4hrrWLFqJVNZGlGZ5tANmwJIINHMd48ueDuJ80JLMvRpDMq2kmuk4xKVHSh7W/3H8s3JlrImV+d9MFKNoY2NT3SK4WOvFrb0oU2Es5HM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761737462; c=relaxed/simple;
	bh=Qp8Mmp7bx4J2E1JhmAOqVGzqZtEIMBaTUoGYrEMgWiU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=s5kVnfhxd8u2j7DeQq0gG/bupitzyyPfHo3NECpFIm49CsKJl8Zbt8o6HcZuBoZ+5uzfGglcPMhBZT33inii8//mFFTC77u2m94hd9QmutmFzgrhixsdh7kWVXFM5joNI2l0SDREIudxQI+tBsZPy9sPyLj9Xd7XNm0QgroxU7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QZljZNyU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=US/z6kE0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59T4vCEY3664310
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 11:30:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lgDEHTIbutVCIfjWEkDZtgrQs+c3+lk079qYfyA3JzY=; b=QZljZNyUqyObmm+B
	Qo6Fma1Hu1xbCpKQZ0eVPDgipFqom3gbmpHTpBw/zPpkmQoH301GgSlA8tnNmDM6
	/JQmMCAaHkfr/Kgwh15zqzPrj7a8R8hTU9J+xzjH4oOV0wr8/1MFntHOd+wBayjI
	j0Z5kTgnIQR8qeJMsM3n6UvfBL+Pq4RmWDUuheuKU9W4hSL4+HeLNSf2ivvTTm0M
	O8Lnqkyaxf3MhH6KIyQ6+JgeFkKmEGho2hEr536ttLUQSrskLUhfU2/+PRS4XTnk
	GykaEKE+qfuA54bvidcRYIDsK6bul8bCyXQbSroANjKefF7Dfk1z+hcV70eoJhlI
	bV4pPg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a1taae-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 11:30:51 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-290b13e3ac0so64368145ad.0
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 04:30:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761737451; x=1762342251; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lgDEHTIbutVCIfjWEkDZtgrQs+c3+lk079qYfyA3JzY=;
        b=US/z6kE0hIWTJf2dc/ZzkRliEIrDEsAZfNZ9wsyR336wsZr5A2G8WaO4sUwpR2eeUU
         f9aV4SbIhPWK4Z3CSXNDaonDt7A+nyZXeZ3B7mgaiFd0Pb+r8d2AAPVqzJ8FuqBJzOSf
         HOM2D2da/coTQ+EFwUHrcO48ibeRfPixNS9uFHR8Tfy5iEmuD7xOUF5N/9CCFDavF6wN
         lYqtKU+JUYrWGXV2bVWAShfgf2bnlwTmipllY07Vco45eg+HLb9r0qxA3fWtI45tEzYx
         NTAI/TW0j3iSahsL50tvkqgI/F95PANRqC2GdraySUY88qFqNBHpiYiQyP+f0a8ygVfb
         4i7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761737451; x=1762342251;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lgDEHTIbutVCIfjWEkDZtgrQs+c3+lk079qYfyA3JzY=;
        b=ZZvhtMrQyYQ/GuOh1kquxbE68wwR2iTCeLamkJuz/s+6WzN/GiyAd68eS9+UAPbOOl
         UW9IQAjycz9npLuiJgL0ajsPSsbPcUQp8/IN8umcuIdz17CkK/tWVJAvZIp6O5OcAily
         NJfbcBS95s03cmUAX0Juh8hL4Ok0poa3ZQ0PrqFwqZhfvODKtIRKPNHEkR97JTngR+Ul
         k2ve213y3d4wVU3pcUhZ5jerOxzraNjfiTmEyJwF4HKC1AbotaX0xxrZ0Srs5mIy1OPt
         MfllPNwXi8BD27NuABKplX1ofuHwcuhyMqPC0/Xb3Rfq/e2B9NewFirMwJGY24CENVUt
         NsQg==
X-Forwarded-Encrypted: i=1; AJvYcCUU5REcJWjb0lH3P8A6LH+JNMafpnoAw5n5UbQRsC/5FzXx8LEqGitZ8JNEVllqw1GhK1gflmHepZlr@vger.kernel.org
X-Gm-Message-State: AOJu0Yyw0DTMta4O778XjNzzPLt4NGYXvBpX5Qn/Be8q/ZVMENnFRsg6
	ejS2NKasgL08K2DjvXM2dLTM6t5BqYDfWwMCz9s2FIh8XdqnMz1lE/GV/hI/ygCfDmS4T9VM10D
	1NLgdHjNxo+E//NsNmHJaCGt01vlFK0/pJk71Qiqy+boTM7mw8jr/2GvGulXw49eF
X-Gm-Gg: ASbGncuLv7UZ5fLJR81K1fFbd9z9MvoWTjYunfJz56oKhwl2UqTda0XQRHcEzNvdXJu
	1m9yo9n9cw/3PTuHvdMx8crQMowRczMMMjyZsp6s6TH3b9kAO7oRlKkwaclnEAXoQjPEr0tp8RO
	d6oaKsvOwuDafPhqXLteQGA981zHywwTg56vimOXLG5mHzlj7B1vG6YKiRqXMlxv2yJXv9BjOtJ
	mOvZx5YmwuUBXYGRbiy9nmb4OnBr5BqEBYyIWRhpl9VUBw23GAmI2SKcCgdz71LqPqETkLkXbI1
	R2H6Z6qM/M3MtcdXOK4zArTyFE2c9dCtcPhldLCv5chzM281hxHCGgpIODDdh9NYNQqsF42KVWG
	UXzxqH1ve8YOlhIcKukMhi5BRpoHsbcqh+A==
X-Received: by 2002:a17:903:1209:b0:28e:681c:a7ed with SMTP id d9443c01a7336-294deec8d5emr30915715ad.36.1761737450411;
        Wed, 29 Oct 2025 04:30:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFyBGfitnJb5d72matMvOP9OSygmcBCg8ayvZYCaCiH/ZIAXmdr6Ioo8zux7z78Nl4JrVJz4g==
X-Received: by 2002:a17:903:1209:b0:28e:681c:a7ed with SMTP id d9443c01a7336-294deec8d5emr30915215ad.36.1761737449747;
        Wed, 29 Oct 2025 04:30:49 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498d429c6sm152154935ad.85.2025.10.29.04.30.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 04:30:49 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Wed, 29 Oct 2025 17:00:00 +0530
Subject: [PATCH v7 7/8] arm64: defconfig: Enable TC9563 PWRCTL driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251029-qps615_v4_1-v7-7-68426de5844a@oss.qualcomm.com>
References: <20251029-qps615_v4_1-v7-0-68426de5844a@oss.qualcomm.com>
In-Reply-To: <20251029-qps615_v4_1-v7-0-68426de5844a@oss.qualcomm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        chaitanya chundru <quic_krichai@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Jingoo Han <jingoohan1@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: quic_vbadigan@quicnic.com, amitk@kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, jorge.ramirez@oss.qualcomm.com,
        linux-arm-kernel@lists.infradead.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761737398; l=898;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=Qp8Mmp7bx4J2E1JhmAOqVGzqZtEIMBaTUoGYrEMgWiU=;
 b=oS/tFzkDw9Orhio33EJ56o8TloT8Jc3fUOBu1nVbqbG1oVR33d72oI95HFn7cfImCLcd3tDqi
 X/CyxlbjwjxAYLVNF55aHWSDFgcqTQF0hz6Ru3wb+KN2ZiETXSXA/II
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-GUID: RGZ1SHaXsoCmD3R7Z7U34dgqtSI8blMl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDA4NSBTYWx0ZWRfX768thzm0NJhn
 lfp6wROIIe9AFuw+Yda24VZJyyaNLClyQR+qDJMdsRJqy4k8WNq96ZZF5geEejxAJ3r+1TQBI4i
 1LYrRX9FUIpRpGZ8ZEHIezf/9EydreWL2mNMfeLEgSFXmGioaDNRCKX3szUWudxMd6czKWZ0ZNg
 DeTnpEleZMyQIVReJBLBlIEijmtIOFhO2VMNt5Hed5Gp9HZJRMyeTexN2sZgZST4lctIhF/TnLa
 Wa1tP2UvPLFYt/HGfCmlFHWDFXU23w9CwpuIkzHxYCh2h+5DYC2B2AcveqDywg4D/PRjEV7Njbo
 E/x6M8Ru3Y+gLr7hg+n3s7Z1tIkGuZVRUCEp2i7Vh6xapMkAd05+YNBkKpMXmTb1OlbIswW/7MH
 rz61VMKTLMyQuBpnmbrWjQxq/RVl8w==
X-Proofpoint-ORIG-GUID: RGZ1SHaXsoCmD3R7Z7U34dgqtSI8blMl
X-Authority-Analysis: v=2.4 cv=UObQ3Sfy c=1 sm=1 tr=0 ts=6901faeb cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=5PcvmwL3LSb495PBagkA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-29_05,2025-10-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 phishscore=0 bulkscore=0 priorityscore=1501
 spamscore=0 impostorscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510290085

Enable TC9563 PCIe switch pwrctl driver by default. This is needed
to power the PCIe switch which is present in Qualcomm RB3gen2 platform.
Without this the switch will not powered up and we can't use the
endpoints connected to the switch.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index e3a2d37bd10423b028f59dc40d6e8ee1c610d6b8..fe5c9951c437a67ac76bf939a9e436eafa3820bf 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -249,6 +249,7 @@ CONFIG_PCIE_LAYERSCAPE_GEN4=y
 CONFIG_PCI_ENDPOINT=y
 CONFIG_PCI_ENDPOINT_CONFIGFS=y
 CONFIG_PCI_EPF_TEST=m
+CONFIG_PCI_PWRCTRL_TC9563=m
 CONFIG_DEVTMPFS=y
 CONFIG_DEVTMPFS_MOUNT=y
 CONFIG_FW_LOADER_USER_HELPER=y

-- 
2.34.1


