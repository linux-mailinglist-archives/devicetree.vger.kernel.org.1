Return-Path: <devicetree+bounces-79330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F4B914DEC
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 15:06:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CEA111C22162
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 13:06:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3758713DDB5;
	Mon, 24 Jun 2024 13:06:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=remote-tech-co-uk.20230601.gappssmtp.com header.i=@remote-tech-co-uk.20230601.gappssmtp.com header.b="1gJjEIM0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A7113D88E
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 13:06:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719234374; cv=none; b=mny/8K1SjnzlpbWEE1zTzHiFVYLWgOnXWtsej+Qsdw9gOF9ViAHJkZ9EJx8bCTWA+FtgERomT721CVzmOWad9iYfDXjHKKPMKILccq1L+fVj/y4z0Qo7T5SF/XUwsySeQLX1p45Mp6T8nxo2qOsGbOIeKisznkx4CRcxrHHPDaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719234374; c=relaxed/simple;
	bh=ex+7rt4pI1Xvmjbse0OMdVHPQn7ofhcny9ssr3PsAmI=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PRBUsUhljdScNrF8xKb5V4mjTTu+gZlCJ5pXe1jYZ8vkI35fmBNSr1AqLNxm9WV3NyP81t/7vmIcv7MjBrhSss/TjM4DN09/YPE63dygFGq3lQBuIDSIoQ0dJgK05U4irteLeRL+RLvAl3kOm0rXYmRsTPQychHXSCHStTNkVmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=remote-tech.co.uk; spf=pass smtp.mailfrom=remote-tech.co.uk; dkim=pass (2048-bit key) header.d=remote-tech-co-uk.20230601.gappssmtp.com header.i=@remote-tech-co-uk.20230601.gappssmtp.com header.b=1gJjEIM0; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=remote-tech.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=remote-tech.co.uk
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a724b4f1218so160670866b.2
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 06:06:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=remote-tech-co-uk.20230601.gappssmtp.com; s=20230601; t=1719234369; x=1719839169; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NvHQSEsF8s98aDBqYQPy5qb2e+DikeQTdgIkHVK8CO4=;
        b=1gJjEIM0RTWKvkfAyan+/yzlnQSQTTvI/747gjv6h6XkHmn98rj7gj6kOKjeJvdSLk
         RcYKZI0cRBoJaLVCFKSO5FvonRkJwP/61DUBf3lScTCf1ZO+wdpBDKAPk8rHFkLWK/iE
         /3EbJJG8NVrrMg2T6bpvz9l7voKl6om5UBOD8sY36Pn9mp43dGKVVrarKpoevZa3TgrR
         HResjoFvpzHyGevCkuirJlsFNsPhi+6u/MPc7Wu1+IIDKOdAHFaNX/sEDMIq7t3YpYmB
         Z2wUbitAw/pX6aUOlzs1lsVtTp/4lOPyGS+wdtpWyVT4HWLIC15rRf2Bx8YKgupt9Rgi
         +jNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719234369; x=1719839169;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NvHQSEsF8s98aDBqYQPy5qb2e+DikeQTdgIkHVK8CO4=;
        b=oFsBikWWPV9OC3HB2EgCR8y2aQxj8Jf6A3uJuyBC4BNzznOUAEZrFm9sLpGiIvOELX
         g417UKjFLi/gyQD3Uj/+LHqdNSkW/hwXeuxFhmPstq+g7qfKc0q9qND6zW+L5IEO8RKG
         vLpuhUh3WPpSi9N6hHUfXpbae6Jh9KJy1LTN1NuOFKPsRLXwjLdHC9td9Towik4g7pdT
         BCcSmO7iJPyiBkfQyJEhTDjF+jgJapH2LlI15E+ecCMb46lxeFhp0gzVJODg0ETLtkiy
         T8AeV6IYjmFLJBJk7vgrukHjwC1YJgvFudIxqxhrXxJfeFfmhBQM7ElDFiT93TINCM2V
         mUog==
X-Forwarded-Encrypted: i=1; AJvYcCWgNj/6V+EdERCYYYlLDOMdZs7ob0apnj6TTgfULgiWlFQKEK3WXbm3oqUXArQV3e1yvbiNwaEOs7CPu8K6oatKEmBCKAycc83vbQ==
X-Gm-Message-State: AOJu0YyS36EXm2FU0LlEIFohANr234fGJH5B70HPD+vkx+P/SFhlAIHu
	k2Z5OFpvi9yIDWA+FJg2LbaskTqcSknz3Y7Yoy3aKBpTc0+HQE89rOHqQL7obUvKQFlobN6Idcc
	zQCFtnIqhNwAFbaKtY5M4WQPhiOzHIatiXsd9JRqMBrvhFtcwPAVvmO2M2eIVpVEvAkUzGwcIEy
	ekAlJ4quu09zeWfyxu63YfWnNvFibUkxaLfHyhp3JU
X-Google-Smtp-Source: AGHT+IHLYhIo10rbRWz1dfrBxzGxpNEXMT580cBsYCelbQrN06els0yuR7g8+LyMgd9+sd/SRxin2w==
X-Received: by 2002:a17:907:c78e:b0:a6f:bc02:a008 with SMTP id a640c23a62f3a-a7242c4de49mr335996166b.4.1719234369354;
        Mon, 24 Jun 2024 06:06:09 -0700 (PDT)
