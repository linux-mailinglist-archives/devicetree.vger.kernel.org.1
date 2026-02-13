Return-Path: <devicetree+bounces-265346-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0Os9LmkRj2nAHgEAu9opvQ
	(envelope-from <devicetree+bounces-265346-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 12:56:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A538135E2E
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 12:56:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D1490303F452
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 11:56:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6E1F35C18A;
	Fri, 13 Feb 2026 11:56:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="J1ctEyYB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="H6VtfIqH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9476F3148DA
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 11:56:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770983780; cv=none; b=oyGnerAAOSuESLaOMrOBAStYs/O/rn/5Bjof5AiLNtQ4OZMFytssUe06oqE/bXoxSZl857WEH7VsTx9LreTaSzc5Yj4pZxNbrW6mZ94cnMca4Ah+uCJ8+X4MCKjM9MujgNbBI/xdaY/oHgjzUFGt66I2KQmhK26VlvnX9/xPrdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770983780; c=relaxed/simple;
	bh=Qf09cyzNftZFPMVLBU+uctujGDODkYY0pIFa+fPXXhU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Mixuj1cPC6wtn1OgKwhbpPvG7nfub14Z07ZSEgzoei2xEKjRqC9CXtH4T5Ebbr7c6RjLc07/CNTB+rjK5PnLxloC0x59+WYpN5YvbIhQJLcCUfPMsGLyS4LZvRke76VRtl9+TbtjSF5JA8Ot4MPo/vbudsj5HR/KaZZuvQBVzGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=J1ctEyYB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=H6VtfIqH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61D7lpea3424085
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 11:56:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Yl1lkFZl9wuYREqqBtZV8Q7h+eZLlSgHrU4R6n9gPjY=; b=J1ctEyYBueCOjTEy
	2saiddyi85RMIVQcgKCkGKHNYRqTSs0ltthu9/c8C09gndfk5WhAUdUt6azrR5D1
	EYy4q1Fi93wa1o0D/HX0Vm4w6Vkzp8+lsjLwVIcp283FJYndztijp1ewdmjsdG8Z
	yKn0AqLcTP74q6/KGggZdYUKbLAEt6fssKIQEmlkYhIkgQWaYKvY/j8eq47pVbuw
	JsG/6naCSH81VBelzZTzTNPtV6dz3bBdJQ0919q1Zax7YunFEl72SjxJtwcUhgPC
	I0Yt9gmObMv9PYret9XRK5AL1R23mKGB+Y/d7SfOxUTr77LEUIfy/Ahz1p4mP4BA
	8eY73w==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9yvrru3u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 11:56:17 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-35620e2faf0so798686a91.3
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 03:56:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770983777; x=1771588577; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Yl1lkFZl9wuYREqqBtZV8Q7h+eZLlSgHrU4R6n9gPjY=;
        b=H6VtfIqHp/MOZ0dHiTTUKMWsJd4JX1J9f4Eo2YdphGamo3w8r7bGjZsYpHpXnDNsNH
         beH+YlLKsJMrpjKvVgdl+SrHeeeaiN0CkHBzHlwGQMl62FV9fsmbGZ6xxWhPw0MV/4IP
         dVjszx2og7UDvlYrtowjzGiN8vWrSZdgFTXsDZpkhn+nEC/W9iS8QEh6l3IPGPUeecVC
         UfnQK6MxQPvdrOviv3ZW0Z4SNk/n46zQWWZR+OBBQo+9lW9WOTR1GV63CF7VsoDE5JXK
         hdM6GE9TNtgvvkh2fmEhbNkvUXfE8WjSdZbsxMmGYeOEvEFSq2L3sk6/CavF/lbdcXRG
         GHHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770983777; x=1771588577;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Yl1lkFZl9wuYREqqBtZV8Q7h+eZLlSgHrU4R6n9gPjY=;
        b=jjXcNYzFQSfdixKjg1ZtPUOQc08UNnvgUQJ6YZ02GFnv2PRSPuub/6B+WkpbOLRY2z
         A3u40aFh13KeOhZrTuwdxTC+ye6c58HiHi6iaCREq9CzGojc0i3kkZ0XbwtUiYsgY/L6
         JUFcm+s2JQmv7v1s+Dy4vyI6517SSK3mmTmu1MI5JNDCCs4eMJHiKsRqSUpBpG3NOwxM
         fCCvsQU6lH5Ok6yZazK+qxC7yOfzLoYMEd/qkQ8H5ZesHUh57ADVn3X6Jf6DFho226+G
         kH3ZKBu13dLPmngaLMpKrAewAJc5hxXKRYzAKpyx7w5jVe3DBqyFF2fVg9ygkTx0xEAi
         qa0A==
X-Forwarded-Encrypted: i=1; AJvYcCXeK90y7/LX8gy5KxLzSD/BAFlz43UEK9Cpmmx8b7ge1RSrdVf18Uq+pFel94N7b7CBzQhFKCjDQ2uV@vger.kernel.org
X-Gm-Message-State: AOJu0YzzKKZTTVGAmXq3nWjwKJgpuJlXiE3S8oQ3hcEjlfVS8Lh/OTte
	qrv/BvQl4+WkbmkPYkeLPrdoEpMsta6IUmyQNdQuUl/Y2QiFMA8o+zDElycOqNkfpv7l3KPQyBA
	Xd2BvlDQoVK7/kyIawGCdi7+lW7wncqhoRuNObfVpmxfgdshcNUz8vfUDP6AfnAWO
X-Gm-Gg: AZuq6aKlBjF4eBdLHGdpISBNEY8U4ghMAqBYM1R5MCKma0N+FMFYYIDw2HqenHEc0kU
	QaN/pEe6r/kNK2KBmrAzoXF2y5pDPe7lbl5gfa32ITD3cqk7EwTPeJGRmW1wpU4lpuQNzKLTHeA
	Yfhoc2zFPO2T+IUrBImPn5W7aSLRPtOC6DAXZ5eJyw8dtb11hOQyaaaAkewJzGiLDpeeuT9BBuj
	/WB5WMbDiaMa5vk6Imjw8ZMdmKX7Jl3jfffEs+Xk1erUwhRpkU/16DJUbuuwo99R5eTJEL9ATZh
	UOQf3oUxJc4WEslNPWLuIuxHVp4U75TVs5dLYyn7svDQ9in2mr1uZvnQSLTf8hKi4eLB1z9uD4P
	8v5Z1Mjipsfelb6AA2/65TFY/lO3VlcGcya3OE1R74u7iwOXPBa9aOPeY9Q==
X-Received: by 2002:a17:90b:2c8d:b0:356:2fc5:30d9 with SMTP id 98e67ed59e1d1-356aabe522cmr1338181a91.10.1770983777053;
        Fri, 13 Feb 2026 03:56:17 -0800 (PST)
X-Received: by 2002:a17:90b:2c8d:b0:356:2fc5:30d9 with SMTP id 98e67ed59e1d1-356aabe522cmr1338151a91.10.1770983776462;
        Fri, 13 Feb 2026 03:56:16 -0800 (PST)
Received: from [10.217.198.130] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3567e9dff38sm7864552a91.7.2026.02.13.03.56.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Feb 2026 03:56:16 -0800 (PST)
Message-ID: <eb559791-b8b5-4836-ade0-db927b9fe830@oss.qualcomm.com>
Date: Fri, 13 Feb 2026 17:26:11 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: pm7250b: Enable Qualcomm BCL device
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, amit.kucheria@oss.qualcomm.com,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: linux-hwmon@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260206-qcom-bcl-hwmon-v1-0-7b426f0b77a1@oss.qualcomm.com>
 <20260206-qcom-bcl-hwmon-v1-3-7b426f0b77a1@oss.qualcomm.com>
 <c1a9aec2-0389-4a24-bc28-75be04cc91d8@oss.qualcomm.com>
Content-Language: en-US
From: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
In-Reply-To: <c1a9aec2-0389-4a24-bc28-75be04cc91d8@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Fv_tWKSgrP97CgKrE0IY8J2TZg0o9tTr
X-Proofpoint-ORIG-GUID: Fv_tWKSgrP97CgKrE0IY8J2TZg0o9tTr
X-Authority-Analysis: v=2.4 cv=LNZrgZW9 c=1 sm=1 tr=0 ts=698f1161 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=VnUY3c1hKrMq6ITwzwAA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEzMDA5MiBTYWx0ZWRfX2ZrGg+Dl3mko
 VP2iJZqiZY/oAe/mysMhUKYH6htOxZce4UOf2iYJdu2UlmcwWZ0Vhido8OdCV3kVyOorLIHsgSZ
 RtX74gGcLMvLGqu43VrSL9Ga0zuRhVTmGtJGn35DbaI6eColzjDkK5Qwl+CrrWluI07mQNU0SGt
 c00j5hVTwsQCPyPJ97I54Ryk+Rsn8wavqe5gWLb45Q44UqbQzbc4TR4GLZsS2I23lE4AHx88vKv
 3Bzqky6IJlKCBIYHbvzZrocAjrBvvqPo2ODsxAI/isNoSXHirGMcJ/h8AeRPlKyhJkTb9buvz4R
 M0w+Lmh9adykSyjUo+kVJ5+rP07l00aVcVaVds5+tN3tcQLF7f5z8yxhQaJ/63HOF9HIHR/FcsJ
 hyk3n5cBauz/2coGyqUz98ofvErZiBb9M0LA6yGQ+JwzUFouo6nh90Vigelk3KPr6WKQx3uaQUk
 +ZOk7C4ljqgTgrrPPCg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-13_02,2026-02-12_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 suspectscore=0 spamscore=0
 phishscore=0 malwarescore=0 bulkscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602130092
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265346-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[manaf.pallikunhi@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7A538135E2E
X-Rspamd-Action: no action

Hi Konrad,


On 2/6/2026 2:41 PM, Konrad Dybcio wrote:
> On 2/5/26 10:14 PM, Manaf Meethalavalappu Pallikunhi wrote:
>> Enable Qualcomm BCL hardware devicetree binding configuration
>> for pm7250b.
>>
>> Signed-off-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/pm7250b.dtsi | 10 ++++++++++
>>   1 file changed, 10 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/pm7250b.dtsi b/arch/arm64/boot/dts/qcom/pm7250b.dtsi
>> index 0761e6b5fd8d..69ad76831cde 100644
>> --- a/arch/arm64/boot/dts/qcom/pm7250b.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/pm7250b.dtsi
>> @@ -202,6 +202,16 @@ pm7250b_gpios: gpio@c000 {
>>   			interrupt-controller;
>>   			#interrupt-cells = <2>;
>>   		};
>> +
>> +		bcl@1d00 {
> This should be higher up (the node above is 0xc000, this one is 0x1d00)
Ack
>
> Konrad

