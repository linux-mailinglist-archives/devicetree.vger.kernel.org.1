Return-Path: <devicetree+bounces-203234-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8439CB20736
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 13:16:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0758C3ACF01
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 11:15:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C4872C08B3;
	Mon, 11 Aug 2025 11:14:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ktTDidAI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AACAE2BEC2A
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 11:14:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754910880; cv=none; b=rtBPGdAHTfZT0KMNSkjHJuLJaGwmpFEpHzorrpmGK9jG9fSpPCaRiNdVfLT/7jXVoUEwWKBnrtuyGUt4a3fzaeRsBZapdIHO+YUvOpf1hAgD3ZKCagu2a/AuGgI2R+7l/H43AmKoh42u1K5edepFuXBcc8FYT0LHNckUfahaDSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754910880; c=relaxed/simple;
	bh=e24QJFeYn/rd0qZBMV40BvBKk1/UrSZNtUYQoAsCBHs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hu0yPz4IwzpCw/pKDxgTFT74Xj5wcWLtltJcw0fjOFdzvXsWwmbXdEH+DSMW3TVsi39HB16/DWOkb4SjXVxY+pFvBGCSHvI+aGDrBls0QPQBgCvN+T4DH/ufpyUE6wml0+4iiOwRc4vYFurjqHtcDpCyocB8ZK+y3rmf3MjmoxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ktTDidAI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57B9dCNL013114
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 11:14:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FMVgCALr0eA8+Us8AyPrgn7ofcaNBLZnHFXRdCHjjtM=; b=ktTDidAItFqOW24t
	S2HZKgTLd608Um1Wjh9VBp6qsSawH55zNd6TIZw11mULKqEatccWJTDo7Mjm5C6n
	DwQlz/d12F0HPP2jPg0x+seP3HZr+XLAINcB7wcGiqNdwY5VQJm9glOX5mxo8/da
	rzrKG9D4mjdzpf6exaer6qjLaWEum3Uq5SgPpNl5ZmEHsJbhvOnURV1ondGMOEnG
	UeBeEHbIybYWKH641vvZNVqfu8TmAhRjb8wgr3S4obhADzh+mpZA9OeQmOOYlKVp
	4WGchkteboag+vIkXj4KcPEYY64Oswak4OkZfCz59BGRPTPLZIOdV9VOXV3whK74
	9LibGA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dupmmac5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 11:14:37 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b067cb154eso9711461cf.0
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 04:14:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754910877; x=1755515677;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FMVgCALr0eA8+Us8AyPrgn7ofcaNBLZnHFXRdCHjjtM=;
        b=PsWDZbbW1R42JxZ6CxtfmNhhd2TTPf/wvH660pnF+bhRurM4f19ABgB9BhfwkZ5VJD
         jcAhKAhA3zlb/t5xkN1q+9ZHiqaR1hXsuf0shtacWzffqiAc47eY/YeLflV/RLrJUpRc
         OOgyGhdn5LKOYLXYFnEg7C3vf5g5h2gjFjIYVlMxtv35fwIssJkCbI+OJbGAxU4iVxLO
         N2Geoa7H3CyFY98WSu5ubLQiBiNDZmpiYqKsfA7k3AxAqok85sdGvJT25904tEgG8Eeq
         z7Cjnw5Qx9Ol9IzHgJLjH61cocbRo5+uAzrtmrsVvmeRjVpeNnmgZA75lgUDq8RCbPkw
         POvw==
X-Forwarded-Encrypted: i=1; AJvYcCU5YetPfxmgrE3BcYNtBQEG3lT8tJlFzAYPYkI0z39fxp2NhbcKVwb9LPZAH1iJswqNBsy90h0fpJnT@vger.kernel.org
X-Gm-Message-State: AOJu0YwnAq8Aj56glhi2cQPM14t7QvJE20xC+Nnk0Yr1hGFaoKndeFh/
	WxicbCYVVW9YXwJ2vKtGHUDDJFLMYswkNDmSWfsAVUg1fePCobYXuCotEQZcTEV5hoIf+Y45398
	UMiU2Qc3MYxEl2tXaO0+KRrbTOFNwjbKROuKjihixHpYQ6XR13kfflFw0Q+GyrD7X
