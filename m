Return-Path: <devicetree+bounces-240948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B7274C77F24
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 09:38:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 6DE632D473
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 08:38:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A8CA337BB3;
	Fri, 21 Nov 2025 08:37:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aIWaNk/8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67E5413777E
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 08:37:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763714279; cv=none; b=AVN9LkPiFQ/dkT14Hw70Sz2H0kN+mRfsNNNkuwvU6QYxN2kcXLdZ5OtA6qSi4YTOhi+prS4ZrSSLec+afRf2hM+xwqt863Jni0QDU2rpvjQjMInzi/7bdvk1MpllMXGm/wgvb3h773avcfBLCyMXMZu3eh1y8SykN99kOKFIXIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763714279; c=relaxed/simple;
	bh=RKkdw4ds7xIqmoTHkH7/H9YNJfhbbWsH8UZSL9tFY+Y=;
	h=Message-ID:Date:From:To:Cc:Subject:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=diP3WE4puQqjBKHSCHvaPffkUrJCYYjmofD5x3KDKpAj2V6srnaVdVmQb2XzANdqdTdawQG5jK+1RvHhLV3tDJ9IJHlxIr7geNP4AIXXWRc+hAGAQS8cHGcMol+G1dTnT/JZEfp9ORRRtAlpR+TK0bYVGwL5/TtSxCPMjE55nfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aIWaNk/8; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-47775fb6c56so15100935e9.1
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 00:37:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763714276; x=1764319076; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=2qSXvzlmdS35P7fsTtvXLVpdTT/36B4mvzOkNUVsHgc=;
        b=aIWaNk/8NLiLVI2msXyx4lwLhrqBnc9dVziauHradjT2g7FMKRtyMAGhAV8jhllY7H
         eyDudQ2ryXPagk0DS9u6R7OI5LzNhOWYBwXL7ikR3RH3bAG6wDZhRl84rmrxmc5hxXzH
         ib/4VOuHFujDHv4WtGwSmpax8VRSUm5lq/SgRaEtDk5PiHCjQYmZ0URHgTuifSowXIHl
         iBHT7lQE/566BeSg0fSZLyZHDaN4tlakFRko24zW7wnYBEZSrS6yRGr3XVFWIdkQRa8W
         Wk2sjVHKar09xaPAO82vAPOBU4V22v8+AD1miZNswHdt0OShQBx3eQS6c73VRkHcb3SA
         D9qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763714276; x=1764319076;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2qSXvzlmdS35P7fsTtvXLVpdTT/36B4mvzOkNUVsHgc=;
        b=BB/cyp9JsBQdqjMpThMEb0jiVi2XQHioW34xxABVRRYmb/u7QnoyzgXYr1b0bYYaQ2
         DDsK2qNCjDcsKVw0Jgh/Dk+G5PbgMeWV6JqFTbzSgSUFbI/g65Jf5M3YVVZ2320p7gqj
         HGJ6C5eF5HKBCYxNu0dQFItaErOYHFInKBgeJNH7GblWdq35r+y5ROuvQPoL2cDYZHx2
         P2xOJ7aRLNq4pBAMaFCWyfAKFeAo/K1yv70GIZTMznE02LOcEmqyaGjdRop+wbWj6kco
         seZgEAbROI+BUN2I/LYz+HA6/4+YioS3wSh0W3Zdmu73plQKB5Ehxlc42Nt+sLzya5+k
         z9ag==
X-Forwarded-Encrypted: i=1; AJvYcCXqRVu/g8pnJoiJBO7JnDsLci8+eL0cea6rjSLQfyEkM7dmDyDC5L88Ix7r9Nrtahty22wAz8hU1D4G@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0SP6Gwbd3E0+ttkEAvYR0bj9+zaXtcnOphH2Mx4PttE08osTO
	fOlNrOtCtD0+bTdcs6x8Dz0CfW11GNf6RLp3QVaI66OYD0g02v6/OlkI
