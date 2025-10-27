Return-Path: <devicetree+bounces-231315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A446C0C510
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 09:33:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 120E4343EE8
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 08:33:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6AAA2E7BA3;
	Mon, 27 Oct 2025 08:32:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nNzumApB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 602CF2749D6
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 08:32:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761553925; cv=none; b=S0tRBRC2+GMbOcT0u/J6LlTX5lDPegZcz/h3X54dunbNOpzliD470jfH2FbHIsneuspw88RnU2lcaDiG+0/TKU6INRL5gRfqbTFUumrKT+ynxgA4V4BOALL0uM6Z0Q9jjxNe7G5SnjSbkxF/vfvI9P01/6qdK1QYMpWONn58r+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761553925; c=relaxed/simple;
	bh=RSfpfphYkf73MtZSBd82Y1Axxx/IQ+C0kNZbF1z7ZpM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=g9SNbLPJFgWQZYE/zp7uvNx4SbEfrv3RZf0IRT4bEdYZwB1FISP/q/JBnR2TxrIQ68PoUmtq9sD/aWdaHGvJ5KerMC3PnNis57tOmOVpJ2Mk9g0mpAvuv4/oK6TIv6xbzRggmgmR4TYRBejMnfZe245AovlHcE+oO9r2QDCm9ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nNzumApB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59R8TXO91086362
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 08:32:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sx63s+VEGub670xFqR/IElGnwDWu9CRZ/VDK1Eqvsfs=; b=nNzumApBBadV2W8f
	P66xcqTSanCcCCMHYJtUWYzjf2B85ip0FS+lIhm6g6sVeoLOKPpNTAgdOVUtVl6T
	nWnXoOrGV5sHHIsb5a9eoUI7GCd/03MB0ABWhs0OGLcPRASVdZ30/2JK4+fGd2Ux
	cuHwTLvstHhN77xqbjy38xNgBweO5eHOeabb5yEJFhwJTc3gSzVn5LtsaSl41pEt
	CkiEz7HuQIslr4tCgt5KEb3AGLGlasX8dKk9KISmT9dhXKIDjxZq+HhbAr40lPoo
	o/9Tm/pwom/OSDpmTKBjfICwqQlHjhh/eOENKJJnsnfhL+at1Xdwz9W38XU0v9ZK
	WOjQfQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a0nnb3x5r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 08:32:02 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-290992f9693so41935115ad.1
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 01:32:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761553922; x=1762158722;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sx63s+VEGub670xFqR/IElGnwDWu9CRZ/VDK1Eqvsfs=;
        b=wmoTyiuzgqEA9g9NApQOPqN4qDoGjYmoOR8gGrGUkKaMAvrqAOHkYJuVJbf+HwfCJF
         GZa96yjOsO838ZN4U21e5u5yhpGds3VOFvA5sRrhscNzshiqsQ1StmHrVjwU5QUh7ZXf
         jVjPbehhv1nvuYeYtbYH1KhhD1g6WWZzvuZDlBkWbSJSvDnbAeJvPnVgIFDpmLKlelBw
         JRUt/0+92lVAEetEPYqG1prumbEcLmFlJOKIqXWCRIjFj4cdj2O5RjuKjdcllrOii2Jj
         whO0K9ox5Jpt9sGrRAdBMxsiYFAhFwVP5u1kL9ufDsthfP7svVb4rQaZY6xdtPm07bgi
         eI8A==
X-Forwarded-Encrypted: i=1; AJvYcCVHb4s6xj4LVdoV1yoLEhNe3gdpsFdzZRonpe3GUfg6E7FLpBKKKqi++G/tx9RaApD6Bw+a3cj4FhWr@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5reDqUGy3qF5MObpoa+mQX4mKPzzLSahLvimZIIh/Qcfb0QDK
	pdd018aptRj1LlYVcEIDzSiyNobSxrC1je6/wQcgDI7u5kguz/PfPntEIscGTPoF+v3yZ8RyF9E
	K2gWD9SapgvCcAz+xADvXx2h0pocpq5MP40pA67HjI+c9mU6t2aFxoh6tz0WyabpW
X-Gm-Gg: ASbGncvYW47A9M/THYDVFWAlXVrfOEfCXVK5hzF6Ig3AoiJcyRIg+jJKXwtLdSIU34/
	Bo1yU8QMmFXb0bj9wJcsH9gYvbWV1nfuo58w4hJaOUOLCQq0Qm4e6Hv+Hc6mnB6nrTYqxMVYp/M
	+SIjOoadWwJPQZBC2VN9IrAnPUMhmWmISHFP3l/sZbSw/5wS3lAiMmDWvc67+FO9oaQF6wbD/4q
	smJi2MZJOs+5AuiuxwBSUG+NRqRrnQh2hq0TElciQYyFPZj/rgR4oB58o98J3cW7xMCBgzjahnk
	pOaNLTgToyujIApsm/xdpb8lpmwjuW5rD1zwcyRu57DLdos3wem9EcnKnCiEdYIrRIH7sVlw37n
	f1OklJ9qgHk2u3cet8uUWznfb9GmYuWJa
