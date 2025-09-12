Return-Path: <devicetree+bounces-216342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E10B54698
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 11:14:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0852056483B
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 09:14:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32DF8279DC2;
	Fri, 12 Sep 2025 09:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dyh4kkX1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB74D2773F3
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 09:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757668437; cv=none; b=DIeT26gxxykhoN0bH5IFYNqo6IMXhnU6XjJH0vXWqPqHBd4ocEHsxKpPaE3j5cc0Zi4OnAR6PrDJKRPWwxRxAVyXGBGaqiYuEa71Q6tJ4OVmzw7mTCQ1fuJLw4iDX6HUoFdpAfsJmL7keAOzvwHX/96QQngX/W0wg027DYUCX38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757668437; c=relaxed/simple;
	bh=ldXbC9SMsBCqpgzVecPRyoZxT3Gxq+D1+RjXF/SLglI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=i886K46rOO3WXQOFcPQDN8cjVFv97yjoa7VWZRGyLW8k2pgN6Yn5xdDMCObW0iTxYoT1tD6NT3b5oxGTV+AeImjAKZHyse35YNwsQBvG5nY8hU35HvPQlMuGyW5Tthu3+KrQ5pW/ktYVGzvURThwJCiPPatRxzdfkA8LcLhzqrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dyh4kkX1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C7VgEJ016094
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 09:13:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	l03jg7XbVLsjzyUA/wauJ2yxOhp32HR/FKDFzMmGCMQ=; b=dyh4kkX10GImy1g6
	qT///8wU68rLVT4rOhh37myDhMV0hftZLPbqNVX6jVm/STd0UKQzgqM6XnxzyahL
	dKFfjZ8KUSyV7ksNl1tA43kyxAV+NVB+gXC3RgsGtynm9i/7FX1Y7FFjx7sOuBEL
	KQ6OkwtUL9cBmFqEVgmiqDLEvIDP497JHCkeS9r9ljkwyYvm7wqTdu8u82kabmFd
	DEBCqOLnulI1grv0eP1D98lo5rxDXRnIhsB9FVgXf21THLJudu9j6sUJUGAfY/XW
	NOJn0jBiwYlJfeY+/wpd5n23tb2qxgBdPo9uanhHLe3z1yOtkNsjU2wbMIqVr2g4
	T3v12A==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491t387c2m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 09:13:54 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8247e59c78bso14908885a.3
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 02:13:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757668433; x=1758273233;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=l03jg7XbVLsjzyUA/wauJ2yxOhp32HR/FKDFzMmGCMQ=;
        b=JqEXRLrlNeKMm8MevlAfe3Ksd9EdWwHhwq6N+ZZ1NP2R3YnzkyMztwsYAHeNUcPLTm
         lULixMuyg31Mt0AljMbsFer6xfIL8Dk2eFORvmkzhFfSzaNGvH9jNt+02EXNYxoQOopX
         JgNXQd0IiA8HP3djK2s6CxDPEhjHNZYb/oTpRGddRR5J75eLQrN4EPsi6vJ1CuVv0Z2X
         JZz6vQ/LH6xgxmTmqdPnGMgBn/x4flb6Eg4pLHK6Y5CXGEkAZ9LOaLA6DRWz8x0sRhyj
         IhW8s8kAxtZ25D0+zD2DKvv+j8z4XcE9pEGDOp5kPxGRCXdLW7axt73U9EE3NqrU+DEt
         uW3Q==
X-Forwarded-Encrypted: i=1; AJvYcCUsDc3+DjU9BCsJMszuS6p9Zeo0pr8h4yW4MtPoouU6paAkUN42lC2hRTIsIcW1mXytUABo/AHZkq3Y@vger.kernel.org
X-Gm-Message-State: AOJu0YxAH2knSqchSSYAVFf8yAljSUaNXZX1RcPg+Z2+D+0sFP/yVUQh
	04y021qz0SySapBbf7KCF9r2RM1RddQYL1t0mO29JErqpgdAuwdSIHzmlltTkDLW4WNmm1xCztY
	Vxm/3910EE7MUCWcAHS1k1a1bmK4e0fKnpTsynZYq80A3HvSugSb+I60udYYY/IE/
X-Gm-Gg: ASbGnctocJqd+MyKeLsI9Rk/EK5tw3w9zSykevFVjUezCX2Rd3FGsIyscSxt+Y1dxEv
	O51jzfboyp/0BR/zVYDNedR3oRKuNSC5HqSoqcG5iqEKOwriq7UV/qXO6HjiQgoXoAQEIxxtb0A
	VRNucugWbSvFx/Sn9agC2y1L3z0hexyQ4lwZRRseiQzKMtcuX1WHWgpm6Q5lXOjgMp5dDk7YXTN
	JHl/R+pd1uP49c3fX885+fdNr45fU+Scqih3llcTporsXoBnGXV5D+KVmIo5IFzptB5L9r3IpPv
	effcZeplT37bthBXiGJpt3MG/pFwwCCNgo9uMZ4lWkhF4pwTMbJKhZ2qNeB21DfLjdhtKnBBUTm
	0wJ4oAGeiTP1aRD6HsXxRWQ==
