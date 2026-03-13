Return-Path: <devicetree+bounces-274818-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AFeBMYdis2lcVgAAu9opvQ
	(envelope-from <devicetree+bounces-274818-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 02:04:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D08527C26D
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 02:04:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 47C0C31E989A
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 01:00:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B778330DEA2;
	Fri, 13 Mar 2026 01:00:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ZA/lz0jz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f49.google.com (mail-yx1-f49.google.com [74.125.224.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 647D43090C4
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 01:00:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.224.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773363644; cv=pass; b=p68RM5xgzoYihhqw8o3r2SgPx2/oH6f8kMl8Kceop/2j3wqo9daNb89/PNM2/cMkWzkkkUGvCpb9fcLBJ2P27RO4ZAIIUFT6YtL9mF1EMnFgnlqXtZHh68kilFNXfDFUZLm63irARyQ/tasdr2Hh/uIxA3KeDmc+HnQHWPnuGSs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773363644; c=relaxed/simple;
	bh=sWXbHUNWyCssRT+Z0j94kKl4zmDZN0doACSqgWVnHEM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uAHvSHLOyZs008CnvU3zPnDxGUmSJIOnNmjpF4t8X59DQSK4arvfymOBa1kBMTSa19oeDWSyo2JBvlhiLA6DFG+asYQHmsHdhxpFjdPGKlYriOwngQ6z/zna7IH0irksRZmNVhxhY4ssgbh4wBvcWJDqyG49x9z+n7B2ZFFjM7U=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ZA/lz0jz; arc=pass smtp.client-ip=74.125.224.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-yx1-f49.google.com with SMTP id 956f58d0204a3-64ca09f2170so1806837d50.1
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 18:00:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773363641; cv=none;
        d=google.com; s=arc-20240605;
        b=fYAGUPJ3mZ7xxw+E5nz3yLHAdBI6LNCnChbM5nJMfXeACic3cRIiPUVoGMujW3BnZW
         rk0ptgPDLn4p7svcXBgmDmzjhOA1KHm+NvwmzoZ4cRtj4zTGH3jhzXj6zf5pZVKE3jJB
         q93XIf/ZD9+rBCZj4vwJB/8SIJRphW86kMYUrmUd+Ue0FXpKKHO1mOs3SVoPcJDsigpi
         YspHAJ67DoOiguIUVlX24GAD02AHH5VkIAZAsPpQN6CuD3nuadL2LmE1hCVQmzJ7du35
         TZIU7SrdiGwGtAxvgZzKkkslLQqo9bXKXm9E9NPVO7i7x7J/1qpTAvzl0FbFz/3lgoBy
         0klg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=WEIoHUDBRKW7sPjWtgozpXFsqYAeqWilfaHlivAXGTA=;
        fh=8+q3IsdRO3WU+hG1hqQoR9B3Tiy088NG78E9SZ58VLI=;
        b=ZqUC9kfdturKvxcYrHOr3V9riAZ3hfHhNlancpD077FBdIIux7u421cOUMwxlmrhYb
         /6q9Oh/VimZ4H8sqLptzCMkGJhy+o7WZXZ/7y4EbX0afN5i9VNuLDFEFcR6ok/80UIXD
         7R0rweJ6LKGcpAu6MeRNwmVT6ax8krHVMiErLLIfMvtfToLFxz28VdmhK/E4wV5sTp4D
         9rrmKlDXqEaY81+d0StfZ3Jd9x1r+NtOpvY4AtyjSNpEAyL37MEHTrjV+JUr4BDzjEhH
         GBzbzT3Z2Gvr6Y+IwdDzUR82tNzHoRdgmA1TqFmOA+UK0OCsfwgMIjpepPR2Gpc7Maq2
         CH/g==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1773363641; x=1773968441; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WEIoHUDBRKW7sPjWtgozpXFsqYAeqWilfaHlivAXGTA=;
        b=ZA/lz0jzZ5SnEt27k5mt290nazi42vhGGnOyNcbDIrJk0WzjSHSUXA0OXFphwHSWli
         WNhDUXBka7oi/+/SldIRtUuf1Po9CwQ6Y0+CSBiC/7rRru2Mvrwgy2C7Lvu84y8UZU3c
         nmLVa2qKS2YKHBiYT/MZ/bSmE8EFdQz3BwQto=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773363641; x=1773968441;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WEIoHUDBRKW7sPjWtgozpXFsqYAeqWilfaHlivAXGTA=;
        b=SScpI0inxEt5mCUn+Gh+8lSkPC3jMrmu6hxLgSUuue/lJKXW2VhNQZBYWCVHO+7VHU
         7zQ44kGAAP5NK0R07cM2254nhgbky2E1JPJyQTHYqlUS/GA1G4XD0f9ldbVVqMZd9fw5
         MxjKRfvNFWUO1QSarysTyJWyriW7EPjvIihs+CpgnU4w5tgxtJvYSlnZZXd8moqINEp0
         3ewEuLwHOe4SdIRnvlB25SOEM3oIkYxW+G6mbE+nkrvjitcCiw5kjoEOz6GKoAikDW2c
         LawCndFFH9QnzXe/pznG7pcntuqeoyP9X+Qih0qY8RMunMQiWnHmvwPaYeT+swY5Wreq
         ESqA==
X-Forwarded-Encrypted: i=1; AJvYcCXCQc0rFgmkK6jEtXHL/YDmcHb5zit/eBY3rHOwUehCLKBeMrAOsBlIOhaoI71XiYCkwrjwpwDwAiOA@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5lmir7L18RaKkPm5eWL00DXFXDXTb7sYk+jFln1e1l7tWD8P/
	mqDrhtIqxeJfcRmLTtL8CokdHMWja9FuFqUouPfSCO7ujQK0xA+AZWV25jEzUIvXEaUvMCL2K5/
	WYXKmK3fszb09/SIEPctnCzOGIRRVgCFiDAwpN8BC
X-Gm-Gg: ATEYQzwtLEjfWTaYX+cVS31RYGtPi3UKFfWmpWSiSq4tlp4NoZ4Dm0mqEbzIM9vXv++
	tovwiKbIHrcmnpDDh2Tk8h39X0fN/BCHSz+QXGPuj1GNFbGk9mrQpuges3hmZVpllqOAw7v6q5L
	QqLx9FvDhhuOoodyo02BmdeuJR7sVwsgRK+EM4hjjM/r2z2Kg9His6IjLgpFk6xn3NvSBHpPWu3
	y98jDl/93pRG3SDwcCLjTy2zC43P50mcpPFRjOBwG8XRhK7kRVfvmhBory7GXAW5RQQk3YwL70R
	l6838aoPNov6MSETX3LtLxqLOAEwTs6E488/cmZN
X-Received: by 2002:a05:690e:23c6:b0:64c:a815:511b with SMTP id
 956f58d0204a3-64e62f59679mr1215624d50.3.1773363641056; Thu, 12 Mar 2026
 18:00:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260303-send-upstream-v1-0-1515ba218f3d@chromium.org>
 <20260303-send-upstream-v1-9-1515ba218f3d@chromium.org> <1cc6de61-8b56-492e-ab78-e3aa448f58ad@packett.cool>
In-Reply-To: <1cc6de61-8b56-492e-ab78-e3aa448f58ad@packett.cool>
From: Jingyuan Liang <jingyliang@chromium.org>
Date: Thu, 12 Mar 2026 18:00:30 -0700
X-Gm-Features: AaiRm529-VNRFl8j9TL1yc6G4h205p6aiqQ4Ar4V5wWtWy0meX15btognc57fcQ
Message-ID: <CAEe3GZF7ct1ZFH2Zd6AJnO1vBJQZobGaQKO+hTMJjFcCQddq6Q@mail.gmail.com>
Subject: Re: [PATCH 09/12] dt-bindings: input: Document hid-over-spi DT schema
To: Val Packett <val@packett.cool>
Cc: Jiri Kosina <jikos@kernel.org>, Benjamin Tissoires <bentiss@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, Mark Brown <broonie@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-input@vger.kernel.org, 
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-spi@vger.kernel.org, linux-trace-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, hbarnor@chromium.org, 
	Dmitry Antipov <dmanti@microsoft.com>, Jarrett Schultz <jaschultz@microsoft.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274818-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_CC(0.00)[kernel.org,lwn.net,goodmis.org,efficios.com,gmail.com,vger.kernel.org,chromium.org,microsoft.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jingyliang@chromium.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[chromium.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,packett.cool:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 2D08527C26D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 6, 2026 at 11:25=E2=80=AFPM Val Packett <val@packett.cool> wrot=
e:
>
>
> On 3/3/26 3:13 AM, Jingyuan Liang wrote:
> > Documentation describes the required and optional properties for
> > implementing Device Tree for a Microsoft G6 Touch Digitizer that
> > supports HID over SPI Protocol 1.0 specification.
> > [=E2=80=A6]
> > +properties:
> > +  compatible:
> > +    oneOf:
> > +      - items:
> > +          - enum:
> > +              - microsoft,g6-touch-digitizer
> > +          - const: hid-over-spi
> > +      - description: Just "hid-over-spi" alone is allowed, but not rec=
ommended.
> > [=E2=80=A6]
> > +required:
> > +  - compatible
> > +  - interrupts
> > +  - reset-gpios
>
> Why is reset required? Is it so implausible on some device implementing
> the spec there wouldn't be a reset gpio?
>
> > +  - vdd-supply
> Linux makes up a dummy regulator if DT doesn't provide one, so can
> regulators even be required?
> > [=E2=80=A6]
> > +        compatible =3D "hid-over-spi";
> Not following your own recommendation from above :)

Thanks! I will fix this in v2.

> > +        reg =3D <0x0>;
> > +        interrupts-extended =3D <&gpio 42 IRQ_TYPE_EDGE_FALLING>;
> > +        reset-gpios =3D <&gpio 27 GPIO_ACTIVE_LOW>;
> > +        vdd-supply =3D <&pm8350c_l3>;
> > +        pinctrl-names =3D "default";
> > +        pinctrl-0 =3D <&ts_d6_reset_assert &ts_d6_int_bias>;
>
> Heh, "reset_assert" is a name implying it would actually set the value
> from the pinctrl properties, which is what had to be done before
> reset-gpios were supported. But now reset-gpios are supported.

Taken from the original patch. Will fix this in v2.

>
>
> Thanks,
> ~val
>
>
> P.S. happy to see work on this happen again!
>

