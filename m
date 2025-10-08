Return-Path: <devicetree+bounces-224463-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 508E8BC41F6
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 11:11:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id CBD213529D5
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 09:11:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 535122F3C1A;
	Wed,  8 Oct 2025 09:11:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JMdemdZa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A60492F28E0
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 09:11:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759914711; cv=none; b=Yv4OxiYvvqq1ZIJG2Iz8WYmJ30PhHlLP5+B+JEN7Cbr+hWs80XlMXY6qVlfRAd4AptE8uIemQ/ZKdZW6UK4McHOy5KlHM7+X5xVaMX0OqBDDy34lZtmCwZCdST4g2zCxLtwOBLkA+ZV/Q0tkF+Nxf5mSChq25oiUCyfdCNyH3CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759914711; c=relaxed/simple;
	bh=7tlsNYw7jry2YwQr503x8M7vYIit29lQJU9LWiYHdcA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=l4c4E7y33f8pspjj3oLvMRUOQkzR4DAdz8mWySpI0WQVlmV8YvXwq21VHT+1o8jCC6ka/TFYKqa5v9s0DQwYz5TJ0RASNTyg2J6tTbn0AQt+m9tbDOXvv+310CSB/OMux4YRkzloPrRZVQ+3egbGx3ztQrNmeFb0c49c8zg2sIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JMdemdZa; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59890Pxp028801
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 09:11:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RzZHHkGJEfwd1Se8SA0pc+Db37+3AwYJluCV2KmgWEU=; b=JMdemdZaJUP+7wpa
	tW65ekjIBzNsC2rjj0t390yqI8Je2vQ/zKEpOu3tDrLVjRwewQYBVk6CKdutPXhD
	sDX6bRkzP4QOuIcamCuWFUUaLez5qNg07ionp0vpEjeMzbv81yNp1cFUQqouTYDB
	FhuhZAkG9POIvcKyvLsVGFPy6WKwyzpnp1X/ON+9BLC1aT1LybN0MPBu+c+s4tL/
	lwzE+e2MWuFiIiPt1G5thxNVYorjUAuk+Bz5SzgFcM1ztbtVaGRZMMGZQvZz/9uq
	NXXuDobjlkURwW+JhlE3xBD1yymCRRBBHgOwsQKCjvQlXfFdQKWV9OQB9/6ja1A7
	IbpZow==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jtwgsxf4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 09:11:48 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e231785cc3so29774851cf.1
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 02:11:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759914707; x=1760519507;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RzZHHkGJEfwd1Se8SA0pc+Db37+3AwYJluCV2KmgWEU=;
        b=wt3V9BTKleNO5fIruKy8S6mffH94q1Ru5gHNyACcxmwcupXLAt9ZU9/M2Fgj+VujvH
         PhjJM3ryKRajoSiDrdIFkuxkc62VjoQw5x3XwnL9702nzl1ysVzIrg9T9sQhaqhwUJdV
         s9SZJy86Fb/ANxNjiCilVPTpNGq21qA7IyC0eAp5a8dx7h+7DTALrfZ14CpuRR0SrULP
         fafGQFmyqs4BtD6cyyIkdmHN5m13ZOiFpLEb4Ib5PeO3ajNtRSpCUzPnQBkaVJOoNIpC
         8UXYJ7YlfvK6tD2zG3CHvOnsMO3p9HOswJwga3j2CVEsTpY8I7M2Rezey+FNxN7MpyFY
         SUuA==
X-Forwarded-Encrypted: i=1; AJvYcCX0X9JU2ZX6zENIgtZJIzUN8IsGJWmr9zoEDCuOrbXN44GHG7D+wMSrKOyFk8hgWZgELZNMdYnzKbNw@vger.kernel.org
X-Gm-Message-State: AOJu0Yzt4zBy2BzapDiacGF+12t6uoUyIcEzzuMQ3NzpnDqNg+6yAaT2
	dElbj5G3ogz8dlJNyL6QWyK2wdOk8JlAGqIRp8EFLSnBWHXFfKjgq4FZm6vtomUAOAWgDRU+p8H
	0kQ6w0f0SPdC8oEV+HvY03P1UT1NMcD00PjjJGsPDwYx0NKDPn/7Qr3oQO5zHB46V
X-Gm-Gg: ASbGnct2gU26b5XhkEm054sVR41PS+WaNcIlvj6LZZ8sw17bp3aJPzAURgELoZMr0DR
	vTyihnmwmHnHfUSR4ikGv7/OY8871aBS8Xkbi+OEXbs9MbXV758BiVc8tcrdXQClzIh4IiSSt28
	aTAihHaaKtKFYaBv1XeMT5W8xdot63VNescXrOWRRyh1D67Haqad3lddTok2p1Q73Q1ZFF3/TP4
	b+Jg3KCuj64oUrHijrdOSHmEM18+Cs4JYq2OsUMGsk3mvjN3w5B3abuOvNDA9NQa0w5VJLTPmYk
	TiQ7o0Dpd54Ky4hnxxJG3Ff+5fvVknwHYOgVZ38DbgNBVNoBm+7bvgyjKbpJdApEXze/w+KwRUv
	SOdUEYAY27vk2EF2aXpKHGIZovYY=
