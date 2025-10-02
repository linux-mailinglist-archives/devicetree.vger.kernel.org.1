Return-Path: <devicetree+bounces-223429-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F85BB4B06
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 19:27:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 69F3E3A4DB6
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 17:27:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3AE62701CC;
	Thu,  2 Oct 2025 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TtNHngYH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE5A243367
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 17:25:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759425953; cv=none; b=cl5AcQCiIoBJknfye3la6nkcF5ony+QFhmuGx2mtmXl5JgKEa5/sZeRBFTwAP+e5yzttOIu3Po+189FapjVcbRtgdJ2p81n7Re+MdyFuXO0PpSDLqLwaRQSNG0zT1a90tPiELTtn3PbK/rlvFDV37V1uXpYon7k0EDZfSizF3Pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759425953; c=relaxed/simple;
	bh=Vnx7FEyrTZzrEyMks2ISdGuYBznHpzV4bClxPPmMiao=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Qo3pN/Dv65yIoMSxiO/0C0PG0Xf3qOWxRla9Ntk/zuiX6lbrrIZQngTxS/TTzduC9EFR0v+6kCKAwoDENYL45G3CPlhSMeALm8JVi5ltexJl5ZY31CzvPM5Mnenhv8NRPDOZvrK1WCL1xQEyTAPnfzBUTFz3o8bmq9SP2zDoSQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TtNHngYH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59291FhU012307
	for <devicetree@vger.kernel.org>; Thu, 2 Oct 2025 17:25:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=1rqna/rBH+iajzg+XAXDikkpeuWocVd+bF8
	bPM3no/o=; b=TtNHngYH93K+UoMcr5MaISKFeS0Ob4suJHOfijazkWAsn3rOXxS
	ZJhsW7eUyvbkBsG7Mpbxmy4945kyMB/3rE7dqCY+3pcYc0yrXNBJlxd89TvCflJ8
	bHf8QETvv+yM8MsxMzjg4AXQWI7cDNUrgCG6EAO2NOSv9XujYDgrO6gMWvJ2F4NT
	4rlOF6/cEd0UDXHYg2fsuTnR9d1iYZ65iVtD602UnKLeIUkBTJbZOdexGuXHFj2O
	LpdR5hAhf5G95Msh+zbNuUzCSe0Zznmqvkjp+k8DUN5PuBTRfwLbjzSo8JDIvDU2
	/UWcvpuW6/sETxgIOnG0XgUCJ3wOUnT7t+w==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e80u0p7n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 17:25:49 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-78108268ea3so2310779b3a.1
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 10:25:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759425949; x=1760030749;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1rqna/rBH+iajzg+XAXDikkpeuWocVd+bF8bPM3no/o=;
        b=Xxmleh8lrujfzhQj7Ri3H97l2ZSCvDsxbDOz1eS80F2qva131f/Ya4B3Q0nplzZVJV
         Ram6wG8d7iA+IPzLiefHKfZ1DoFCltdTcAoo9k0r3/C81wYhOkTfwWxQIVi7tX3t6zY2
         Bkzi2SmHZ4wRtusOJeRhq0wpVOF1IrCBbXB/XttlXQOgXWasYNdpyTM2CZrR/Ax3tY8T
         mIQckHAbqiQTp9/NqcAzHZPp74N86Y1IzWVIrP+VY+y5bH8LRaO9Ccrq6W3CUyvnKSK1
         YeuhJ+cn+g6O/lb9gmTyTaiD3OYFKC5a/dWPDclq+OlfS6har9H1fqmi8lngVznesY4L
         h73g==
X-Forwarded-Encrypted: i=1; AJvYcCVT3IOhg1To+daAC8ewXEHXcaKv5Oxpx1Yjg+7vYhaFy6UkEp6q2fXCc84/H4UxLpVwGm08hHuqXndO@vger.kernel.org
X-Gm-Message-State: AOJu0Yx84UuUiXhgO8k3drSDAI4IKAt6dNflDyvZJ9n2z2YaCau8WEsi
	c8m/X8vf/DJzVrTzOseM7DFMhyJ+shvzIdS1ZfOFOzlYNFvBNWyRX1xgmVmofLg9iNGxwuPRIaE
	wUNhdKPh9Mrt66e2PQylmVFg9NCPSC6SwPiK0dQiVCqLzYCw0O1cxy5y6Nk5jjF+7
