Return-Path: <devicetree+bounces-242846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A02C8FD5D
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 19:00:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C0F3F343132
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 18:00:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F34922F83B8;
	Thu, 27 Nov 2025 18:00:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GxVnsSjt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HvkRQBaL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 800F42F746C
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 18:00:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764266420; cv=none; b=IoVgAcgKz1XbNIylgee2XqZ+Xk9KEJHSQyce2J1cDyzNYwyAoCJjjMHmmBmZFvcOuTBoFUpkuQ7KYwf3x85ch2Ql7TGV0+9OytfXPnJR1PAdC2HC0G8B5SjvOcyCw26hFKNCjnleCjQS8ohc7Z6/iVd7gzpfXXXsLUBtikbMcPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764266420; c=relaxed/simple;
	bh=Ba7EEZfwnf9YpA9Q41B0CywfBzWd89HDvFHbLNU51l8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=J+f0v9mZPK0WQKx8hTlPBBUez7MRKvGehHfVC5lRWZyahAKfbZ/NXikSCR7hc7Q2PtKIOT/5wyoPFIVQAF9cnaui6pguFLhgheyKwbhZJCdqkO94aIn7igapdupJOumF9/akXSe9EjidR9dq1S8IR4zfezwGk/JtvPaNSzj27yI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GxVnsSjt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HvkRQBaL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ARD2MLk1022641
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 18:00:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Q/lATIdOhSEqGDt7CypLEeFZtdg/6UCJce/OM1xvcXs=; b=GxVnsSjtUBh408uf
	WgxzbYIAodrv/AmTkEDMBv7rGtEYlL9AcDnwF2AOsvQazaooCRjGy586sS5Cv/cN
	5GVW3ubXSGjyFKHph+5b6gR7gbnzcTB5lpdTzqB5MR426NTqtaYzoOBMa1PxUNDj
	O0E0k4U57g/b63nUXDG0relzUfkidpcmzhpe7ePdvx8ZEzTJ/bL0AHh9o491TWJ1
	x5DMJ4z+23BKK0lRnC/s1tpNdrrycOJIwJiHR0ucVFLLiKHwts6gyxds4Eo/UUEX
	C4TQqtwyLHvA4ik0r7AICQg1dgQXRNLcX5RRZlIpizdFlSf6p9s93EM/ney7KwrD
	VL7BCg==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4apq66gnpy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 18:00:18 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7c7957d978aso959500b3a.1
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 10:00:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764266417; x=1764871217; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Q/lATIdOhSEqGDt7CypLEeFZtdg/6UCJce/OM1xvcXs=;
        b=HvkRQBaL9f+pm6tD0V8qd1YcFlMyBkw7650nXIw3OISP3UresIJ/4oG6rVJKADaeYY
         Fai8lJ1mHb4pO2A3c9cJGSxej44qPxh8x5JhNW3JthW+atYb2reGbsEMYrdUnMqP4mzp
         EpEU+Q5dbDKdWUDbCr60a60Xyb/PEUf6O6J+r3ZK70AFR62AFkI5Q8+j0v8+/wV5+KOh
         c4oHSUgLck44Prhjnss7kbOuOPB77/SPnzVsqeG4z3P7gBm1UOwhCx+NjOUIXugE3BQT
         GgapWdl9Fq3xeBg1aCuPQuuUARpHR1BvatGbSdf3rMds29gAt/PB74bNK0Vy+wGoDfom
         O68Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764266417; x=1764871217;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q/lATIdOhSEqGDt7CypLEeFZtdg/6UCJce/OM1xvcXs=;
        b=NMJjX1wdLM2RByRiciRqC8jPQ9XlHLCwFlZP6Vha2B+0fy4xTfIhEAPKhnjOO8B8RK
         uAcDlx5LSKI7AwOXcg3h2Cw+/dz15nQgk7jAiU01DkQhZnxGHwl2K9WXepWThHdF1lgI
         o/fVyvNr37I5KwZPjcj7D9h8RjXv/6rN3z0j822wAzou0ttFUecZdVCgTYp5J3yTLzhW
         k46YKi7Rrk4OnpzuLUtDRhhFuMgbk95jTyApE9TklEzyYEic+fQ31pshdK8Tkm0Ip8JX
         YCeo8DXFCReY4FcpDTvnb8F3KQqj5+Q9b8K+toPZw8tquzVRtP8FLahcDY9tocCDOZKw
         +ilg==
X-Forwarded-Encrypted: i=1; AJvYcCXYtpgkBvzsczEeyyOcdafFrBK5eRoseBtTaMlFD3NWTGlSnV4q+aqvWizIWlEtl+ZYnsrzrhop15wV@vger.kernel.org
X-Gm-Message-State: AOJu0Yzi58zHW4Ax2jxaGr8DOkHxC5Jgg2qnEqtRvGC5Og/i4Y3EfNU4
	0K+GxVICxcZfGKR2oOGG7aEqTNmjsJH0zDiBH1pYkeX5cPzjLXPZHRuhGErc/jUgfIyQJHReXW0
	zkwA62aGBsUwp2yDfyCxG0amtNIExj9n32FYqT9STzjFstE4ny6DNEXJNOMU9pQnM
