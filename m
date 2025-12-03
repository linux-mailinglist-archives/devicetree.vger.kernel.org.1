Return-Path: <devicetree+bounces-243996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B8DC9EE59
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 12:50:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 98B0C347FC8
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 11:50:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A600E2F39A0;
	Wed,  3 Dec 2025 11:50:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Qv0gTuG7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MI8lY4MR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB3829DB64
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 11:50:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764762618; cv=none; b=JX849a9zrD7qDXJ8RlTpHiYLURqRi+TyOkqpe2AjpZIpeNpVzUiQWvaKlOyVgsYAs6EH252slwJ40Y5HPOYWfNHdEwD0jdv3Yo5Zb0F4zK94BQYiK19ttlfXqNxPSELVNEnkfdLIdPQ0QwWCd4pm326o6mW/oaPdzKJ0DASpOTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764762618; c=relaxed/simple;
	bh=JpWFKWR5sToJbNr1nFp4OCyMzmyboQkho+CkUGHG2qA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fPaB6O4kVbtCuAJzmBknb6DVn828gDo0iJWsSJGAedkD8917NGYpMAxBLOLFVsV3wd5+iLiAFhS+IJuG7nyOOHPq20IwH+qWsgUt+ii7vPpJW4vEOFSOpGvmiX4fEOQUso0ThycJBTxc1qwYahneIB6jabJGd2KMyzf5wWWOdPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Qv0gTuG7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MI8lY4MR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B396Rmj805887
	for <devicetree@vger.kernel.org>; Wed, 3 Dec 2025 11:50:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2vmPnZazZ+URyX26QXJDQPSeQbakIk0GxOEnDkhE1Wo=; b=Qv0gTuG7hW0URebG
	k7vtGjoeBml/6NoSHFxsAZCCUDbToad8wB6Qe1N0+zAvo2HS5Tjgg/NjgRjVTE5v
	/u3FiyN7yj5x/PLSRJRt7IQV8nVLpyi0A8mgQ1dcbsRX6duycNqRSe510w6MCMgE
	WeMjwWdwzvOh4ysEkjnghTe3ULncbi8qGHOmZNJHeuF00ytlmWBBp5EH3M+VL++N
	PNWFceUCccuEQH05gpNO+WcemO+1M5JDNqUriTZZ7lnrlD62bKBQjmBeEnAJ06sQ
	gAinsyYxpTsvJXQmSpizuE6Movf/BjEwHY/eOmOA12AClc6zf15cX0tqLMV8knjH
	y47ULg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4atbmmhu4u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 11:50:16 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b1be0fdfe1so200950685a.2
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 03:50:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764762615; x=1765367415; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2vmPnZazZ+URyX26QXJDQPSeQbakIk0GxOEnDkhE1Wo=;
        b=MI8lY4MR7GgIzjwXyxajhxRMwkhzRDm8UxKVYUtxWigkHo3WgygVuvlhyV9WoGf7Im
         cKtVTjZ//mzmq9bV0jS+ZCjrGtbe+66MAWN1Mu9CEhK13rk5wlHJkeYufcY8xRjMiQCN
         MXGLixdyog+DVhexCtjGo6Q7NtFTiT4yXFUxKqi5hs+Gx4uvdajoRbyKmTj6dPV0Zscz
         cmDPDamAMcKeR2EIFvmGIecNwAUQPgCo6UuXuRPBlEuz3xjtOPP6HXLutJ6TzG5ONyzI
         T2vKz8iALUEl0oCYuLcWsknh8dgDUQMRULDwM00jjhNkqM2d/oMlp024huOxUYM/EpXh
         hMnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764762615; x=1765367415;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2vmPnZazZ+URyX26QXJDQPSeQbakIk0GxOEnDkhE1Wo=;
        b=rOmEbtjlf6zdH+W40oJvUdwQJj3M13ohE7QBwkVi3kdKG7e/WDXtMLgDuSF9LUKKfB
         V660Tn4AQNzpC+o6q+uTrm60Sebc54VH+lWN3QnUerZWyrrok6h0Uh/Z4L4SNkkxIrTX
         J5+74EsQ40VaKHlP8dfHsvAhN8yKMdfUltJcMGL2o81Pe8rZNcSfWdsFmewNjMyaKgs8
         IIF6asul6FicHDcSczZCt7w9+mv4WL+SYi1HpRdhjkST3z2gTEaMwR/Kw/PkQ3VgwVzA
         KgClRGXMwJ0D96GhG6uvyoBc+dJaGgatIwAeJbHiNxOI4zErENsnR7O2UuaIfm/toBZu
         RvaQ==
X-Forwarded-Encrypted: i=1; AJvYcCUxBNncQVSFTyhdQHxl5pDM3qe30hb3OLBdumPm63cbRlPfanuQ8mSDZIK7YCmPz/1CaMhyWCrtucqC@vger.kernel.org
X-Gm-Message-State: AOJu0YxosNQcMhGR661/hcWRjIUa68JHIgKuQgwNPgHoWUW5HNSDMLaI
	Qz2p/ZYwlXBGcHj4iVxTLmYLF7Zqye5rCfTWc2EtYPGcty8Yy49jqJCRvig7RIv7TGyJqmXjuFI
	73dQyXs3zT5YmjZpPIZTqlwiTLE/f4AcjZiyYf9XFCG2g8nz2jVI9Vmk6W2ovKtJR
