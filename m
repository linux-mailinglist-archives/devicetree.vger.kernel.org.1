Return-Path: <devicetree+bounces-232043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F0BC13D2E
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 10:32:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5AF844F0CE5
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 09:28:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96E502DCF72;
	Tue, 28 Oct 2025 09:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OuRNaO/Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2079635B124
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 09:28:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761643737; cv=none; b=DzNl7VIN9rdaQcorlutHrl29G4xq2wmqTBwXfnIM9d8kuTu70mPd5POGwKU/FrUYJhfFwjVADps4nw6E/ZlbtPqnTe+8Mf7i0fUEb2TfdvsrfzTOD/y/8RPAPG/1ASJk3kdmdkssF/JI4ANySqlmhOURCv57Cf129Yp8DWW9Fo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761643737; c=relaxed/simple;
	bh=ZwcXGonRvN92emIPNXJaJ1t/xG4py0/uAK0YGXZ995c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tAQrhifuEnWgyxNlseoDHv7dU/wrsT//eoL1HECosadkhum7yQM7ms85AY3hC/G2inJaKjp4+m03mtgXmy7VcK6uC/68h5L7PntduWmT0n9hjCrRQx1R+u70zUGS8gL4l9iDRhWSrlE0miIDoCcrhKCmQaL4jR/0+1kkYJLkDo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OuRNaO/Z; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59S7uMNp2752114
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 09:28:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	e58+fNddGzKAOXNx1q0z8A5H8OAdJV64gGeZoQGGH1A=; b=OuRNaO/ZXOk9q3hp
	t5iigTW7+TOM94JNxgV3pm3jVgA98LE6rTno2SuetfrUkraWTzsiDFu/KrnI7exB
	Fu4AyuWD90KGYZqKuVkGHfKiS8vd9uKMVUbssUIpUgIFz7GvNGGj5SPmyAbdkmjI
	A21YYDQbmLeHWgNBW/1p6heoODB9TWKp23+mNKo8WxKofNQBHjfOA7r13Oumi6BM
	TpITRsJMNAcvw2lqzAyBmp3MIEGLKhL8LJzVWQBA/3gERZAl0QnzEp04Cok9Buy9
	LylIGaf9aq5cGVUAglp7Fh6ASTR5mHNX/dtQ/fLXFVkoY5xQEb84yjOR4qvZQjlf
	1jvNpw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a28swkfcn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 09:28:55 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4e8a35e1923so13829651cf.3
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 02:28:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761643734; x=1762248534;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=e58+fNddGzKAOXNx1q0z8A5H8OAdJV64gGeZoQGGH1A=;
        b=LwTkYtLf0mgiP/lFPvnq/bb7/vcTBvX0HdV6/cOM2PSRs3sCzZbi78UaF3VDoSNsCw
         a2S0t3tBm0Yq2tyW9smMbqmW4700r32lLqX8HtMSFIXXHd6t1XmCcX7oT+YcoItR974U
         E6hrLLcwoAksBRMehNWQjO4raMJVetvv/0BtdR8jWF71/wvCMOlrdeXvymmEOarfdN2N
         RB5jiyrSyXLe49R+/oHqqCyJmx3m5MOX9uStxC2TDJUghYtKLaiHeG4PNnFywNon87cC
         JidZOpppRyEKLc8ukby4+RX9vzvDA6CS4uSCf4V4mxYglnLUSz3Y9r4Smoz1tK2IQFTf
         9zCQ==
X-Forwarded-Encrypted: i=1; AJvYcCXMyf0xpjwFaNwqeegxh2Zzc8m9kYxpHF4LmgPaP+QPTC5XLekcCoMxnlLmcdgPKaNtgPPHsx12Zri7@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4Xbu9swMpUv1VU8Sm90kTM7LQedgOsN6xtiSvkBhuFaBc3ZhK
	oott0jHuIW9sP5TKpdp9EMcSOSeS7ss8CbOyMgPLgZpYqPcx8M06qD/MSvzNIfCEi+8qrwPeXOV
	2LlH2UtnKSqq3d+4G0d0knflL3yRtxL4LSpzdvGwK/lmiesNGTgFMKkUY/jIJ47Yt
X-Gm-Gg: ASbGncvIN8gFBt/1WU5S2m8iPeDWUm8fEpJRs7KcKbLvKOchDnx1T05KFekPX7UGDIW
	Fq8FMXBZKfy2NgQ1kvf/VgEEISTj+xU6kC+7qSad/BYGlnBSUY143kPBjIUryVaiMx0nwNp5rro
	xtjcVWZOZiZfryseUOeOu0b9XKmsUOuC0XOoPp9CU22HpM6eRasmNvrL9Smu8p4QCKckEr1dXMO
	xy/InKCIMjMr7UnxV5apYfPwR+4xgUCYEm1eN/7sN3GWh/F+GMOnHTRg0amk9PhkKoEzrzZvRYE
	EwENH2GIof3BKpiY0A+owgl7wPFiePMu+vd12CBo6HM/1yhopZ+1aXUXmiQGUArbsOMSoI+q4Fy
	j+Xxl7Vnyg2kwxVl5zhF2OvSiBiJKOhx5iFauzOzyRTuCDM1sOBYfKykj
