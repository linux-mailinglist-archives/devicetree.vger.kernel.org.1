Return-Path: <devicetree+bounces-198463-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 058D7B0D17A
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 07:52:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 999B21C22BE8
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 05:53:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FB6C2BDC19;
	Tue, 22 Jul 2025 05:51:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IDApwS37"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E04982BDC0C
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 05:51:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753163475; cv=none; b=Bw/Q2fZbqH6x164Jxwjnjgn3rvsQZNyfh7EUAnz1s+SsnDor3FNh2y/A/2yAh/NV7OjTdR4g3LKNTsRHDfTmkF/1ZHHGr4bLOOymcl5c5wRfNNAcGCyiF9wNv2fJZ+seJBk7Q/HZbIXxPfh5lUlMkHcQCyZ+dNgJfirPIDyX9OI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753163475; c=relaxed/simple;
	bh=LkPnRAX/oeMeE+OrufVGyi0NXGZ0qUs+Av8g3FBETwg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Jah//LGZjY/oKd3IyggODFQOeM97K8AqShPTljWmFPudWVqwEnyRSZw8LsPHhZ5+adNcmxGNpUFvVnhXjEwTFlCpcw6EWJAmxVC1vo/wD+0HRgEbd1jVDTkBeGR+dTjeTPDDYA7gCA6ceXuH6msHlCkpwp90gt5/7JtTd2mW/ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IDApwS37; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56LIgcRb015640
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 05:51:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=Zhy0MZ1jZ8F7Jnao5FbZ4vgfFLZ3bbYPjtt
	A+SWufIQ=; b=IDApwS37Ixk4XwHAFqXY43tY/gD5HrrQman+UPEfcacdv1A7gCW
	8aDG8quijQ/kja5rF8LB7Jk21PPDNtfbLy4AnPxRcT3YQgP7dzO3s8QoUK8WdjMn
	CveS8xLEPh92kjpza1XADRhjQBvrUXHX41zAgoL6vC+JWxt8UxN8hvNGi7UYXXIF
	F4jrk0cAbhThAPFRg8oYsJW80AKsIcd9srvhjUkFd614lX9XIbu6fHFdvP1q9OYL
	m+mGr1rGOmbXwk5urvBjibivQrVTBP5ioS4dFqWiPEfAMMot4quhf2bzBfHCAU4r
	Xt3sba2P7sR+pbsgicrJwCvkcg5USID8pXA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 481t6w1byd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 05:51:13 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-74943a7cd9aso7710788b3a.3
        for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 22:51:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753163467; x=1753768267;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zhy0MZ1jZ8F7Jnao5FbZ4vgfFLZ3bbYPjttA+SWufIQ=;
        b=o62HBkbUl8b94qPfSwkaJY1zpiKuzwM9K5P6QIRSvTw0Xu9cR5Ia2XGnOhrDf3kqNw
         h6mlwiogF9aJA9D07WQnzmdjLcQXTcSdC2jM4eYjA7omdJqWJHYfDNvgrS2s0gsaJ2W2
         isg/Xr7YvHyP9qL5gg2ebzCucNPShSwj6XA4JznDPIYRa8JL73hWZLQoRnxqcPZkziZh
         ZqbPdkEEc4Bb12Ln/bL4uP5aMCd1r4xxGOB62fV4FZNf/lYnAClh46ssmKiOoZaJr58o
         uVGSa0zw6p8nDUETztKMa0NOIWJda8aIg9zsZ4ZeOgfnhMxsqlGItvJFdkY6dAwW/VEC
         63Gw==
X-Forwarded-Encrypted: i=1; AJvYcCUFo34oU0VX5JvEkO1Uvq3hNK2DKhI7HpYzESS18GG0U6V1Vm1t93iabj5B0YwIrNjKvsFw4QONVzq/@vger.kernel.org
X-Gm-Message-State: AOJu0YxHFx6cZOs/tw3QcaOUzfwhq1eC7GnbsugnYGUFDXNQe4C7LTes
	4A9ZKcE9fbS/kGREqx0kB1lL17AK+HCUfUA+Im6RJqpyzJg1q2aWaoDDXA3ebkAl5bXDLpQOhLL
	w7Vn5RB8LgOJQ//ac91dmq360VT4gP578rWOLzSsPyflXbfUQ+4+Dvm76uMJBaCbo
X-Gm-Gg: ASbGncsZdHabZbs7zqo6sz8Ay6UT+m7AWJnmq4smejZOLStozQwa626i4zUGMZ3HsjO
	uYMOzyeihwQZdNRhwu4O5+TjzWY0vZxWKBp5aohDlWSH+itiDuzU/3Xjl5jVGX1OIq5FqERHSGT
	fgSFA4mz/cR0POd16XsmVQNPV5GxP2o6r0iioFkk8wi3RnrshK4ZORIsauBHvHKtrs6PMA8WvgZ
	9yYRtZLvCh8od9KpO+Lx88h8GsGML86n8bdT197i1M+9UJ17NEs+OFmTQeEwUwr0RdmSfNlxXwj
	kKCVYu0byCj36iV03Me/dOTgizGFYhzEH90ZzZzCurbdQ8y9il9UwCfJKXfrN9RRUInJD+5EHzG
	MUQ4=
