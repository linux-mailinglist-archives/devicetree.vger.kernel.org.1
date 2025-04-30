Return-Path: <devicetree+bounces-172544-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BECFAA5198
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 18:26:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3CF5D4A04C8
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 16:26:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 652332620D1;
	Wed, 30 Apr 2025 16:25:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ampATIP5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B36CE25EF94
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 16:25:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746030345; cv=none; b=kj87YX23SgRdvMIZltKnqui+fzghvrYERtj2QC1Nc2WD8aR0lH3E0sGY3EAZhnD6F1qZXMHyaQZdFps2ao6JNgDw72aKA8E+TFC0Y5PKgMyCl+5My1eX1WsM+qtfBlI4RV5jopXOvAICDeyljAbyJqEX0MHWcYJ8JuNiSiajrdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746030345; c=relaxed/simple;
	bh=jQSNGpxbiy5IVl/2fB8ymxWQr7NtfPmh/ce2dT7Ir1Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BuKGTLcpU9JB1l3sUlPKI/OlFJ7KFUfZWL43K2qWjObODZ5UMWn7eICfe4EUQfn36q2MkxekFs/32xzRQBw2BOIWDY0qGlVMB4EWoZpMdqsD9O+sTFCsKQZ3/bhAAKuNqmQhqmIVEASfbsp180seCGPx07le4X0mIy++qv0lAcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ampATIP5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53U9PBOb032385
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 16:25:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HB3+gmI+ZUjqI0EbN6CC3IxDFDjjbTNSLHMPATn3Z7E=; b=ampATIP5DmHRxSg4
	iPiUpHLI5jzJ7/fxepbhbJZcUsMEd6i0GwAfIXQZluBqewvvfU9RM7xeKlcEes1G
	8hXP1aRm15zFAG0c93TFyfxq7g+UKgfR0yz3zgSmFMLpVfscFDFBxHkauEHOsiYp
	Pt70VYRSsdHJ2yqrjBjSb9WTrvxWOOxnlqZQIazV1yEz4B+TnsYWZUbkFQqpeXA/
	H91sOG7BC9t3RVPbEUfkqbbSCS/Bry8mbjnzRV+g6ZAR6Z0Nf8DrnBYrU3qZLSeO
	xjIrLVC8HRXDEQe0CTNNRMMS/YZjrVn0TGgW7znvyqrGA/9ooDHUe42+W434pSgf
	Cy8qLA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6u2aurs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 16:25:41 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6eeeaf707b0so156766d6.0
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 09:25:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746030326; x=1746635126;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HB3+gmI+ZUjqI0EbN6CC3IxDFDjjbTNSLHMPATn3Z7E=;
        b=H1VOHm0KDxf+W8S4Rj9xhKFKiHKUzpHwU8I4f0p7szlbF6VJR66vkm6pwdjDGddGf4
         yKmRHS28BzuVKcFwCY5NGNM5zWzM+g8qu5Zc+16qYyyj+YFE/TmHWYxHLWiASISIkhjz
         y0AMUr2gpIirkhLgZgJztZUdUPCvo7ML8xMpzFVcrWZHxgah8git4GzHfUHWE577K3Lw
         7tYRFcDaiDhrxe6d9ZlbInMlc0KMImn1tk6TwfLjPA0HY+XtwtTJbxjhF34pl/zM5Ot8
         0IOCaNHv+fGORbk4/rLJeAyUU4m2NxK2l4IVegY+RzPF3oOZDOy1aquIuhz3VWWDJqyj
         /zMA==
X-Forwarded-Encrypted: i=1; AJvYcCXGYCdpUs8JWQ9phn4IpMYE3Afjq2g8g30hFRy8a1IyK2Ad0C3fL17FSKwILs8SW9s8TfJYyPLAqMYP@vger.kernel.org
X-Gm-Message-State: AOJu0YxpnSw8AI8skdbZ5Wyv/UUvZqJtIRbn7Xy4GGdDaDhcAtySJfHH
	FuF2Lyxsn2rVXbGqIGoCudS15KtaMaoj2S6E8Fl6TZlKMNtvWGzOIsCTc9OyPF+AG/LdHrdg9FE
	lvAi+Sq8d6SUhMswYwr1cdCrZuzZlDeXjTiZPmsmjRp+ZSISjc/pZf1cvb4mA
X-Gm-Gg: ASbGncvOpVHvJebUdwRxRo4ShI57z26CrBUJE2z9cNpSxJj6J7EvzfmV70UssZHJUMs
	/Gdlk5d8TWDkRyfXzLPXAV/L9iY1Y52rqkmXWSKWQSFkWo+LQpLOQHxQlBtrfGujwFcziai8xyD
	Nnji+zgvq6S/r65Sbh490T2Z7Z3gxsYJw5T2P5F5POTWMDPgJPzUSI5pK2GnYmCqBr9KnVaZwiD
	CAmT7awofdMesXvANeSjxO29ZkcOuwQzUHEiNHwdWb+CQDaUnEFBwJbDhaIhlkIQXRP0Zf/XaXn
	maPZCFY/gYixH7hxBahHvHVAMg0QRD0CqtYTsYPGExUc3epsedQWCeB4gPEFZqsCTVA=
