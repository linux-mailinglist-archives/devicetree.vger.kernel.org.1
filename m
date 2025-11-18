Return-Path: <devicetree+bounces-239814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C94CC69920
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 14:20:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 8EB9E35EF92
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 13:18:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D43C9330323;
	Tue, 18 Nov 2025 13:18:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Y6U/BYrB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JJ/adGoz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35EA92D641D
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 13:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763471926; cv=none; b=iPvRm+GRIJfIL8S+iicaBdWKW1x1RAPQmpyxZpG70CrU84lZwnuvnMPINletE6viF96MpacVzlthXgQjYAEPs8dQaKXn7ij/V81Amj4q6ZsNKdtWBceZNbUJkjiSmC3DnEkbkqwGGJjS4p6jT2hVh11MG0gLnAlu9At8uz6khN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763471926; c=relaxed/simple;
	bh=u2vHa0N2GrM/Gfb7w7/BVAD+L7hu6GXEgmGEDsZWBK0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ay2op8413Lq2+tEr4Fm8xGu4sQgcKTpp1Tbhaz0T2Yj8lf++1D6XSdpkiXShhCHbQdX+wknLiGqQJGWtJ+qGiI2m33Po3/oNHRqXadNgw78ze9kwW/EszB3En7f5JkGa7+D0VQxmHRnbHjiqvvbA/wQjvpKqEePqBtviz/PcbEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Y6U/BYrB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JJ/adGoz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI6fcMk2272253
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 13:18:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Aav7xLblBgNOadCerIxkavKUB+3nM4sCZ/1UyQhFsXc=; b=Y6U/BYrBqchGWx5W
	oT5goJ7zKfTrrXGH/yOyYp5MXRAn6bu+bryDlOIOIFx5hOceh9WYacCSAWu7IxYb
	cdwdVBY5YIXlYsN+bzuPlbZevA+XmvS2EOFk/F8MHo4xqsj/6p9AQWp2Xu1EpjlD
	ibhA6SMo8+Gcnl7TcDAGfrSBKXv6vo3zmmssAXOeaWVfAgPXKoAsWcu/nF6SduXn
	97FFmMnC7U/rKXkNbValsFhV5onpTsk4siSb9iWTjmkafS1NaLV6MrZV6a9AfD/H
	jg453ho8Y3TXps37xBDfmdow0p7wca00HyJHMS+TtgU0k6wFliymzFIZGWGq3Xv3
	rhNeiQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agkrmh43k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 13:18:43 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-8800460ca8dso22852366d6.3
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 05:18:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763471923; x=1764076723; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Aav7xLblBgNOadCerIxkavKUB+3nM4sCZ/1UyQhFsXc=;
        b=JJ/adGozZLN5ZbkQHk+Cf8GOdNLbAOQ/szHHpm7YeBs0lG0HoCCvWrjqWzrq28D0Dy
         wDZ+1YZKwq+vhH+HUP9TNbbHhHVVil4D3sIdF0m++RUT+1znx42g75ngeyiB5Rj6aqnh
         gcYxLzNT0V394Q3Cto1YYN5Ej131XXWLlItFVvFGshxvL8PtHJEN3WqTGz4w6asuKbrM
         rMvbHqzeKnpil5/wchKupLoLJ/yWF898bfb1Gs3BZGxIhDtNKVZFzn1fjeniw6izF78W
         m52CKSvqCHQKLq+Cd/GiA/X3Ow2ihx/b+7B1GcgtTlEKP+A/fcpiFX0JxsMfpn3wmK38
         L3YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763471923; x=1764076723;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Aav7xLblBgNOadCerIxkavKUB+3nM4sCZ/1UyQhFsXc=;
        b=r2ghePe+fCAoOBzMSnVLEqXt6FWwHLWzFV7KTL559unHko5wG8Yy3MFdSRBODmME+Y
         zDTzOlWkpfN0r/rZ6eOVfv5ZTnooS95t4bW4afT4re1PLf5NNMGspkdzwHD+BFNXq2MW
         cwp4Wsx3BYUFbXP5uJq4lL2k0kn9Q6ozDxlMBPR+JZzUCfe1fFwMSI7L3zEP6+yIfKjQ
         ABrygazOTduU0jMk83pbuJNs9wF/pp+DfHUUtHDvWVOB4mqSlfWmd1s9VvH4yHMNUo2B
         5bRel9pZ4KcPFH28+Ia/P3NoZNREO7dyre9iT3U/l+q6W5IC1tRIdHu5gFk0aZbz7PlZ
         dwAw==
X-Forwarded-Encrypted: i=1; AJvYcCW+nYyEDWTfVaIaUuY8b3ih+SxW4g8cLy/UnBDDmHG9+HLN2/nqU6tfS94qTP10hRvnRobY4iHGETjT@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7TupV1SUbXeMFX+nsJmeMNcokVPA6kaOYt2ShqT+raUSMTDIp
	nj7Vowm86Bm5ZIPdiagPQKQEuS7ojiCx8S2AujO9e7M3WwD0yRWH2fTkDa10rSZ/K6TVoq95z4j
	9i6EONO4ctaEBHQtteYXMgzPTMnd6Qz4zhrIozxzLfjuERe0WxRqU2qUeJY2uNB5i
