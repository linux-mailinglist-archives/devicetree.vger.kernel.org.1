Return-Path: <devicetree+bounces-247848-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D69BECCC16D
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 14:47:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 18F6B3017F23
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 13:44:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F4FE3328F0;
	Thu, 18 Dec 2025 13:44:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AV8USH3V";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MTjCjkyy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9841F33121E
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 13:44:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766065448; cv=none; b=RAAAtwtkmqHzSTf4HIU1wje63cV47jMiuhVamj+uABcNFV42xVTMUTA65pAmnrwJg0EtxTmS7uRqJA8Ar8dotTJ+K59PQVg9ewxayo70B1nyBuLjePZNWp9oSpBDjyGM/tz1TkSfI1TQBURva5qCtMFg070ck7WLsDL/goAPCpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766065448; c=relaxed/simple;
	bh=Sh3nU8l++Ux2dtqy/VhnCDybc5nvFmNk8BBSoqTEYFk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iQbxtRUWVobgVE+HloWPwZBVwcbj+8OadW0+XUHgkir8d/ej9jrdm2Ah6B94e8EM8JylkVEePNGpeI90pYw3mynsm2PsAjClOaW4wLkRI/zwRa9QikZgsD1+6unKvRfNRq3JJmlf5vGUER4Fz1pwO+a2CZhAhNrDmQ41q3k2fz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AV8USH3V; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MTjCjkyy; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BI948cl4057277
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 13:44:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FCmcqY4oHVyAXgvmdllyZDx/cRjjLaxj8tymQ3e47+M=; b=AV8USH3VZ0WUHojp
	wu+Mcq2xMK4K3K5+qIkMMpSxUVbH/V7VYuyX3v2iwZed5a20URa7A3WVI8zgupI2
	wbMCweTvchjOoYWe8r8Dx06D4Zdyo9Nqb6BKBE4aH4CcEUBzym/SFjzMAJTkKjib
	vRadA2M3kLQO8XHt83CnFdEnARpdzkhCXPV0PJhsa5UM+rpH8GsTxaYyWgGFskVy
	/rZmpORtSF7EAa/Fd6bwPncP7JYDHhpbtxIsIQAty5Z1YYyQEkWCtdoBeDLLTqgA
	v5eQOX3SetrOcvRxJA0feTpJV4VKs2wCy0UyDO5D0kJZsB7ZD6eo9yMu1EOP3jsn
	86VwnQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3xr5bsdk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 13:44:05 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee23b6b6fdso1632181cf.0
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 05:44:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766065445; x=1766670245; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FCmcqY4oHVyAXgvmdllyZDx/cRjjLaxj8tymQ3e47+M=;
        b=MTjCjkyy6Iw7UkUdibhPbLC3lFRte7gCfSS/kMDTy+5N/V+vM4fN21wQ2twxpsILOF
         exuQ9rY1QY0U9YukrJiw8/+PeZkQ/rNkdnEni/5w6DOgm8R6/FlpdhjG6XOjZ7yNaBps
         NHSMh/5fDP44s6DiRrGuMCd54o3qfSsESehgwbKwevU6VqrCTAYAPd7JK/VoSKpzF+dH
         ucSdUL9960PiDiHDP73WYu6OAyLoGEr2PjxiPP3xrXBvKyRfkt/uvwO8S/+IdV93xK+k
         3WmJnLQk2ZWuj3KECtgj8nTbqp7y2MQ07iLC31rziqkIs6UjctFwFvb4vw22sCmTrQ0i
         vFKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766065445; x=1766670245;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FCmcqY4oHVyAXgvmdllyZDx/cRjjLaxj8tymQ3e47+M=;
        b=fBgImjf01Nh8f8mvs5/fnjbBpaRNJX8mkV9fUbeBlxx9Ak2M55/aW4ZsV/aDF1M9dc
         DvblCX68NPVHego40Qv7qEYSZrYjmJ4snGNCgC48LRBnOuwL9N6UoDNP45GjQU7HXlBc
         RgvlHEv62UZjYHRvz+7DI3/pl4ANufvGl3DcqY3ghC1m+ovDZTe+PqM+Pk2tDfGoD5bx
         KO/L6g4sbf4I/HgNUS59ergVN2oMK188GD6fiPfTsoB+WHJ02NrHZpthTII5xO0YvqNd
         iRGV56oF/Q+bOfbuD2cK7D+WFVAEKdiV7GYr+l2WqkaSSv/N8hKDCkEPn3n+ptHZVTy9
         IwtA==
