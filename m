Return-Path: <devicetree+bounces-239708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CDA9C688B1
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 10:31:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id 7DBC22A952
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 09:31:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5506531159C;
	Tue, 18 Nov 2025 09:31:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Jujc6rAS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ui+NQNNQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8783F24BBFD
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 09:31:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763458302; cv=none; b=HsfmmNaqp64rokH42UtYuHfaKcj/ppzN0IqmMQ9CTM289bSPmdWcrKFeB2sPXqRp4mLyxp2Yo+XuwojvljBx7QypoTgfC56AUOk45qSDSAcE7+VAE5xBuKFTpnItK8TkJuJ2SutUUqMP0JCYDvBrnko+fUm1DD4RRruZzv3Bzbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763458302; c=relaxed/simple;
	bh=xg6g+TbBMP5QZ25O5n98VNRNHQwYlKa+V80ixpW+TF4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sBj9en1AgIuhcAXddyDdrUF8i1YxCW2wT7Frw+By8+ZIfK5VeUu5x5J27vLeoG6qUE2SLQbavJ9cObdK4Tebaplh5C0oTdZW7vSvfWsSzy9tAbxokHOoMK+P2k416w4SKFqbtRSwuwRF7luntbVYFhzC23AB2GlL4isWysYLKBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Jujc6rAS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ui+NQNNQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI8Dq9j2193978
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 09:31:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iHouQDBsurKtZ9RdklN/mtoaAV1IQOKsjLV5itJo+Vg=; b=Jujc6rAS0CjIDNnc
	4sDCoMOwgc9I2ihYd2cA6SGgYPEhxL9a/QfPQza//+VTgcJvJ/5pcBhvlieilUfM
	gakIcNvSZ+CgyQHxkRrhTcyeYZBlhEOoChEq71BP4AdDxgpxTUH9Q9ARa6mxiLhY
	LocIZdshHyygTvjhLyYBVjuGJSoHfS0ofGTRnoRk1wWINX+/HqegBcajTbzcuFyb
	Ysnxzl3LDrPqPzTLC1QqB3wDQjMpUS6q6AwD4S7xkHZmhjASRBuKJHgtN7TOp2c6
	WTFtVFZBEbUO1sH2FNkGfj54BVTdAo6I/oJh7mo/+SV6yY9I3BGHuR3T3QZRNmED
	1gVnTA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agn3y87xc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 09:31:39 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b10c2ea0b5so217041885a.0
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 01:31:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763458299; x=1764063099; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iHouQDBsurKtZ9RdklN/mtoaAV1IQOKsjLV5itJo+Vg=;
        b=Ui+NQNNQCq5IHPA08YzlXS2LGRH+L70xUD+vhIEruqLa+iBmqJPj63lsWxtDilDjEj
         WRPKJ5d2vzKbES3D/TZMeyoM0Fyhh9KE0oa0NLYd+3Y87pXNMbHBPqFa8fFT8PeE0XsW
         cm7JxjLeSuqNcEqlyDJyxYV1t2DmqA5RIdR1mRcMcPvCmSz4sab2zDQP7D3ozUkVRlG8
         5LNbO9Qs7po99spP7dt4TNNRyjHDrHRPT+uM2VV0iCqRbeN3Fz0z94dhTy30UOAEBkRV
         i5eTmswSqCUOurEsrO7upZ/2EYlWNJzhgSL5EVoXc0G4BEkqjQ3Q3nHMdv1EUijj5bZw
         my6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763458299; x=1764063099;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iHouQDBsurKtZ9RdklN/mtoaAV1IQOKsjLV5itJo+Vg=;
        b=L/17KF5KeGgsImqr0jErnVolZj8qe2AR1kUu4AQCYd3P14tQf3TL/4+Pq+DWkmaokq
         X8KyCGJbHo0K1JuPAtLfSqJ3LwjJAJy86G0XQLqD7LQzlDImTrjBbB93fOoh0y0iC7N6
         c1UcQkEXukm2JGUcrOuHyi02/ywlVMJY/3p2obGJ5yUKSJx4X4L1/Nea3BHiW97Zs8iQ
         gxAncLpR2RnaQwrdoqPzgO/unMuJvlDvQk1rMwW4C1YYHMIb2O/VoAZD/Vqly3Ck6ufp
         IxqHq6ePA9qKZtR6pQIxHIxPP/1UEdDpC/5ZVPeAaDisR7xcXMsnZSiQ7nqXKh0BY59x
         l5fg==
X-Forwarded-Encrypted: i=1; AJvYcCXz65NsXBsdgoRDJs2Ix2+cWgrEN9SFP9uuayCCY4oiuWQ43igqFjIXBlkGGywp2cN7eJNNv5IQZVXt@vger.kernel.org
X-Gm-Message-State: AOJu0YwKeiBFTZRV1eHkeT4jNA5b2gc995gZLVMYzX/bAgVWDPF8Bxam
	Yh0ZfU6Mz/d/yvP47ra0DTTo9wvsT/bKzqmxSxk5ZOkD0MJc+OHB9g99wlu42macIjxHxPJ5kip
	4Vh95puuaqR8cviavy9kr7pr4dosMPFyYPPtRR3uGVWtNEC2JObIOKDA5HK0yPQJD
