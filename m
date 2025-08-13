Return-Path: <devicetree+bounces-204236-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B534B2493A
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 14:10:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7A56F1BC17FF
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 12:10:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0B412FF152;
	Wed, 13 Aug 2025 12:09:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gg9+ssvl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BAB02F83C3
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 12:09:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755086998; cv=none; b=TmBRgD0Q76HtOxl39WkIcRz9rP9e/1Z+AHiqBgqUwXCOaPVDT1bSYkPQgxNboOefLroL8kcDOeG4f2v0L3nEzSSCXgmY/UvAwiepSouMEFhRKspdCchMemM9jC3sFpFWjqTmHogbjXCuErWi88fHGdGtBsUZn77tj+PVaa2SGbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755086998; c=relaxed/simple;
	bh=m/WznaXUGhuabfIHeviZG1YVniNSCGD1sgKRQRpDdGA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tkfjMGNy1YVWzOXy4XE424olzuWuNXirje9Qd53BAujNuoFEaxObbDrVduKn7XZuXy5zAkD0MD79NYzQaaHgTNUSdrT9B9rlN/Wh/7oDOtQ+5rGc1dpNHCFeFYHPgRJaUzgAW0DNuEDAnL7nvEenuSGpIEW6wL+G9kIcFcqsG9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gg9+ssvl; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57DBLdx0023960
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 12:09:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	psYFNtuDqahC04xkfR7SJEBA99hgf4unI++fgcrpz3E=; b=gg9+ssvlTsvev9Pv
	3F7pGrGmezzHVy3/n9PlAE33ji77Wrs2Wtk3sarmqZfJ4/uGJ1eb+frZaGeSxsRy
	dEBE/AYFkK7MqSh1Z/l+ijyw+8BgtURn4MFUQlbmrNvWFsSCOThpVzmouQet96tx
	6ACNERA1YQQqa2d4HODR0o1DZIqYcDUrJBdQbERe4FQL4JYYzYKx6SU1WfSEanf3
	GVTCCTfI26wXd9tqG6naRqHf2lIBXKPH7YB50j1W0GZxiOca642cACCWgjjlPHy4
	GtJPxW5xFvZa8EieLOT6nmuq56q2kI6PaJZ2DUfSrbUMsZu/E/X5Po5Qs1oy6u4F
	33Te5Q==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48gr9rrcvk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 12:09:55 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b08f6edcedso18922111cf.2
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 05:09:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755086994; x=1755691794;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=psYFNtuDqahC04xkfR7SJEBA99hgf4unI++fgcrpz3E=;
        b=RqCJdH5F0D5UrjU51I9rLxYDMO0BPLR4GY4/85gKi4jD08347IznJN4PeO8OErVTyG
         ft7W21MVIPe7tMGJsDItjLXH3r6y26iEUQXFM9JKMi63EyTXFK/mLy10S0R6FpMZ1+7L
         sZfpfIK+2SyNLOxMfmXw5ftJh9a0Oblvphk033PdjF+13gmHJV2NE8+Io9bdQZtQg2rM
         zrFrqz+Ds+Jg1nt4DURP9908Nb7E1r93mcygF6OKOQqYRXQSZI+b21nyOa4af72Pb+Tn
         fAFullanBRS8MUXTb7kqeU32takRwPbuZn3NpirOoXnX1whMyo8I0kHdkR3qnKhDrigQ
         GM9w==
X-Forwarded-Encrypted: i=1; AJvYcCVE8G8TYq1UM/oLZPZ3LTYpXer8sgEPj4OpYlLrOHO4EsaDOsVxRgxpkBgUv719QaiQokVXyXx7imRX@vger.kernel.org
X-Gm-Message-State: AOJu0YzejRN9gR+ITe4yWZnh2GekmCMGqTVdd+XiHXZvUMTPL2ia1TCz
	QwvZvEuE6P+/MMT9lAEzu1rLFlb9TpXuiD6aArj6TFacpcrOq2FAsyslgh7VeaUUb9cRlegwkqz
	/zVKy9IAHTw/V4cL3qqGjXI0tntzh9t4sR/gSHz/WxWPLDMBwhzIBTWv4kmfsF2GzJACf6HUQ
X-Gm-Gg: ASbGncu2jb921gHYpaUKm9Kd6rUzPNhJZn5SOIFGlrK/5EmcbBD3MwqZGKPD1S1Y1AN
	XWCmjU+E+q1QSD+FC1TvEfbPy28O1+vmyNZPHpfJf0dwoIQ07t3/U8JmlliZ1xn/0LBxJICF8JW
	1CVVQ46d4PL6xWEzeir4HbYI2JO6mQ/W8teGb9+yhin+vkGnxcZLS24MpfzG6N0B7kWbAeO6VEy
	L0qV3ZDP/U1MYjpy6mGc7KZgefvEEbv/2CZCtinVluZJzO4POwbsudx1QYL2rvzy9mKxQlxQn3i
	lc6MyRUcw8GWBq9MGlWzSlXpXxs9AFDESZhZly0R6TqvIOEgpIH4G9iuXhM2ABMXxx1rexBUu98
	mgN8AiCnWiI9unLUG2A==
