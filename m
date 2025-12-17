Return-Path: <devicetree+bounces-247476-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 071C0CC8155
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 15:09:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6B17A3100EA8
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 14:03:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7586D37A3FF;
	Wed, 17 Dec 2025 13:52:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IilCwr4h";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fFUF5Tya"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAC68378322
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 13:52:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765979557; cv=none; b=U2Dj977ja8u7UjNKGQ/AsZKD7+lBoFXDxT+RZj4mx9pngn2ri2jzYkC/Nzw4/NgUeEUDitwA0G2W/r54pjsE79lGyAgAKxUkIRGMt8X4Mrcu/SF6txBDWGMYaBv1QLXrBFzR32ANO68sToktin/nUdEw2Kpz0jTxOcDajjytCXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765979557; c=relaxed/simple;
	bh=TK3INEaxV9cHyuLCeED9fh5UnORuAuWrjNwFjMEgIA4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ndCR2SaiVh8Xp4FUWPfl/vsgAu0pDP9yCFLwJ+62vba0Fy4szZ/m9WdMIF1GM5PlzUwrhbsMfhlz3qho6XGIYKbhGVZwcFqkN+B7acw98JOskqLb+kqRc3gNJ3h7fbLFjsuSPBLWJ/2G3kCiP70L3Bc47wd329tR8xaDOtUKwxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IilCwr4h; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fFUF5Tya; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHCL2Ih3330331
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 13:52:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MUcFSeForpgs1zaOWkq8M3g4jUQqfiWW8mZI5c70ols=; b=IilCwr4hKN14NE4I
	1siREeR44j54HJR1QBX/8we3n4wgCQr6ZmKT8NMxp6BHsqt9RbpktPpTJWfGLqKy
	t7OWuDEpvSdMe5lXZihFb3rXDZEJEBvtsYxDnAE/eidS/xvHd8Qc6xV5QlLGy1+k
	Giv6yLboDdA79j7/bNSnbhwMUmenZcWDqtd9LWT/1331gfscwuJ/UdtfagI8Sf9J
	iR6+JnCmhynarrOeV9/ndcjoU4xmRdj2IQWilw6j4FteT0JsnWEg4dUT/IGO5wD+
	0+sv8rX3t0uM+wpkbbsjJRZSypUMwCFDJcz3zRhlqcnVLtTPM3bYmCv1KPO1FhbX
	9YACYA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3nkkhn2n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 13:52:30 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ee409f1880so11607761cf.1
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 05:52:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765979550; x=1766584350; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MUcFSeForpgs1zaOWkq8M3g4jUQqfiWW8mZI5c70ols=;
        b=fFUF5TyaaYCMLqmYW+r5FXuCBpF9PFGhYrkFoNuorynmHExxaH+Tp9dyyiKqw37Mi+
         SZ1lTwKAd33VVFVlEpI/s7xwvqLntkwmlVynG44cMzuHLZpleTJXO84oxiyVXZSzsvhY
         4hkf7yjVgs+4SfhXjh0SIuwdESK7FHiWGKuURKMkhvTyqrTBqNGBj40Um8oPO8WTeRZG
         ARdQzpMSLYmCwocdlR4clWtoZxifiKqqFuaUWtirV0s26EfTIKXDvYyEtIuoZOHSkbRp
         mdXXGoFwnRKRsLbXuMzUNHaLDXl54BYvS6tPENFS0UuU6KqTp7+DayPsB7bJIm+Gg0Sj
         i+KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765979550; x=1766584350;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MUcFSeForpgs1zaOWkq8M3g4jUQqfiWW8mZI5c70ols=;
        b=RQh5ClMERV0Zum3noCvYhVZ8smkTSmg8zkT5XZbfWpj+zGK4VvCa/wTbRp+TlAqV4l
         HlTU5BJewU/XqEF9kffyKas6s/rVS/cMGoK8CqqrQpZ4cvcTzC7LloPo28tiT8T6joeS
         LiJx2tfkhqwshzFzDN1jhwq94QSafanleoxtTZtGzeWEHi8Le6+MVadCsKvmWvRaFOh4
         glJmX2K+HrG8ALUh//e/7aT7nb6qzKL2YaEbiiPRz2tJtEhoAhkfADDZo6AUEpuO7LGj
         lZoSbcgYBLypLbKn/C5vOmlCBFdETWo2zhr0eJHe+CrKdtY7sOL3ln2ArMW3THy/m/in
         t9jg==
