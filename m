Return-Path: <devicetree+bounces-235128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA25C34BF1
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 10:20:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B2350461576
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 09:17:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BF86308F3A;
	Wed,  5 Nov 2025 09:15:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pyq3fs5k";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DW5/wl66"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25ED1305E01
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 09:15:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762334118; cv=none; b=nfEYHiM0yzDYLoC2dgYBrBUwXHOzqjkQxU+X0yBVpBw/A4nCmAqDzMEs8xKs1JhxtmQmqn4jDDxe8Hu7F1Zr9rL+L3eUx5J8K/d2/PuqjzeaCmKg/BijwvTnYFi5XLWdVj/N7WN8VWzq3OVvBAO2ghnU8YR73GF4h2FwXNqfpl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762334118; c=relaxed/simple;
	bh=sWj4L7rhHobdbMJRSjrMT5uXvj/hcYdysU4hDlMLJY0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rLfb5EoWdkowelUk/cdJCsfyljCqWtTbDtg8oifuR+zHC2yeUc6yBTRKcCUm63xBN6aNYFQkVl/q/AfJFW7ZZ+DIEFDnlvVMnUqbHjlFGzqsyxLtxmRw2AK5sLhD2U0uv4qu+wIdb88pw9MBel8WPtdItzNKrpJ7ptWULBtS4+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pyq3fs5k; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DW5/wl66; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A57tDKq3165123
	for <devicetree@vger.kernel.org>; Wed, 5 Nov 2025 09:15:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CNO1o1W8xxRWQs3VWl/BSPCCofHOJOL8K7pYPyBtsdU=; b=pyq3fs5k1EwmNBb5
	SbuQ9BBryy/yy9ZIvxAJphDY1eSrYrf+oSoBI9avapGUN5os6inBTFI/wCnp8y98
	2MP9eb927GxbjgM7O0uxDr2vP45rtEBfSFY9l916nPQbsGDUwK+XV/wbTP3U4Cc+
	/YvAKbLCW/DAriVdCDlZKR9ek6ju+r/3AyP3/efTcrJQayuLWvh48msqp9lr4m7v
	GjvsusTvrVM9b5emgMLacpZGBsHnhNFr7foyAPQyhSIOGGSZ585kUmkmFhgbdh4p
	bifEwdaZh6uOKMDY/nXfNJzORowqcyxfkPfnyv9WjLUXj88DREKdLO9kxPmYWDCu
	WqKoPA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a7ketk1xw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 09:15:15 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b1f633955cso41090785a.0
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 01:15:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762334114; x=1762938914; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CNO1o1W8xxRWQs3VWl/BSPCCofHOJOL8K7pYPyBtsdU=;
        b=DW5/wl66RuKMArp6/OzI4dcm93NEjOP6jGCP/CjndYxUtKbr1owW3RfqjdIAhdrgwM
         gMgMAQ7v+EDu8TolrxSq+qnUi5ooRb5DK2aG4Ulwc4OlPFb8OWi6zaCaZFEU3I+b4o2w
         pzRuUBGBhQmkYbRqnBGz6kR2kVyILzbHMEr5yii+FCOs+aojBAYAVvwI1+1cYo7KFFq6
         CCTSw5kxHpnyu5EujeiSZyrNU7wOvomvb4KSs2zWoennCOLnSDujxyj0AHDArjhXTOSp
         0bRjsL0JskF6WyAN3+APg1qxAqpG5Gz5dw+5kZfcNzEC86MBIme5AF86gWIKOps0t+N2
         sYsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762334114; x=1762938914;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CNO1o1W8xxRWQs3VWl/BSPCCofHOJOL8K7pYPyBtsdU=;
        b=n+LN5BOsY4QLelOGFGQn40/bEk+vLkOdev9X6W0WLzV6LhMF1kT9g7RA90gKdhmAgt
         EcydaSZRAJSMgLV86bL7mW+2nFigN5s7tWDfWJasWVBLwwaCwCkgThRZ1XPwJ0fa5grI
         xOBikkkoTjiA6S6jIJymBzFKnP4de1CDy29V8Add9zb1je+oDnytxR2GESedaqHWuYI0
         321SHRcJVtr6wgjCKtkJC8s1+LUUtAwgI8IOQdGf6+Xr8HqAC0y7zhUDheFbBahx5AKj
         3fURl9i6ThvL+DU1ZKZjQhcP14G6fM7JcFqI1Atb/lCU1BaPv7PZdH3xr5amhBQHbecR
         v2BA==
X-Forwarded-Encrypted: i=1; AJvYcCWA3ZMbmdGuQSFlK+k7tlVrdFqcGy5bEf7kfFXcrn1N1koODzZrYAdgd1vXbjXpNVu2uHrj3hN9Fr+o@vger.kernel.org
X-Gm-Message-State: AOJu0Yxt7w65gkRIbOtzaHFDDsbs6vmaF6agEr8nXs3miXhqxrI1WRdT
	LL9rtqESfutmOKOGt+LRJm7C4PGc+mgL/Zp+n8aZPYL8NNMzxfutV3gS+IlYtThaEEOq5dbWgoi
	pESJaR9Dq8N/Yt+zR4mTyKeLaIfEQS7//v+OE/JvXdOzra3gsSIY+Ygo6SBIDT2R9
