Return-Path: <devicetree+bounces-277816-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kGG+GAEHvGkArgIAu9opvQ
	(envelope-from <devicetree+bounces-277816-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 15:24:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F152CCB43
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 15:24:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3BFEB300F589
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 14:24:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DCDD35A38F;
	Thu, 19 Mar 2026 14:23:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ewZhMDQb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75F1533A9C6
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 14:23:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773930237; cv=none; b=hxhi9Pq/9uHR29W+ROrpi1fuiOqm5SVzbVh7RWa8v7zOups/TsXIRtmESdqWBWlOST/QNOJfY2HyuRkx7s9SP4XRBB+UeZ0+lOhVEiQSsaS9fv3sCzQannrqSfnLyujKk9rFusUSkglEi9j9lsmokQzAuDkprS2Af4KuvPhtJg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773930237; c=relaxed/simple;
	bh=FFqdeaDL7lqKGZ3fe3twoZ7NOyENN7PD9m4VnMm6UzM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Bb6caMSbSB7zSvSofNWPyaxoeowtu9F5pfCgbWHtcrdbkswHJ9Vj251TorLhVztedGiNvnrwQrYfibuXWwg7qCL2U/7TohcANGtzln0bsCNWZLQRsX3AIm5Q1P4qQ/PgXvAUZ6pyVuBgt9q56FQYdWL/+bFJ1C+BeA8r7XHe1bI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ewZhMDQb; arc=none smtp.client-ip=209.85.167.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f177.google.com with SMTP id 5614622812f47-467166cb638so437142b6e.2
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 07:23:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773930234; x=1774535034; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KeNjfj/LpvbccEUPQ7WMLYgOxZOBhYnhu+wpfuHYq6E=;
        b=ewZhMDQbKQ9/HgQM+61OR/p6stMSNEhJ7kjaXXLfizRhLhlfmw1bvFIPuSGcIVqaJ1
         twdessCVjqw0O9dqVJe2izcSQ3dg2Ve2yMNFeSOgrAvU0Cr18nsHcGOvdn16RdcXyUgV
         r0Evx2svRJknqBQt4lk3ZF869OAx5TGwfAIjblpH1+9U2o/vTKyusCbJ6eLPT1YkUX0W
         +HdxfqmwFvJFya4snRzlakcOPom8EjB/A52y5bvCwf6Oh28QLm6cq5vy81ZYPwKcziKs
         4wTgvq61jbCF1eqmWGmTexX2ysQiFhuj+7XPlYh2uB1h4BatTLxzLFNRDEpdihPR6rKv
         QQJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773930234; x=1774535034;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KeNjfj/LpvbccEUPQ7WMLYgOxZOBhYnhu+wpfuHYq6E=;
        b=lkPoJwdBhopwS25YGLU/EWxTyN1GtzsanjnLguyMrDL6bnJe6vO2Jrm03OCCfMi6f1
         E8wOEb41y9GeZi7UI2Efpj9XEWE9yzVXW7c5TkqAjj4Ygt0p7WnH911uqPVdLZ64ZASw
         UUp80S4yHtHObdKRX3e9cww7+OOdCAuxOPCRfNMDt7bVCc4/FCEmmrL76htGXQbwJgtT
         NG8r6gJt5Zg7LNA+2MwpXDFHd+D+Af9VHIskrv5eYFcQ8wAVDnYuMd7Rw09uCzjLVppC
         YEK+Kox+o3tXhr7xMNB63YdzCJLyhLP2t0gTn8axYwfINEtWvcNP/mmsmSugPtdev+AP
         rA/g==
X-Forwarded-Encrypted: i=1; AJvYcCXeBlTLiPW4GgjjtyRQGHPC+evLADt7SNpTwQL50ILccm4Yangkqlf8sP/PzCFMVq1skN8GgJgqrOog@vger.kernel.org
X-Gm-Message-State: AOJu0YyjwQzXLjfgQbv8yDVxp7c1AEJwQIRunmM4Ytj+YT1PyJi33rR+
	MvQDiooN4UQVzyn0bdXw6ZFlVeDRFO02TfRLA8BrGh5TTVvYzDbzNOzfg16RiE7fMFA=
X-Gm-Gg: ATEYQzyUBKRhF1B6njh48MYBmXoGN3GssOU4d3i5r27J/qurByScepbZwFpql7LkSaj
	iF+ZuaQeV8H5i26Sv3C7R1dGVLUzHdfTYW4cZSlbyz7EaUJInQIcp7g3IC5Q6uEHeHo/xWdXjoo
	iBeEXG7nJEzNaTr4aFpCbdsE4KefBpz7fhkBLRXYjRdu6JVCL68yUaowYeo2YUKo+zH/kI1kW2R
	cEp0Qx9yWGmqPUc0AWObb5Nldt58DyVwQp+GgndpQB4x5DJ3sjdrTLsIM9L2OoyYT5QifaaS5Aq
	supGTtslgX9klqOEzGsQAw2puc1YieCeW93cu7ES4wgBEcHv1iGdWvlO1IypLcwpZKHBeNdcvdT
	3tVTa8xdhJCRyKex3iLDWlC0x18YKauh5w9hP7f4PTkBS1X9a2mt8b44LKBE0Ol7wCeD7ANEuBJ
	/b6RJlLHdRm9G44qTYtVuKtXH3ottI2e09f9uQeeD3+I/+EeVn87OpQyyFWISKWADTgWayrgK+F
	w==
X-Received: by 2002:a05:6808:19a8:b0:467:819:dc61 with SMTP id 5614622812f47-467ba28b325mr4636001b6e.23.1773930234228;
        Thu, 19 Mar 2026 07:23:54 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:244c:fc8c:8216:1344? ([2600:8803:e7e4:500:244c:fc8c:8216:1344])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d7e878b627sm82482a34.15.2026.03.19.07.23.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2026 07:23:53 -0700 (PDT)
Message-ID: <21d425bc-9406-401b-9817-7255ba3d31fc@baylibre.com>
Date: Thu, 19 Mar 2026 09:23:52 -0500
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
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <b89933a3-5f25-466c-a2f5-6e231aa12749@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-277816-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,analog.com,amd.com,vger.kernel.org,lists.infradead.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.989];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url]
X-Rspamd-Queue-Id: E5F152CCB43
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/19/26 8:52 AM, Sai Krishna Potthuri wrote:
> Hi Krzysztof,
> 
> On 2/21/2026 4:08 PM, Krzysztof Kozlowski wrote:
>> On Fri, Feb 20, 2026 at 11:09:41AM +0530, Sai Krishna Potthuri wrote:
>>> Convert the xilinx-xadc.txt Devicetree binding to a YAML schema format
>>> and remove the old text binding.
>>>
>>> +
>>> +  xlnx,channels:
>>> +    $ref: '#/$defs/channels'
>>> +
>>> +allOf:
>>
>> Missing ref since you use unevaluatedProperties...
>>
>>> +  - if:
>>> +      required:
>>> +        - xlnx,external-mux
>>> +      properties:
>>> +        xlnx,external-mux:
>>> +          enum:
>>> +            - single
>>> +            - dual
>>> +    then:
>>> +      required:
>>> +        - xlnx,external-mux-channel
>>> +
>>> +required:
>>> +  - compatible
>>> +  - reg
>>> +
>>> +unevaluatedProperties: false
>>
>> or you meant additionalProperties?
>>
>>> +
>>> +$defs:
>>
>> Why this is a def, not used directly? I see only one usage of this def.
> 
> I am getting the below error if i define the patternProperties directly.
> Seems like complex vendor peroperties should be referenced via $ref.
> Please suggest if there is any better way to deal this.