X-Gm-Gg: ASbGncuOcCMt1Vp/sRjip25bWlBh1JPCW/crlHD2UQ6xag7VOrrWQH5YDeAkKb6BL0Q
	yeEVva4JTz3gmQEQLaiZZ5VGIvEYhVIyKjijqArHf2QH7gvdYYN8s/o5molLdCwgWInqaNuBWAG
	MQNEwTYRMIVXODK9G+qeID4I71OfARFcm3lTwOe7LAEmsh68s3YlE1FfYb3iM/7gQ/4yrCvGlhP
	UnR/9n4wBjpqraXeCSlIp4wIHdXbp6DKhEBkAi3MF36pXBAgxZO+CCtQopKKWHuTkRpJoxftKJX
	H61VXzjelCzuKWZIahRM01dC6spmdsHnPLzQPwIm34z3rYRsQlsJw7nW/bvFHkSL20/2wdUnZ7K
	LdawgStEFs6XUzQ0T+Q==
X-Received: by 2002:ac8:7d14:0:b0:4ae:d762:c070 with SMTP id d75a77b69052e-4b0ea60d209mr1240981cf.2.1754910876593;
        Mon, 11 Aug 2025 04:14:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGcUfndsz+/5jp0G9OaiDDbR36Irm8Uk+PPCGZvdlMWx0v8ppULBdZLYX9OArLLxW8LKzxvuQ==
X-Received: by 2002:ac8:7d14:0:b0:4ae:d762:c070 with SMTP id d75a77b69052e-4b0ea60d209mr1240671cf.2.1754910876078;
        Mon, 11 Aug 2025 04:14:36 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a21ac0asm2000540266b.99.2025.08.11.04.14.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Aug 2025 04:14:35 -0700 (PDT)
Message-ID: <a6dbfe06-00bc-4fb0-9496-fb7ca849f832@oss.qualcomm.com>
Date: Mon, 11 Aug 2025 13:14:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] arm64: dts: qcom: sm8750: Add PCIe PHY and controller
 node
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi
 <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?=
 <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, quic_vbadigan@quicinc.com,
        quic_mrana@quicinc.com
References: <20250809-pakala-v1-0-abf1c416dbaa@oss.qualcomm.com>
 <20250809-pakala-v1-4-abf1c416dbaa@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250809-pakala-v1-4-abf1c416dbaa@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=bY5rUPPB c=1 sm=1 tr=0 ts=6899d09d cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=gkRObvzxmN_HJK3DEhcA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: bYCjrN5yPVnhLEUtns66kciAzFOPOXTB
X-Proofpoint-ORIG-GUID: bYCjrN5yPVnhLEUtns66kciAzFOPOXTB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAwMCBTYWx0ZWRfXxW5Ja/JShykM
 LaDOYT3kNwr4+q3Vc0r1tBOIhXH6qcFmTJsEWe+Zikk2qhd3Jkp81cmbuemjaJ+foZuLECihuFf
 AUBUqvlQnBljA00fiDuoOLxYYP9DE/hfHwBLJ8Hdjm/0T5poDwUs9HwnkJiRJiH+pCcZEg71nFd
 7x3v/kCH46j2eFLBEqoz3hf5TFNjP3NVjvlNY0sEmo2gf0ibaC9mFbV0aLJ1D4g2zY3UaDnj9Yh
 W/fXek08ccWw2Od0I0Ooiv37QLkLRp1scrKjtrkp2meNDiPS9ryPfsK8zZqzxjwdkLfofI3nHeu
 4dLbtPPV5Org1gVIhgg27LA/2fxbu+emwFMmvhTcyqnDrve+ErccrL0jgVxB2ddW3OJ1I09mEkG
 TEYzXuyZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-11_02,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 bulkscore=0 impostorscore=0 priorityscore=1501
 spamscore=0 clxscore=1015 phishscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090000

On 8/9/25 11:59 AM, Krishna Chaitanya Chundru wrote:
> Add PCIe controller and PHY nodes which supports data rates of 8GT/s
> and x2 lane.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---

[...]

> +			phys = <&pcie0_phy>;
> +			phy-names = "pciephy";
> +
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +			ranges = <0x01000000 0 0x00000000 0 0x40200000 0 0x100000>,
> +				 <0x02000000 0 0x60300000 0 0x40300000 0 0x3d00000>;

The BAR space is larger (0x2400_0000)

please align the overall node style with x1e80100.dtsi

Konrad

