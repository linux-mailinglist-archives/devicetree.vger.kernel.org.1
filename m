Return-Path: <devicetree+bounces-241562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C71FAC7FDCF
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 11:26:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A8CD64E3FBE
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 10:26:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC8072BE7C0;
	Mon, 24 Nov 2025 10:26:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="H8iPbjyD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="K14mz0sm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266D8253944
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 10:25:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763979960; cv=none; b=MA9gA8MEKArUutKEl2iSdCATCfaWg16fDVUckPkZV+yNzfqdVmgRupRPu+tMjmveWMyYhzg1dyiKMIBiT4nfJzClOqxITU7Alh56Mudnlb9EZfd3KW2xmyLKZWx+KBSojRnYLMa+La84k2iNRJZwowkbpZhOnI6ZPYQTUYiC8M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763979960; c=relaxed/simple;
	bh=dndUWKbdhmg1WAkMt5KVsWo26hQSVQm2B7N9hO0Nok0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Z7ksL1QK1qAT/NXGBDgm1zsXc30QeNJhpqFwbroWQRvG4zEg7hLss9YR583ogFm7BV1UfdNwBO4cZULbQAC9spa/aiM/ZOoMnWDLthH+u6PfqVzUqp99Wo2OgGV9/i/PdJy38T6kjMP/7n+NWhCxBTbAlc09EFjUJuB5DdagBg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=H8iPbjyD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=K14mz0sm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO88wbC3820818
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 10:25:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Yh+/VQFOK7zvEMbAZMBZVT
	a5P79BegtmU65rZlKd0cM=; b=H8iPbjyDd8uJOruOIOR9rm1h+JIbVGaeMacrg4
	5tEuD4G0yI3LGmTII9xfVFMSVMOqrWWmtTEL+lqBzBy0NkwIXQlStbdrpnlFgiuN
	nGRQImwmCNW+GpgICbbMCNKeR8UmSHfMUARFOhISON830BPxEXlCZN5eMMxw7C3H
	q50S8gx34QYj14OAN1qOLkZDWoFb84kNcyX6TcwZoqmv+rtMqrhc4OxbhNTX7GDu
	uhtXdgrO6s3z3POdAI1mTXauiPDKvvwiQ2EqyFCOQPZrH21ZCRX1Dtk7Wl3z0X+x
	Zp5rxZ12nlp7qp6xP+iHRfBLtLWtIW+Rr9ggXK5ZZfupRrUw==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4amkknrdq7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 10:25:57 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7be3d08f863so7405262b3a.2
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 02:25:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763979957; x=1764584757; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Yh+/VQFOK7zvEMbAZMBZVTa5P79BegtmU65rZlKd0cM=;
        b=K14mz0smZUncteImfPUCyp19ziq9Z7ShBiaKiGw2ZGllzqNScDmxUtIkyC5LbrqUGk
         eUYCR1qTkKbnIpGkrM86VwIzXn8TIYyDJnxH8gpFTGdXLB3Gj9+GgEAyo9MVWcPT5EVw
         0B2sr/go1ncwXENAt96YhgobVKsppdxwoSCKAhtHlLh0xW7wwI84AraWjbnN+xTCmuuF
         hPovps8cKtbWPDUCsz63bllF/qyiCr6/rn4HN6aC4BxBPzwCmIRZcqPQ1t9436lQWOMa
         lvA19XJ4mcARoeThS3cNXUyK2DjlSinLGG6DA7sDMeF/VIpQt77u/McS0l8+Q97k6Wx1
         B08g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763979957; x=1764584757;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Yh+/VQFOK7zvEMbAZMBZVTa5P79BegtmU65rZlKd0cM=;
        b=AgYTXTNmFLU/WazWGFhqaggYqFT8s1aQvlVR+I4zI2VdXD/Vt0Fd/HA1NgnY8BkfPH
         7AcPVWqD2kuEivC7y+av7HT/033bWPo4+EhQr1OdO7TiJNH2SHrRpO+Fd5CO+zLFTZLa
         s8FFaSMewHWOjvJYcfeFYCYkZk4l0mLjPTC4Z4fryGYuY2B9MyPHqVPnRcwxmj/ne5uh
         OaETvl3M8PMhqTRCPEhHJgFrxoa2KOFzxEPfbI8nyV43jQf9qCoQm6ok95aDwlKn0G/7
         uNiKXN2I//UxRJDUgbeROHcTBmwSHWizFURmczR35FNHK053hPEjtyEbHtd1E2qSB4L2
         SnzA==
