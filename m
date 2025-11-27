Return-Path: <devicetree+bounces-242800-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A5762C8F489
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 16:32:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 397E434D9BE
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 15:32:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CA1D336EFF;
	Thu, 27 Nov 2025 15:31:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XbjLDulC";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Aztyget/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78658336EE0
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 15:31:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764257482; cv=none; b=AFvElYnET+A47dh/LH7c7nJwPNGMrcq+4XIWAXh3lXx4xM5MTS/wwfPQSM4f3fvisbz6tk1cymulfBaZ9B4CaIzrWKymhfpxvfAHS+jK28bjbG0Bw+B3LOAwtPtuzMTVIUh06veVO0QDp1zaTGITFvnqDZZc54mEdRqd2EVqHRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764257482; c=relaxed/simple;
	bh=lv4dBKqxLyjp77PBEf8fzvjGHtU+jVpXznqOTVKlVp0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=PJZ3C19bhVPhBrvLDggRDrRzgaLVsmjpcrbNanABda8F8u83yDwgjpjgudMEUQPzsTtd6q9YYdMqh9dAWO/dNyPWTnGKqWP8WmeenAtd+k+78F2zkWcfRy64xduGU0uOOkq8/IYMHhFFQH5R0+bX/Y2G/a4ElnZykxk15BLyJG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XbjLDulC; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Aztyget/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AR9bHLQ785404
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 15:31:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=bTv+skRnWxBY4zQ/qTJiMs
	0T+FjJqZMGsZTyb8Mcm8o=; b=XbjLDulCAdUkq8Zz8xSAfyZDbjhFnrpjyrb3sn
	AtCzcxQAk1A4/3tqa8K6bdZSK9OZDPCmcCAXVh3tOcfKOvNceFh9vP7muYX4wc0h
	tvLuGKbBCDHm8/yP+s21KU4ngqzXrqnLpwPN1ec612MluEVp4Mzf1NF3H8guOMU1
	SaE92yBQw1mUc+2xdZ9SD3Igl0/5l0YkaS3S2KSQHsp9h+vhR0Hw3ugFaxk/j5GV
	nk4pCF1Admix2DzA0EWgiFiO9gqW7MHw+hwC8jK4v+iMO8SOiEtnVEKqPGajR8x1
	9VUi1Zr4jVb8fZh2xxnV/NhTQy3GVm61jKKzbHKKxhehZv6Q==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4apm61rvvg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 15:31:18 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3436d81a532so1508446a91.3
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 07:31:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764257477; x=1764862277; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bTv+skRnWxBY4zQ/qTJiMs0T+FjJqZMGsZTyb8Mcm8o=;
        b=Aztyget/RHSF9wNldl/j0A4EBVa7G7ChwbKXRtCq0ZfmYoAx4sbICI5bo+0z9TQeEX
         5ZmHj+QeUaN5+hxaSB5Q40hKmGUiuyOv0wAhLZPazD2MKgox5EnE4O2gaAwrtStfOIcX
         qkTPj5bpyMKP5ZYgAb7Jky2U38w2k9ZTR9lJt7ByGXPgFA+YsIiCJFB43pz7hV7kfr4D
         +l7gqlHvyHErXf0eK4zyevkHvaCaTC7PQoKXJHvKo+UrdZS/8s24oC/lMf7FvYMGiplz
         CGWYkGhP171EuQMSfyHVHOeq6tOf4zypByN0E6zuyy/oqVMHyPXv0eJtRwe6q0NwpbNF
         CCAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764257477; x=1764862277;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bTv+skRnWxBY4zQ/qTJiMs0T+FjJqZMGsZTyb8Mcm8o=;
        b=GZo+hENoDdpcipXvyfGm4VVExqH1SwOlVj94tAmWx3N7dqv9DGXjOWVhsiiQaJ/mp8
         gW6uAWChefkAZz5yUwg6KdwbIEJGZhmzmyJEBhsCrKminF8GBITRleEVVcKvxe6sPCf4
         CGuvDKNFPoKIP2C9wZSfxEwTKBlFcPg4GBDFp8XpKE1HBX+7p/Ek8+0PcAQDT4O4nDXi
         /sxQ3L0dV1rRSjZQO+BI8NTgRd8QSQWj9u1dLuTZwz88ph7rzm2bGd9ODR4gsk3qvLvM
         JnRtxNKRi6Rk0D1CGowHKqOoV1e/D7a7KREVqOCjWE/YRy/H98zkW5z5Rcg0tZmhevKN
         y7dQ==
X-Forwarded-Encrypted: i=1; AJvYcCXl0T7Va3FtnC1UjdrlpQfhifBkyIl/URlH796Sqngi9hj1XB5mmbwmknErLdOTce2EqVQGDqNuWtR9@vger.kernel.org
X-Gm-Message-State: AOJu0YzpzvIoFMMSTFUpNSKNbVWE7c8fC7p0JWhE1w0bZ+OqKtMFJjPr
	zjZfEfRhbqYLvYljiyAjXgnXeG9XW5HT2t/miNrFY6tzCxGZRBrFunOFtpjEM2XBYUEshqxX0FD
	RksrN2at1uQumlmKNECqczDeZ4u3HHHNRxV2SWGSucwPLA3h3UjCPnKap7YOvmd/h
