Return-Path: <devicetree+bounces-178879-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B122ABDDA7
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 16:46:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A62B87B80C4
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 14:44:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 354D6248869;
	Tue, 20 May 2025 14:45:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bAwQZIKV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F70A1DFD84
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 14:45:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747752337; cv=none; b=EjPtFqVbCSyHp6NnTL0a8XY6i3DBl9m0hXLj6iPx3pou5XMohnSzaJatN1iVtQIwuRMmwKsvLuFr2laNxab+macmprdh+eTsz6OnIAw92X6+0Cxus+oWCkarWxBZ4myiztNyhGbrAguk4Aru8bl7r3JHCH+i8GO3Hi2JOHvX7R4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747752337; c=relaxed/simple;
	bh=AhpNTohfkxb/6HCtk/2e1VKzunmWW2d5HeDbWYTrHCY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PoYW/dNGcNO6VMWlq/T71uhI9wSkooVOWvk72Zf39VkGL+HWKym0WkPNoZp6WzmGYsjs9Say9YBxIqhHwIPa06uY1zdtf3dv9xl2eKaUFIPYpaNrNTKGIH7EuHpSoXeR3mf6cENfCrnHD4nJADybqDzGmGPJCkndLFV+wy//x3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bAwQZIKV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54KDXL4Y021397
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 14:45:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	F+UYVkRq7QWAvs/4Psl68WMbM9V3F5w7kl8Oo8qj3QE=; b=bAwQZIKVGRjy+y08
	agztzhNXUygFJYKi4dG8FcP9GA08H7BOQZ3vuq4x83WynM52cZoMHGcIJoFUvYXP
	OX6kv0tSz9WkFavzxTVAq+CYQk+LBPxWQRVbPCEa0hB9pKib201ZVygkmTYSYdeJ
	lLuyMjdqx5FVe0ilJ8H/6ORr6k4UMfIxgV37qr7lmmSvGw+K+7SvtgI368pit6lE
	DXEwLlW0qZdCzKKRIJLpU90C5ZTjoRkf8xR87TglFqQROazOvhHAi+fmKlKoJCRr
	kyeoC0femN2IUnupGSlgaOjUWS1Ko1qwvlaT5wbMYGmXUyGkb8BluDa/FyEQ8dd9
	Y7zdRQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46r6vyua8m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 14:45:34 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6f8d448a7f3so41623896d6.3
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 07:45:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747752333; x=1748357133;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=F+UYVkRq7QWAvs/4Psl68WMbM9V3F5w7kl8Oo8qj3QE=;
        b=XXOSZjSTpNfw3PLXFZNZwCsJ6ABqBP+6w26bUQBNTe20zf07+tlvzBbgXuJIxpeFdC
         ihr+etxk7tY0FzLyZIKrLLZBb9tKWQM0Sk6j6udHSycnI4Bu1hKy5tN+/OYgNgloLBHN
         nWDih5wF59YD8/nAU14Nj3eAc/d82i9mxEUaVziEBJvV6WeF1S/dqckik1AF0g5cs1Kp
         9uhHl++XCHpHWniNlneHFjnoDn4icz7uetllmRPcO4io/9yoXIadjG/7DlTnncEgByTY
         kdhrPo6Ryrpz36TFLUTDBZgoRRYpJw/gtBZJebwYEnbcfudo3b0Cw0wihOfDO/tMMunT
         +OUA==
X-Forwarded-Encrypted: i=1; AJvYcCWWX5yzlJgYSievogb//gIqGdHFF7TQwZA3fi58xXbDs7obV6o3SHHR1McbYXCWnXkjTRzE4pHE0S/t@vger.kernel.org
X-Gm-Message-State: AOJu0YzHz89dGStnvlVTwT0SckdLb0PwW3xVGUi0Uqiz6VQiqY0okCF7
	ybl5d9liLvWnB6u9I0GyuoPoIGRyyUkMv/cLSMUihxxPbo6i5pHp3xfpiyYNXVjFFkdeG0G4aqE
	Mfm8r/Q7E7a4Q8lJQRlDxdLZnXOyu+jF5MzM9zkZT4la3bNcLjkwsUual5hfTQbx/
X-Gm-Gg: ASbGncvVY68tiIeVB1VRuKOe6hqMtkm6w0N+ftD6unFYg247mG18JxZwIZ7HuBo7hZR
	wqnBbShofT/uihipgGctG/R18sa57aL8lNskSxOKLzXShjHm14k1uq5TfohkYMs3T0Sbyud/iZ5
	AXv4ymdI04/jiRogM3sORNIwOomvyS1sLQiG06wAjpgJUNoDDAtzLcfB0ttza3JyUu3xrMlXDz8
	oB2+DrWKMKq5q5qfEDC9kopiGdQy9CNaqdRsrXhkx4Ung3U+X2OIqmZUYJptTQgX4jyEsdeM2lG
	Y0JET9qW3b5wPLFe5XDvDBPK5ySIxzYNhoKdYICKfMbVgihXWi5d+tmjEq6JYTL+k763
