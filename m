Return-Path: <devicetree+bounces-163379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FAA4A7CAEF
	for <lists+devicetree@lfdr.de>; Sat,  5 Apr 2025 19:27:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 129491892D46
	for <lists+devicetree@lfdr.de>; Sat,  5 Apr 2025 17:28:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83D63199931;
	Sat,  5 Apr 2025 17:27:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="X1QBDPTC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF960156F20
	for <devicetree@vger.kernel.org>; Sat,  5 Apr 2025 17:27:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743874074; cv=none; b=D3cdpb5fLyUquEZp8FNFkLXKqvie4nYvx2tP7sJYAjb02bTuWtQDLtCDSF29wAW2FIveiEaR57ZhgJDd/hBubuAr6JygofVQL6CtcGD10vowjWCFlnn245bmYIV4ynehPIg8BZmv9rDMVoIAYd+5FbAFsPOZAZWmA6/AolWigm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743874074; c=relaxed/simple;
	bh=WzPNIG8S7EkLyB4wTk65d9ihG81GOrOkBB58wKZnCyo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qxIE1KhV/FatSnxniTF3tIcUCChYNFcdOXunNH61GPB46lLJ3imwz2KsaEnBqUdjJEtRWjYF2w3kb+MBl1gtfE6kKkXtNOEz1tZEdmRv+VJao8smHr5lIqVzLBzlnnYUj5fIygX3e8KdIVuMEN8sQIG891E/z0hy0cbO37DnOgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=X1QBDPTC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 535BArwY029411
	for <devicetree@vger.kernel.org>; Sat, 5 Apr 2025 17:27:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	C5UrBqYYL10LEBTum6m4Xhl+Wzvt7NLtyyRegDCKdfw=; b=X1QBDPTCvrcB4Uzf
	nvoFTh9+7tiHbmPvw0HjUvUEMEljd+Oz/kM4lfoP2eJZe4IhLEBU872mub6V7AHK
	/Ewp64+Mx4MjcB1eUYnq4K3L9D/Aj+i6QKFek5jcTjmSns09bQ90uzE2Ue0Vy5f1
	I+JPnjomlG+V6ZdphbPjNnVPMegL+QFVMszxT64z+MsYMz3VE//rrfHM2hfguR9v
	WJjRwGkyBGi71VMTt2LwL3mEG11nSiMjjgCDZR3sbOhA+BZqx+kxXZSZfSaVXLVo
	CpeTojgQRMJWNpyuXMlUP7E4jyghOVen222GQrqXnaxBs24//c/I7HEQmqQilCYc
	8mrl/g==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twbe0t8w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 05 Apr 2025 17:27:51 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c543ab40d3so457705785a.2
        for <devicetree@vger.kernel.org>; Sat, 05 Apr 2025 10:27:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743874070; x=1744478870;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C5UrBqYYL10LEBTum6m4Xhl+Wzvt7NLtyyRegDCKdfw=;
        b=Gux1M1nRuaibqqo/280eT4jKN42bPcETf8S6SffuYoRIpQk8WlzeTD0hUIIvy/sDpu
         L+0ypvJTD6vnCg5yjHd9nsJvSCsmf69Su0gF0IHGNJALAQkFX4AA83NJHGLnYbDd6sNZ
         Ykxn4tHmvkndyis6/SP3D53v5bBmSofzUgbxYSNHQ39RuEU4dXeOiuSqDusGXj18nyoE
         6n3olH9MvsBDPuKFIjQWXGuu7aIHz5BFI3iwqlnwB8eewMvAZ8TLKPp+HWBpdkbBvYYp
         tWUkTI9MNcbsZXM48jqr0a3Je1tT5Uya572tFK3zYSwpfu3rHCUr4kKz/2Ij0Zv162tE
         elWA==
X-Forwarded-Encrypted: i=1; AJvYcCXtGm6E7DPe3J8gi6LNhe+O/2eSVG3RSHzyn18DO4JTY6adkHGySTP8FkrS5ZzfBxk17cyWulx5AstY@vger.kernel.org
X-Gm-Message-State: AOJu0YwW2ow7D/SxHLcL0hwIFwNWmUv48UjTEolyxFLLYRyOzwIEu/8D
	+8nV2MGcPNIlzWJnDzcmEKR7cEk98wxd0lFx9pIEAQfe/iY1AABsnPAmxjjqW1OR7SSirJd5D2P
	FOybe3rDQyNBqFTR4Ctept0p6QZHXKuv9c8ewcVrYUCrT1aGuaRo4jvsCkzx8
X-Gm-Gg: ASbGncv3zVMV3ipB2tvGeRbzj0zoJsoUEmX8HHJ5cbWyXPQJ3HoYX+KKd6bTb+2DpLJ
	InEgURoK8SV4eDwy9WlP+9WawvcoJbIzA2Nq+kHCslyUKfjAZnJGBS4nMooRyqUhwhiJB3wCIQt
	xgnPzvsIsolpDX3z/KA5bR2ZW7N/7v25Y40gwvi39IG4ObGF98Q08ZJRv7rjIy5EsLPovcc9bLW
	f/e1T7hN1CN+uPZwWM82ebXDndGy+K/AJVpY8nf45tOTAZLcToXIVEJmy5ZmWKhXPCPvCoUnPdb
	9THEdGeN0h/sEERLTdGwiJoO7Jm6Sxv8W3CrRyU/YerBCnas5YaOL8zGtYDgMWRxCFm0
