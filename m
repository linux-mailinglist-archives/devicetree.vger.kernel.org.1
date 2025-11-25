Return-Path: <devicetree+bounces-241907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B971C8431B
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 10:21:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 352893A4F5E
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 09:21:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F280254AFF;
	Tue, 25 Nov 2025 09:21:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oCu2VQx1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E91E3846F;
	Tue, 25 Nov 2025 09:21:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764062493; cv=none; b=hb5lh9isZ0TId/STWzO8pW561OUAgUE3bfo7JMUDtV3ZTAEm2rGVUkwFIfOaiWm2BtXiJMLdw56aSOVZHDL67N7gRoOrIdhJ92YshIo1hltjI2mehj/5AW4a5D+nbFT+DUbb1w/rAh0BBIjtBA8fhMOwXToB96k+ceGI2TxhOPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764062493; c=relaxed/simple;
	bh=HPdCHCFGmd23HIFcHxpDXjy3AJzr9acGseFPwvYqMMk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VY/8iO0k04EPBTWPx/M8IHG3dyOibwRXXTTmyo+cFhdAq7xCZBsGaPPkuMbTOiw60650ILe3sNwNifXssGL6MB8JGQEa3sSIX+JFgn3HoPYJ/1DsAQCEwYT67rNazwZHcBpSW1APV3kTQLXd40EoKAGCWfL0o0of9SVM0Zb8QAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oCu2VQx1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46EB4C4CEF1;
	Tue, 25 Nov 2025 09:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764062492;
	bh=HPdCHCFGmd23HIFcHxpDXjy3AJzr9acGseFPwvYqMMk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=oCu2VQx1LeHn1Y3uWaKLdovPn4gTJ/iU49mtx10N/lnBpC/GMryvI7Uyw6hzmuy4A
	 DrmgIVoBafwlJhgNT7ZWkri1u/wpWlftNRtCYk0wg9+sIB8w8GLCT6iziKuQPXK1MH
	 0IYn0KAkXD4KfCiShYnQdcYC71ZmDiNZoWnQROSCcvy3Mfs8pckQ3hj5alToMjhWiP
	 pymOwOUSvYMDNTMHLWQYTpWyUN8jZRcp2+vY64VZSaLNHGNr5sapcLuMnl4oHy1TG1
	 EVqepDofDbu/jveeLW5xmAit6DrJgHoatCJ8liDNXu3CS6WRxVAGNy81AkuOHBjW9a
	 3XdNd/U052Fcw==
Message-ID: <a9c78805-9b70-4e20-a3f5-36e5973fc272@kernel.org>
Date: Tue, 25 Nov 2025 10:21:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] dt-bindings: drm/bridge: Update reg-name and reg
 description list for cdns,mhdp8546 compatible
To: Harikrishna shenoy <h-shenoy@ti.com>
Cc: robh@kernel.org, Laurent.pinchart@ideasonboard.com, airlied@gmail.com,
 andrzej.hajda@intel.com, conor+dt@kernel.org, devarsht@ti.com,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 jernej.skrabec@gmail.com, jonas@kwiboo.se, krzk+dt@kernel.org,
 linux-kernel@vger.kernel.org, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, neil.armstrong@linaro.org, rfoss@kernel.org,
 s-jain1@ti.com, simona@ffwll.ch, sjakhade@cadence.com, tzimmermann@suse.de,
 u-kumar1@ti.com, yamonkar@cadence.com, pthombar@cadence.com, nm@ti.com
References: <20251121123437.860390-1-h-shenoy@ti.com>
 <20251123-flying-sweet-raven-bf3571@kuoka>
 <7161aa97-7ee3-4468-a53e-8158075aa0a9@ti.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <7161aa97-7ee3-4468-a53e-8158075aa0a9@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 25/11/2025 06:26, Harikrishna shenoy wrote:
