Return-Path: <devicetree+bounces-224854-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF85BC8683
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 12:08:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7DCC13BB9CF
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 10:08:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F06F2D879B;
	Thu,  9 Oct 2025 10:08:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QYpgwDP1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F084B2D7DF8
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 10:08:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760004485; cv=none; b=ijpYEpEM9zce7xNgy+IydTxHvte0l7AHYp37WqAeyYV1WNrwiWuJYTk6SEwtXbLhtIdUigSdg3zKYFHdGvWleT+vuPHhC2vdAf3PzDNCtlMfCrhsgxLHsWNEaK1mf5J4jvRSXJYRaghO/MMVxX2XHSTLAibVf0sThyTiYtojZ/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760004485; c=relaxed/simple;
	bh=kT5aSsHLMvJcFYqS9858CtPC7VkwZb+zjN9Q38ZnC4s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WLFP1P4zcezUZUHLje4rZywcUwH+GhNvfbye+BKNdcBHh09KWkBpkNs7XbYl+YvrsQf2qnhEXRm8n5IlKzo4lnTe1v/LfpZiWaXwej05l5otpHSGgOOPp5/1rwE4LDWEJg6SzIpH9fehXhjqLdETuU25eRtis8y7iz5BSF3rNmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QYpgwDP1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5996EoBZ012092
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 10:08:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	k+lyzqRYoN1PwxO1BIU31aKfB/fnT5JSDjuNND3aBzQ=; b=QYpgwDP1D31aOMyZ
	YywU4gnkuL956SZkp7cBGO5LaGfKNEZgHqi5NfNiQBQxnp9A1zjhbJsRRmahjk1i
	o+AzAphCR8lYi9fUzbfU9z1l3Li99k1/AtAnJzQMN7lypuO8d/2sm3INOyY932Om
	EeXe+yIhHT7xU7GBe4s4hLVAji2cmxqBn+RdfCuMZJwlnZJUV9VvOigMtcbXbOFH
	5GwojK7LWKJ1D+TdXSVka4uVL/avCw6qmNYviX6s0DKO7s7Af4bIz0DCw6rJZRRs
	KO8aowESXsejlQKWn4x+Rw0e2I0S2xExV1xBcKmdLDxa/jP2yzuTJI0LRplvAxED
	owkkeA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv9aabkb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 10:08:01 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-27c62320f16so16150815ad.1
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 03:08:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760004480; x=1760609280;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=k+lyzqRYoN1PwxO1BIU31aKfB/fnT5JSDjuNND3aBzQ=;
        b=Rtqy+QSz6XCK/33k8r6YPd2Drl/K5P7i1nPB6L8gxdZPlUXw3EXWLA/wVdyRsWevuJ
         3G+4kBPDAkHGMGkP8SJtfVAy6ndNrR8OJcTu+co1bcBX2KngRIqOluDU6FtGr0isztSB
         yQvvo73fXCPeLOnsRzRdVfLTUek9UJRYg4Gd+iAtDiVwZ2ntUIH3DFPG1bRGqPyNa5aH
         b7hhvLJNyla5cyGSftr8FjnfF/Ks76GvdCLlO0TtFe7tl5rztrpyBMPuaR2C6gmjOuqd
         Bd4KJqYjVVLZmBW3hIqE213VtW9nJqVBuMUWClSu/Wb2IZhW8G6tHZBprRNz6frVV+N5
         K96w==
X-Forwarded-Encrypted: i=1; AJvYcCUMZoOC1d5kWgjNlacMajvrXAGzT9852DcsRe8IOCh+5dR1iUyL6N3q399OwtJPZOq1s7oP6CSp1OPz@vger.kernel.org
X-Gm-Message-State: AOJu0YwL5BW4XdXQqZNFDaYII4sXeDCX8Zuh/Py/K8l1cr/Fx3wyDPeH
	+osHiX/8I5ezBvMcniaMCsumDjLFdpZg+8Y56nErXCr1oWs8XH/l7ODN2B5yF7lAYVBQ4pT8dwr
	rAMUdb0XDB9/A7l5nqvHQQtsqdMpbvutyiuXYcMaUmw49NpsOlVe8rWvdzx+F7q7v
X-Gm-Gg: ASbGncvQJjG/gaae3frjl6pHMs+h6D9Zu3gi02+U4AmmKb2G7JpNuIt7Gsz25UXsJAO
	R5+0SbtpAgE1Ih7kG0PTsPyVPOGwSAs3zWatQS/XMbxsgaTUNck9wysOdta6hfSASybbn9RsQzO
	mpdycmViMhm3AkMea87um8oGj25kWUuBf4eOJp3lFAJXk/nc0SgA+8iqum/I7A1OpKMJ+mTosir
	SX64wcGHymTgBF0+wQccW76433ezA2Zre7aSoo/DbRzSJbVkdYKFFeXTXRG4i2dG7muDgXdpDv3
	tfKM9n9qt4l1L2R9zH2Ln4pHyAVO65a3BhyNv9/WG8XLzkGK6koVPJjcqU2gcE2DDWZwF26HUin
	lJZjMB3DRD1RxregJ/Ps8DSzPa6q5xqGG289Rf4JepAfnr8UTJkV2XAIDY71gmH0=