X-Received: by 2002:a17:903:185:b0:269:8ace:cd63 with SMTP id d9443c01a7336-29489e773fcmr141431355ad.30.1761553922363;
        Mon, 27 Oct 2025 01:32:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH0XF2U4phwBqiDvn2bL/HXA0I40/tXYhgsNsdk2eMlASGSo5k9irm8PXwBWuFXZfmiIvaHag==
X-Received: by 2002:a17:903:185:b0:269:8ace:cd63 with SMTP id d9443c01a7336-29489e773fcmr141431075ad.30.1761553921898;
        Mon, 27 Oct 2025 01:32:01 -0700 (PDT)
Received: from [10.218.1.199] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498d2903csm72918725ad.63.2025.10.27.01.31.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Oct 2025 01:32:01 -0700 (PDT)
Message-ID: <e4ebf454-93ae-47be-bb12-2ab363812b1b@oss.qualcomm.com>
Date: Mon, 27 Oct 2025 14:01:55 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] dt-bindings: usb: ti,hd3ss3220: Add support for
 VBUS based on ID state
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20251027072741.1050177-1-krishna.kurapati@oss.qualcomm.com>
 <20251027072741.1050177-2-krishna.kurapati@oss.qualcomm.com>
 <TY3PR01MB113460779967E7BC8FEE11DEF86FCA@TY3PR01MB11346.jpnprd01.prod.outlook.com>
Content-Language: en-US
From: Krishna Kurapati PSSNV <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <TY3PR01MB113460779967E7BC8FEE11DEF86FCA@TY3PR01MB11346.jpnprd01.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: LW9jwxE3Y0dh6V6d-z2k1mlH8Kkip_Z8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI3MDA3OCBTYWx0ZWRfXwt0dbdJ91UWw
 AmSV4FDDsbMbnPq+NuXMCu1FC/Af+p874Rw+0TucyHum3p4uKSHBzCgV+12UPAgDuy9jmylGpcC
 WAkVqdj/A5tzx+kelPo9KwXDpdePLqAZMogX/yl9/CN82wptIL9CS0rr+rkf8R1uSSj4nKRDrRk
 aaVxvYVMJjKJybWmwfhHuR1hScoYvVXPegxmk3W5PEsjTuyCmj/v/scROIMKCu3yOLTOX7Txlsq
 E5b6hXuvDJFmHqmu+MlZUx3WgKc1pjlfFJ6utjQuUsTjTxMMih4DROqoX1Wi0xvh9PRpq7leB0F
 fgUb+u6SH4I13aiHro5bCBDNq+b0JSlxyRE7h70M8Vx5xZh62k68tkJXbHfGFE8feenmRno7iZz
 inpUEOxbbz9MnVVxD7L0PfAnYhdL5g==
X-Authority-Analysis: v=2.4 cv=AJoZt3K7 c=1 sm=1 tr=0 ts=68ff2e03 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=uVO98WeOcy1yjMVTFfcA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: LW9jwxE3Y0dh6V6d-z2k1mlH8Kkip_Z8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-27_04,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0
 phishscore=0 suspectscore=0 clxscore=1015 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510270078



On 10/27/2025 1:02 PM, Biju Das wrote:
> 
> 
>> -----Original Message-----
>> From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>> Sent: 27 October 2025 07:28
> .kernel.org; linux-kernel@vger.kernel.org; Krishna
>> Kurapati <krishna.kurapati@oss.qualcomm.com>
>> Subject: [PATCH v5 1/2] dt-bindings: usb: ti,hd3ss3220: Add support for VBUS based on ID state
>>
>> Update the bindings to support reading ID state and VBUS, as per the
>> HD3SS3220 data sheet. The ID pin is kept high if VBUS is not at VSafe0V and asserted low once VBUS is
>> at VSafe0V, enforcing the Type-C requirement that VBUS must be at VSafe0V before re-enabling VBUS.
>>
>> Add id-gpios property to describe the input gpio for USB ID pin.
>>
>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>> ---
>>   Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml | 8 ++++++++
>>   1 file changed, 8 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml
>> b/Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml
>> index bec1c8047bc0..06099e93c6c3 100644
>> --- a/Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml
>> +++ b/Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml
>> @@ -25,6 +25,14 @@ properties:
>>     interrupts:
>>       maxItems: 1
>>
>> +  id-gpios:
>> +    description:
>> +      An input gpio for USB ID pin. Upon detecting a UFP device, HD3SS3220
>> +      will keep ID pin high if VBUS is not at VSafe0V. Once VBUS is at VSafe0V,
>> +      the HD3SS3220 will assert ID pin low. This is done to enforce Type-C
>> +      requirement that VBUS must be at VSafe0V before re-enabling VBUS.
>> +    maxItems: 1
>> +
> 
> Maybe to help DT users, add an example for this use case??
> 
Hi Biju,

  Adding GPIO to dt is a generic thing. Also this is an optional 
proprety. Can we skip adding an example.

Regards,
Krishna,