X-Received: by 2002:a05:620a:440f:b0:7c5:4711:dc56 with SMTP id af79cd13be357-7c77de01d44mr567519785a.48.1743874070511;
        Sat, 05 Apr 2025 10:27:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHafMbZ8BW3LW+4OJQutAKH0ZMvi8+bi8/F+SD5nICOagJ0fwxXZbQOXQE2zRrHoVp4J93XJA==
X-Received: by 2002:a05:620a:440f:b0:7c5:4711:dc56 with SMTP id af79cd13be357-7c77de01d44mr567515885a.48.1743874070163;
        Sat, 05 Apr 2025 10:27:50 -0700 (PDT)
Received: from [10.160.109.143] (87-95-81-170.bb.dnainternet.fi. [87.95.81.170])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30f0313f2desm9387941fa.28.2025.04.05.10.27.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Apr 2025 10:27:49 -0700 (PDT)
Message-ID: <6e135e55-b5e4-4ead-85ba-29c2cd6aa7a2@oss.qualcomm.com>
Date: Sat, 5 Apr 2025 20:27:47 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 5/6] ASoC: codecs: wcd938x: add mux control support for
 hp audio mux
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Johan Hovold <johan@kernel.org>
Cc: peda@axentia.se, broonie@kernel.org, andersson@kernel.org,
        krzk+dt@kernel.org, ivprusov@salutedevices.com,
        luca.ceresoli@bootlin.com, zhoubinbin@loongson.cn,
        paulha@opensource.cirrus.com, lgirdwood@gmail.com, robh@kernel.org,
        conor+dt@kernel.org, konradybcio@kernel.org, perex@perex.cz,
        tiwai@suse.com, linux-sound@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, johan+linaro@kernel.org,
        Christopher Obbard <christopher.obbard@linaro.org>
References: <20250327100633.11530-1-srinivas.kandagatla@linaro.org>
 <20250327100633.11530-6-srinivas.kandagatla@linaro.org>
 <Z-z_ZAyVBK5ui50k@hovoldconsulting.com>
 <8613cf45-d202-4577-868c-8caf771c7bc4@linaro.org>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <8613cf45-d202-4577-868c-8caf771c7bc4@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 4vhxNEFO_1vGzNCHH6voQ23Zwt8_F0e6
X-Authority-Analysis: v=2.4 cv=T7OMT+KQ c=1 sm=1 tr=0 ts=67f16817 cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=YfwyiRVFF7VR29Me/gQaHA==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=D19gQVrFAAAA:8 a=gjPlNVnwJrpBRyZBAVEA:9 a=lqcHg5cX4UMA:10
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=ImwWUX5h3JJ3gRE9moBe:22 a=z2U-W3hJrleVIN9YIjzO:22 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22 a=W4TVW4IDbPiebHqcZpNg:22
X-Proofpoint-ORIG-GUID: 4vhxNEFO_1vGzNCHH6voQ23Zwt8_F0e6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-05_07,2025-04-03_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 mlxlogscore=893 lowpriorityscore=0 adultscore=0 phishscore=0 bulkscore=0
 mlxscore=0 malwarescore=0 suspectscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504050112

On 03/04/2025 15:19, Srinivas Kandagatla wrote:
> 
> 
> On 02/04/2025 10:12, Johan Hovold wrote:
>> On Thu, Mar 27, 2025 at 10:06:32AM +0000, Srinivas Kandagatla wrote:
>>> From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>>>
>>> On some platforms to minimise pop and click during switching between
>>> CTIA and OMTP headset an additional HiFi mux is used. Most common
>>> case is that this switch is switched on by default, but on some
>>> platforms this needs a regulator enable.
>>>
>>> move to using mux control to enable both regulator and handle gpios,
>>> deprecate the usage of gpio.
>>>
>>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>>> Tested-by: Christopher Obbard <christopher.obbard@linaro.org>
>>
>>> @@ -3261,11 +3276,26 @@ static int wcd938x_populate_dt_data(struct 
>>> wcd938x_priv *wcd938x, struct device
>>>           return dev_err_probe(dev, wcd938x->reset_gpio,
>>>                        "Failed to get reset gpio\n");
>>> -    wcd938x->us_euro_gpio = devm_gpiod_get_optional(dev, "us-euro",
>>> -                        GPIOD_OUT_LOW);
>>> -    if (IS_ERR(wcd938x->us_euro_gpio))
>>> -        return dev_err_probe(dev, PTR_ERR(wcd938x->us_euro_gpio),
>>> -                     "us-euro swap Control GPIO not found\n");
>>> +    wcd938x->us_euro_mux = devm_mux_control_get(dev, NULL);
>>
> Thanks Johan,
>> Running with this patch on the CRD I noticed that this now prints an
>> error as there is no optional mux (or gpio) defined:
>>
>>     wcd938x_codec audio-codec: /audio-codec: failed to get mux-control 
>> (0)
> 
> This is not from codec driver, mux control is throwing up this.
> 
>>
>> You need to suppress that error in mux_get() to allow for optional muxes
>> to be looked up like this.
> I have a plan for this,
> 
> I proposed some changes to mux api for exclusive apis at https:// 
> lkml.org/lkml/2025/3/26/955
> 
> This should also allow us to easily add an optional api, which I plan to 
> do once i get some feedback on this patch.

I'd rather suggest an API to switch the state without deselecting the 
the mux.

> 
> --srini
> 
>>

-- 
With best wishes
Dmitry

