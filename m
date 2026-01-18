Return-Path: <devicetree+bounces-256474-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 77428D394E6
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 13:19:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3BB463004F7A
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 12:19:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA95B29DB6C;
	Sun, 18 Jan 2026 12:19:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TYBJaL/d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D17D5B5AB
	for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 12:18:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768738740; cv=none; b=Fyg6Q4iLvYDzCBdKNPyWr3W1rGFwnPgp3uIf0L34jlSLfUQBTFCLbU4ODGFeFqMTB04mHO/6AQIRV/tTCcClbAkVMfCEOmRRL7N6YJmTEmUpGmN82eX8Qn3o/eviSKGMtTOeVYuoNgYW1dks4VkHvyy+VDgtCgwBY6tXhqLPYh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768738740; c=relaxed/simple;
	bh=AM7nm1BS1hlDTXwcdh1EHXiQu1Si/CyAPg2Ikrwu8lU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GfWweW3oiTvPCHTY/ZAsGRzZzBLbXuk6CLTeFNQpPGjmcItpuPJY/fokIW7xCliS2LvqWnnDzSc6mUxbFSMKlfQ8q5CXaEUiAx34ZIO4qjoXq6E5olRc94ftv10N1XXklCQNjhshrPS4cnLFUCoJSfleVKKl7DEGoIGcYCauNkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TYBJaL/d; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-432d256c2e6so2872522f8f.3
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 04:18:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768738737; x=1769343537; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WD1wzEbaoKZKhuZNexa3nkG79kI0GKZ4I1GLpFTxDis=;
        b=TYBJaL/di8WU5YLbMXPuj3t/bq2sjQn3XGh4LzfGIgOyIzQeDVfskSLU7D8wXu2wdH
         4tP2ziZ/a+h8g1h27PnTc/Biv5A24eSyrru22JrS4AvIiQuR6+L+D3wjlDiLrDuY6wCY
         zic2s+PRBpxbV2r6n9j27Y2XTNMoDwMCfwe+0BxHtEc6bBxJuMp6OoPFgnk6M3bQRl1n
         VfbVl8B0ACNZ4osZYPe/TAQUUva0dmXIlzLtCocxgsjc2fOvKTvs1Ep5MWMiWWxQuFpD
         BxRqyhEsvRJPET60NpiRwumQ+OMhAeVg6Yk+tTeNi+tSFdqLJiFxvqaNVYYz9q/DC9I6
         jrBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768738737; x=1769343537;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WD1wzEbaoKZKhuZNexa3nkG79kI0GKZ4I1GLpFTxDis=;
        b=chML6BRnMNiGqtZie9+QbLID5TFSY/dxUBNKLykXW+OHyNMS8B5+UYWmmv/1aBLgZm
         K2WNi2F9Gu6OcoblDo88ejJCz/zomSk7Qu3J7ie8EymEfrHNAYE9ACBy5AgczjnAQq1n
         llRz7fYN2CuN2xWAU1IBFxge8uPBe/Sk7Mk0pApwEW0Tul0V+spWeoi03XMeDLbyKHL7
         0H9r3QHEkYRIx3Q32AG+24kFiE1E6viDTF6nmtPTbBfYySBzhOkYVEa0czQYbG//jItQ
         QrvXbgwVytSE96pW+DP+LcMYDgpwmEyigjEbs8FBc9A4trSJ9Xt33mQsNUrcs3Z8v2Hx
         NA1Q==
X-Forwarded-Encrypted: i=1; AJvYcCWBO+U25rbUN2qbtKV4vze/Tdz42JEAOE3ixRqfaMqnZkJEkmU3LV+3GQnzL4E/sSYYMJnudZj9Ozqn@vger.kernel.org
X-Gm-Message-State: AOJu0YwU0zq5IivQ+k0RGOMGmFsE5oJnCYnzp1c/Zw/LT2AFV2BvDzEE
	NkQ0GKN6uZJz4wcOzbVbDskB8AE/6eqEcJzDShp1pj90w2ZJcZm3iE9o
X-Gm-Gg: AY/fxX6DEX36tqG0QamNyT+fvhIxEuKA8b6cq2XezbtHX8R9qPbB36bti0w1Nh7PoB/
	ZP+Tw1J28HTe5mU2QKY2gnaKwocMn/rL8J2WUGUTkNggy8BHbWf0Aa2611/Rqz6aqmXpizdyu0d
	N02g0P3tLzCw+lp93FyTHR8mLlt8ImS7ZT+wCJYLGf+qedsMK//yBfeR+dSjZsPerE20g0Ndm1U
	xUWYgfp8MVEIA9vokuOic/bkJwkMK3pP3LdoAn1ZNYJUMVBPhu14SgSTjTN+OFUDG9a+IF45PSL
	1/R7ZWbElVA7Jt7ieDl2DsJY9+qRh8Dug03Whj5vouTL+AG7cvb1sA7n8X1XscJHHa9vu6lk+Rt
	Pm6pHJg1lEm3UfeiFRsA7zqOKg+b9SrvnJiF5zKCL7DoSQioNZrqMhZ1lvPPRtEF+8gxnycsvWK
	WD4jCSdD3B/F4yzDpIwY3CqCuUCygX9jDNmu1GoG6d3cM=
X-Received: by 2002:a05:600c:8b33:b0:479:1b0f:dfff with SMTP id 5b1f17b1804b1-4801e30d72bmr97350495e9.10.1768738737157;
        Sun, 18 Jan 2026 04:18:57 -0800 (PST)
