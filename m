Return-Path: <devicetree+bounces-197307-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C68B08CD9
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 14:27:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 357903B2016
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 12:26:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30CB523371B;
	Thu, 17 Jul 2025 12:27:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TE25JG2V"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 900662BDC31
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 12:27:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752755222; cv=none; b=J13NeG3jYMNMRO+5JH3YmlykNtc4WpH93+cG3KrDaNa0ROcoo5i7f7DPIMToVlidZ+kuLJzLmrkkLlhz9G/5kioF3Jwzv4yxP2llgpZg4VnZM2VYXCEgHYlgta+lquSPx2KMVDFFk6/cZ/P3+qZ95oDTrZQU0nVP3Ob5q1s78I4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752755222; c=relaxed/simple;
	bh=k1AU9RHb0Kl7CzIBQsz15cpKEvQJw6GvReja3qw8EDQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SiDxPIu0cNxKfJ1nJFC5aIeHmFc172Pcj+0r42MKQQNDltoggdmTit4gkE7wVu3F62y4TGJ9kUY8MmJXp1uSm4VjtpISITNBNgRG2rkMqhUi/SGV4mKSjN+7sqZTEVfzCpu6bLMfcqxHIGb575+S6QDf1znJpbwwjnC3CkJKu54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TE25JG2V; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56HBk1VW022239
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 12:26:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IbmcROfOzVtWLlLwTUK701q3d6gz5yN28T/mfJ33MIw=; b=TE25JG2VN6qQdbFI
	+EPMUOzIJpT9ZbN4ZIkZATeVvy4GwUPV5dCscItU/HZvCgO6zt8HQRfg2IkbcAT+
	/bRkQgCwvhtEQkpUQScqWrWuB+LunPUpfuPEa9/YyBRJ5RWfX3dru0yV6Ck8UISD
	QAoil+qyBsfyp0uBtBYRio7QFWo2/NrN7YMfHYntO4dGtjiBDS77+iZmAJKB8y6e
	YY5aSsLonYn4nSw5GocPrVGB5jgSgad6gzeOGzIhTJX9yDqeuCq7Bma8SyfEsfks
	Qfhx/IiDic3dsw1TEgmCJWQ8dpS53t20P6vudUZXZ9KFyP8FslENwvzt4Q2JV/IZ
	SmDm4g==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47wqsy7gyh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 12:26:59 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6fac0b29789so3473246d6.2
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 05:26:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752755218; x=1753360018;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IbmcROfOzVtWLlLwTUK701q3d6gz5yN28T/mfJ33MIw=;
        b=fOz8K6BMnw6ug7heNSLrRC10SHylV5MSz/ene8JI0YYsIb9VOOLd5TPNIXuvRASbKX
         65FcpiuleJc4U+f1cx2Pv3XBn8XFCdUj6scBklZsj85TIEkAAonxn+lcoJkxe0oNfQyc
         b9LrWMqnQUgDM8IGdioGCnkmClLzBqT11FFgyqEtniaaPmvuLr2RZpgsIQ8h6LLZ9QVE
         d/tpZuInsf38ey6SkpSCiKN/26pthC0iV0VO5Glo2TFx+SS1ndbGPJO+HwghjxnbDqmp
         oudEpwxSPR/lY/fqptq4qzqLf4EiVwcbEmmuVp/QmD1dvRSRnovBGkj/veeVaseFHeEx
         fZMQ==
X-Forwarded-Encrypted: i=1; AJvYcCVwPnhVKh1tZGrWBSzt1afeXDF0LXfC9g0riYpmzWp4UcT7rENKFQLmNWargToHFECsM/wCUjK6ZZWb@vger.kernel.org
X-Gm-Message-State: AOJu0YzJFRuwoFnQNlgMqM7Si+LO6ZAX00MAenruAdtbBFM7rg3Y9WR5
	V1xOncDfiDkg2RgxEpr+QK2rm8popWANsbMAzIts1Fv/FggL/9wUmGYDkwA0BxTTtGIbxSDOOAD
	BcVxIfn0qF07CNnMj60NZ7rEVycexCn0GUvBeubHg1WTFmRoXd9gnxjAgMBy2Ka0c