X-Forwarded-Encrypted: i=1; AJvYcCV4VyVmfdxhZhNApimY6+Nyo2YmFRP//8FO1qLeLgh874erAEfT9U5KM0sjYfkAvbiqk30Rfi4LEkmx@vger.kernel.org
X-Gm-Message-State: AOJu0YyDO4hZz1t11lRF8birfYj9Lc1iFzAhXsNcnY1HBBxvAvowJ8BT
	7oteQY5rANYwV4Sxo5YjcrHQ7GJdPdoPN8wLMWIQ0d/APRa9tI3YCMhCOuVyqZkDuIXI2V8v7cM
	Oin0FsKjMO7JYllHX2uvu+Tv40FD9NUX5IsHipU7J0bQVaa3Wkvj5EGjrOZWbx+E9
X-Gm-Gg: AY/fxX7q3WxXJQ4cgax6mIM8y8RFcu6S71cGpCPP63h70YxrrrXGr4+eaxOpQHs75sf
	fFYImS2g5DAsd7imG15xZU9WuZ1JA77VA+V6ifq8CV1hzcp6o5k/RLOePp1PGcSRPFbxWi1jwjw
	dI855jgKdW6tUSGXeAAEZWdl8JpwdNJG8MS4cK9Bjkq/uwI+HNoAPRO0lXQgH4RYojiKS/Xq0zj
	6ljG4QEuiCsiR4JVnATvt9V1N+j9HYXTgVGx7gQCNZos4X/sDnbWxJtbPjrRyYcwv6hQ2x0CQtH
	MDMaDpd4NMUEbCxnAN6oZ5bmL1W0x3TX1GWnF0DgU41IEkrBFLgfq1xIbwIMdvbhsUmQRdTKBOd
	Wumt8InsdxqxRnNRIE8OeCaL8bw04kJYNgtwBPKnPzMKZZGlaWcqK4wKGqAgtqQnDPg==
X-Received: by 2002:ac8:5f8c:0:b0:4ee:1a3:2e79 with SMTP id d75a77b69052e-4f361153914mr20293511cf.8.1766065444948;
        Thu, 18 Dec 2025 05:44:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGy2YLbHYuIVJJZd7FeQ6nssY/Zo3SH9ah3ftdjlIsWOeG3teiAIViN3hyRdsBNYer9Dp4j3Q==
X-Received: by 2002:ac8:5f8c:0:b0:4ee:1a3:2e79 with SMTP id d75a77b69052e-4f361153914mr20293201cf.8.1766065444513;
        Thu, 18 Dec 2025 05:44:04 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8022f9531asm235427966b.14.2025.12.18.05.44.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Dec 2025 05:44:04 -0800 (PST)
Message-ID: <a709a83a-326e-4555-9431-1c7654793157@oss.qualcomm.com>
Date: Thu, 18 Dec 2025 14:44:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100: Add '#cooling-cells' for CPU
 nodes
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251015065703.9422-1-mani@kernel.org>
 <itksdoavfha6xnozfrh5jcc4g75gcfyxp7ns75yz7xfb6wruy3@qwkcavvxrljp>
 <qzpeft3wmmh7idysviyevrmfs72oeoz3c4dddizfovd7ix7yoq@6vtqz5fhknij>
 <b2bff591-807b-4041-bdd2-feeb89d4f7ae@oss.qualcomm.com>
 <isjyk3ngoyzzhf3c7edntb23n3smh2uazgeyhwqnzjvdnafzmq@42x35y3emgkv>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <isjyk3ngoyzzhf3c7edntb23n3smh2uazgeyhwqnzjvdnafzmq@42x35y3emgkv>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: gPbBVpRM00sHNuvbxklGgcRrsWMneDNS