X-Forwarded-Encrypted: i=1; AJvYcCWQpwwmNfe2/v6Rj1S/wtZLRTwvGFXPbg4aXt4Q5UCsIGPD7SYoDzsc9kCb76AkKwp8KO0NSARS9knq@vger.kernel.org
X-Gm-Message-State: AOJu0YwADSOnjxCQE1PkMMafaQ6twUL7eqlO9rrWtlVkcZkrEl4rPH09
	uhroiypuSpqvBwpwgnDUU+4FvIo+GDFF0l38v7ksZ/iUoLfGElAz+bab1JjMjsuyxqFqhbCoiVn
	L5x1OE3KGNpxq5/vqZUntlop1Qy3sqPg27vzHPF/mOBL6SAC2KFIisNRx5L9yLd6E
X-Gm-Gg: ASbGncsnh4vvV39XJmjlF0Mb/P7N/WS0RGtUEyKdJOwB7tXfn8R2sF3ZROW5JZzBOYN
	C7UAGFFp/GSkdHGQ8FR/AjZniUlbgwqyLC8HUUMmix5pq+w8KyuaKd7FpkuP9tmfcmsK0FAfRJB
	sMC/NEjbtn233f170wl8XDUUHqOLrFtoeNP2SvmuDu32g26nnYN9nQYYrkFJLH5FrCHidaznK4W
	tid1U7Uko1j8DmsmDbwcbjIZVOKhIurOG5M5xRe4rrQijb1gIKX8iFa/l5J3C6AaRDkDAkT69nY
	ghz43eSsS0grVufBERl6u+qJvsabqeaLwcmFf9jTeGa/0bTEx+6m+FTkqjCR4mPPe48bC3//2Go
	SfzAt5r3bF427hm2/TDS5gpghyKKVEB/7oe8qZBngqasXz6b87MMM4ASe
X-Received: by 2002:a05:7022:3898:b0:119:e569:fb9d with SMTP id a92af1059eb24-11c9d7178ccmr7166560c88.12.1763979956834;
        Mon, 24 Nov 2025 02:25:56 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEDKas93DmoZZqsZJ9oANiX7q+S9cqJHpgGphcW5x11I4tvPDfAtEzxXRjUnrPDkkS1L7/Oow==
X-Received: by 2002:a05:7022:3898:b0:119:e569:fb9d with SMTP id a92af1059eb24-11c9d7178ccmr7166547c88.12.1763979956251;
        Mon, 24 Nov 2025 02:25:56 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11c93de6d5csm46140627c88.4.2025.11.24.02.25.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 02:25:55 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Subject: [PATCH v4 0/5] Add PCIe support for Kaanapali
Date: Mon, 24 Nov 2025 02:24:33 -0800
Message-Id: <20251124-kaanapali-pcie-phy-v4-0-d04ee9cca83b@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGEyJGkC/x3M3QpAQBBA4VfRXJuy4ye8ilwMBhOtbbdE8u42l
 9/FOQ8E8SoB2uQBL6cGPWxEkSYwrmwXQZ2igTIqjaECN2bLjndFN6qgW2/MTVPVAw3UmApi6Lz
 Mev3Trn/fDyeAXppkAAAA
