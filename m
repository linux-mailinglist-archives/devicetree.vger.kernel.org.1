Return-Path: <devicetree+bounces-244686-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1160DCA7D58
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 14:49:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 85A863039F3B
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 13:48:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEC362E5439;
	Fri,  5 Dec 2025 13:48:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hpm84jhi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WriCZaT4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DEA732B9AE
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 13:48:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764942522; cv=none; b=syRpQnqBXk2cdQ4htmKN8NHZRyX00++UpAidaTCdL5F0tkiJU3WwRzj84pl0JrPV3g1HT9WDWjYoKTXdmtLAt7Aya9Zl6l4aP1YJDm5dB8ag5cIz35UaJ3BkAQayuG1Xqx5KhzHo5t6i686N4Ab9w27a5/SgE14Ny2vTnFw6A/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764942522; c=relaxed/simple;
	bh=TdsDIHramvOAs0qqLjdcDkHodXMcXYV/oLEbuXapvUw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GIDoDKi0RjiTr3mIq0CbmiV8AHPx5CwtZySbwwoG+5HWOIHVTo+GpRyG+t1U0jWdeVqt+Yk0BUJl39wgcarwnH7AJvA2FlEBrq/VghOliJ5FeY8KNmgB2cd8WYneNy4Nkz8k8t2Jouubbu/wC8nhcifAJh+8QhwU7rkUdamEp9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hpm84jhi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WriCZaT4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B5CpjPx231161
	for <devicetree@vger.kernel.org>; Fri, 5 Dec 2025 13:48:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IiMsicvrr8diIe0M5OoR4hIKRYKTzc0ne3OgurpEA+s=; b=hpm84jhiFntJXaz7
	BLEAz6UGYECRlZ4zNUKK4DGFFkjP/dktRO7c70NGICezQKYGeIKIzlGvp0Cvs6nY
	+y4hJFxuS5Tg1Q1Zt9iMGan2s4wnZY18mtTrnaTvhrdUYY600SomQweHCeHHb0YM
	rsnKrkXQmeiunh6nS+71CE3RLkZc8mA8nghlq22CD6HIyoGFVQAPf8Trhcj8JAUw
	20Ds5VX63TrnT0OTpk4oAdUQVS0A31Bx734Y13q4mTIlz4eT7cm0SzO8yMsB3urG
	1CH69Hcx+cNttN0++ACRDsrJkxXeGBLh0pgMpuOO60SeLG71o/hxeDbgwtPYdi05
	egCI+A==
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com [209.85.167.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4auys7g3yw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 13:48:36 +0000 (GMT)
Received: by mail-oi1-f200.google.com with SMTP id 5614622812f47-450da1dcd2dso4123509b6e.1
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 05:48:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764942516; x=1765547316; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IiMsicvrr8diIe0M5OoR4hIKRYKTzc0ne3OgurpEA+s=;
        b=WriCZaT4boBA6pa2RatEykyFnJYpokz03yFyO4yRigKmmcdpyn5YlWMm6bmKoQRJ+f
         a8sJwNL5JTY3l55rn/pGE/C4DD5Eq7zjURpdLmjTyOKfrcqBqU3mIprgmORWeYixc2aE
         BYJjSy3OxLxv/5wv1n5qtzHC9pscaD6n6tS1atJRU0vw5Qd5xC7FY93QF3KllgcySURP
         JZaJe5ErWqiQmkZjStDdY0D+ELe8s5U7wdeC5o7jzrIobANg78ru2nJdSmBmGE4W2cGC
         VVakKcmbddCBwF/L23sNyTVKLVKeGI4eSNyz2crJGGQZ1clDeFWKC6rAZX9p2FK+av55
         AE6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764942516; x=1765547316;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IiMsicvrr8diIe0M5OoR4hIKRYKTzc0ne3OgurpEA+s=;
        b=Y7Yp6BMCQvTy3dRNY9Mbkp1De/OrfDA+aL8pkNPg3h1MQU1t0iUEZG4TLWZ1x2N8cB
         lMCfoIY6ZoiR9MHgvB5NBmCDyQ3V3VOOizD6XwQ5zWcxHeTePPQb+oeFHyq7RuvyHOg5
         222X9k5rPrBimw2mZn+ukOPF4dHDXhCx1k2QCyypNDRhdbzMnTFO4cn54LnCEL1/k75e
         6PwJMJjzcLqWDm4VF6oP4GnF2Ev07oDnxuyUOnV+kXW7K4b8Az9mB0sAMFQlqQVxCIUk
         1+Q5z05oW3Wdl6l/qJ/QanBXcQu6+vIiffDyrN95ivMT81mOku/C0Nq9ZCzhJ8BzBR54
         OfWA==
X-Forwarded-Encrypted: i=1; AJvYcCWsJsT6f+i6/uC6q6/pZGgk/TlwMsnEw5ruYeplEkgKhwGONEuQbx1ixtAf+hU9vh34Gf0f8mOQnjb/@vger.kernel.org
X-Gm-Message-State: AOJu0YzH+VT8TW8pK+0sNWIpCEeyZH/2JE5U9CAOKo1h2MFahR7hU4s+
	CmMqUFmg1sWZ+h+f16SWRD/4jaGAbBmNWOwCxKcYrgVD2wJPp6aEB43017E6enFAwW1OjUXKGtw
	IN4vezbIf9LZcdwe+r5SXpAbEr6vX1KuX5n9yYX3ykv4dSWFxSPE8suKOPG42dX3ncIMRoU+7HB
	83RCmc21oaXxR74knsi1SOuVv8VkCyBHvhCFTnGhA=
X-Gm-Gg: ASbGnctPq1miyK9+to/TTrAXjwrmdsDzdW26hY3IkPp7kiAuhIeFXQHoltdQNmo1xNz
	HRYEnBtrdIgvtwBx8Cp+xrXngv8sIJHsz3PmtTiuwcdOUoO/8hXl3ActGrTzibY5Kq+IK5fRCFr
	L1hcxzfMJbj3zoQ2wnK9IAXa/y5JlV1mRmBwH1Ib1UiqxIyYdzFARIWs2Wzz7BnXU6SYKt
X-Received: by 2002:a05:6808:3010:b0:450:b249:71bb with SMTP id 5614622812f47-45378f06f2fmr3805981b6e.19.1764942515862;
        Fri, 05 Dec 2025 05:48:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG766SJ1fSjtRDbZOh8Wb8u90yiVoRAIMUkghojiquxEfkbj3EbLyJWgVfhUp4VNaCcs+C8cydwXQQVzNsrpn4=
X-Received: by 2002:a05:6808:3010:b0:450:b249:71bb with SMTP id
 5614622812f47-45378f06f2fmr3805957b6e.19.1764942515528; Fri, 05 Dec 2025
 05:48:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251203-firmware_managed_ep-v1-0-295977600fa5@oss.qualcomm.com>
 <20251203-firmware_managed_ep-v1-1-295977600fa5@oss.qualcomm.com>
 <20251205-majestic-guillemot-of-criticism-80c18b@quoll> <CAMyL0qO2FPBe7N6Q=hW-ymeiGDhABsU+VCj25jzcoQRhBoWbDA@mail.gmail.com>
 <8bb852ac-1736-49db-be94-f6be9e500f74@kernel.org>
In-Reply-To: <8bb852ac-1736-49db-be94-f6be9e500f74@kernel.org>
From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
Date: Fri, 5 Dec 2025 19:18:23 +0530
X-Gm-Features: AWmQ_bmuQdHWQvQj--3LmjNlkO7QoUm0_1jFk5YFWGBEAMX-x2uCNHN3HRIdyeU
Message-ID: <CAMyL0qMyRzpum2xeQ6rFGE+KR7jnEfQfyOQHb+5766tkOcBDrA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: PCI: qcom,pcie-ep-sa8255p: Document
 firmware managed PCIe endpoint
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@oss.qualcomm.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        quic_vbadigan@quicinc.com, quic_shazhuss@quicinc.com,
        konrad.dybcio@oss.qualcomm.com, Rama Krishna <quic_ramkri@quicinc.com>,
        Ayiluri Naga Rashmi <quic_nayiluri@quicinc.com>,
        Nitesh Gupta <quic_nitegupt@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDA5OCBTYWx0ZWRfX+5HgQlt5jDiv
 v+XoI7W3kqokZRbFvX7L+H2Jy1Y2HDUrVNcutLKyvEo90Cpe6wl2Qvx8PPLeD43L1pRPIyBGFns
 5W7fHOLQ6PSez5vlwQkUKE4jtTztevXGCvq2znpR/MiwfEEVOL/YxtsY8xGzKW4NsY8DngtWgv/
 rb3v+BZL5heh1ETaJQMrpj/h+9s2vnoR/s1J5gnr1sm4aD+cz898FBXChBNURiCaxfWptzxrACu
 hgAkJV15eeSZzIa2TRPjVTDAbYfH4UJ8lACCk5WqeFx7h6iV/3SmnO+6mQeqpyF9WXAl98LBpSi
 4pbgxhp2ypsHQsJC5S7LHALsccI8KknyOxB+mKABtmgI9XhMEEyQFgPrVsvWPAKsXto7FCyMEkd
 gi+fwLHMCECfY6vFbmTFZNeN+GLG1A==
X-Proofpoint-ORIG-GUID: xIVEl8llsEek7_YJOc3L0WQzHgywUOql
X-Proofpoint-GUID: xIVEl8llsEek7_YJOc3L0WQzHgywUOql
X-Authority-Analysis: v=2.4 cv=GtVPO01C c=1 sm=1 tr=0 ts=6932e2b4 cx=c_pps
 a=AKZTfHrQPB8q3CcvmcIuDA==:117 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=VwQbUJbxAAAA:8
 a=GzXPYxtLnhddMOALZxQA:9 a=QEXdDO2ut3YA:10 a=pF_qn-MSjDawc0seGVz6:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_04,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 adultscore=0 suspectscore=0 impostorscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512050098

On Fri, Dec 5, 2025 at 6:44=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> On 05/12/2025 13:58, Mrinmay Sarkar wrote:
> >>>  1 file changed, 114 insertions(+)
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-ep-sa825=
5p.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-ep-sa8255p.yaml
> >>> new file mode 100644
> >>> index 0000000000000000000000000000000000000000..970f65d46c8e2fa4c4466=
5cb7a346dea1dc9e06a
> >>> --- /dev/null
> >>> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-ep-sa8255p.yaml
> >>> @@ -0,0 +1,114 @@
> >>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> >>> +%YAML 1.2
> >>> +---
> >>> +$id: http://devicetree.org/schemas/pci/qcom,pcie-ep-sa8255p.yaml#
> >>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >>> +
> >>> +title: Qualcomm firmware managed PCIe Endpoint Controller
> >>> +
> >>> +description:
> >>> +  Qualcomm SA8255p SoC PCIe endpoint controller is based on the Syno=
psys
> >>> +  DesignWare PCIe IP which is managed by firmware.
> >>> +
> >>> +maintainers:
> >>> +  - Manivannan Sadhasivam <mani@kernel.org>
> >>> +
> >>> +properties:
> >>> +  compatible:
> >>> +    const: qcom,sa8255p-pcie-ep
> >>> +
> >>> +  reg:
> >>> +    minItems: 6
> >>
> >> Why is this flexible?
> >
> > The reason for `minItems: 6` is that the DMA register space can be
> > skipped if DMA is not used.
>
> But the hardware has this anyway, so this must be here. You do not write
> bindings depending how drivers use them in your use case.
>
> Either drop minItems (fixed size of array) or provide rationale in terms
> of hardware in commit msg.
>
> ...

Thanks Krzysztof for the feedback.

 As per your suggestion, I will drop the `minItems` property for
`reg`, `reg-names`, `interrupts`, and `interrupt-names` since the
hardware always exposes all regions and interrupt lines.

I will use a fixed-size array with `items` only.

-Mrinmay
>
>
> >>> +
> >>> +  dma-coherent: true
> >>> +
> >>> +  num-lanes:
> >>> +    default: 2
> >>
> >> Isn't this deducible from the compatible? Do you have have different
> >> PCIe controllers with different lanes?
> >
> > SA8255p has 2 pcie controllers(pcie0 and pcie1).
> > pcie0 supports 2 lanes, and pcie1 supports 4 lanes.
>
> That's ok, thanks.
>
>
> Best regards,
> Krzysztof

