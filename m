Return-Path: <devicetree+bounces-185406-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 337A7AD78A4
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 19:06:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F1E7C189184D
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 17:07:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1A9729AAE9;
	Thu, 12 Jun 2025 17:06:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YfVLnwJ/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D76C223DD1
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 17:06:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749748012; cv=none; b=a7L0UnmLxvy6ELzL1hS2bYxS1Dc0yAEwrtp9pWPN2aW7bUVKnA3Smg1P/uMaGYXaxaouof/9YRWvsh+SbSZbxe0e1lHEIY0Nf+xjUpISZzk6O++6i5Ux4s4q4t/nNPj1qoEnVcbE5Eyw92q6YbMCm0UrYp/9PAX2k0kXyO2vDW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749748012; c=relaxed/simple;
	bh=TC+OdAXhGoMZG6SvmmASRYnqvkbHKHrlXYVoGxDrKac=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cWD2rCopD3eAeG52xUX7KJ2T2ug0fslCtKXPy0PFEpAJ6gyar8cG7tFtLlA3i2ebti/v4bgtEyfmtuGr47/ug9dcBsAaZGJuKoC4IIilciuYkzdQGd/zIO5QpUpA9oaS2jIYCG+4yvv9iGciRPUEbYVCZMiqsS5x6abRCWNLNKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YfVLnwJ/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55CFVlGm026025
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 17:06:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0/F9DH13AExJPe3SmFcpjEpcSWprJ1OtQ4zge43iQr0=; b=YfVLnwJ/2cuMQ0xS
	3hRoocw3/7be204I+4jeZ8T88fUBEEBCFCd7wzBRMgMfPsoFc+C77dBvz0hWXldH
	hV9CHTzS23bJI14nggxxgwSHQU8HzIAVWi9VIssfXyszGmvJYRPO9Kcl88AKa5X6
	8mmG7RlmRIppDFy281V6EzPhg1GKqnLJYSQxzoMG+Hnsfz3w8GpvKDgiMWl3xPGc
	Ngbc6m67yTdNzmUsSxM3yHzqQOheRgOsRN5KzogOGbsTB/aQDEoRhRipN7sTijyq
	4+acEeDQs31mf96eNdQILUiP4qJ/2HgRPkmJe9cfogD+OqnRyVfJv6B59SC0isYj
	X0rizQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 475v2yc4d5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 17:06:50 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d094e04aa4so19889985a.1
        for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 10:06:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749748009; x=1750352809;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0/F9DH13AExJPe3SmFcpjEpcSWprJ1OtQ4zge43iQr0=;
        b=SaWpL1D7HUpcNRD0FcdOfSM+Q92sEgcVzqO3XJaOZaCL9Q41DcqLqnFzqrIi5HRlbz
         1TBluIVJElZmur/LU5qmYohK720K4HfFt+BkRTrjQ+wQIUfFBELq/Hm6sB1wGP+NB6dc
         rp64toco0hTPMv7NI9f+LugxRI8mP/tFF9gaGCga9BuwACXt0MmRrumtdncfAkSZ6zO1
         +WP8DNCA6NtYAHRKy5I5WY0WSG2p+Vg3Vw9n0+UGfJrt3udBTBX1C/bcsCP1Asg3mLhu
         PQd6IZBYPn6WQCNQ+J6iX5VKcxgTMGDEX9rT9+u8wRh6BGSPwxuw6OdCUYig+mIHf7F4
         P3mw==
X-Forwarded-Encrypted: i=1; AJvYcCWNRdMKChBmMpK3V9mXUlY++uuU8xysYOJB7DAzDwdXazIIYIh84xUaXhjTDUwItIN/3HJnt8H+FtL3@vger.kernel.org
X-Gm-Message-State: AOJu0YwqbHWQalxsvYpTRb77JT4JCmYKBe6QNaUF1RKZ/l+ePZRAgMCf
	nC9vscchUbZ5msEx74Ym8JipgoQC+1crd6wvLGqPR5hMTYAFEVS9eMkbqQVYIrIpFD/5pFp4OC2
	C3YugZcip6Ym/ysCKq47MO32K9XGqHa30T9y9R+9/5Efd3yJaUb2251gHb6DvJsr4Xh2Z+RWf
