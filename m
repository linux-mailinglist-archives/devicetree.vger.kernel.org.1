Return-Path: <devicetree+bounces-277649-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OH3iDabGu2n1oAIAu9opvQ
	(envelope-from <devicetree+bounces-277649-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 10:49:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 74DB52C904F
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 10:49:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 85EAB30C3526
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 09:23:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEC8C3B38A2;
	Thu, 19 Mar 2026 09:22:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com [209.85.221.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C15B3A543E
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 09:22:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773912177; cv=none; b=hbLCCAJjYnTJjGmDYqa9VPkwD2Js74WuRMmvDCS7FR21rIpz5dem8w1nYMk8wPaIoBMlY9dmEOASMENKTjwXrmSjG1vuLLhH2tVjMNMZvfPMOnL+lmjYqW9Kod+osnN2gszaatSNQ5h1mktT98LXDT0Fp9WGrsXngnku1Tm1jKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773912177; c=relaxed/simple;
	bh=xsYlSEBKEhAJUI/2k2Ae0493EyKzWTyh8Ac20dOwYA8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BhM7B2VD3wX9Z/lSPKVxFIYHAO0rBhUpY7G67EpC7PlZxYxrlJYLAsjN9bmxjvmylwynx2W7for/n8HHt2MBlZ8zbcpN4R+b+rnrzYJ80wKXGmN5zy9/efvlN6eDDayNnnOrrxlefT/fgDxRKJ2Akb01/vhGnM2MQ0xr1QOqz38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-5674d8be45eso241185e0c.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 02:22:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773912175; x=1774516975;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3R7oKWv2gVUp+Av/4dtqoK+ZAhQyBi15VK3avPppXR4=;
        b=r3gkmjLNIXXls8O1y4L5/iuBioI8IC0TDdhlSc0HyU8/Ki26T3C3xUyQMzkIRXzIi8
         11Z3SHGkz6YYCr+dovU5RguqSvjLtxVhgjK395rNWruG/ouD7b4/F3oSrlRTjeaD3LRX
         pt19lHZajweoSfxSRbe0SCpz4LJoM9m5mhbK2gAIt+Q0wX0r5O4nqz9ZuMIQJYDAXUFs
         rBdVATt0iXaj5SeP/P3P9UszDkcgCyq00ovOzFyhXNA5JxkiaarpC22m0z62VOg/3Mji
         utTpOeKYCGGjnD5l2xI3rVJDnt3vBvCQJkvVfo/IZq2Id5sb4XR2yeFek8zAa5EuaRwD
         Yt/A==
X-Forwarded-Encrypted: i=1; AJvYcCUIfOuKdNWFPJI/Queb10/mdS/aO78iwKV6JwNkcG7ojAx7pDjWd9opErlWLsRLpR/Ny4mD3o/XV4NP@vger.kernel.org
X-Gm-Message-State: AOJu0Yxh6uXEaE6QMtDEliL8DTcahtu5ioYF5owuDlxhA/kZEVh9ZWpx
	iJZoO6cgXfnWIlL7u59gVwu5tKqBIxd/2UazbE0lpOMUXDtd5OBdjgwhT8uXnMfP
X-Gm-Gg: ATEYQzyZ+ysMZ8mr3BL1lUqfQ593US9Dn1uJtASzqAt06lUbC3L9LiA97LOy7Ps9gT4
	YtZ8TFx+kpg/+mBSIz9TE52rYjZ9YV4puRufTuqVGfAtt4H7+EiS0cxZdE1YAt8F6tNafKDvSRm
	pWzC3ciuGsvGl4G+aGEF4Dfxmaym5AtDOdVyJUddSesbGYb+Xk67pJhNrA9umtoIDSeB0YDGpZA
	HRgyLLwdk4PQjZ7i1EcPmjIVy2wIdVvnehIxVxXxEI1qOpeQEXbJRxt8qB1WEdC3iK9mCcdvgDY
	4VeK2+rOQirw+/hQfMKOm2ornQ0UCu7KLiaaFz3FgKKzaWdC1WLVn2LV5OFuAlqPGH4Jx7iXnI9
	iVjK/69Dm5ZqyLtCTwgaJnm7a8XbUpvNKL/Vlj+Ju+bBm7p75+loHyTehJe2mrgTAG3e5voeafS
	oyUcN9Zpn+ZQIYeB4R1/F73qY+a9Nj1iM/Mhhq86nEzUHhu+Qf6hX3gwZZL2Kc
X-Received: by 2002:a05:6122:4683:b0:563:72d8:ea6 with SMTP id 71dfb90a1353d-56ba716bd87mr3249050e0c.10.1773912175307;
        Thu, 19 Mar 2026 02:22:55 -0700 (PDT)
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com. [209.85.217.53])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56ba6fed60esm3217659e0c.12.2026.03.19.02.22.53
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2026 02:22:54 -0700 (PDT)
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-5ffa0b23a60so246553137.0
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 02:22:53 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWoOn7Np+KgZqFMQgzX19hkO2+H5XCBJdLxCkWoDM8IWYebpgIJDYCOz/W357os/egPeFa56LoErNaZ@vger.kernel.org
X-Received: by 2002:a05:6102:38cb:b0:5fc:2b19:f7d9 with SMTP id
 ada2fe7eead31-6027d38b928mr2511117137.29.1773912173468; Thu, 19 Mar 2026
 02:22:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260319-topic-sm8650-ayaneo-pocket-s2-upd-bindings-v1-1-84e4ef564022@linaro.org>
In-Reply-To: <20260319-topic-sm8650-ayaneo-pocket-s2-upd-bindings-v1-1-84e4ef564022@linaro.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 19 Mar 2026 10:22:42 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUACGC4rdXfvO-N-cgNAEzhczB0VYbMoxZMyazSAp6jWg@mail.gmail.com>
X-Gm-Features: AaiRm53HlmfFuAaNSpgq0fW3s48A2x_PU6s94_11fvKsqDZNlyduvi7IWb1MQfU
Message-ID: <CAMuHMdUACGC4rdXfvO-N-cgNAEzhczB0VYbMoxZMyazSAp6jWg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: usb: document the Renesas
 UPD720201/UPD720202 USB 3.0 xHCI Host Controller
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, 
	Marek Vasut <marek.vasut+renesas@mailbox.org>
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[linuxfoundation.org,kernel.org,gmail.com,vger.kernel.org,mailbox.org];
	TAGGED_FROM(0.00)[bounces-277649-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	NEURAL_SPAM(0.00)[0.400];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,mail.gmail.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,linaro.org:email,0.0.0.0:email]
X-Rspamd-Queue-Id: 74DB52C904F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

CC Marek (for Sparrow Hawk)

On Thu, 19 Mar 2026 at 09:49, Neil Armstrong <neil.armstrong@linaro.org> wrote:
> Document the Renesas UPD720201/UPD720202 USB 3.0 xHCI Host Controller,
> which connects over PCIe and requires specific power supplies to
> start up.
>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
> - [1] https://lore.kernel.org/all/20260220-topic-sm8650-ayaneo-pocket-s2-base-v5-1-1ad79caa1efa@linaro.org/
> ---
>  .../bindings/usb/renesas,upd720201-pci.yaml        | 61 ++++++++++++++++++++++
>  1 file changed, 61 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/usb/renesas,upd720201-pci.yaml b/Documentation/devicetree/bindings/usb/renesas,upd720201-pci.yaml
> new file mode 100644
> index 000000000000..8b8be572c930
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/usb/renesas,upd720201-pci.yaml
> @@ -0,0 +1,61 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/usb/renesas,upd720201-pci.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: UPD720201/UPD720202 USB 3.0 xHCI Host Controller (PCIe)
> +
> +maintainers:
> +  - Neil Armstrong <neil.armstrong@linaro.org>
> +
> +description:
> +  UPD720201 USB 3.0 xHCI Host Controller via PCIe x1 Gen2 interface.
> +  The UPD720202 supports up to two downstream ports, while UPD720201
> +  supports up to four downstream USB 3.0 rev1.0 ports.
> +
> +properties:
> +  compatible:
> +    const: pci1912,0014
> +
> +  reg:
> +    maxItems: 1
> +
> +  avdd33-supply:
> +    description: +3.3 V power supply for analog circuit
> +
> +  vdd10-supply:
> +    description: +1.05 V power supply
> +
> +  vdd33-supply:
> +    description: +3.3 V power supply
> +
> +required:
> +  - compatible
> +  - reg
> +  - avdd33-supply
> +  - vdd10-supply
> +  - vdd33-supply
> +
> +allOf:
> +  - $ref: usb-xhci.yaml
> +
> +additionalProperties: true
> +
> +examples:
> +  - |
> +    pcie@0 {
> +        reg = <0x0 0x1000>;
> +        ranges = <0x02000000 0x0 0x100000 0x10000000 0x0 0x0>;
> +        #address-cells = <3>;
> +        #size-cells = <2>;
> +        device_type = "pci";
> +
> +        usb-controller@0 {
> +            compatible = "pci1912,0014";
> +            reg = <0x0 0x0 0x0 0x0 0x0>;
> +            avdd33-supply = <&avdd33_reg>;
> +            vdd10-supply = <&vdd10_reg>;
> +            vdd33-supply = <&vdd33_reg>;
> +        };
> +    };
>
> ---
> base-commit: 8e42d2514a7e8eb8d740d0ba82339dd6c0b6463f
> change-id: 20260319-topic-sm8650-ayaneo-pocket-s2-upd-bindings-331b26d4fbf6
>
> Best regards,
> --
> Neil Armstrong <neil.armstrong@linaro.org>