X-Received: by 2002:a05:622a:491:b0:4b4:8e4d:6671 with SMTP id d75a77b69052e-4b77d08479cmr19485921cf.13.1757668433148;
        Fri, 12 Sep 2025 02:13:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGV8TvRgejfYIcKWS4JnF+RVS5QxXiaupLov7itJ0nYjCvvDQfhH2p7vyIIoxHj+cjEPYJlEw==
X-Received: by 2002:a05:622a:491:b0:4b4:8e4d:6671 with SMTP id d75a77b69052e-4b77d08479cmr19485701cf.13.1757668432570;
        Fri, 12 Sep 2025 02:13:52 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b334e76dsm332163866b.102.2025.09.12.02.13.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 02:13:52 -0700 (PDT)
Message-ID: <2951b362-c3c1-4608-8534-4d25b089f927@oss.qualcomm.com>
Date: Fri, 12 Sep 2025 11:13:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 02/10] dt-bindings: clock: Add required
 "interconnect-cells" property
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Luo Jie <quic_luoj@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Anusha Rao <quic_anusha@quicinc.com>,
        Manikanta Mylavarapu <quic_mmanikan@quicinc.com>,
        Devi Priya <quic_devipriy@quicinc.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        quic_kkumarcs@quicinc.com, quic_linchen@quicinc.com,
        quic_leiwei@quicinc.com, quic_pavir@quicinc.com,
        quic_suruchia@quicinc.com
References: <20250909-qcom_ipq5424_nsscc-v5-0-332c49a8512b@quicinc.com>
 <20250909-qcom_ipq5424_nsscc-v5-2-332c49a8512b@quicinc.com>
 <20250912-nocturnal-horse-of-acumen-5b2cbd@kuoka>
 <b7487ab1-1abd-40ca-8392-fdf63fddaafc@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <b7487ab1-1abd-40ca-8392-fdf63fddaafc@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: aKj2Ukye5Q1h7xQz9-R6qODQNu3s3AWz
X-Proofpoint-GUID: aKj2Ukye5Q1h7xQz9-R6qODQNu3s3AWz
X-Authority-Analysis: v=2.4 cv=NdLm13D4 c=1 sm=1 tr=0 ts=68c3e452 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=vpsw6NEknGMoy4p6atIA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDA2NiBTYWx0ZWRfX5d564DmIuQFU
 UwyAfHThsK9popC1GRUqgoj1jKO0l3XrAwmKT8R41Brrn2dejgsWSb3lsEyZp3AiUJruB63DLHn
 tj90TwPXBoq9eS0/dUOrFRkzIngFO/MDAhcQU6a754jbyDMVH+ROsDSE4meIHwHdGs+l3tg88wZ
 EHrpM4zOwstDRzoeeFde0CagYnTj7Bd6/ZIBhMC0oHmluiFMh1wJWbUrL4HmyY2vY/6hpKItgLQ
 Mo9S4XYFiLChuZOqa0OH4khVZNw32RAw/DDVh5LbG1xF+H1XvL7yhxZexymNwho/ScpH7hPtOnH
 BS0CUgfWhnh8Mx0ZW1t0jjhOIuZJ5jp3mE5HfOdtH0t3Ew5Wbl6xcCbebLJ1/0RyuPJtXSV0CTM
 3W676zRc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_03,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 adultscore=0 suspectscore=0 phishscore=0
 clxscore=1015 impostorscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080066

On 9/12/25 11:13 AM, Konrad Dybcio wrote:
> On 9/12/25 9:04 AM, Krzysztof Kozlowski wrote:
>> On Tue, Sep 09, 2025 at 09:39:11PM +0800, Luo Jie wrote:
>>> The Networking Subsystem (NSS) clock controller acts as both a clock
>>> provider and an interconnect provider. The #interconnect-cells property
>>> is mandatory in the Device Tree Source (DTS) to ensure that client
>>> drivers, such as the PPE driver, can correctly acquire ICC clocks from
>>> the NSS ICC provider.
>>>
>>> Although this property is already present in the NSS CC node of the DTS
>>> for CMN PLL for IPQ9574 SoC which is currently supported, it was previously
>>> omitted from the list of required properties in the bindings documentation.
>>> Adding this as a required property is not expected to break the ABI for
>>> currently supported SoC.
>>>
>>> Marking #interconnect-cells as required to comply with Device Tree (DT)
>>> binding requirements for interconnect providers.
>>
>> DT bindings do not require interconnect-cells, so that's not a correct
>> reason. Drop them from required properties.
> 
> "Mark #interconnect-cells as required to allow consuming the provided
> interconnect endpoints"?

"which are in turn necessary for the SoC to function"

Konrad

