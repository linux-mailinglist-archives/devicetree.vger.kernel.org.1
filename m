Return-Path: <devicetree+bounces-246521-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E2640CBD6BF
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 11:59:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 58CEE30181E9
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 10:59:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6056329E75;
	Mon, 15 Dec 2025 10:59:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dq1hSwv7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FAEC32B9A3
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 10:59:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765796358; cv=none; b=T1u2tLWaQmc6OvdRBJ5iPLX8/OkW7z0Yp8M7NwkHStg9Fuo2pN+mlDp4YIY5fCzUE2qZTiqsqc0Pm11x4u7oadSAD0fGMpbxtpPL6q3PdCP+NuwRStcHh56BXNh56bnAu5qNrM4nRI6eUScdlqkuTISL5OChI5McETBz8zqpDz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765796358; c=relaxed/simple;
	bh=djrbPV7aDjAG4Ht6zJYVPSbYH7m2DhrIo7FgNqH8XGY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GChuBnvh4PNuZ27u1Qsq5vFjqo9LZ9lAelr5ZB+1oK8j6Evlz5bXtCXNu6BoE0EwCXD5O7fxl30fbDxAbNjn62VDdCN66nw0KeTjZjxh3lqU4yfWyD9Ln7I9fHVnOOROpS1LclxEYmlYUCd+rAj63Sg21+OSZPVOL0g3rWi0LmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dq1hSwv7; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4779ce2a624so37136105e9.2
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 02:59:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765796354; x=1766401154; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=oYqXtVKyq57wNwuuGpuKCQcMdBdTV6AFm/yWfAMKePQ=;
        b=dq1hSwv7Bf7kevWDaBVK2hYzelzZep3k88xx7Es6Cv158rHVW3rFbeqPfMn75fdl8C
         nL0i5r1lZ32nPCDmdybIuC3hTXvkyjy/VJbCjfJWoq4jy4hfChqzh5KRMbFpuWZ5nZxj
         qOAuB8Jg2eLInUdJ7cF2vqrE8MNSstrXNd2manO2V6HrWRuXgFBIjwvvVwY1vF6g3Tj8
         CXiPKZ8QU0yk7+BQEqZABaq0UBMHILqJZHQiy/8o6B5KmjD3LMVC3rEhKLYhJ4sDIE3w
         dOnWeV5X+8oyobrbf+c0yZntu+FvTp7Ig79M61biZTJk5ApFlaqZauVh1f1sMdXIGwYG
         mBNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765796354; x=1766401154;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oYqXtVKyq57wNwuuGpuKCQcMdBdTV6AFm/yWfAMKePQ=;
        b=t6WY3jC7epAmnhEgxkGw4iiz5Mkfp8kOa38vu6A48c4NlBnzVm5gylYS0dCQzDV2Lo
         KH3JpvRCxepg+RHnkQSpQRcNWAi6+tYzHVAfvrHJj33uSoCc2AQ0LlNyFZYGWxmBBI6p
         1ha8IBFW76nUMCAYNL35gkzc+8nVHZQROmoQESukt9mGlYK3tmnKBIcufJcUWc0VU02V
         ZAhbablbwBl5e1Y74QtJKt0PkhWd0nrn1IFQyuWMnmcjmE/nYn21arMHm/vDXINQjenH
         Fa6se/0zocUICQy/E599R7wwBYWCKwqxZ4SJWL08qm01jpVf9e9vO1zl1P1wLeC7G7o+
         rwGQ==
X-Forwarded-Encrypted: i=1; AJvYcCXx7fE89GkF16+JF6IyXWUovebr82SFKfxjA+y+XJiC4JQYXexVroSanywVCOycThxRRvgMTJ8OKSkY@vger.kernel.org
X-Gm-Message-State: AOJu0YzCQPw4pONO5jnrGY4xSa+nqm9aXUq0oB9s4eUTlz9n1wdT1uoN
	kMo7xI6D9H6KON0SUy+/J+cBTbRZuC1uopPNze2wcfBihm8/T0v7OaFL4SOQpW1uUJk=
X-Gm-Gg: AY/fxX5FVl4UjFxNjTQRVrGO245WsJfQqjf2bQTWvKvW1rAUPG9K162ka9x44r06ybN
	VWHhCS+nBPQJDbTEMSRGLBeZqZX16bqAtY+Zh97z3y6q6e52eWlRX/IbdBRZBxExjAJcqko1qQI
	pYPKgke/+5E2/axLq4vaExPhz3Og7nFVst8kD/TEY+Y66bzCRuZVywd9a+3NdSommmc4Qz5fE/1
	M548uFmMmQqPowC34ODrWP1KhIJdRA/KbGYzBQy7ILYRFgCdHtW6RknYv2hqySpxmZTJvyoxH3x
	wcLTGA8Xn6iGpydfVXD6z/UvlUFkbNzxvRb+qPT5DwFY20rOJvas9see9RVlTRXzw67SLrUBXpp
	8PprDcYR0iPxUdZSrRq50b3Jzy4CWAgZ4p4GEYQfpPYWb/VRRBCf9OtII/cffrcS/qw6kQPmq65
	2FIU1eL8AValhvdodI
