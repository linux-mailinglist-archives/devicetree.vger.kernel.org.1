Return-Path: <devicetree+bounces-183286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C10AD003E
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 12:18:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1D17A189A311
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 10:18:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F809286429;
	Fri,  6 Jun 2025 10:17:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="W/8NzpW0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A3073234
	for <devicetree@vger.kernel.org>; Fri,  6 Jun 2025 10:17:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749205077; cv=none; b=jERR9mpFeKS+xgjoKJ8X49v4BuhU1TPSCj/yoVBYAhLXZkagqUJJcQXc4L/uz/Nv46R7qmcMRnSybW5zQFaJvYbsw6BW6msySFcC09LUKPuwl1lpUEHMjyq+/S9u8LY0+q+0oA0E9k8LWHxFRI3UDtJ1Mpcob0pFfwkkZT2DzAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749205077; c=relaxed/simple;
	bh=SVMCfylbwM5vuiB3Wx+PhHek76Iz+RwCcFIRJVgYp/s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HdXeSQs80JGqZ4/4QXM/U8eoqg+2SE9Glhyj0IxoGr68ji0ARI5WP2UwWvdUTugaYS/oFKIzZ7HxaS0A3ivzTSFJcwqHH6yNPcQr8xA0wc4qzKpNXbb+kBZ/FjIOAh7+TywzXvjMAylxaNmLKdCe3pdA2T9Ik653V1Oe/jts+S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=W/8NzpW0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5565ZVHg004301
	for <devicetree@vger.kernel.org>; Fri, 6 Jun 2025 10:17:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=MUm770nsjTk7RKaqGJXS/UXM
	bcC3CLIfXaIBHht8qoo=; b=W/8NzpW0F9AfIenOSQKcaHAtJd6pwGHnLQ78YdyZ
	VRa0/MQkCsHkOd05mCswdst64V2qpJjZbOf0Hqh3w1gjcq4siRG8fCEIn3blroMS
	AkU6oTlRt+c8EZI67XOllofobWQ7GAizeV2l0rhhTYLVFLBgoR9AeS+wYaGtjIZs
	GKv7HFBC3/J0UBIqyRIUkIwcTf9VnkN80hEc31kIUThXYYeJaXqWN7oUSgKMSGQG
	V0VvQfcTJUMkssvLnMV5MO337dGkbpNd8wFQom6S+aZeqHf/JYdAaNeTDY8zq3mM
	rofkJBm+IznBjcgn34id9RcF4n79GuZ8Thl6QmmicpyZaA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471g8s4bmf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Jun 2025 10:17:54 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-234fedd3e51so19064385ad.1
        for <devicetree@vger.kernel.org>; Fri, 06 Jun 2025 03:17:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749205074; x=1749809874;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MUm770nsjTk7RKaqGJXS/UXMbcC3CLIfXaIBHht8qoo=;
        b=E8QBa+yWcVKx+obMI9MzOzm9rr+b0drVJy79kcjyxCFjLcMwUNldqOPrFYUm/nInOo
         EmErrmP1y7S++Yy5QHADB9tdRW69VhrO+Wed9p+87hq4Q3Be6UVH+AVrrzZdJBQn8icO
         fhhU529SYVgvJLi75mPH1g78iKRJ4rStssFQ7/laeNAZjLgid1tGJpjvVPjE86x/wvfb
         dcqDQcZCVPqIhvo4xvdhyagDX/xWk3ExcFJ22X6uyC9Y3SlwnbepDcK87GA7/1tljT2S
         hG5+3ncQP/tEswIUX4+/20cJjI6l26q3mZy+ggsNuKc3hQFhFohpOoQLc6HqWVk92zqu
         L2iQ==
X-Forwarded-Encrypted: i=1; AJvYcCXGECO4U8T388YZ9kSL6IK7/AHxyCUJAYwHBe9rFShVtXy4vJdcreYgHKQdSb40poSZTMEbyEGqBVtq@vger.kernel.org
X-Gm-Message-State: AOJu0YwC7hovSt72qVeAvTnn4uQstLi3LjYydnvYccxvVp3h5CLNj+Ep
	hqaTu4+tNtwELMdWocVbioYeTXpTLbIYCT8OHpgNMYJ8vFjHB4y3bAlzUsa+7AKBqEyZ3AqBsZy
	o0bgmd7GdtS7iHv09YN6pOsH4CVdOQh3jyvXHAZDyuP6YFb5JUqvCSKSIwQXWQSYp