X-Gm-Gg: ASbGncu5wFJiUJgcDnvK2+mZRl3NvSQUJ+VBRsMcKiHFuFh0Ibw17L2fAQMKHUQbFaL
	INgpVZSxizw2lVLvCU0Spb8F+qx429TmE0jiOEsla74IgXO2aW//DpWwJLqUTq3xofgHmlY0yb7
	HLCUXfj97ffXO5P76IYGU7/R8aIoJQ3uS2Mk3R72zop6fBK4yRGHJSYYQ0uLJI8Ya+9Q6RmInbE
	bqRrx61O+uDqIaif+OzLidOLYz6wmsrandJDhqpNnckKpENU46pYb8AWKSM06U5QlZAz+3+jh7v
	7ZKa1I5+c0g+AG8eP4qT62Q89trcWtiNRWpW5S33nyjaObY7bLE/P06otzsCyEb3K81G4xXL1/F
	zxBEYAAGL8hx57orfkkxffpo9HJWi6Iufw0V80ULkyAfNLw==
X-Received: by 2002:a05:7022:20f:b0:11b:c2fd:3960 with SMTP id a92af1059eb24-11c9d85ff19mr12760045c88.28.1764266417274;
        Thu, 27 Nov 2025 10:00:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFAHdY5FYydHTjid0mTa7ND+uDqfS1StWlaS3Otq1LD46My6KoRoslxU5ireDe85ZKdNyeNJQ==
X-Received: by 2002:a05:7022:20f:b0:11b:c2fd:3960 with SMTP id a92af1059eb24-11c9d85ff19mr12759996c88.28.1764266416239;
        Thu, 27 Nov 2025 10:00:16 -0800 (PST)
Received: from [192.168.1.3] ([122.177.243.249])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2a965ae9d06sm8164810eec.4.2025.11.27.10.00.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Nov 2025 10:00:15 -0800 (PST)
Message-ID: <d57b71b0-f0b0-4dd5-91a6-53d570d9d060@oss.qualcomm.com>
Date: Thu, 27 Nov 2025 23:30:08 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6] arm64: dts: qcom: lemans-evk: Add OTG support for
 primary USB controller
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
References: <20251127073537.1218832-1-krishna.kurapati@oss.qualcomm.com>
 <bf6e1039-c3ff-45e5-a225-4f2301c469fb@kernel.org>
Content-Language: en-US
From: Krishna Kurapati PSSNV <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <bf6e1039-c3ff-45e5-a225-4f2301c469fb@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: o5zvQUx3q7wvFDVIAOdjLZc_Posq-Bzr
X-Proofpoint-ORIG-GUID: o5zvQUx3q7wvFDVIAOdjLZc_Posq-Bzr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI3MDEzNCBTYWx0ZWRfX0T/Ig3p5ITt6
 5gGTGB5vGXz3xLJnazhpiNQRTGDUaqeoti9WAwIveBYjag1eb21FNJrV2kXJ3tee7JwgtbXgEOP
 /NpKPFGW5+Y4M1RX2MYsOHm799d0paYIqxj7sOGAECjYCYUHiRfdc5tzXMWfPZbl8QJqAWg+7Zb
 otQgxkituKQHLc9oG9ummPqis4/XZoDCcpP7SiSRQZCOOv8Fhttxv052sK17zeJwwyMSqyZsZSk
 uuXDwf8vonIC3SG3hNrN6cT6gmWfI5nVn4j83Uk5h6XWf6t1ZD9cMJQXaGlzp/Oe4wtF0cfo5w/
 tpqXrs9socWNp0hecCftPXaOu2mJGVvhdb/r54SKkc2ZzMJmfWtAp05coJ8fHD27GG5h2BEfYKm
 5lLMSVqMFaxPIc4RKt2CnfeBap9pfw==
X-Authority-Analysis: v=2.4 cv=BYHVE7t2 c=1 sm=1 tr=0 ts=692891b2 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=oum8EWTtojjz8M1eykIflA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=UXIAUNObAAAA:8 a=EUspDBNiAAAA:8
 a=Xc56VXtM65tYru8N8fYA:9 a=QEXdDO2ut3YA:10 a=bFq2RbqkfqsA:10
 a=OpyuDcXvxspvyRM73sMx:22 a=a1s67YnXd6TbAZZNj1wK:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 bulkscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 suspectscore=0 malwarescore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511270134



On 11/27/2025 1:49 PM, Krzysztof Kozlowski wrote:
> On 27/11/2025 08:35, Krishna Kurapati wrote:
>> Enable OTG support for primary USB controller on EVK Platform. Add
>> HD3SS3220 Type-C port controller present between Type-C port and SoC
>> that provides role switch notifications to controller.
>>
>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>> ---

[...]

>> +&i2c11 {
>> +	status = "okay";
>> +
>> +	hd3ss3220@67 {
> 


Hi Krzysztof,

Thanks for the review.

> Node names should be generic. See also an explanation and list of
> examples (not exhaustive) in DT specification:
> https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation
> If you cannot find a name matching your device, please check in kernel
> sources for similar cases or you can grow the spec (via pull request to
> DT spec repo).
> 

I see the following used in some freescale DTs:
usb-typec@47
usb_typec: usb-typec@67
usb-mux@47

In Renesas DTs I see the following used:
hd3ss3220@47

Can I use "usb-typec" and rename the node ?

Regards,
Krishna,

