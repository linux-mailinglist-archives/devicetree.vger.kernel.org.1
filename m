Return-Path: <devicetree+bounces-221745-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A22BA29FB
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 09:07:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2614E2A7651
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 07:07:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC1B52848A8;
	Fri, 26 Sep 2025 07:07:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P8+gxCT7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A4A2246799
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:07:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758870446; cv=none; b=hcv7UkWwuzpmR1tQiNP8btQZSfhTNLz+1RbhGWiCUBcJa28oWJBVd7jZhk5iexf7VonRG1ti16cN1g9aUjFkviiyWjDChqBY77HC4LMofhu64TZoPBqNxwUpFy0DcVzFFxLs7MsQaB2KMtM0ysvpaHWPUcKdajKjbkFqO/t1nwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758870446; c=relaxed/simple;
	bh=AxaZdK8R1No79fE6Qy5I9BNl3aGBjCXFKR8l7peMY8g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ArhmFtR4RIXhQC4TjmbL28RTrxRUyR/ILxEqDi2GRYJB3sRUMGknbis4LT1yTyZTPdepMlQrpAiVXdR1YA8oNmvLYBe8rEi4O8dQ+pfzV8Sk9OtQjWL71TUW9FoG6u26HHQTxuzm5fpubqlzkINWuQcN3mGbfq3UD9UU6VjWB1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P8+gxCT7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q6o8Rh011377
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:07:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nazwzXapRFhXWyirBrA7SaFITLf8VA7VA3yOttfzeV8=; b=P8+gxCT7BT+NRCvi
	v+0eEBmZ7jN4+TVgBAJQ19YHKI0Sa1ENMhlSOh9GXoEjyYXf0jyVjBRztSmhj3Os
	ogYYGX3GouNkIp2IAdiiGKYmzYBd4Svtodg5HG0wnjjJXmTTsHlGw8vQx0wVX3Fb
	mgcv1fCUkB67hvvNHzgzixsXUCueX8tExY4/5xht7FYNGnA/Yv6vmtylt2zuf2CJ
	2hKoPO2piPi1xhNGnUa3IxSutm9vcJ7QVDh53ZwKLoUPJQc2z+qG1oW2rc9gpnRy
	uYDukiFMzoJNiQG1+VgsbBSbBlX+2k6/99VLwCRb6rxeDtjqbeAIxVn1OsevSaPr
	VBsJfw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0q1swj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:07:24 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-780fb254938so1748922b3a.0
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 00:07:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758870444; x=1759475244;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nazwzXapRFhXWyirBrA7SaFITLf8VA7VA3yOttfzeV8=;
        b=D411Fh8/TYFlUAHvHMPU3ZLHKzlH6laDDUu713liT4giKR4lknHufhelR+t7+lqOF+
         22IpdtOkV5cKRnexek154vxz27Vch9PlNQNc1k05woxVjaAok8hdGCqyj+TC956/L1Z/
         EaDVksK0NWtYredozyb/2XcCXOWmZgnfkHC0dCXIrXjSTdfCbgMb7O76Ae4yWDD+lnLG
         Wbi94yAxpbqUcWAp5VRY5O1O4ZakEZcP+ALNvklrGpigCKWVomema4437/lEd53py1SH
         M7h6rAm32AUcz35LHKcnmk6PncpxNZb8X1jo1ZILaBnMF2NNW5vnjWorbSfiIzsAYcBp
         L05Q==
X-Forwarded-Encrypted: i=1; AJvYcCXvPPEHhU6yuLBb9H7FI58bSmbIQvac/G0+QMMWibVGlY1WT9B1ZCNFvBVNVtvRo7wjlIeUCQXLwPgc@vger.kernel.org
X-Gm-Message-State: AOJu0YxWWc2kl3nT1mHFBSbDZZYooQ9fG0dAcQja4AD6kjv8M4QMDhEH
	5hBjr2Oydg7ykgbKIutZVJhQF24hlanmjhNiif871qvx8Ju06lf3UBtJoBwhyMEVCiQtO6b6vCb
	sL0PUDgDno1i9a+2XgZ3Nx5AIteJ/O5FdZaMIRmDj5mnRrRngMHg/JJ/+QKj7Pirw
X-Gm-Gg: ASbGnctUa5dR/nn84ueq1m/xyHvOEGtTqwtKF1yup5ZAZpTnR9Z2v6/x+ZJl2IutztP
	t1BFz+jqf9gb1tPsTspQgo2CKM/KBMXzby3MPfPY9/B+ulZyPhe8wJAafXBBUI7YV3HbK52186I
	Cac6fQJbmY7/UchhLYpXiqr/DB2ONiEBTgf1xeYtDKOM6VwXAzn2YA7l8AfrRXE3i/3NbM7iFMT
	N0JOJNMQiu9xTbe6uQ+2TaAQieYwIrppIL45hTA2OKR3tWW2DvdzxqxOrPA3jEMXatgoU/xy0UE
	G8wn9z828VN9BYxYDj50zHCj1Uvz2N6ThMu/INxmsMF7fj1y5ET6om/MDrYTbQT9ob1RnDP4Sby
	5LnjYr97xUunVrGkN1DMo+t/5K4bQ2HmRmjODCI9ClkjV89EeAcBIV1iyow==
