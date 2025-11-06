Return-Path: <devicetree+bounces-235470-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7150DC39292
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 06:29:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D02301A200F0
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 05:29:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B9222D8384;
	Thu,  6 Nov 2025 05:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AwEiKKl3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 633EC25C6F1
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 05:29:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762406954; cv=none; b=R0mhc/18JwkgILsKZls84JpTxHH7b5GMmQEd5OnPwQxJoUrH6ah9WXvteM7RkrSNMJmUY+NZqfaW2aNE1UzcoJ8xZWSkuev9UtrnEsqdXez/bAvuE4uxH6URNEKAf3SmbzkVjSHOPA3/ev1YmkTbsTzOAw+j6cs8pvHhd/jesE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762406954; c=relaxed/simple;
	bh=n2loI6PnkdWc/Xcsx1+XnYItNZkmsLD8O+LWC/I7LuA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MkiYzk5D1DWEK4v3dk6Dgf7Z/NgagPXVOnbMtdSNabLQPffRnWT4ZywJ8krNDh36p3FHR46SIxEbpg2sbJjh4kPOFNnJ819N7adQzeJ5mjcwCe8DRbCkfJwXXnwCDr6D5JZiXaWVFoMqaZpfobixKkFXC+AqmpWdkTuZ5Fru6gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AwEiKKl3; arc=none smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-b9ef786babcso384299a12.1
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 21:29:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762406950; x=1763011750; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QZf7nzpvEhPnYK8e5saXeTYFZVlI/+ZhnP5xGtJSFjQ=;
        b=AwEiKKl3Uh6ce1TvXL2K5/nOxtXeCC65A1/CK6q+OfQXN/Gc81rR/FVprSdyyrLWme
         wZmhlX65bcQqvJlLC6679l8HuEZjhkeckj1Uj7ndeqt0Qae/QoIpeY+RifVv1OjRw5pE
         uclIaeJCbsINjfploePwQx9mFaBvSKjf5oyxA+i7vj5ef7IH9dRsj61D6AZi60SVyKwH
         jCWDUY1R+4pOZXllED+UzVJUdI0LXlCKh8jwoyTHE1rwKqcOnDCcD5C8qNsxatLyc5vY
         FAXCuu5kGkUjP17l8M/ypstSSe4DW05n05oMPPbVdxZ5Rn9aK5XdD/aPEY4JXVry3ylk
         130A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762406950; x=1763011750;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QZf7nzpvEhPnYK8e5saXeTYFZVlI/+ZhnP5xGtJSFjQ=;
        b=uRIEZT2kXzrFYSxmPZpIQ31qtEXFCyejKl7MIpRAqj6fUsXNWS5zkXkYRuiGohwFDl
         VWHHOBxnOTbQypfzD8ZSUqxZobNs4D4w+WOjQpCLWLG445YisYx7emwch4y56b0RlBDq
         L7o+EaSkkePr94JIKIEIpHNBPTZcy0mYAB/SYZqouHPR1+My6fu0cfK++IvM002zKaBQ
         2vWfOaBSnTM387pUJqvPix9PLwU82kU8W0IeCn2mUnH+Zk6fIGfsQ/wDRx2bvVDf9PP0
         cpdzzPB1/d51F9YhuOozDyUv9jOHDHAkLTeHQkYWz+kn2mSOI2FL1HvgRUzsu2MKgUr4
         DhDA==
X-Forwarded-Encrypted: i=1; AJvYcCVqBlNwW2PAjcHJbmcsQqb3+NTncTOPie/vGE8glllIaAZrTRJYnJW/VemBM4XJSPxjvIu/iDiVMnE7@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9WjCyuAHpfvCep7C9q7U8Kzgqu0eVw/CDmlyWBxwaL408J/QN
	us9ofQnW4NEqsvIzUjXNvE12jGngTEzsYIJsSVKT6RA9jpXfU4BlnTbP
