Return-Path: <devicetree+bounces-171435-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CBBAA9EAB9
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 10:27:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B729D3B6DBC
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 08:26:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F5F625E462;
	Mon, 28 Apr 2025 08:26:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="IUrYIwQU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD63F25E46B
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 08:26:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745828817; cv=none; b=EeqAa+rQhDjUEbzEKgQ3s0jtQiuXNPizlA0xB19GLGNepFqi+4JfQNXA8IHcJOpTADh+HVwQzpm35HOLML36KUL+YLCDvMfzmCKOlLf7g2F65uUwwXPRHsH9sHcg9hXv2ISdlf5W/4RTTpEiKhFzWs0v3xHQJGUB3StdeUoiGJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745828817; c=relaxed/simple;
	bh=T8SZ8DX9DHzGXS1oxkAHhDLvJLkNaoXfwhhJ1PwP9/Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fdq0TLkT0PdO8vFo6kmQvbJgrM9W0R6n5UY/2tvgZWZG/Fe0fqWm/+Dv3RZKVzs2diVBbGjn9QrDdEsYoS77/kvLAn5o+XaftH6bfzvbOixRcSZ2n+LjK7n9oCXCOd2pl40JJGfP9xIRuiAXMSatctv7cLsk88nJNNqn03qRBSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=IUrYIwQU; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-e72bb146baeso3545277276.3
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 01:26:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1745828813; x=1746433613; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ghcmrgUgSbDm4wcZcCaNT1wwBWxdZ/sWHCjglVCfqe4=;
        b=IUrYIwQUukq4nyZO5RzjXewKZUEbUCD90ztNaG39Y/7gOE+r2ezY5l9z5eJL2ctosU
         oY7tMOtdZBQ2Z58zEpkoclaRlqRByxDa5nhOBDM5fG0ZeFigWsveQI2ycKZ8Yhy8v3cb
         LfTx/LCmTAvePwUmn/q6lZv5OLWGACJlSy2PA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745828813; x=1746433613;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ghcmrgUgSbDm4wcZcCaNT1wwBWxdZ/sWHCjglVCfqe4=;
        b=WALeHtuS16tQeCHic66jtJNZwF9eaOxsSDEnyITduPPMHM/+n3oENv+j+yZLVOrkiW
         nutqNSDHT37uK7xr1wV24CQI2PVZUf7KaugkNfGx4GYTVWtjKqHQ8yBFzRmdlvqdp7wg
         GAj+nVNgBjL5VcYvizud4Gjk5MwO3JI2w6ql3R6QxOkt9jL4LPRVAb/aPU0xQab8Oqc0
         pEdkjYe3J6oRbpfnNFQIOSxhDYxQSjcLtpX+oxQW/SmUJz3f+pzRDFSmiVJTF5++FxPf
         IACDd0EwTU82kdooARPNQvATz/jkrUWIfAWv4EX2RSgzd1+oCNrtERsLTiERWNbEzkTm
         67Dw==
X-Forwarded-Encrypted: i=1; AJvYcCXlvIXS/DZmcBzRywMiYMuQ+says+TdkPlYmkoUXeqMA3oesEoYaG7oqDRJ1HP9nKz1jJnAJ/1tMRx6@vger.kernel.org
X-Gm-Message-State: AOJu0YzeRNqqyrtbf/+cJEP8PQUw0Gpruobp8gMmcoSSm+VYnwA7GvLz
	byLNBtin16fjEhiEqZ/Zby1uVtc7AGPofbPOdwsj59Y53BWWtbKbpyGHX4/zmP2PXAUgiy7TaWC
	TTZpREP6U0KSYbOugEeEzxYcSCethw3O+L0KGEw==
X-Gm-Gg: ASbGncuPbEpcbBIMxFrtXHh7dGKJVm/I1IBzsfFjipF9zJrrSRFy27V9tiJtbV+rcSN
	CHy3rmphel6Z6KwFA/I2UVCuFVyWH88JPmT/LzsyEbML/FQEdjYPBcbgFP2gsdg0hFIVQYBVUXm
	pK/L9McF33NeVh74NIuUwZtqncCnMixrX01I+o5xtvQA+UOkuya6K0rso=
X-Google-Smtp-Source: AGHT+IGTTOWD4mqDocBPkLm6H5LR08W1IDUGz6syBbpKa0wuDFnm8koHpJ/z7Hcj77PexwAyVbb4syjzYQ/2lsza3UA=
X-Received: by 2002:a05:6902:e92:b0:e6e:4d8:81cf with SMTP id
 3f1490d57ef6-e73165df443mr14045801276.23.1745828813532; Mon, 28 Apr 2025
 01:26:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250423101518.1360552-1-pavitrakumarm@vayavyalabs.com>
 <20250423101518.1360552-2-pavitrakumarm@vayavyalabs.com> <e5f47f52-807d-45ce-bd62-090f4af72b3a@kernel.org>