X-Gm-Gg: ASbGncty4TrAkkxk1xc0iw1FQpCRsKZBYCEIi79XqBf8qfq0cSdFBqlbF2Vqb7nL2Hr
	rqX2w2cmVN5uGMDOStWtXz2hk0ejiNZfOm1q0Xq7tBDX7jl/V9xqJo6xCuuKpjxJ6ecGPRxiIzB
	x69p3FP/KneTFZ/3/IDWMe8AxROvxx61Ms8w4WxGV8A7yV+TFhf92CLD/c1dBhQ3vbfUL7xR3xZ
	I+u2MpXgTdcIXMehD3ODn9ArliMW823Tg+oodqmcbnCI9TmLtBpeLVOlthYrRt/rtiEdHLbTjee
	QV6U5V2G+q6V8H3nVyjP5MYsfw94ttgBqVtY8kMHB+OmVFHHt0OYxv1cjQvg6MZ+OWvnl/+u65R
	7DgYu4DI=
X-Received: by 2002:a05:6a20:6a21:b0:2c2:f61b:5ffd with SMTP id adf61e73a8af0-32b61b4edcbmr310288637.10.1759425948698;
        Thu, 02 Oct 2025 10:25:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG+enE8wuWieJoBAKDjUG3eBXUdkVEiwqNMSZ/0wvGfEYKsHkPg68VO8xF8jBbQP1OGtks3RA==
X-Received: by 2002:a05:6a20:6a21:b0:2c2:f61b:5ffd with SMTP id adf61e73a8af0-32b61b4edcbmr310239637.10.1759425947791;
        Thu, 02 Oct 2025 10:25:47 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6099f5b6e9sm2387423a12.40.2025.10.02.10.25.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Oct 2025 10:25:47 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Biju Das <biju.das.jz@bp.renesas.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH 0/2] Implement vbus support for HD3SS3220 port controller
Date: Thu,  2 Oct 2025 22:55:37 +0530
Message-Id: <20251002172539.586538-1-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAyOSBTYWx0ZWRfXy0QwvOBMIVD7
 wJrTUC2kIwqBXTfzl33Xewi6Cdt/c9zuGymnwxCZ+vlmUSjlWckyW88ZD+Y9t9jD5afcEBPT2BL
 EkD4xQ++Qx/gW9KbB/1Mbe5XMBhybmHkU1ABfVvIDXxB0wBd4Va+I02DfNrOdrJorPmdxDeWr1W
 8Brs8ZDdhzTMr3nPz2PE6ediEJr5V0xQo1UUdcXBbnheFxw2l2yzMnULYbE5soCf74kHHNm9RsB
 VoD0vylOoGgnP3frkIFLxA4KO8LLnjsY2ePpU+2h016+Yq9xvn1Crt6wVfXMEBaNhVhTgcn6Zlv
 6GzlA6djTKhmX/jGVcX585qpVX0Am92FcKzNwo0Gup1e3nJ47oqV2xK9lJmL6h9pUoAdqiMzzuw
 Ynl2cKbJYj5h+T7H5ZdECbZCXK8DnA==
X-Proofpoint-GUID: e6m66G99btW-8P2fmVSI0Hb5Qq7Y80r5
X-Authority-Analysis: v=2.4 cv=OMkqHCaB c=1 sm=1 tr=0 ts=68deb59d cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=x6icFKpwvdMA:10 a=0ZYI1qUNTW_HKTauMVIA:9 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-ORIG-GUID: e6m66G99btW-8P2fmVSI0Hb5Qq7Y80r5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-02_06,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 bulkscore=0 phishscore=0 adultscore=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270029

As per the data sheet of HD3SS3220:

"Upon detecting a UFP device, HD3SS3220 will keep ID pin high if VBUS is
not at VSafe0V. Once VBUS is at VSafe0V, the HD3SS3220 will assert ID pin
low. This is done to enforce Type-C requirement that VBUS must be at
VSafe0V before re-enabling VBUS"

This series implements support to read ID pin state and accordingly enable
VBUS.

Krishna Kurapati (3):
  dt-bindings: usb: ti,hd3ss3220: Add support for VBUS based on ID state
  usb: typec: hd3ss3220: Enable VBUS based on ID pin state
  arm64: dts: qcom: lemans-evk: Add OTG support for primary USB
    controller

Krishna Kurapati (2):
  dt-bindings: usb: ti,hd3ss3220: Add support for VBUS based on ID state
  usb: typec: hd3ss3220: Enable VBUS based on ID pin state

 .../devicetree/bindings/usb/ti,hd3ss3220.yaml | 13 +++++
 drivers/usb/typec/hd3ss3220.c                 | 58 +++++++++++++++++++
 2 files changed, 71 insertions(+)

-- 
2.34.1