X-Gm-Gg: ASbGnctVHAI7ScxFTDK0nV0IJv2Z4EBLKa+e46hP08IXDfDuylETJW45MBUxxrWPDGq
	XDEjIfWpkJiNZvFlTJiAwIXwpqwOROGcS6XlS4mlPeSVMFbCCUu0VA+V0soPPO2y+hgE/D4EtwF
	9Oto/goQPkofRyvOmsC2Y4/Isl8RQK8dbXnyk0/o8zoxq0WLAI5pBeEwFiTDzSMSG5QS3E4eclK
	ec2SPF7TaUl5MrnrJaAH3pusjQdPyJudb29PazUGqbyvS4mcBiY3CK8VG/RLRyuxzU+Rd/XrxCd
	ZtdCeS9wpI5tWjHTgrQ58/p2Wxd89CqocqKwyW6iKaBZxyxJzhb2ZbIHzhA=
X-Received: by 2002:a17:902:e5cf:b0:234:d7b2:2ab4 with SMTP id d9443c01a7336-23601d038c2mr38586465ad.17.1749205073608;
        Fri, 06 Jun 2025 03:17:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHWEq5utuN+xciTxdEM9oY6Q/JAcry9JQaMjmy2DyusLiUkQ5pFcrFEA1HGQcbYN9+4KF154A==
X-Received: by 2002:a17:902:e5cf:b0:234:d7b2:2ab4 with SMTP id d9443c01a7336-23601d038c2mr38586135ad.17.1749205073233;
        Fri, 06 Jun 2025 03:17:53 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23603077e9dsm9466565ad.1.2025.06.06.03.17.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Jun 2025 03:17:52 -0700 (PDT)
Date: Fri, 6 Jun 2025 03:17:50 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Johan Hovold <johan@kernel.org>
Cc: Wenbin Yao <quic_wenbyao@quicinc.com>, catalin.marinas@arm.com,
        will@kernel.org, linux-arm-kernel@lists.infradead.org,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        vkoul@kernel.org, kishon@kernel.org, sfr@canb.auug.org.au,
        linux-phy@lists.infradead.org, krishna.chundru@oss.qualcomm.com,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com,
        quic_cang@quicinc.com, Johan Hovold <johan+linaro@kernel.org>,
        Abel Vesa <abel.vesa@linaro.org>
Subject: Re: [PATCH v4 5/5] phy: qcom: qmp-pcie: add x1e80100 qref supplies
Message-ID: <aELATuLue/Vs8lHz@hu-qianyu-lv.qualcomm.com>
References: <20250604080237.494014-1-quic_wenbyao@quicinc.com>
 <20250604080237.494014-6-quic_wenbyao@quicinc.com>
 <aEBh2xHu3QDtUrxe@hovoldconsulting.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aEBh2xHu3QDtUrxe@hovoldconsulting.com>
X-Proofpoint-ORIG-GUID: AKcjow51dAS1dz4F0Fz708Y9PgtKGp-V
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA2MDA5MyBTYWx0ZWRfX/nI75Ck0ZbbV
 kQBGqBNAJXNmLye8dsArD0Rm8L4jpd0trAeU56zxkhRsMnMd/2Zo9m0dXtQ3lNHKG/O2smrNbN8
 4QnkM+lVGQ5UyCBGWDCPOPFdIr64wbgqHEDdeszRObAflEYYDQhkJ5OXSlJfgee0dpr1WTEHTPz
 UAXr8JHgz1xZakrSRkL0bHi4rAVPNDxg6mj5Uq0MZNCC2jJdsVXI8qfpQOKHzklX4cveaBhI1kJ
 SU4SmggNES4umjZSXkHpT4z27gjVKMix3gI54+x5e6iFI/opZNhpaFy+pjsAfRfelu+EZ0IxaqS
 k0A+Xve1fBsIyO1e2Dspp2Sm4E4nuTewh/fnHvl8XJWS61GzQLKZe3KzQvaHknhaf+q1AzxpBp4
 9ukJ+PqvsSoQS/jZax5XjgV2WtEw2b+MglRbVMfpsg+5GPNHPdLToF/KKhSJjxVCfNSJr+YV