X-Authority-Analysis: v=2.4 cv=DsBbOW/+ c=1 sm=1 tr=0 ts=69440525 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=sh6TG1aJ_FEJaHHsNW4A:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE4MDExMyBTYWx0ZWRfX6ViYGNwgGk4M
 0Gu/yz1IMj2hO93G2mom8Enj8rcGRD1umQxoRp79iaqyY8imTUe+aDKaqqqqx9P0hyxOaKxuRUe
 r6bTSlRuHTrmDrQc18joA2sHMiV9LVTdhYZ5jdiveM/uydWl7zXz5DCinNCDwz3fdhDs4/YehIn
 UbccJP8YWwOoppJkmBpvp+g+x58xhBQ/ikdfrkxDhpV1PZNkg+rXI8P2X0OTrjOpj+weplkW2rO
 jwUkkldE8DvISuIddUfxUPt5i7fSS35CtnNqMk6Ngmo8xAGcTiiBaarGjhOX/cLQ0+77PvZ1c6K
 8pGLKB7eHRWkrx7wp5YIu535puXgVbOq7cAZNzsOxNwygcsnLzYXgE0NuBWBmrUTk+quszYsOTv
 fCiImFRcbgUFVZg9IsQC8UHV/uK2rw==
X-Proofpoint-ORIG-GUID: gPbBVpRM00sHNuvbxklGgcRrsWMneDNS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-18_02,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 impostorscore=0 spamscore=0 adultscore=0
 clxscore=1015 bulkscore=0 malwarescore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512180113

On 12/18/25 2:40 PM, Dmitry Baryshkov wrote:
> On Thu, Dec 18, 2025 at 01:54:30PM +0100, Konrad Dybcio wrote:
>> On 12/8/25 6:13 AM, Manivannan Sadhasivam wrote:
>>> On Sun, Oct 19, 2025 at 07:01:30PM +0300, Dmitry Baryshkov wrote:
>>>> On Wed, Oct 15, 2025 at 12:27:03PM +0530, Manivannan Sadhasivam wrote:
>>>>> From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
>>>>>
>>>>> Enable passive cooling for CPUs in the X1E80100 SoC by adding the
>>>>> '#cooling-cells' property. This will allow the OS to mitigate the CPU
>>>>> power dissipation with the help of SCMI DVFS.
>>>>
>>>> #cooling-cells isn't enough, the devices need to be listed in the
>>>> thermal maps.
>>>>
>>>
>>> Not strictly required unless the cooling device and trip points are wired in DT.
>>> But I don't want to do that yet, and just expose the cooling devices to
>>> userspace so that I can experiment with something like thermal-daemon.
>>
>> Rob, Krzysztof,
>>
>> Would it be an overly ambitious idea to make #cooling-cells required for
>> CPU nodes? I'd imagine some sort of cpuidle or cpufreq is desired on almost
>> all platforms, which could be used as a cooling/throttling measure..
> 
> Looking at my museum, i.MX devices don't have #cooling-cells before
> i.MX6.

Right, but they are still arm platforms so they have the wfi instruction,
meaning *some* sort of idle injection could happen as a cooling measure

I was wondering if there's any ancient platforms (probably from the 90s?)
that wouldn't even feature such things (and hence it wouldn't make sense
to define CPUs as cooling devices).. such old platforms would probably be
single-core, so turning off auxiliary ones as a last resort wouldn't work
either

Konrad