> 
> 
> On 23/11/25 15:30, Krzysztof Kozlowski wrote:
>> On Fri, Nov 21, 2025 at 06:04:37PM +0530, Harikrishna Shenoy wrote:
>>> Remove j721e-intg register name from reg-name list for cdns,mhdp8546
>>> compatible. The j721e-integ registers are specific to TI SoCs, so they
>>> are not required for compatibles other than ti,j721e-mhdp8546.
>>>
>>> Update reg and reg-names top level constraints with lists according
>>> to compatibles.
>>>
>>> Move the register name constraints and reg description list to the
>>> appropriate compatibility sections to ensure the correct register
>>> names are used with each compatible value also adding the DSC register
>>> to make bindings align with what the hardware supports.
>>>
>>> Fixes: 7169d082e7e6 ("dt-bindings: drm/bridge: MHDP8546 bridge binding changes for HDCP")
>>> Signed-off-by: Harikrishna Shenoy <h-shenoy@ti.com>
>>> ---
>>>
>>> Links to some discussions pointing to need for a fixes patch:
>>> https://lore.kernel.org/all/20250903220312.GA2903503-robh@kernel.org/
>>> https://lore.kernel.org/all/d2367789-6b54-4fc2-bb7c-609c0fe084d3@ti.com/
>>>
>>> Link to v2:
>>> <https://lore.kernel.org/all/20251119122447.514729-1-h-shenoy@ti.com/>
>>>
>>> Changelog v2 --> v3:
>>> -Add the reg description list and reg-name list in top level constraints
>>> using oneOf for either of compatible.
>>> Logs after testing some cases: https://gist.github.com/h-shenoy/a422f7278859cd95447e674963caabd9
>>>
>>> Link to v1:
>>> <https://lore.kernel.org/all/20251107131535.1841393-1-h-shenoy@ti.com/>
>>>
>>> Changelog v1 --> v2:
>>> -Update the reg description list for each compatible and add register space
>>> for dsc to make the bindings reflect what hardware supports although
>>> the driver doesn't support dsc yet.
>>>
>>> Note: j721e-integ are not optional registers for ti-compatible.
>>>
>>>   .../display/bridge/cdns,mhdp8546.yaml         | 85 ++++++++++++++-----
>>>   1 file changed, 66 insertions(+), 19 deletions(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8546.yaml b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8546.yaml
>>> index c2b369456e4e2..632595ef32f63 100644
>>> --- a/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8546.yaml
>>> +++ b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8546.yaml
>>> @@ -17,23 +17,45 @@ properties:
>>>         - ti,j721e-mhdp8546
>>>   
>>>     reg:
>>> -    minItems: 1
>>> -    items:
>>> -      - description:
>>> -          Register block of mhdptx apb registers up to PHY mapped area (AUX_CONFIG_P).
>>> -          The AUX and PMA registers are not part of this range, they are instead
>>> -          included in the associated PHY.
>>> -      - description:
>>> -          Register block for DSS_EDP0_INTG_CFG_VP registers in case of TI J7 SoCs.
>>> -      - description:
>>> -          Register block of mhdptx sapb registers.
>>> +    oneOf:
>>> +      - minItems: 2
>>> +      - items:
>>
>> This is wrong syntax. You created here a list, so you now allow
>> anything with minItems 2.
> Hi Krzysztof,
> 
> The list defined here restricts what lists are accepted, so for 

No. It does not.

Look - you defined list of ONLY minItems:2, without anything else. The
problem is that your oneOf consist of four separate cases and you wanted
two cases, so only:
oneOf:
 - foo
   whatever goes here

 - bar
   further schema

Not four.

> cdns,mhdp8546 compatible anything more than 3 items is rejected 
> (example: 
> https://gist.github.com/h-shenoy/a422f7278859cd95447e674963caabd9). 
> Could you please help me with an
> example where you think the bindings are incorrect?
> 
>>
>>> +          - description:
>>> +              Register block of mhdptx apb registers up to PHY mapped area (AUX_CONFIG_P).
>>> +              The AUX and PMA registers are not part of this range, they are instead
>>> +              included in the associated PHY.
>>> +          - description:
>>> +              Register block for DSS_EDP0_INTG_CFG_VP registers in case of TI J7 SoCs.
>>> +          - description:
>>> +              Register block of mhdptx sapb registers.
>>> +          - description:
>>> +              Register block for mhdptx DSC encoder registers.
>>> +
>>> +      - minItems: 1
>>
>> Actually anything with minItems 1... I asked for list of TWO, not FOUR,
>> items. Or if syntax is getting to complicated, just min and maxItems.
>>
>>
>>> +      - items:
>>> +          - description:
>>> +              Register block of mhdptx apb registers up to PHY mapped area (AUX_CONFIG_P).
>>> +              The AUX and PMA registers are not part of this range, they are instead
>>> +              included in the associated PHY.
>>> +          - description:
>>> +              Register block of mhdptx sapb registers.
>>> +          - description:
>>> +              Register block for mhdptx DSC encoder registers.
>>>   
>>>     reg-names:
>>> -    minItems: 1
>>> -    items:
>>> -      - const: mhdptx
>>> -      - const: j721e-intg
>>> -      - const: mhdptx-sapb
>>> +    oneOf:
>>> +      - minItems: 2
>>> +      - items:
>>
>> Also wrong.
>>
>>> +          - const: mhdptx
>>> +          - const: j721e-intg
>>> +          - const: mhdptx-sapb
>>> +          - const: dsc
>>> +
>>> +      - minItems: 1
>>> +      - items:
>>> +          - const: mhdptx
>>> +          - const: mhdptx-sapb
>>> +          - const: dsc
>>>   
>>>     clocks:
>>>       maxItems: 1
>>> @@ -100,18 +122,43 @@ allOf:
>>>         properties:
>>>           reg:
>>>             minItems: 2
>>> -          maxItems: 3
>>
>> Your commit msg says you "remove" but here you ADD one more item, thus
>> growing this 3->4.
>>
>> How remove can result in 3 becoming 4?
>>
> Yes, remove is for j721e-intg for cdns,mhdp8546 compatible, and to make
> bindings complete have added dsc reg-blocks, these changes reflects 
> correct capabilities of hardware, have mentioned these in commit message 
> as well.


Again, how a "remove" can result in growing?


Best regards,
Krzysztof

