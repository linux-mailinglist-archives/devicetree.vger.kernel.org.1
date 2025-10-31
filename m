Return-Path: <devicetree+bounces-233681-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E5B3AC24BA5
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 12:14:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 39A13405B47
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 11:13:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BE44346FA3;
	Fri, 31 Oct 2025 11:12:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YU89bmQZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="c5AvPCUT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8047346E5B
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 11:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761909144; cv=none; b=fiDsmGSVy0oK1h13Y6r4JilLkK8J2KSxEuSh50Md+Q8iXT3nXEDnIr+pnLeobtXc4/95+5B1F331E6fnRqv1OJYcCGXnw3KeN6xM20CHvaN0HhAxvu1MjOBP4DfmU43hqGyWkm7c0akbzxlyqOF74c/5BWf9COR5j0ACJXKy4A8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761909144; c=relaxed/simple;
	bh=0ISk1zo5mbRe9LxvVD2vadNQhbkjLDQVBj/SNxnxtpA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=U4LTMW2KvrgCqa1HdvIaELJwZv5PCjAC4Bs0fwowCcxo9azUhtbwrDKNCu5ne6uiPERbu5WysBe8ybbLOrOj2hW07cLOZHIB96JjVO9myWOFZzbbxW2k6q12EeSuVTRqhw0fig08r7FopRWJ+DqUDAsxM8g2xTy2eWX+nS0lBa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YU89bmQZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=c5AvPCUT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59V4M3LX1827685
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 11:12:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	O9iELXAHflmw8+ZgJ3dYI+WWKiAnqwwPtj78oi+ZNss=; b=YU89bmQZEMxWYCcs
	m2QGF1NSck1KNs06moZqoX4eNjqBomt0mHZl0dPlGKEu4DjMAuwkUnB8Jm7unuGl
	7UHXviR+fTyR1IB9meaa3w9x27Zlfo2HQMjPrOh7jeXYUJP7CGGMqhbWEEpE/YvJ
	QRI3eILSdYFgtDHEqkslqZ2aUTVB1ohQmoUJ7Leq72NQfn9aE433aTPAsm+IyRhA
	6c/VQdFt2fKCEme3lIe4hUyL2Hzzh5Mz1B4q2fvBZVHFoMsFtEoTph+RkdKOwqs5
	pP+amidfsbdar0Q2f5Je1e/em6NGnUKXyrquQ0xS44uI9y2CKTSsOxbiClAhIPfY
	y5M9hw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a4p11s283-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 11:12:21 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7a267606fe8so1870757b3a.0
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 04:12:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761909141; x=1762513941; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O9iELXAHflmw8+ZgJ3dYI+WWKiAnqwwPtj78oi+ZNss=;
        b=c5AvPCUT68ycnqYPek/OVKPCk4TIk5G/SQeMdXT6t/EeXT9XMbbQumZvzXER2ZebSr
         IBIJ199hq+WUKAG73oGeiLcs08dosTJOVpZYBoJOxEsm1McD3nAmdawBPy06B6wPLXRY
         H1SJNwFzjJClJdT9K29YogYZekaVaIvYV+9RTJw/HykDxa/jFgrxiNHHTdTHoD88QOFe
         43FFSJg00vGNhieANFPTCowDFRrm8EnvRBQy/qRXuO2tZQp8fL+No4ggBAfIeoxfmHwU
         1fmq6+sSTm4sIz7zyoH294H0KLP9r3qfOSdm48hKxRLyNTPqocWnJIi6qvG3EoWL+30D
         NcIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761909141; x=1762513941;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O9iELXAHflmw8+ZgJ3dYI+WWKiAnqwwPtj78oi+ZNss=;
        b=wnVtrpaMreTVLmDA9w+sZIlyXfmBVL5rS+3O3RFtmTKreBYigL9HGgRCkYKvWOwZAv
         SD5kzqhSV8MiEAzayPZI399HeJg67asbKnuczHSZlt5jN8scHz5EAgYbDmDpN0EkHC/W
         Ko6DZ+dJWhAlW4DzSTrFjONqv7vumglL+Yr/Z0Jv1SlX4p38qeGWofT1C8+0R3dsXkbX
         lHRxztThVX6tDvHAVwSAZ3a8EoMezMCn8ySHDmyijmYFKLrOWLWcnIYYDekafivg9Oig
         hJMcf4bLXCsxC7/R5cFTtEvNiU0yK7sbwQ4RXvoOX5b4bJX+LiulgsArXHxIAdzDemBj
         AllQ==
X-Forwarded-Encrypted: i=1; AJvYcCXldWn+xQloyVPBdMcDE5r3VnqNgJUsM7kPBAdA0P9oztjZlhzTbEJ4GhND5+hubUjDkMlam6D6/pL5@vger.kernel.org
X-Gm-Message-State: AOJu0YxV/zzaoWP2EsFt5wRUrefmysA79IRIMm+Zw/8SM5jIk56muccR
	5TuP3BhEcJ8QyyeWVrdVaib7nRGnax8axv3kUM6i/D3tQg9H8xVirPa0YWFKtdY+Lpn9pBcWQMh
	R7PhsWrsNDy2mCxfc11T3ELRyHFlTcGj0VU6W9V5aT3HxorwcYPeaJ9v9EqVsPnsrOsGkxnDr
