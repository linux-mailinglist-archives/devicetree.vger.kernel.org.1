Return-Path: <devicetree+bounces-267596-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0GHjK5WanGmKJgQAu9opvQ
	(envelope-from <devicetree+bounces-267596-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 19:21:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A8D17B717
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 19:21:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 43696301A6B9
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:14:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95F6531AA94;
	Mon, 23 Feb 2026 18:14:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iRHSSZKw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="I7Azyk5V"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9C4033BBA4
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:14:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771870448; cv=none; b=nBTXJrQ77Bao98tseygOdKy9TU3q0Ru3wQru8vQP0gZLQshLdIq7STBxVvV2/tjAQpKWuYF9LPl5TffWWunUA3jr8N00Ih109hQyPbWO4zmlCmQldYLk133XKFe0ZBzGy/Xzy+OwiP/jg2zYL+kduv8BOLnlaf5Q7E6AYUGsGOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771870448; c=relaxed/simple;
	bh=t5c8HTVQFFK6SR65sLMMRCj/tKPnC2Vs90IQgfid574=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ItIzQC8mUSXL6Vr5Nz3b/fURI/cOOGiGk1nG1SEA0ldu1h3QFg2be4Le1UlbR5Vs0Cjds2HEqfEcGxarEajQnvUcnvELs/BD4dKGNi+ftTKiZH6rqe2ttkZZui2PTc5wqoDFarxs9RA+lhjdKA+Tn9POnk46looGDTp2qkG3+AY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iRHSSZKw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=I7Azyk5V; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NGRbb31641380
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:14:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uMxCXETim4pZgjyQEJ9B41Fp8Ce2XQixYnJKPqTI2og=; b=iRHSSZKwbjPahLlg
	T6knaUfDb+t1XH5kjmEcBh5CdItxGiHt44lnR/MITxPW/gO/FY4Ob9uV6s653OYl
	g3zq+iucOEjjE2bU7J1ZQSuLhPQk6UbGp5cnCHzSDUS9BGv2U6xRuWFPU+FLpbUo
	xiYM0na6fNQ2F5GlSNQvCl4EIO4dTXE5xZp+79YRWwswni/t8QT0WNMUUZcaoRUa
	Q/ybG1sOfznVLTm3hhUcK5AC5VCoUBKrFDpnReRPVoiw/HxSLo9xpfL1IIBgWr8x
	5Ll60oweA4nRFXmD7acUvm0Hn94ENpqAyX25gmSn1oQ9AthWac+CJXIpkNCQVTw/
	MXe9BA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgte8rbuf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:14:04 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb390a0c4eso1704897385a.1
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 10:14:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771870443; x=1772475243; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uMxCXETim4pZgjyQEJ9B41Fp8Ce2XQixYnJKPqTI2og=;
        b=I7Azyk5VrjqnWaNbdgZLUe3fD9bT/zPVevhuiBI5+QEcG9jxba2ST+WF7LZGuwV8+Y
         aanbhZYEcPO/7davX8wz+T6MjMkuum1Pa3iDSycqpnL7Dxgq+kUYCVDncdXR8Cxe0HsS
         Lo8hixFKogMRJoFejHyWKG7DucdirYHoiBCE6e13e8Q7blofEVbzeZItFLIHnu1PYQTW
         /JSLG+H//8Y7THsyNDpzUe3tW49WfiNpvnzKb2gWHeG319UGZ/xBbrng/PBgYLeHwZ/7
         OCN6yyD4sYvVBYRlUEZOEq4SzSFbyK6nKLBERHCTWBd9AlzqZ5503FZSny6DdEK2wtke
         0oHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771870443; x=1772475243;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uMxCXETim4pZgjyQEJ9B41Fp8Ce2XQixYnJKPqTI2og=;
        b=voK9vLN5AAwkMS1SWvsm8kxQVK+f6MGZ8VtCbKK/yg1TAvl3DKhg6k8hbaawkG/unF
         NnqecB1OX9bdkHfXB9HO7imeQpBAYKevBx96Q0M//KwwRVLwbsQTLIVUC6wrhOIZC2pZ
         +9sW0A8tkRvRRLY679wBG7cq8TAUf8O8Ch9RKvOilKuXYcGMHbTDknvtg1q/Q9kF9o/1
         ThKfUHMjMmmec8K1xRtUmqeXw0ltRJVUwZA7aim98nZ6MtJR3Si5ZlPqdZbssKVLiEx/
         sM93QsczsRvXC4pnNdRsemX6/Kc28nq93RctkmWGYu/+gIDABupp3o0+BqyNI38AqMzc
         QH7A==
X-Forwarded-Encrypted: i=1; AJvYcCVXbYC6UwPDzB0LNe/gCbggFfNvixO7L75p8qiStYijSSxWKvjYYDdTAPFgQsJ+w0IymcL2sXzulPr/@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0VGh6ELcTE11hecOZJNWgjy5il0W3caFEZYxZkTV7KjJOR+qj
	3tjezRH/5FyftAkL9Pj6UIT3nSO42VCcy0UrQAXfwSUlgc0NRLkW0Gl33JtUvTfmW4NnZ0NRYgi
	t+IDt2umhcfLcQGY1+png/JoU/rPJ9zlaE/1eyjS8TehCVAY428SnOTfnU/ul5S07
X-Gm-Gg: AZuq6aKP8D+hFTIeR3kfDi4QaL7OE8s4ZraHCanO3W59L9igdYaZHtAwWXJbUI699P2
	Uksf0JMWeZ6NkGK0JAJqkVxqikpMYPP9K71M/9mIm8grNP4Y2fuJJUIVTMbUcZogNdxXkFDWokL
	pSoLnn08+ZYC1BAqgO/wvJPOoeicb51NlcRYLRctWienpu4ulyZ2Y7cRrVazz/+yHnL7kSQOzny
	Rg02EevsK2pdONNwHv44HGQBCSkp10rMQj2bWPMyaST3XRrdWxKSJbwZYQz+yy1+Zpl3+BG8fU/
	05qRMy7NiDn88LayOpdyEW09tv3cO6AMzmeCqXX/3xV4+9Jm7cvXQTo4ReBhcBxhvda+DCW9NSX
	5BBRvju/99v3ShkiWY9hiIaFUfMfYnln3wPj20ImYDDBSMNy5
X-Received: by 2002:a05:620a:1a85:b0:8ca:d5cb:6839 with SMTP id af79cd13be357-8cb8ca7fbd7mr1138922585a.65.1771870443622;
        Mon, 23 Feb 2026 10:14:03 -0800 (PST)
X-Received: by 2002:a05:620a:1a85:b0:8ca:d5cb:6839 with SMTP id af79cd13be357-8cb8ca7fbd7mr1138918385a.65.1771870443184;
        Mon, 23 Feb 2026 10:14:03 -0800 (PST)
Received: from [192.168.68.114] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-43970d4c96csm22839756f8f.30.2026.02.23.10.14.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Feb 2026 10:14:02 -0800 (PST)
Message-ID: <7c7ddd2c-c700-4453-a6f3-7d070016aa1c@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 18:14:01 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/5] dt-bindings: mfd: qcom,spmi-pmic: add compatibles
 for pm4124-codec