X-Gm-Gg: ASbGncs7IiDfa2Uv7qSRp43+M7zV8HOGcIhH6QXxX9c3yl7o6Gn/bojOF1YK5jkVu1l
	WMJ1JpvkQM7Q0XsT8RbOswtRDsxy9FFNbR1kOUOH2/cRpXelqhWNWD5SMP74ccK1NxLmf4ArTgu
	RKODXKBfPHu6xepVpaXewVtg6qZPbBlSrw0g3wudXFXyQZeO7nym4qRFsZxLIAeT7IQiorYqKIv
	Ld5RakSjS6IObVNcWV3JbYFT8790PxAa2p1oMB25Dfk/kzwUxUYwoHsTceSn1ZTh8hpR9Hf+Oup
	VvOqcCK4U2WJlOg/kbST1kxuUaFuGGdfC/5r0c5ZYoB+itMLmWlz9LVPqAVlUfoUzqKyTAGEq89
	QKGG6S34wj/8O9V6ZSQBlhTYAz4NtgBFHbYRRo2YwktlNag==
X-Received: by 2002:a17:90a:d00c:b0:340:e529:5572 with SMTP id 98e67ed59e1d1-34733e6cac7mr21267685a91.8.1764257477200;
        Thu, 27 Nov 2025 07:31:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFcpXUstFl9psAS6Gx8M6//WR3/e3A1aEjx1JVWfbgtQ5osET1uda2Q913gJvIqiuVLjhFu2g==
X-Received: by 2002:a17:90a:d00c:b0:340:e529:5572 with SMTP id 98e67ed59e1d1-34733e6cac7mr21267643a91.8.1764257476690;
        Thu, 27 Nov 2025 07:31:16 -0800 (PST)
Received: from hu-sushruts-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3475e889832sm3592940a91.0.2025.11.27.07.31.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Nov 2025 07:31:16 -0800 (PST)
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Subject: [PATCH 0/2] PCI: dwc: Program device-id
Date: Thu, 27 Nov 2025 21:00:50 +0530
Message-Id: <20251127-program-device-id-v1-0-31ad36beda2c@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKpuKGkC/x2MQQqAIBBFryKzTkhBF10lWpiONotURohAunvW8
 vHffx0aMmGDRXRgvKhRyQPUJMAfLieUFAaDnrVRSltZuSR2pwxD9t8qtTMhWO8iqh3GrzJGuv/
 muj3PC51JqkxjAAAA
X-Change-ID: 20251126-program-device-id-2a5dd6cafe1b
To: Jingoo Han <jingoohan1@gmail.com>, Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764257471; l=918;
 i=quic_sushruts@quicinc.com; s=20251127; h=from:subject:message-id;
 bh=lv4dBKqxLyjp77PBEf8fzvjGHtU+jVpXznqOTVKlVp0=;
 b=5RfBAESBesbAUT1/4ewz5k/zfKisXA2tW9A+lAAwn2Ah/ZZMm8EtQGKIm7u1zMjt1TKVTS8X9
 SA2GhD/Z6FXAG6h0naXV+0F2kvJEqdMYhC0XHokV9E5A+4iUtu1qU0T
X-Developer-Key: i=quic_sushruts@quicinc.com; a=ed25519;
 pk=OrUHTxBaSg1oY3CtCictJ5A4bDMNLRZS1S+QfD9pdjw=
X-Proofpoint-GUID: 4QNTCEX421PRIMkJXQO-_02VxfIjTevi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI3MDExNSBTYWx0ZWRfX2lVb7H3J+8Z8
 bhwps6FeTtMhcDdnBB38GjTXZXtdgKVZb2vY1bp1M2pmX1J/mokWGYK5tCnysgHe3xNT28D5oI/
 RmeZSgxKME170byDrbLeG1SFldkqMJX04yUBKimPJlZu4MBc1W94hlUjt4dSQp+EsZr2uVBsofM
 UPSptCCaoq7iXU6LPHQ87G13ZkUvYJcaxhJs446deW4QotCgSuCiz5D1nSVMdStkXzJCOXWJBSf
 ixT4vyKyyXWIPQyNZtSLei/3LPwzyOO/NydkPldjhihybXf1npdSD+kfiHgIf2mZZ0+QmZ4oGql
 JY+jCPEa8NHp24eVMLn5c/16nyes82mpZveeY3mdC4kHXTGiUvM7cC/YK9QWCey4CHNT67M47yM
 YjGXNAx/gsnMYxNpWN8kcUxBds5O4g==
X-Proofpoint-ORIG-GUID: 4QNTCEX421PRIMkJXQO-_02VxfIjTevi
X-Authority-Analysis: v=2.4 cv=IciKmGqa c=1 sm=1 tr=0 ts=69286ec6 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=sSXGd-9XW_a8K-_bqFIA:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-27_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 clxscore=1011 impostorscore=0
 priorityscore=1501 bulkscore=0 adultscore=0 spamscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511270115

For some controllers, HW doesn't program the correct device-id
leading to incorrect identification in lspci. For ex, QCOM
controller SC7280 uses same device id as SM8250. This would
cause issues while applying controller specific quirks.

So, program the correct device-id after reading it from the
devicetree.

Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
---
Sushrut Shree Trivedi (2):
      PCI: dwc: Program device-id
      arm64: dts: qcom: sc7280: Add PCIe device-id

 arch/arm64/boot/dts/qcom/sc7280.dtsi              | 2 ++
 drivers/pci/controller/dwc/pcie-designware-host.c | 7 +++++++
 drivers/pci/controller/dwc/pcie-designware.h      | 2 ++
 3 files changed, 11 insertions(+)
---
base-commit: e26d26ba210e5371c153de892ae45a63b1a34ff8
change-id: 20251126-program-device-id-2a5dd6cafe1b

Best regards,
-- 
Sushrut Shree Trivedi <quic_sushruts@quicinc.com>