In-Reply-To: <e5f47f52-807d-45ce-bd62-090f4af72b3a@kernel.org>
From: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
Date: Mon, 28 Apr 2025 13:56:42 +0530
X-Gm-Features: ATxdqUFzsFfzOiZTTfcSFEA0yKYwV1MYLNlGc_twQTlRFGhIWQAsmjFO7nR7c1I
Message-ID: <CALxtO0k4RkopERap_ykrMTZ4Qtdzm8hEPJGLCQ2pknQGjfQ4Eg@mail.gmail.com>
Subject: Re: [PATCH v1 1/6] dt-bindings: crypto: Document support for SPAcc
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-crypto@vger.kernel.org, devicetree@vger.kernel.org, 
	herbert@gondor.apana.org.au, Ruud.Derwig@synopsys.com, 
	manjunath.hadli@vayavyalabs.com, adityak@vayavyalabs.com, 
	Bhoomika Kadabi <bhoomikak@vayavyalabs.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof,
   My comments are embedded below.

Warm regards,
PK


On Wed, Apr 23, 2025 at 6:23=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 23/04/2025 12:15, Pavitrakumar M wrote:
> > From: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
> >
> > Add DT bindings related to the SPAcc driver for Documentation.
> > DWC Synopsys Security Protocol Accelerator(SPAcc) Hardware Crypto
>
> These IP blocks are rarely usable on their own and need SoC
> customization. Where any SoC users? Where are any SoC compatibles?

PK: This is a new IP designed by Synopsys, tested on the Xilinx Zynqmp
FPGA (ZCU104 board).
       This is NOT a part of any SoC yet, but it might be in future.
       Could you offer suggestions on how to handle such a case?

>
> <form letter>
> Please use scripts/get_maintainers.pl to get a list of necessary people
> and lists to CC (and consider --no-git-fallback argument, so you will
> not CC people just because they made one commit years ago). It might
> happen, that command when run on an older kernel, gives you outdated
> entries. Therefore please be sure you base your patches on recent Linux
> kernel.
>
> Tools like b4 or scripts/get_maintainer.pl provide you proper list of
> people, so fix your workflow. Tools might also fail if you work on some
> ancient tree (don't, instead use mainline) or work on fork of kernel
> (don't, instead use mainline). Just use b4 and everything should be
> fine, although remember about `b4 prep --auto-to-cc` if you added new
> patches to the patchset.
> </form letter>
>
> > Engine is a crypto IP designed by Synopsys.
> >
> > Co-developed-by: Bhoomika Kadabi <bhoomikak@vayavyalabs.com>
> > Signed-off-by: Bhoomika Kadabi <bhoomikak@vayavyalabs.com>
> > Signed-off-by: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
> > Acked-by: Ruud Derwig <Ruud.Derwig@synopsys.com>
> > ---
> >  .../bindings/crypto/snps,dwc-spacc.yaml       | 70 +++++++++++++++++++
> >  1 file changed, 70 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/crypto/snps,dwc-s=
pacc.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/crypto/snps,dwc-spacc.ya=
ml b/Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml
> > new file mode 100644
> > index 000000000000..ffd4af5593a2
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml
> > @@ -0,0 +1,70 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/crypto/snps,dwc-spacc.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Synopsys DesignWare Security Protocol Accelerator(SPAcc) Crypto=
 Engine
> > +
> > +maintainers:
> > +  - Ruud Derwig <Ruud.Derwig@synopsys.com>
> > +
> > +description:
> > +  DWC Synopsys Security Protocol Accelerator(SPAcc) Hardware Crypto En=
gine is
> > +  a crypto IP designed by Synopsys, that can accelerate cryptographic
> > +  operations.
> > +
> > +properties:
> > +  compatible:
> > +    items:
> > +      - const: snps,dwc-spacc
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    maxItems: 1
> > +
> > +  snps,vspacc-priority:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description:
> > +      Set priority mode on the Virtual SPAcc. This is Virtual SPAcc pr=
iority
> > +      weight. Its used in priority arbitration of the Virtual SPAccs.
>
> Why would this be board configuration?

PK: Got it, its Policy vs Mechanism. I will remove this property.

>
> > +    minimum: 0
> > +    maximum: 15
> > +    default: 0
> > +
> > +  snps,vspacc-id:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description: Virtual spacc index for validation and driver functio=
ning.
>
> Driver? Bindings are for hardware, not driver. You described the desired
> Linux feature or behavior, not the actual hardware. The bindings are
> about the latter, so instead you need to rephrase the property and its
> description to match actual hardware capabilities/features/configuration
> etc.

PK: Will rephrase and fix that to convey the proper meaning.

>
> > +    minimum: 0
> > +    maximum: 7
> > +
> > +  snps,spacc-wdtimer:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description: Watchdog timer count to replace the default value in =
driver.
>
> If this is watchdog, then use existing watchdog schema and its property.
> If this is something else then... well, it cannot be something for
> driver, so then drop.

PK: I will rename this since its NOT a traditional watchdog, but its an
      internal device counter that generates an interrupt based on a
count value.
      This counter starts ticking when there is a completed job sitting on
      the status FIFO, to be serviced. This makes sure that there are no jo=
bs
      that get starved of processing.

>
> > +    minimum: 0x19000
> > +    maximum: 0xFFFFF
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    crypto@40000000 {
> > +        compatible =3D "snps,dwc-spacc";
> > +        reg =3D <0x40000000 0x3FFFF>;
> > +        interrupt-parent =3D <&gic>;
> > +        interrupts =3D <0 89 4>;
>
> Use proper defines for typical flags.

PK: Will fix it.

>
>
>
> Best regards,
> Krzysztof