Received: from admins-Air ([2a02:810d:aec0:2a54:f136:1973:486:27b7])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7240f37b16sm251177566b.109.2024.06.24.06.06.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jun 2024 06:06:08 -0700 (PDT)
Date: Mon, 24 Jun 2024 15:06:02 +0200
From: Vicentiu Galanopulo <vicentiu.galanopulo@remote-tech.co.uk>
To: pavel@ucw.cz, lee@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: leds: Add LED1202 LED Controller
Message-ID: <ZnlvOuvMQmJFrfSX@admins-Air>
References: <ZniNdGgKyUMV-hjq@admins-Air>
 <7a080980-a247-4d17-88f7-19899379e1a1@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7a080980-a247-4d17-88f7-19899379e1a1@kernel.org>

On Mon, Jun 24, 2024 at 07:02:12AM +0200, Krzysztof Kozlowski wrote:
> On 23/06/2024 23:02, Vicentiu Galanopulo wrote:
> > The LED1202 is a 12-channel low quiescent current LED driver with:
> >   * Supply range from 2.6 V to 5 V
> >   * 20 mA current capability per channel
> >   * 1.8 V compatible I2C control interface
> >   * 8-bit analog dimming individual control
> >   * 12-bit local PWM resolution
> >   * 8 programmable patterns
> > 
> > Signed-off-by: Vicentiu Galanopulo <vicentiu.galanopulo@remote-tech.co.uk>
> > ---
> > 
> > Changes in v2:
> >   - renamed label to remove color from it
> >   - add color property for each node
> >   - add function and function-enumerator property for each node
> 
> Fix your email setup, because your broken or non-existing threading
> messes with review process. See:
> 
> b4 diff '<ZniNdGgKyUMV-hjq@admins-Air>'
> Grabbing thread from
> lore.kernel.org/all/ZniNdGgKyUMV-hjq@admins-Air/t.mbox.gz
> Checking for older revisions
> Grabbing search results from lore.kernel.org
>   Added from v1: 1 patches
> ---
> Analyzing 3 messages in the thread
> Looking for additional code-review trailers on lore.kernel.org
> Preparing fake-am for v1: dt-bindings: leds: Add LED1202 LED Controller
> ERROR: v1 series incomplete; unable to create a fake-am range
> ---
> Could not create fake-am range for lower series v1
> 
> 
> > 
> >  .../devicetree/bindings/leds/st,led1202.yml   | 162 ++++++++++++++++++
> >  1 file changed, 162 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/leds/st,led1202.yml
> 
> yaml, not yml
ok, will change
> 
> > 
> > diff --git a/Documentation/devicetree/bindings/leds/st,led1202.yml b/Documentation/devicetree/bindings/leds/st,led1202.yml
> > new file mode 100644
> > index 000000000000..1484b09c8eeb
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/leds/st,led1202.yml
> > @@ -0,0 +1,162 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/leds/st,led1202.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: ST LED1202 LED controllers
> > +
> > +maintainers:
> > +  - Vicentiu Galanopulo <vicentiu.galanopulo@remote-tech.co.uk>
> > +
> > +description:
> > +  The LED1202 is a 12-channel low quiescent current LED controller
> > +  programmable via I2C; The output current can be adjusted separately
> > +  for each channel by 8-bit analog and 12-bit digital dimming control.
> > +
> > +  Datasheet available at
> > +  https://www.st.com/en/power-management/led1202.html
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - st,led1202
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  "#address-cells":
> > +    const: 1
> > +
> > +  "#size-cells":
> > +    const: 0
> > +
> > +patternProperties:
> > +  "^led@[0-9a-f]+$":
> > +    type: object
> > +    $ref: common.yaml#
> > +    unevaluatedProperties: false
> > +
> > +    properties:
> > +      reg:
> > +        minimum: 0
> > +        maximum: 11
> > +
> > +    required:
> > +      - reg
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/leds/common.h>
> > +
> > +    i2c {
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +
> > +        led-controller@58 {
> > +            compatible = "st,led1202";
> > +            reg = <0x58>;
> > +            address-cells = <1>;
> > +            size-cells = <0>;
> > +
> > +            led@0 {
> > +                reg = <0>;
> > +                label = "led1";
> > +                function = LED_FUNCTION_STATUS;
> > +                color = <LED_COLOR_ID_RED>;
> > +                function-enumerator = <1>;
> > +                active = <1>;
> 
> This did not improve. First, which binding defines this field?
> 
it's a new field I added, but if you would like for me to use another
please advise.
Depending on this value, the enabled/disabled bit is set in the
appropriate register, and the led appears with the label name in sysfs.
Hope this extra info helps in helping me pick the appropiate binding. 

> Second this was never tested.
>
are you referring to the automated test done by the kernel test robot?

 
> Third, where did you give me any chance to reply to your comment before
> posting new version?
> 
I think I have a wrong understanding of the process or mutt client is missconfigured
or missued on my side.
I've been replying to your emails in the mutt client, but sending the patches with
mutt -H.
But the changes you mentioned related to function on color, I don't know what should have happend there.. 
I sent a v2 with the changes you indicated.

Thanks,
Vicentiu

> 
> Best regards,
> Krzysztof
> 

