Return-Path: <devicetree+bounces-238592-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B295C5C933
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 11:29:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C58F5350882
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 10:22:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE49D3101BC;
	Fri, 14 Nov 2025 10:22:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pGxL+MnQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="M6FOnSvL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE1730FC0E
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 10:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763115755; cv=none; b=o5KnEnysbJwZG93qgxH9s2zNzYM1TMM66T4LVsiVwHAGETd+72c7QfwCvLrUzHdtuzokLjtDTZzapWjvbrWuMk8XPK6I5R2GpYij38oCUDyNdZuMoEgSlBLMJjCbL0mSLwHFWuDV3nhV0Kz2LRDRyFSsIe8Tgy+yLQsbwtv7nEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763115755; c=relaxed/simple;
	bh=j/PKjIKUfk95DiARFEqBQvQIr6HuYNqBqicJ5GkXt/k=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=iJAgl7+2+fldZSLUF2hG7dl1l1C0rz8zaY5VKPCMIKHp55VeKLlBONHaKSDDMDkbVfyLGmU/VZzcYdHkpX/U3pwzNMlZCcugJ2o2sHM7PkgT+PgOmpli7WJy2K0dmmKF1u3aoqQgnBNGk/L/ianYBhG1wu3UopMgx/sQBoShdZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pGxL+MnQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=M6FOnSvL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AE8SEio1616711
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 10:22:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=uIlFMtE7+uqEi2dqO5eRBa
	DzL075sUhviJNTRcYSEtg=; b=pGxL+MnQF/1UYj0MQNAUqKavZKYwCdgzgnnD5L
	JrYWe7kd9HWeGc7wufPRrNx3RWZSrj+wRFf8ya4vHHI8O74jquUixEC9xRVi9zbz
	wAh3VnXZHW4CxIqrAZPQ1T9XaPxBZq/lWBMfF1ZS2mPOkb+6eiMbU3gAZw6u3Tfk
	NBXUgEM8Hh69vl+CXI1x1ogFwbbxLrYkpV/9NErbAzU/ANNo9xP6VUwkflUViRpK
	ZkG3JdaEavXimsaB8xoqWuEL69FZd1wlDuI5nKDEJydmWeuxnLT5qZInF7GhlXKz
	1Sp0BvvryDCZd2YDXUjI8eZ1idpghST4ZRbTpvE37jB8glkQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9h1sbe-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 10:22:32 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-297f48e81b8so35046475ad.0
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 02:22:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763115752; x=1763720552; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uIlFMtE7+uqEi2dqO5eRBaDzL075sUhviJNTRcYSEtg=;
        b=M6FOnSvLRgh6G3uJMlPWQy+2y3moAfPJMrZLGm3DzRaqI1Rj8xs8Q5BUC4h8NV1BpA
         Wsmmv9cESIUcXc00GvJ0CXg+rz08Z0kKduwALR+xpdtTNfuLoZ02ygJf12DmBOzu4fV/
         vLH2hHnB8vke0pxp50lY0fqkoyGCltVLv0Xl14t7AZpUX8rOqtPUstibPdcVDiF8gcib
         Sz3EBnA4rMxwXwxkAOqIjr43VchRdipldnkOlJ+ImDso7GkGHXQbJvkX5MVuFNHwpaxC
         U7A5jcLMEQJZgH+YBg68uqGPtnBhleTqS+fGcQb5v+upwNM4MMawkRlHxb9zFC5FMSGx
         p1Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763115752; x=1763720552;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uIlFMtE7+uqEi2dqO5eRBaDzL075sUhviJNTRcYSEtg=;
        b=cvlSXBPsU6Q4j0RG+lgE+fsexa6FsGtaA2JNsHrgpapsvG4IdT76K7W9dFqiW+kl7X
         CfnMHJZ7RiYhxCOOERbrB2cVPW36gvnjP+K9zPTD1SBLU2sMKmVUosfx8ZBwCaYd4Fd4
         1Itu1DnaXCg3c0x7n1vaGSai1jE9BXHB2uIAM2mpaFQOuPX1UURa9iEGShoJzpW152CW
         QrZrBMMdxcoPr3WxoRfOgiiuyljtpSLQQDsDBya8W/7Ed7xFg8h/gnpgY8ZvuvSznURp
         +JuJFtvcDCQ/jLcgZj+SMDTqfEQYph/G14Myk1jmQc0vWIEb9Kf/7jtaBJ4W5KCsi8F4
         +MTQ==