X-Received: by 2002:ac8:58d2:0:b0:4b6:2efe:2f73 with SMTP id d75a77b69052e-4e6eacd5b7cmr24322151cf.1.1759914707436;
        Wed, 08 Oct 2025 02:11:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEgmdkC0LE3dHLfUFj4RWEGCX/zas7y0dJ6kj/ES5PA+uvEzb5Ga7Acz9kcOVJYjeSkLcG61w==
X-Received: by 2002:ac8:58d2:0:b0:4b6:2efe:2f73 with SMTP id d75a77b69052e-4e6eacd5b7cmr24321931cf.1.1759914707010;
        Wed, 08 Oct 2025 02:11:47 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6397c9355c3sm7862106a12.0.2025.10.08.02.11.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 02:11:46 -0700 (PDT)
Message-ID: <8f2e0631-6c59-4298-b36e-060708970ced@oss.qualcomm.com>
Date: Wed, 8 Oct 2025 11:11:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: sm8750: Add PCIe PHY and
 controller node
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas
 <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com
References: <20250826-pakala-v3-0-721627bd5bb0@oss.qualcomm.com>
 <20250826-pakala-v3-2-721627bd5bb0@oss.qualcomm.com>
 <aN22lamy86iesAJj@hu-bjorande-lv.qualcomm.com>
 <4d586f0f-c336-4bf6-81cb-c7c7b07fb3c5@oss.qualcomm.com>
 <73e72e48-bc8e-4f92-b486-43a5f1f4afb0@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <73e72e48-bc8e-4f92-b486-43a5f1f4afb0@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAxOSBTYWx0ZWRfX9C/aEKFyj5dI
 AjjijJPaany50C4TTEAlSWcEAQEjrdMmfS1tFyO2s8X56zg951+YD0QS9a6Fsj8iId7QQQMHxbQ
 dstayw0N81ooLhrnaHJnMCy/zI7jfVy1kaIPrWSEc7MJ+YpRQpjiR6CPjPuXCiofJvMPv1Q30Ty
 QKlD4AKJSiunt3/VbQM5diWJqSD6waRhtS1zewBrq1AM8DZCF+a0BceFjYxohAS5plRYbohfukv
 Oisy+cn1AT9WzaYraywfNriHRPKVUU9RYEhgQarkOekUbmciSrFYoyaAqOH0+SvJfhPZ4Rn0slt
 FpOFXysmVkN251Q4b3vkdKkXLHtSXNnKShkW2bTNF3O59cgHuv0iNmRQL0xfmJsulkG2LmZww89
 I0bzyh3/lFBcGWpjQnhXF4Rn9fCmGQ==
X-Authority-Analysis: v=2.4 cv=B6O0EetM c=1 sm=1 tr=0 ts=68e62ad4 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=lX_GYFQQ6rhPkfvadcQA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: -A994NSrnPrRqCxbRVDEqLNYmIjbXmed
X-Proofpoint-ORIG-GUID: -A994NSrnPrRqCxbRVDEqLNYmIjbXmed
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_02,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 adultscore=0
 impostorscore=0 spamscore=0 bulkscore=0 phishscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2510040019

On 10/8/25 10:00 AM, Konrad Dybcio wrote:
> On 10/8/25 6:41 AM, Krishna Chaitanya Chundru wrote:
>>
>>
>> On 10/2/2025 5:07 AM, Bjorn Andersson wrote:
>>> On Tue, Aug 26, 2025 at 04:32:54PM +0530, Krishna Chaitanya Chundru wrote:
>>>> Add PCIe controller and PHY nodes which supports data rates of 8GT/s
>>>> and x2 lane.
>>>>
>>>
>>> I tried to boot the upstream kernel (next-20250925 defconfig) on my
>>> Pakala MTP with latest LA1.0 META and unless I disable &pcie0 the device
>>> is crashing during boot as PCIe is being probed.
>>>
>>> Is this a known problem? Is there any workaround/changes in flight that
>>> I'm missing?
>>>
>> Hi Bjorn,
>>
>> we need this fix for the PCIe to work properly. Please try it once.
>> https://lore.kernel.org/all/20251008-sm8750-v1-1-daeadfcae980@oss.qualcomm.com/
> 
> This surely shouldn't cause/fix any issues, no?

Apparently this is a real fix, because sm8750.dtsi defines the PCIe
PHY under a port node, while the MTP DT assigns perst-gpios to the RC
node, which the legacy binding ("everything under the RC node") parsing
code can't cope with (please mention that in the commit message, Krishna)

And I couldn't come up with a way to describe "either both are required
if any is present under the RC node or none are allowed" in yaml

Konrad