X-Received: by 2002:a05:6a00:2b1:b0:781:eaa:9801 with SMTP id d2e1a72fcca58-7810eaa998emr2582705b3a.24.1758870443787;
        Fri, 26 Sep 2025 00:07:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHyg10xK9jYOsHHo0lMszH8thVw+Soa7Y719quhlAlIVZ3yhfSr4Ayhi+M2wkiXmukMqkITHQ==
X-Received: by 2002:a05:6a00:2b1:b0:781:eaa:9801 with SMTP id d2e1a72fcca58-7810eaa998emr2582690b3a.24.1758870443307;
        Fri, 26 Sep 2025 00:07:23 -0700 (PDT)
Received: from [10.79.195.132] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-781023c8ec7sm3730797b3a.30.2025.09.26.00.07.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Sep 2025 00:07:22 -0700 (PDT)
Message-ID: <7eb0af93-7cc6-4b1f-beea-d5663c1bbd59@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 12:37:19 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 13/24] arm64: dts: qcom: Update pmh0104 dtsi for Glymur
 CRD
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v2-0-8e1533a58d2d@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v2-13-8e1533a58d2d@oss.qualcomm.com>
 <CAJKOXPfCFS4UDbN_SejG=zJt1Dt_mtz_p_+MGAaEr5SpK3ydRw@mail.gmail.com>
Content-Language: en-US
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
In-Reply-To: <CAJKOXPfCFS4UDbN_SejG=zJt1Dt_mtz_p_+MGAaEr5SpK3ydRw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: lpG7UehUUuFjXSu-uCY-vhSoe8TNqoKb
X-Proofpoint-GUID: lpG7UehUUuFjXSu-uCY-vhSoe8TNqoKb
X-Authority-Analysis: v=2.4 cv=aZhsXBot c=1 sm=1 tr=0 ts=68d63bac cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=JSSV1tAL0pHps8jy9LMA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX7lAv7KoaAXXt
 PiNqp8CKN1+ISdgQKqyv4a6QqhTxu0S0U+9KlrpzKxIpwc5xaoqynvtLfTC4Rh5Nr+Y9DVgS0Ze
 nrkiy8LS6AZT7X5sxY2vBVIa3/CgCszJ7f/vTJv+iGeDvJP+5VbisQewzCgvFgKHM4KFDQlKKPP
 3i6jGJIxDPWQzf9dS8IjsMTQlC3bbHeW0dy9riwM0xnUXMLu8H7GgnFgwHDe0qn85R5w3PCxIB2
 Zj9F5dPEzBiLu4p6Amk0ry7oJU6WigWxTEqrfqbwi212aPMJEJRB19pUjea11fFMZUyfTVmNYow
 QhMN4Q3g1dWSib65AziycqKPYqBJghpAIorMK5vV0GrgsauW4c1ZGhRXNQoKvPfarJOERhpqV+O
 fYPyoNNQ2DbG2RAmbh7Yy3cMbWd9UQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_02,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 suspectscore=0 malwarescore=0 adultscore=0
 clxscore=1015 impostorscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171

On 9/25/2025 1:25 PM, Krzysztof Kozlowski wrote:
> On Thu, 25 Sept 2025 at 15:29, Pankaj Patil
> <pankaj.patil@oss.qualcomm.com> wrote:
>> From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
>>
>> Update the pmh0104.dtsi to include multiple instances of PMH0104
>> DT nodes, one for each SID assigned to this PMIC on the spmi_bus0
>> and spmi_bus1 in Glymur CRD board.
>>
>> Take care to avoid compilation issue with the existing nodes by
>> gaurding each PMH0104 nodes with `#ifdef` for its corresponding
>> SID macro. So that only the nodes which have the their SID macro
>> defined are the only ones picked for compilation.
>>
>> Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
>> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/pmh0104.dtsi | 84 +++++++++++++++++++++++++++++++++++
>>  1 file changed, 84 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/pmh0104.dtsi b/arch/arm64/boot/dts/qcom/pmh0104.dtsi
>> index f5393fdebe957ea0caf4bbc16117374b4759bda3..d3ea7486d842ec813a79268fc1466e1513426d78 100644
>> --- a/arch/arm64/boot/dts/qcom/pmh0104.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/pmh0104.dtsi
>> @@ -6,7 +6,63 @@
>>  #include <dt-bindings/interrupt-controller/irq.h>
>>  #include <dt-bindings/spmi/spmi.h>
>>
>> +&spmi_bus0 {
>> +#ifdef PMH0104_I_E0_SID
>
> NAK
>
> I'm surprised you decided to ignore all existing discussions and my
> clear point in this.
>
> This is neither readable, nor maintainable.
>
> Please join community in discussing this, instead of coming with
> another invention which I already said is poor.
>
> Best regards,
> Krzysztof
Please ignore this series, it was sent by mistake as v2 prior to v1.
I've replied to the cover letter mentioning the same.

I'll update the v1 and re-post with all the comments taken care off.

Thanks,
Pankaj

