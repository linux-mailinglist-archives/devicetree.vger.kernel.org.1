Return-Path: <devicetree+bounces-306055-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YOs+DI/eH2rvrQAAu9opvQ
	(envelope-from <devicetree+bounces-306055-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 09:58:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 795586356E6
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 09:58:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=brainfault-org.20251104.gappssmtp.com header.s=20251104 header.b=jC+J+8ja;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306055-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306055-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 45FA6335F061
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 07:51:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7129B403EA0;
	Wed,  3 Jun 2026 07:50:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 064E4402442
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 07:50:41 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780473043; cv=pass; b=Pb4FatL9aHRc/VuJ3GhgcyavgrWSjl1mFfbjRM9fxomtLAHYcHyA3Py7IbUcwEWE40m5lhWNyFGDQ7/TfcTYFIn1Nnf8UFZkCq7eDRF0MI9xBoUkJhm0erTqeXPdY+sa8j9RlrHEOEoPAONQbym08ukGLNa7WWGHfo2I65PZfB0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780473043; c=relaxed/simple;
	bh=qI9x4E7HIqVGtpIFCrkjPHFtKr9cQsvi57l0VCMpkoI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DVTmReyZ6IpebVfmiPpkEUeVRuJaTUOeFPXh/dvXV9r2e9YwR1ZRZ9cRoAWh7jatWAHSlG10V2R5ou3+T6dTNJF5Sz1ykUCC++NaeU08+6UnZpRCbGySl/i2/Y6ZylgNkRDAEJD0aoQbR3isdI2WWn5aqnbyVQR3k8GriFY4x5M=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org; spf=none smtp.mailfrom=brainfault.org; dkim=pass (2048-bit key) header.d=brainfault-org.20251104.gappssmtp.com header.i=@brainfault-org.20251104.gappssmtp.com header.b=jC+J+8ja; arc=pass smtp.client-ip=209.85.210.48
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-7e615efd7d7so9232089a34.2
        for <devicetree@vger.kernel.org>; Wed, 03 Jun 2026 00:50:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780473041; cv=none;
        d=google.com; s=arc-20240605;
        b=VOeYL7cl+UHa8ABYqxzzeSSEcSgLj88t0WQhpocRz18C7l42/J2lmhFmG8HgzEgMFi
         k8rHO+HlG7uTZvwhVsMletikirsdWZEbrkPOinNqOCZVNsHenme7yDC4yP+3DJPLF5Y2
         82wL/mTUTb8P2ORPFJnZozxUvnHJo1H69q9Pzn1EaZL9OGRcNmhSLF4xFRMXpdEGWH9k
         OHM/JJgY0eYWP0Gpkrwysnk034wDnKvRxBYKQhlEuX79DYXOqiFXw87w/MHn9XSpp/5G
         zHZPBjM8H3qYSvdGyGFlII2PpynhI3HlX6PcC84IlK4yyhqeQfo7l2Su3MbhmgFW1GC5
         +wgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=xYHxFGfinYri+us9/Q/zWs+R/40L6rjvaeGXffPnQj4=;
        fh=M865Iyv2WnBCGIf9EybZHWY4HjpUo4EAW1aVSc4GRPM=;
        b=aIdWUewUUL5BqrpnIf3FGDkSNs29Fsa9pK7Q3jQ4MOGBVNrKqVaDvOaBq1y5jNP/Gk
         /2ReF3eIimtwhABjMpIO4uRZZJaiH9Wk6u/LQEHaxi4jQlOwgO2KFU8IEkquYcD07gy2
         odpqhzGdGfjx89E65/Y+nh5BODJSiCIOSktp2Q+WfpW9YDaCc07B24RAOk9d7gAoloLr
         s8wU9Ke8zVhXQvazv5hV1g0yt+FCIH0+fGzLhTYTHpSbZMVBx9ByH0oHdRkn63RY1hIQ
         ODviAiRkXadwgHpoioQfrxisvioHLh9XlcoX53RaFoCHKbEHc/Bz1OnRmN+hJtNiRxeV
         Aqkg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20251104.gappssmtp.com; s=20251104; t=1780473041; x=1781077841; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xYHxFGfinYri+us9/Q/zWs+R/40L6rjvaeGXffPnQj4=;
        b=jC+J+8jalcrNWjH6GnOxOknJYeXedd0327Dc5ATR7wRD1vbricgtjilPnQRpK5XI7B
         zHo/clqW1EjpaLtfVvaK72WwLHrX4h3KgBgMA03SlAqpPuSW6baihI5J6q7krI1vOAKi
         YEuVf78QaQBBMRgV6qja0Pai62W1gsU24wJJ/HV5RMbTrGdy7PLda5BR88Nkkdk25Q7O
         uX11Pw0w4o5a36aDo0yzwmt0Sz15gWnLODHyc8JSjjUcB9jtqx2+X+aqy07KKbm//DZL
         +q2HBHlSU5iiXOVMpA/hdXA3ZgDf85CdvQtjNz/+IwyAgFffOk9pWjEkrcjwwhw/WfEU
         dOag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780473041; x=1781077841;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xYHxFGfinYri+us9/Q/zWs+R/40L6rjvaeGXffPnQj4=;
        b=U2Mp4anBOieqXLvyVPZCs6s4L0il0hjYRWnfCPnLXceVCHqaWhtYjQ325EVNP4P4ym
         1+GKoIjHAvWOI+Z168aU4HuLACpXIahpC1tBS/MTlq1xztyjJ6AUR5iFWGOTH7XBLTyw
         gf6mHLfEs80baPmVDkwmYYE9qSFYXAKlpg4GzS+o8XXylnSTwakCuQyt6WgGmfZF0dX9
         mxoaQwNzx+RCWhintN2ilq1RxCUl1wKK25z6bFCJjCjG8tEp7zVMyphKhpDqOtTZpbKZ
         mflmFZKOzksVaSqypwLDyyncKwf+Pz4xsVHLHefmWtdeiFbp57dPh2ccHKDTfPszXk5/
         7upQ==
X-Forwarded-Encrypted: i=1; AFNElJ94o1FhbSAqYsuYDdP+MN6CGKCDXQMzK2s4UjAYOJWdH6xa3K2Fv2DtXdu4kEDGpEgOrRJFJQuIH46F@vger.kernel.org
X-Gm-Message-State: AOJu0YzfioxAbDvGmt9p7OQyiiowsM/C72dSY+gdUt5H7IN/VP2umvf/
	Cb3Zwc9URwILgoUFajR3dbgsHeWMVadfq5wCLLT3nzgqJ01ZfxIfQrEODnHxfakrsKCViSVTF8w
	L7hqeqxdjLoOjmA5+p9ENe063ULomgqjaD05l0SGcLFG/Yf8a2V87AXE=
X-Gm-Gg: Acq92OEiLCmIMYUCjl4520oq74u2PBgVW9JgzEpva6cRu3jR+KIUfchSqi7OkwBKNmw
	t3LgtS2WK/Gjbr/4WmD3gY4xPbol6g8guqRHIVSWXUT4r7xx3d7c0OG0AqVw1XXrVqpFFInbfF8
	/8V1NjrrrGeLyknFzT6wgh5tLQz60u4NXbxfzT+mvy2+yA71yGZfDE5gnq3f2JuJSuXAXa46fSX
	2MVXjM3ciITdcLS5y192azonSK6VR+gyzzPe/3gMfoQiyYjWKxHxXOR/AGEjko4hoOyPhC5fDVl
	aDPHuh2p/nScW4sMe1viEGHKYkM9N8qtSD9w1IjaInU7bAI394QsNzFH7KXzrnxo36QK9HarFUN
	+8vHUBLctsfVI9Akt5m3/iI/cunI6wF6N47oBbw==
X-Received: by 2002:a05:6820:4b82:b0:69e:ab0:3f4e with SMTP id
 006d021491bc7-69e4809bc67mr1386463eaf.46.1780473040894; Wed, 03 Jun 2026
 00:50:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260603074222.593243-1-joel@jms.id.au> <20260603074222.593243-5-joel@jms.id.au>
In-Reply-To: <20260603074222.593243-5-joel@jms.id.au>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 3 Jun 2026 13:20:29 +0530
X-Gm-Features: AVHnY4JSlAbr9dlQG-_M5xhgpMiEqTpdhzx2cxP5YYAVKefozEsh5CDxsKMym-U
Message-ID: <CAAhSdy3cDWy3yNSx=exEk3hjSWYrt2Uye7-eK6Yq9qHOrk0Xyg@mail.gmail.com>
Subject: Re: [PATCH 4/7] dt-bindings: timer: Add RISC-V ACLINT bindings
To: Joel Stanley <joel@jms.id.au>
Cc: Paul Walmsley <pjw@kernel.org>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Nicholas Piggin <npiggin@gmail.com>, Michael Ellerman <mpe@kernel.org>, 
	Drew Fustini <fustini@kernel.org>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_DKIM_ALLOW(-0.20)[brainfault-org.20251104.gappssmtp.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:joel@jms.id.au,m:pjw@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:npiggin@gmail.com,m:mpe@kernel.org,m:fustini@kernel.org,m:linux-riscv@lists.infradead.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[anup@brainfault.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-306055-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	DMARC_NA(0.00)[brainfault.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[brainfault-org.20251104.gappssmtp.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anup@brainfault.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,gmail.com,lists.infradead.org,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,infradead.org:email,devicetree.org:url,brainfault-org.20251104.gappssmtp.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 795586356E6

On Wed, Jun 3, 2026 at 1:13=E2=80=AFPM Joel Stanley <joel@jms.id.au> wrote:
>
> Document the bindings for the RISC-V ACLINT.
>
> Signed-off-by: Drew Fustini <fustini@kernel.org>
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> ---
>  MAINTAINERS                                   |  1 +
>  .../bindings/timer/riscv,aclint-mtimer.yaml   | 52 +++++++++++++++++++
>  2 files changed, 53 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/timer/riscv,aclint-=
mtimer.yaml
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 2fb1c75afd16..43dd9873bbc5 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -23005,6 +23005,7 @@ M:      Joel Stanley <jms@oss.tenstorrent.com>
>  L:     linux-riscv@lists.infradead.org
>  S:     Maintained
>  T:     git https://github.com/tenstorrent/linux.git
> +F:     Documentation/devicetree/bindings/timer/riscv,aclint-mtimer.yaml
>  F:     Documentation/devicetree/bindings/clock/tenstorrent,atlantis-prcm=
-rcpu.yaml
>  F:     Documentation/devicetree/bindings/riscv/tenstorrent.yaml
>  F:     arch/riscv/boot/dts/tenstorrent/
> diff --git a/Documentation/devicetree/bindings/timer/riscv,aclint-mtimer.=
yaml b/Documentation/devicetree/bindings/timer/riscv,aclint-mtimer.yaml
> new file mode 100644
> index 000000000000..192ff3fcf79f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/timer/riscv,aclint-mtimer.yaml
> @@ -0,0 +1,52 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/timer/riscv,aclint-mtimer.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: RISC-V Advanced Core Local Interruptor (ACLINT)
> +
> +maintainers:
> +  - Joel Stanley <jms@oss.tenstorrent.com>
> +
> +description:
> +  This RISC-V ACLINT specification defines a set of memory mapped device=
s which
> +  provide inter-processor interrupts (IPI) and timer functionalities for=
 each
> +  HART on a multi-HART RISC-V platform. The specification can be found a=
t
> +  https://github.com/riscvarchive/riscv-aclint/
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - tenstorrent,atlantis-aclint

Use "tenstorrent,atlantis-aclint-mtimer" as compatible string
to be consistent.

> +          - qemu,aclint-mtimer
> +      - const: riscv,aclint-mtimer
> +
> +  reg:
> +    minItems: 1
> +    maxItems: 4095
> +
> +  interrupts-extended:
> +    minItems: 1
> +    maxItems: 4095
> +
> +required:
> +  - compatible
> +  - reg
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    // Example 1
> +
> +    timer@ac000000 {
> +      compatible =3D "tenstorrent,atlantis-aclint", "riscv,aclint-mtimer=
";
> +      interrupts-extended =3D <&cpu1intc 7>,
> +                            <&cpu2intc 7>,
> +                            <&cpu3intc 7>,
> +                            <&cpu4intc 7>;
> +      reg =3D <0xac000000 0x00010000>;
> +    };
> +...
> --
> 2.47.3
>

Regards,
Anup

