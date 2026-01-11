Return-Path: <devicetree+bounces-253645-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C40D0F98C
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 19:46:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1CEBF3010FF7
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 18:46:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4D9A2C3251;
	Sun, 11 Jan 2026 18:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CIVgUIDz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B67E1F8AC5
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 18:46:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768157182; cv=none; b=gHd4Z1ISHIb/CMM6la5CAKTiE+xYwvDNCpJgKtBZ+niJoUuLEj0YVHMfkwzjtPvvuaOJsb1eh/iynySUroy8/z93D8+rO9dLqNHuqIkDZ8ZWVNljW9Amy6PimcNO8HJ5LDFsmTVNXIHMaYkyN4tIhCgKha+NlJaEohAy+Uy8kl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768157182; c=relaxed/simple;
	bh=26XSF8abaacHWOSeK0Gpp40CHuhyJtv5EuYNp6TvHIw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kXB0dV8kxlLS4PwosOiX9ZjLqMdoOAt/SNSuusqhCk4jaT5Iki8+lWMWCUTTC4TiVv/vYYXfvW9mZ7e903W5QXnpsg2y5rAWUKg4DOrbbieob2ssD2UGT+biSXIHNN+HwTCoK5orMZWA8rgrCcIec5ojgo18QggXxct361AIYh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CIVgUIDz; arc=none smtp.client-ip=209.85.219.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-8907fb0188fso50866906d6.1
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 10:46:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768157180; x=1768761980; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LxHKoSi46iPA5F9rX5ZhPp9IruXA7MeRTiDagdmtDXE=;
        b=CIVgUIDznB7DtRwRYkm5+c5k16xclSzP1KNuoFRWq0ei6UIkOimQWEwZXv5Buy0Cgd
         pI9JX2gPJXmdJhIKlLvGY9FdkRToWSAwFUUYjggYR9+ZKfDzElnhZMv/D1sma6zMgs/1
         X+D3br98UAmpEQxkEIdkJA2ZwKMP3/bE9h6rLpGRFSAfpvRtafQAvWarcfF75YyyzJTO
         QiJnWdDEL+m5gQ2pAEdBm944h0PxBEOLiH2BfRIXYThCtaYmUt1gVrMqq54GGbICt7HX
         TlNq4hYLVdDpofuAmcolYVFw30dA4KR33iwth9U+DDw5jHIim8EGHpf30vK0vW62MNcx
         JIRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768157180; x=1768761980;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LxHKoSi46iPA5F9rX5ZhPp9IruXA7MeRTiDagdmtDXE=;
        b=XTXtcJ2kSpBItHKG9kPBN0COUdBjuh02oRCwfqBuhGgkRu3j84H7GlRc0+ayOcZyGf
         IC5gm3YmKAIfbTiwjTusdoqURsops2jo/Iva6lmkHpwmhqBXDxzAPYUfhdd59WKi6fyq
         Quav1+Xh9BmqkFd11tbMzC5ZE+PJEyQaIYAf66hje1GwjYZliotywaLiMt+UG67bkXEm
         eLtcrdREYggIlCoOdX+WjT1vfzgHtxtjrd2C+CClA+Ip8qg++C9Ka2JB891z4nKoZeED
         B3lVThdc7y4m2XmVvY2RknV5ncph/ohU3mCR9c6Kw4HXf8WOxwkscVZumRgH+kv/HTdn
         2A6Q==
X-Forwarded-Encrypted: i=1; AJvYcCVDIZwAW0d2QCNBX26vgcurjh/4x4T1XyTqSAxaxQTuYAJuH/TRhSA0dNXVyyPh1D0hNkevqKYAJmk7@vger.kernel.org
X-Gm-Message-State: AOJu0Yw38HTZUCnp2ytNWNDBaQvbxtr3s4AisS4hNyGqh8Kgp9g+POms
	1+3ujUdb0PyLx9BHHuD4ugg4nOfIpWDoDBjeRKtM2Vu+S2i6qXcmc3L+m1/Dmw==
