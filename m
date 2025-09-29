Return-Path: <devicetree+bounces-222287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B256BA7DCC
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 05:29:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4CFC73BE0E9
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 03:29:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2132A1FAC42;
	Mon, 29 Sep 2025 03:28:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="a+QkdYWQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9777319EED3
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 03:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759116539; cv=none; b=O7GvgZTsvGBXuLMd+llD7jb1Wv+U4k+idzdMUSeON8tjITr+y0c5Q4QzKC9qIg+q1wg933TOwiIDyESORB1a6W9P6ERaJpKYMjoUNUYz06TqL+u7OcjCsL2hHU6olerR/y+Lu5crBoWyLJK7jMe19gNQPEbcWl/ekcEiPuf4XIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759116539; c=relaxed/simple;
	bh=d+oWh3J/8FcYuoWe0/ZRwK5kyq7hn3yhAFbF2sHJPCg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Tai4OCLKK1DMo7mfh6ZyT2gn5HJFKs1iyHQfbxyHrDiNtXkPF+GFiw5APdP3eMZuUt+iYpKtzrvAECaZApzpIRvAGzcMbv73m9bRWsW3W3UR4lJeYxxr0zdpa0qvClsDsVVm2QNdRWdTzFq2QxcvxJ/ELnPbz/4U5udJzStjcl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=a+QkdYWQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58SNFwI8023534
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 03:28:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BXCM5FcXq8QuKbX49yIS6uSqjr5lzhikG+yLwyTe8JU=; b=a+QkdYWQ5EkEBw9H
	Gu0LM28SZiFyFQXUL8HFZhu8BsedFlrS0kYWBlnHqvopX64wTCL8sQ9YpDPskDHd
	3+w9ts4q1UueKxBGop0Xlilxa5jhH76iDv/pHJ01K25kbXySamDhXPub/rzN1gT3
	2qTbgmZNaNfQ3ktR6M5y+D5vsypoDc+x4zVHzPKiaPORdo0RbwapyOrL9P1Iu2i6
	gy29QUoOnt8S58e85o8v5071+24jYD9NUJSevnKl+Hai0ZWDpTzFi7CPvWO83NMV
	6eRhoVpBvX0I1Tv+mF3Rx6kr5dQH0nmZjJ1SYwCmjIQe3LVMqJs8Eqr73qHul9ex
	5LtS6w==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e6vqut3m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 03:28:56 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b54b37ba2d9so3630879a12.0
        for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 20:28:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759116536; x=1759721336;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BXCM5FcXq8QuKbX49yIS6uSqjr5lzhikG+yLwyTe8JU=;
        b=QSD0UwsKnNl3vsXmCMKjgKvk8zg//W+N4fMrB78twdQ0gfR+e0wXObZDfszsd3s7LA
         c9DuWU3fYw4Vj/ovMkjhijSpoUhaU5jj/Elx9xomE0FrOc3pDDJVPVXN16tYAAcH7Xoh
         8w3Gs2CiJGwvCmM0SsQ/Y/UkPYyuT4pE+FoUMg967b9FwolejHLxXAeK5iyHJLXH4mh9
         qFtk3W56nkxc0vrH7/M0mf4prqn7hZKx3OfrOATj8LznwJy6H67xNM3quRIG1YhEHpNk
         c48O6hdTq7DRTRewMrarpPdovJoxYqBkDH2hAqA43fA687XcJvFzn2S0RV0BgfJqLNd6
         e65g==
X-Forwarded-Encrypted: i=1; AJvYcCXFGBQmfBxZO0ir76pykr3HQ4wHAxvTBq8oJKombPXNmPeEqB/7dsi1WkKiivLwqS+RdPXyjeWOJ01l@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2Yemr2+8TjEc1zv4oain33UmsdKXsq/9oq+f7lyZarfeX2IwV
	tUTJasgusq38vSIWgXicgQguOOy1fEqMPItMov2OxNygBn5UYT7QFh0hlIdUJ2oXANhF08hp1BE
	U0FHaPUN3796rSeh/XsY+c6gxZm/xlhGk2cRQ0rlqrJ+ORrY/jkXNxwq95tgO1SaG
X-Gm-Gg: ASbGncv/RtubbRgk0xdEfOEQzunFr4IOKUSTlkN68rRQHexo/Kz/VKQ93Vgk7lrzPUv
	lWca8LUuJu/j733GY0Dmj/c4YRGwMcnj3Z2ETTdggeqvVWML1FB+PrTpIGW909ECLqPWJ4FDwQg
	nIsb3NIY8te9ew0Kp673o7+q3aHTtnINt2Hz0KSUqJnibIGwOTzr2A/CGanpRhejYYphKRer/t/
	VrRjqtXZwW6nyQ5Eqar/rhtlAncelYpMzcuVKzCNkZqBH7LW5qnYtufRNF4DvgTVG4IvnAjgd06
	fT7qeobxZyjpfnJFWdTQk4eBjVTL+fixuE2LWPAiYwi/LeKInugUFnosx7ERtz0naMZSeUohEj/
	H/cal0Wan+ZWXkI5m/Wy81GRyK921bOJQYyg=
