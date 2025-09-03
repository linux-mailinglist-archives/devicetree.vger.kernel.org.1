Return-Path: <devicetree+bounces-212295-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F90AB424A8
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 17:14:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5C55268124B
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 15:14:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4AF1334369;
	Wed,  3 Sep 2025 15:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="e0kk9Cy1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2268931B11F
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 15:12:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756912373; cv=none; b=ufAeVjaYkd2UdcX1uMEXlW5p5jGkixSDzrTnfwpixC8dTn9QFVwLS4Odr+AyCg/T88Jbdt9LhnazmI9SA0sfuG+t0vifHnyyrFQRCRsCjx9VmlDJJPPkoNLjSnJYgIzmJjhW3wvR5Ou0OqQ8Gvjv2tcXjTRDi26KxLPr5nZVKW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756912373; c=relaxed/simple;
	bh=n1msrM78RrmCwzR/wFOD65VIQbeh+xShWMhrW5eoPaE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=umhRcaFHFscoyPOSfDI71M52eIQBn1BZB0J6m0SKZ6PzxZzHI+M6jmMZ4dEiXfgpC8bcq1RkkH5aL1h/E36MjHZaqSyLCa9jjnZYcibTvTy/JrdXt4tFdVS8L6tIfEpw0kFwhyTKMNXhtus1R80faI7Nbw9jb7KLaSD/ukYeXkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=e0kk9Cy1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583Dwqux016622
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 15:12:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fDHXiLglUa/QyYoJPmDdpI/sOMRLT10GemiBFT4WmI8=; b=e0kk9Cy1Kgjy87OR
	CmQP4T7SJMlgWQEXa2WvhqBk8t4XDVEvFt/UNCU0eRR16gew04CdHOXQhJw4A23r
	qG+hiz5ab/fX1cLYGxDvzoKZ4rBSsdeDE0EKje45lko1JRtliLxU/RhwghByuff2
	p5CtJyvSQUt3Op5crij7TDrc8kZ55orTwLj2g3EszvL+z+SuFOsDGvO+9K4OVTWP
	0pdh5ySZ2uTmF5r4ZaJMn6RDJYLgNORl6C7a/6xz7Kp2Nlkvn8o6cxxSpPfXyxJ+
	djBtlQ0R/+rrlRKc6HvG1ape5SS26DKK+9iWdw6IIjdiG9QW/onof92OGSiQRmhX
	fZCisg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48xmxj0put-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 15:12:51 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b32dfb5c6fso36151cf.1
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 08:12:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756912369; x=1757517169;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fDHXiLglUa/QyYoJPmDdpI/sOMRLT10GemiBFT4WmI8=;
        b=Z209pov3kLce/COY2zdX6N6HRBIjqsoJ+p1lEretMP3/cniQeoK89vZRyA9Dvdd0UK
         WKIgATKG0V5G7LasU5t5XpdwGooRCitHNO6bgfMhTVWD2o7tmI2F8ZXnHez0/RX7uFP0
         yjLtyYNdlYqnHkK8lZ9NNf3OQrOsw1+gkcRu7UDfYwD3oCccimtjBLRvKeIkA+ZcvfLp
         ubHEhChxpG2B6v6vMcU5Vzy7cUj53U4UEcMPObBt2hb1cDqHZLg9Ueyv/IYYbIPIlhpQ
         rnzpfLmijNtJQt66SKFRhh/Z1tAANIqGL4aIQe2OtP5ma3q5LLDHrXrunJJjK6Ow9l9m
         yorw==
X-Forwarded-Encrypted: i=1; AJvYcCXMfpvrZkC9oeVp/3XZm1ZVLRbWL9AAcTKc9XJbAYs3WUClX9t6dXoitsk0CbZgi4ZM3hl2tLGgDLPr@vger.kernel.org
X-Gm-Message-State: AOJu0YwXm94cEkTUOrEC82SKPCTtqdg30A1L8JtIPd7MCkDUt4kQTi0g
	WjcgvV8FFrzDIcstEimQci1ElRRz2w60nGvYJW7sbL0f7dOK2bn19hth/Amo2mM7x+CBJoA7F38
	V7pulokxRLbFHrGi8S9UxiR6NiCYfwZ4W0t+HNAQoHq/7awt1npXNfUiJoY1MbNAD
X-Gm-Gg: ASbGncvbmQvUqhGgszpnNw4rH2scagUFFXqEyKGK76Va813l2Y8k5n1M1wShJbtem4F
	qv5B31x+Y16RVQJ0G+s7/r4FdBw7JmhiThes/zJrW3mccmJN1ZtNMREq8CZ37kCfCMCAvobvexF
	rHHgq91Bey76/06QOz+9lbWu+npDccQFWPpH8g1k3npoRaTT10/OO+DoFEsFxAjLGK5uNeyVjhd
	P8TLeMYwDc/R/5YLhRoLAwO289qgaILhLLXHh5vdLlWe8CnqhcUdZ9MYuunrLV2TgOSykV6f+vz
	FAc/PmpiAwE4/nvuZACE4shnyas+4c18pzeo10bXDL8N/RJA/CBFcibi0s96QrygRA==
