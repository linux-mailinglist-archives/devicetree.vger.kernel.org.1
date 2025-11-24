Return-Path: <devicetree+bounces-241775-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 821EAC828DC
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 22:39:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id AB4A434AA9C
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 21:39:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9210C32E736;
	Mon, 24 Nov 2025 21:39:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BufXf5vF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dV8qBse6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE4952F39C3
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 21:39:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764020355; cv=none; b=XdeOMYQcKgwUskiUPNenMwMI7OVaDB9e9uI4eJ8EiMHe6vGjyOcdkNc53pKXjAu1B5w2+h1NU3ZWemo9961gdsz9NfKWq2ejOj+7xRQtOaYda/3v94i0vizsMP0swDBIIMonou2mSpIYbqSzFr34zOSsWoGPj+V1B+zfs8aD2BQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764020355; c=relaxed/simple;
	bh=GS+UuGlRaor7WWCZH1JiOp/qOZUepK5YgfkenjUH2KE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gWr3USbJOFskC3NvVavAz4cO8gKvn8L2snHnFdt5skc+WUelxwuR9WddVJakdWCno02uqRvTgYePeqECeLGpX9w8xkJgnnrmF3ILiODKuO8IiaKG9P0pg9FT2c9KcTVn/rkCedy05HAIF/6gJrEJMf0DWQGETD1HCKamYMrv3Dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BufXf5vF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dV8qBse6; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AOJrmjD843502
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 21:39:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WgXfIJo8v5pPFf/7d5jTW7/3WqOQ17Vj27klEuOBSnM=; b=BufXf5vFYj2Hddb5
	pO4tArFN79drh7+qn9UIBs+E/HUCIhb37y1QUpb2j3YWhnhbULTj6+9MDIKnzADW
	yQ+1Y1bil1oSXQuABpGSxNbT6SJzi7zdUFXMar8B1N7y1BBhNr3/FlpxGFymwepU
	WzliofabAOe3OYFpi4U5kby3Pc/CabGUBnu7GBUfmwLUKmYEDGaUHP9yT0th1yAA
	YLAFvBTxY3PWzrN1VUt/KsJ5slW7UqHHM0BGJHCtiiF62FVXmi8PoH3rPSUjhQvN
	WNgD9+5nzF8hsgQ9SchyUsNuu5gpi4y92XlgzhQ8Yqmu6iEz0tDTfq0OsD5tz4/j
	97RXiw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4amrv699fk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 21:39:13 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3418ad76023so9943024a91.0
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 13:39:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764020352; x=1764625152; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WgXfIJo8v5pPFf/7d5jTW7/3WqOQ17Vj27klEuOBSnM=;
        b=dV8qBse6K4Q1p6TUdDq4TGjOGX5evntK44YYXleQFMp28dH0wrlMTPrGNjHg8xvpcm
         TYAq5B3Bqh9Jr4D/R4bNMMFibnf1cM9XdhGIXP3y5DjDvPZ+sKgzG/MLJkscPY3cQHeO
         h+5OhOKPnARsmk297WqYmrDozvj+9BJ8qapWmOuZR9EHBPhOWGiID0j2UCr25UecBYYC
         1/EQjDRqKJ/UpAiaMcnnP9mQG/ds0ePdxw4wWZ5azmPT+qB+ST/qCZ0sQ+PWxE+MucB3
         rsSFhy14N2hFsOaW6+qA5rhwEkOUw4LmexI1zQ+SlLeB3KzRyKtX4CUVxh6olTR/zUU9
         Fh+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764020352; x=1764625152;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WgXfIJo8v5pPFf/7d5jTW7/3WqOQ17Vj27klEuOBSnM=;
        b=QIYMPKJm4yv4QDP4AuG0Jm/k80j7rPmwWc4E2HKAfhe7LIUyiWyFRK3ViQHgwn8oKH
         jhqTCh4/gd7qj2WTcxW5TQQXtoeGIIlIEVjcT9WguX3jiETQaPmMsQqYGZU47UWhRE4A
         q2rdM7l3Fvw7OdQ8erSEJzuKeydr5ApWRfQ19+G46nPBx/V+s0QqOlOX+MxyxL48JpqG
         5LavW0RTj+5NHpryfjiK1Z+CIXtl1sv8OP8pCPWa09Z67gY1I38oPhTyHerUNoRSHsc0
         bFx17ez2cN/nCi2DvYpheMmUh5+dGDS5buSPhG/+D8RqjwaG3RWjioITFrHEeUAeuUlL
         5UbA==
X-Forwarded-Encrypted: i=1; AJvYcCW/pNb1/mMVCiMmrDbKZoKheG+UaqOkOGofSUyfwno/OlkpacL+Xmr3VmLxL6aQvqQ+f7nS9iGhUmF8@vger.kernel.org
X-Gm-Message-State: AOJu0YwkIGWuBb/VwivKzXly0oV9wRet/8uDIAw0E9KSeInQW8EfWFXT
	QqU9vFBfVqds6XdXrtuI2J14WRRzsi/t3hV8BU4MyMMgnTu6ec0bU5AQEK2UCFgN36C6E2YSKeJ
	Oo39VFWOx2dpX2+p7bAv0qRrwZp27rFWeL5MXf2HQ6nxA3ze4ETfOEZzUcBotzM8r