It is hard to say without seeing the new version of what you wrote.



> 
> linux-xlnx/Documentation/devicetree/bindings/iio/adc/xilinx-xadc.yaml: properties:xlnx,channels:type: 'boolean' was expected
>     hint: A vendor boolean property can use "type: boolean"
>     from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
>   LINT    ../Documentation/devicetree/bindings
>   DTEX    Documentation/devicetree/bindings/iio/adc/xilinx-xadc.example.dts
>   DTC [C] Documentation/devicetree/bindings/iio/adc/xilinx-xadc.example.dtb
> 
> 
> Regards
> Sai Krishna
> 
>>
>>> +  channels:
>>> +    type: object
>>> +    description: List of external channels that are connected to the ADC
>>> +    properties:
>>> +      '#address-cells':
>>> +        const: 1
>>> +      '#size-cells':
>>> +        const: 0
>>> +
>>> +    patternProperties:
>>> +      "^channel@([0-9]|1[0-6])$":
>>> +        type: object
>>> +        properties:
>>> +          reg:
>>> +            minimum: 0
>>> +            maximum: 16
>>> +            description: |
>>> +              Pair of pins the channel is connected to:
>>> +                0: VP/VN
>>> +                1-16: VAUXP[0-15]/VAUXN[0-15]
>>> +              Note each channel number should only be used at most once.
>>> +
>>> +          xlnx,bipolar:
>>> +            type: boolean
>>> +            description: If set, the channel is used in bipolar mode
>>> +
>>> +        required:
>>> +          - reg
>>> +
>>> +        unevaluatedProperties: false
>>

