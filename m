Return-Path: <devicetree+bounces-140735-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 31BE5A1B34F
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 11:11:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 64BED165DCA
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 10:11:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8E57219A68;
	Fri, 24 Jan 2025 10:10:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WX6Y35iC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1786D21ADB2
	for <devicetree@vger.kernel.org>; Fri, 24 Jan 2025 10:10:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737713458; cv=none; b=qG2nnqXbaovc/1hgAbdNV+/+GZ9lrAFh9lY5SH6APD7DXCDmK85c6t74Cayt7T8MDTOr4/BnDoYH6JxYm0H9vrIC21+0rxzLvZJV1TuSd1w39qhzQbZyIT/pPWYkzQ1p/H3R2U8/bOqTkYiTGq2OpClFN8uMxteXrbVA3usdk14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737713458; c=relaxed/simple;
	bh=n8LBnxrDnBbcUXm/xD+VonYiva2MgEDrR8IbQUCoyGs=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=aeDXAUTMo1rQD2FazcM7bk+JKRI1GRO3I2oihjW/GB+3vu3o3CdHWKfygihn3RmBURf9A/QCzAoBYKbjFjZK6TaT18evxWSiAmvuWwM4UoikQ4Ofj6GXRHLYjNhRORPe+iZYJdGsb6YrjCiEeVS3VmCdJtij9Vz1CiyvQ4wFshw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WX6Y35iC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50O5TgF3027233
	for <devicetree@vger.kernel.org>; Fri, 24 Jan 2025 10:10:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=9NBpxVg2cBMC6znT9WBrpS6Wfd6zoznAlFR
	eZfrgsW0=; b=WX6Y35iCRJ8/LvrXYDqlJCfCj7r+rLn8ReP/VSffq4OFX3SwVHe
	bq6e7BWdsF8Whxad1gXrDRpxfJAuGoGj0ASKw+cZTuhOn+/9koP/WfgbWCoi4Orn
	c/scdESldRhWS92qKXsODagUditLe6itiKubJnL4NKB9u8lj5ELhroQxzl8aQLvI
	p8H9QwYAufpbhHXHWogODApmlR+Ipnpip2wDumMcmM/gB0PdmSl8Q9qguZfYoRKt
	5vYs21/oVoqXcz/qopjm21DItjjWvpwIfWiTvNloLLuxbHpQKQLvtY9oZYfvb1fH
	1S3HJb3x/frHGtSZVMwQ50tcxX8Tei3tMeA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44c4rngq1w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 24 Jan 2025 10:10:50 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2167141e00eso42102355ad.2
        for <devicetree@vger.kernel.org>; Fri, 24 Jan 2025 02:10:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737713449; x=1738318249;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9NBpxVg2cBMC6znT9WBrpS6Wfd6zoznAlFReZfrgsW0=;
        b=CKoz2hX5Sa+84ZTOdO1ugyQP6hToSYQWCYAptzdIyhf9s0WlOruUlB5Qc1CPfIMo8u
         R0XV8Apvl0wavz9HLnfMY6Mt/+LGdUMTUBh4e/MdZaEDoZ2BBhPeNJyh0ct4kAekyYAu
         X1ObVeN8vpW6TDzV+7HeuBraAvMfLnRzF+QtxprTU9nKHsnCyqcilcHR7LYpS9bWU4O7
         /G2Qfpm8/L86aASAjEFtOGHJQzFVPdb2TkEKk9zN3nT/pM9ku0wbJlTk+XWmVCJH+WEJ
         f+ya5u3yiYcZjYeTVBLWcafOAQWpI+nYFM2R0IDJjhcrVU2EaWeSYv8SIyNQ86TxBh2S
         LzfA==