X-Forwarded-Encrypted: i=1; AJvYcCUxFb0dFmwsdxvJrFrhqdiuCpGyTGXB/qzNClX51cmelkHWuhUVozGXiZM3gvnl6669aVwWSM82dYr3@vger.kernel.org
X-Gm-Message-State: AOJu0YyPqSYleT8TGgS0mgBEtSmCbIKrpjj2+TJMc7b8o4twzTL4OhvU
	kix+8a4Gguz0maBNFVqxUqdiJ9QGADRBtmkIqvIjKvfY8c01zu59aD0RYqR5p6raFEOXX2IbesV
	/JfAk7XzATqqqjo593KZHi9bcvnmKgJnABURoY8AlN6VaUP9yEeQ4rYBbzAI5yn+/
X-Gm-Gg: AY/fxX53idSji81J3VsGr90duK+/fNkMMWBrnNuYwD9uB5JoIB7CxZfkJWHay3EhWDp
	KVtRvhldDufs3HyGnP7foPN0GPG1ynpwL2zXFT5LXz+7diiBo86xrFdANz7bA3jQqshPq8QzZag
	MY2qkIKWokQHoixUmBWF1sdyGlSrUwcYM6p851LnAsdwZy4LtpbUkqSCZcy69dXikjf+YQK2Obu
	KoXOhO/DmwIKC2VYBNeaUYWWUN9DtenzDGZjBjPY86mOFTDbph1VIH8NWpATveohN9rALVNFYJp
	mB6Rsp7ytZ3rrj8PRDIg06QLlqZzT/5aZrtNnLcQ/xvMK2Y568s6SJeeIR1egAcCaS6G9AU7GQ9
	UzHakHBImT0OoFn5EjL/fmAZ7nifL0sHRxodJ/qaA59u5Hl9t1V37BGn3d8BFp8GiWw==
X-Received: by 2002:a05:622a:102:b0:4f1:b580:fba8 with SMTP id d75a77b69052e-4f1d04e6df9mr194858131cf.3.1765979549981;
        Wed, 17 Dec 2025 05:52:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHHn8FBGFvWlziwKU5p3n+hs/jstKbKvea0UICNhQkpwL2yQQ7Zau1SiOTq9MXzcJTbdWmhfw==
X-Received: by 2002:a05:622a:102:b0:4f1:b580:fba8 with SMTP id d75a77b69052e-4f1d04e6df9mr194857621cf.3.1765979549545;
        Wed, 17 Dec 2025 05:52:29 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7fc04f6015sm1054089766b.50.2025.12.17.05.52.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Dec 2025 05:52:28 -0800 (PST)
Message-ID: <5dc3d3e0-a338-4f2f-8987-5705fc1fde51@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 14:52:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: lemans: add mdss1 display device
 nodes
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Mani Chandana Ballary Kuntumalla <quic_mkuntuma@quicinc.com>,
        marijn.suijten@somainline.org, swboyd@chromium.org, mripard@kernel.org,
        abel.vesa@linaro.org, andersson@kernel.org, konradybcio@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        robin.clark@oss.qualcomm.com, jessica.zhang@oss.qualcomm.com,
        abhinav.kumar@linux.dev, sean@poorly.run, airlied@gmail.com,
        simona@ffwll.ch, alex.vinarskis@gmail.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
        quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com,
        quic_riteshk@quicinc.com, quic_amitsi@quicinc.com,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