X-Google-Smtp-Source: AGHT+IHzuHMc+1EqAojQlJLPTccSt6L/oqVylXvWSnMxI2jVuwsY9rZt+YJM1Zn/rmatqjYye/VhgA==
X-Received: by 2002:a05:600c:a31a:b0:47a:9165:efc4 with SMTP id 5b1f17b1804b1-47a9165f157mr86631275e9.33.1765796353574;
        Mon, 15 Dec 2025 02:59:13 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a8f6e5baasm191989945e9.13.2025.12.15.02.59.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 02:59:13 -0800 (PST)
Date: Mon, 15 Dec 2025 13:59:09 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Jan Petrous <jan.petrous@oss.nxp.com>, s32@nxp.com,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linaro-s32@linaro.org
Subject: Re: [PATCH 3/4] dt-bindings: net: nxp,s32-dwmac: Use the GPR syscon
Message-ID: <aT_p_aGfBpyEOC3M@stanley.mountain>
References: <cover.1764592300.git.dan.carpenter@linaro.org>
 <333487ea3d23699c7953524cda082813ac4d7be3.1764592300.git.dan.carpenter@linaro.org>
 <16bb96e9-c632-457c-8179-82c17bd2a685@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <16bb96e9-c632-457c-8179-82c17bd2a685@kernel.org>

On Mon, Dec 01, 2025 at 06:33:07PM +0100, Krzysztof Kozlowski wrote:
> On 01/12/2025 14:08, Dan Carpenter wrote:
> > The S32 chipset has a GPR region which has a miscellaneous registers
> > including the GMAC_0_CTRL_STS register.  Originally this code accessed
> > that register in a sort of ad-hoc way, but we want to access it using
> > the syscon interface.
> > 
> > We still need to maintain the old method of accessing the GMAC register
> > but using a syscon will let us access other registers more cleanly.
> > 
> > Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
> > ---
> >  Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml | 6 ++++++
> >  1 file changed, 6 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml b/Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml
> > index 2b8b74c5feec..17f6c50dca03 100644
> > --- a/Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml
> > +++ b/Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml
> > @@ -32,6 +32,11 @@ properties:
> >        - description: Main GMAC registers
> >        - description: GMAC PHY mode control register
> >  
> > +  phy-sel:
> 
> Missing vendor prefix.
> 
> > +    $ref: /schemas/types.yaml#/definitions/phandle-array
> > +    items:
> > +      - description: The offset into the s32 GPR syscon
> 
> No, first item is not the offset but the phandle. You need syntax like here:
> 
> https://elixir.bootlin.com/linux/v5.18-rc1/source/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml#L42
> 
> The description of the first item (unlike in example above) should say
> what is the purpose, how this device is using GPR region, what is it
> needed for.

I had to do it a bit differently from the exynos-usi.yaml code.  When I
tried it that way I got the following warning that the "phy-sel" wasn't
a common suffix and it doesn't have a description.

$ make dt_binding_check DT_SCHEMA_FILES=net/nxp,s32-dwmac.yaml
  SCHEMA  Documentation/devicetree/bindings/processed-schema.json
  CHKDT   ./Documentation/devicetree/bindings
/home/dcarpenter/progs/kernel/nxp_gpr/Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml: properties:nxp,phy-sel: 'anyOf' conditional failed, one must be fixed:
        'description' is a dependency of '$ref'
        '/schemas/types.yaml#/definitions/phandle-array' does not match '^#/(definitions|\\$defs)/'
                hint: A vendor property can have a $ref to a a $defs schema
        hint: Vendor specific properties must have a type and description unless they have a defined, common suffix.
        from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
  LINT    ./Documentation/devicetree/bindings
  DTEX    Documentation/devicetree/bindings/net/nxp,s32-dwmac.example.dts
  DTC [C] Documentation/devicetree/bindings/net/nxp,s32-dwmac.example.dtb

The exynos-usi.yaml file doesn't generate a warning like that and I wasn't
able to figure out why that is.  But what worked for me was adding the
phandle description like this:

  nxp,phy-sel:
    description: phandle to the GPR syscon node
    $ref: /schemas/types.yaml#/definitions/phandle-array
    items:
      - description: offset of PHY selection register

regards,
dan carpenter

