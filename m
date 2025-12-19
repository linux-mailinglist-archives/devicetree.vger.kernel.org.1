Return-Path: <devicetree+bounces-248232-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 43950CD0132
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 14:33:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 47AB4300CCED
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 13:33:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08BAE31D37B;
	Fri, 19 Dec 2025 13:33:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j7gJkZS8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YP51dDFW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466A5320A06
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 13:33:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766151199; cv=none; b=AX5OaZ3TNOspjaHA6ROtB/iW73W0nnmZCY8LwLozsKPClNW7kkYzWwJs6pN/SJl6UfH6BKZaWsRPoLd7dqIZtYDZAasW4iMTHL/aTURjzl2eTSXQ0dp4Tg2RzNRC/QV1F5NthKrUTosSvjfo8yUl9rx2DQ2KgoTBwQQ4CXtF8VM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766151199; c=relaxed/simple;
	bh=y/78bf5G8lbi5N5++TA4RIXe3uQy2zd6zGvGNvFcGsw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=W3IYCQNcms8yfnDh0XqNAg1memxxrKg8LxLGq+TGqocfEciXcsLtd1wQ3JMMFn2JsaV1EFEB93GZekEV/jsuzKgXAkNjBy13lW+09j4IGBWjKopkEkX7+2fzDkAbC9x7pswAgwfSnr11s1PS7jn9qh3XARhNvCfvIbuTTdoPg2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j7gJkZS8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YP51dDFW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJBXcmx091384
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 13:33:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	O9orEthglfu+PnjZEtg1EkiIu/RLCFUj7Foj950BKbA=; b=j7gJkZS8JIyUln21
	3sDzcMn6Rz/XkNAJpjracuXz4vZzP3V9naurlQrV2EMBqbSIlcaKEG0h4Mhhj/1s
	FuCvtn9RtXtQd5hhvGPOGU2mkSpkE2XQ6L5SY1Js76SMHLm9Gw4ge0awbIT4nfuh
	QviP6wTAk8rmeXACVByOjPG4H1WbhRtGd5K3Dk32Qo+VTxTGFOkKMFrclrUpWNn+
	b2q0O3trEh6PXp9shWgLQh4MCkVraX6P16qtDCiKy6ejUuiIDZt0/xBKioSZUIbK
	UPbE/ihlLqvTqVuOoF2Tv10PdIF8PZlenFCt9tQd5ewdR34AiNhLT957nPWzces5
	jc73TA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2easvb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 13:33:17 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee05927208so5593761cf.1
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 05:33:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766151196; x=1766755996; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O9orEthglfu+PnjZEtg1EkiIu/RLCFUj7Foj950BKbA=;
        b=YP51dDFWZKLWMN7xpnIaPrEoHgUN/Me/KvmWksPMcV4Y+sxCpyCF/mIgh5ykMEO9ve
         OYnI3wpwJMdLNgKydJT9EmumElHOG5sUwqLQUXwd2xYkV1kIVUaLuRImwBoc5GByLp6F
         rnB1S82guRiFrpNmvl7ji+71Q+O4NGRviBUgx8zT0wFMMYLXyezIEKp914Xy0mcV/ycP
         cGA5O7xp/EhMCCEDxyJEKEgkXO64oAVWe5csRuZqHKFX/TKwLxBBZ0u7M0KkGUNIzudn
         6OTaq5W2Td31niT8ko9UsQT03Olh7FB6wLKhBiMn7lE24R8pRz7YGfcnCYEDCwrcwKYD
         9C4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766151196; x=1766755996;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O9orEthglfu+PnjZEtg1EkiIu/RLCFUj7Foj950BKbA=;
        b=H20VWoVanwoXinLbHje0kQxnLn/X+MPzKcjvFvLbNZcDaxY1IfCQLByu0dsxOo76E+
         SG6rjKvxOLtzWSPpO8X5BGjFSfhKp/U2jz+UbeQYg55MwDFJlVN6hzY4o+rIWxHdL2jH
         HYtOMLa6Ukm5QIP/H4z2vyTa0nEwqIdMjgBVia8Gn63+xpq3KAz21K41/7/tkqs4c7ro
         iEEBoGloFgmceKnfys/qrDeZSYA+cvaBFUxzTTuLm433gJ1XImiRgEq/jbqrUOSmj9/a
         s/MfclHDwSTM5bRqND3wGXHWyO2cRgPxTqP+u6irHuTDNhCnxJT3xOCkv1h3dzyBv74B
         JeNQ==