X-Gm-Gg: ASbGncvb0pDKeq6eF76dWaJjjTBRP2198gPwn4JvT2qkhBLlBS498Iblw1G9cZ/hBiW
	4PohmxRsh1bVRXLIqBZendRJvvkZ6QSgWetLgP7cwfC7qiAnUOk1fy2WST+EvDhfN+t7vJ/NzkW
	7NRrC62h2nnFUz1w/7xVbgAliUXkEq5P6kphLnWJ6Aw4xUxT2dmV7GIyo6/PuQjKV+9AlTgKi1J
	yBcTikf6H8vA3pRkO9H7iKfr2ITo3luNygbVuyfThGiwNE3HxLaEJCWnbKQp6yJmHnEMuQ+Hb9c
	4of/wwpp51XH3YNGbr82SuNVWOpCSNrBGN2YtA5ZCg6tDrVS96WD7oGrF1MbQGQDZferoEVoc1J
	2JO/nWMDAH/44vUNJBR16
X-Received: by 2002:a05:620a:4093:b0:7e3:302a:3e9d with SMTP id af79cd13be357-7e342ad54e7mr401313485a.7.1752755217784;
        Thu, 17 Jul 2025 05:26:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEWMwBx+PyOHxTxgnaS5xzRvQae4iwC7dd8Cj0Sms6zoxQGp+IkrMAc/iJ+gLrK8J7XJbyIqA==
X-Received: by 2002:a05:620a:4093:b0:7e3:302a:3e9d with SMTP id af79cd13be357-7e342ad54e7mr401311985a.7.1752755217290;
        Thu, 17 Jul 2025 05:26:57 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e7ee8d9fsm1336084466b.46.2025.07.17.05.26.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Jul 2025 05:26:56 -0700 (PDT)
Message-ID: <d25c3f81-38c3-4559-a1e6-7b586c817d57@oss.qualcomm.com>
Date: Thu, 17 Jul 2025 14:26:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 14/15] arm64: dts: qcom: Add initial Milos dtsi
To: Luca Weiss <luca.weiss@fairphone.com>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Vinod Koul <vkoul@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Robert Marko <robimarko@gmail.com>,
        Das Srinagesh <quic_gurus@quicinc.com>,
        Thomas Gleixner
 <tglx@linutronix.de>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
        Ulf Hansson <ulf.hansson@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-crypto@vger.kernel.org, dmaengine@vger.kernel.org,
        linux-mmc@vger.kernel.org
References: <20250713-sm7635-fp6-initial-v2-0-e8f9a789505b@fairphone.com>
 <20250713-sm7635-fp6-initial-v2-14-e8f9a789505b@fairphone.com>
 <3e0299ad-766a-4876-912e-438fe2cc856d@oss.qualcomm.com>
 <DBE6TK1KDOTP.IIT72I1LUN5M@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <DBE6TK1KDOTP.IIT72I1LUN5M@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE3MDEwOSBTYWx0ZWRfX/ZTIQvyb2M9S
 KO80jKrm3BAl6+HadOwaIfV20K+QH2qxcur2Ghv7pXVO1g8Bk9cv9DGf4cdAQO5Jejn0W+OMSXM
 Yd3I+hpDL66o4PnSHp30C66Nl7D1WOwI57NCYCTPbfmfItF8kfgv/jViidA9IQbMUA0bqtRAm5t
 dEx3gbpKonuhZq4jGKESF3o+tXmSHhvppvuJExe60X+8z2m2QDnqkLH4ihjg4ALEtqjWhbVfTJp
 pHtM1UHR/HUqU52JRJ9EZioAmHlzxquiW2mq1i48nYMOHMNhZGu55hg1KCVF1u/54YqkOjxRHE1
 RXEzNrXkgScYWOjUXjz3hrMd9US+ebUGFFeNv/j4+sXrORmY7qPqy0dAQnNNifIqyml7FfxrKch
 FQ8DH+QIhMsCrzVjeNpENCrN1fGzkcqiIp6c2RTucEjxYAYLonTTL+aFQp/MPqA2mAkBDNzi
X-Proofpoint-GUID: N_UwShgW4EaSYAPs1BBWldcsUBLL4UYa
X-Proofpoint-ORIG-GUID: N_UwShgW4EaSYAPs1BBWldcsUBLL4UYa
X-Authority-Analysis: v=2.4 cv=McZsu4/f c=1 sm=1 tr=0 ts=6878ec13 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=7CQSdrXTAAAA:8 a=6H0WHjuAAAAA:8
 a=iHGpd6SFZaqAm2lpoLIA:9 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
 a=a-qgeE7W1pNrGK8U0ZQC:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-17_01,2025-07-17_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 mlxlogscore=999 impostorscore=0 mlxscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015 suspectscore=0
 spamscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507170109