X-Forwarded-Encrypted: i=1; AJvYcCXgizeQT8vwjmz5aBThwhxBMkP0bHQVA156UF4OStXaf74eu/KcinohRK/VyInhinv4n+WDz6E/yt0J@vger.kernel.org
X-Gm-Message-State: AOJu0YwFoDsqTOPqH+u1TuwlatF2dmiFEZQ6HySSInwu+FB1YYZBmGGd
	bPISuVDCBJb0D7qmjBS0TY+dXn2GhKcFTtXe8N+Lh9OV6KYTZU+HLgS9F3QOLNAbo8R8LLE2Icx
	fpVxXYWuu+MsqBM0ItDLW6D4YiiBcyyfzoYUNJ/vQeReh+6PbPPHyWP+NCRX3BfDY
X-Gm-Gg: ASbGncvo1GpbFHlY4W9HU3E4gE+XvcH7iIJRkitP3kHPzonBTAq8nuEdcoZAQJzLcWE
	z+87883tfpTAbLZOCwGtoTEFb37umVtZpwywSQH3Drhg6kTcjjQYK4UMPZpBBhZTzbAUdJg7aQH
	AbsQqx6EelYpz7ikwIDOar9AhsjKgEyVFxUqQM4vkVan5TMIFMoLY+m8twEJOvAT7PQxrgHTA7g
	POXypjsCxkCqPETjKDZM78WzobXJO2/JwN7wmNpPn/kie/3YztnVcgSlWYnou0xY2v2xuzHMlUC
	My4m7z0/P5vpLUWi41bSqZK7vqrg2220NsqqV6GWeVgERb9fQJ55KnKmfLCfYOqvujy6ET6x4wR
	08u4KIOsvFok0seEbd+L8LJZNNhNe
X-Received: by 2002:a17:902:d48c:b0:297:d764:9866 with SMTP id d9443c01a7336-29867f96635mr38151575ad.18.1763115751664;
        Fri, 14 Nov 2025 02:22:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGDSKi26tdukeeIUa759YbAGm8in+yeMJs9CiwD9zYXP0yERmgL0JB9clxX4ocd5//gfGhRzQ==
X-Received: by 2002:a17:902:d48c:b0:297:d764:9866 with SMTP id d9443c01a7336-29867f96635mr38151365ad.18.1763115751169;
        Fri, 14 Nov 2025 02:22:31 -0800 (PST)
Received: from [192.168.1.102] ([120.60.77.228])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c245edasm50883705ad.27.2025.11.14.02.22.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 02:22:30 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Subject: [PATCH 0/2] wifi: ath: Use static calibration variant table for
 devicetree platforms
Date: Fri, 14 Nov 2025 15:52:18 +0530
Message-Id: <20251114-ath-variant-tbl-v1-0-a9adfc49e3f3@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANoCF2kC/x3MMQqAMAxA0atIZgM2tCpeRRyiRg1IlbaIIN7d4
 viG/x+IElQidMUDQS6NevgMUxYwbexXQZ2zgSpyxhiLnDa8OCj7hGnckaitnXU1O2ogV2eQRe/
 /2A/v+wETW05hYQAAAA==
X-Change-ID: 20251114-ath-variant-tbl-22865456a527
To: Jeff Johnson <jjohnson@kernel.org>,
        Johannes Berg <johannes@sipsolutions.net>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
        ath10k@lists.infradead.org, ath11k@lists.infradead.org,
        devicetree@vger.kernel.org, ath12k@lists.infradead.org,
        Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1980;
 i=manivannan.sadhasivam@oss.qualcomm.com; h=from:subject:message-id;
 bh=j/PKjIKUfk95DiARFEqBQvQIr6HuYNqBqicJ5GkXt/k=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBpFwLen3xdeGzsMaTDYYCd7OIuj1AlYd42t7QKk
 jD2Kk+Aqo+JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCaRcC3gAKCRBVnxHm/pHO
 9ewcCACmtiz0Gz3fOX7r5tZ+YWRiRMerLpeJA0jPU8AvfSaLdbbEoWDG9cAIv/KiRadqPFBf9Wp
 qjcSQYo4UVxee3OoblE295aPsQb1bKi1Sz1rqFJYQZljeAsf2w1E0WUBn1ZP+MGFAJj03yOrsTK
 xNUKsvXbOlk5iOrRyoa7rAhS2+O45RSL1zuRzBHkE2I00oBW3utGQr7hHUXtsgQP5qfSo8E0O4L
 AY4s3zF0p41qM8JzBD7nxmiacjE0+cRBpYpeoNvN3ii6LSFIifeTht2foBkbpiHbXLjZGCCu+Mw
 DzX/sLR4afzV46gQxlkwGYjZ6Do5PzAvcS39/jToYCd5Zd/U