X-Gm-Gg: ASbGncs76LuwyXbXXMLQ9EZS/nh7SEF6l29O8sXUP5PCFAR+jN5CM5Xxvc7YoaFbwOf
	Lj7WjQNPJhiC1EEETy05+WWH0b7ISs8PmoqjqzbfvTLKFumhjOinFmOBNt+/siqYXcYcgbPCRFF
	HSamc7CaeAmko5uScpOF1FvxRbwF9a8sZuRDoPTUFwjpbQIapD/fcBRogcYmp6MVG0TDzzFROyo
	YgOij2k8zKBakLbRpQ2zAeNXrNT1tbXmXsTHWANQpJzIaYXm1IABNXT1zqkWcRQUFe9ePZytZlu
	AXF/CRrhQjgE4DyyQKDllx85JDUXTnw5JzTv8ZlvVaQSb/mP+1OT3oKliim+47DLAY3QpBoZaEl
	JSTzb53R882vsYb/1yJdIQej/HeTHX0HeRw==
X-Received: by 2002:a05:6a20:3d1d:b0:343:72ff:af80 with SMTP id adf61e73a8af0-348cc6e41fdmr5322003637.58.1761909140609;
        Fri, 31 Oct 2025 04:12:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGnhck3BWPobTsauAbQ5RwX/zIMsKhm0xVqeroOO6S6bRw9RLy4SQMcC7r20N/6kh+wagp+WQ==
X-Received: by 2002:a05:6a20:3d1d:b0:343:72ff:af80 with SMTP id adf61e73a8af0-348cc6e41fdmr5321946637.58.1761909140010;
        Fri, 31 Oct 2025 04:12:20 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a7d8d7793fsm1887363b3a.25.2025.10.31.04.12.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 04:12:19 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Fri, 31 Oct 2025 16:42:00 +0530
Subject: [PATCH v8 3/7] PCI: dwc: Add assert_perst() hook for dwc glue
 drivers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251031-tc9563-v8-3-3eba55300061@oss.qualcomm.com>
References: <20251031-tc9563-v8-0-3eba55300061@oss.qualcomm.com>
In-Reply-To: <20251031-tc9563-v8-0-3eba55300061@oss.qualcomm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761909120; l=1362;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=0ISk1zo5mbRe9LxvVD2vadNQhbkjLDQVBj/SNxnxtpA=;
 b=DYTOxZBqY+ft5pm96m+zZlUuvyl6F4tC+d2+Avi307pmsNbY4k2Vlyiua48R9m/gNntKVH948
 Bnd2G88RWIgDk7paaO5wcNL/phBYVyLFqkoK7njDArRWhuAKnU+CQIc
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-ORIG-GUID: 4CgFaxbvpSQyKbZBERLXZLAWopNbBHWz
X-Authority-Analysis: v=2.4 cv=RbCdyltv c=1 sm=1 tr=0 ts=69049995 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Py5lcOcq67Lbq8UMOfUA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: 4CgFaxbvpSQyKbZBERLXZLAWopNbBHWz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMxMDEwMSBTYWx0ZWRfXyY5e3uXH/7Px
 vBoGffMIQwsGmT2EldtDxYxa8hF7GduZVrpZm1LvdCeSAa8CpCyRgMDeoOOtsyMRvS0ERJJMA3y
 kLb4iNbJBTQXfUXhSSjV7N8DjIkC1JTzsRj2SVlvlA/vqn9sgkNYXSYmGlhxF1WeCORZVVlFx7M
 IMmAF/0ETQj5/yNb34rurHq3JYORO7Yz248MfczMo2/NBebbZM60NFlMt8GvZRQCb0ZurLg0x7d
 Vl0++MQVDO7FMaCp3Vv1YAi0/F83lKxvKBmk/a70AipwmjbsolYqDJc6Qb42I/aX0S9QdYQ855u
 u2bu9YKe+HwFUHT34s+XG+IHFNjbHprHjHZl5DszkL4vfBRq1CrN6t7PtPAje1muqNmnBmbnUf2
 /jGvqz+06bGTFmK+99e4Aym0+77Ziw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-31_03,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0
 adultscore=0 bulkscore=0 clxscore=1015 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510310101

Add assert_perst() function hook for dwc glue drivers to register with
assert_perst() of pci ops, allowing for better control over the
link initialization and shutdown process.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-designware.h | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
index e995f692a1ecd10130d3be3358827f801811387f..99a02f052e1c8410573ecd44340a9ba4f822e979 100644
--- a/drivers/pci/controller/dwc/pcie-designware.h
+++ b/drivers/pci/controller/dwc/pcie-designware.h
@@ -485,6 +485,7 @@ struct dw_pcie_ops {
 	enum dw_pcie_ltssm (*get_ltssm)(struct dw_pcie *pcie);
 	int	(*start_link)(struct dw_pcie *pcie);
 	void	(*stop_link)(struct dw_pcie *pcie);
+	int	(*assert_perst)(struct dw_pcie *pcie, bool assert);
 };
 
 struct debugfs_info {
@@ -787,6 +788,14 @@ static inline void dw_pcie_stop_link(struct dw_pcie *pci)
 		pci->ops->stop_link(pci);
 }
 
+static inline int dw_pcie_assert_perst(struct dw_pcie *pci, bool assert)
+{
+	if (pci->ops && pci->ops->assert_perst)
+		return pci->ops->assert_perst(pci, assert);
+
+	return 0;
+}
+
 static inline enum dw_pcie_ltssm dw_pcie_get_ltssm(struct dw_pcie *pci)
 {
 	u32 val;

-- 
2.34.1