X-Forwarded-Encrypted: i=1; AJvYcCUmOsi3/N/Cijc8lunAvNQfwWS0Hlgra7NkDySTMd0/gT9KZIjLT8q+4m/D+mrWgZw6ljxVqR840Lf5@vger.kernel.org
X-Gm-Message-State: AOJu0YwsQlYnHUyQ4lTkhB1Us+quWgnR1ZU6Nfd7hoKbflyYiMAyOiMb
	Nzg02RVwxPavs+yojS9UCY+rB/kRRukKHIBBfj3G7DZA+2zW1xmrWrZcycPp8n0aMZuD4ppyFQb
	DPXHdoJFGJFOkHTbycLgNaE/o1FaZhCLMChwDK2VGCuu5X/W0lPvaiWwpncKh5E7u
X-Gm-Gg: AY/fxX7MAiFnwjCXcqNZGjtVQs9kYLjdJQcuB9mB1nOTGXVHJIanGVu2CPeYaQPr79Q
	gGiKOPJikpDykP7JKh9HD2qkjOyjoTzc5+CQYUF8Lr4nK0/su9zctSLGsfvCta/sOKbxRjYrFFJ
	Jgg8z4abmAkzUzJv4Ia8osVxYrQ0a8bKlMvbZEsetccYHW+SAsWTdhOnqrEIxgfAghI4NcHw/cP
	R61uKPGErrXwlKgC/ynhFNWBwFsjXTgvXa3BdZDIyg5GW7yZDWoqZM8ItFnRASkorzinj5qZMYu
	4oYT0u4TRijw/to9bMbWYF2PuMv2AS9Zbi7nB8GiRrgjQJI/nWb/vDH8H9mcns0VWvC4KmKFatH
	94LWED+ordHfkP3v3aOoWEhZv1b9M3QiJpHAL5VSMx2GXAqWJoaADlqy7tD2EenNPfg==
X-Received: by 2002:a05:622a:14:b0:4ee:1367:8836 with SMTP id d75a77b69052e-4f4abd1239emr30865611cf.5.1766151196479;
        Fri, 19 Dec 2025 05:33:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFCRQttfRGvz4IETD4ibzOBiHm3VS45e6KRJmrOxaGhERSR383GVg/VvQup5ivuLKP3chW7qw==
X-Received: by 2002:a05:622a:14:b0:4ee:1367:8836 with SMTP id d75a77b69052e-4f4abd1239emr30865151cf.5.1766151195895;
        Fri, 19 Dec 2025 05:33:15 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b90414649sm2245506a12.0.2025.12.19.05.33.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Dec 2025 05:33:15 -0800 (PST)
Message-ID: <b58a6cf6-fb18-4d31-8b45-85a76192f7ac@oss.qualcomm.com>
Date: Fri, 19 Dec 2025 14:33:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: monaco: add lt8713sx bridge with
 displayport
To: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vishnu Saini <vishsain@qti.qualcomm.com>,
        prahlad.valluru@oss.qualcomm.com,
        Prahlad Valluru <vvalluru@qti.qualcomm.com>