X-Change-ID: 20251124-kaanapali-pcie-phy-31968b2b2916
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763979955; l=1819;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=dndUWKbdhmg1WAkMt5KVsWo26hQSVQm2B7N9hO0Nok0=;
 b=7ccUnsaTF0C2etMKM7C/1EBUPtck6KzU3v8ImILxPKY4Xrpq+yVYaxsKuwb7XqkKuq+IH3J/G
 szQeim40xfhAwxz8CFfN6hVsgeAgY2m+i/0g+XuroSO9b9SEEWFlqfv
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-ORIG-GUID: kynQzCd0fl98-ELWZHVjWrpLNUrB_3O8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDA5MiBTYWx0ZWRfX7df5V7dOlCpm
 CbiZ4qYBJwMBMdUy5OtMuBYX4Ub+auhAX/Ih4W/408VHG/kgjztY1Yh25mlwZtE7ryqspmhxCip
 OlFHUz4e+xA4FSOMBVgSm/u8DdTao2KOl6E+3nrJFMq9yH5dBcut6b1OigOGSdm1utqUaAMfGqq
 WWQ712yc7wpwiFL1DffNE7XbKPJOn38WShh6BkJh0UcQLoW5D0kGHeZ6w8Kbp1SSZQU0i6nAkoS
 dmq0JQTrHcCmgT6M/6pbE45NRwr1Ogb1i7ssBkZ138EZj8v6fGngtkAN/5s3ataxtABYyVi5Mr+
 XgaMYd8jsk+tk/QwcNLDGPprw4vCLf2MbXZfaguDRc9JMhyAzZ05RPikoA/bKxD49OMD+FPe7gF
 L+lTtLL0o6DrdrCxuB+IJD/ggaplsQ==
X-Proofpoint-GUID: kynQzCd0fl98-ELWZHVjWrpLNUrB_3O8
X-Authority-Analysis: v=2.4 cv=B8S0EetM c=1 sm=1 tr=0 ts=692432b5 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=gau1cqUgYdTfV32JTLsA:9 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0 clxscore=1015
 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240092

Describe PCIe PHY. Also add required system resources like regulators,
clocks and registers configuration for PCIe PHY.

Changes in v4:
- Rebase on latest linux-phy next branch
- Add reviewed-by tag
- Link to v3: https://lore.kernel.org/all/20251103-kaanapali-pcie-phy-v3-0-18b0f27c7e96@oss.qualcomm.com/

Changes in v3:
- Rebase on 20251017045919.34599-2-krzysztof.kozlowski@linaro.org
- Add reviewed-by tag
- Remove [PATCH v2 1/6] since it was applied
- Link to v2: https://lore.kernel.org/all/20251015-kaanapali-pcie-upstream-v2-0-84fa7ea638a1@oss.qualcomm.com/

Changes in v2:
- Rewrite commit msg for PATCH[3/6]
- Keep keep pcs-pcie reigster definitions sorted.
- Add Reviewed-by tag.
- Keep qmp_pcie_of_match_table sorted.
- Link to v1: https://lore.kernel.org/all/20250924-knp-pcie-v1-0-5fb59e398b83@oss.qualcomm.com/

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
Qiang Yu (5):
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add Kaanapali compatible
      phy: qcom-qmp: qserdes-txrx: Add complete QMP PCIe PHY v8 register offsets
      phy: qcom-qmp: pcs-pcie: Add v8 register offsets
      phy: qcom-qmp: qserdes-com: Add some more v8 register offsets
      phy: qcom: qmp-pcie: add QMP PCIe PHY tables for Kaanapali

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |   3 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 194 +++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h    |  34 ++++
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h |  11 ++
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-pcie-v8.h   |  71 ++++++++
 5 files changed, 313 insertions(+)
---
base-commit: 3b64ea4768e7e64b2d9ae5833dbcac19f6212145
change-id: 20251124-kaanapali-pcie-phy-31968b2b2916

Best regards,
-- 
Qiang Yu <qiang.yu@oss.qualcomm.com>


