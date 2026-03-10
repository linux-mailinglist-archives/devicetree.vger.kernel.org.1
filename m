Return-Path: <devicetree+bounces-273415-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gA0hKQbor2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273415-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:44:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC8D248BB3
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:44:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C5D6C3047042
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:33:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6601B43CEFC;
	Tue, 10 Mar 2026 09:33:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eqCEtxIg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41ADC288C2D;
	Tue, 10 Mar 2026 09:33:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773135191; cv=none; b=XPoO/VYGEwLYvsdsvzMcpAiZRvRwiwcNsB22RWHEuQ5ddAWWktYBtayRTztjmCSjP47kYDsWZ0DZTLCv9L2kt69NPGMmdAIGy1VJIUsqQ9avkrOpGAzZIYxtWM/dpak6X9x95d435vX8VsadKxQ1P9wQWwD3mGI2FMhGwkKTxhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773135191; c=relaxed/simple;
	bh=N+cQ5aRLnLeAdEOLvRfChfDU+hoMgfPSTH7yP4xQZsA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tXMhOvyoy1stbSLT+z7aVjTFZafrp8cE+KL1lcKFXMYFabYM7GOaWLO0mO5gU20FAUy2+Ry0V6VhlqWARM37n4+H+PaOE1bNtT+EhdLbPTwgTs0LBABeoleQHRI9VsCDe150uYJsZuNc9mS8dDqo+U+R4JDpXpy10LVfgKBeg6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eqCEtxIg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6CA86C2BC86;
	Tue, 10 Mar 2026 09:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773135190;
	bh=N+cQ5aRLnLeAdEOLvRfChfDU+hoMgfPSTH7yP4xQZsA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=eqCEtxIg5hGe6+ClqzHTAS+0sim10chsNcwekv1YH4o3D65oO8GHWg8XBK92PVZdE
	 wOx287Na+2vOOwPmQDFCvzbERKoz60csUYlAGaBun5orxGNZBHnktanbI0OZJLO/ww
	 e9fKQRz6c+aJwztucL02qgbcpduHv+KEzLly4julSLE+KBsN6BMPzEn+qgS1hsPQq7
	 abJw/xOaW8zU1PCLh9TiyGtI6lppjQFECRXkkO2angmqPofotljrR0lxFHhmxIuQ6g
	 0wKY/GbNYDoDvCZb0sj33DyhSoMYwIBTWOz/f6TOsxaunuARC4at5KfFZacpPA0oeM
	 1vBTengcv+4wQ==
Message-ID: <b24b2a39-3457-4bc3-aa94-1625aaa7d70a@kernel.org>
Date: Tue, 10 Mar 2026 10:33:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: display: bridge: Add ITE IT6162 MIPI
 DSI to HDMI bridge
