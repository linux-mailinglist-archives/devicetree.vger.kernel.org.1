Return-Path: <devicetree+bounces-71238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CACFC8D6224
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 14:48:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EE8CF1C21DBC
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 12:48:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81491158849;
	Fri, 31 May 2024 12:48:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=savoirfairelinux.com header.i=@savoirfairelinux.com header.b="CME5Ful2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com [208.88.110.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C888D158848;
	Fri, 31 May 2024 12:48:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=208.88.110.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717159699; cv=none; b=aCWQZPApzitmdQ4ZAdt9tgb6Naq89KNkoY7PnzYfiyB0iXfmuC+vZ4nDiJJhza6C8Nm2acrzkHsFhkt/0vPgjWG72FX2uojaF+0uU2wJuIAT5CASbvo8oHhVpt+PMP8cudpCt4wdvOXlO+8oUgxWC4ivuRCXH0NrqENlpKWnoPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717159699; c=relaxed/simple;
	bh=RpjgYwPDyJuqrExpz1nNP6Ko9Qg4oE1su/7aCIq+LAM=;
	h=Date:From:To:Cc:Message-ID:In-Reply-To:References:Subject:
	 MIME-Version:Content-Type; b=QuOAiMOpxc0mzPwF2ZxJ4abxVxu2JTFEuvt1OnoX8TlehhACDblGeMWpISRgrnDCgNxsGzxKYuVESEohdRHTeuOuuI5dFlETItJ1Wd2MJC/ixiQ9QVA6LHSdVw9rCK+57w0Vdbg6VIJnK/+3pagFbBz1+kzNoAolXjTP5UtiC6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=savoirfairelinux.com; spf=pass smtp.mailfrom=savoirfairelinux.com; dkim=pass (2048-bit key) header.d=savoirfairelinux.com header.i=@savoirfairelinux.com header.b=CME5Ful2; arc=none smtp.client-ip=208.88.110.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=savoirfairelinux.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=savoirfairelinux.com
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 1F9649C096E;
	Fri, 31 May 2024 08:48:17 -0400 (EDT)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10032)
 with ESMTP id wsrHJO9_bBGT; Fri, 31 May 2024 08:48:15 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id B31369C2CD8;
	Fri, 31 May 2024 08:48:15 -0400 (EDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.savoirfairelinux.com B31369C2CD8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=savoirfairelinux.com; s=DFC430D2-D198-11EC-948E-34200CB392D2;
	t=1717159695; bh=XHYg/xXbggBW6T/eEAZpR4M9NzidJhaQVBYe6V+5Uwo=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=CME5Ful22NGYQX5X3G/QGYkgnwUNX4QmgtRMXjjWtkoudDR5OH9Vn2oMnBk9H7Lx+
	 oBqbJM2GPGCWTnBBVwJvtK3H9XEsrgIIro0fnNxSivQPKzby4UKlAiCdzBQmRB3i2X
	 r+l6CIrcJ62QWiIDmyt82kiWN2SKbIlE+lRWeXMD73TBcyyBgostjPISQWIyEJxoRY
	 8pZTcDY4/DNYag52VbveIAaUDKmCLQVmfHsxJqLnTIIQFIwm9NLq1BSVzsItkwMaBE
	 diSMZ4X/F4wMXc0N05X4P4GoyXrlIV5lwvv1pVNGN3nT1XIcV4TjSZQYX9Ua1MU00J
	 kkiNgxA9AeNew==
X-Virus-Scanned: amavis at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10026)
 with ESMTP id 0-nDvHVWvAtj; Fri, 31 May 2024 08:48:15 -0400 (EDT)
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com [192.168.48.237])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 7FDF39C096E;
	Fri, 31 May 2024 08:48:15 -0400 (EDT)
