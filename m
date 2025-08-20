Return-Path: <devicetree+bounces-206651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C78B0B2D27E
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 05:18:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 83A4A3ADA88
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 03:18:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD38E25D1E6;
	Wed, 20 Aug 2025 03:18:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gdoEGRrS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D72C23535C
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 03:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755659904; cv=none; b=afHcL+NSK7qp5M3jeM0IhvektaCFX6yIVTOdoWLuBDJ6a9BUJxHOqnR6Ch3TaGsfJQup9fXge5h/viM38+owQbtmHdgM211TPZ6nu4j4rvZOCZC7Rg7FvQz3D9lFZy4KTDcto7jp9CdEZqSoTJfmbSrp03ImIjRyCJAttdIsDo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755659904; c=relaxed/simple;
	bh=cEMOtZbGfpEq1NXnNikHEI6Fk7Pu/vu+cfjaKIrEStE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=P5zq3iBMgzP7QLRr6DajQbUz/6+p7L962iN7jsMfzEdzH+2yeZUxkjUm3dELJEf/tsJu3rA8soPZ0+pPspil8sgLbfIipWeGpD/bbiKH5RoqFSmZNUuzC/mhh5rwFxkFDu6EChnw1t+/HkwurLk0DlpzJg+gFiwI0oza8l6Rikg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gdoEGRrS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57K1oebo010469
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 03:18:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1N/ucuPVyTyuNbkPcCCW3UQru9In3TiK2iev/+oe3mM=; b=gdoEGRrSMiZHcCc6
	Oo5swe3fsHJEfhNQ9+pgvKJjnB8H0gCiv4Wfiz1NZw1JdjbBEBnykd0DDKRxIE+V
	VkOZxED24WT/zu4meCWY4MclmKfzkTwdlJmlNFH4pe0LQOnu5UUoATxq6Q9qCVlk
	thlNab6rJABofIEzlVHIVkuX0/B9h4qta4DgFKzcx2ABdd/Cua/ofVIXWds1sJ0s
	z2+ph3z5CDFp19I6hLEz4x6qd+wZ7+B2STwLp2ogEFsfaIAmF6GpSTE8eV/0ioOq
	zPx9tHwmTtQLvCc3KSdGQimJeMvzG98dn75hIdBgHUAigUTz5ZGIoQo/fozxbpbX
	VuuNMQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52bg6v9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 03:18:22 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-323267bcee2so5727748a91.1
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 20:18:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755659902; x=1756264702;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1N/ucuPVyTyuNbkPcCCW3UQru9In3TiK2iev/+oe3mM=;
        b=i7jCD2X84VTtUJjg8WqSKtLdCjiJ82xLkQSUECM5gsCYzqBtAYipL/MmYMUJ/ObPq9
         oxAl+qgwkOYXeizjvokFt40yU7r0Lp6LEFQJ5u9a0wgWxHwk2jffILnYqgBBImxWsh1D
         FlqX24+MgptGfJHnuBVLirT31aOxzr3yoa2NhZ58myFSHAZgimmagDVL+6b/vZlw8GUo
         I395BXe3ezyeW9JuUdsT+qlzARPxwGPWHTTL7KyJ0YZq0GRofMrFV57QVEEVghmiLDAp
         OyF2QCD4WLbWGh/A0wK7O5VH0rX6qa5TUX/rsv8t7anU14g5nKD0MGEj8De03svAA8iB
         adOA==
X-Forwarded-Encrypted: i=1; AJvYcCXGUlDO4J6NoXjrjDtlU7W9SLiMFpNv3Nj1q7drg14mSu/mmk60j/9itbI5KEhg7GAFhbjlcnyRkvmY@vger.kernel.org
X-Gm-Message-State: AOJu0YzWENu8MKDe/f0e09vFDf2W4nvMbuirK8wQGuxyuOuWodnd8iFA
	AMjLcdtC4GWNu90EBdtZdLzFCsWnnq+esesauOLD0Ek/H3OW2Dzy1vhs5Bah7sPhJcesWLfq4dy
	dpOARIO6baCl1A9x8dQKCKXboU4kvLHMvpEPWu2aPIRekB7LYjQlMn7BNMvTBcLnV