X-Received: by 2002:a17:903:1b2f:b0:272:a847:cabb with SMTP id d9443c01a7336-2818ba15c22mr78998515ad.28.1759116535938;
        Sun, 28 Sep 2025 20:28:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHTMPBj1tCYC1tlWu171y4/7crBZa1AWAZ4SMl5J4neepttiCfPv+lqw8NhHYdwwrWdlvP3Xg==
X-Received: by 2002:a17:903:1b2f:b0:272:a847:cabb with SMTP id d9443c01a7336-2818ba15c22mr78998235ad.28.1759116535509;
        Sun, 28 Sep 2025 20:28:55 -0700 (PDT)
Received: from [10.133.33.234] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed69a9668sm112686175ad.112.2025.09.28.20.28.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Sep 2025 20:28:55 -0700 (PDT)
Message-ID: <c8ecafd4-43a7-4d16-8e18-91ea8a51b92b@oss.qualcomm.com>
Date: Mon, 29 Sep 2025 11:28:48 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 15/20] arm64: dts: qcom: kaanapali-mtp: Enable modem
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-15-3fdbc4b9e1b1@oss.qualcomm.com>
 <iexa64nrdqmwitvunl3inmgtmhufphl3p4p2kbvhgcsb2y6l7j@5tpt23yd6jzh>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <iexa64nrdqmwitvunl3inmgtmhufphl3p4p2kbvhgcsb2y6l7j@5tpt23yd6jzh>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: y5hMk23iaz0N4tbfk2i9XoZ549lPs3LI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAxNyBTYWx0ZWRfX+IlNRkORiis3
 L7UPnTXRy++Rj6GWQFMF1em3c0NkTV9+6WB1NiMGXQgHy+kIsN/8A/ZpHlCy/jtlP/qfGxlvpbP
 KOYJC2ictVbwXwvrKRScMS/sMmWO656XXYXm1D2xwG5adzGZCMd5otQM6iOxywZvlvj9dhL9Nq4
 zx6reeQPEc2XPJOGSk8E/NhFynHYh6CqDhY92bBrsvMtHLLm71V+YrFXq9NUoDF71Lk2LR5qhXC
 z0B09TTMS4LFn0ybzM7cv77a94E57LtoZfjSvFZr8Uy2t07aleP+FbM8FW8UVQjHyCZ4ugpMfVr
 yyIIwVOUtTdYGjQ6FXFhMRLkaQOGYXiOZnSKEXmmE1F7HSY13OHsJVV9eeK0sdUL2MDTxmt4uQM
 /P6Gc2GBbV9TeAueJzfq39D9ajFQcw==
X-Authority-Analysis: v=2.4 cv=IeiKmGqa c=1 sm=1 tr=0 ts=68d9fcf8 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=OM6vnnba09aMTPLxVAcA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-ORIG-GUID: y5hMk23iaz0N4tbfk2i9XoZ549lPs3LI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-29_01,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 suspectscore=0 spamscore=0 adultscore=0 impostorscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270017



On 9/25/2025 10:10 AM, Dmitry Baryshkov wrote:
> On Wed, Sep 24, 2025 at 05:17:32PM -0700, Jingyi Wang wrote:
>> Enable the MODEM on Kaanapali MTP board.
>>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/kaanapali-mtp.dts | 8 ++++++++
>>  1 file changed, 8 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts b/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
>> index 2949579481a9..8d1b3278389e 100644
>> --- a/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
>> +++ b/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
>> @@ -1263,6 +1263,14 @@ &remoteproc_cdsp {
>>  	status = "okay";
>>  };
>>  
>> +&remoteproc_mpss {
>> +	firmware-name = "qcom/kaanapali/modem.mbn",
>> +			"qcom/kaanapali/modem_dtb.mbn";
>> +
>> +	/* Modem crashes after some time for OEMPD load failure */
>> +	status = "fail";
> 
> I can't call this 'enable'. Why is it crashing?
> 

We see it crash after running for sometime, it was following what SM8750 do
to mark it failed. 
However, we will follow that Bjorn suggest, omit this patch or enable it in
next version

Thanks,
Jingyi

>> +};
>> +
>>  &remoteproc_soccp {
>>  	firmware-name = "qcom/kaanapali/soccp.mbn",
>>  			"qcom/kaanapali/soccp_dtb.mbn";
>>
>> -- 
>> 2.25.1
>>
> 


