Return-Path: <devicetree+bounces-184021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B735AD2CB3
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 06:32:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D23C4188FF92
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 04:32:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 557B021322F;
	Tue, 10 Jun 2025 04:32:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ir40oDxu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D050C1DACA1
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 04:32:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749529937; cv=none; b=fYfsoPtiuk9jaj0proaXX6ft656BsaYH2+BC2wgIdpCmJqiGP7wPKSHp48DqJqrTM0nRhq89o8XTC++0M0VU4jjm4peW1zPnqeEcE1T9eET2DJNnxKpMXpgrl+Am2DusNCKfd8RFBN2qvEwCOaFx39AYhZ8UZ6df6L1+u4IvPWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749529937; c=relaxed/simple;
	bh=TB4ZNWBCjvGt5BSqyUv7p1TpCvZYbANGsyyzTWwm7fs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QLntiC3bxKCrMZYVJ51kLUVj+66HmyA/r88YLTOG59qMdYAyeuGFYU3Ji/yBP7IvfO5nO7KI051Qv8T57dUfqu2+zOG60+ANmfgo2sVTjosSnlowhc6Y/COc7RCVBOXLF0ohG+J9RURnlUV9srmNXD6zkvUmsHrAY5Vx7m7yzV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ir40oDxu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 559MCWaT022679
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 04:32:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QVojJfQxCgn9ocPcE61oqYb8TABL5BLk+mOuJMx8dC0=; b=Ir40oDxuy+0dK6Tu
	pPQsgqXKAczMfd4hQshrPn32D2SrqDbreazix7cjUZzU5cncbpNmD3jxNndEnrwY
	m1Qfjbpf6Dr7dbEILXFR/vOc7cCz8asnrAkMemp/1IY5ykFN3LPwkJy8yAav/JXA
	T7cfmB1ZbCHwCD4J+d32gcOfV822mHPTKakvYuhXEItCJk5yH31jNN/ZTIYDt0Ue
	O+KD8VgYEMOP5IkU8T70lSDREdDZAKB4q6nXxldU9adIVXfbSUUbD11XVu/TVKdV
	1k/1kXhDDTZxkS3RwBEAS5NEUi57fim20VYnCoMVSY4J5/EkF0BXwMhU6NabtRiS
	Nu38xA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 474ekpqtxm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 04:32:14 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-748269c6516so2952694b3a.1
        for <devicetree@vger.kernel.org>; Mon, 09 Jun 2025 21:32:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749529934; x=1750134734;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QVojJfQxCgn9ocPcE61oqYb8TABL5BLk+mOuJMx8dC0=;
        b=lbgkB+MZWOvFM3cj2pNSUnN3pYS2xMSank1wueip6GnvJ3ertOS1XN3+/E73XbdXFN
         49MRp45emlK7lDFFoC5i/WtZ5Fw6VEhop0Tx/+oWnThzOHjyBC0iqOKIvpsfF4uD970c
         KodNaEKizS4wdnDJBw5csJw2PvlfARh6XGGr0aSnR38dxg6zmxvuRNnud0oLeYa3/huo
         T+8SnCLbDL3FPEAtRr6Mgj2JVS87lB8Ha5JJMYj8YkPEEOqv/8Jl3zDDtQVQKyrI3vZt
         kt4Ky7YNmUWSjpWBYudjh42FsuWXYX4QtmQVVx2LGgp/te6Qai4P4k8NwkKpcV+8FLFU
         FadQ==
X-Forwarded-Encrypted: i=1; AJvYcCVddvaluq8uXDgzKLkpBslbC3jn55GIAnKTEXdfBbQU02mSV8Va8xmEveuLrLTVNiZg8diu+a0bNuS8@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7wmliNax3UoLVAZQkXAuBt23R3OzR8bJW0Wekizu9t5wFCzxs
	ymatuOARH37psJsxDmq2I62F6ddUaAE4FLeC8eyP6M3XV62J8YLziT2JxFG6J7XGns6cKov/0UH
	hG4OvvfEP6qwBnSdpbp5sO/0i+bde2zVPCFhW+ALCnJHmpgu8pd9NvEQdvVA/sPH2
X-Gm-Gg: ASbGncvDl363hAIzqPZg2UeR9H2qeDWLIWFKsUT98z/yTDHWaGsSeXoPXI+w0oTsQ1D
	bvVipkcwvDk3XXw68nt49H/7Ya1KL/L5GRBRSMbr48flinIpycaYU3TvYEx8EmUlLEpds8lwSHr
	N1qKWAncXxN0Qu7bSkViCt0Sw/tmMdx3uWEoTVfQq/UNDpUWPZt095504vj1MEtLuStt0yK+rkj
	QQuX/kJ4ePu6r8/C89q/igCtpU8zeMcytJHDCxL4Z5hpjoxXxIEtY/sJP7QtA8fbnAYqpLx0fdJ
	D6BnRvsglx32anCK5wLYC58GF/48MFfOU+WBarElNPuD452+Q5xq
