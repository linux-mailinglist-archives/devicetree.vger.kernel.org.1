Return-Path: <devicetree+bounces-214231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 91489B48765
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 10:44:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 725B0189A1A8
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 08:44:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B871F2E92B0;
	Mon,  8 Sep 2025 08:43:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ey5CPwr7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3691D38DEC
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 08:43:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757321039; cv=none; b=Sy1PPWqrHGZkaSmZGJgp8N4PKOD/RtPH9HASlczquyBGAeNUek2QG0v6HcZ31aTi1164MaorCHnNr1gftv0O76De22KlBdV0TPnVgIWKAmIjnt2Th9LBxKoKI1N7eOT1ro+E+Hh0sYa9ARAF4rVCQRShhqNXwWqLtezHFmxBt/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757321039; c=relaxed/simple;
	bh=YfZn2EbbDDr/m6xEKnUctK8uxT5iQKRoZlYMUFHprBM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s01Y5pmNeVBlLDvsYAL6fjyZhgixpxrxB0EjKgjxInmqNVzvSDkBZ12p8cw0X+8PA9eUdOs/B6uesKVfG4TLUZukt2wn1dcT6qAeYpMArGcuwyATIDTRTJwSrA5z0rEEG6jWH8miojbXfthAM2gxX0U4Epnw+yhgqeSp8pgXnkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ey5CPwr7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 587LXBKG009229
	for <devicetree@vger.kernel.org>; Mon, 8 Sep 2025 08:43:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/YXirHZWAcnAup5Mc4KJofofilhQ2FKmIuVp3xsUIzA=; b=ey5CPwr7eQrwsouc
	vU7LaGnKCa7xBSyusIZ52gHEXE6fPg0RnOshIaYeRCHGD31mp47OsA4s/fMgb0D4
	49xIqo+1uEO/8+tfNgqSodjX0ZmiyZSFNWR5fapcuOxCMTXxfYCb4vLGoBF+1ZiH
	5S35Pd2I8l7xD7wDkkpfN+k8jItAgHINHf9ElQVg8wL/FRxuISkb+9/qTWfwPhNJ
	QAt0z89l41jUzBHlYxB4wdBocZwFhtJX5CSm84hdBpEEqldVn5pBqLuoGQrJzUOR
	bw+pXOTn800Uras79HSIpuX5PHznFBd5i7XuA8wbHdRhGo/192zqjPOR9ZcqCSgJ
	sU3C9A==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490cj0kvmg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 08:43:57 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-72a3a4a41a0so4931516d6.2
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 01:43:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757321036; x=1757925836;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/YXirHZWAcnAup5Mc4KJofofilhQ2FKmIuVp3xsUIzA=;
        b=Hgx3sliR3RtW70j9mIHgSPPvd5toTGCkEmRn8VXDVDyxfWH3/npWpfrA8szIIQudBF
         sFM9v1nulxn15KQMBOAtqT8lzN5AFYAg40ruAOGrpOgdmHhG8dslZ8FJ/lzi1yq+G4+1
         KACbwW8629easxNTRg0pf05xI1aFsjuc4DH5IPemfzD2sG9Ks+t3esQ8EcLegLstJuxo
         fPn59RSPqDBo4gaOsKe7tBw/3Lz1BrEqGZ+I3cpIvCqIkrTFvPVfvaHhGIBhZ9FH+2nq
         wMt48E/FxTTFvgF/ulGgPc4fi/YbzNn/x/vRS9ErNbDsLt6pg8JiK/cMJOgZyTxopVBK
         Yb9g==
X-Forwarded-Encrypted: i=1; AJvYcCWj3IKnUMPaDy17Is5gWk3A/cXAmYEiXPuIkrHg+XeTUo80GVlwQ/nIZquXi6IskR8GDStrL9kuQtdf@vger.kernel.org
X-Gm-Message-State: AOJu0YzG1/nuOwmVyAmtTJQQ5i27l7fUyt7pfPrVNb7nVn2om4kYWNbw
	SOI+QzCiO6YP9ciUKjpqQyRuOhOm7kANbka7lcX2NrYYIwudWVzZSSaCph++jlpqcjz3doeZ12V
	9BONp6/9WbzueUlSeKU7r/z0QktYsNpTOpj/ufqnIoMEX8usE1TiQOtftBaoMFwTm