Received: from anton.local (vps-58d0fbce.vps.ovh.net. [51.178.29.162])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47f3b7a5f94sm207544765e9.0.2026.01.18.04.18.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jan 2026 04:18:56 -0800 (PST)
Date: Sun, 18 Jan 2026 16:18:51 +0400
From: "Anton D. Stavinskii" <stavinsky@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Chen Wang <unicorn_wang@outlook.com>, 
	Inochi Amaoto <inochiama@gmail.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, sophgo@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH v2 1/7] dt-bindings: sound: sophgo: add CV1800B I2S/TDM
 controller binding
Message-ID: <aWzMvqzh-QXWRTWP@anton.local>
Mail-Followup-To: Krzysztof Kozlowski <krzk@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto <inochiama@gmail.com>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
	sophgo@lists.linux.dev, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
References: <20260118-cv1800b-i2s-driver-v2-0-d10055f68368@gmail.com>
 <20260118-cv1800b-i2s-driver-v2-1-d10055f68368@gmail.com>
 <20260118-famous-magnificent-peccary-474ba8@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260118-famous-magnificent-peccary-474ba8@quoll>

On Sun, Jan 18, 2026 at 11:14:34AM +0400, Krzysztof Kozlowski wrote:
> On Sun, Jan 18, 2026 at 12:18:53AM +0400, Anton D. Stavinskii wrote:
> > Purpose: introduce DT schema for the CPU driver
> 
> Bindings are for hardware, not drivers. Drop the purpose.

Noted. Will do in v3

> 
> > The driver uses dma to transfer data. The dma it self has 8 channels.
> 
> Describe the hardware.

Will try to rephrase. Thanks.

> 
> 
> > Each channel can be connected only to a specific i2s node. But each
> > of dma channel can have multiple purposes so in order to save dma
> > channels the configurations allows to use tx and rx, only rx, only tx
> > or none channels. I2S controller without channels can be useful in
> > configuration where I2S is used as clock source only and doesn't
> > produce any data.
> 
> Please use subject prefixes matching the subsystem. You can get them for
> example with 'git log --oneline -- DIRECTORY_OR_FILE' on the directory
> your patch is touching. For bindings, the preferred subjects are
> explained here:
> https://www.kernel.org/doc/html/latest/devicetree/bindings/submitting-patches.html#i-for-patch-submitters

I will do my best in V3. And will read provided links again. 

> 
> A nit, subject: drop second/last, redundant "binding". The
> "dt-bindings" prefix is already stating that these are bindings.
> See also:
> https://elixir.bootlin.com/linux/v6.17-rc3/source/Documentation/devicetree/bindings/submitting-patches.rst#L18
> 
> > 
> > Signed-off-by: Anton D. Stavinskii <stavinsky@gmail.com>
> > ---
> >  .../bindings/sound/sophgo,cv1800b-i2s.yaml         | 75 ++++++++++++++++++++++
> >  1 file changed, 75 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/sound/sophgo,cv1800b-i2s.yaml b/Documentation/devicetree/bindings/sound/sophgo,cv1800b-i2s.yaml
> > new file mode 100644
> > index 000000000000..cf30880a62da
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/sound/sophgo,cv1800b-i2s.yaml
> > @@ -0,0 +1,75 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/sound/sophgo,cv1800b-i2s.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Sophgo CV1800B I2S/TDM controller
> > +
> > +maintainers:
> > +  - Anton D. Stavinskii <stavinsky@gmail.com>
> > +
> > +description: |
> 
> Do not need '|' unless you need to preserve formatting.
noted. will be fixed. 

> 
> > +  I2S/TDM controller found in CV1800B / Sophgo SG2002/SG2000 SoCs.
> > +
> 
> Miss allOf with ref to dai-common.
> 
> > +properties:
> > +  compatible:
> > +    const: sophgo,cv1800b-i2s
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  "#sound-dai-cells":
> > +    const: 0
> > +
> > +  clocks:
> > +    minItems: 1
> > +    maxItems: 2
> 
> 1. Why is it flexible?

It's my mistake. 

> 
> 2. And then why names are not flexible. These should be synced in
> constraints.
> 
> > +
> > +  clock-names:
> > +    items:
> > +      - const: i2s
> > +      - const: mclk
> > +
> > +  dmas:
> > +    maxItems: 2
> > +
> > +  dma-names:
> > +    description: |
> > +      Names of DMA channels. May be omitted. If present, one entry
> > +      selects a single direction, while two entries select RX and TX.

Will drop.

> 
> Drop desription. Don't repeat constraints in free form text.
> 
> > +    minItems: 1
> > +    maxItems: 2
> 
> Again, messed constraints.
> 
> > +    items:
> > +      enum: [rx, tx]
> 
> No, it has to be a specific/fixed list.

Here is the question. Can you please help to understand how to describe
this properly. The idea is that TDM module is usable even without
specified dmas. Each TDM can work as clock source, only rx only tx or
both. I can force to use both channels but the user probably will want 
to not consume all the channels for if it is not needed. DMA can provide
channels for something else like SPI/I2C/UART etc. I'm asking because
I'm afraid I will do some mess again here.
> 
> > +
> > +  "#address-cells":
> > +    const: 1
> > +
> > +  "#size-cells":
> > +    const: 0
> 
> Why? Drop these.

noted. Will remove. 

> 
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - clocks
> > +  - clock-names
> > +  - "#sound-dai-cells"
> > +
> > +additionalProperties: false
> 
> unevaluatedProperties instead

Thanks. 

> 
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/clock/sophgo,cv1800.h>
> > +
> > +    i2s1: i2s@4110000 {
> 
> Drop unused label.

will be fixed. Thanks

> 
> > +        compatible = "sophgo,cv1800b-i2s";
> > +        reg = <0x04110000 0x10000>;
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> 
> Drop useless properties.
> 
> Best regards,
> Krzysztof
> 

Sorry for the mess. It is my first ever patch. Thank you for your
review and your time. Will do my best to improve the patch series. 