X-Received: by 2002:a05:6a00:806:b0:737:9b:582a with SMTP id d2e1a72fcca58-74827f3dab7mr22525856b3a.24.1749529934141;
        Mon, 09 Jun 2025 21:32:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF7R6T2DzqqmZ8Jol0wT/yDgeRhUuXAjB/gYgVGkR+i9HNrdnkufPipZQ3OQAkvTjhT+YzTpw==
X-Received: by 2002:a05:6a00:806:b0:737:9b:582a with SMTP id d2e1a72fcca58-74827f3dab7mr22525827b3a.24.1749529933756;
        Mon, 09 Jun 2025 21:32:13 -0700 (PDT)
Received: from [10.92.214.105] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7482af7b2aesm6771668b3a.61.2025.06.09.21.32.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Jun 2025 21:32:13 -0700 (PDT)
Message-ID: <c1e34051-1c7c-0ac3-f447-6c86254cddd9@oss.qualcomm.com>
Date: Tue, 10 Jun 2025 10:02:07 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v3 2/2] PCI/portdrv: Add support for PCIe wake interrupt
Content-Language: en-US
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Helgaas <bhelgaas@google.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, quic_vbadigan@quicinc.com,
        quic_mrana@quicinc.com, Sherry Sun <sherry.sun@nxp.com>
References: <20250609162930.GA749610@bhelgaas>
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <20250609162930.GA749610@bhelgaas>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=JcO8rVKV c=1 sm=1 tr=0 ts=6847b54e cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=NEAV23lmAAAA:8 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=IGDvqKsIrZGBqitOJ9wA:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEwMDAzMiBTYWx0ZWRfX7IIrgaLsJ/LV
 4LPaslgUXYdXVJdvRM3MO6lQw9D+BNHaSJ7uhk14RkoywftagyTyDhdStZyciYaeMu62Xulw/qf
 Y1AeO26xkh9LdwaUAQLDtFwj216KAhXRiO3Eh/LtcIB8E97HPBOdenAcc2No0nF3O2++396ARcN
 UIN1iZfsyfh6mDAmWMug975OMxyj8uiDkDdOn5d7i85lX0d681KFwAFpwCxp9IRTU2xMWodWKOU
 kl62mYeQR6d9rxmkkjJubzuxrnauzeHYPjM6eVju2/H0cx2uBGUEVAJKUILiPCkv5tuznlqJn8X
 aTSpkWaHubz2Dww6fd5O44ksdXcHIrI90a6oXVAj8ksB4DL/I6wLdMDzUBSfbPxlSlhb5xKNIMb
 bsL/sXgPqsIkCsxNfPbUEXebQYTeclwH+OwzY2daChmseRTxZ2Fa7I+8BiHAa9ceu10HptRG
X-Proofpoint-GUID: 10XtzKzBcTobelXdTl8j9FlDlVF9SP0Y
X-Proofpoint-ORIG-GUID: 10XtzKzBcTobelXdTl8j9FlDlVF9SP0Y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-10_01,2025-06-09_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=791 bulkscore=0 spamscore=0 impostorscore=0 phishscore=0
 priorityscore=1501 mlxscore=0 adultscore=0 clxscore=1015 malwarescore=0
 suspectscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506100032



On 6/9/2025 9:59 PM, Bjorn Helgaas wrote:
> On Mon, Jun 09, 2025 at 11:27:49AM +0530, Krishna Chaitanya Chundru wrote:
>> On 6/6/2025 1:56 AM, Bjorn Helgaas wrote:
>>> On Thu, Jun 05, 2025 at 10:54:45AM +0530, Krishna Chaitanya Chundru wrote:
>>>> PCIe wake interrupt is needed for bringing back PCIe device state
>>>> from D3cold to D0.
> 
>>>> +	wake = devm_fwnode_gpiod_get(&pdev->dev, of_fwnode_handle(dn),
>>>> +				     "wake", GPIOD_IN, NULL);
>>>
>>> I guess this finds "wake-gpio" or "wake-gpios", as used in
>>> Documentation/devicetree/bindings/pci/qcom,pcie.yaml,
>>> qcom,pcie-sa8775p.yaml, etc?  Are these names specified in any generic
>>> place, e.g.,
>>> https://github.com/devicetree-org/dt-schema/tree/main/dtschema/schemas/pci?
>>>
>> I created a patch to add them in common schemas:
>> https://lore.kernel.org/all/20250515090517.3506772-1-krishna.chundru@oss.qualcomm.com/
> 
> Thanks.  I think it will help other DT writers if we can include a
> link to the relevant dtschema commit in this commit log.
Hi Bjorn,

I have added this link to the cover letter, I will add the link to
this commit in my next patch as this make sense to be added here.

- Krishna Chaitanya.