X-Gm-Gg: ASbGncslVGF5yXvjDUjo8iEOWCbGx17YNLKo1F5aRNRAeAsfFl/6MPzqcRoMhSyy4D+
	jdRoeD5pq62JPUGMljf+IyrcFcuqX3Bjjy7bpXaNVGP+yhQJwY4GmJeoNOPpA+d5jTQMbo91LOP
	0/AxZsLMGwQg9b7OPk1p/7bV8aEJuCN/mtU1WMShWSyq3ZNsFzJTwjYwayYj3i79xBsExGF9zKo
	WaJ1lbv+svICESDnCor2g3/FTzduMh8BtIRhJPNL7s/Ltk694CUawydOtTAoRhFzXS8cMXPag7n
	wZ4IMKIJFPk7ZZ78dopTY7j+Z06K5vyZPwCXLiezrRw0mD9gSLRUU+/Bbrygz+Y3XhGilY1ERCY
	Gphf+EF2fuPivpxcfh0d7MOGS50By007Y
X-Received: by 2002:a05:6a21:6d84:b0:23f:f5bf:35d7 with SMTP id adf61e73a8af0-2431b988debmr2421263637.45.1755659901653;
        Tue, 19 Aug 2025 20:18:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEg42eG76MsaUYs0q0AlQR/5jkH+O6t3EbXik5YsVCq2cwrkly7cX1JNA8zlN9xV7ue3HTcKg==
X-Received: by 2002:a05:6a21:6d84:b0:23f:f5bf:35d7 with SMTP id adf61e73a8af0-2431b988debmr2421234637.45.1755659901283;
        Tue, 19 Aug 2025 20:18:21 -0700 (PDT)
Received: from [10.133.33.88] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-324e253cff5sm702559a91.12.2025.08.19.20.18.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Aug 2025 20:18:20 -0700 (PDT)
Message-ID: <648e5f1a-5945-4562-b280-c12d26ad65a8@oss.qualcomm.com>
Date: Wed, 20 Aug 2025 11:18:10 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/6] arm64: dts: qcom: qcs615-ride: Enable ethernet
 node
To: Andrew Lunn <andrew@lunn.ch>
Cc: Vinod Koul <vkoul@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>, netdev@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, stable+noautosel@kernel.org,
        Yijie Yang <quic_yijiyang@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250819-qcs615_eth-v4-0-5050ed3402cb@oss.qualcomm.com>
 <20250819-qcs615_eth-v4-4-5050ed3402cb@oss.qualcomm.com>
 <813548c2-02be-40fa-bb6b-00c4e713d17c@lunn.ch>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <813548c2-02be-40fa-bb6b-00c4e713d17c@lunn.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX+CeEbavjrmnD
 y6phhknZBrYA8C4L1IM9SZb/rNsfmvWFA6KS/GEKWDFdA2q7GQ4/TX1dfEKCi/YQ0MdRCjibJCd
 n/4TCBS1mnELcOD6gHWIzt5hqBg8dCkBQg93LvZdTtBqfrrqUtEeYQMUdUuBWUHhPaVCEbgVFzN
 flW314u0ILXamI3/M6+ygUV/+nDse6AYI/fL+NXgvMA4g1MVAZlNEIpl9AT5VymwmlkdpstsB7z
 gwIYLvgpDdOn3DyVaiMDDz6aw60tgv/NQ8ZNKL3xvdr7Apd6gEQpMkun0cJjSgpfU/o4H0g+2AO
 eh0q7GkVGvX5FWG5v68JrOhDYoSP8basWGQyhZs4A10BCg08seA3UjWmGcD5QmTQh5Ug8fm1E4Q
 m65/kBI5SDmlJD7cNItyKr1WfjSvlw==
X-Authority-Analysis: v=2.4 cv=cr3CU14i c=1 sm=1 tr=0 ts=68a53e7e cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=TQ9DYVZ7-X13aS6S9P0A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: -p7uFkMkTqhgBsLSVmrNYf0HwI9CawO8
X-Proofpoint-ORIG-GUID: -p7uFkMkTqhgBsLSVmrNYf0HwI9CawO8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_01,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 bulkscore=0 adultscore=0 phishscore=0
 malwarescore=0 suspectscore=0 impostorscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013



On 2025-08-20 00:24, Andrew Lunn wrote:
>> +	mdio: mdio {
>> +		compatible = "snps,dwmac-mdio";
>> +		#address-cells = <1>;
>> +		#size-cells = <0>;
>> +
>> +		rgmii_phy: phy@7 {
>> +			compatible = "ethernet-phy-ieee802.3-c22";
>> +			reg = <0x7>;
>> +
>> +			interrupts-extended = <&tlmm 121 IRQ_TYPE_EDGE_FALLING>;
> 
> PHY interrupt are always level, never edge.

Thanks for pointing that out — I’ll get it fixed.

> 
>      Andrew
> 
> ---
> pw-bot: cr
> 

-- 
Best Regards,
Yijie