X-Gm-Gg: ASbGncvG0BZGJou5Gk4TT4oN2XuWtArehh0KL3LGQlYG/AoQF8j9m4L+uWB0zOnksnS
	fudXlAtMUxEGslO//sgV/AGBqrUQcXII2gz7NqDqlBZUBDQTqNL+ceQ9nNTkVHdgyIK+x4J7jxf
	T7CZtNLJi8kL54tIh7ZsPZ4xyVJSyH7QvwnyPy9uhncVAt0I0GvmI+zYOh8I5TiaAnNjtv5WZmd
	dQ3J0IXZ8zlEDBQQErWapxCQH9XWXxMIXsVA7rpkC8S6Z5IkLIW9oqRGzr9qaWWSc+bM0IylGJQ
	p++q3qjiFfy9Ko1zpaq9+jGOCgKT2GCV/eQ2fOFu7mDJn2IP8IzIKfj+pBNnkbS7pNOnSeFkCSL
	4n5jZyfJhGchVqHyPGk79I6TF6BFWWmkIbhWoCU9xCuyp5KF1oc3t9KJU
X-Received: by 2002:a05:622a:1b87:b0:4ed:6862:cdd0 with SMTP id d75a77b69052e-4ed725b2536mr21086061cf.10.1762334114372;
        Wed, 05 Nov 2025 01:15:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHKCyR53MAEhxPCCJMTiIIV8STgK2JXLFsaUXOmOdyEzKsbeVODCnY7EWuvHFpinlf+crPkeA==
X-Received: by 2002:a05:622a:1b87:b0:4ed:6862:cdd0 with SMTP id d75a77b69052e-4ed725b2536mr21085841cf.10.1762334113881;
        Wed, 05 Nov 2025 01:15:13 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-640ed469107sm3508933a12.17.2025.11.05.01.15.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Nov 2025 01:15:13 -0800 (PST)
Message-ID: <cea360ef-dd73-4f6a-aacb-73a1119ae43d@oss.qualcomm.com>
Date: Wed, 5 Nov 2025 10:15:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] dt-bindings: remoteproc: qcom,sc8280xp-pas: Fix CDSP
 power desc
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Ulf Hansson
 <ulf.hansson@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-pm@vger.kernel.org
References: <20251104-topic-8280_mxc-v1-0-df545af0ef94@oss.qualcomm.com>
 <20251104-topic-8280_mxc-v1-2-df545af0ef94@oss.qualcomm.com>
 <20251105-dramatic-denim-kangaroo-cef9ed@kuoka>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251105-dramatic-denim-kangaroo-cef9ed@kuoka>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA1MDA2OCBTYWx0ZWRfXzlqcCa+Bb0Na
 6iCUgpujSdg90AN8DPrTzyU3aSZJ5A/exMcbiz7YtDgMIRHhepzedpLQEU0ypUkSJ427VKkFvEB
 sW/seRMY40DHLfNkyM0vJzS93snCZKpg8J9jv2ROph8EK+NgxJ3U8Vx2KO9w+tJgJUULyGkAwLR
 r321nIXVb9DCVzUBIeioz5SX7bWnclwGCdYEn7zMKO90ickNBkW83V48+o7wbFQteMeUhQq+Qwt
 vc3o/kR5J5fuYVfsQ3n1+ZveHlWMvKCP/3DPOUi7qalyaVzW7H1vBec5U8uAQDP3btWmmL3vbDC
 gUqesQj+NAOc68G4ovBTYqUVefUJwclkAM3kHNM/GdDiSPj6m3HXWHHuIUBoI9gmvpB9nLh/hTW
 v1etKB2zo1XObnZcR9VmNLc1e/hJ4A==
X-Proofpoint-GUID: DuJzCqRZe7dd3NGe5VEWetie7LlR21FO
X-Authority-Analysis: v=2.4 cv=IdSKmGqa c=1 sm=1 tr=0 ts=690b15a3 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=w53bJKq3yDHGtliSC18A:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: DuJzCqRZe7dd3NGe5VEWetie7LlR21FO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-05_03,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 clxscore=1015 adultscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 impostorscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511050068

On 11/5/25 10:14 AM, Krzysztof Kozlowski wrote:
> On Tue, Nov 04, 2025 at 08:31:07PM +0100, Konrad Dybcio wrote:
>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> The power requirements for the CDSP instances on SC8280XP aren't fully
>> described, with only one of the three present. Fix that.
>>
>> Fixes: ee651cd1e944 ("dt-bindings: remoteproc: qcom: pas: Add sc8280xp adsp and nsp pair")
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> ---
>>  Documentation/devicetree/bindings/remoteproc/qcom,sc8280xp-pas.yaml | 4 ++++
>>  1 file changed, 4 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sc8280xp-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sc8280xp-pas.yaml
>> index 96d53baf6e00..5dbda3a55047 100644
>> --- a/Documentation/devicetree/bindings/remoteproc/qcom,sc8280xp-pas.yaml
>> +++ b/Documentation/devicetree/bindings/remoteproc/qcom,sc8280xp-pas.yaml
>> @@ -91,9 +91,13 @@ allOf:
>>          power-domains:
>>            items:
>>              - description: NSP power domain
>> +            - description: CX power domain
>> +            - description: MXC power domain
>>          power-domain-names:
>>            items:
>>              - const: nsp
>> +            - const: cx
>> +            - const: mxc
> 
> Heh, so if this was described since beginning entire binding would fit
> 100% into qcom,sm8550-pas.yaml, instead having this now in different
> file because of different order. Not great. :(

Yeah I noticed the same.. It's probably not the last conversion like
that which will need to happen either..

Konrad

