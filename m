Return-Path: <devicetree+bounces-263343-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sMTmMLbdhWn4HQQAu9opvQ
	(envelope-from <devicetree+bounces-263343-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 13:25:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CBEAFD984
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 13:25:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 34906302AD05
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 12:24:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 596FD3A7842;
	Fri,  6 Feb 2026 12:24:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E7O8eZVb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GZNYKaXr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F583624A1
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 12:24:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770380689; cv=none; b=MeHqMyQja7pl5lvBvIjPT9WUl0h/QzYtEkL6mTTnVq9sSh0Q9cjtgS/lZ2HbPP+/YreM9E/2OTqcxG8iHXGgX0uhSJH3YKcgPOGA00wk53JTJXutUKEh4fBBjqaPZpybrSCV8costG8F97JDLRF1nNewGDwnhxXiJdKc4EIadXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770380689; c=relaxed/simple;
	bh=Kcw5tte/SQdqUSD5bhX770VA3mlzmi+RhGc5xPs8lww=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AUGRzVdda1Y+sDs/ZF/guvOqflRsHLn9MBnc+VfuQWh7Rhs60Or86AA5ZqjsggGOzm4TUIMgtogTIJPbXRe3EfjPIueBQbeY7s/F8Bc8MW8sljYTLMCRLYY5Cryc3mgGdZFqhd0p/QxIOyTDzE1vzT/R6ciZG71HRG34ksDO15c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E7O8eZVb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GZNYKaXr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6167bchr4042041
	for <devicetree@vger.kernel.org>; Fri, 6 Feb 2026 12:24:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FHIQAwiy6oasXdl51CW9qtAH/3JxSBQYKbol0cPU/as=; b=E7O8eZVb2/TsYsjT
	wYdPZPegyMJc2KhXkhBdarpRx+R5+GzKgi0CFRzQa3RJZLD5X4xioV55Xw8+8yFm
	q+ERXKKrgfKRS0x9GdhdNOUdNhN+nltXEuXdYQkubpZPo1qAa008ui3a3rgEih1k
	Mc5rFtB9Gc8OsP4s/1MUwRmvpBt85Z2Xu/Fnl3DLtqbPoKvFgLG0cz+uOfrFMLhD
	rcwerJEnbQhkOl1S3hHf0r+6RfVLM/Nksl4jarYpUq1b/akL902KLr3FMLAxFkhT
	5d5h1EuAZNP/vDpcqZpc3dDVTS/xkADrEavpSYelSfJDQewNbXabLQM5F6jDVWpp
	OU9RDA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5c2w0w11-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 12:24:48 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c6de73fab8so71670485a.3
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 04:24:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770380687; x=1770985487; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FHIQAwiy6oasXdl51CW9qtAH/3JxSBQYKbol0cPU/as=;
        b=GZNYKaXraUobKCiO97pYZyMG18OKC3XrLyW7LLUz7dae5jcoSDerHAsUvMvwhalrB9
         HdE7S5xn4KgAY/7095gVNxSMRkKJQu99R+QFGhU4+m7BakJWHwbvWhO8xbtLqfWvAbNj
         wnMsr1au3maS1Gy5tPktI2HQ4OBi+gCFJYNFTc6NWYYgvoY+bz9St8dFZI8rWGBOJooi
         MrfZDGlS4SgcV9PK2FA1VBeztjoCITSHZZVkEdNUvwxqHdAWsXFKVI44GXLxwrDYJZqp
         Zz5p5w/OPYudKc81Qc50VW63Gdzd/IyCKtr+NhjnJEZu7SGhdVRzya/m8DNYRqeCgrMO
         k/tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770380687; x=1770985487;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FHIQAwiy6oasXdl51CW9qtAH/3JxSBQYKbol0cPU/as=;
        b=b23Q8DjI4yb1tJUoF8rG3x0G23oBNAHdVHThnoSiCRHVvBHyUn15fCn6xJEQ9ahBJX
         4XrFK0Ct7Wp4xK5McDdtDCVoSh7vn7ryRYAt6s9dE9aUn7f87abXCOaKdYEZyMvw4AI0
         DXpZ9GJ5Vrr9cKzYFCjAaPWbF7tC16lPzCehogtgoVW0od6EA5efl2b4I9sL2qZjB4G4
         swGJbjbLUBiq1YGpRl9/z3kqOU0UnDObPSUJObPU7izFxacf+7iunj8d9T/YQ7qqVy9K
         ONZ91qZdjlIjeFzbvCvXC4TO3JcY6iAtYb+pVWpLMnxR0dKrOgXsZIJiA1UYOOhDYw9R
         hlzA==
X-Forwarded-Encrypted: i=1; AJvYcCWXbPDTrzxxFygDBO/lyp6W27yNmFB9LLmbyUPYcnevO9dwCWaPHJQqbmf6Oz5Eu+dMevrkFFVRaGJ6@vger.kernel.org
X-Gm-Message-State: AOJu0YxMNNWZXw5v/itYVXzapx4FBUBdFSI083+AmeW9wF99N9c7RN6D
	GyKV0iJvdZJcbJhNW8rikCA6KpBRyOISt/MsS+LTdZfGNYD5pthBJGcHS/m534utAYELn1WT6QQ
	JKn4g14ag5KJ7I9PNIHiRu5+wLf5V6usVJVy1qLIqv9RpLcU3KJtWrTj8G+HyEPXC
X-Gm-Gg: AZuq6aKvhGlrrkCVZpMj/t55cpBqN6nARUrvuE1RNJeYVsE8MeEH6DMsbIkrzzpww2G
	xAzANiNgsqF10w7yIjIQyMxgQDfIacEFfdJXZVpJCzVJtZVUmE0zskagp811dlGqUx7PpgNrSOc
	Wdk2Lmnf+9eFiuZloWvk9th2aqMxDwFI/DAZiAkdJXs3QB6B3QKUeoCTc0JoOgcSuTyD1qXEodf
	HfIpaoBqyPD7BknFiMWwoMfoo8VxWNqU0RE/pQAIl+dzYqlgnAqQSVJGn3bTY+8OblJEftYvJif
	MiFhS3Ba8ReOpUiP5ooLbFxvpizFSPAhBhgO3RZ+PanvJcJwJjaMuwgcRf18BSxfpOCYGd4m0Tr
	CP9H1bZiZCfX7U04711nkmkDhpjz5IHmE/TIiCkeS/Ac9iLxrHeO6EaflMjyZXOInII8=
X-Received: by 2002:a05:620a:3185:b0:8c9:eee0:dba6 with SMTP id af79cd13be357-8caf0e3369dmr230700785a.7.1770380687275;
        Fri, 06 Feb 2026 04:24:47 -0800 (PST)
X-Received: by 2002:a05:620a:3185:b0:8c9:eee0:dba6 with SMTP id af79cd13be357-8caf0e3369dmr230698485a.7.1770380686853;
        Fri, 06 Feb 2026 04:24:46 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8edae3ae99sm80306766b.60.2026.02.06.04.24.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Feb 2026 04:24:46 -0800 (PST)
Message-ID: <93c81950-e679-4c2f-b0f7-c94be471a1df@oss.qualcomm.com>
Date: Fri, 6 Feb 2026 13:24:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: lemans-evk: Enable GPIO expander3
 interrupt for Lemans EVK
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260206104642.1038381-1-swati.agarwal@oss.qualcomm.com>
 <20260206104642.1038381-2-swati.agarwal@oss.qualcomm.com>
 <s2z4z2evasqi23n2agroelphvmx5y24sc5nv7t57iib2tqsaen@cvricqqpulh7>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <s2z4z2evasqi23n2agroelphvmx5y24sc5nv7t57iib2tqsaen@cvricqqpulh7>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA2MDA4NyBTYWx0ZWRfX2RjPhI3ccmGf
 vMsBRxRxev+IM4LfqOBgmfbMisZWBHQ7PX9359+kM9tKoYzFhVjxQ/SgW49IFLEb64fkjFXLxp6
 7PK/76hPXbmpAwVTnC8T6QjHwbX58xQlcdQeW9IZOW26GlKTG4rencERdHIitJ/m8Hsv2Ic5ZuZ
 IYt2+4IzauRgDmZBF64r4q+te9DxK0ywTRdUk/v22kDuSFUtRjLjdEkjXBFUsGO+aKX2Xt2ZBJd
 K9KvlLC0eree4vvqXD4c+EUVyr2ZrtKCztfeEoO053J3vwrcgyEG9jEWJOG2OUA3gadikURRoER
 2KdRxPBdim2vs9WYmYuFTFE/Hjw3yxabEnzQ91SJq7KGscOjo4UE2bGrY6bavj4KSenBoMMaJP9
 2KAB75g3+KZ2MK4DR1CU2pnSJj7DA5YJYw7wjeU5zqZJPt2TlWFaXcsc3kyGrVJjZsusDcOwo/K
 U9trdVxVYY09r4DlozA==
X-Authority-Analysis: v=2.4 cv=Wtom8Nfv c=1 sm=1 tr=0 ts=6985dd90 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=8T1I-DRWcJqWW9-jwCcA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: ePDNsIZkehX53LRNYdHJGTrz4QIcVylW
X-Proofpoint-ORIG-GUID: ePDNsIZkehX53LRNYdHJGTrz4QIcVylW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_03,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 impostorscore=0 spamscore=0 lowpriorityscore=0
 suspectscore=0 malwarescore=0 clxscore=1015 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602060087
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,3b:email,qualcomm.com:email,qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263343-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4CBEAFD984
X-Rspamd-Action: no action

On 2/6/26 1:12 PM, Dmitry Baryshkov wrote:
> On Fri, Feb 06, 2026 at 04:16:41PM +0530, Swati Agarwal wrote:
>> Enable PCA9538 expander3 as interrupt controller on Lemans EVK and
>> configures the corresponding TLMM pins via pinctrl to operate as GPIO
>> inputs with internal pull-ups.
>>
>> Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/lemans-evk.dts | 13 +++++++++++++
>>  1 file changed, 13 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
>> index a549f7fe53a1..473cc2a81670 100644
>> --- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
>> +++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
>> @@ -649,6 +649,12 @@ expander3: gpio@3b {
>>  		reg = <0x3b>;
>>  		#gpio-cells = <2>;
>>  		gpio-controller;
>> +		#interrupt-cells = <2>;
>> +		interrupt-controller;
>> +		interrupt-parent = <&tlmm>;
>> +		interrupts = <39 IRQ_TYPE_LEVEL_LOW>;
> 
> interrupts-extended, please.

I think interrupt-parent makes sense for a child that's also an
interrupt provider, IDK if interrupt-extended maintains the
topology

Konrad

