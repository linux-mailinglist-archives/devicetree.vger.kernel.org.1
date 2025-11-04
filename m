Return-Path: <devicetree+bounces-234742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB3FC302D2
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 10:09:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 90AAF3A5901
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 09:04:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B34B2BE64D;
	Tue,  4 Nov 2025 09:04:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BveNSdo3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bAIfoEvz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9BC1277011
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 09:04:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762247090; cv=none; b=crMMsBY0NX3BtjCiEUr9gMX9b0Uv9nIUdcJezyTXyf7SoLccQwsoaps7DsMDvQcBznJ8bn/xkpmbHaOIpVxpaLritb+Iu+jE4ML9QRQkJADiIG1DgweYpTF2c0JSbxWyyHKQLeqBgVVJVJC2hDWdZO1r/CI7wUM9CtuJGOst03M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762247090; c=relaxed/simple;
	bh=M5h8wGHqottmVbN7MO9Ckr4DSLpliKv6IRVS1pyJv1c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fq63EPslztFpY6DN5Y6RBeJgVHm2ZKWXV0YAzRmQv5Cd7D6buAUvjUTOskvVfNIrmA/Wurrh39L/TzIcmoXBD1VZvvLbksfHVR5yHBFjAeMBFzP10no+55MlafLS7jBFWPiHLmBEdGchbdV8j4RYjC7WrYQXPifQZdhq4iCXTXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BveNSdo3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bAIfoEvz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A48gNwG1395444
	for <devicetree@vger.kernel.org>; Tue, 4 Nov 2025 09:04:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	s9xPLj5OuQTlTyOHnok3W+6HBQLXo5qtNB6Mr1AveDg=; b=BveNSdo3vKcraLbv
	D5W/FrYHC++1d4Y1SenP5D7o/PMLDT7tlrPdHWqQaSbNJKEfUr6vdPweRKI2Ln5D
	feF0F3+ZdO7xoQM1ebGGoLXXOIpM+b9QEC3z27dHYFc3F4iv4cYCrpFIFfhkL2Ml
	rgJEA7PCe+W2qn5OwTdGbpfhSIVMhz1fXHdX21hXwopAnWoOpaISY700LwkZH4NH
	UVKilc361QCE3VHGFiTKQPfYZPv8roEDbFwGr2lf/oTzux2CrD0CHNhReiwjF12a
	VT0ogiiikNgileUuE6quZk7oH7aof+HCHnP0syjmvyvCbOERdlXqA80OcPnMQb+X
	UDTuYQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a70exjbqn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 09:04:47 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-33dadf7c5c0so6718418a91.0
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 01:04:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762247087; x=1762851887; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=s9xPLj5OuQTlTyOHnok3W+6HBQLXo5qtNB6Mr1AveDg=;
        b=bAIfoEvz2QZnz1VjprnRMRvrqkuKbxGhz/fz9ii76Q4nZPijKTo1cnZ2Z9rTX+0RJu
         JPCc3KBzJH2PaYBp/UzZOvmyc0qb2tC7Hu22RFOl0TZjcKkYcSIYZdK5iygUk8Z3KGlV
         xTYTqLd7DvVDp4jKLzFPfI25x3TQYJd7WzGvTrvgm46PIDvBmXPvoAx/pC6pLWZbGnBb
         E20OSGeBULWkWsshz57iKRGXwFBwsqqoX33Y2gdmU4BY6fgIMMr7q7kLI0BjIVQKJ0QB
         x+YYirLElXJ2Dy3V9RmMmQd1vCrkD6c+TyjY2tYYvO4MAloxieqr9iBVOjKN7XeSaR9v
         ocZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762247087; x=1762851887;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=s9xPLj5OuQTlTyOHnok3W+6HBQLXo5qtNB6Mr1AveDg=;
        b=Z/EMG5AL1joUN/oksrCkAR/K/bf3y52jf44GNOObQMLBy+3BFlZP2kOgG1gCkkPyW6
         JuKeXs8ZTB6awmX+RwZDXGWzX7P1Cbp7aoKohGH1pADSVSB6Nl57uvo7ps2cw88Uz5pz
         sUhs8Uw2+nD6T2e47wdl5lyd8JyMChboLzpa2S+N0Uj2UArF7pWm2gl0lJ6PR/ffbDuZ
         4ixnRmEmP77Gnw4wBO/jUnz6AyHQfZk5SOSJFkLgfIJjsNq0duE91gj5YqGHz4Gy/ntL
         Tkh6/uTBb5YKEhMia7kuEPGEjqkmwZ7lbLeV7aWhXPdMW+KsA0ciHgNcKOgPD4zz1ufk
         dJDQ==
X-Forwarded-Encrypted: i=1; AJvYcCWUcmGb9txLiKLX+EpNim55F1jnv7hfJteTdk5Da9IgygwLxaeDlo7S/AW4qRYz3nWnZqN9eJtNQxLj@vger.kernel.org
X-Gm-Message-State: AOJu0YwVOlTM4bAeat19T8CbHfS07kYFPuYamULej1EMXjynRd3d9joo
	+lhBQU4iS+eaJx8mijUSo2n90tcenUzBumnlA/uZKAVbyc9hhzlSiVVKBxYQ5lX6M6MYwHCgAos
	IRDGuIhenLnYdoJA0buTE/L4uUwuE9vZMbl1JCQ27o2ZcIJeCqysl1/nRmN6FI+8b
