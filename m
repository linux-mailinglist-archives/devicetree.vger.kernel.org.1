Return-Path: <devicetree+bounces-235696-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 68ADDC3BA07
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 15:16:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B03C5564C07
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 14:07:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 037F5336EF7;
	Thu,  6 Nov 2025 14:07:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QQvZ+d5A";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="crdGjc9H"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71DF6302CCA
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 14:07:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762438065; cv=none; b=IxC/4JE2AUobEq8ZQgWUvdOig3oB/xtIXs0jk163Rp4FGDw8K5Z0xbbi/w5POLpq0PhACgjYBPszbmO/j5dqEcbUS8dobGzPWrvvcwT96C6Fc8btZWwERdD+JkG8wJZ118Ve8/Uqc7rBRKmfaWnldeNtN4Iee+KQ39pSVMMfA2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762438065; c=relaxed/simple;
	bh=SOccKiy5Rdbr6pq6sB0mWtUflMzLr3rVH64LwrFeOVU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sy0Zj/zuvydXYwAwMjo34n9nFnvVjOeBI82Bb02rdxMp5PINHS1dDNBUyC8IxdrBBz6WY0KmPmNRskVDkIBeUWHHHIoCEh9foUHO/Dv7r+mNB/Hz4xpaKxyAmMRwqTj+3W9Nj47yGaB8uc0mSyP6ey/R5+MEqXStO2Pun7SSn7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QQvZ+d5A; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=crdGjc9H; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A665eiV1738749
	for <devicetree@vger.kernel.org>; Thu, 6 Nov 2025 14:07:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zlBnzVB5nxzy+Z7vwR/dqDEVVZyIcEzuFRGM+j8huts=; b=QQvZ+d5AIl179X7G
	oNgzd+fA/TENVGJ6bfTJwJZJ2yI0qR6nhARxOCIwxPl4eTZu/+OvD6EYlwjMt4mb
	0lSfkkyv7HTPsm+GAcwHINSubnm0wC9DdsNRaHJ/b7buC1badIHer5IQo0THbteL
	ZRup+VGq/Q5Uftg76iR8Ex583V3FIXh0UeKpkcF6YEKnHOAH2ZIcul8oMf9kej5E
	v7yLps1O5kXDHyZphCBXtBc6Hrpf423CHqwjkh93na6EK1hyS06PldPIkOENV0Xh
	RDA0BdingP6TbQwmPkGXi6sYApeIg7SxcqSpxDR0t0o8bloYfL18abGs39KWqXTZ
	eTS6ew==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a8an3ua2v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 14:07:43 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3407734d98bso1507293a91.3
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 06:07:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762438063; x=1763042863; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zlBnzVB5nxzy+Z7vwR/dqDEVVZyIcEzuFRGM+j8huts=;
        b=crdGjc9HnTa+VhBHLl6fkq3p69JScJaWrIyXbqpGD3cikY9LhXxEeTU0RQ2iISBSxb
         w9mo21SWpmFZva0uLXopf+1pMnDluY3+s4WaYiP5+LpMkjbZZapH/wSBhOWpsbRpE/kD
         mO1Y9UYJRi1JIKYu/S9RbvoIibPxSSrnLBH7VnXXAHBZMHA/iYaxocs9xL2RUNN4g/BL
         GC/iYbwHuOeQxRr2q1Lvstgo8fMfY5H9i+je+C7KkUIZBeHg7n83L7Ydw8StETtQjRfz
         kZtP1CSbtMYUkroAlCkLvAe2lcCqLHq+af7E33ACMN779H1L5MSlKPgqHQg2t8yDQ9+S
         GDxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762438063; x=1763042863;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zlBnzVB5nxzy+Z7vwR/dqDEVVZyIcEzuFRGM+j8huts=;
        b=hVuC78f05Qo8ZyD+N8NGKfE9RYxZP5hTtS2Hqw83sPra/yz2KDdwVQSoCbQ65c492x
         rb+Td2+KKR24aPW122Nu+IUWvfD+cqdRzOKyUdeKFfEiyL453pL4xKxUXvvQlmtAWVYl
         H04Ubcbhq1EZLyhkWcgxYFDkX/W3G0tPpR8Y93oeUDj/dqbUI8NZHuQG4xfqZpI9oMby
         EeKxw3P88aKdpp6L7aI0U1hb21UyBW0QqMibRz28S/zmlnKvwZMHqkks+lsDihg0a78n
         nunld4QwNVr39s5IqEicXRmDRhpiZOLLzsq13z3RrCnSRnGNJeexpfB5wXWMNG20pMzv
         Ycbw==
X-Forwarded-Encrypted: i=1; AJvYcCVYYz3ZI9WhAxlFTLbViHAs5GiyFuoyGzRYtIzv0HB+SJ8uN1PXyFGZdB6dpE2dN54mV1sJ9nTBROYV@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6ayRhsSZJsRK5d7ifJLuqsCzYIWLN5B371vfnByai5Kx/KYIv
	bbe+ZZDzPNNRuYTUfhpfaXT+R3WV0Q3/4hFDALA0Vtv6pVyBe+Gjhsb3WDN+l8CkfzcLuazCoRM
	eBw/wUpuRx5Q2CplcLxR+Bwpt7JvyPjDLHCLORvBdQokiC7i2etkpZK4DaS5FZi+J