To: Hermes.Wu@ite.com.tw
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, airlied@gmail.com, simona@ffwll.ch,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 Pet.Weng@ite.com.tw, Kenneth.Hung@ite.com.tw,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260309-upstream-6162-v2-0-debdb6c88030@ite.com.tw>
 <20260309-upstream-6162-v2-1-debdb6c88030@ite.com.tw>
 <20260310-ancient-barnacle-of-reading-32eeee@quoll>
 <0c2db59101c8471097dbcb6e0343a0e7@ite.com.tw>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <0c2db59101c8471097dbcb6e0343a0e7@ite.com.tw>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: ECC8D248BB3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de,ite.com.tw,lists.freedesktop.org,vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273415-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_PROHIBIT(0.00)[0.0.0.2:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[60hz:email,devicetree.org:url,bootlin.com:url,ite.com.tw:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,0.0.0.58:email,0.0.0.1:email,0.0.0.3:email]
X-Rspamd-Action: no action

On 10/03/2026 09:57, Hermes.Wu@ite.com.tw wrote:
> 
> Hi
> 
>> On Mon, Mar 09, 2026 at 05:42:01PM +0800, Hermes Wu wrote:
>>> Add device tree binding documentation for the ITE IT6162 MIPI DSI to 
>>> HDMI 2.0 bridge chip. The IT6162 is an I2C-controlled bridge that 
>>> supports the following configurations:
>>>
>>>   - Single MIPI DSI input: up to 4K @ 30Hz
>>>   - Dual MIPI DSI input (combined): up to 4K @ 60Hz
>>>
>>> The chip also supports up to 8-channel audio output via 4 I2S data 
>>> channels.
>>
>> <form letter>
>> This is a friendly reminder during the review process.
>>
>> It looks like you received a tag and forgot to add it.
>>
>> If you do not know the process, here is a short explanation:
>> Please add Acked-by/Reviewed-by/Tested-by tags when posting new versions of patchset, under or above your Signed-off-by tag, unless patch changed significantly (e.g. new properties added to the DT bindings). Tag is "received", when provided in a message replied to you on the mailing list. Tools like b4 can help here. However, there's no need to repost patches *only* to add the tags. The upstream maintainer will do that for tags received on the version they apply.
> 
> new properties are add in this patch, so I removed the reviewed tag add by b4 tool.

So read the docs. Where did you document it?

> 
>>
>> Please read:
>> https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/submitting-patches.rst#L577

What is explained here?

>>
>> If a tag was not added on purpose, please state why and what changed.
>> </form letter>
>>
>>>
>>> Signed-off-by: Hermes Wu <Hermes.wu@ite.com.tw>
>>> ---
>>>  .../bindings/display/bridge/ite,it6162.yaml        | 216 +++++++++++++++++++++
>>>  1 file changed, 216 insertions(+)
>>>
>>> diff --git 
>>> a/Documentation/devicetree/bindings/display/bridge/ite,it6162.yaml 
>>> b/Documentation/devicetree/bindings/display/bridge/ite,it6162.yaml
>>> new file mode 100644
>>> index 
>>> 0000000000000000000000000000000000000000..01aa33110a20b8ad5e2946ab5e01
>>> 229dcb4cb5d3
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/display/bridge/ite,it6162.yaml
>>> @@ -0,0 +1,216 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) %YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/display/bridge/ite,it6162.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: ITE IT6162 MIPI DSI to HDMI 2.0 Bridge
>>> +
>>> +maintainers:
>>> +  - Hermes Wu <Hermes.Wu@ite.com.tw>
>>> +
>>> +description: |
>>> +  The ITE IT6162 is a high-performance, low-power HDMI bridge that 
>>> +converts
>>> +  2 MIPI DSI signals to 1 HDMI 2.0 output. It supports dual MIPI 
>>> +D-PHY 2.0
>>> +  links up to 10 Gbps each (20 Gbps total), compatible with DSI-2 v2.0.
>>> +
>>> +  The HDMI transmitter supports resolutions up to 4Kx2K@60Hz and is 
>>> + compliant  with HDMI 2.0 specifications.
>>> +
>>> +  For audio, it supports up to 8-channel LPCM via I2S (multi-line or 
>>> + TDM mode),  with optional S/PDIF or DSD (for SACD). Audio sampling 
>>> + rates up to 192 kHz  are supported.
>>> +
>>> +allOf:
>>> +  - $ref: /schemas/sound/dai-common.yaml#
>>> +
>>> +properties:
>>> +  compatible:
>>> +    const: ite,it6162
>>> +
>>> +  reg:
>>> +    maxItems: 1
>>> +
>>> +  interrupts:
>>> +    maxItems: 1
>>> +
>>> +  reset-gpios:
>>> +    maxItems: 1
>>> +
>>> +  ivdd-supply:
>>> +    description: Core voltage supply
>>> +
>>> +  ovdd-supply:
>>> +    description: I/O voltage supply
>>> +
>>> +  ovdd1833-supply:
>>> +    description: Flexible I/O voltage supply (1.8V domain)
>>> +
>>> +  "#sound-dai-cells":
>>> +    const: 0
>>> +
>>> +  ite,support-hdcp:
>>> +    description: >
>>> +      Boolean property indicating that HDCP (High-bandwidth Digital Content
>>> +      Protection) is supported and enabled on this board/hardware instance.
>>> +
>>> +      When present, the driver may initialize and enable HDCP functionality
>>> +      (typically HDCP 1.4 or higher depending on chip/firmware). If absent,
>>> +      HDCP support is considered disabled or not implemented/wired.
>>
>> How HDCP is being disabled in this chip? This does not look like property for this device.
> 
> The HDCP is handled by FW inside the chip, and can be disabled. 
> 
>>> +
>>> +      Presence enables support; the property value is ignored (use as flag:
>>> +      `ite,support-hdcp;`).
>>
>> Drop, do not explain us how the DTS works.
>>
>>> +    type: boolean
>>> +
>>> +  ports:
>>> +    $ref: /schemas/graph.yaml#/properties/ports
>>> +
>>> +    properties:
>>> +      port@0:
>>> +        $ref: /schemas/graph.yaml#/$defs/port-base
>>> +        unevaluatedProperties: false
>>> +        description: Input port for MIPI DSI-0 (first DSI lane pair; 
>>> + optional)
>>
>> schema defines what is optional or not. Don't repeat constraints in free form text.
>>
>>> +
>>> +        properties:
>>> +          endpoint:
>>> +            $ref: /schemas/media/video-interfaces.yaml#
>>> +            unevaluatedProperties: false
>>> +            properties:
>>> +              data-lanes:
>>> +                minItems: 1
>>> +                maxItems: 4
>>> +              lane-polarities:
>>> +                $ref: /schemas/types.yaml#/definitions/uint32-array
>>
>> No, what is happening with this patch? It wasn't here.
>>
>> None of these are correct, don't make random changes to the binding.
> 
> this line will remove in v3
> 
> the lane-polarities in video-interfaces.yaml, was use for Dn/Dp swap in driver
> 
> should I also removed the description of properties that already exist in video-interfaces.yaml?
> 
>>> +                minItems: 1
>>> +                maxItems: 5
>>> +                items:
>>> +                  enum: [0, 1]
>>> +                description: >
>>> +                  Array of lane polarities starting with clock lane, followed by
>>> +                  data lanes in the order given in data-lanes.
>>> +                  0 = normal (active high), 1 = inverted (active low).
>>> +                  If omitted, all lanes are assumed normal (0).
>>> +              clock-noncontinuous:
>>> +                type: boolean
>>> +                description: >
>>> +                  If present, allows MIPI DSI non-continuous clock mode
>>> +                  (clock lane can be stopped between transmissions for power saving).
>>> +            required:
>>> +              - data-lanes
>>> +
>>> +      port@1:
>>> +        $ref: /schemas/graph.yaml#/$defs/port-base
>>> +        unevaluatedProperties: false
>>> +        description: Input port for MIPI DSI-1 (second DSI lane pair; 
>>> + required)
>>> +
>>> +        properties:
>>> +          endpoint:
>>> +            $ref: /schemas/media/video-interfaces.yaml#
>>> +            unevaluatedProperties: false
>>> +            properties:
>>> +              data-lanes:
>>> +                minItems: 1
>>> +                maxItems: 4
>>> +              lane-polarities:
>>> +                $ref: /schemas/types.yaml#/definitions/uint32-array
>>> +                minItems: 1
>>> +                maxItems: 5
>>> +                items:
>>> +                  enum: [0, 1]
>>> +                description: >
>>> +                  Array of lane polarities starting with clock lane, followed by
>>> +                  data lanes in the order given in data-lanes.
>>> +                  0 = normal (active high), 1 = inverted (active low).
>>> +                  If omitted, all lanes are assumed normal (0).
>>> +              clock-noncontinuous:
>>> +                type: boolean
>>> +                description: >
>>> +                  If present, allows MIPI DSI non-continuous clock mode
>>> +                  (clock lane can be stopped between transmissions for power saving).
>>> +            required:
>>> +              - data-lanes
>>> +
>>> +      port@2:
>>> +        $ref: /schemas/graph.yaml#/properties/port
>>> +        description: Audio input port (I2S; optional)
>>> +
>>> +      port@3:
>>> +        $ref: /schemas/graph.yaml#/properties/port
>>> +        description: HDMI output port (optional)
>>> +
>>> +    required:
>>> +      - port@1   # Only DSI-1 port is mandatory per your request
>>
>> per my request? What?
> 
> sorry, I did not check this comment generate by tools. 