To: Rob Herring <robh@kernel.org>
Cc: lee@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, sboyd@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alexey.klimov@linaro.org,
        r.mereu@arduino.cc, srini@kenrel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20260223133950.221234-1-srinivas.kandagatla@oss.qualcomm.com>
 <20260223133950.221234-3-srinivas.kandagatla@oss.qualcomm.com>
 <20260223165636.GA3988149-robh@kernel.org>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <20260223165636.GA3988149-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: ea9LwSnUEBsTbA_DZPxMRJEy6H-KDLj2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE1OCBTYWx0ZWRfX8Wj8Yywk2biF
 8YMn1PX1KvqIaxUgLXr1UO8JSxR8rs6zvTf4/leh53Mp68c5S//1djg6sUHOVjsibDREtbObY6y
 GT73a173GUvX8ZlEv2qvbUUX3B55S+KjC+WRl9ygWZsqhi3Cj9FyHgSDIX1wrrjf9PI+g8iM3hX
 oMPaOJ0GiG5UEg61lSteNcg2AAN5EPorjAa3By/XDWk7zTQ93NPd2q5sF6XAcXbyJgUbi/zKtn9
 vu8S5CwZ7G1yboZg2YSO/UGjHN2/tih2PFNpdseY2AdZLZG3qEYu7xInhifyyk2l4O/JuRFH3G1
 tS3rGgUV6eLt1j5pkucH9fM7fn3xuLFa8fUAuDmseVNyLPj27W6fqtBBHt+Njql08DEjsuKozub
 IpZZAy8+SNPpEiGnd1lNVYy/UBCrIPITQlEOmDb6FHgwxN5FlfaVkL4lHBnO2Jb79cQnu9etI33
 HkUzL3Z3WmpU2+VVzGQ==
X-Proofpoint-GUID: ea9LwSnUEBsTbA_DZPxMRJEy6H-KDLj2
X-Authority-Analysis: v=2.4 cv=WqQm8Nfv c=1 sm=1 tr=0 ts=699c98ec cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=bMBjfq_dd7qU7rFTbikA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_04,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 phishscore=0 suspectscore=0 adultscore=0
 priorityscore=1501 spamscore=0 impostorscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230158
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267596-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,linaro.org:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B5A8D17B717
X-Rspamd-Action: no action

On 2/23/26 4:56 PM, Rob Herring wrote:
> On Mon, Feb 23, 2026 at 01:39:47PM +0000, Srinivas Kandagatla wrote:
>> From: Alexey Klimov <alexey.klimov@linaro.org>
>>
>> Qualcomm Agatti SoC has PM4125 PMIC, which includes audio codec.
>> Audio codec has TX and RX soundwire slave devices to connect to on-chip
>> soundwire master.
>>
>> Add missing qcom,pm4125-codec compatible to pattern of audio-codec node
>> properties in mfd qcom,spmi-pmic schema to complete the audio codec support.
>>
>> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
>> [Srini: reworked the patch]
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>> ---
>>  Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 6 +++++-
>>  1 file changed, 5 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
>> index e5931d18d998..f58a85562c26 100644
>> --- a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
>> +++ b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
>> @@ -145,7 +145,11 @@ patternProperties:
>>  
>>    "^audio-codec@[0-9a-f]+$":
>>      type: object
>> -    $ref: /schemas/sound/qcom,pm8916-wcd-analog-codec.yaml#
>> +    oneOf:
>> +      - $ref: /schemas/sound/qcom,pm8916-wcd-analog-codec.yaml#
>> +      - properties:
>> +          compatible:
>> +            const: qcom,pm4125-codec
> 
> Don't mix 2 styles. Just do:
> 
> type: object
> properties:
>   compatible:
>     contains:
>       enum:
>         - qcom,pm4125-codec
>         - qcom,pm8916-wcd-analog-codec

Thanks Rob, will do that in v3.

--srini
> 
> required:
>   - compatible
> 
>>  
>>    "^battery@[0-9a-f]+$":
>>      type: object
>> -- 
>> 2.47.3
>>