On 7/17/25 10:29 AM, Luca Weiss wrote:
> On Mon Jul 14, 2025 at 1:06 PM CEST, Konrad Dybcio wrote:
>> On 7/13/25 10:05 AM, Luca Weiss wrote:
>>> Add a devicetree description for the Milos SoC, which is for example
>>> Snapdragon 7s Gen 3 (SM7635).
>>>
>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>> ---

[...]

>>
>> [...]
>>
>>> +		cpu-map {
>>> +			cluster0 {
>>> +				core0 {
>>> +					cpu = <&cpu0>;
>>> +				};
>>> +
>>> +				core1 {
>>> +					cpu = <&cpu1>;
>>> +				};
>>> +
>>> +				core2 {
>>> +					cpu = <&cpu2>;
>>> +				};
>>> +
>>> +				core3 {
>>> +					cpu = <&cpu3>;
>>> +				};
>>> +			};
>>> +
>>> +			cluster1 {
>>> +				core0 {
>>> +					cpu = <&cpu4>;
>>> +				};
>>> +
>>> +				core1 {
>>> +					cpu = <&cpu5>;
>>> +				};
>>> +
>>> +				core2 {
>>> +					cpu = <&cpu6>;
>>> +				};
>>> +			};
>>> +
>>> +			cluster2 {
>>> +				core0 {
>>> +					cpu = <&cpu7>;
>>> +				};
>>> +			};
>>> +		};
>>
>> I'm getting mixed information about the core topology.. 
>>
>> What does dmesg say wrt this line?
>>
>> CPU%u: Booted secondary processor 0x%010lx [0x%08x]\n
> 
> [    0.003570] CPU1: Booted secondary processor 0x0000000100 [0x410fd801]
> [    0.004738] CPU2: Booted secondary processor 0x0000000200 [0x410fd801]
> [    0.005783] CPU3: Booted secondary processor 0x0000000300 [0x410fd801]
> [    0.007206] CPU4: Booted secondary processor 0x0000000400 [0x410fd811]
> [    0.008206] CPU5: Booted secondary processor 0x0000000500 [0x410fd811]
> [    0.009073] CPU6: Booted secondary processor 0x0000000600 [0x410fd811]
> [    0.010406] CPU7: Booted secondary processor 0x0000000700 [0x410fd811]

Okay, so the cache topology that I can make out of docs matches your dt..

As for the CPU map, we tended to simply throw all cores that are in
the same "DSU cluster" [1] together, represented as a single CPU cluster.
This is not what other vendors do though, it seems. And downstream has
the same silver/gold/prime split as you did above.

Looking at some docs, it seems like the prime core shares the cache
bridge with the gold cluster so I'm not sure how separate it really is.

There was a time when the MIDR_EL1 register would be more helpful, but
according to [2], it would mean that each core is in its own cluster..
For reference exynos2200.dtsi seems to have the very same MPIDRs (though
with cores that are a little older). One would expect the small cores
that share the L2 to be within the same cluster [3].

All in all, I don't know what to tell you for sure..

[1] https://developer.arm.com/documentation/100453/0401/Technical-overview/Components?lang=en
[2] https://developer.arm.com/documentation/102517/0004/AArch64-registers/AArch64-Identification-registers-summary/MPIDR-EL1--Multiprocessor-Affinity-Register?lang=en
[3] https://developer.arm.com/documentation/102517/0004/The-Cortex-A520--core/Cortex-A520--core-configuration-options?lang=en

[...]

>> Does access control disallow accessing these on your prod-fused
>> device?
> 
> Hm, taking another look, this property should probably be moved to
> device dts.
> 
> Downstream has this in volcano.dtsi but volcano6i.dtsi (QCM6690?) and
> volcano6ip.dtsi (QCS6690?) have a /delete-property/ for this, because
> they have PCIe available.
> 
> I don't think this has anything to do with secure boot fuses, but I
> don't think I have tried enabling these clocks on my SB-off prototype.

I wouldn't be so sure about sb-off being necessarily a difference, but
I wouldn't object to a smoke test either ;)

[...]

>>> +			interrupts = <GIC_SPI 506 IRQ_TYPE_LEVEL_HIGH>,
>>
>> pdc 26
> 
> You mean replace <GIC_SPI 506 IRQ_TYPE_LEVEL_HIGH> with
> <&pdc 26 IRQ_TYPE_LEVEL_HIGH> (plus interrupts-extended)?

Yes

> I assume you got this from internal docs, but just to mention,
> volcano-thermal.dtsi contains GIC_SPI 506 (+ 507 for tsens1).

Right, I found it in the docs (but we most likely want the device to
wake up from sleep and try to power off if it's too hot/cold)

Konrad