X-Gm-Gg: ASbGnctiHrRloae15DzcD8O7xP4sq6myGLbqWRSsC0RfkAXZ01ieufKzUoZQraSC4G4
	hZKJtfdjkrwbZIQO93tJmO8ynxrohXInPivxEIDtBuhLW90Te+Yt6uTNtNP1ialO+sQuGEo1I+i
	TYeO6uOvABonQXIOhZA+wmtUvu0APFr5Am6kwLgp6/j1tecbnWzU6pho3pwLZZ++3jPe413UDPU
	EcOf55kJd4Ul9uWNw1TYd9znO3XjtHnxJZQ6iU1YMEgAwYU/yY3cbAYI/XkxCVEb97iRCuTI8x7
	U6OH0ihoEuLBTTtITSwKAAK2InQDwXKuFbWEpiUWfI1LriBFXnRT7/YExQEWfk7DXtzApGmuegd
	j71LwRszBjKFxxMO+LdhuBW0udus7YGtEcS74P+eN30+eCGPvMoXqJq6Zgk7XefuPbgr/jEZdYA
	yXwMS6SsPS26G7L7hxSnDTFbL3lRs4z160sdlRsF8=
X-Google-Smtp-Source: AGHT+IEA+dyN8n6gI9VghYdVrCVyA5Lkx+Pi/7Qw0bW1qYcQrv+1D9Mt2waBz7nsc6tPHypUcxzIAw==
X-Received: by 2002:a05:600c:35ce:b0:477:6d96:b3e5 with SMTP id 5b1f17b1804b1-477c016c071mr18413245e9.7.1763714275447;
        Fri, 21 Nov 2025 00:37:55 -0800 (PST)
Received: from Ansuel-XPS. (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477a9deeb96sm82356155e9.4.2025.11.21.00.37.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 00:37:55 -0800 (PST)
Message-ID: <692024e3.050a0220.183811.f1dc@mx.google.com>
X-Google-Original-Message-ID: <aSAk4XQ-S6d7iXUs@Ansuel-XPS.>
Date: Fri, 21 Nov 2025 09:37:53 +0100
From: Christian Marangi <ansuelsmth@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Cyril Chao <Cyril.Chao@mediatek.com>, Arnd Bergmann <arnd@arndb.de>,
	=?iso-8859-1?Q?N=EDcolas_F=2E_R=2E_A=2E?= Prado <nfraprado@collabora.com>,
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, upstream@airoha.com
Subject: Re: [PATCH v2 2/3] ASoC: dt-bindings: Add Airoha AN7581 AFE YAML
References: <20251121054537.25796-1-ansuelsmth@gmail.com>
 <20251121054537.25796-3-ansuelsmth@gmail.com>
 <20251121-daft-secret-collie-629a2c@kuoka>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251121-daft-secret-collie-629a2c@kuoka>

On Fri, Nov 21, 2025 at 09:36:10AM +0100, Krzysztof Kozlowski wrote:
> On Fri, Nov 21, 2025 at 06:45:00AM +0100, Christian Marangi wrote:
> > Add documentation for Airoha AN7581 AFE YAML schema.
> 
> Drop YAML and YAML schema from subbect and commit description. See also
> submitting-patches in DT dir. You cannot add documentation for YAML
> schema. It's like adding a Linux driver for C code.
> 
> > 
> > Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> > ---
> >  .../bindings/sound/airoha,an7581-wm8960.yaml  | 67 +++++++++++++++++++
> >  1 file changed, 67 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/sound/airoha,an7581-wm8960.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/sound/airoha,an7581-wm8960.yaml b/Documentation/devicetree/bindings/sound/airoha,an7581-wm8960.yaml
> > new file mode 100644
> > index 000000000000..ebeda0876280
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/sound/airoha,an7581-wm8960.yaml
> > @@ -0,0 +1,67 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/sound/airoha,an7581-wm8960.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Airoha AN7581 sound card with WM8960 codec
> > +
> > +maintainers:
> > +  - Christian Marangi <ansuelsmth@gmail.com>
> > +
> > +allOf:
> > +  - $ref: sound-card-common.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    const: airoha,an7581-wm8960-sound
> > +
> > +  platform:
> > +    type: object
> > +    additionalProperties: false
> > +    properties:
> > +      sound-dai:
> > +        description: The phandle of AN7581 platform.
> > +        maxItems: 1
> > +    required:
> > +      - sound-dai
> > +
> > +  codec:
> > +    type: object
> > +    additionalProperties: false
> > +    properties:
> > +      sound-dai:
> > +        description: The phandle of wm8960 codec.
> > +        maxItems: 1
> > +    required:
> > +      - sound-dai
> > +
> > +unevaluatedProperties: false
> 
> Please place it after 'required:' block.
>

Thanks for the review. Will do!

> > +
> > +required:
> > +  - compatible
> > +  - audio-routing
> > +  - platform
> > +  - codec
> 
> Best regards,
> Krzysztof
> 

-- 
	Ansuel