X-Gm-Gg: ASbGncswPKNrBEONZwlCVOCjccqceC/o68M81NfvO5WJFqAUaYCvghox5PC5IJPMDKI
	15+vb6RgtZfZ9vBZFvIekD9ChJKlyV/A7oe96sn+ERrYO5bRUt9wOWdJisxwT1DhC6hQFeltwF6
	3ZEn19AB8UBu/syzNn7M95CVIFVebel1KCSqo8VdoCL9DDzzcaHUgM46uqZ17e81QFx7+NHvHyz
	Le4MUk0v0jyJWoG+Z3IFEq1gFCPUlNvMP1Pg8GcACd9qV0QitJsBVjN5GBplLLs6O/7u/ld1Ocs
	X2NhdnaXDjQ4ja04o/Dt5rmWaAS//Oi2XqtOhI91EgNCiBV9hRG33KoicSs0oHMOykdwITvhX5x
	5G4s=
X-Received: by 2002:a05:620a:6008:b0:7d0:99dc:d027 with SMTP id af79cd13be357-7d3bc44b583mr3224185a.6.1749748009047;
        Thu, 12 Jun 2025 10:06:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IENJW6VHvwcvJhbYXcOXbguZrhWncdGYuUMo8aTu0ygAXzgLYZHTyZcyt0MfTt8BprUf2jNDQ==
X-Received: by 2002:a05:620a:6008:b0:7d0:99dc:d027 with SMTP id af79cd13be357-7d3bc44b583mr3222585a.6.1749748008623;
        Thu, 12 Jun 2025 10:06:48 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adeadb22acesm163057366b.103.2025.06.12.10.06.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Jun 2025 10:06:48 -0700 (PDT)
Message-ID: <c29e80b2-4b15-4823-9821-137a9208f632@oss.qualcomm.com>
Date: Thu, 12 Jun 2025 19:06:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 2/2] arm64: dts: qcom: ipq5018: Add tsens node
To: george.moussalem@outlook.com, Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sricharan Ramabadhran <quic_srichara@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <lumag@kernel.org>
References: <20250612-ipq5018-tsens-v13-0-a210f3683240@outlook.com>
 <20250612-ipq5018-tsens-v13-2-a210f3683240@outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250612-ipq5018-tsens-v13-2-a210f3683240@outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEyMDEzMCBTYWx0ZWRfX53RsNcVTPKco
 6uVWfaCvJeVYtWN62QL0a173HruvR+g3ddi/7nIMruv8D/TvMsHefhVsM4Ezl31GeqY4auwtLA7
 y/mnHIFTGXsXfEAFltyeF6pYoaDg5PDdSO2MVhXaLc7JtOV9yk3cZije0557Cx+GHjRwS3GJMd7
 Of69ZZIz03k43jDamzebk9WxlWcLRMBi/HnjhTdbL2tXfUCmLCs+3ftLrkeNU3eN3rG0Qgj5rBZ
 RS4DCiy6fUnhwUfY0ikTkXGsfm73XayqDuV6hNHOLIDmcSKA2o2u2Bcu1jytSJzDqiF36vyuK25
 Mj7y7WI0e3t9VBL5rAV4epwR4SCuGcAMZTJaZ975TnQoxIvrvNH9U/F8wcZCtFkuDsSeSb0DfZ2
 DiWSBCKpFfA1T7nlnA3Ir3Ww1xc9YUPY9uia2a9QbxfM+IKxrS1yaFJQ/GB2UBKb7HNbaLYI
X-Proofpoint-GUID: pEMFM6uQWO3-2bB0ELdGMOpJnUhK8_t8
X-Proofpoint-ORIG-GUID: pEMFM6uQWO3-2bB0ELdGMOpJnUhK8_t8
X-Authority-Analysis: v=2.4 cv=f+BIBPyM c=1 sm=1 tr=0 ts=684b092a cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8
 a=UqCG9HQmAAAA:8 a=EUspDBNiAAAA:8 a=p8e7PeVTpa6WA4hJRsUA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-12_09,2025-06-12_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 mlxlogscore=995 bulkscore=0 impostorscore=0
 lowpriorityscore=0 priorityscore=1501 adultscore=0 phishscore=0 mlxscore=0
 malwarescore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506120130

On 6/12/25 8:46 AM, George Moussalem via B4 Relay wrote:
> From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> 
> IPQ5018 has tsens V1.0 IP with 5 sensors, though 4 are in use.
> There is no RPM, so tsens has to be manually enabled. Adding the tsens
> and nvmem nodes and adding 4 thermal sensors (zones). The critical trip
> temperature is set to 120'C with an action to reboot.
> 
> In addition, adding a cooling device to the CPU thermal zone which uses
> CPU frequency scaling.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