X-Gm-Gg: ASbGncvmc5Ygrgrf8mQRkV1L/3YT4se6uqoguS7yxe2DLkUtD18Bc4vSU4rShWQ97h0
	h+yY8PMGJBZBH0pDh40FqbArJReVnsbOa05cyrnoBpwOErX6CMsjtG3Q+S35ok63f0wc6i2xy/w
	wT1cYS9S3UJ8dPBOxUITyAzOxkpqK1zPayDKJcUnxx8MgUGAElz3m94ROEJXGO8tN1WnbbYGRLd
	yHy2fgphuYrcsFBwv0fyU6eQTMy1wuiEIWwRJnFjM05dnYW4UGO597a2zxgLQcEGbT+RjPm/Mf2
	XJbLMe+i3s5kinmEqMDaqJfmZu9IELpPUmYzv6CEdl364Me5oVPtkIIi7egXIW76ZFfw3Hy1aW8
	LTakQh3+o6Rgo/0W59HNnAvhq5qG5/yWaMQ==
X-Received: by 2002:a17:90b:4b83:b0:340:ff89:8b63 with SMTP id 98e67ed59e1d1-341a6dd839cmr7917832a91.22.1762438062743;
        Thu, 06 Nov 2025 06:07:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFb5xADXggWF7dRNeF7sG95acRl1JztjRAlFJmaO2OvQU/vqH3pUikfwbJOHiUbUbKUov+t3Q==
X-Received: by 2002:a17:90b:4b83:b0:340:ff89:8b63 with SMTP id 98e67ed59e1d1-341a6dd839cmr7917764a91.22.1762438062062;
        Thu, 06 Nov 2025 06:07:42 -0800 (PST)
Received: from [192.168.29.63] ([49.43.224.132])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-341d0daabd1sm1131993a91.8.2025.11.06.06.07.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Nov 2025 06:07:41 -0800 (PST)
Message-ID: <96c49d08-10dd-4a82-a6ec-345701b771d6@oss.qualcomm.com>
Date: Thu, 6 Nov 2025 19:37:32 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] schemas: pci: Document PCIe T_POWER_ON
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: andersson@kernel.org, robh@kernel.org, manivannan.sadhasivam@linaro.org,
        krzk@kernel.org, helgaas@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, lpieralisi@kernel.org, kw@linux.com,
        conor+dt@kernel.org, linux-pci@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree-spec@vger.kernel.org,
        quic_vbadigan@quicinc.com
References: <20251106113951.844312-1-krishna.chundru@oss.qualcomm.com>
 <7v5bmbke37qy7e5qns7j7sjlcutdu53nbutgfo6tn47qkojxjy@phwcchh5gs5q>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <7v5bmbke37qy7e5qns7j7sjlcutdu53nbutgfo6tn47qkojxjy@phwcchh5gs5q>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=W981lBWk c=1 sm=1 tr=0 ts=690cabaf cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=1uN4TIezCBQZsvcDmGHwSQ==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=0lSf4L86Ka8fYzTnLDIA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: bfsEN1fGjvPwILCZJZc8PEu3_j1BSIr2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA2MDExMiBTYWx0ZWRfXxdiYxpzxu3LM
 dPLsmpZgCgjf4DkhOtZlkHeKcivGKDbd6dMX6HpXJUdUngl0FI1DV/YDSAilbRGGW7dwzzfY6JW
 EvEpifTLHqQIXXZyYgcELQbZZG+PovsUkH5K/KxhEjue6ucljIpQYm1Q7zZj6es+G1LoQt+Pk1g
 juKpaME01HaySpSVzZJFNR+HWcwu4cgmFysSnS1qBBLNpHyG9mNyp0SnykQ8xZI4B1mJT/QsVDf
 DHee0vqRST5acorZp9DjNouqOClbdUFVDWZ+0tkIQVI1cTRa+76ykJAw94NPJevd7dQncCHGxTk
 AvDoMBJlw9TbJPawA0yPJ03garAw/FVhdXZLwZFWbqwd65aKUbstIIpCltFQEWaPNYOCDr3Mbk3
 D6bqpUBNv3S4JuX8dOc8ukxaUEy2bQ==
X-Proofpoint-ORIG-GUID: bfsEN1fGjvPwILCZJZc8PEu3_j1BSIr2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-06_03,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 adultscore=0 spamscore=0 impostorscore=0
 bulkscore=0 lowpriorityscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511060112


On 11/6/2025 6:08 PM, Manivannan Sadhasivam wrote:
> On Thu, Nov 06, 2025 at 05:09:51PM +0530, Krishna Chaitanya Chundru wrote:
>>  From PCIe r6, sec 5.5.4 & sec 5.5.5 T POWER_ON is the minimum amount
> T_POWER_ON
>
> You should provide reference to the Table 5-11, where T_POWER_ON is described
Actually 5.5.5 section has only table 5-11 which describes this, I will 
add the Table 5-11
reference also in next patch.
>> of time
> "(in us)"
>
>> that each component must wait in L1.2.Exit after sampling CLKREQ#
>> asserted before actively driving the interface to ensure no device is ever
>> actively driving into an unpowered component and these values are based on
>> the components and AC coupling capacitors used in the connection linking
>> the two components.
>>
>> Certain controllers may need to program this before enumeration, such
>> controllers can use this property to program it.
>>
> I'd remove this statement and just mention that this property should be used to
> indicate the T_POWER_ON for each Root Port.
ack.

- Krishna Chaitanya.
> - Mani
>

