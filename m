Return-Path: <devicetree+bounces-200674-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6862DB15ACB
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 10:38:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C8B1E18978CE
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 08:38:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7736123535A;
	Wed, 30 Jul 2025 08:38:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HeCycuwz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E056D1F4E59
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 08:38:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753864711; cv=none; b=bbyXXOV99kol40aAkJaRWdHbmwP54//7oI1jSz4NbLcGAI+EOSkK9ueRdhWOQXt+hRIrCkjMJqDNeKkJ2fCe4264Ij4GGnWOQRxCeVI05w2/jtAccKlog2q0q9OrodQ63AwqxRQYOVSuXdbAlyuVNr9j+tO+8Kml0GtedjZbP1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753864711; c=relaxed/simple;
	bh=Q6l3IpqKbOqB7OSeobIhjRaEzAZYWHwA59c2iSf50F4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s5flxi6PcX4s6BR371vpuTWZKxFjL5e6jQiiE7AjaLrYdpaAziHcOJzr2KBaf4P1aQxbBnbcyeAUafIYobTZkMPko+laJuRRoXbRoLP0qdaUlyg01i5XnA8JFDDsKmZl3oG2xngwO9K2Rrst9iJzHIA93Ffkl6jpwAe5ZeKeKWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HeCycuwz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56U4rOps031277
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 08:38:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iI/nNXs+f9KkWZ1yxsWzsQrCvk0IJuyKWclGYTpMJOM=; b=HeCycuwz3XWsPdv8
	Akbyi5AOL1FtXNcdQTs1bdp0TEP5J7OJ6tyxBOlHhZwSrbD8GuAQwc8n9+BACdGZ
	fMaULoIxcbDVH+tRz9uIcT5bDCJ9hEInhxDUQEBh0FRqA1mOohlKiJSIMEMm0lst
	uKJ1ODSrcKBKHUaHvq18x0EnwLKYvRCS9Wz9+upoPN8isvAeRcxGj0FqXah5SB8a
	gvLu9NXezJEdFDirAYU6nuP8j/PRrudLFyXsgxEfVOqt+WututFRi1MmUmA1BERK
	gwIbvdzLNfeee06RtunxhsIsSvM5WvdE2RF+ndcNx5GhAk4aB1RHRFfc5gpMts+Q
	5ylz6A==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 485v1xgetp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 08:38:29 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7e48325048aso47573685a.3
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 01:38:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753864708; x=1754469508;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iI/nNXs+f9KkWZ1yxsWzsQrCvk0IJuyKWclGYTpMJOM=;
        b=OLEVhcvS3Vl47aKU9f3PJI8nqXGsMlCr0G31nJx/P6H0li9gTbu6j886OHbDNjxpaH
         5Kcz7UwcmwIl3f+li3eJnQU/o01pw6GA94TsUbWUCQPT/1M7Ur3idIrXPe83xsqjMpB4
         Z7cqaezxq8EkmujOxV/y/tRprORXkuHUFRH1sJ52n9DkZHoSWYQJBkkwAVZfZ4bNy+T0
         ZrmzGx3P/adDXh+p+xrfkQ1ErU2169MMlTKgzpQgbTKqE/WoLDqNh+xMht0uhNM7CuXg
         oPOlnOSYefRzu2yWAeJH8G5mvUuFlXsoVRQVQtEYrWLuv5WN8uDTHYKReBsWkrCOlXJ/
         hVKQ==
X-Forwarded-Encrypted: i=1; AJvYcCXTwTS101fDRR2MmXzS3+hTy4OkuPVi7a7X3PsjMqBjKpaau8p8VH4kr82MMuwPaHFmRpFgM7J74RYP@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7SNzH9G3v0okeFTJN3tQ5IAxEZopvuRXtJe+rcR8vTPRWYHzV
	kRJ1n6/aDUFe//Gb16VIAZtHZatSK5WE6oK7MsZ4klo3cnvyOUEsWUJ8lsk02Hp+pRIPaocKxxi
	eyYHaQ7FhSk5snclYeL7whoDb+ogNTCIFVRKAz+Ksv2SPqEEDuCNP6Sny77CRy7JP
X-Gm-Gg: ASbGnctVpfTYXhUbzi1ap6OUHd3bxTvm51uZOwp0wEPgXRKCdVEikQsOpQJPUytEAHD
	9KRQGCct9kPLAi8prdTD8iFCE0jNUTTmI5lO0oeZvgQnnYha6Kyxulj6dtCXkvMNhbE88HR9f+A
	B8Lq5u4FaCDceeDTvqBtoZFvIAlDMYagP35CJUGfg3+8vmDHhWdgLvfBHQ1W9m8aFKAe+NQ4u3u
	KIgn5RAiCwHXvfuhp6/dQZyYgG5SfXHl5OHMNfeWuRoDJD8UBNG+IUTlmJ43HafRaAVFgw4KaHf
	smY6eyroWDocUevTjSqtEsGyg1lVqNl4vIa92TRpf07FlwJFzHQw+c50nXDZp4ILupK1Nl89oQW
	klh9wLxIdkRooFPXetw==