X-Received: by 2002:a05:622a:15d4:b0:4b2:d8e5:b6e3 with SMTP id d75a77b69052e-4b313dfd74dmr148011761cf.1.1756912367497;
        Wed, 03 Sep 2025 08:12:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHzte+bUX+mh/3ESDHWcOoXsvbBjuH86iwHqbD4v2SrOyFveDmmMuPlRhiIPoNeSHvIGkac6w==
X-Received: by 2002:a05:622a:15d4:b0:4b2:d8e5:b6e3 with SMTP id d75a77b69052e-4b313dfd74dmr148011451cf.1.1756912366819;
        Wed, 03 Sep 2025 08:12:46 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b046af12536sm165557966b.100.2025.09.03.08.12.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Sep 2025 08:12:46 -0700 (PDT)
Message-ID: <c7b87a26-2529-4306-86b3-0b62805f0a2a@oss.qualcomm.com>
Date: Wed, 3 Sep 2025 17:12:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 04/13] arm64: dts: qcom: lemans-evk: Add nvmem-layout
 for EEPROM
To: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>, kernel@oss.qualcomm.com,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        netdev@vger.kernel.org, Monish Chunara <quic_mchunara@quicinc.com>
References: <20250903-lemans-evk-bu-v2-0-bfa381bf8ba2@oss.qualcomm.com>
 <20250903-lemans-evk-bu-v2-4-bfa381bf8ba2@oss.qualcomm.com>
 <39c258b4-cd1f-4fc7-a871-7d2298389bf8@oss.qualcomm.com>
 <aLhMkp+QRIKlgYMx@hu-wasimn-hyd.qualcomm.com>
 <aLhZ8VpI4/fzo9h8@hu-wasimn-hyd.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aLhZ8VpI4/fzo9h8@hu-wasimn-hyd.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTAzMDExNyBTYWx0ZWRfX9f3THlvAQtab
 Ps9Y544isInumfNmZdYwQYhVwz88uxkEVvK1w9/8+VQeevlyzS138lhoCIycjCeV1UGXK6u5gDE
 qytyApW9SrFbFuy5G3O5LADRfXWKamtPdx2vVvs1zjG/uFs4t2cUAjZujAr1E6gbGrGMEUrgFsJ
 JH+eADl/PDEp38R+dKoNt6UVocVsMjEnfNgkrZkzW3TlS4wvlNm35QYaHpsJVFD0JDx3UTAQcnV
 PL4KDRRx9ep0S39vWT5+X83pNIAp/Ba/VpXKUo8Vcx1Z20JKEMGWq3RLhQuiWTKX5Vjj7ekWT0p
 aVb/l9IR8eHdONatRF7B6ptQokhok/v8FSEv3Xd8RGkcR8VriZCOnP5WbTaH2gszRXrkJFd/PBU
 Umzz/FqL
X-Authority-Analysis: v=2.4 cv=a5cw9VSF c=1 sm=1 tr=0 ts=68b85af3 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=ur_XN-hxGOuNM8kuFtUA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 1xB21UbTm4PzcFyW16u7kadgXhKx2sfM
X-Proofpoint-ORIG-GUID: 1xB21UbTm4PzcFyW16u7kadgXhKx2sfM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_08,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 clxscore=1015 bulkscore=0 priorityscore=1501
 phishscore=0 impostorscore=0 adultscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509030117

On 9/3/25 5:08 PM, Wasim Nazir wrote:
> On Wed, Sep 03, 2025 at 07:41:30PM +0530, Wasim Nazir wrote:
>> On Wed, Sep 03, 2025 at 02:29:11PM +0200, Konrad Dybcio wrote:
>>> On 9/3/25 1:47 PM, Wasim Nazir wrote:
>>>> From: Monish Chunara <quic_mchunara@quicinc.com>
>>>>
>>>> Define the nvmem layout on the EEPROM connected via I2C to enable
>>>> structured storage and access to board-specific configuration data,
>>>> such as MAC addresses for Ethernet.
>>>
>>> The commit subject should emphasize the introduction of the EEPROM
>>> itself, with the layout being a minor detail, yet the description of
>>> its use which you provided is important and welcome
>>>
>>
>> Thanks, Konrad, for pointing this out. I’ll update it in the next
>> series.
> 
> Moreover, I notice that compatible definition is missing for this
> EEPROM. I will add it in next series.

I think the pattern match in at24.yaml should catch it

Konrad

