Return-Path: <devicetree+bounces-273421-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UFBVN6ror2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273421-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:47:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D443248C87
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:47:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 13064315E7E3
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:42:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59E9143DA46;
	Tue, 10 Mar 2026 09:42:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UVFbNN7w";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GnN4E9KB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD3263451B5
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 09:42:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773135730; cv=none; b=DvveP6MEzfEnIqw+/bbNK8g8JmaIrWJcFfHvIxJi3CQtRvhevV6f0FPQdUqK34OXdjC3bueAdzRvNTaclwRtM8u3EgsUqqmCa2xDuZNEMU/u1EQ5+JFdhTK4IHwgBmEmuEQgIFJjb3eI80g/unXajePX8oHUwnJZq92ebr222b0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773135730; c=relaxed/simple;
	bh=bD/4bnYSirndGUL0J1A1EmOJVqndfilXfQsnQcUiwa0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O1fOWFGgllQZKOhcgxm8ugNEuUhB6taoIt+rkXPJCVtem1+JbOXRzXXvylrX9AHeUTB/BKv9aPlKVPVr82AJ8ZNNm6g2vPAPsTIuQo6e5jRVRRXtAFwX89V0sUG53sI6ckwd2dSqL+6tLshw4giHMzx0NoCxI2x476CSBpxJaYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UVFbNN7w; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GnN4E9KB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A8qGXE3693056
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 09:42:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+9PLSR3xKMehVF4KMjG/IYea2QIcahUxs3nwETs5z3c=; b=UVFbNN7wPg3pyZte
	EQjpXvYYFB0q3TsDCTwR3mYOrxaGjAUdRQynx4VuHADmAKeIuJvvwoOE4DrYPf6J
	rj8pV87504HA/VPB8jhnJeYzbEB62vf8WEuX392hdY57cLAlS7Qyz6Jp/9tqzDuA
	InTT94tL8H8x1oZdHKAKpLDOKtkb5TchvmzcBJ8SfXcdO4IP//8Qd/ZUfQ6exrb8
	aTAPbUtIwPJ1l5oJJM613Fklrs2C0aKIDs/f2JQVMA7bmdjBClnBcJUo83DlhuMB
	ZJQbr4RZb2eqs7v+XBb/ps9oXhTmbUhy8HsGRMTirU7cN7mQAkuq1LkVyPOLR3pY
	RjTlVw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctg5ng6sq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 09:42:07 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3598c05c806so8916477a91.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 02:42:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773135727; x=1773740527; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+9PLSR3xKMehVF4KMjG/IYea2QIcahUxs3nwETs5z3c=;
        b=GnN4E9KBUFxHq79OvUn8eu+X6wq6qtFYZLVpfDzFTuudiR4F5QDsQR5QsgSXciIUr4
         GngJV8FZR6aA48YQ09HsOublpIKi1VCp9m40w6Xy7HHyG45+SYR7Y0xi8YKXvLe+1CwN
         Y832HRn/6U1AAe7Uj+S48shVEaDTGExu3DPUA1PkardmYZGULIaMPkIW0M1x4hslgiOw
         ZR9Pdudu/WPPa/Q0aZK6m7+tUGyO0EEQFu0G2O+MyUjY6J0DMEltayz1GtwQO1BvccDp
         n344HJEVdQ+b75S2u0A6O9skrWYP9ZGAyTzNaNnEE5ewmlF+zmKqxNx0Bm7zAEv2csrg
         oUoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773135727; x=1773740527;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+9PLSR3xKMehVF4KMjG/IYea2QIcahUxs3nwETs5z3c=;
        b=DCW7+dfJ5BaJ2bAjKxA904MbWxVnw5J4Gm8gWf21lS9thG/J0bH3pxMGzn8dPq5NC4
         mzsO+MA2qgO79FTeEFQlnXVzV3rvhtWr3WFJkyVsmGueZ7n9bCN8Ba07v6GkVtNkBC9E
         DEe0WOUO4hN9zriUi5V9UHk53MQymFzO4n32sAPgdDNX4x6P/D+yYhvKjUczfva/Ves6
         +v/gUiEcDhDkJNzu01zv3j6ZFTRaZ0AqsEzl5qYixCsfLcIjCFPa4mIp5pPfhT2GzSf8
         HhaFMpE2Ylnt4adYF6qBSVYbuuyhTg6zxrwzzzhsoElKh2NNSQtXKjyqp0w9SDyTnHX7
         w4kg==