I don't want to deal with output coming from your tools. You should deal
with the tools, not me.

Also, learn about assisted tag, so you mark this patch correctly and we
can safely ignore it, for example.


> 
>> Again, Don't repeat constraints in free form text.
>>
>>> +
>>> +required:
>>> +  - compatible
>>> +  - reg
>>> +  - interrupts
>>> +  - ports
>>> +
>>> +unevaluatedProperties: false
>>> +
>>> +examples:
>>> +  - |
>>> +    #include <dt-bindings/gpio/gpio.h>
>>> +    #include <dt-bindings/interrupt-controller/irq.h>
>>> +
>>> +    i2c {
>>> +        #address-cells = <1>;
>>> +        #size-cells = <0>;
>>> +
>>> +        bridge@58 {
>>> +            compatible = "ite,it6162";
>>> +            reg = <0x58>;
>>> +
>>> +            #sound-dai-cells = <0>;
>>> +
>>> +            interrupt-parent = <&pio>;
>>> +            interrupts = <128 IRQ_TYPE_LEVEL_LOW>;
>>> +
>>> +            pinctrl-names = "default";
>>> +            pinctrl-0 = <&it6162_pins>;
>>> +
>>> +            reset-gpios = <&pio 127 GPIO_ACTIVE_LOW>;
>>> +
>>> +            ivdd-supply = <&pp1000_hdmi_x>;
>>> +            ovdd-supply = <&pp3300_vio28_x>;
>>> +            ovdd1833-supply = <&pp1800_vcamio_x>;
>>> +
>>> +            ite,support-hdcp;   // HDCP enabled on this board
>>> +
>>> +            ports {
>>> +                #address-cells = <1>;
>>> +                #size-cells = <0>;
>>> +
>>> +                port@0 {
>>> +                    reg = <0>;
>>> +                    it6162_dsi0: endpoint {
>>> +                        data-lanes = < 1 2 3 4>;
>>> +                        remote-endpoint = <&dsi_0_out>;
>>> +                    };
>>> +                };
>>> +
>>> +                port@1 {
>>> +                    reg = <1>;
>>> +                    it6162_dsi1: endpoint {
>>> +                        data-lanes = < 1 2 3 4>;
>>> +                        remote-endpoint = <&dsi_1_out>;
>>> +                    };
>>> +                };
>>> +
>>> +                port@2 {
>>> +                    reg = <2>;
>>> +                    it6162_audio_in: endpoint {
>>> +                        remote-endpoint = <&i2s0_out>;
>>> +                    };
>>> +                };
>>> +
>>> +                port@3 {
>>> +                    reg = <3>;
>>> +                    it6162_hdmi_out: endpoint {
>>> +                        remote-endpoint = <&hdmi_connector_in>;
>>> +                    };
>>> +                };
>>> +            };
>>> +        };
>>> +    };
>>> \ No newline at end of file
>>
>> You have patch warnings.
>>
>> Write detailed changelog explaining WHY you ignore or drop people's review and WHY you are doing these changes.
>>
>> Best regards,
>> Krzysztof
>>
>>
> BR,
> Hermes
> 


Best regards,
Krzysztof

