Return-Path: <devicetree+bounces-130974-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF759F1A51
	for <lists+devicetree@lfdr.de>; Sat, 14 Dec 2024 00:53:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CE842162C64
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 23:52:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36E271B4F1A;
	Fri, 13 Dec 2024 23:52:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BM8PfZh4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B997E192B84
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 23:52:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734133977; cv=none; b=LR1P6OsCuaB4901s/w8tJEds5lsV4bJUsOhyBa+1vLzG/zI+DX1IJsIyDoj0omP5k5zQupQJp/kXb7Wfj//+TWG91tnFQTaLyDUHKm4IEodJiE4BZBfOZPOL8i66hUWsu4un21IcJQvr5k2CNH4uYBqTqUto5+gCf+2ryiG6LLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734133977; c=relaxed/simple;
	bh=RfB4J/3OZIKe8oDeYe/PcMGp8YLFFYtl7NrwaLuaBwM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ro2fL1QsqlszZZSOdQ3nJkc1F2FBCP+rpGatK3eFOt/MyUcwNCC6SLdAuTWoQqbnu24Ru59whkCcQhnh6CSfzhCIwPFtsnT7Sfg5QE38sRFCROtc2R+nfOv9oprMRIhQFXx1CSOK8Y210OOXaE5GIQWLmxP36aFn0A+We9FTuMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BM8PfZh4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BDLgZxu006166
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 23:52:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	N37b5CHVNpbNO3mJy1xrr3qdkEzMazP7Mp7+movUY3w=; b=BM8PfZh4byuz78PH
	yQlZaa6IQbEyMitNoLN+6cdTRB9IfdxZWGThs6y9feLG8aCbg+PA66rGxdxDGCRC
	ukkX9HzDWmLAg0k5pTxEpvePPWTJ0Pdx0n/3isAdAipHtd1fwPwYPNuoJqla02xg
	i6mYIROb/w7q/BjskevJlLLSXcgFyeSVTYc/TmpC8xO1C84OGW2n/VqwdRZ8Zqka
	Ig9DNXZ7AxT80pzQqc3LASPB8mIfcf87x28Cqef8zhKmHn2YoeJCsYaKbMmOBet5
	JKOlz/qhxg0ChLk8iEj04uTGb8ihT5jSxT1bDgkHMJ2XW9/8mel0AqpyrdhQHEZh
	p6XT3Q==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43gw2kg62y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 23:52:54 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4679fb949e8so3766011cf.1
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 15:52:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734133973; x=1734738773;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N37b5CHVNpbNO3mJy1xrr3qdkEzMazP7Mp7+movUY3w=;
        b=ezly5SZ6q4sfzx0Sr4s2bqdOIzNh4KBQdbjs2tKb6aAY50KBXoLeosiIz6uotL53Eb
         uE+rs1ejdaoiwesP47/9YVoKLzBZ2+yt4quJ3kinotKqwlMR5+A7sNlKaUZ/Cfm6Yf4v
         p+rWf6PcXiLV6PvV4zHae5CO4QkKWIzPdt3SqAsGMa02VLsh+me6gJz1yqDFV5Wt7ThM
         7QK+AlKVLK9OQlouuWGX+3zVYQuLIrrFsIEpJqhVE+iTjnALkyEzITt40VzFYpXt31y/
         NyS3IJL/QhSdUk8oA7NxwczGsHH1gdR4aTlamuxjf2BnMXIWTItaMv81HiAffOYheFNk
         vRfw==
X-Forwarded-Encrypted: i=1; AJvYcCVz+UyjpUF2OXyOQKENJ+GvXUr3L4TCqo6wa7TSHCS3k5ARuB0l0YYhXPJlPCWTtbANmEtMV4k54ITH@vger.kernel.org
X-Gm-Message-State: AOJu0Yyx/yw4QTFJq24lzxHSfZUahPBWPPr59wEM5+2u2tMiPqb5ArD8
	T803chfbnLJOdi3SAzcMBq1NC0ZCrhhoDb4HtkCEV9vv/cUBSN+qNFH9dzDA8uUuIbIisLZU3lw
	EXYMhKXkL2C80jA7h16Nwy3sA8xuf0adUAtdaNwEdbJsFiuaPVRaLqKczZ0vj
X-Gm-Gg: ASbGncuG1pzFrFjS07goTqwG75KEMldMF0Bzkup7bTirKBi+NNodRwhF8Ys7onRyfMZ
	P1bUgopHtMqKK1H+EuB5ahbmvfxSK9pc2Yd6XgUAnbTtlhmDPA4E511B/C7JXQ/M0OfYZWm4hY2
	gdKMYX6EdR69d2Pbt1G6+BlxvT7AicCoQ5Lk5d9i53hAGxgQZUDDL/wktqZWvTN0JbqPuWlFXOE
	7EmU/uHk1YgpfQcUcHzFxIgddy6adkCn8zxhOBshiLrwFAIx08UlFcmQX3oUdgEoSy0PF4dZkIi
	zMF6FtYGAKVdgp3YGyjgmA2sYf+rwkMZ/KM=
X-Received: by 2002:a05:620a:191c:b0:7b6:c597:fb4d with SMTP id af79cd13be357-7b6fbee75e0mr248717785a.5.1734133973576;
        Fri, 13 Dec 2024 15:52:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHJPdM/1J33q3OBU4K148O8fBOXwXDUj5yh7R2/a6WIaqHivQbWtTXdCwgOTQEJLpcofie15w==
X-Received: by 2002:a05:620a:191c:b0:7b6:c597:fb4d with SMTP id af79cd13be357-7b6fbee75e0mr248716385a.5.1734133973145;
        Fri, 13 Dec 2024 15:52:53 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aab9638ace9sm25242466b.136.2024.12.13.15.52.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 15:52:51 -0800 (PST)
Message-ID: <309303a2-995f-400e-9fc3-c24b5ea703dd@oss.qualcomm.com>
Date: Sat, 14 Dec 2024 00:52:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/5] arm64: dts: qcom: Add support for QCS9075 RB8
To: Wasim Nazir <quic_wasimn@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20241119174954.1219002-1-quic_wasimn@quicinc.com>
 <20241119174954.1219002-5-quic_wasimn@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241119174954.1219002-5-quic_wasimn@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: IpN44SWTWcXVmhmq-OJMZLZ96j-_GChD
X-Proofpoint-ORIG-GUID: IpN44SWTWcXVmhmq-OJMZLZ96j-_GChD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 phishscore=0 clxscore=1015 mlxlogscore=755 bulkscore=0 malwarescore=0
 spamscore=0 priorityscore=1501 mlxscore=0 suspectscore=0 adultscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412130170

On 19.11.2024 6:49 PM, Wasim Nazir wrote:
> Add initial device tree support for the RB8 board
> based on Qualcomm's QCS9075.
> 
> Basic changes are supported for boot to shell.
> 
> Signed-off-by: Wasim Nazir <quic_wasimn@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