X-Forwarded-Encrypted: i=1; AJvYcCV6bx31h8JFl0a1Vm6Sc0IUZFy9vL1FyO6dsz6E1Xg/tl/DYBv6/y6e+owl1MkWGMWQwgyM3GDoYaro@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+2PPmNHEXIjcQyMUSlts4xjO5Cm50GR/hdDKwUmbUE1qAJuq/
	Hthp7d4TafTVCoPuN2/qe8tpq3z1eHd7+wZppQr4nX6nog5x+/60adqBWsblwC5UQC54pC129sJ
	YqIXyPA7n/mtNig5Bw05cFzxvdV2BvmUhtqDIHkBdcmBqyygQh3wocfpgO52ICT8Y
X-Gm-Gg: ATEYQzy/133PkkVdLnruvl70xI6de9SoTro1cvdosUdkahF41u2SVOVTziFUtigGIag
	QUGk2TJ1Jko7+e3IH0y0hnUeho4Z5IpGjasxYWy92XSx8XOwbSwHLSLtES2d8goV5nBlLojFSOo
	GiR/U816eoMnpH5k1XGaHOXR500cESB+Al21k/SqN6wHujDAoTfrwo8yQTlqayYcSFpDWuND2pN
	n5s0QKMqlLNTPVF7Ub9PYcmRzmSG8SoE/xFTGS7QWl4WwRylQw4E46EvTwKoRZyT0WbqRVRaPjj
	hscSaT4B83lEDaBVkYw0V3GXq/Elb7FnrmaSdwhDQ5Ysud/NUFHstJhTXdsz1oWQkKamZWc7Ei0
	d/+jQx6Db6jikEoZRulcZHvfhqqMjkQinpo9dLqwl+1T9dXipXqoTZV2Oj7UY
X-Received: by 2002:a17:90b:2516:b0:359:f0e1:f8c9 with SMTP id 98e67ed59e1d1-359f0e21780mr1393369a91.6.1773135726722;
        Tue, 10 Mar 2026 02:42:06 -0700 (PDT)
X-Received: by 2002:a17:90b:2516:b0:359:f0e1:f8c9 with SMTP id 98e67ed59e1d1-359f0e21780mr1393351a91.6.1773135726124;
        Tue, 10 Mar 2026 02:42:06 -0700 (PDT)
Received: from [10.218.21.154] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359f080db95sm3471489a91.9.2026.03.10.02.42.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 02:42:05 -0700 (PDT)
Message-ID: <a6f67655-e84b-4385-a5e8-62435f38323b@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 15:11:59 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/4] ASoC: dt-bindings: qcom,q6apm-lpass-dais: Document
 DAI subnode
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, Krzysztof Kozlowski <krzk@kernel.org>,
        linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
References: <20260309111300.2484262-1-mohammad.rafi.shaik@oss.qualcomm.com>
 <20260309111300.2484262-2-mohammad.rafi.shaik@oss.qualcomm.com>
 <3ml7bphfd7abn6mat47yagw7l7whv5hia7ifkbh6yi7gdg24j7@2p4sihkcowjd>
Content-Language: en-US
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
In-Reply-To: <3ml7bphfd7abn6mat47yagw7l7whv5hia7ifkbh6yi7gdg24j7@2p4sihkcowjd>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: I90UpIgQA0tMzBLa0wlUqGGTZUIIezuH
X-Authority-Analysis: v=2.4 cv=ervSD4pX c=1 sm=1 tr=0 ts=69afe76f cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=SoZZosWxfwo0RYgDzZ0A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: I90UpIgQA0tMzBLa0wlUqGGTZUIIezuH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDA4MSBTYWx0ZWRfX9XaE8KMOSi3c
 4IucmId4vccD82ajq1fyPHTVE4SF0XZDNI1BCdViM5C7wOfaons90EZaw2F89uWUFdZsvYQs4jf
 FVcVpcR3MMbHG36qbjymzfCwVsh91gISu1Pf7b8asjIZ9DZLYbQxua7jrv7HUL3ng0eK5xUPWKC
 Eufi9uPBa5Ax98vTWMDDOh/7veKDp0L6VTlz8ZLwY47viW0rzR9v+PsuI59YrZE6txtFePfGp/c
 VNG4BQBcdVijzwGKtsM9V1nd+oIzVcu58b882IC6RFP+ujDmNUMTD1zmn3PUwL0gVu4X1kzW6Pz
 YWl3WHMsWa2d1e6R5tG8w+2AFaCp+r4Q0onAGaVka3ZbELkvHWB3u99HlJCnKGb5OCqPdEYe7XM
 wwnz1ANIbD11uKpLKoU5TJ1AFYFZVIT50191Zw8JYHqOYHQAZNaQONzEEZWsTNPsQsfVp5IGFco
 bhqDGzeoRqqty2ph/TA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0
 malwarescore=0 phishscore=0 adultscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100081