X-Gm-Gg: ASbGncsTZNg12dnTT5PZrBaQYLEb4L6/hl9DYa0PLGodMvR7CevlrLAkbahCU4RFi36
	2mj8DYEMP5Tc8sGB1n33kMXqsKmqqtZTET2VQ0XnxCqzF1HSBTdkSaZ2+7NAXuwzNUtgWE67JF0
	ElmWtbs5uFOYDibqTdMoTaru1P9EG5lqFh5gvTJJxyF+M3xINctaLZtbU7LkN/U3MQVri+CqBb5
	VoHHL2v4rBmpeB7bOrJOoZ04OKJYDcZduAM7SclemIS2hToUu8MjDuqwXl6t1sixPWyThx+39wS
	WL3JvJGGgHN5proQjIwHvI9sQkA1y+0Um4wPlkQrgXW0uwj8wDzfi3MdevvMOe7pqlU1ZrND153
	ktTDUYu+DM0lSzSoDC1oIV9kJ5c/gutRHuQcy8UgQcXV/wUFFPEHxo1/KHTP2rBzE4Rt+9g==
X-Received: by 2002:a05:6214:5293:b0:880:4bab:466f with SMTP id 6a1803df08f44-88453a568fcmr25309736d6.0.1763471923365;
        Tue, 18 Nov 2025 05:18:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGYqYNyYlpyKAS/uLzFkpcNv03+YatsNppSG0jkXgvsRgaloSBb8+VMXEFY8ZIBMcGEVBXgLA==
X-Received: by 2002:a05:6214:5293:b0:880:4bab:466f with SMTP id 6a1803df08f44-88453a568fcmr25308716d6.0.1763471921736;
        Tue, 18 Nov 2025 05:18:41 -0800 (PST)
Received: from [10.111.165.185] (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8828630e991sm114484716d6.15.2025.11.18.05.18.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 05:18:41 -0800 (PST)
Message-ID: <b47e6b6e-6cec-4470-9bfc-93008bd44a5f@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 21:18:35 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcs8300-ride: Enable Bluetooth support
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        cheng.jiang@oss.qualcomm.com, quic_jiaymao@quicinc.com,
        quic_chezhou@quicinc.com, quic_shuaz@quicinc.com
References: <20251113130942.2661069-1-wei.deng@oss.qualcomm.com>
 <8f22f268-988b-4504-a4c0-7cc9021dc8c9@kernel.org>
 <26841765-171b-475f-8019-2c349958af7d@kernel.org>
Content-Language: en-US
From: Wei Deng <wei.deng@oss.qualcomm.com>
In-Reply-To: <26841765-171b-475f-8019-2c349958af7d@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDEwNiBTYWx0ZWRfX5lbJyJ3vDbdi
 5My69rayKqN+tntrwYMIo4iJIn+aLSkmuawKeEpwgSQJZADL8tI5zwYGnNtol1mYiuugZxMZ3Yu
 Ya/M7War6X6c0HaxW0lxIUhUxlMXoRC6RLGVQxWAuPVVXoUSNm6YzyR64SCRD2G5VNao8HZI6YL
 0MY6qfAmtBT8nJnZC2XB/hd9e5XOlQZhSl0d5rhi9pP7nWpQ19UxLdC8R5UeoE3Xd6o+KYo69e3
 VmVEFK1q1Wy6l6TcS2NBBW3mYBNFF8Pp/Ha2DVNSKVbq/dbVu9WeUezzU9B3zwmaUoZcBwHT5tF
 QU6jJs1qLJ7v2HzKSxgvYQ7G12QKtQfj2dBwdZIfGln3AblAVxhC1TYEH+cEDljegtOeOv6nylY
 aIfjlNK8aKkYc/G6XKtipuY9aU5r4w==
X-Proofpoint-ORIG-GUID: nx_y_1opqjz2kc5uTi7-ldD7eqDiv7Lq
X-Proofpoint-GUID: nx_y_1opqjz2kc5uTi7-ldD7eqDiv7Lq
X-Authority-Analysis: v=2.4 cv=JfWxbEKV c=1 sm=1 tr=0 ts=691c7234 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=5TMoWVwS_HVFom52XzQA:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 suspectscore=0 adultscore=0 spamscore=0
 impostorscore=0 clxscore=1015 bulkscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511180106

Hi Krzysztof,
Thanks for your comments.

On 11/13/2025 9:38 PM, Krzysztof Kozlowski wrote:
> On 13/11/2025 14:37, Krzysztof Kozlowski wrote:
>> On 13/11/2025 14:09, Wei Deng wrote:
>>> Enable BT on qcs8300-ride by adding a device tree node for BT.
>>>
>>> Signed-off-by: Wei Deng <wei.deng@oss.qualcomm.com>
>>> ---
>>> This patch depends on:
>>> - WLAN
>>> https://lore.kernel.org/all/20251113055148.2729943-1-wei.zhang@oss.qualcomm.com/
>>
>> And that patch depends on something else.
>>
>> You make it very difficult to review and even more difficult to merge.
>>
>>> ---
>>>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 28 +++++++++++++++++++++++
>>>  1 file changed, 28 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
>>> index cd8800a59700..08b705fe4eea 100644
>>> --- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
>>> +++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
>>> @@ -18,6 +18,7 @@ / {
>>>  	aliases {
>>>  		serial0 = &uart7;
>>>  		mmc0 = &sdhc_1;
>>
>> There is no such alias?
> 
> Ah there is, found now added by Sayali Lokhande <quic_sayalil@quicinc.com>.
> 
> Anyway, organize your work in reasonable patchsets not 3 or more
> one-patchers spread all over the mailing list.
> 

OK, will re-organize my work in reasonable patchsets. Will send new patch.

> Best regards,
> Krzysztof

-- 
Best Regards,
Wei Deng


