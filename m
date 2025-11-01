Return-Path: <devicetree+bounces-233968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C4E8C27717
	for <lists+devicetree@lfdr.de>; Sat, 01 Nov 2025 05:00:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C85F61B2135E
	for <lists+devicetree@lfdr.de>; Sat,  1 Nov 2025 04:00:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A234269CE8;
	Sat,  1 Nov 2025 03:59:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cr32YXH2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="L6nCXHB0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83CC325F7BF
	for <devicetree@vger.kernel.org>; Sat,  1 Nov 2025 03:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761969595; cv=none; b=fp4SHVb0D2xAPV69j8qtdWHkVoyvIOuLjgMku6wH0e5XONXuyFqvesIPJoN08bLdpzpjjdiIr7zdERX7S88FKnicJ4Nu0ABrTeRNP43tKvW+yuHKtSexjGnqB/JfzaEEUFYDsX+iUfKoZdGcq/6tU34aDKbqSIT28RTq1GyT6xU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761969595; c=relaxed/simple;
	bh=vSnGup2JudH8xVBPFB0jjQrhBAINf0wdJNrLvwKVmwY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jQEnkJsprJdAj70GJQFLlTOWoSmn/uv5N1ZSAg4s/MnTg7JMiVlNpElVJkodp8DyIO3nU9zOhkHn+6jeb2FBMIxTqoUneLPzh0o4CxgNcTWgcw/UbaYOXbB9SAqwkHC27IOBvLu0BllhnN73Q8QNn+2O5DmJsAcdTk+sfG1WNrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cr32YXH2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=L6nCXHB0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A10gdhU137440
	for <devicetree@vger.kernel.org>; Sat, 1 Nov 2025 03:59:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DkpQEOYIwWUftyRlBH6Rvb7+GGcnx4ZiE6KfmGnzrYw=; b=cr32YXH2Z0/tzkwi
	XUzVIASfAAMuaDUMLlJEROFCMwKVt5btOS6+iNSuB80VUuylsTDStnt5oXaqSA+J
	fPLMYFuDP3GfNyhXZ/FPoPj2wOJ1UaCu+BDOCxaTM73G6xy52i4Os6MXEogR4yu8
	uoB7L2O51Zc4LxchVbQEqdoFV41Sv0QVtcAyX/H37iSSj4eksCLUAfJ4fY9Bd0gm
	tL0CZmXDph6PQFbllNXCSsO8Wk+n9vvXQp3lRAladebYoJ13sNsFDgWgMr+yneGi
	VAlaJ8HbFIF3NScwqEYDN9CKlZ1f7S//5Gw+33Ff5lQlqGybOtFfTaTFDq/AVH7a
	9CS0vw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a57we87ua-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 01 Nov 2025 03:59:53 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2930e2e8e7fso28119395ad.2
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 20:59:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761969593; x=1762574393; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DkpQEOYIwWUftyRlBH6Rvb7+GGcnx4ZiE6KfmGnzrYw=;
        b=L6nCXHB0wapUl+zRSUhOjTWWfZO3g7C79enTl0/nj5CDBe4D8937UEq4z8myDaUTwX
         D2IhUxNLA8BjsJ4Y54bPTsDVnFc+VNsvTep7fqDjzaepUCvpckLUPdNAdlum50ZOdsTJ
         N1h/4iFPCNHxIlFVzqy84lTP4zW06EBCBGdmsUZhGbpMHHpFcCIPwEMOzB2Jc/Cy8nvP
         uTAelUTxghDR/xcEu4ntzIjsg/ilf58FIBz9i2h3PKAr1bzBRPFh4DDnU2vrZQG+wLOO
         Oe7A+22rABfhOTNQ6a2BEa2NjQcCgRI73fmELX8qWg/jEwy4zSn1/kHVPv/3mM5kKqBr
         nwMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761969593; x=1762574393;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DkpQEOYIwWUftyRlBH6Rvb7+GGcnx4ZiE6KfmGnzrYw=;
        b=kNaNiMZNjyU2V0e5DngDCxnzMGRMItJmdeWTErp12l4CuvOovyS5MJW8v243gGs7jR
         gbxQ7AQyqXHcPVXZM+wJxq+AUykPT2GY89B9Vyzgdmxewz01gBZzk+jST3Uf+rZ+sywd
         q/DGtczimPacCSd4N0J5fYVETExVI8htKLLn6cZzKzL43y3ptSaU7Lq8dtg3p9uLidA5
         tPc7dspa6TGG53n6PpSzQeV9Xj/1pm5oxXaBPRQGW+pUla4OiZ4RmS3wD1/mTH7ik077
         zUVP3sw9Ra2vCxEc5xHv7Bma5RxPlFAxz5zLMjwM2x0dcLVsDQUg19kvnabQ0EXG3yHS
         nH0w==
X-Forwarded-Encrypted: i=1; AJvYcCVNblHRVoXcEe1Z0XoYmknm6ZrY6/4dZIPL4n9fR1Yy1xQq6uZi1vRjzOe1s4JWv1XLLohk6bzTOl47@vger.kernel.org
X-Gm-Message-State: AOJu0YxeYFQWbBE0+mys/bQxVjvYioY5Tft0qW88D0RWSvT/0KS2F/Tk
	Xga12Wum2NgRjrGbPXT/QuNnE9uFKg2+aWqMNSrrWfyTM5RMlZ10j3eRqwfeFcr+eGstpdMAFiT
	givvjwxrkDZpYH4N3ejLrNqHsjQbTEoUI2bc0/DkyJN1P4pOQSg8dNN+4NF+dWv/j
