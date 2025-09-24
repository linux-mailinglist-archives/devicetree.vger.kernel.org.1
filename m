Return-Path: <devicetree+bounces-220963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A650B9C9F6
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:36:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 131F4420ACB
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:35:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42A1C2C0F79;
	Wed, 24 Sep 2025 23:35:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="f7mGMPGI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 644DE2BD5BC
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:35:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758756920; cv=none; b=j9/JJTnbyWjmxlRYAJCKvlpbh+E8BW1kwJ/m3pdwo6cFdMdTgiPcxUY4memjFJW1+aPOjrI1soEHHUd2Fb7khXyssBYVQXuOTZ9weMQH01ntF6gdmx5+9DKutfrtzT2pKYFuY2w4nbJ7/mT41871n0cO3/DxVTZN/NKP4b7BBR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758756920; c=relaxed/simple;
	bh=Rl9KTMUdwIiYEMdOtiL5Lii1gIrVj4sbsfGYlSZOYFg=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=t/pw3ouoMuWoS/Cw7bhzmaOYJrF+txgguzahsw0eoPg1yCnn2XkurdbUXrVeUGplSztO3i4RKr9h27D08xeHDEEwn8EyHfefvbsGvNmlmpxRqzxTcjdqmBeHxtsOwzDpqSDr8ZUcOkT628X+CR7YbSGdSOLQ0ZGqQsvInSUpG/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=f7mGMPGI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCvxFF021502
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:35:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=N1NPRqXSWps5+W1iMU6uaU
	9WzkrfYOwTW1b50gNguWo=; b=f7mGMPGI8o7JG+1U9WjHfi+SVLO2QmqTtNWPjg
	ocknAV12ykmsvYsFBjl7Os8bVaGYGYL4FqVEXdE2Skkvo9p/wbm+C4v7EBcNuqxK
	ERicRIkcJCkUrn1ICDwUSMz8EpFudDjvV9D6Z+mmKYhPbpSpDu1qQj+VsXfV12cy
	PJfynzjYDTsFWxofhiPSaodMbuQBquH80+d6XHu7oojnKbmyCo8v64a2SoKnCcfr
	2oqzJLtn9/RtTWamjuGPkSzh5RfEB6RJQJR2zqqFdc13djLPe+nuf2Y/lzYOLh65
	ZRpo0Tly1UoBqSyevAnArmpBeGiTdH4Rq5qcyeijyF6rb5qw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49budadkr2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:35:15 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-77f29f473a2so284492b3a.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:35:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758756907; x=1759361707;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N1NPRqXSWps5+W1iMU6uaU9WzkrfYOwTW1b50gNguWo=;
        b=KdhsXGv2sOWGwZ5i/UXzUJHanzn+xgRhZRavCaO1Yz2kzFnZZOHKX8Alecprsxyv35
         9gMtLQLlsdZTS/MOqIEurkPOukMQjtiUNo2IyW8qkU4Yp4VXqFtt4IDarOWEUe0/W9qs
         rInxxfbl5TmHqj/R7aj7Q1pPYUycYG/+xyK3k7kS3rz6sH0ZG1eIiUtlWk12bUCAAabV
         m5OTr58iSEXh1AzjnsypwEu/byMBDPoSQZqE/zwuLy7DJ2qHho7Y93PZFSq+k+v22bSC
         sOLTFIiHrvSEwGkZT6mW9s5t/CiHEhOuvr+40KIbqKUWBaQT+RHJytvNWchCFZ2Qo6rD
         /a2w==
X-Forwarded-Encrypted: i=1; AJvYcCWbZIfg8ppFoiJk/EMPPGjtOTNXkpk3JiAkRxJHbdigndof3VoSd4l9YYDQXnph4nnlz2vBGH1Bvo37@vger.kernel.org
X-Gm-Message-State: AOJu0Yxgcxv7Lf/o/QO8UPFIbv5+5viZlr58l5P8CCsz+AKHzN1PjqQG
	kaclPIPnTGr8PdGDbCUjf1yv59Q7u5kIwbh8SqrScdFtIU9K9UD47/m707EYEEiKUJHlHgvtJYN
	6mq0dz15eermhHtOYRBDnQ4M5YPrq2/73CNwDE36lAbevHBbZmAcsGa+VjeLKwT7p
X-Gm-Gg: ASbGncsFFT+gT0oQrL5rUoZcXEBrKFUpUATXS0xfhP32hcMn4u8zorbFG3gNgFpXus8
	D8ecaEvDYV8Jyb7d+f8ZbMtUYbvwdDu4QO6hxi3+rLdwEkFBlZNY3W/WN1JXXPoXuThlHNECj+a
	XXvvSFcaxapY8NM7HABNcgE7IBwlfjid2idRUSam+ggs6KkkJwk3MPfF8mVsokehMJplhkTySfP
	c95+33NSo3DHh+lCJUXwiLeeFNREdom6vA1A0Pkk7UvNWT9KKTYPqXDtlt+x8uSZSMkTJYu0jem
	Jw+6elyIZXDlbrT3CRTITIZLXiWlfBn5ruvn+EIP9QLJvVHWNMwqqZZgqaMd80dO/Q0CKVTNoiz
	A1HzL6Ci7MMevgx8=