X-Received: by 2002:a05:6214:21a5:b0:6d8:99cf:d2db with SMTP id 6a1803df08f44-6f8b08cfaf2mr302480666d6.38.1747752333361;
        Tue, 20 May 2025 07:45:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHgeJAE3OlzT6P01yBXck+LegPxtMNuwI1oL+8K4BLsmkQnugoNimzkxj/J7I7mt6VdI/ZWFw==
X-Received: by 2002:a05:6214:21a5:b0:6d8:99cf:d2db with SMTP id 6a1803df08f44-6f8b08cfaf2mr302480276d6.38.1747752332995;
        Tue, 20 May 2025 07:45:32 -0700 (PDT)
Received: from [10.153.41.224] (176-93-133-115.bb.dnainternet.fi. [176.93.133.115])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-328085d0dafsm23934011fa.109.2025.05.20.07.45.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 May 2025 07:45:32 -0700 (PDT)
Message-ID: <22c32283-768d-441e-b392-bd59a102f000@oss.qualcomm.com>
Date: Tue, 20 May 2025 17:45:31 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/5] SC8280XP SLPI
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Johan Hovold <johan@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250517-topic-8280_slpi-v2-0-1f96f86ac3ae@oss.qualcomm.com>
 <aCr7UzmK7XCjpsOx@hovoldconsulting.com>
 <a49df292-dcc6-457c-a565-984887687341@oss.qualcomm.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <a49df292-dcc6-457c-a565-984887687341@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=NfHm13D4 c=1 sm=1 tr=0 ts=682c958e cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=wJfVPMc1y4yLOrLMgEZDyw==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=6qslIKx09P05B-qpR40A:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIwMDExNyBTYWx0ZWRfX8qmKildm3vHT
 hlMHDebmiGyr2T5Nab8PMPc6TJYUoGPK5VewCnGKFohuLdwBqU50ANKDAz+mUGiMNBUOI5ORDvU
 sx0nmf6JXyi6r6iJm9UpK4p5JZHZ08pw/C1eANR4jhHxypjKNCCqh0hSvkUumcthdtYAhRTHESh
 Fr7tqnwipffnvHDmG/vu/lF08A8hv+MTNe7XWM/f9yiViqmYm+NyzJewXZLJRQv5qB36lnwHyZ7
 EAzbGF5RfAf1mmFt3XkMrPsZ3dePdVdO2c+9b0FK0wh7K16qY9DbSWZxzTJswYR3m9Mmz8nYO6H
 NgqojB5FLMCexJZD0fwP9/128qebgJ+92vGvu+x1caTWeQdzYubfsdLoHa37+W5WKpnZmOVKcF5
 FKMJYBiQJ3gOmo1T5EsZkceRGSOTQhrgtiW5912y9aEB+RPlVQ6hRL0UyzgKj/qu2cIr/eaW
X-Proofpoint-ORIG-GUID: A3nyfyRD4n2biaI55ViHhmF3ofPIxFo7
X-Proofpoint-GUID: A3nyfyRD4n2biaI55ViHhmF3ofPIxFo7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-20_06,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 priorityscore=1501 spamscore=0 lowpriorityscore=0
 phishscore=0 mlxlogscore=810 impostorscore=0 malwarescore=0 mlxscore=0
 suspectscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505200117

On 20/05/2025 17:29, Konrad Dybcio wrote:
> On 5/19/25 11:35 AM, Johan Hovold wrote:
>> On Sat, May 17, 2025 at 07:27:49PM +0200, Konrad Dybcio wrote:
> 
>>
>>> Konrad Dybcio (4):
>>>        dt-bindings: remoteproc: qcom,sm8350-pas: Add SC8280XP
>>>        arm64: dts: qcom: sc8280xp: Fix node order
>>>        arm64: dts: qcom: sc8280xp: Add SLPI
>>
>>>        arm64: dts: qcom: sc8280xp-crd: Enable SLPI
>>
>> Without firmware this results in errors like:
>>
>> 	remoteproc remoteproc0: slpi is available
>> 	remoteproc remoteproc0: Direct firmware load for qcom/sc8280xp/qcslpi8280.mbn failed with error -2
>> 	remoteproc remoteproc0: powering up slpi
>> 	remoteproc remoteproc0: Direct firmware load for qcom/sc8280xp/qcslpi8280.mbn failed with error -2
>> 	remoteproc remoteproc0: request_firmware failed: -2
>>
>> but enabling for the CRD reference design and requiring users (read:
>> developers) to copy it from Windows should be OK.
> 
> We shouldn't expect non-developers to have the CRD on hand, right? ;)

Non-developers without Windows can extract the firmware from the 
corresponding cabinet file.

-- 
With best wishes
Dmitry