X-Forwarded-Encrypted: i=1; AJvYcCVYkSiIOvIiRFmFNY64pM8NyYkTB7qkCI5UMHlQlb2JALfW/uXZhzcqv7DoQvo3LeUusjob1WLqoxfR@vger.kernel.org
X-Gm-Message-State: AOJu0YzOHxJ/ZZhay9QgkxT/RG8MleBjwYevEt/5sYrIu9k/mYsZRJ2m
	8G8cTpXE8+eE5ShhOeHKvoaWIuZt7RMEUkHr7C7mQPx0IByseC/DdsyQZ5hKpMw310rtVInAflA
	8QRjWwBv+sIEPNNZc7I/jZfuWEYjxin4MlyGaak6kWU5a0g7zYPPanUCb2xMV
X-Gm-Gg: ASbGncs2xmsjs4p9uETME71fJXonva3l2GkX8NE1IUK9QuP0lCLZm/1rym0QvyhtELz
	AVrbUvnDAq/kxv+H80xa2n9Jk21jegKhxfxdWDs3STQjOWUkARY2VlmebFy9SCRP62911RaFedg
	5NGyBP9NN9wuTZnicTVJvu4Iqm+0p17B38y4mRq5yL2tEu3Zx0F64tFYljPibxxAvwTac38PLPE
	lmFu3ER5XpHPynlijrNs5KSOUPXLU+63spULka3+8OFldr5GmBlIWyuH5EHjfDPHeqUlTKKKy1+
	LZ+IzJdCBzp8uQ+Y+wbn2vxG/nZU8w==
X-Received: by 2002:a17:902:f601:b0:21a:82b7:feab with SMTP id d9443c01a7336-21c35594fd9mr441785725ad.33.1737713448967;
        Fri, 24 Jan 2025 02:10:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGABoegU/H7TpE+0qoZZPoBSDODBsyYLWoLVFOYvGbOKcXuJH6boH3o2G7cWF/3MfuPx8Cbvw==
X-Received: by 2002:a17:902:f601:b0:21a:82b7:feab with SMTP id d9443c01a7336-21c35594fd9mr441785265ad.33.1737713448598;
        Fri, 24 Jan 2025 02:10:48 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21da4141dacsm12773825ad.133.2025.01.24.02.10.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jan 2025 02:10:48 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
To: andersson@kernel.org, robh@kernel.org, dmitry.baryshkov@linaro.org,
        manivannan.sadhasivam@linaro.org, krzk@kernel.org, helgaas@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        lpieralisi@kernel.org, kw@linux.com, conor+dt@kernel.org,
        linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree-spec@vger.kernel.org, quic_vbadigan@quicinc.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Subject: [PATCH V2 0/2] schemas: pci: bridge: Document PCI L0s & L1 entry delay and N_FTS
Date: Fri, 24 Jan 2025 15:40:36 +0530
Message-Id: <20250124101038.3871768-1-krishna.chundru@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: gGeUZNBaaOb3ChP1cM6-Y4gZfTu9GZw6
X-Proofpoint-ORIG-GUID: gGeUZNBaaOb3ChP1cM6-Y4gZfTu9GZw6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-24_04,2025-01-23_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 phishscore=0 adultscore=0 bulkscore=0
 suspectscore=0 mlxscore=0 mlxlogscore=999 spamscore=0 clxscore=1015
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501240073

Some controllers and endpoints provide provision to program the entry
delays of L0s & L1 which will allow the link to enter L0s & L1 more
aggressively to save power.

Per PCIe r6.0, sec 4.2.5.1, during Link training, a PCIe component
captures the N_FTS value it receives.  Per 4.2.5.6, when
transitioning the Link from L0s to L0, it must transmit N_FTS Fast
Training Sequences to enable the receiver to obtain bit and Symbol
lock.

Components may have device-specific ways to configure N_FTS values
to advertise during Link training.  Define an n_fts array with an
entry for each supported data rate.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
changes in v2:-
- Split N_FTS & L1 and L0s entry delay in two patches (bjorn)
- Update the commit text, description (bjorn)

Krishna Chaitanya Chundru (2):
  schemas: pci: bridge: Document PCI L0s & L1 entry delay
  schemas: pci: bridge: Document PCIe N_FTS

 dtschema/schemas/pci/pci-bus-common.yaml | 12 ++++++++++++
 1 file changed, 12 insertions(+)

-- 
2.34.1