X-Received: by 2002:a05:6a00:2386:b0:77f:5048:8a8c with SMTP id d2e1a72fcca58-780fcf1f200mr1705552b3a.28.1758756907097;
        Wed, 24 Sep 2025 16:35:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHvPHLLLfcrAguV8dm/AHzS45EMx+5sChl6etbTWkhwR118b19qGtwnriyiyE7t/rKeIdvbWQ==
X-Received: by 2002:a05:6a00:2386:b0:77f:5048:8a8c with SMTP id d2e1a72fcca58-780fcf1f200mr1705521b3a.28.1758756906641;
        Wed, 24 Sep 2025 16:35:06 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810238e9a9sm212379b3a.15.2025.09.24.16.35.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:35:06 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: [PATCH 0/4] phy: qcom: Introduce USB support for Kaanapali
Date: Wed, 24 Sep 2025 16:34:53 -0700
Message-Id: <20250924-knp-usb-v1-0-48bf9fbcc546@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAB2A1GgC/y2NywrCQAxFf6Vk7cCkIkz9FXExj2iDONakLULpv
 5uWLg+ce+4CSsKkcG0WEJpZ+VMN8NRA7mN9kuNiDK1vL77D4F51cJMmF9CXfA7UYUEwexB68G8
 v3e7GKSq5JLHmftu/o44khyj0nexpPOx1/QNkpeMjhwAAAA==
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Ronak Vijay Raheja <ronak.raheja@oss.qualcomm.com>,
        Melody Olvera <melody.olvera@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758756905; l=1256;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=Rl9KTMUdwIiYEMdOtiL5Lii1gIrVj4sbsfGYlSZOYFg=;
 b=B2o2Pfld+/1LcRIUb8MooBDPIU7mPswCsw3Py/cKadOg7yq2h5g5I/1Uux6fJQDvlvLxO1rx5
 nLk/HHSI2UaBx5sMRoIBsi2K3jiany4XakCAlndBN//foxlslCIJW55
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: Z66mVaPtoLCPgyxh_tK4BaUBAxi82hbA
X-Proofpoint-ORIG-GUID: Z66mVaPtoLCPgyxh_tK4BaUBAxi82hbA
X-Authority-Analysis: v=2.4 cv=Yaq95xRf c=1 sm=1 tr=0 ts=68d48033 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=751tZ-0Qz6C-U5i-0qsA:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDExMyBTYWx0ZWRfX/C5jdpubkoVK
 0Hj1nuSSShoFUWYUJ79dv4TtLA4Mhvq+IeqCN9bf3pAuF9tOz9V5PFcPgT3qif9UPDvgbf11mtc
 TOAozpWDoSxNufSjqbBp0/PQ8poG3qiRdWepmF5uV+ZD3hn3TA9PY9qndqxhNmCQ8Npaa4xjf2c
 jc92Nshcez2rqZoM24ygVk0drGGklFGgmVFOYlg76wJclVG3FJm1ba7+uxx4w5xVS7jMwgiDk6V
 I3MrqzuICM2oHgVoBO3urRRVl3c5Y7BOv/2f8SNKJfVVfMKeJ4QdqjhbXMPcInSo3NHaT+p4bhX
 TegAzKEKwg2pOCmCdYP+LbSW6HlZQ1nwKfum1Is442SME4AHKVLmMzerxw3ioyjfV3XYuV/fGeo
 ARzgmwLF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 phishscore=0
 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230113

Add support for the PHYs and controllers used for USB on Kaanapali SoCs.

The usb function depends on:
https://lore.kernel.org/all/20250920032158.242725-1-wesley.cheng@oss.qualcomm.com/T/#mb2e1260cf266638a56c04bc793f5fe9ed1b3b79d
patch 4 was picked from:
https://lore.kernel.org/linux-usb/20250527-sm8750_usb_master-v6-10-d58de3b41d34@oss.qualcomm.com/

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
Melody Olvera (1):
      arm64: defconfig: Add M31 eUSB2 PHY config

Ronak Raheja (1):
      dt-bindings: usb: qcom,snps-dwc3: Add Kaanapali compatible

Ronak Vijay Raheja (2):
      dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Kaanapali QMP PHY
      dt-bindings: phy: qcom,m31-eusb2-phy: Document M31 eUSB2 PHY for Kaanapali

 .../bindings/phy/qcom,m31-eusb2-phy.yaml           |  6 ++-
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 54 ++++++++++++----------
 .../devicetree/bindings/usb/qcom,snps-dwc3.yaml    |  3 ++
 arch/arm64/configs/defconfig                       |  1 +
 4 files changed, 39 insertions(+), 25 deletions(-)
---
base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
change-id: 20250918-knp-usb-810dc38e91d1

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