X-Gm-Gg: ASbGncsnK+5eumhjJls+txVVu8LaBsikfBHJHTJd4l4E514xVy3MI/XfWosOvoGZKRn
	UpZOVYk/cF3r5duZVrTmkF2hiQY0DXh9l5EWGc9SwXWkDtLud7qGWepncJw7+IpJhL3x0TZJX0t
	4OnplmJYfs30Jcb9bLrFVggKK83MaKRaRsCW3k7o3Q54SP27SHMpxFlmo9guZYZmTZ9GOLZnl3j
	imuDFV76c0AMWWgqlraliIGhFyGy+L3iQOkOb/ExlHbUts9dGOHgUIExrAXbvNKdw/afKHQofDD
	QEGiVdAG4t/OA42BP6Vc9YSQ4O0EQMa5dSqXgye+vFNsGPv/Lw1WwKB4y8D6YEN29POaKcj9uKs
	ciMJ6+NnwTO7pO1NO2Iqlazf7WCZuPi7W3A==
X-Received: by 2002:a17:902:ea0e:b0:28a:8ae7:4034 with SMTP id d9443c01a7336-2951a3e2049mr73930945ad.25.1761969592993;
        Fri, 31 Oct 2025 20:59:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFwCqyKB3mpvsWxxw+JBQzmx/93xx7CP640Eolf60h4FSqH+JAV9+V70iDeHOfwspmHkbDUkw==
X-Received: by 2002:a17:902:ea0e:b0:28a:8ae7:4034 with SMTP id d9443c01a7336-2951a3e2049mr73930735ad.25.1761969592476;
        Fri, 31 Oct 2025 20:59:52 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-295268717ffsm41490725ad.2.2025.10.31.20.59.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 20:59:52 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Sat, 01 Nov 2025 09:29:33 +0530
Subject: [PATCH v9 2/7] PCI: Add assert_perst() operation to control PCIe
 PERST#
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251101-tc9563-v9-2-de3429f7787a@oss.qualcomm.com>
References: <20251101-tc9563-v9-0-de3429f7787a@oss.qualcomm.com>
In-Reply-To: <20251101-tc9563-v9-0-de3429f7787a@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761969577; l=1537;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=vSnGup2JudH8xVBPFB0jjQrhBAINf0wdJNrLvwKVmwY=;
 b=gut1hfiDLkSs+kqWQ9M5DWLQy9Nba7OE9UxTj038maNYm6R2rUxuL983XoTMVhFN62jj0tCvo
 EgyDQ/kmYYBC/udv5VPWSYOB8p87FySkLajH5B86xv+INa/e4SkMETm
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=M85A6iws c=1 sm=1 tr=0 ts=690585b9 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Ocqi7cVID08-S0eeb-IA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: 59k81TPCsEJYjZ6Z7sgGYJ4g3tQ_rB-2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAxMDAzMCBTYWx0ZWRfXz3+D77oQrmKd
 TbR+fhXY8t58lPS6wviCyipfmfiytrEOeslPca9KWAUsQhlC1amP7Vmpl6dGPC5s8eurxnG0OS2
 AlCR81O8/vcP8UQw0bHAC7qgSMJw5HKSCuYrJo9DEdmJ3F/sKr2+/QAUP8C9WbCD37ZUTiGJmPp
 u7vxvi/a8oM+u7ppuFp5aNayTviOM+El9NtHMFkyVoAuNSmSBqophHxZehb6dNFv8XiICEtt70U
 /hcK0qKZ1mMvhYyvLeM4chrY6cRs5E2G4b49vEXceN4Wx/Cqy9fKzKxJbtosy3k6AT63A320G1D
 WJ+5w3mYG3AZEC5h/voTPFUwpJBMLWnsyC3J0JQU/JXYEQdRKag3MXLPRYwYd6cqjySlQnflkTC
 HwwwH7SZyrkvl60HAps2XkPsM5LuGA==
X-Proofpoint-GUID: 59k81TPCsEJYjZ6Z7sgGYJ4g3tQ_rB-2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-31_08,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 malwarescore=0 bulkscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511010030

Controller driver probes firsts, enables link training and scans the
bus. When the PCI bridge is found, its child DT nodes will be scanned
and pwrctrl devices will be created if needed. By the time pwrctrl
driver probe gets called link training is already enabled by controller
driver.

Certain devices like TC9563 which uses PCI pwrctl framework needs to
configure the device before PCI link is up.

As the controller driver already enables link training as part of
its probe, the moment device is powered on, controller and device
participates in the link training and link can come up immediately
and may not have time to configure the device.

So we need to stop the link training by using assert_perst() by asserting
the PERST# and de-assert the PERST# after device is configured.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 include/linux/pci.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/pci.h b/include/linux/pci.h
index d1fdf81fbe1e427aecbc951fa3fdf65c20450b05..ed5dac663e96e3a6ad2edffffc9fa8b348d0a677 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -829,6 +829,7 @@ struct pci_ops {
 	void __iomem *(*map_bus)(struct pci_bus *bus, unsigned int devfn, int where);
 	int (*read)(struct pci_bus *bus, unsigned int devfn, int where, int size, u32 *val);
 	int (*write)(struct pci_bus *bus, unsigned int devfn, int where, int size, u32 val);
+	int (*assert_perst)(struct pci_bus *bus, bool assert);
 };
 
 /*

-- 
2.34.1


