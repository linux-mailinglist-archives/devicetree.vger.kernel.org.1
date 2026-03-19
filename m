Return-Path: <devicetree+bounces-277834-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uCnJMaYPvGmFrwIAu9opvQ
	(envelope-from <devicetree+bounces-277834-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 16:00:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE1B2CD52D
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 16:00:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id F0CC130060A7
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 14:58:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D749E3DDDD4;
	Thu, 19 Mar 2026 14:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ZSOfnffm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF0D33DD520
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 14:58:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773932333; cv=none; b=s4prrdf6bo4REj9plRuDGhlLWz5XZMNjw5T6zr3YZ9+SM/w/85iIO1jLcBE5aYpmq4bk2Z4ggNqhXuZnDNJK1KPXwK2mxpzvWqtYs7+nF+JmQEjYJLsoqAHeZVDOr6mOoRCqcR5OW4u/sYUsM2L723880YLVRmWkirQj19T6U4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773932333; c=relaxed/simple;
	bh=mM0Qjq+/PhARnJ1OuOTZXrhsKNJy65FaO78/hLNdAgw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ws7mg52T/yxT1LASh3spGvr1UnyEWTNG6tzf48YCB0QMkH5H8yl9WJa7NLdiQMo7D/4H4DWM29HEhs7ryKGRR1KD99q5GtD1S0Nrzy9cl/pvnoRpC8I5g77ku+PfZvaMs23XyPOGREPdCihUUGjBcR/e67wnI4ery/C3qMX2ZEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ZSOfnffm; arc=none smtp.client-ip=209.85.167.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f178.google.com with SMTP id 5614622812f47-466f59dbe4bso173501b6e.0
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 07:58:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773932329; x=1774537129; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PamUifGDxzKgYduTgi5+Bz1Hbj65Bi8zeh///fvaP8k=;
        b=ZSOfnffmH/dkxGYvWQoDZm6CezWNuce5MrgNhq9DdbZtYOxzl2PiC7WgovRE+RNbPq
         cybRtCbsgDJHUDg1PkmGa9WaWe+CF8KdgCL7qKhkdVlVpt+6vuNjkz6opKLcL9SHxLbN
         0KDcK82KR/pyAMmCQEnEr8EQQHyUZI5qVMK0H4SLXN1STT9uVO6r4C4J8Ce+oyORbEQW
         LbUB0O9wvfMQPnxJzYVRitSK9PLpToAMZm6JpGNkxVNTDbqdCuxJ9Ed3tmpGSxvobMEM
         wMpI6tsBNom6r/mHSvs0oKculL3wbUtssG4tBqxiltvdt7MQfhKOEBX4VYEnmLkBfHO0
         F62g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773932329; x=1774537129;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PamUifGDxzKgYduTgi5+Bz1Hbj65Bi8zeh///fvaP8k=;
        b=EmkjvKjWKQIAgqTgtI4SqG/gX9cWoeADt2Z8HYF3prVzmQRn8aEEdbgkLKARqHLlSw
         0KeiFYSzdcBmr3utXecW651lXNPcG8ggdsNz0PCmSasasD/V5qhEzkrziS4i6e7vLCNz
         ZhJxxlgCohgaH5yw7SLKrSSAu+GQTd0VoWNos3obTHK76+2UkbM4CfgQHf2vCqCp7Wm9
         CF66ryznLedPvQTZi3BURNo9lFt0ldRPWXWZAFpBuBzu/P0/EvPWf9CpN+wXYlHfRG6+
         va/vaOGE1Vpi0z5oHk24hUzeBW/CvwejU/wC4RjC2MBrdpdmQUfurQmV7LjrpLCOx4Kc
         DTaA==
X-Forwarded-Encrypted: i=1; AJvYcCV6tFddYjYfpsd+7XuZu+/AoVNgcf1SB2p6gsXXcx9A4XP7WycNGWeY2BGnpSfC+MW5JSQ2jLIx5Sg2@vger.kernel.org
X-Gm-Message-State: AOJu0YyRYCMWC8pl3Yg4KEZt1B+dsh9mkyKxCCjhuv4BclrUiv/jEKTy
	2a3sqQDed9DQBavudYx7x4o57nrFTauYt08ltaNnYZtm7/GrjdmBVAT8yEjrOOsBaqU=
X-Gm-Gg: ATEYQzxDz9gSebuYQz49JgnnAvlSne+Ii3f6b5aoBmcxPHhQz/PGlkcFZc3cdlASJMD
	nIMj2ElCi/2WHBfcYecPU2LTnZEn0gc/6QAkFX1VRbdeDPpVCYN9IFSiURT05mESy7jkowjKcNM
	QdOIWU/oLRd7X8nXJi1SS3tBALyCPwKi9Av7ZLLt6WRkfMnsV8OTukD5gNcaEqyjvn10/1KEbl+
	5CTMJba9URZD6Nc4+UwAhDMf7FRPZfEOBIyQ+GNNwptMBnQOHEtyEC1wZhtl8z0I4U3nDHVlxPu
	LlfJ3pV1OARGC+rJzvlHULp46odsff2OOUUjCOLmoQI4dMvS2Ju+PRpHB/7TWmP4tbly5DUpdAN
	j6YkzgPDanRsv4uO5OLwanZPcoSBHtJjrinlMY3p1t0iVp41L/TE7GX9CXoKipAjh1RD+Q1cPZD
	mwjax5JsGj0C0pEXGn916+ysL1aIzmUS2l3gG80qAbuFLfgablXBkY77I9KBCE7Idc7NRkSyhmZ
	vshn+4Q5RI0
X-Received: by 2002:a05:6808:1451:b0:467:1cf5:7684 with SMTP id 5614622812f47-467ba15eaddmr4227888b6e.6.1773932328449;
        Thu, 19 Mar 2026 07:58:48 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:244c:fc8c:8216:1344? ([2600:8803:e7e4:500:244c:fc8c:8216:1344])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-41bd22dee78sm6087744fac.0.2026.03.19.07.58.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2026 07:58:47 -0700 (PDT)
Message-ID: <f1706ec0-3995-4fdf-a9fb-8e1e688438a7@baylibre.com>
Date: Thu, 19 Mar 2026 09:58:46 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] dt-bindings: iio: adc: xilinx-xadc: convert to YAML
 format