References: <20251125105622.1755651-1-quic_mkuntuma@quicinc.com>
 <20251125105622.1755651-3-quic_mkuntuma@quicinc.com>
 <32f013e7-ce2a-484b-8575-e98f2d23f59b@oss.qualcomm.com>
 <faau2h5z53frwfply57oh75zr5gcz4gf3za4vflbyht3ok4zgz@2ylcwcqcl4rt>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <faau2h5z53frwfply57oh75zr5gcz4gf3za4vflbyht3ok4zgz@2ylcwcqcl4rt>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: ZMYQxu9ijAiC3Npk8LPv0WYdvL26nzkP
X-Proofpoint-ORIG-GUID: ZMYQxu9ijAiC3Npk8LPv0WYdvL26nzkP
X-Authority-Analysis: v=2.4 cv=f/RFxeyM c=1 sm=1 tr=0 ts=6942b59e cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=CW_yPJa_05T0x9ChYMQA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDEwOCBTYWx0ZWRfX2Z5mOW63YtpC
 V9aQlg3+/iOWToxx/yIdsFk2cqsna2cRJnDHj+qcU7XHbrbEHL/Hxr6tY+R7hjEYxu7Kg8LTAlh
 kN7Lb/P9rqh5NecUr36JwCkCuU8aYdga5nY+V98NkbSOuc7uQfd84JWKTcwfpXs9QVFMQKS9oCv
 FJkT8v4pP+XtIXNs27WAJBmn/lblySw7uy2nqp+0V2WvHjNO5g5f5FIAAPtRaIooE7YtuzlrgyD
 q6TFESLsgFIGD1m5Alc4y/jUtMIgAGnq6eodwO4qOPP5B4noAm3K/zTtliEPKlGU2N6b5sgKQzI
 5kxv42gZ0aT0z39tWixXX7QtGkQ2HWZPzNSDGajoh5Z7xJbtztwXliZbzDhwElwWDypRNZ//gNh
 NeyQQ9UcwQ6CRhGPAHQj7GFBqmCsow==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 suspectscore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 malwarescore=0 adultscore=0 bulkscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170108

On 12/10/25 9:21 AM, Dmitry Baryshkov wrote:
> On Mon, Dec 01, 2025 at 02:35:44PM +0100, Konrad Dybcio wrote:
>> On 11/25/25 11:56 AM, Mani Chandana Ballary Kuntumalla wrote:
>>> Add devicetree changes to enable second Mobile Display Subsystem (mdss1),
>>> Display Processing Unit(DPU), Display Port(DP) controllers and eDP PHYs
>>> on the Qualcomm Lemans platform.
>>>
>>> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
>>> Signed-off-by: Mani Chandana Ballary Kuntumalla <quic_mkuntuma@quicinc.com>
>>> ---
>>
>> [...]
>>
>>> +			mdss1_dp1: displayport-controller@2215c000 {
>>> +				compatible = "qcom,sa8775p-dp";
>>> +
>>> +				reg = <0x0 0x2215c000 0x0 0x104>,
>>> +				      <0x0 0x2215c200 0x0 0x0c0>,
>>> +				      <0x0 0x2215d000 0x0 0x770>,
>>> +				      <0x0 0x2215e000 0x0 0x09c>,
>>> +				      <0x0 0x2215f000 0x0 0x09c>,
>>> +				      <0x0 0x22160000 0x0 0x09c>,
>>> +				      <0x0 0x22161000 0x0 0x09c>,
>>> +				      <0x0 0x22162000 0x0 0x23c>,
>>> +				      <0x0 0x22163000 0x0 0x23c>;
>>
>> The last two regions still happen not to exist
> 
> According to the memory map I observe, they do exist.

Hm, you're right, I don't know why I couldn't find them in the past

Konrad