X-Received: by 2002:ad4:5c4e:0:b0:6e8:f88f:b96a with SMTP id 6a1803df08f44-6f4ff2d2924mr18869786d6.1.1746030326564;
        Wed, 30 Apr 2025 09:25:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFxD7HkUdqpnN+OfcCIzsrbn5QNU9jNDG0l1/EVlSKXcQll60BAsotjGUkxYzwFZKHAhPp+vQ==
X-Received: by 2002:ad4:5c4e:0:b0:6e8:f88f:b96a with SMTP id 6a1803df08f44-6f4ff2d2924mr18869466d6.1.1746030326152;
        Wed, 30 Apr 2025 09:25:26 -0700 (PDT)
Received: from [192.168.65.132] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f70354633asm8799526a12.55.2025.04.30.09.25.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Apr 2025 09:25:25 -0700 (PDT)
Message-ID: <ee44260b-13cb-4901-a073-2b9bfac2a794@oss.qualcomm.com>
Date: Wed, 30 Apr 2025 18:25:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFT v6 1/5] drm/msm/adreno: Implement SMEM-based speed bin
To: neil.armstrong@linaro.org, Konrad Dybcio <konradybcio@kernel.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>, David Airlie <airlied@gmail.com>,
        Simona Vetter <simona@ffwll.ch>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
References: <20250430-topic-smem_speedbin_respin-v6-0-954ff66061cf@oss.qualcomm.com>
 <20250430-topic-smem_speedbin_respin-v6-1-954ff66061cf@oss.qualcomm.com>
 <68a2cb9d-4f3b-4bfa-81c3-2d5c95a837f3@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <68a2cb9d-4f3b-4bfa-81c3-2d5c95a837f3@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: f7vfUWo88I3L2AqMmtVLycGt6VVDGI_1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDMwMDExOCBTYWx0ZWRfXyzBkug9vtsL5 /mvypZXLTDYfBCC1/Eg/vpi4PLtee25lw/6aPNGceZkz+L3jLWRyV0edb1brhLrfYN9+Md/4VyH cbSUOAJuj9LfPjGQCDB16gi2rAnD+h+UM5otgFWd31/5shPFZFz0x28l14PjlbEckfQsZL9nODq
 wED7NlCvOVMgZc4QpPJNN99fpmUPWS9JTy/5J7C1oXEmRVXWnrqvK6VPm+Lce9MVOj9OSNHtbER JaeM59687iZrvfUXB4O6HCnFAcQ5uXCO07+w0YE0KrWmS03AXMivkJ03u/PVwG3sDT1KtdJHHhk 7gnokDF8+gNBhKOFxB7X8x+5nRsUrXp5YF5XlNcHL1Fhch8tU5ENPTZd/vzBC3OdhWJF0VlTzFG
 wv8OwNR4MO5zKtdUmErrNJt5KzUju2FR3+wQOoAH+7paY12OhJnxX8E5IjTJu/sz1F9OGLFT
X-Authority-Analysis: v=2.4 cv=b5qy4sGx c=1 sm=1 tr=0 ts=68124f05 cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=h3lbVRRyGfeKgUivn1YA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: f7vfUWo88I3L2AqMmtVLycGt6VVDGI_1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-30_04,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=772 phishscore=0
 mlxscore=0 impostorscore=0 malwarescore=0 spamscore=0 adultscore=0
 lowpriorityscore=0 suspectscore=0 bulkscore=0 priorityscore=1501
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504300118

On 4/30/25 6:20 PM, neil.armstrong@linaro.org wrote:
> On 30/04/2025 13:34, Konrad Dybcio wrote:
>> From: Konrad Dybcio <konrad.dybcio@linaro.org>
>>
>> On recent (SM8550+) Snapdragon platforms, the GPU speed bin data is
>> abstracted through SMEM, instead of being directly available in a fuse.
>>
>> Add support for SMEM-based speed binning, which includes getting
>> "feature code" and "product code" from said source and parsing them
>> to form something that lets us match OPPs against.
>>
>> Due to the product code being ignored in the context of Adreno on
>> production parts (as of SM8650), hardcode it to SOCINFO_PC_UNKNOWN.
>>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>> ---

[...]

>> +/* As of SM8650, PCODE on production SoCs is meaningless wrt the GPU bin */
> 
> This should be SM8550

No, this is 8650 to signify that this holds true even later
Looking into it, I can even say 8750 here now

Konrad