X-Gm-Gg: AY/fxX7yPmvrEfACcHzM1A+ZNgmRPooR4ExZyQXWTyzuLYVzNHsFKWx7+Sk5FfPMQTM
	AONEGVtDnGF7VacUixE5jlWF7pDhzjc/T7aw1VFdhArgcRxRH8RvUZ6Mho/JMDqD0CqdpRV3q6G
	OnWlagJwL6l9U2qJz8OQyPACfKbnLCBhsO0w3UZqcd07zHrdARFldLoFR6tpGLG0T2/Z8dzlZSn
	GwnmtWk/5U4VX09LKLWvihRnhp8JJ176ZHcgLUt4qiywcasLRQ2V2/9Md4K4YiVy5VfG5gqeVlZ
	WIgljco3qF7WpSQB06IQzuhVR+3XhshPEoQ74FWjia2X8c9H9LFhbnNmXsZAbrHc+Nr0qQXNiEp
	XtSC/pouXpu0bN+Vd8afqIJkVT7Z4EIQmkRspq5e6b0jQgC1fuSORJ+hQhy1Ocm6ArEhdcSYHrC
	ntOfstecIyN3hKi7ndtE//lHItquwa/wRhway9DAvbfHb6tJB6RF414Z9kUQ==
X-Google-Smtp-Source: AGHT+IFr0AfQqdzuLfF2we3Zx/EJP2hZFx2oG+SaK1KaO8OqQ9sYp0F8cg/P9dtkorxfQtRFUlfUMw==
X-Received: by 2002:a17:90b:28cc:b0:33b:8ac4:1ac4 with SMTP id 98e67ed59e1d1-34f68d3b273mr14688746a91.35.1768150214300;
        Sun, 11 Jan 2026 08:50:14 -0800 (PST)
Received: from google.com (61-230-24-179.dynamic-ip.hinet.net. [61.230.24.179])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f7b19ebsm15175971a91.3.2026.01.11.08.50.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Jan 2026 08:50:13 -0800 (PST)
Date: Mon, 12 Jan 2026 00:50:08 +0800
From: Kuan-Wei Chiu <visitorckw@gmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com,
	mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.torokhov@gmail.com,
	sre@kernel.org, gregkh@linuxfoundation.org, jirislaby@kernel.org,
	lgirdwood@gmail.com, broonie@kernel.org, jserv@ccns.ncku.edu.tw,
	eleanor15x@gmail.com, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org, linux-pm@vger.kernel.org,
	linux-serial@vger.kernel.org, linux-sound@vger.kernel.org
Subject: Re: [PATCH v2 3/6] dt-bindings: input:
 google,goldfish-events-keypad: Convert to DT schema
Message-ID: <aWPUwCbFoIItG7n3@google.com>
References: <20260108080836.3777829-1-visitorckw@gmail.com>
 <20260108080836.3777829-4-visitorckw@gmail.com>
 <20260109-remarkable-crane-of-exercise-6bc17f@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260109-remarkable-crane-of-exercise-6bc17f@quoll>

Hi Krzysztof,

On Fri, Jan 09, 2026 at 09:23:33AM +0100, Krzysztof Kozlowski wrote:
> On Thu, Jan 08, 2026 at 08:08:33AM +0000, Kuan-Wei Chiu wrote:
> > +
> > +examples:
> > +  - |
> > +    keypad@9040000 {
> > +        compatible = "google,goldfish-events-keypad";
> > +        reg = <0x9040000 0x1000>;
> > +        interrupts = <0x5>;
> 
> Same comment as before. It applies everywhere, btw.

Oops, I actually had a local fixup for this but forgot to apply it
before sending. Sorry about that.

On a side note, none of your replies regarding v2 appeared in my inbox
or spam folder. I had to retrieve this message content from the lore
web interface to reply. However, your replies to v1 arrived without any
issues.

The only difference I noticed is the sender address:
v1 came from <krzk@kernel.org>,
while v2 came from <krzysztof.kozlowski@oss.qualcomm.com>.
I suspect gmail might be silently dropping the latter due to some check?

I'm not familiar with the email protocols, but perhaps it really is time
for me to start looking for a gmail alternative... even though I see many
entries in MAINTAINERS still using gmail.com addresses.

Regards,
Kuan-Wei