To: Sai Krishna Potthuri <sai.krishna.potthuri@amd.com>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: Jonathan Cameron <jic23@kernel.org>, Nuno Sa <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Michal Simek <michal.simek@amd.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, saikrishna12468@gmail.com, git@amd.com
References: <20260220053941.611415-1-sai.krishna.potthuri@amd.com>
 <20260220053941.611415-6-sai.krishna.potthuri@amd.com>
 <20260221-dancing-papaya-wolverine-db8afd@quoll>
 <b89933a3-5f25-466c-a2f5-6e231aa12749@amd.com>
 <21d425bc-9406-401b-9817-7255ba3d31fc@baylibre.com>
 <e4c9729f-1785-4d10-a337-37b0d26fe30b@amd.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <e4c9729f-1785-4d10-a337-37b0d26fe30b@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-277834-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,analog.com,amd.com,vger.kernel.org,lists.infradead.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.989];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,baylibre-com.20230601.gappssmtp.com:dkim,baylibre.com:mid,devicetree.org:url]
X-Rspamd-Queue-Id: AFE1B2CD52D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/19/26 9:49 AM, Sai Krishna Potthuri wrote:
> Hi David Lechner,
> 
> On 3/19/2026 7:53 PM, David Lechner wrote:
>> On 3/19/26 8:52 AM, Sai Krishna Potthuri wrote:
>>> Hi Krzysztof,
>>>
>>> On 2/21/2026 4:08 PM, Krzysztof Kozlowski wrote:
>>>> On Fri, Feb 20, 2026 at 11:09:41AM +0530, Sai Krishna Potthuri wrote:
>>>>> Convert the xilinx-xadc.txt Devicetree binding to a YAML schema format
>>>>> and remove the old text binding.
>>>>>
>>>>> +
>>>>> +  xlnx,channels:
>>>>> +    $ref: '#/$defs/channels'
>>>>> +
>>>>> +allOf:
>>>>
>>>> Missing ref since you use unevaluatedProperties...
>>>>
>>>>> +  - if:
>>>>> +      required:
>>>>> +        - xlnx,external-mux
>>>>> +      properties:
>>>>> +        xlnx,external-mux:
>>>>> +          enum:
>>>>> +            - single
>>>>> +            - dual
>>>>> +    then:
>>>>> +      required:
>>>>> +        - xlnx,external-mux-channel
>>>>> +
>>>>> +required:
>>>>> +  - compatible
>>>>> +  - reg
>>>>> +
>>>>> +unevaluatedProperties: false
>>>>
>>>> or you meant additionalProperties?
>>>>
>>>>> +
>>>>> +$defs:
>>>>
>>>> Why this is a def, not used directly? I see only one usage of this def.
>>>
>>> I am getting the below error if i define the patternProperties directly.
>>> Seems like complex vendor peroperties should be referenced via $ref.
>>> Please suggest if there is any better way to deal this.
>>
>> It is hard to say without seeing the new version of what you wrote.
> 
> In v1 series, i created $def and referenced this in xlnx,channels to avoid the error that i mentioned.

