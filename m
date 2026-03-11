Return-Path: <devicetree+bounces-273927-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EI30E70hsWkOrQIAu9opvQ
	(envelope-from <devicetree+bounces-273927-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 09:03:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E771425E5DB
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 09:03:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 71AD6304394D
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 08:02:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91B6B34B663;
	Wed, 11 Mar 2026 07:57:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CzszALCU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249F13B6365
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 07:57:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773215863; cv=none; b=hxIV2luISDlZ1aCdnKg64VdBNiQEoFefrLnsm8z4ck1HUoyn6I9nz0HU086LKp4AflFIv1A4wmicja1U8S9eW3dKLIEO3BB+RxukeH1kE8i6yeuKd9zlsNCplf0vZMEhVACR1+a3vdZ/OKBEDvqXD1o1jZv8HAKCquWCIuez4kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773215863; c=relaxed/simple;
	bh=Fv/Mv96x4VfaLNFjK0iDGDjK2tmhwZtpyg2X/60q0XY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jMjkkgrIxV65YfZWaU4r0dMEBHZdFK199/o/lZ3j7H4LlkQvUc9uBfbXABYqAUliR/ii87P5HRnFDpveLmMDiN0DY+DDqgtJbVnviEX5XQsUXtvpaG6mG0zGdHHMZJOkVfNYFPs9WKpWZ5dMqPlivqKxbKS2eBVIbU821Ixggco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CzszALCU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B946FC2BC86
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 07:57:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773215862;
	bh=Fv/Mv96x4VfaLNFjK0iDGDjK2tmhwZtpyg2X/60q0XY=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=CzszALCUMvuCn0c9AIZE6P62q1amlrBu8xDZzmVRu3lfLKBLBudIKfKI5ByiTHf0U
	 Sp/1tPu/y9dNvLfs5ns23tPvyeHPpCp+3asz7mhS4MONcvr7tkJCieKoB/Fp+WOwjY
	 F9JHfB+S8ukj+/aRJZu4/f2F7W6c1AwdqLzH8o8sMcFX92S/ULFn2a58GrHCKu1jJ2
	 F/RYPhyHWdncDLVOFcORwt+9RorZDA4uBHj/QjT53UF+Re53ZpktS7eVJNFsmKECPP
	 fR7u4wZDwwB2HcicgZ9t7DjgZfM79z4Hc+5d+gTHQ9G3cr9gV2KEpamKCy/7764GHj
	 +f2n1qxckMU1A==
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-662a1855af2so4472463a12.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 00:57:42 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWp0EQj0H1almdiAntjjWfgnHJ/M5igJdJ+x8ANWuW+dpw3XajsJP+s31Q1KO/KLste7Tj9e3TR4Z4l@vger.kernel.org
X-Gm-Message-State: AOJu0YzMVNiFxoqdfsdZNRS4Rb5T918pN+qi3vTGaoRkEuPhttQ71vUq
	dG1bX9gcbbZSIBvHSUdzzHFkJYbQOiOsLzOWbqWZoXD/kbKKjV38bB/62bSMfdqsvZtlCe4tOdz
	Y44HhWJVXnNlEYNx3qB5cpJ/+yOtKrPA=
X-Received: by 2002:a05:6402:40d6:b0:662:ac7e:aabe with SMTP id
 4fb4d7f45d1cf-66319ddf5aemr730767a12.15.1773215861291; Wed, 11 Mar 2026
 00:57:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1773107475.git.zhoubinbin@loongson.cn> <600bfea91c1f14f089b2f7677578cd8690412fac.1773107475.git.zhoubinbin@loongson.cn>
In-Reply-To: <600bfea91c1f14f089b2f7677578cd8690412fac.1773107475.git.zhoubinbin@loongson.cn>
From: Huacai Chen <chenhuacai@kernel.org>
Date: Wed, 11 Mar 2026 15:57:32 +0800
X-Gmail-Original-Message-ID: <CAAhV-H6zg2MfO2HC1+Q-FE4CJJLh2+Boo=ZP57XYPfufvCBhkw@mail.gmail.com>
X-Gm-Features: AaiRm53g3U7uWAiLhv_K4TOrTstSQGfkvDlqk0BcK2SaYUxV4-EVvkbNF5uEZaU
Message-ID: <CAAhV-H6zg2MfO2HC1+Q-FE4CJJLh2+Boo=ZP57XYPfufvCBhkw@mail.gmail.com>
Subject: Re: [PATCH 5/6] ASoC: dt-bindings: loongson,ls2k1000-i2s: Document
 Loongson-2K0300 compatible
To: Binbin Zhou <zhoubinbin@loongson.cn>
Cc: Binbin Zhou <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Xuerui Wang <kernel@xen0n.name>, 
	loongarch@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-sound@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: E771425E5DB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273927-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,loongson.cn,kernel.org,perex.cz,suse.com,xen0n.name,lists.linux.dev,vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chenhuacai@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,mail.gmail.com:mid]
X-Rspamd-Action: no action

Hi, Binbin,

On Wed, Mar 11, 2026 at 2:38=E2=80=AFPM Binbin Zhou <zhoubinbin@loongson.cn=
> wrote:
>
> Add "loongson,ls2k0300-i2s" dedicated compatible to represent the I2S
> interface of the Loongson-2K0300 chip.
>
> The hardware integration of the Loongson-2K0300 I2S interface differs
> significantly from that of the Loongson-2K1000. Specifically, while both
> utilize external DMA controllers, the Loongson-2K0300 configures DMA
> channel routing via the `dmas` property, whereas the Loongson-2K1000
> requires additional register.
Can this patch be the second one?

Huacai

>
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> ---
>  .../bindings/sound/loongson,ls2k1000-i2s.yaml | 22 ++++++++++++++++++-
>  1 file changed, 21 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/sound/loongson,ls2k1000-i2=
s.yaml b/Documentation/devicetree/bindings/sound/loongson,ls2k1000-i2s.yaml
> index da79510bb2d9..51e23c189f7a 100644
> --- a/Documentation/devicetree/bindings/sound/loongson,ls2k1000-i2s.yaml
> +++ b/Documentation/devicetree/bindings/sound/loongson,ls2k1000-i2s.yaml
> @@ -14,9 +14,12 @@ allOf:
>
>  properties:
>    compatible:
> -    const: loongson,ls2k1000-i2s
> +    enum:
> +      - loongson,ls2k0300-i2s
> +      - loongson,ls2k1000-i2s
>
>    reg:
> +    minItems: 1
>      items:
>        - description: Loongson I2S controller Registers.
>        - description: APB DMA config register for Loongson I2S controller=
.
> @@ -49,6 +52,23 @@ required:
>
>  unevaluatedProperties: false
>
> +if:
> +  properties:
> +    compatible:
> +      contains:
> +        enum:
> +          - loongson,ls2k1000-i2s
> +
> +then:
> +  properties:
> +    reg:
> +      minItems: 2
> +
> +else:
> +  properties:
> +    reg:
> +      maxItems: 1
> +
>  examples:
>    - |
>      #include <dt-bindings/clock/loongson,ls2k-clk.h>
> --
> 2.52.0
>