X-Gm-Gg: ASbGncuDIfwsg05ySOBim/Tc//J7O8pJ1IUe80XvTb3nBZAH9GIFcgsC8QW1SdNX5fh
	eKnSonxvNWznTo5vXrtZYsEC6K6fhUoC7Xab+R7ms3QUMG0n5tJM+Ei7KNt4h+/Vel9N0CFxmtW
	0qF0RXw2sT0RWd2cSJO8eLzWLXd/RIZPAqdIa1e1vlTqg5ybBWvx6XSQxYoI9GaWFlpyggl9Aiu
	sfEnCAS8nOaHRaVUbS42SrrS9l3JJRVEsU/OFKDDmYdoJZO+GYYdlJZ+74OEocVaSJS6DV/oU4B
	IuFYr3NOtmZgojvLEA02cTtiNUs6LRAr+zPqR9PrlIRI1AEsvHrhaNqNAei2LFMrc3fLCR93nF7
	45RrueovYdL3CNAObVhR5ew==
X-Received: by 2002:a05:6214:411b:b0:738:2797:92c7 with SMTP id 6a1803df08f44-73944a0c619mr46426346d6.7.1757321035160;
        Mon, 08 Sep 2025 01:43:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFppsM+5VIrAF9EEkJhMHSuYD3hi4y4xvCofPF7mq5yRs8Lm4MTOnPqOA+MY9ePWLQNhh81ig==
X-Received: by 2002:a05:6214:411b:b0:738:2797:92c7 with SMTP id 6a1803df08f44-73944a0c619mr46425896d6.7.1757321033937;
        Mon, 08 Sep 2025 01:43:53 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6222f293a31sm5874197a12.12.2025.09.08.01.43.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Sep 2025 01:43:53 -0700 (PDT)
Message-ID: <f508bf92-a513-467a-a946-17c41e1d72d1@oss.qualcomm.com>
Date: Mon, 8 Sep 2025 10:43:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] i2c: qcom-cci: Add OPP table support and enforce
 FAST_PLUS requirements
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org
References: <20250904-topic-cci_updates-v1-0-d38559692703@oss.qualcomm.com>
 <20250904-topic-cci_updates-v1-4-d38559692703@oss.qualcomm.com>
 <aL6Vp-3er71AJPJd@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aL6Vp-3er71AJPJd@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: kyaRDD3q6MqFC6VhbLFjgc9y_97-fIf-
X-Proofpoint-GUID: kyaRDD3q6MqFC6VhbLFjgc9y_97-fIf-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAyNCBTYWx0ZWRfXze6t1X+xEzbl
 vpWBx2Wl+wlvO5DS52FOK70oHKKElS/FmDatXeqyujufFIMoAm/2OlhciJlGhAxj7jKkXw3Qbfq
 MrKqXDyGlBw/lTwTXe2afRQG9y91s5xidz7T6l1nVXGOKzNuvJlGCKGHIJjVhwjDGBdUlnizQUj
 kJnsZCfQN0rcNjsY83D+88WwWM/6YKcBSb6su6mrxdisSwtzA5zLp7MS64gsZz5khLlQXjG1Jvl
 ScGOrX/3W1qRjiJXp4v8ubrlqsRqj8pLVfg9Ih72HMWYEsld6W1NI2A73I2ffMoyf2mmoAOgAOI
 owr+K5BFB99O9eEnB0Rm0uEQOVIIrfvTVktI/JIAMbNpaJ+RA7repC/CCjs3pzBf3PxtvhoUr2M
 nzprMOW6
X-Authority-Analysis: v=2.4 cv=QeFmvtbv c=1 sm=1 tr=0 ts=68be974d cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=eeKOm84Awb0PVD3MLwsA:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_03,2025-09-08_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1015 spamscore=0 impostorscore=0
 bulkscore=0 suspectscore=0 adultscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509060024

On 9/8/25 10:36 AM, Stephan Gerhold wrote:
> On Thu, Sep 04, 2025 at 04:31:23PM +0200, Konrad Dybcio wrote:
>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> The CCI clock has voltage requirements, which need to be described
>> through an OPP table.
>>
>> The 1 MHz FAST_PLUS mode requires the CCI core clock runs at 37,5 MHz
>> (which is a value common across all SoCs), since it's not possible to
>> reach the required timings with the default 19.2 MHz rate.
>>
>> Address both issues by introducing an OPP table and using it to vote
>> for the faster rate.
>>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Using an OPP table for a single static rate that remains the same over
> the whole lifetime of the driver feels like overkill to me. Couldn't you
> just put the "required-opps" directly into the device node so that it is
> automatically applied when the device goes in/out of runtime suspend?
> 
> And since you need to make DT additions anyway, couldn't you just use
> "assigned-clock-rates" to avoid the need for a driver patch entirely? We
> use that for e.g. USB clocks as well.

This is futureproofing, in case someone invents FastMode++ with a higher
dvfs requirement or for when the driver adds presets for a 19.2 MHz CCI
clock which would (marginally) decrease power consumption

Konrad