X-Received: by 2002:a05:622a:1103:b0:4ae:dc5b:5fee with SMTP id d75a77b69052e-4b0fc4ab333mr16608411cf.0.1755086993786;
        Wed, 13 Aug 2025 05:09:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGiI87elj9RoCIsminvTx3/fiw69IXoVr3fAfA90qa00UcNNobX3kI5ozBR7Y0OFrUSdqLEeg==
X-Received: by 2002:a05:622a:1103:b0:4ae:dc5b:5fee with SMTP id d75a77b69052e-4b0fc4ab333mr16608041cf.0.1755086993180;
        Wed, 13 Aug 2025 05:09:53 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a219ecfsm2374415866b.94.2025.08.13.05.09.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Aug 2025 05:09:52 -0700 (PDT)
Message-ID: <b9fbee18-729f-483a-bdaa-51766a07ca46@oss.qualcomm.com>
Date: Wed, 13 Aug 2025 14:09:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: x1e80100-romulus: Describe PCIe
 power supplies
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250812-topic-romulus_wifi_pci-v1-0-2adbed1b1f1d@oss.qualcomm.com>
 <20250812-topic-romulus_wifi_pci-v1-1-2adbed1b1f1d@oss.qualcomm.com>
 <aJthkXa8BZMoW3CQ@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aJthkXa8BZMoW3CQ@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEzMDA5NCBTYWx0ZWRfX8eqfYZxHqAlX
 Wr5qbz2m0zQ5dLTr8K3ZN0uDjA3N7yQcn32u8Z1ZHmA+PN3z8HU0aT6YTsR3iesYrksC9tMXIZf
 DfQJmpYa7J+A6+OlornmqYksXq6R2YuyqLDwq8/iUdpRVs7AJeK3aaEohLqqpGnQDLufFNdCbEE
 xcTJciokgzD2AznjbfwOO7WekdfoHNyszr2sSji7nveAkRRg4wQZmsif2oZPNGUXYZvjf1ULqq3
 QSKpPPaIruQcgUd0S4YPaoKCIZDqOr1TDPxzLRj/Yj5LNOgbwFuwkSD/Do92DIwWaolMJW8uZea
 8jUta7CmSSoiOwhyJqBY07NM8YcBQogQup7okdzQ9QG/lVEXT2GpGGVl0eBJQ2xdx8gQ6wEDnOa
 y3r52UaN
X-Authority-Analysis: v=2.4 cv=NIrV+16g c=1 sm=1 tr=0 ts=689c8093 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=3iqLFfv8AAAA:8 a=EUspDBNiAAAA:8
 a=J5sCG4akjCC_sdNGsZ8A:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=DXGsuw0cLJ7uQz9nXHMC:22
X-Proofpoint-ORIG-GUID: OEhNjtGrJUlQQKFMYgs3os87Kv_Jocjj
X-Proofpoint-GUID: OEhNjtGrJUlQQKFMYgs3os87Kv_Jocjj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-13_01,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 impostorscore=0 adultscore=0 suspectscore=0
 spamscore=0 malwarescore=0 phishscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508130094

On 8/12/25 5:45 PM, Stephan Gerhold wrote:
> On Tue, Aug 12, 2025 at 03:47:23PM +0200, Konrad Dybcio wrote:
>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> Describe the power plumbing to allow fully suspending the slot and the
>> connected SD controller.
>>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Are you sure these supplies really exist on the board? E.g. on the
> x1e001de-devkit, Windows toggles all these GPIOs, but there doesn't seem
> to be anything connected to two of them, the 12V supply is simply always
> on.

Unfortunately, I have no schematics for this board..

I did reverse the polarity (and removed enable-active-high from the vreg
node) to no effect.. so it may be that they're actually unnecessary, i.e.
so is this patch

> 
> Even more importantly, for a laptop I would expect they use some part
> that doesn't need a beefy 12V supply. I don't have the datasheet for
> RTS5261, but e.g. in [1] this chip is explicitly advertised with 3.3V
> power.
> 
> I guess it's hard to be sure without schematics and it surely doesn't
> hurt to toggle these GPIOs like on Windows, but perhaps a comment that
> some of these likely don't exist would be good ...
> 
> [1]: https://www.sdcard.org/cms/wp-content/uploads/2023/06/SDA_computex2023_Realtek.pdf
> 
>> ---

[...]

>> +	sde7_main_reg_en: sde7-main-reg-en-state {
>> +		pins = "gpio6";
>> +		function = "normal";
>> +	};
>> +
>> +	sde7_aux_reg_en: sde7-aux-reg-en-state {
>> +		pins = "gpio8";
>> +		function = "normal";
>> +	};
>>  };
> 
> I think you should either do a full configuration (include power-source
> and everything else essential as well) or omit this entirely, because
> like this you will need the proper configuration from the boot firmware
> anyway.

'function' alone is really important on PMIC GPIOs, fwiw

Konrad