X-Gm-Gg: ASbGncsuve3XwXZqvNP80wv+W7IUPW14NbjsRJ1SAcVNBnhabK7x/+MevCvg2dTacEE
	C7pJbQ8Qe6h46lZacKxN+EY+q+IuFU+7mB9HTYmfjr4BGu340UdwU9hRNCWP6b0taVlQ/0TQI8s
	c4eUXpGob/DpwdlEvTvHbCR09NjgJwd7QhkBwzrDZdyI2Dy/PqQINV0lb8g7BHr5ZXOJijQhNyZ
	3gVIkqarzVb7QnBVhgVfmxSMZKIdP9SCcLMhMSlMyanOGt6iC3ZOCldFqLEI8MRoZ7c0r81ZtwU
	y7JBJOJCF5PFTL+M0xWbE9LjzaG0AyKjhs/GvPdlt4rPmX4wx/3lrVuu+MSdMNC3oQJxtoMaxFV
	5sDJ5+g9dJN4n5XF4UQTJ8WGUmhG7T7Yt/6+tyHc8md1Ykg9PoooNoTzUkTm/TbIRiw==
X-Received: by 2002:a05:620a:192a:b0:8a3:d644:6930 with SMTP id af79cd13be357-8b5f94f3f46mr85821785a.5.1764762615161;
        Wed, 03 Dec 2025 03:50:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IETeeiqcYG3BpC1x4b6CjlH54mSfOS/0WBzj6rhUNfljLIfG+eTrPV0WqTjwf1M/Zg9dkvOcg==
X-Received: by 2002:a05:620a:192a:b0:8a3:d644:6930 with SMTP id af79cd13be357-8b5f94f3f46mr85818985a.5.1764762614733;
        Wed, 03 Dec 2025 03:50:14 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76f519d828sm1761354766b.18.2025.12.03.03.50.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Dec 2025 03:50:14 -0800 (PST)
Message-ID: <94d6d26e-8009-437d-af9f-0a3c69fe8ed3@oss.qualcomm.com>
Date: Wed, 3 Dec 2025 12:50:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] arm64: dts: qcom: sm8550-qrd: remove data-lanes
 property of image sensor
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20251203040538.71119-1-vladimir.zapolskiy@linaro.org>
 <20251203040538.71119-3-vladimir.zapolskiy@linaro.org>
 <9252338e-c775-46db-9376-53002edf429a@oss.qualcomm.com>
 <40980eac-9e9b-4293-8986-bff46f30a50b@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <40980eac-9e9b-4293-8986-bff46f30a50b@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: qEzFDmZxeXbsavGS9H-2Ko_flctkiOf6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAzMDA5MyBTYWx0ZWRfXz8dN7Iyl/1wJ
 IvTBk6/oGSa+ybYgOczpf2qknFlPXTR2fyeu8B/qhxu1LWxhwXC28pg6uuonTl+R8jD/sQtK0+B
 7GUAELVvZpBmm4bGIwMQkbs2a8kmmVrpNU23u19ze0bixCYGhjl4vjpm7k0afffxKBRMqG6MrTc
 uCFYlNnERX/+ireYGq4kOrmDEphJEz6Hh/ZWZXj5ZyKGaMiDxcO5QslFWFta8fepwgQ0rcaaPeR
 gXDEX/sZc+0YjrUEppUKnecRCoxoU1WHX3el7t/ErMt2nx761wAaJKKdRKkBeGPBIzDFYyf5MYW
 irxIncq+/Dk/RQpFpBbu/Vc8Mydt3eUkUa0U/LaPAWy0flkslFw8X8+bgNeKG9E8oB7jGmB6iZn
 AyfsNydp+5p/8Db8hAX/9waULUq+sw==
X-Proofpoint-ORIG-GUID: qEzFDmZxeXbsavGS9H-2Ko_flctkiOf6
X-Authority-Analysis: v=2.4 cv=ApjjHe9P c=1 sm=1 tr=0 ts=693023f8 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=WjA3L6o0EGsnvM4WalEA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-02_01,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 priorityscore=1501 impostorscore=0
 adultscore=0 bulkscore=0 phishscore=0 spamscore=0 clxscore=1015
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512030093

On 12/3/25 12:41 PM, Vladimir Zapolskiy wrote:
> On 12/3/25 13:11, Konrad Dybcio wrote:
>> On 12/3/25 5:05 AM, Vladimir Zapolskiy wrote:
>>> Samsung S5K3M5 image sensor supports only 4-lane MIPI CSI-2 interface,
>>> which makes the sensor data-lanes property redundant, and it can be
>>> safely removed from the board dts file. Noteworthy that the property
>>> value is incorrect, because conventionally lanes enumeration of image
>>> sensors starts from index 1.
>>
>> This seems to vary between sensors
>>
> 
> It should not, from Documentation/devicetree/bindings/media/video-interfaces.yaml
> the clock lane has index 0, data lanes enumeration starts from 1:
> 
>   data-lanes:
>   ....
>     description:
>       An array of physical data lane indexes. Position of an entry determines
>       the logical lane number, while the value of an entry indicates physical
>       lane, e.g. for 2-lane MIPI CSI-2 bus we could have "data-lanes = <1 2>;",
>       assuming the clock lane is on hardware lane 0.

I interpret the last sentence as ">>if<< the clock lane is 0, then data lanes
start at 1. I'm not sure if the spec mandates that's the case though.

Konrad