Is the code below the code that causes the error?

> 
> v1 code:
>   xlnx,channels:
>     $ref: '#/$defs/channels'
> 
>   $defs:
>   channels:

Is this indent bug just from copying to email or does it exist in
the source that is causing the error?

>     type: object
>     description: List of external channels that are connected to the ADC
>     properties:
>       '#address-cells':
>         const: 1
>       '#size-cells':
>         const: 0
> 
>     patternProperties:
>       "^channel@([0-9]|1[0-6])$":
>         type: object
>         properties:
>           reg:
>             minimum: 0
>             maximum: 16
>             description: |
>               Pair of pins the channel is connected to:
>                 0: VP/VN
>                 1-16: VAUXP[0-15]/VAUXN[0-15]
>               Note each channel number should only be used at most once.
> 
>           xlnx,bipolar:
>             type: boolean
>             description: If set, the channel is used in bipolar mode
> 
>         required:
>           - reg
> 
>         unevaluatedProperties: false
> 
>     required:
>       - '#address-cells'
>       - '#size-cells'
> 
>     unevaluatedProperties: false
> 
> 
> Regards
> Sai krishna
> 
> 
>>
>>
>>
>>>
>>> linux-xlnx/Documentation/devicetree/bindings/iio/adc/xilinx-xadc.yaml: properties:xlnx,channels:type: 'boolean' was expected
>>>      hint: A vendor boolean property can use "type: boolean"
>>>      from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
>>>    LINT    ../Documentation/devicetree/bindings
>>>    DTEX    Documentation/devicetree/bindings/iio/adc/xilinx-xadc.example.dts
>>>    DTC [C] Documentation/devicetree/bindings/iio/adc/xilinx-xadc.example.dtb
>>>
>>>
>>> Regards
>>> Sai Krishna
>>>
>>>>
>>>>> +  channels:
>>>>> +    type: object
>>>>> +    description: List of external channels that are connected to the ADC
>>>>> +    properties:
>>>>> +      '#address-cells':
>>>>> +        const: 1
>>>>> +      '#size-cells':
>>>>> +        const: 0
>>>>> +
>>>>> +    patternProperties:
>>>>> +      "^channel@([0-9]|1[0-6])$":
>>>>> +        type: object
>>>>> +        properties:
>>>>> +          reg:
>>>>> +            minimum: 0
>>>>> +            maximum: 16
>>>>> +            description: |
>>>>> +              Pair of pins the channel is connected to:
>>>>> +                0: VP/VN
>>>>> +                1-16: VAUXP[0-15]/VAUXN[0-15]
>>>>> +              Note each channel number should only be used at most once.
>>>>> +
>>>>> +          xlnx,bipolar:
>>>>> +            type: boolean
>>>>> +            description: If set, the channel is used in bipolar mode
>>>>> +
>>>>> +        required:
>>>>> +          - reg
>>>>> +
>>>>> +        unevaluatedProperties: false
>>>>
> 


