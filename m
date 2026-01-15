Return-Path: <devicetree+bounces-255531-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA07D23EA9
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 11:23:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2AF783047FCA
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 10:23:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6884C36215E;
	Thu, 15 Jan 2026 10:23:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UHFAZj1R";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="izs4GciF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE62F35FF44
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 10:23:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768472584; cv=none; b=MbuJpwzU1WoUrrnP4eydn58kAH8xkFhv68u5YaricbO8e3gdC9DI+wbY1ORvPKdEiL83VqFtAuVv0658v6CtzS6YFB+f0mZGMUAaDlK99ujy3/2YrWNtjPLtFsVgRlsH9CYS3ZEDx1fAgWWXeEGWpxUlcUptYj3eXdXMBOzOibE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768472584; c=relaxed/simple;
	bh=8VMorEnHu8Q7XDb8mxg5LfftL6ocg7WNkKa1N7oM66Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WHREAKNgHGUZupk8uDWsBv8VWTcHrkPjZMfgHQEB9LldEhDXLswvPFzfy6w7VPcvTgUHbCrU3DtbEiDEUM+kUD6EOBsxJL1MdRlXkqJkJHo0vR4Vf9Dp14zylynWDwDoKdFWO/E7TJkQkMAClTr0Lc21bdDVzvMsRYhTTGl525c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UHFAZj1R; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=izs4GciF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60F9Tv9X1913812
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 10:23:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aMDE0RiqWcLxZam712Njcckq5qTRAi31bZeS1GwmNuY=; b=UHFAZj1RxiMFPh71
	GGDAkcDFMy2J7blTmiwVbo+zUV1TyOlw4bLMMkDQr+PX8CRS3i9UngxtmlizHvJ0
	4bt7BmrYvFfWRzEKGIxdCOgiDiAITThundt5cZSBQSh3eCo1N1YJZNpE5Ol5DOh4
	nu8e5eeBgLH3R13l45vi2kbUeXBVQh/e/yYc3+gwvYB20o+0d7jkaDHGYMv/gn4b
	G9alWyGFG0WVjP3JEcmru4jpPjbo7Rhc/QfsKXBhsvjEAkYPGJpap/mOGzgsKV2Z
	JM9WzmDYKf+8hHgOLq5/4O3HqtGnFCYsMu8a0nQsTs8x0w60L7z2xpHZg6Af55CH
	c8Fnzw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bpwnkg4rf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 10:23:00 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-5014549e7d6so2530931cf.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 02:23:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768472580; x=1769077380; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aMDE0RiqWcLxZam712Njcckq5qTRAi31bZeS1GwmNuY=;
        b=izs4GciFg0ZRPlQAgUSACuR1kDbghd1hIHFl8hwln/etjin6xn3kvP+9ZcoHj2aGxZ
         Dd6UgZSN4n4y4CODIhMzmFRACdxNB4OorSB4R99yNhK9TTRvqc3XFETEMWSAxr4Gp0LD
         65bfaAL6dXaaBHvcT0hzZj6NaAIAKhBlww3EadHP+w2LyF88n/k35mCGFAhFpUzixgES
         JMiY4DrpO48CN8T/oDf286V3T6WzRMYJu2ZC10Xf655P8h5PFBHto/hJCcmrAx1UWlQN
         DCgtl4Xepf5E9qc61zkiiTI7Tm0l6ys9h2G6RqjtyeJoF9n0eZcV87zTcjWCY1Qaca58
         SSBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768472580; x=1769077380;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aMDE0RiqWcLxZam712Njcckq5qTRAi31bZeS1GwmNuY=;
        b=AlAX6DG1Ks/ZWz0mweSaChfCOd8EDrKEpHUUyuV3TW39g/G3C0RG4ppfNChyZgvJPy
         YXm6In7/U9d2unIlaSaDSi/HiTsNfWa9NE+gR7Oh4TeIaWX7eSrOScSmjwl6Lun5BNgE
         sl5OyECgbWITWk4/wxN8P/SEX8erR0ZO1lHg+idEgb+R6RQORXy0oxWos+Ep6zm96rps
         9qSNxqhUM3SjuhffoMzQutLqiqzAiixFtabFyj/LeHcLoTymiRzGHUbfWVybyonFQxJI
         vfAd5rAGMmmRJQv3mn8ZarhjwhqufhVAvrLjFZ+fRZ6Q9FW8padh7kJxpfSBYh6UWCYh
         /gqw==
X-Forwarded-Encrypted: i=1; AJvYcCVfbchkBrhLrqbm2pveKcbigAkwaVypQKXIZvgSDPnpG/pn2YDIlckxaDoYbanofeVL8iW1UUmIwljq@vger.kernel.org
X-Gm-Message-State: AOJu0YwUFt9RPCmyRzC8gKcugETE6PR+S1WSPBVFRWWLn5EZmZoaZayK
	gi/Ldvl0va4h+zDK4iWsMMSfhqvjl0TyNQCRMI9Ks8OkYa1wHk3zCzRh6/bxlhwJOBwiI16IGA1
	efz2uz61gmGOne0t5VWzGZGv8dBU/ndi6pklzUeeajLXnD/fWdpE+z2cSMYEQLzYz