X-Received: by 2002:ac8:7fc4:0:b0:4b7:94f1:7722 with SMTP id d75a77b69052e-4ed07300584mr24794561cf.0.1761643734644;
        Tue, 28 Oct 2025 02:28:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH1y09EzKeIgKo6FSlPS4BPv76TL/fj50gN3CY3VRT9ZqcFngZTXBYoyq9XTVLAJGTrU+4UEg==
X-Received: by 2002:ac8:7fc4:0:b0:4b7:94f1:7722 with SMTP id d75a77b69052e-4ed07300584mr24794321cf.0.1761643734082;
        Tue, 28 Oct 2025 02:28:54 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d853386casm1023836866b.15.2025.10.28.02.28.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Oct 2025 02:28:53 -0700 (PDT)
Message-ID: <38628ff7-8080-4ab2-a9a7-78b51f3f699b@oss.qualcomm.com>
Date: Tue, 28 Oct 2025 10:28:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/12] arm64: dts: qcom: x1e80100: add Coresight nodes for
 APSS debug block
To: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach
 <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linux.dev>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: kernel@oss.qualcomm.com, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Jie Gan <jie.gan@oss.qualcomm.com>, Johan Hovold <johan@kernel.org>
References: <20251027-cpu_cluster_component_pm-v1-0-31355ac588c2@oss.qualcomm.com>
 <20251027-cpu_cluster_component_pm-v1-12-31355ac588c2@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251027-cpu_cluster_component_pm-v1-12-31355ac588c2@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: anduLI8MsenbGg0CU-IOFmDdLux8tJFq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI4MDA4MCBTYWx0ZWRfX3HfabfVq143x
 hZWUtbGDnuzJoIxGP/9i/2T6Udz/rsArN0M3XBY30G8S1H9fbY7RGvnGHC5HE0tZM/gbS1JVeru
 8yTEmmNNHyx6ut6BWtLcpOr/WPXSw6y/1wSvWG7agjS2U/Q2iUR8toUXl6vTNE+cJZXeUYoka8P
 EysfYu9Kn0iPIldBRzY93Yko2bEQqOHMiKnEJkun4ZusOBjF1YD8CGzhtOZISpXJg73BRBcOK4K
 /V683aPK3Z2ofPdpuqay61SkL1w74jBe/RbvA8tJ6Y67h5oe2sVcOcmQkze+4GPqaTbNpM9G8RQ
 Z+b+mrTTK3Qr7fczqmAyhTqhTktNxbH92gB/s72PSyYBx5cvdYiNiyTJpJu23qrNX8dZKs6Z7vq
 57z/U4cD8yKU1TOPfA+HOTX59WeFAQ==
X-Proofpoint-GUID: anduLI8MsenbGg0CU-IOFmDdLux8tJFq
X-Authority-Analysis: v=2.4 cv=fL40HJae c=1 sm=1 tr=0 ts=69008cd7 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=zitRP-D0AAAA:8 a=H2ti3IRskaQp3tPIb7kA:9 a=QEXdDO2ut3YA:10
 a=zZCYzV9kfG8A:10 a=a_PwQJl-kcHnX1M80qC6:22 a=xwnAI6pc5liRhupp6brZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-28_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 phishscore=0 suspectscore=0 priorityscore=1501
 clxscore=1015 adultscore=0 malwarescore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510280080

On 10/28/25 7:28 AM, Yuanfang Zhang wrote:
> Add below Coresight devices for APSS debug block:
> -ETM
> -TMC ETF
> -Funnel
> -Replicator

This is a really crude commit message.. please take the opportunity
to describe the topology, any updates/quirks/exciting new features

[...]

> +			out-ports {
> +				port {
> +					apss_funnel_out: endpoint {
> +						remote-endpoint =
> +						<&funnel1_in4>;
> +					};

Unbreak this line

The X1P part doesn't apply on on next-20251027.. I see that your base
is some coresight branch - is it part of linux-next? If so, you can
just base your series on that.

I can confirm an unfused X1E80100 still boots up with this change

Although the problem that was originally brought up here:

https://lore.kernel.org/linux-arm-msm/Z6t45aOGDkotqM4Z@hovoldconsulting.com/

still exists..

$ dmesg | grep replicator | wc -l
128

otherwise lgtm

Konrad