X-Gm-Gg: ASbGncvJQ3bFtxMRArUXEMZ1Rc+ZNdVAc8wF7jYkv+sAac5VntXmbq+CFZPzI1bzV1J
	ghwUp7PqXQOMkoOSzVjo5/3soogO1GBtSjWhwcTC5IhbcpCHPIb/cT/gO3s1jDLWZuVy+vcvyE8
	KQSrOQZBoIgjrHY3zWuEXKVYP1VIM3795AbyUDKm003dG2kOSMML67tUpL18Q3gfsw70xDuisc6
	Pwfzi4/28HPRjPZMJkLZ6D2+xxIgqt1G6H3bXuE6+Glsxp89/fm3zSGsgpAOlbDIAMVpuIs2Fv7
	99K27kIOT6kZWAtuumgq/qCqlU1RC1vVqWX9hJ6idDNIG7Rvvo9/pyOZLUaNKNnKmaIdcc1uaxh
	406Mc6jpFlhb9KWtIZ7vPmDTkUc5T4VAk2yqFYQ+zHwfCO4r03KqrV1qgApzGISlMygRFmll24B
	BKH7iPpQ5qwrLk9/U6Nw3K+aadocxIK5WccRrjwaU=
X-Google-Smtp-Source: AGHT+IFT+jrjXMaHwGsQ6O7aIkM6xiLZOEWqOora2R1jFqITYFI+TEHDGkIN0NlaP9WS2/NVUzFxrQ==
X-Received: by 2002:a17:902:ce04:b0:295:54cb:a8df with SMTP id d9443c01a7336-2962ae4cc76mr83028555ad.36.1762406950342;
        Wed, 05 Nov 2025 21:29:10 -0800 (PST)
Received: from HYB-iPCgmhaB8Cy.ad.analog.com ([59.9.235.253])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-296509683easm13781345ad.15.2025.11.05.21.29.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 21:29:09 -0800 (PST)
Date: Thu, 6 Nov 2025 14:29:03 +0900
From: Joan Na <joan.na.devcode@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, Joan Na <joan.na@analog.com>
Subject: Re: [PATCH v3 3/3] dt-bindings: regulator: Add MAX77675 regulator
 binding
Message-ID: <aQwyH4rYlcWNxGxI@HYB-iPCgmhaB8Cy.ad.analog.com>
References: <20251014053142.15835-1-joan.na@analog.com>
 <20251014053142.15835-4-joan.na@analog.com>
 <512ffe3d-5ab3-4e87-afd2-46f0005a8d17@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <512ffe3d-5ab3-4e87-afd2-46f0005a8d17@kernel.org>

On Tue, Oct 14, 2025 at 10:14:15AM +0200, Krzysztof Kozlowski wrote:
> On 14/10/2025 07:31, Joan-Na-adi wrote:
> > From: Joan Na <joan.na@analog.com>
> > 
> > Add device tree binding YAML schema for the Maxim MAX77675 PMIC regulator.
> > This defines the node properties and supported regulator names for use
> > in device tree sources.

Hello Krzysztof,

Thank you again for your helpful feedback.

> 
> A nit, subject: drop second/last, redundant "binding". The "dt-bindings"
> prefix is already stating that these are bindings.
> See also:
> https://elixir.bootlin.com/linux/v6.17-rc3/source/Documentation/devicetree/bindings/submitting-patches.rst#L18
> 

I plan to update the patch subject to avoid redundancy. The new title is:
dt-bindings: regulator: Add support for MAX77675 PMIC


> > 
> > Fixed:
> > - Missing explanation of `maxim,fps-slot` default value
> > - Updated DT binding enums to use string values (e.g., "low", "high") instead of integers
> > - Converted several binary properties to boolean type
> > - Renamed time-based properties to use standard unit suffixes (e.g., "-sec", "-us")
> > - Added default values for properties
> 
> 
> Probably you wanted a changelog? Changelog goes to --- with details
> against EACH version. Please start using b4 if canonical patch format is
> tricky. b4 would help.
>

I have applied this from PATCH V4.