X-Received: by 2002:a17:903:11cf:b0:261:1521:17a8 with SMTP id d9443c01a7336-2902723b1d9mr94524415ad.16.1760004480420;
        Thu, 09 Oct 2025 03:08:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFbxN93j7VTEPwO/Swvo0O1F5pdyYPalvwxU1PLckRm8Bj1sYEuo3JDASKn6xxZmVSucH7xjg==
X-Received: by 2002:a17:903:11cf:b0:261:1521:17a8 with SMTP id d9443c01a7336-2902723b1d9mr94524045ad.16.1760004479935;
        Thu, 09 Oct 2025 03:07:59 -0700 (PDT)
Received: from [10.190.201.224] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034f56c0fsm23636155ad.104.2025.10.09.03.07.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 03:07:59 -0700 (PDT)
Message-ID: <e281599a-b34c-4c68-9848-c3ae51fcd095@oss.qualcomm.com>
Date: Thu, 9 Oct 2025 15:37:55 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] dt-bindings: mailbox: qcom-ipcc: Document the Glymur
 IPCC
To: Rob Herring <robh@kernel.org>
Cc: jassisinghbrar@gmail.com, krzk+dt@kernel.org, conor+dt@kernel.org,
        mani@kernel.org, andersson@kernel.org, mathieu.poirier@linaro.org,
        konradybcio@kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-remoteproc@vger.kernel.org
References: <20250924183726.509202-1-sibi.sankar@oss.qualcomm.com>
 <20250924183726.509202-2-sibi.sankar@oss.qualcomm.com>
 <20251002003936.GB2672888-robh@kernel.org>
Content-Language: en-US
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
In-Reply-To: <20251002003936.GB2672888-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMiBTYWx0ZWRfX4adaYewRsGHJ
 O8rglo7OlJDqFy14ELBmQp+jxrGkd0aFtFvZvZDitIvdgF7p0qHIlvK4aNRGoGkmitHMUkAhPpc
 2Ov3ITF8o0pHhuugd3fxVTPM4J0bLYmpwmiZaR8Oe/eGiONeh4E0oOBbxFsC3hIU8Kqt1SblNuK
 q33hcVRpKG69OMBtxYlNzEK+AhhkNqV8+h3Ucyb/FJ5z2LNu0KAPiA3qci6MEN5ev2sPxoJsE63
 7A0xk/mtfYw+IvGFDJ2pQIwg7zMf4d7GrezOyGj0rvvbWtwzS542Epc7NpVQCcyiFVnMNSFUxyq
 gJFVp8dZ2xpgvGZVuR3tN/18ixmONq25v/qz4GyLej1krvkv6Z4xikArDcf2Sw30eR9xWyIEaw5
 ImClymGdN9cLudW+UVLgQDtLz9yMWw==
X-Proofpoint-GUID: 9pVffW2wKrzcHVJ6fbKFLvfxNA6iBEjk
X-Proofpoint-ORIG-GUID: 9pVffW2wKrzcHVJ6fbKFLvfxNA6iBEjk
X-Authority-Analysis: v=2.4 cv=JPk2csKb c=1 sm=1 tr=0 ts=68e78981 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=PTK300C7mqS8JA3qkmsA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 clxscore=1015 impostorscore=0
 phishscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080122


On 10/2/2025 6:09 AM, Rob Herring wrote:
> On Thu, Sep 25, 2025 at 12:07:22AM +0530, Sibi Sankar wrote:
>> Document the Inter-Processor Communication Controller on the Glymur SoCs.
> That's obvious. Say something useful here like how the h/w compares to
> existing documented h/w. Like perhaps the change from virtual ids to
> physical ids, whatever that means...

Hey Rob,

Thanks for taking time to review the series :)

Will add more relevant information during the next re-spin.

- Sibi Sankar

>
>> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
>> ---
>>   Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml b/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
>> index e5c423130db6..129870185884 100644
>> --- a/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
>> +++ b/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
>> @@ -24,6 +24,7 @@ properties:
>>     compatible:
>>       items:
>>         - enum:
>> +          - qcom,glymur-ipcc
>>             - qcom,milos-ipcc
>>             - qcom,qcs8300-ipcc
>>             - qcom,qdu1000-ipcc
>> -- 
>> 2.34.1
>>