Date: Fri, 31 May 2024 08:48:15 -0400 (EDT)
From: Elinor Montmasson <elinor.montmasson@savoirfairelinux.com>
To: Rob Herring <robh@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, 
	shengjiu wang <shengjiu.wang@gmail.com>, 
	Xiubo Lee <Xiubo.Lee@gmail.com>, Fabio Estevam <festevam@gmail.com>, 
	Nicolin Chen <nicoleotsuka@gmail.com>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	linux-sound <linux-sound@vger.kernel.org>, 
	devicetree <devicetree@vger.kernel.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	alsa-devel <alsa-devel@alsa-project.org>, 
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Message-ID: <1712008549.701259.1717159695483.JavaMail.zimbra@savoirfairelinux.com>
In-Reply-To: <20240520183148.GA1250699-robh@kernel.org>
References: <20240515135411.343333-1-elinor.montmasson@savoirfairelinux.com> <20240515135411.343333-10-elinor.montmasson@savoirfairelinux.com> <20240520183148.GA1250699-robh@kernel.org>
Subject: Re: [PATCHv4 9/9] ASoC: dt-bindings: fsl-asoc-card: add compatible
 for generic codec
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailer: Zimbra 8.8.15_GA_4581 (ZimbraWebClient - GC112 (Linux)/8.8.15_GA_4581)
Thread-Topic: ASoC: dt-bindings: fsl-asoc-card: add compatible for generic codec
Thread-Index: 9W7FNkO/DHfWsLN9ZmR/Fd4sK0HmGw==