X-Developer-Key: i=manivannan.sadhasivam@oss.qualcomm.com; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-Proofpoint-ORIG-GUID: OvQIzpky9U5EyM90Ei80vhR5ZmNR8l_o
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDA4MiBTYWx0ZWRfX0tNI+xNCwR5u
 bPqhGybllmUY5BMcuj2PWVb6IcyJkZ5fq1EhnpamFCqR2yhVCBqEZflrm+tZ8umfWBzWJncIRJV
 flxpkXgTyIvK6KzY+hXwQR9d4Uc9MfBS4mncXU4ZJLyiY2glNTzuU4f31AJCBS/+VLf3QZJd6Fy
 mxrIoSLJrIVCgzeBo82m+XSsXgUZGMwWHvM6ZoOZ0UonimF6ddcYLZFrYT8q4L+fz4bH8i/T6wN
 47JCoiObYbnvuFtsk8rgVDvTzli4GlHSrGb38zIh7FqjZwIzAJcMtUvp6PDpV6zitcsvnd8yPuG
 eDdijX4VeU1uxA0FUbEiILJ5/Gl1VE4WeyFHuWOVYR58Wdk+uD5X9fRZUqoeKhsMUo3XtXb6GWi
 2zJQL7Pm9fXlvT+WUKS1qGhcp8qclA==
X-Proofpoint-GUID: OvQIzpky9U5EyM90Ei80vhR5ZmNR8l_o
X-Authority-Analysis: v=2.4 cv=V+1wEOni c=1 sm=1 tr=0 ts=691702e8 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=9R49FEQIXN7mQozuOwW6cA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=G88tG2J24DvW8zjn4CkA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22 a=HhbK4dLum7pmb74im6QT:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_02,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 suspectscore=0 phishscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 impostorscore=0 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511140082

Hi,

This series aims to deprecate the usage of "qcom,*calibration-variant"
devicetree property to select the calibration variant for the WLAN devices. This
is necessary for WLAN devices connected using PCI bus, as hardcoding the device
specific information in PCI devicetree node causes the node to be updated every
time when a new device variant is attached to the PCI slot. This approach is not
scalable and causes bad user experience.

So to avoid relying on the "qcom,*calibration-variant" property, this series
introduces a new static calibration variant table based lookup. The newly
introduced helper, ath_get_calib_variant() will parse the model name from
devicetree and use it to do the variant lookup during runtime. The
ath_calib_variant_table[] will hold all the model and calibration variant
entries for the supported devices.

Going forward, new entries will be added to this table to support calibration
variants.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
---
Manivannan Sadhasivam (2):
      wifi: ath: Use static calibration variant table for devicetree platforms
      dt-bindings: wireless: ath: Deprecate 'qcom,calibration-variant' property

 .../bindings/net/wireless/qcom,ath10k.yaml         |  1 +
 .../bindings/net/wireless/qcom,ath11k-pci.yaml     |  3 +-
 .../bindings/net/wireless/qcom,ath11k.yaml         |  1 +
 .../bindings/net/wireless/qcom,ath12k-wsi.yaml     |  6 +-
 .../bindings/net/wireless/qcom,ipq5332-wifi.yaml   |  2 +-
 drivers/net/wireless/ath/ath.h                     | 98 ++++++++++++++++++++++
 drivers/net/wireless/ath/ath10k/core.c             |  5 ++
 drivers/net/wireless/ath/ath11k/core.c             |  7 ++
 8 files changed, 115 insertions(+), 8 deletions(-)
---
base-commit: 3a8660878839faadb4f1a6dd72c3179c1df56787
change-id: 20251114-ath-variant-tbl-22865456a527

Best regards,
-- 
Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>