References: <20251120-lt8713sx-bridge-linux-for-next-v1-0-2246fc5fb490@qti.qualcomm.com>
 <20251120-lt8713sx-bridge-linux-for-next-v1-1-2246fc5fb490@qti.qualcomm.com>
 <7d31f45b-1062-4118-8769-49209908f2ef@oss.qualcomm.com>
 <aUU05P+xP1XdwihO@hu-vishsain-blr.qualcomm.com>
 <4112ba0b-6feb-4e30-a57e-50ef9e3d6b5e@oss.qualcomm.com>
 <aUVMFTtVLPe7re0L@hu-vishsain-blr.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aUVMFTtVLPe7re0L@hu-vishsain-blr.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDExMyBTYWx0ZWRfX+Fl98ciD00Ck
 LGiI5yVFxCtfoPIMZdMyQoyLlNx5VH6PLcBB2rTDuuuP9NUCZK4UHIOfVUckPQ7s/9vBrmylY8n
 kJktfWrJxZySDgsifd6+AKVxbc44BbsWwlkza0gYvggxL4vWrjk+yVMWrywXni6qWAnxBGFWwoN
 asl3sZE0jbbNc6A4n/4oN4l9nEorYSToURiB7qc///fMjoxeyhehidCCUhzGEcfLQq3ZmhS89lG
 5YcXslRC3ibkKBpYiuHnmQSuBrnym+END5dmDQX6gj4Yhh4et78bnVlbOnqDOTS6t06+I5iyXCe
 UKFgktjNrAKYyf6Ma5oKgk5f/0VsjTJ7e1yrFfY+rB3mDvowO76B6VGetCN42J6hArDzXqu08e4
 1ltwK6UIsSnpKO8u0SZ6Dk7BzCLxYpJ8Imj9lzvR8aJt1jSM5bi2ilLiYX5fP7E7Yid0c4M4TWh
 9n55G5z6LtavZQvw/Uw==
X-Authority-Analysis: v=2.4 cv=W+c1lBWk c=1 sm=1 tr=0 ts=6945541d cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=VRXACKE1YIbZzR_II2oA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: RVIp58zHDl_s_FEhhoY7f2pEpzYnSO-A
X-Proofpoint-GUID: RVIp58zHDl_s_FEhhoY7f2pEpzYnSO-A
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_04,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 lowpriorityscore=0 suspectscore=0
 clxscore=1015 bulkscore=0 impostorscore=0 spamscore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512190113

On 12/19/25 1:59 PM, Vishnu Saini wrote:
> On Fri, Dec 19, 2025 at 01:10:19PM +0100, Konrad Dybcio wrote:
>> On 12/19/25 12:20 PM, Vishnu Saini wrote:
>>> On Thu, Nov 20, 2025 at 01:11:00PM +0100, Konrad Dybcio wrote:
>>>> On 11/20/25 11:58 AM, Vishnu Saini wrote:
>>>>> Monaco-evk has LT8713sx which act as DP to 3 DP output
>>>>> converter. Edp PHY from monaco soc is connected to lt8713sx
>>>>> as input and output of lt8713sx is connected to 3 mini DP ports.
>>>>> Two of these ports are available in mainboard and one port
>>>>> is available on Mezz board. lt8713sx is connected to soc over
>>>>> i2c0 and with reset gpio connected to pin6 or ioexpander5.
>>>>>
>>>>> Enable the edp nodes from monaco and enable lontium lt8713sx
>>>>> bridge node.
>>>>>
>>>>> Co-developed-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
>>>>> Signed-off-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
>>>>> Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
>>>>> ---
>>
>> [...]
>>
>>>>> +	qup_i2c0_default: qup-i2c0-state {
>>>>> +		pins = "gpio17", "gpio18";
>>>>> +		function = "qup0_se0";
>>>>> +		drive-strength = <2>;
>>>>> +		bias-pull-up;
>>>>
>>>> Similarly, you can move these settings to monaco.dtsi and keep them as
>>>> defaults since 99.99% of I2C users will share them
>>> Is it ok if i update this in a different series, similar other nodes like qup_i2c1_default
>>> added in monaco-evk.dts?
>>
>> No, I don't want you to introduce something "wrong" only because you
>> don't want to run git commit --amend
>>
>> I see you've now sent a v2 just 7 minutes after asking this question.
>> Should I interpret that as you expecting me to drop everything and rush
>> to respond to your queries immediately, or do you not care about my
>> feedback anyway?
> Apologies, for quickly raising the new patch, i thought of correcting this
> in next V3 patch if you ask for.
> I am new contributor to the upstream community, just now i setup mutt and learned a bit about
> sending reply to the emails and V2 patch was already validated that's why i submitted it.

It's okay. Just please try not to do it again - it's really an anti-pattern.

> monaco.dtsi already have below node except drive-strength and  bias-pull-up.
> tlmm {
> 	qup_i2c0_data_clk: qup-i2c0-data-clk-state {
> 		pins = "gpio17", "gpio18";
> 		function = "qup0_se0";
> 	};
> };
> I will add drive-strength and  bias-pull-up in monaco-evk.dts, let me know if this is ok?

That should be fine. Other SoC DTSIs do that already

Konrad