From: "Rob Herring" <robh@kernel.org>
Sent: Monday, 20 May, 2024 20:31:48
> On Wed, May 15, 2024 at 03:54:11PM +0200, Elinor Montmasson wrote:
>> Add documentation about new dts bindings following new support
>> for compatible "fsl,imx-audio-generic".
>> 
>> Some CPU DAI don't require a real audio codec. The new compatible
>> "fsl,imx-audio-generic" allows using the driver with codec drivers
>> SPDIF DIT and SPDIF DIR as dummy codecs.
>> It also allows using not pre-configured audio codecs which
>> don't require specific control through a codec driver.
>> 
>> The new dts properties give the possibility to set some parameters
>> about the CPU DAI usually set through the codec configuration.
>> 
>> Signed-off-by: Elinor Montmasson <elinor.montmasson@savoirfairelinux.com>
>> ---
>>  .../bindings/sound/fsl-asoc-card.yaml         | 96 ++++++++++++++++++-
>>  1 file changed, 92 insertions(+), 4 deletions(-)
>> 
>> diff --git a/Documentation/devicetree/bindings/sound/fsl-asoc-card.yaml
>> b/Documentation/devicetree/bindings/sound/fsl-asoc-card.yaml
>> index 9922664d5ccc..332d8bf96e06 100644
>> --- a/Documentation/devicetree/bindings/sound/fsl-asoc-card.yaml
>> +++ b/Documentation/devicetree/bindings/sound/fsl-asoc-card.yaml
>> @@ -23,6 +23,16 @@ description:
>>    and PCM DAI formats. However, it'll be also possible to support those non
>>    AC'97/I2S/PCM type sound cards, such as S/PDIF audio and HDMI audio, as
>>    long as the driver has been properly upgraded.
>> +  To use CPU DAIs that do not require a codec such as an S/PDIF controller,
>> +  or to use a DAI to output or capture raw I2S/TDM data, you can
>> +  use the compatible "fsl,imx-audio-generic".
>> +
>> +definitions:
>> +  imx-audio-generic-dependency:
>> +    properties:
>> +      compatible:
>> +        contains:
>> +          const: fsl,imx-audio-generic
>>  
>>  maintainers:
>>    - Shengjiu Wang <shengjiu.wang@nxp.com>
>> @@ -81,6 +91,7 @@ properties:
>>                - fsl,imx-audio-wm8960
>>                - fsl,imx-audio-wm8962
>>                - fsl,imx-audio-wm8958
>> +              - fsl,imx-audio-generic
>>  
>>    model:
>>      $ref: /schemas/types.yaml#/definitions/string
>> @@ -93,8 +104,14 @@ properties:
>>        need to add ASRC support via DPCM.
>>  
>>    audio-codec:
>> -    $ref: /schemas/types.yaml#/definitions/phandle
>> -    description: The phandle of an audio codec
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    description: |
>> +      The phandle of an audio codec.
>> +      If using the "fsl,imx-audio-generic" compatible, give instead a pair of
>> +      phandles with the spdif_transmitter first (driver SPDIF DIT) and the
>> +      spdif_receiver second (driver SPDIF DIR).
> 
>       minItems: 1
>       maxItems: 2
> 
>> +    items:
>> +      maxItems: 1
>>  
>>    audio-cpu:
>>      $ref: /schemas/types.yaml#/definitions/phandle
>> @@ -150,8 +167,8 @@ properties:
>>      description: dai-link uses bit clock inversion.
>>  
>>    mclk-id:
>> -    $ref: /schemas/types.yaml#/definitions/uint32
>> -    description: main clock id, specific for each card configuration.
>> +    $ref: /schemas/types.yaml#/definitions/uint32-array
>> +    description: Main clock id for each codec, specific for each card
>> configuration.
> 
>       minItems: 1
>       maxItems: 2
>>  
>>    mux-int-port:
>>      $ref: /schemas/types.yaml#/definitions/uint32
>> @@ -167,10 +184,68 @@ properties:
>>      $ref: /schemas/types.yaml#/definitions/phandle
>>      description: The phandle of an CPU DAI controller
>>  
>> +  # Properties relevant only with "fsl,imx-audio-generic" compatible
>> +  dai-tdm-slot-width:
>> +    description: See tdm-slot.txt.
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +
>> +  dai-tdm-slot-num:
>> +    description: See tdm-slot.txt.
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +
>> +  clocks:
>> +    description: |
>> +      The CPU DAI system clock, used to retrieve
>> +      the CPU DAI system clock frequency with the generic codec.
>> +    maxItems: 1
>> +
>> +  clock-names:
>> +    items:
>> +      - const: cpu_sysclk
>> +
>> +  cpu-system-clock-direction-out:
>> +    description: |
>> +      Specifies cpu system clock direction as 'out' on initialization.
>> +      If not set, direction is 'in'.
>> +    $ref: /schemas/types.yaml#/definitions/flag
>> +
>> +dependencies:
>> +  dai-tdm-slot-width:
>> +    $ref: "#/definitions/imx-audio-generic-dependency"
>> +  dai-tdm-slot-num:
>> +    $ref: "#/definitions/imx-audio-generic-dependency"
>> +  clocks:
>> +    $ref: "#/definitions/imx-audio-generic-dependency"
>> +  cpu-system-clock-direction-out:
>> +    $ref: "#/definitions/imx-audio-generic-dependency"
> 
> This works, but is an unusual pattern...
> 
>> +
>>  required:
>>    - compatible
>>    - model
>>  
>> +allOf:
>> +  - if:
>> +      $ref: "#/definitions/imx-audio-generic-dependency"
>> +    then:
>> +      properties:
>> +        audio-codec:
>> +          items:
>> +            - description: SPDIF DIT phandle
>> +            - description: SPDIF DIR phandle
>> +        mclk-id:
>> +          maxItems: 1
>> +          items:
>> +            minItems: 1
>> +            maxItems: 2
>> +    else:
>> +      properties:
>> +        audio-codec:
>> +          maxItems: 1
>> +        mclk-id:
>> +          maxItems: 1
>> +          items:
>> +            maxItems: 1
> 
> 
> You can handle the dependency like this instead:
> 
>           dai-tdm-slot-width: false
>           dai-tdm-slot-num: false
> 
> 
> And then you don't need the definitions.
> 
>> +
>>  unevaluatedProperties: false
>>  
>>  examples:
>> @@ -195,3 +270,16 @@ examples:
>>               "AIN2L", "Line In Jack",
>>               "AIN2R", "Line In Jack";
>>      };
>> +
>> +  - |
>> +    #include <dt-bindings/clock/imx8mn-clock.h>
>> +    sound-spdif-asrc {
>> +      compatible = "fsl,imx-audio-generic";
>> +      model = "spdif-asrc-audio";
>> +      audio-cpu = <&spdif>;
>> +      audio-asrc = <&easrc>;
>> +      audio-codec = <&spdifdit>, <&spdifdir>;
>> +      clocks = <&clk IMX8MN_CLK_SAI5_ROOT>;
>> +      clock-names = "cpu_sysclk";
>> +      cpu-system-clock-direction-out;
>> +    };
>> --
>> 2.34.1

Ok, thank you for the review, I'll make these modifications in v5.