> > 
> > Signed-off-by: Joan Na <joan.na@analog.com>
> > ---
> >  .../bindings/regulator/maxim,max77675.yaml    | 205 ++++++++++++++++++
> >  1 file changed, 205 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/regulator/maxim,max77675.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/regulator/maxim,max77675.yaml b/Documentation/devicetree/bindings/regulator/maxim,max77675.yaml
> > new file mode 100644
> > index 000000000000..6be29eced039
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/regulator/maxim,max77675.yaml
> > @@ -0,0 +1,205 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/regulator/maxim,max77675.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Maxim MAX77675 PMIC Regulator
> > +
> > +maintainers:
> > +  - Joan Na <joan.na@analog.com>
> > +
> > +description: |
> > +  The MAX77675 is a PMIC providing multiple switching buck regulators
> > +  (SBB0–SBB3), accessible via I2C. Each SBB can be configured individually
> > +  in the Device Tree. Additional PMIC settings can be configured through
> > +  device-specific properties.
> > +  Users should use the macros from dt-bindings/regulator/maxim,max77675-regulator.h
> > +
> > +allOf:
> > +  - $ref: regulator.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    const: maxim,max77675
> 
> Please organize the patch documenting compatible (DT bindings) before
> their user.
> See also:
> https://elixir.bootlin.com/linux/v6.14-rc6/source/Documentation/devicetree/bindings/submitting-patches.rst#L46
> 

I have changed the commit order starting from PATCH V5.

> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  maxim,en-mode:
> > +    description: |
> > +      Enable mode configuration.
> > +      "push-button"  - Push button
> > +      "slide-switch" - Slide switch
> > +      "logic" - Logic mode
> 
> You just repeat the name in the description. Say something useful.
> 

Updated the DT property description as follows:
description: |
      Enable mode configuration.
      The debounce time set by 'adi,debounce-time-us' applies to
      both push-button and slide-switch modes.
      "push-button"  - A long press triggers power-on or power-down
      "slide-switch" - Low level powers on, high level powers down
      "logic"        - Low level powers on, high level powers down (no debounce time)

> > +    $ref: /schemas/types.yaml#/definitions/string
> > +    enum: ["push-button", "slide-switch", "logic"]
> > +    default: "slide-switch"
> > +
> > +  maxim,latency-mode:
> > +    description: |
> > +      Latency mode for voltage transition:
> > +      "high" - High latency (100μs)
> > +      "low"  - Low latency (10μs)
> 
> So use values 100 or 10, and proper type (-us)
> 
>

I have applied this from PATCH V5.

> > +    $ref: /schemas/types.yaml#/definitions/string
> > +    enum: ["high", "low"]
> > +    default: "high"
> > +
> > +  maxim,drv-sbb-strength:
> > +    description: |
> > +      SIMO Buck-Boost Drive Strength Trim.
> > +      Controls the drive strength of the SIMO regulator's power MOSFETs.
> > +      This setting affects the switching speed, which impacts power efficiency and EMI.
> > +      "max"  – Maximum drive strength (~0.6 ns transition time)
> > +      "high" – High drive strength (~1.2 ns transition time)
> > +      "low"  – Low drive strength (~1.8 ns transition time)
> > +      "min"  – Minimum drive strength (~8 ns transition time)
> > +    $ref: /schemas/types.yaml#/definitions/string
> > +    enum: ["max", "high", "low", "min"]
> > +    default: "max"
> > +
> > +  maxim,dvs-slew-rate-mv-per-us:
> 
> ... like here.
> 
> > +    description: |
> > +      Dynamic rising slew rate for output voltage transitions, in mV/μs.
> 
> Except you said mv/us, not us. Confusing.
> 

Would it be acceptable to keep the current name "mv-per-us"?

> > +      This setting is only used when 'maxim,fixed-slew-rate' is not present.
> > +    enum: [5, 10]
> > +    default: 5
> > +
> > +  maxim,en-debounce-time-us:
> > +    description: |
> > +      Debounce time for the enable pin, in microseconds
> > +    enum: [100, 30000]
> > +    default: 100
> > +
> > +  maxim,manual-reset-time-sec:
> > +    description: |
> 
> Do not need '|' unless you need to preserve formatting.
> 

I have applied this from PATCH V5.

> > +      Manual reset time in seconds:
> > +    enum: [4, 8, 12, 16]
> > +    default: 4
> > +
> > +  maxim,en-pullup-disable:
> > +    type: boolean
> > +    description: |
> > +      Disable internal pull-up for EN pin.
> > +      When set, the internal pull-up is disabled.
> > +      Defaults to enabled if this property is not specified.
> 
> This and maybe few more properties look like pinctrl bindings. Maybe
> properties from pincfg are applicable?
> 