X-Received: by 2002:a05:620a:2892:b0:7e3:328f:61fa with SMTP id af79cd13be357-7e66ef91861mr169464585a.5.1753864707709;
        Wed, 30 Jul 2025 01:38:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGVI2jZ37bBekKEznTg/czn6Oni5IYIGSxIKihzZfZqwE+jSvddcQoWat/7kn9i13M2e0uZOg==
X-Received: by 2002:a05:620a:2892:b0:7e3:328f:61fa with SMTP id af79cd13be357-7e66ef91861mr169462085a.5.1753864707288;
        Wed, 30 Jul 2025 01:38:27 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61544a81df7sm3370018a12.59.2025.07.30.01.38.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 01:38:26 -0700 (PDT)
Message-ID: <134a6436-18b1-4b21-aa19-5e7411c1678d@oss.qualcomm.com>
Date: Wed, 30 Jul 2025 10:38:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/4] cpufreq: qcom-nvmem: Enable cpufreq for ipq5424
To: Viresh Kumar <viresh.kumar@linaro.org>,
        Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: andersson@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        konradybcio@kernel.org, rafael@kernel.org, ilia.lin@kernel.org,
        djakov@kernel.org, quic_srichara@quicinc.com, quic_mdalam@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org
References: <20250730081316.547796-1-quic_varada@quicinc.com>
 <20250730081316.547796-4-quic_varada@quicinc.com>
 <20250730082852.oxy3tjjtdrykrzne@vireshk-i7>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250730082852.oxy3tjjtdrykrzne@vireshk-i7>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzMwMDA1OSBTYWx0ZWRfXz5INGEN546tz
 DCqAd/Etu256GbmarEFnl4C1RE+oLWrvcKiNyAlPl2rHubD2n2xQ4BHsnLU2pOee6qJ1pGx+kPf
 9dChnuhRbRDneZaKW9DhjDoexFKR/9VtEwsgOs1sMFxDpDA479/WSm3rSVNH5NKMnbOn8+9F5T6
 b3QzAbmBwnXaH776m8Ltn7NNCFOBX8bqH+9KxvCSQCCOlf8HSmnVhHLB4xQr2PRMlUrRTbWZzx1
 TOadNWv93XXO+RCQLOcdQgDfvjLYzvZRvOEgl00hJETlFE3G7vpqJuVx06+94yDryl2YmHB78Qq
 wScL5rprNAwiMCNCuK0n2GqdvgdfgxkplEoibfehqbxYOCxu8hugt5vwFk2Gzsy9raIobuUCX/G
 IqiOyTxmOjEp1aTWqGvo8is3CfTTMgZEMv8aOhgHNpEuhNHZT0ICz++0QG71YkNR9yZRLtGC
X-Authority-Analysis: v=2.4 cv=JKw7s9Kb c=1 sm=1 tr=0 ts=6889da05 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=KKAkSRfTAAAA:8 a=-57h1Q5dCNsLzJNHLckA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 2x7dCCBk_T1VV-UYA9QivpRn_fEy1yWk
X-Proofpoint-GUID: 2x7dCCBk_T1VV-UYA9QivpRn_fEy1yWk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-30_03,2025-07-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 phishscore=0 lowpriorityscore=0 bulkscore=0 malwarescore=0 clxscore=1015
 mlxlogscore=983 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507300059

On 7/30/25 10:28 AM, Viresh Kumar wrote:
> On 30-07-25, 13:43, Varadarajan Narayanan wrote:
>> From: Md Sadre Alam <quic_mdalam@quicinc.com>
>>
>> IPQ5424 have different OPPs available for the CPU based on
>> SoC variant. This can be determined through use of an eFuse
>> register present in the silicon.
>>
>> Added support for ipq5424 on nvmem driver which helps to
>> determine OPPs at runtime based on the eFuse register which
>> has the CPU frequency limits. opp-supported-hw dt binding
>> can be used to indicate the available OPPs for each limit.
>>
>> nvmem driver also creates the "cpufreq-dt" platform_device after
>> passing the version matching data to the OPP framework so that the
>> cpufreq-dt handles the actual cpufreq implementation.
>>
>> Signed-off-by: Md Sadre Alam <quic_mdalam@quicinc.com>
>> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> [ Changed '!=' based check to '==' based check ]
>> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
>> ---
>> v2: Add Reviewed-by: Konrad
>>     Change speed bin check to == instead of !=
>> --
>>  drivers/cpufreq/cpufreq-dt-platdev.c | 1 +
>>  drivers/cpufreq/qcom-cpufreq-nvmem.c | 5 +++++
>>  2 files changed, 6 insertions(+)
> 
> Acked-by: Viresh Kumar <viresh.kumar@linaro.org>
> 
> Lemme know if you want me to pick this one.

Please go ahead

Konrad