X-Rspamd-Queue-Id: 2D443248C87
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,perex.cz,suse.com,vger.kernel.org,oss.qualcomm.com];
	TAGGED_FROM(0.00)[bounces-273421-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,0.0.0.16:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mohammad.rafi.shaik@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action



On 3/10/2026 1:25 AM, Dmitry Baryshkov wrote:
> On Mon, Mar 09, 2026 at 04:42:57PM +0530, Mohammad Rafi Shaik wrote:
>> Extend the qcom,q6apm-lpass-dais device tree binding to explicitly
>> describe Digital Audio Interface (DAI) child nodes.
>>
>> Add #address-cells and #size-cells to allow representation of multiple
>> DAI instances as child nodes, and define a dai@<id> pattern to document
>> per-DAI properties such as the interface ID and associated clocks.
> 
> Is there a physical device being represented by this DAI subnode?
> 

No, the dai@<id> subnode does not represent a separate physical device.
It models an individual LPASS/Q6DSP DAI hw interface instance (for 
example, primary mi2s, secondary mi2s, etc.), so that per‑DAI resources 
and configuration can be described.

Per‑port description is required because different DAIs may need 
different clock inputs (MCLK, BCLK, ECLK) and can be wired differently 
depending on the board design. By representing each DAI instance as a 
child node, the relevant clocks can be bound to the specific DAI port 
that uses them.

Thus, the subnode is used to describe the resources and configuration of 
a DAI hw instance, not a standalone physical device.

>>
>> Qualcomm platforms like talos integrate third-party audio codecs or use
>> different external audio paths. These designs often require additional
>> configuration such as explicit MI2S MCLK settings for audio to work.
>>
>> Co-developed-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
>> Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
>> ---
>>   .../bindings/sound/qcom,q6apm-lpass-dais.yaml | 41 ++++++++++++++++++-
>>   1 file changed, 40 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/sound/qcom,q6apm-lpass-dais.yaml b/Documentation/devicetree/bindings/sound/qcom,q6apm-lpass-dais.yaml
>> index 2fb95544d..1d770cbcb 100644
>> --- a/Documentation/devicetree/bindings/sound/qcom,q6apm-lpass-dais.yaml
>> +++ b/Documentation/devicetree/bindings/sound/qcom,q6apm-lpass-dais.yaml
>> @@ -21,6 +21,34 @@ properties:
>>     '#sound-dai-cells':
>>       const: 1
>>   
>> +  '#address-cells':
>> +    const: 1
>> +
>> +  '#size-cells':
>> +    const: 0
>> +
>> +# Digital Audio Interfaces
>> +patternProperties:
>> +  '^dai@[0-9]+$':
>> +    type: object
>> +    description:
>> +      Q6DSP Digital Audio Interfaces.
>> +
>> +    properties:
>> +      reg:
>> +        description:
>> +          Digital Audio Interface ID
>> +
>> +      clocks:
>> +        minItems: 1
>> +        maxItems: 3
>> +
>> +      clock-names:
>> +        minItems: 1
>> +        maxItems: 3
>> +
>> +    additionalProperties: false
>> +
>>   required:
>>     - compatible
>>     - '#sound-dai-cells'
>> @@ -29,7 +57,18 @@ unevaluatedProperties: false
>>   
>>   examples:
>>     - |
>> -    dais {
>> +    #include <dt-bindings/sound/qcom,q6afe.h>
>> +
>> +    bedais {
>>           compatible = "qcom,q6apm-lpass-dais";
>>           #sound-dai-cells = <1>;
>> +        #address-cells = <1>;
>> +        #size-cells = <0>;
>> +
>> +        dai@16 {
> 
> What is @16 in this case? What kind of address or ID correspondings to
> the PRIMARY_MI2S_RX?
> 

yes, The @16 value corresponds to the LPASS/Q6DSP DAI ID for 
PRIMARY_MI2S_RX.

(defined in : 
https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git/tree/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h)

Best Regards,
Rafi.

>> +           reg = <PRIMARY_MI2S_RX>;
>> +           clocks = <&q6prmcc LPASS_CLK_ID_MCLK_1
>> +                              LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
>> +           clock-names = "mclk";
>> +        };
>>       };
>> -- 
>> 2.34.1
>>
> 