X-Authority-Analysis: v=2.4 cv=RdWQC0tv c=1 sm=1 tr=0 ts=6842c052 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=zitRP-D0AAAA:8
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8 a=Kn45tV52aVggcf7Ks3EA:9
 a=CjuIK1q_8ugA:10 a=1OuFwYUASf3TG4hYMiVC:22 a=xwnAI6pc5liRhupp6brZ:22
 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: AKcjow51dAS1dz4F0Fz708Y9PgtKGp-V
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-06_03,2025-06-05_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 mlxscore=0 priorityscore=1501 phishscore=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 suspectscore=0
 impostorscore=0 spamscore=0 mlxlogscore=974 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506060093

On Wed, Jun 04, 2025 at 05:10:19PM +0200, Johan Hovold wrote:
> On Wed, Jun 04, 2025 at 04:02:37PM +0800, Wenbin Yao wrote:
> > From: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > 
> > All PCIe PHYs on the X1E80100 SOC require the vdda-qref, which feeds QREF
> > clocks provided by the TCSR device.
> 
> As I just mentioned in the thread where this is still being discussed:
> 
> 	https://lore.kernel.org/all/aEBfV2M-ZqDF7aRz@hovoldconsulting.com
> 
> you need to provide a lot more detail on why you think modelling these
> supplies as PHY supplies (which they are not) is the right thing to do.
> 

TCSR_PCIE_xx_CLKREF_EN is not always in TCSR, they're custom
bits to enable pieces of the distribution network. We always classify them
as "TCSR" even though they're not always in that module.

So even if we put the QREF supplies in tscr device tree node, it still
doesn't describe the hardware correctly as the hardware itself does't have
a unified structure.

Since the TCSR_PCIE_xx_CLKREF_EN is only required by PCIe, why can't we
model these supplies consumed by TCSR_PCIE_xx_CLKREF_EN as PHY supplies,
treating PCIe PHY and TCSR_PCIE_xx_CLKREF_EN as a whole.

> Also please answer the question I've asked three times now on how the
> QREF supplies map to PHY supplies on X1E as no one will be able to use
> this binding unless this is documented somewhere (and similar for other
> SoCs).
>

PCIe3,
VDD_A_QREFS_0P875_0,
VDD_A_QREFS_0P875_B,
VDD_A_QREFS_1P2_B,

PCIe4,
VDD_A_QREFS_0P875_B,
VDD_A_QREFS_1P2_B

PCIe5,
VDD_A_QREFS_0P875_2,
VDD_A_QREFS_0P875_B,
VDD_A_QREFS_1P2_B,

PCIe6
VDD_A_QREFS_0P875_A,
VDD_A_QREFS_1P2_A

> The fact that you so far have not been able to provide an answer
> seems to suggest that these supplies need to be managed by the TCSR
> clock driver which can handle the mapping.
> 
> > Hence, restore the vdda-qref request for the 6th and the 3th PCIe instance
> > by reverting commit 031b46b4729b ("phy: qcom: qmp-pcie: drop bogus x1e80100
> > qref supplies") and commit eb7a22f830f6("phy: qcom: qmp-pcie: drop bogus
> > x1e80100 qref supply"). For the 4th PCIe instance (Gen3 x2), add a new
> > driver data entry, namely x1e80100_qmp_gen3x2_pciephy_cfg, which is a copy
> > of sm8550_qmp_gen3x2_pciephy_cfg but uses sm8550_qmp_phy_vreg_l instead.
> > 
> > Fixes: eb7a22f830f6 ("phy: qcom: qmp-pcie: drop bogus x1e80100 qref supplies")
> > Fixes: 031b46b4729b ("phy: qcom: qmp-pcie: drop bogus x1e80100 qref supplies")
> > Fixes: 606060ce8fd0 ("phy: qcom-qmp-pcie: Add support for X1E80100 g3x2 and g4x2 PCIE")
> > Cc: Johan Hovold <johan+linaro@kernel.org>
> > Cc: Abel Vesa <abel.vesa@linaro.org>
> > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > Signed-off-by: Wenbin Yao <quic_wenbyao@quicinc.com>
> 
> NAK, for now, and please don't post any new revisions of this patch
> until this has been resolved.

OK, I will remove this patch from the series if other patches require
updates and submit it separately when it is required.

- Qiang Yu

> 
> Johan