X-Gm-Gg: ASbGnctHUJUBhtzJ6LKep3+vUPiYMn6pi18xZ3j3dd3lbFPM//GU/jKsSEVe4qsPUTa
	q1m0NU1/a9/QY4bG04dihUTFtvL7GjzHyu2lK/jZoCZ+ULiqWe2Tmh1foYB1fYS+XpWKAZEpxFy
	K4zyMnwxirW5fOZhV2BRSrx/f2z9kTmEM8mjJb3hTensbDXpgljnOHhMwI7DvXksN4Y5q9bbn+K
	NwvVmkpUIkrFkigesXoKvhLR4YbsPpkHVcdrFejC6Jd/xh7pQftctoMa1NMxWQUnBvbasdfY57l
	qU3NJwse5JOEOaW+9Njy+ZT/fnPe4LbA/3rnzAKU9DDYb/6mRqjBOT2rKQeIR3jUiB/deP3kqEK
	ysWPc7XYMKUK88ity058SdDMqSNnagyL9wF8=
X-Received: by 2002:a17:90b:3e87:b0:340:a1a8:eb87 with SMTP id 98e67ed59e1d1-34733f4f4bamr15101961a91.35.1764020352519;
        Mon, 24 Nov 2025 13:39:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGBTx5teH4HQxlx3zmAf8DbE5rLFzZMVPvASueFdbjQ/qQPaDPGzHLFZ88hLWWlnqEQSKoDAw==
X-Received: by 2002:a17:90b:3e87:b0:340:a1a8:eb87 with SMTP id 98e67ed59e1d1-34733f4f4bamr15101934a91.35.1764020352034;
        Mon, 24 Nov 2025 13:39:12 -0800 (PST)
Received: from [192.168.1.14] ([106.222.231.199])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3475ff9fed2sm2224a91.6.2025.11.24.13.39.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 13:39:11 -0800 (PST)
Message-ID: <1207b70e-dcf1-47cf-be26-ff2928932e3e@oss.qualcomm.com>
Date: Tue, 25 Nov 2025 03:09:03 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/6] dt-bindings: display/msm: gpu: Document A612 GPU
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Dan Carpenter <dan.carpenter@linaro.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20251122-qcs615-spin-2-v3-0-9f4d4c87f51d@oss.qualcomm.com>
 <20251122-qcs615-spin-2-v3-2-9f4d4c87f51d@oss.qualcomm.com>
 <20251122-savvy-camouflaged-chinchilla-f600ce@kuoka>
Content-Language: en-US
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
In-Reply-To: <20251122-savvy-camouflaged-chinchilla-f600ce@kuoka>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDE4OSBTYWx0ZWRfX6yL/YcNIr7cE
 exyDD/I5kjOCcQXkhSwlqnr0lCeQIE/kVkrYShXzqxLrsrLcRcm2TtYizNmUBuTDdthkZw1PM5I
 UNmkuI+DKxdro1PNXKOXyZkM0jBjz3H4yH15iWN6tZ41iS6HZAF4pBTm67kBgR8j2QoTjedEqeW
 xBBZ7n3KcAxcxPohiYTrAKbEU9AqzjFnofI5gZaZ9NKx2YTJPkZjodUZZhItPis0AgrTN1ekAqe
 IAt+nxeB+jOA8hRV7kmElAOj9oFAYw+JetWXGQAG+Lsj345kLHMr9mIACEagBFVY46wpd2TVKeE
 HEATicMZOHi4iUcl6FBX/FAXUcMKRSxEPMvXERIpH+Qwume7T8qqy1hjdtBugjoyKpugGlRV3ZD
 eTHGmLf4uHDjE5YxDD/4iJ9E3h80gw==
X-Proofpoint-GUID: TIBs5CULbz2vW83us54nPZ1zj_gcuvS6
X-Authority-Analysis: v=2.4 cv=f7BFxeyM c=1 sm=1 tr=0 ts=6924d081 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=QME20dCx57Gc1q/4dZKLgg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=X55b8mUuofX-4EZtosYA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: TIBs5CULbz2vW83us54nPZ1zj_gcuvS6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_08,2025-11-24_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 phishscore=0 adultscore=0 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 suspectscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240189

On 11/22/2025 4:32 PM, Krzysztof Kozlowski wrote:
> On Sat, Nov 22, 2025 at 03:22:16AM +0530, Akhil P Oommen wrote:
>> +
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            const: qcom,adreno-612.0
>> +    then:
>> +      properties:
>> +        clocks:
>> +          items:
>> +            - description: GPU Core clock
>> +
>> +        clock-names:
>> +          items:
>> +            - const: core
>> +
>> +      required:
>> +        - clocks
>> +        - clock-names
>> +
>>      else:
> 
> I am pretty sure you break not only intention/logic behindi this else,
> but actually cause real warnings to appear.
> 
> The else was intentional, right? So the pattern further will not match
> some of devices defined in if:. Now else is for different part, so only
> 612 out of these devices is excluded.
> 
> There is a reason we do not want ever else:if: in bindings. If it
> appeared, sure, maybe there is some benefit of it, but it means you need
> to be more careful now.

Aah! I missed that this comes under an 'allOf'. Not an expert in this
syntax, does moving this entire block under an 'else' make sense? Or is
there a saner alternative?

Regrettably, I tested dtbs-check only for the talos-ride dtb.

-Akhil.

> 
>>        if:
>>          properties:
>>
>> -- 
>> 2.51.0
>>