X-Gm-Gg: ASbGncsx1zSCRKBhWHJO3ufYg/rwgk73Q9T4BiuZ8R66rZcXM3NbZyFa0Sm2FeNOIU+
	xg20f2X8N3Q5LOdKHiGPi1Xak1BffyiWpTVihScMSo10e6u8Hw5CTX84SxmgkIHcUMc2q8eEGBg
	KFgllMIyedXiIbLF9Q7xzXQSyEkgaUe3cEbhAeejaKKHeu1iuuxpT0trzNhpSh9pCsKS8EQ5o+a
	GPqIvJmCNNZKCtzSJvWGo/NHBd4JAdhffYkavAJMqh7fdqvkLGqOlN1I/5ym/GD1i3O1qzNZ88q
	YSVXoS+7JZdFJpwCxKhF8k6mytYqNqpanKdcmi3QnB6tmnnMsZI9u/u9g0nq4EjMFuGUFRfaOov
	UPXDcXwbjZeKjPU8dFu9hWfREmtPMuU8Xlja2OwJKQFFJbzmLE5ctd6ihdigg0iFDEvc=
X-Received: by 2002:a05:620a:450a:b0:86b:12e2:28d1 with SMTP id af79cd13be357-8b305fac515mr156397085a.7.1763458298662;
        Tue, 18 Nov 2025 01:31:38 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH8nb3LT3weyuRb37e8MaLCm5BKsmAFnUzg93HHxx6UWJRPrTTzKCAEqVFZQawQy9xkQSkOkw==
X-Received: by 2002:a05:620a:450a:b0:86b:12e2:28d1 with SMTP id af79cd13be357-8b305fac515mr156394285a.7.1763458298043;
        Tue, 18 Nov 2025 01:31:38 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fed80f0sm1308651066b.66.2025.11.18.01.31.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 01:31:35 -0800 (PST)
Message-ID: <92165785-c03f-4507-96d0-10442b67691f@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 10:31:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: Add support for Pixel 3 and
 Pixel 3 XL
To: David Heidelberg <david@ixit.cz>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: phodina@protonmail.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        phone-devel@vger.kernel.org, Amit Pundir <amit.pundir@linaro.org>,
        Casey Connolly <casey@connolly.tech>,
        Joel Selvaraj <foss@joelselvaraj.com>,
        Sumit Semwal <sumit.semwal@linaro.org>, Vinod Koul <vkoul@kernel.org>
References: <20251030-pixel-3-v2-0-8caddbe072c9@ixit.cz>
 <20251030-pixel-3-v2-2-8caddbe072c9@ixit.cz>
 <8d32460d-894b-472a-a262-4c6a60fbcef1@oss.qualcomm.com>
 <7f686f1b-7cc7-428d-941d-82883decee49@ixit.cz>
 <259477b9-0e14-4785-91d4-67c5a94331eb@oss.qualcomm.com>
 <f15c4ed1-5997-48a1-a0a1-1b0113645517@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <f15c4ed1-5997-48a1-a0a1-1b0113645517@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDA3NSBTYWx0ZWRfX0jElvBrMMRaD
 82rN79W3GegVYvNpHeS6/dJkKziib79jQwNqJvtA28Fmxi8VvzLxTMPmWoaFHMJisLsQxiLdu91
 XJyLdan/aq6jV2B+Vi38y4YmjgRygMaGHS1R8PgJtc/FZNyy29f8HNGOXYDVzXU89nW6TbuLR75
 QyN+5d/xzuSi+Mk0IHRKc0G8v2nPV9GOamrjx0g8WxnLOYGcwBlnw0BAjwSZj5zXRHyeoYRr0Vq
 peCagl5Zc2+Kz2nIQyH6Uhy4eg9o5hVMFcxYtrDwDgeiR0EUSfmpL4PlEl7O4EZy0jf2xd3MM+E
 uYo5/pErKw2705RjtCKj4hUdl4GTTbKC3B4hRkyv3cjV/5xNQCjTp25FbxIQWcJpb/WkgE0yv2u
 he6V3d7//gMTtjWVJmuI3QvdwhwqGQ==
X-Proofpoint-GUID: oMBhVITCvIrNfDQyjzsYnp0ZcPvB0PDB
X-Proofpoint-ORIG-GUID: oMBhVITCvIrNfDQyjzsYnp0ZcPvB0PDB
X-Authority-Analysis: v=2.4 cv=FtIIPmrq c=1 sm=1 tr=0 ts=691c3cfb cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gDn4PdyuB1kJIsieQ0wA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1015 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 phishscore=0 adultscore=0 bulkscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511180075

On 11/17/25 7:35 PM, David Heidelberg wrote:
> On 30/10/2025 13:10, Konrad Dybcio wrote:
>> On 10/30/25 1:03 PM, David Heidelberg wrote:
>>> On 30/10/2025 12:32, Konrad Dybcio wrote:
>>>> On 10/30/25 8:24 AM, David Heidelberg via B4 Relay wrote:
>>>>> From: David Heidelberg <david@ixit.cz>
>>
>> [...]
>>
>>>>> +    battery: battery {
>>>>> +        compatible = "simple-battery";
>>>>> +
>>>>> +        status = "disabled";
>>>>
>>>> You added support for both non-proto boards based on this platform,
>>>> there is no usecase for you to disable the battery, remove this line
>>>
>>> Should I keep the status = "okay" in the board files or drop it too?
>>
>> Drop it, nodes are enabled unless they're explicitly disabled
>>
>> [...]
>>
>>>>> +&tlmm {
>>>>> +    gpio-reserved-ranges = <0 4>, <81 4>;
>>>>
>>>> Could you add a comment (like in x1-crd.dtsi) mentioning what these
>>>> pins correspond to? Usually it's a fingerprint scanner or things like
>>>> that
>>>
>>> Sure, I looked into it, but I haven't found (so far) information about the assigned blocks. In next revision it'll be addressed :)>
>>
>> Thanks, you can usually correlate them to a QUP instance based on the pinctrl
> 
> For now I verified that 0 - 4 is SPI (Intel MNH Pixel Visual Core), but 81 - 84 is at best educated guess SPI (Fingerprint Cards FPC1075).

Fingerprint readers aren't usually wireless, so that's a good bet

Konrad