X-Gm-Gg: ASbGncu5HCulRbxu4077FaFI5ZK178LhpOcxd5dKuX10L/v1gUwBskC1S0/5uLZwfZu
	svYlMFkYFxGUzLGpHMdyXt69q6634XWTYePSJfVsVccKOHq7w1TKzN+QAk8r3Qty+dTVvpa4pxY
	TDZioXcVyMc5x/VBl/VqumR7Ab2q5ti2x30iGsakNfCSJAViuZGG09IySt1FWq1ZH8UDqQ5/MJA
	cXN25Jm6ZsBMJvWipXkYm+xv0cJFZuzwbEGRMD//VgR5EWTqzhepOgkt+hNIiL3GTa45NAG5qcT
	6sLNcZtUIEItRqIPrUSyHM29nyKEO2hwVZbc/K1/NT/bX7pvTHtgcg40nqtVYqtA5XjanVy1nkt
	MQAueJtSrOZfa+eMUfXb9eJj8uyuErlyiiPMzjlfuOGzZIZN7TX7+KJTboxzdbF4Ef9gzTQ==
X-Received: by 2002:a17:90b:3c49:b0:33b:6bff:35fe with SMTP id 98e67ed59e1d1-341718b2361mr3097134a91.16.1762247087249;
        Tue, 04 Nov 2025 01:04:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHJApJqx3lrXFfpDcrgrSMCEpUiaPyHMY1h3YbxI1Rwfo2sneImhYdBZuyhjjp1R6yRMH6THw==
X-Received: by 2002:a17:90b:3c49:b0:33b:6bff:35fe with SMTP id 98e67ed59e1d1-341718b2361mr3097078a91.16.1762247086692;
        Tue, 04 Nov 2025 01:04:46 -0800 (PST)
Received: from [10.133.33.122] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3417d1fab3csm897778a91.11.2025.11.04.01.04.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Nov 2025 01:04:46 -0800 (PST)
Message-ID: <7fc6ab09-44c9-434c-ab19-764c74b1176b@oss.qualcomm.com>
Date: Tue, 4 Nov 2025 17:04:41 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/20] arm64: dts: qcom: Introduce Kaanapali SoC
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Tengfei Fan <tengfei.fan@oss.qualcomm.com>
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-2-3fdbc4b9e1b1@oss.qualcomm.com>
 <36fcea98-06a6-4ca7-a378-77b44b196a9d@oss.qualcomm.com>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <36fcea98-06a6-4ca7-a378-77b44b196a9d@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=APHuRV3Y c=1 sm=1 tr=0 ts=6909c1b0 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=x9Fsha1zsCYNIy44pjYA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: W0Wf5KxGgNaLJRJiF75Xg2k7RXGBQLcY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDA3NCBTYWx0ZWRfX5kcRimxos4a0
 Z3lNFnRjl9ddsrjF/8EhtK2vi1bp8jveAEpMId3dqscDj5lFoOeGzrUkmcL0TjlKjXPxzT8rN7R
 B2aBVVTvsbEP6HU7OL954TXVxzYbTcfiWaFvwotEsHa3zuMQnSXRE5fKPTlM0l/FduWjm7Y2wvh
 Jk4qxmlBzvvw3hL5QM2sBTiK1COk+Yl3TcdHKLaoHmhRbFUVef5vGy137KmvV2Op7iW240T67F0
 Faqja0Bvgph/Gg7tKwOhzgD7G1FwEsmxSoqKveiBTFCGdMpI0P3tBW0QPJudBRYoyLUJ1onJ4Qd
 1ojDDRoyyUGmW3XaIQhMRXN++UtgicQIwdFUaK1rltvPalIW+K5svMRmxseGs1r0yX+SXV7vLH3
 sPOe5VRDzoocwrkL52Fe8a0Wb5lF4w==
X-Proofpoint-ORIG-GUID: W0Wf5KxGgNaLJRJiF75Xg2k7RXGBQLcY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 impostorscore=0 priorityscore=1501 phishscore=0
 suspectscore=0 adultscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511040074



On 10/14/2025 7:46 PM, Akhil P Oommen wrote:
> 
> 
> On 9/25/2025 5:47 AM, Jingyi Wang wrote:
>> Kaanapali is Snapdragon SoC from Qualcomm.
>>
<...>
>> +
>> +    reserved-memory {
>> +        #address-cells = <2>;
>> +        #size-cells = <2>;
>> +        ranges;
>> +
> 
> This is missing a bunch of reserved regions which causes device crash when you stress memory allocation.
> 
> -Akhil.
> 

Hi Akhil,

We will not add all the reserved-memory in dts, other regions are designed to
be added in bootloader.

Thanks,
Jingyi

>> +        pdp_mem: pdp_region@81300000 {
>> +            reg = <0x0 0x81300000 0x0 0x100000>;
>> +            no-map;
>> +        };
>> +
<...>
> 