X-Gm-Gg: AY/fxX6IP4UANooK5Fc05Pzh2p7XokrBM9ryF0DYvCKmzKi8ImOaeDcp1uoy/9H7HQ4
	kZZ+0gOgroH8r8Jjq6zmKfur3wLTH49tQIgBWaObk57oiJGfC3fGyOPsoHsMrOlHX617Dai08fK
	Iz+LSFsma0xHcVpVWhT3IDAODhDB4F3exKC/V6L1DrbTo2vmkG4294HXuIA23l4yNSJEwiRDzGH
	smluuGxv94IWX4g6l9jYwWVi/Wjzy7CeSNlmQtY/YDSGLL2/Wk41WHjn6/3K4KDgP787KfXyLgS
	s9ZGZ/WTdwIhQsqB8fyKZ+oWgP0jCErEeGjZtbCkQ9RC39uqvks18F6ufSTpRa6rUyxEy56wbjl
	CgjYyKsZdys5Ly0mK4BgrdmLj+2OceZRmBWx/pu31CmDV7Ey5fdxDSCUGPCttQ0x+G5c=
X-Received: by 2002:ac8:4503:0:b0:501:5260:51e9 with SMTP id d75a77b69052e-501526054b9mr24692991cf.7.1768472580151;
        Thu, 15 Jan 2026 02:23:00 -0800 (PST)
X-Received: by 2002:ac8:4503:0:b0:501:5260:51e9 with SMTP id d75a77b69052e-501526054b9mr24692891cf.7.1768472579764;
        Thu, 15 Jan 2026 02:22:59 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b844e46ee63sm2295795266b.15.2026.01.15.02.22.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 02:22:59 -0800 (PST)
Message-ID: <3cbdae12-af7f-47ee-89dd-6c00660fa6da@oss.qualcomm.com>
Date: Thu, 15 Jan 2026 11:22:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 03/10] arm64: dts: qcom: kaanapali: Add TSENS and
 thermal zones
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
References: <20260114-knp-dts-misc-v3-0-a6cc9e45de93@oss.qualcomm.com>
 <20260114-knp-dts-misc-v3-3-a6cc9e45de93@oss.qualcomm.com>
 <4c44mmkpsnj4cn2eh2xzraiw73xmhtx4qm3xiyhecm4vyou7os@skyj646r63d2>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <4c44mmkpsnj4cn2eh2xzraiw73xmhtx4qm3xiyhecm4vyou7os@skyj646r63d2>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDA3NCBTYWx0ZWRfXxZ1rV7OvL0Wj
 17R7coBMb7KBcGUrubz3ErTwVRQvMN9I6PQVKzcjymLCoDzGKLtXc9F3bar+O32dJu5PxsBT6Fw
 lYLoLBTnj2Cuds5eXXwKH3y5Y6oz64B/tUn1TrcguK23Ja6oGCR023Ih3ORlEpWRtwIJvyNUgkd
 7u3iDYc1uaMaJVKEaxGVsQ0t7vbxZEPShlL/zWjo4r/D+0fF8FsEi0LqxUYOBYCHGwXLpoWlOiQ
 GlgshC7mr1SiFhshLiv7YEGApXJe3R+351tQ8T3fZA5FYgUk9Q/JWLBHtvVMUPA2ScqSJtAXjY6
 YwUKGZhKHF8MVTnl5md4TrqrYfx4jvwQVFN9tu+Vxsehs4kterqMG8dvd6k9Io4wltsxv/jvWa7
 cCHHKSNadFTclOwN6FEnjc+nXS4XYih9UO5H3vVv2B03Ybc7rJnSorOc2dEmIk6B6uf87MvTO0+
 MG/lgeLwAaLEkYEoGKw==
X-Proofpoint-GUID: CkUD0XyMBQjOQg97H6It7a0CQMnGCQOT
X-Authority-Analysis: v=2.4 cv=UYVciaSN c=1 sm=1 tr=0 ts=6968c004 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=lxnUxbm5oaaQhmREaRYA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: CkUD0XyMBQjOQg97H6It7a0CQMnGCQOT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_03,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 spamscore=0 bulkscore=0 adultscore=0
 malwarescore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601150074

On 1/15/26 8:09 AM, Dmitry Baryshkov wrote:
> On Wed, Jan 14, 2026 at 10:49:05PM -0800, Jingyi Wang wrote:
>> From: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
>>
>> The Kaanapali includes seven TSENS instances, with a total of 55 thermal
>> sensors distributed across various locations on the SoC.
>>
>> The TSENS max/reset threshold is configured to 130°C in the hardware.
>> Enable all TSENS instances, and define the thermal zones with a critical
>> trip at 125°C
>>
>> Signed-off-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/kaanapali.dtsi | 745 ++++++++++++++++++++++++++++++++
>>  1 file changed, 745 insertions(+)
>>
>> @@ -4795,6 +4879,667 @@ pdp_tx: scp-sram-section@100 {
>>  		};
>>  	};
>>  
>> +	thermal-zones {
>> +		cpullc-0-0-thermal {
>> +			thermal-sensors = <&tsens0 0>;
>> +
>> +			trips {
>> +				cpullc-0-0-critical {
>> +					temperature = <125000>;
>> +					hysteresis = <0>;
>> +					type = "critical";
> 
> I'd really suggest having several "hot" trip points at a temp less than
> 125°C. (And 125°C for critical looks way too critical for me).

LMH and the firmware make sure this never happens, the critical trip
point is a last resort safety mechanism

Konrad

