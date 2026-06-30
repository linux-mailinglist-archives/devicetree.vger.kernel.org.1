Return-Path: <devicetree+bounces-317386-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YKPbJQxOQ2obWwoAu9opvQ
	(envelope-from <devicetree+bounces-317386-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 07:03:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 037D76E0692
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 07:03:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=qAexHRIH;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317386-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317386-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DC5A73014C4D
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 05:03:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8CC03C4B9B;
	Tue, 30 Jun 2026 05:03:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f179.google.com (mail-dy1-f179.google.com [74.125.82.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AC832F4A0C
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 05:03:04 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782795785; cv=pass; b=SNjWdSjKdx48041wEmF42LpD2MBiuW3coeSwYEb/A51U7Dy/Jn9U4LlCkuPVkRqiMN2LmQcLQ+PWSzbb9QyX02O1x5lJOBybM+I1/doWhSTVqrOTl3QcLyzp/lLyP6SLWoqVREForVRK47W/A5kB3SpV/km+UGeQWSAAUOxTYdU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782795785; c=relaxed/simple;
	bh=26K430vXymRYfpzEosj02/cVImWPiZf8cypsFbNDMQY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bPSDC/VQ9FYAej2N3ZzWFEmdenLHfDQUxaPuHYJ+43SQiQAan8rJPLLUdoKDR4iEgBqAzWcEaE82ztIHyflPcEqUQB3IbzOfbd7QCD2N/YFgnKFeWw98JBy20aUlY0T2NOJz7vL29CyUBCvlmTFE6+9BHAqoxybGPmt8gi9jw+w=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=qAexHRIH; arc=pass smtp.client-ip=74.125.82.179
Received: by mail-dy1-f179.google.com with SMTP id 5a478bee46e88-30c944aacbaso4266523eec.1
        for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 22:03:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782795783; cv=none;
        d=google.com; s=arc-20260327;
        b=WMee0TEifQtGZDO9i0LiDYtgBlzOpbUml4c7XpKkeMJqUkUe/qum+p9bh4T274BVn3
         WkcWdQu9dTajsJAvSS7fy+0ep1YUkNxK3aTXb7sWRs17CWkp6IUHlOxBP7X43HOMhl6f
         nERyK6xBlkr0M3KabgC9m4A0vADN8ZXHVJcFrdYRlFp+zjOqJXVjbfhgnq7NtaAvvNQY
         GDGLqsOw/3BZpV2PuXXIr1C8D5sHH4ZbQjh+jM8F5U6QmCbI8btHW7QqnxDyK/5ZYL6y
         YQf4YQMZqhKt4tliVUalC0GcXFWG8hD1j2Q8QccJltgt+KktqQ/qbTkhf+qJDjhUBuVP
         7SoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Ra4+EZwCsIZYaZYh4YnWOQ2c+mtq4i3SaPInPLLqG0E=;
        fh=UqaAGmrUU8a5tRTigNoK0M1y7DYnSBZcWo4ZUjPBGeg=;
        b=V3seH1SP69OR3E59Qv4coGMOMjlPuX4m0pu44BkW+FLubkPvf7Iw82QWGzq0ooJ5I9
         hzznK2YY6p2gs1W7kfmY2+v9IayuKa/JVrdSbj3G+O5jzwGMLm/+0cBQ9VxISL9MTTcH
         Qz/f3ovoKUuWXJ9YwcDGeOUyA/TBdYYCMTYzD2VgQ1mhcVwQSyYbFBfJm3ySogYkYPC0
         iePDrP8Z32iuGARZucDLpGRX6P7+kNDs3P1baw6465kb0VtiSvux2XKtGgAnAxD3laR2
         coVlOI6GrAkBWpMowdsnauhkozicx/iC2+4x9Zj/go6ciw/nJ2Ep4jOUS4xY/QzBMuiN
         oPMA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782795783; x=1783400583; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ra4+EZwCsIZYaZYh4YnWOQ2c+mtq4i3SaPInPLLqG0E=;
        b=qAexHRIHd5dXnB3U+++j+Lm9atKKfOdy40BJgELzY6V2eZpMvV7pa6bLZUcALe+18l
         cjOiqfXm0yWl2arz9YlA7cLHnVh5fYXPrFFUFE6/j3QKAQc566O52Xw+6xcoTGU3N80J
         siLhsuXLOhDTd+MTlpA1KEDtkPjJNrrBT2ItmSr1EBppU99x1EqphzhPMhZYPhxiFZ27
         TUULv++95yMjTFL3R7wh+Lwm1wIaRaddu2dHq5Jp87mwYmL3m14YO5mN9WCEUunOOhS+
         DtlEbC0f6AzSEAqSeDLJWnZ3gfnHUJORfX3ea0GsuIeHikv6bS35w7b6u2JrF8wuKXhc
         +aSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782795783; x=1783400583;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Ra4+EZwCsIZYaZYh4YnWOQ2c+mtq4i3SaPInPLLqG0E=;
        b=Ou/ntyqGq5nWP3T3dTvSUN3dW17h4AQAmSTgRMLXoyRFxfaI0aYOw17cMfMN59rGTI
         0HMdA2etHVc11bpf5EEukmmRwT+VRP7pLAiwbfzgfqCnUh6pfi+BxkxPsQxTEkB+0b7U
         ZL9vf5qEFu01T3X9Ap3Yyz2yJR8oFRr2N4PqlaOb0783zug6bfxF4wkUHfilTpJ7qo6Z
         Trfhw5pv8hkhXBNUK5mLUrsL4Lb1150aXAzmYUKegIB4GybcmkniXWmBqizv14LvOkCh
         IrER+qd+Tvmq9e5e0WWcrNm2opPIfqJDPumCOthVQXIzcz8Y+xWlnOl1UUvsOFKojci+
         XNWw==
X-Forwarded-Encrypted: i=1; AHgh+RpjUG28Otf8zSE/xEAxJ2YjXSenHj+3MxKB4x0Awj1SWgU3tdZ1WBEtS+yWM76sIetzVPBQKYM6Zqe3@vger.kernel.org
X-Gm-Message-State: AOJu0YzZacS9BL5AVQVWlqq+eERm+hesfUTV0tAjJ5ik9Ziaw2CVsT5N
	V729AVVnvu1oW39BCV/9iGsf04ZlFErmMU2eYpar99/R0KHGlyaKSpaFjONhFNwcrxfm1XaxxhD
	I03Qwuzmg3oC42bdWxs5AehsQkkQm0FA=
X-Gm-Gg: AfdE7cnqvx4S8XcKAuWRJG//TyP7mxpnbDBrv5luwvHmXAne1MhUBJTaGE6Q/5zS149
	Bsoj9pCHV3H1ivtiUmvXoe0+fqGWl9qpwXIJQVymtTo007ZS1VtqetDqdNQFgFd12uI3qLlbMyL
	jSoW9sMRD/IoV2uClDLtb3IFwALFpc59FtcgYFBkzAEbun5pe77GvTMP+g2GyHweqK6jjIakZd8
	5kWufJ7FZ2e+HCHdUFAEff4VQeLcEnh9x8trB2NOWRcBIAqhPinGvSgFo1K1FnxfIUS36aZLrQw
	U7m2TqeoiCKaOHNT3PARWBb7VHcCDu+imaY/7WOxZMey3k45E7+R9TQCd3HP88KaX8pFJkE=
X-Received: by 2002:a05:7300:508:b0:30c:5ebf:63c9 with SMTP id
 5a478bee46e88-30ee12c2c20mr1759132eec.5.1782795783293; Mon, 29 Jun 2026
 22:03:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260628191337.937-1-kimjinseob88@gmail.com> <20260628191337.937-2-kimjinseob88@gmail.com>
 <20260629-gilled-henna-96bde265d7ed@spud>
In-Reply-To: <20260629-gilled-henna-96bde265d7ed@spud>
From: Kim Jinseob <kimjinseob88@gmail.com>
Date: Tue, 30 Jun 2026 14:02:52 +0900
X-Gm-Features: AVVi8CfXUuhem7yefx-KLpyYAbEwG_H69geGautzK_Hqk2IAHIRaKOFDs0XRRSw
Message-ID: <CALMSewJ3+GFSww2qpa4Vq0yUhe=Z7mTiw+ZJYAiHeJ1vqXPr_w@mail.gmail.com>
Subject: Re: [PATCH RFC v6 1/5] dt-bindings: iio: add Open Sensor Fusion device
To: Conor Dooley <conor@kernel.org>
Cc: Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:conor@kernel.org,m:jic23@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-317386-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[kimjinseob88@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kimjinseob88@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,mail.gmail.com:mid,linux.dev:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 037D76E0692

I will remove that sentence in the next revision.

I will also drop the RFC tag for the next version unless there are specific
open questions that need to be called out.

Thanks

Jinseob

2026=EB=85=84 6=EC=9B=94 30=EC=9D=BC (=ED=99=94) =EC=98=A4=EC=A0=84 12:39, =
Conor Dooley <conor@kernel.org>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:
>
> On Mon, Jun 29, 2026 at 04:13:33AM +0900, Jinseob Kim wrote:
> > Add a binding for the generic Open Sensor Fusion host interface.
> >
> > Open Sensor Fusion devices report capabilities and samples over an OSF
> > protocol stream. Sensor channels are discovered at runtime from
> > capability reports instead of being described individually in Device
> > Tree.
> >
> > The protocol version is discovered at runtime from the OSF frame header=
.
> > OSF GREEN is a product identity, and OSF0 is a wire-format magic value,
> > so neither is used as the Linux compatible string.
> >
> > Signed-off-by: Jinseob Kim <kimjinseob88@gmail.com>
> > ---
> >  .../bindings/iio/opensensorfusion,osf.yaml    | 54 +++++++++++++++++++
> >  .../devicetree/bindings/vendor-prefixes.yaml  |  2 +
> >  MAINTAINERS                                   |  6 +++
> >  3 files changed, 62 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/iio/opensensorfus=
ion,osf.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/iio/opensensorfusion,osf=
.yaml b/Documentation/devicetree/bindings/iio/opensensorfusion,osf.yaml
> > new file mode 100644
> > index 000000000..8016d582f
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/iio/opensensorfusion,osf.yaml
> > @@ -0,0 +1,54 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/iio/opensensorfusion,osf.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Open Sensor Fusion Sensor Aggregation Hub
> > +
> > +maintainers:
> > +  - Jinseob Kim <kimjinseob88@gmail.com>
> > +
> > +description: |
> > +  This binding documents the generic Open Sensor Fusion host interface=
. Open
> > +  Sensor Fusion is a sensor aggregation hub. The hub exposes an OSF pr=
otocol
> > +  data stream over its host interface and reports capabilities and sam=
ples for
> > +  multiple sensor classes. The actual sensor channels are discovered a=
t runtime
> > +  from OSF capability reports instead of describing them in Device Tre=
e. The
> > +  protocol version is discovered at runtime.
> > +
> > +  Public project documentation is available at:
> > +
> > +    https://github.com/opensensorfusion
> > +
> > +  The compatible describes the generic Open Sensor Fusion host interfa=
ce.
>
> > It
> > +  is not an OSF GREEN board identity, and it does not encode the OSF0 =
wire
> > +  magic.
>
> I think this is evident from the previous text, and the first part is a
> bit confusing while the latter half is a bit confusing.
> Just remove this sentence I think.
>
> Binding looks fine to me, I'll provide a r-b when you submit a non-RFC
> version.
>
> pw-bot: not-applicable
>
> Thanks,
> Conor.
>
> > OSF0, protocol_major, and protocol_minor are wire-protocol details
> > +  exchanged in OSF frames.
> > +
> > +allOf:
> > +  - $ref: /schemas/serial/serial-peripheral-props.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    const: opensensorfusion,osf
> > +
> > +  vcc-supply:
> > +    description:
> > +      Regulator supplying power to the Open Sensor Fusion device.
> > +
> > +required:
> > +  - compatible
> > +  - vcc-supply
> > +
> > +unevaluatedProperties: false
> > +
> > +examples:
> > +  - |
> > +    serial {
> > +        sensor {
> > +            compatible =3D "opensensorfusion,osf";
> > +            vcc-supply =3D <&vcc_sensor>;
> > +        };
> > +    };
> > +...
> > diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/D=
ocumentation/devicetree/bindings/vendor-prefixes.yaml
> > index 28784d66a..88172d4a4 100644
> > --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > @@ -1237,6 +1237,8 @@ patternProperties:
> >      description: OpenPandora GmbH
> >    "^openrisc,.*":
> >      description: OpenRISC.io
> > +  "^opensensorfusion,.*":
> > +    description: Open Sensor Fusion
> >    "^openwrt,.*":
> >      description: OpenWrt
> >    "^option,.*":
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index c2c6d7927..e4df9d8dc 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -20011,6 +20011,12 @@ F:   Documentation/devicetree/
> >  F:   arch/*/boot/dts/
> >  F:   include/dt-bindings/
> >
> > +OPEN SENSOR FUSION
> > +M:   Jinseob Kim <kimjinseob88@gmail.com>
> > +S:   Maintained
> > +F:   Documentation/devicetree/bindings/iio/opensensorfusion,osf.yaml
> > +K:   opensensorfusion
> > +
> >  OPENCOMPUTE PTP CLOCK DRIVER
> >  M:   Vadim Fedorenko <vadim.fedorenko@linux.dev>
> >  L:   netdev@vger.kernel.org
> > --
> > 2.43.0
> >