The maxim,en-pullup-disable property disables the internal pull-up of the EN pin.
While it looks similar to a pinctrl configuration,
it is actually handled by a device-specific control in the max77675 register,
not through the SoC’s pinctrl subsystem.
So, would it be acceptable to keep the current naming and implementation?

> > +    default: false
> > +
> > +  maxim,bias-low-power-request:
> > +    type: boolean
> > +    description: |
> > +      Request low-power bias mode.
> > +      When set, the device enters low-power bias mode.
> > +      Defaults to normal bias mode if this property is not specified.
> > +    default: false
> > +
> > +  maxim,simo-int-ldo-always-on:
> > +    type: boolean
> > +    description: |
> > +      Set internal LDO to always supply 1.8V
> > +      When set, the internal LDO always supplies 1.8V.
> > +      By default, the SIMO internal channel supplies 1.8V during low-power mode
> > +    default: false
> > +
> > +  regulators:
> > +    type: object
> > +    description: Regulator child nodes
> > +    patternProperties:
> > +      "^sbb[0-3]$":
> > +        type: object
> > +        $ref: regulator.yaml#
> > +    properties:
> > +      maxim,fps-slot:
> 
> That's not property of regulators. Totally messed indentation.
> 
>

The maxim,fps-slot property is specific to the MAX77675 regulators 
and is used to configure FPS slots individually for each regulator (e.g., sbb0–sbb3). 
As this represents a device-specific extension rather than a generic regulator property, 
it is defined under each regulator node.

> > +        description: |
> > +          FPS (Flexible Power Sequencer) slot selection.
> > +          The Flexible Power Sequencer allows resources to power up under hardware or software control.
> > +          Additionally, each resource can power up independently or among a group of other regulators
> > +          with adjustable power-up and power-down slots.
> > +          This device's regulators provide an additional property to configure the FPS parameters,
> > +          allowing each regulator to be assigned to an FPS slot for proper power management control.
> > +          "slot0"   - Assign to FPS Slot 0
> > +          "slot1"   - Assign to FPS Slot 1
> > +          "slot2"   - Assign to FPS Slot 2
> > +          "slot3"   - Assign to FPS Slot 3
> > +          "default" - Use the default FPS slot value stored in OTP and read from the register
> > +        $ref: /schemas/types.yaml#/definitions/string
> > +        enum: ["slot0", "slot1", "slot2", "slot3", "default"]
> > +        default: default
> > +
> > +      maxim,fixed-slew-rate:
> > +        type: boolean
> > +        description: |
> > +          Use fixed slew rate of 2 mV/μs for output voltage transitions.
> > +          When this property is present, the device uses a constant 2 mV/μs slew rate
> > +          and ignores any dynamic slew rate configuration.
> > +          When absent, the device uses the dynamic slew rate specified
> > +          by 'maxim,dvs-slew-rate-mv-per-us'
> > +        default: true
> > +
> > +    additionalProperties: false
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - regulators
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/regulator/maxim,max77675-regulator.h>
> > +
> > +    i2c {
> > +      #address-cells = <1>;
> > +      #size-cells = <0>;
> > +
> > +      max77675: pmic@44 {
> > +        compatible = "maxim,max77675";
> > +        reg = <0x44>;
> > +
> > +        maxim,en-mode = "slide-switch";
> > +        maxim,latency-mode = "high";
> > +        maxim,drv-sbb-strength = "max";
> > +        maxim,dvs-slew-rate-mv-per-us = <5>;
> > +        maxim,manual-reset-time-sec = <4>;
> > +        maxim,en-debounce-time-us = <100>;
> > +
> > +        regulators {
> > +          sbb0: sbb0 {
> > +            regulator-name = "sbb0";
> > +            regulator-min-microvolt = <500000>;
> > +            regulator-max-microvolt = <5500000>;
> > +            maxim,fps-slot = "default";
> 
> I don't think this was tested.
> 
> 
> Best regards,
> Krzysztof

Testing on the actual EVKit has been conducted since PATCH V4

-- 
Best regards,
Joan Na