X-Received: by 2002:a05:6a00:a8a:b0:740:b5f9:287b with SMTP id d2e1a72fcca58-75723165190mr29279620b3a.1.1753163467211;
        Mon, 21 Jul 2025 22:51:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGN6iDLyXNCraZNT8x/1YReDJKwIOmpbnw05LKZnQXeSdXkn2GEn4y/ij1foKWlkejDAgwPZQ==
X-Received: by 2002:a05:6a00:a8a:b0:740:b5f9:287b with SMTP id d2e1a72fcca58-75723165190mr29279568b3a.1.1753163466699;
        Mon, 21 Jul 2025 22:51:06 -0700 (PDT)
Received: from 2603feb0d442.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-759cb155e0fsm6669136b3a.71.2025.07.21.22.51.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Jul 2025 22:51:06 -0700 (PDT)
From: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Odelu Kukatla <quic_okukatla@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Mike Titpon <mike.tipton@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
Subject: [PATCH V3 0/1] Add EPSS L3 provider support on QCS8300 SoC
Date: Tue, 22 Jul 2025 05:50:38 +0000
Message-ID: <20250722055039.135140-1-raviteja.laggyshetty@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=SPpCVPvH c=1 sm=1 tr=0 ts=687f26d1 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=XhFW2igMmoW6a3705fEA:9
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDA0NSBTYWx0ZWRfX4e6UbDAHEqNY
 fcjxQHKSZ1cblUbbJuzd8snn7TLhVLHcDNLvzBJECYtAmYNotpmH2MdtEFUbOHJHzXpt+6k+Isr
 i475quA2jUc9LdUlx9oanjPVBnInmrmGhVj1wECcSSsSuOT1Xq/9TOvvW7POhAqVD7icpatTFbE
 7up/OwjgFs/KTzfcvW7HrVK5fYYU71N6m7Sc++gLswfxfEPUuS+IUKKdoKXehgmAftarjL3PZQU
 eD9Uioo99GSen/R7lLJah7X24ydpUnihl0Arsu8xEEqC6enWSlH3F4Y6kUcmhsDe01RbLOO3plF
 y4dAZRPnGRlJr9DYNw/6uhWw1LCN1FepVe0R/ismcutGFFwjy4gy39kTM/QQQ4lEJUz/qPfNaS3
 dGxfYZZGn2yfXQdSEJb6xAJs3Ba9CDWi/NoIkHJzpVTzzpwiJMlHgOfV4xHOWleUJCxTNEHm
X-Proofpoint-ORIG-GUID: YrHEuiLkI8B1ruZDZzCpLgKsN__rywQG
X-Proofpoint-GUID: YrHEuiLkI8B1ruZDZzCpLgKsN__rywQG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-22_01,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 mlxscore=0 bulkscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507220045

 Add Epoch subsystem (EPSS) L3 scaling support on QCS8300 SoC.

Changes since V2:
 - Dropped the dt-binding patch from series, as it has been picked into
   linux-next
   https://lore.kernel.org/all/20250711102540.143-2-raviteja.laggyshetty@oss.qualcomm.com/
 - Squashed EPSS L3 provider node changes and CPU OPP table changes into 
   single patch [Konrad].
 - Link to v2: https://lore.kernel.org/all/20250711102540.143-1-raviteja.laggyshetty@oss.qualcomm.com/

Changes since v1:
 - Removed SoC specific compatible "qcom,qcs8300-epss-l3"
   from driver and used SA8775P SoC compatible as fallback in devicetree.
 - As the EPSS hardware in QCS8300 and SA8775P SoCs are same, a 
   family-specific compatible string for the SA8775P has been added to the
   bindings. This avoids the need to explicitly listing each SoC in the
   match table and the family-specific fallback compatible can be used 
   for SoCs sharing the same hardware.
 - As suggested by konrad, added EPSS path handles for CPU nodes.
 - Link to v1: https://lore.kernel.org/all/20250617090651.55-1-raviteja.laggyshetty@oss.qualcomm.com/

Raviteja Laggyshetty (1):
  arm64: dts: qcom: qcs8300: Add EPSS l3 interconnect provider node and
    CPUCP OPP tables to scale DDR/L3

 arch/arm64/boot/dts/qcom/qcs8300.dtsi | 301 ++++++++++++++++++++++++++
 1 file changed, 301 insertions(+)

-- 
2.43.0


