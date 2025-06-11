Return-Path: <devicetree+bounces-184626-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A2101AD4C64
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 09:15:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 627E917D8D4
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 07:15:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C7651EA7C9;
	Wed, 11 Jun 2025 07:15:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="EDsOoTdy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFCAF35958
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 07:15:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749626148; cv=none; b=OCl6NTWCvpi7u7Sp3pt/Il1eBPxRQ88I/2wv2qph/uSyTtcnlswHKDzK2BE2YPI6Vsajtlo0AEIK86PUmkSKBOQf/mUnnRumiN1qPzJP/N6qrqSwnyZ4fbJNmKbKuj029TazuxneI+j1at0Dm3FW0PyA6ganfUDWC7Wfb4p27o4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749626148; c=relaxed/simple;
	bh=bDw8lv6DNJsD9dchwMOlh8L211qeg1CfzJ2PVT3ZHbE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Jo+GiNhnXIq+65OBCsDhHg8oJOQePzF7G5y3mFZd/EW0VDgaGPm5EPdm1KmsH6cX9VXjZYHjavk1ZO44P9szMDPDHjhdA7yRm8jPXH+e2i74ypjVBTyV3UcRh0BhhzpjjWJy7Jb4KUSjMjD39mmldDwvH8wKOBWyvqwm05Qvmqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=EDsOoTdy; arc=none smtp.client-ip=209.85.219.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-e7569ccf04cso5328639276.0
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 00:15:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1749626146; x=1750230946; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bDw8lv6DNJsD9dchwMOlh8L211qeg1CfzJ2PVT3ZHbE=;
        b=EDsOoTdywA3JGa2AL/9SYg8S0Nw+LIhDt0sx3uS/47ZQqersfDsCkjptM/GxIOX+RZ
         P60q0CV7Yn29/sQ0VY6JOr5rrpZIA85lQqHw9pGmpvLxrkjDXuHzzVlbs5re7vezhLlH
         g3JAoyI+oDwQTVKThlcdzkb0hNcSUKV9SNVgcBp4A0rT5QtbTFAWMJt+6q6f0rYzaUmE
         qwD+sjtxzQu0vRw117E7aqJmcC2Q2EeDYq15EnloyxXaojhg+OpVxnHnnVnPyMEWB3N7
         CH/lpRzOdrTnro3oTM3b2RdlKuzyKOYWpNcCU0vL9fRrS9ykx0BUiAzuAZrZmfnCqnn7
         zFMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749626146; x=1750230946;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bDw8lv6DNJsD9dchwMOlh8L211qeg1CfzJ2PVT3ZHbE=;
        b=oPY63nXg33V/rqkhP7UGNgApio9j0UWRHrJHE8JztK+LWwJHNX3hsM3Icdp5kOA9GV
         W3RmHHg1W0AFZ4Qf/UV6IrguxAfUNwC7NUr7XF186PUL5o2SyZwrfqgjccRnbXGzjAyb
         YyIBdxVbL73pZMyPNJLm83fa+SFrBgDjQRx6exkFRUZgithADoDwJvCl3Rt3OU+k4ba3
         JJxgwQpGhbQPhwfx0DdIrDDBQfqLvVTMLitSio0Z3QKWvPZa63D7WlcbxaBiYj6lHLPz
         SQh2rlDG6aEvfr9ijCgw6TbY8XUsxKoW5+JObeTDM4l69wzX7lVb+T19ICLwKp/LrLYw
         N7bw==
X-Forwarded-Encrypted: i=1; AJvYcCWEFEQH6iCNllTYulv6wedGQF1Jt0E2jNxT1ecxbw0NulVVr3MjKyoVIydxHVNiMxpGTYKIfF8hwBff@vger.kernel.org
X-Gm-Message-State: AOJu0YyF1sHwNqvwoS8R6hf61uB+3viEE+SwKOa8THdHvol3+zHFHwPd
	fHtz6LyLt3gIGrIb/SgF7U/sfy8je1fu4rtx5wdUqal47yEtets2OyZHv7lauJqgJcIulIPGNNM
	461DcfLCFmpP5Hu5buSIPtAjdiA1RwG1x64z7wdAPuA==
X-Gm-Gg: ASbGncsnB+/cZeObgDKFQmpQSxTsfSENInO2glcXisaOSYH3xM4OloAscPA2RbtqBuD
	TejUHqROw8u32deBHLgJQD+YdJHBQwR6R9DCfjyjkqSkXNo2xYAf504H1m1A+K+zw0I4ImhybFU
	u68VfAv8SWl2ygQS2JFC/vhKUPDwgPVM/x9nNHE7+jH7KO9g==
X-Google-Smtp-Source: AGHT+IEc+9hppzJUUw3dhryHx4clVFd5aDegC77U3+FbbfhX2RUu0BijR2nlmCbtsFlav7Da7Y/c1YmFqqH/eQyJEGw=
X-Received: by 2002:a05:6902:2191:b0:e78:eb00:babc with SMTP id
 3f1490d57ef6-e81fd9b2f22mr3224045276.26.1749626145882; Wed, 11 Jun 2025
 00:15:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250611031023.28769-1-nick.hu@sifive.com> <20250611031023.28769-2-nick.hu@sifive.com>
 <9c429671-8409-4911-8559-73a069d66964@kernel.org>
In-Reply-To: <9c429671-8409-4911-8559-73a069d66964@kernel.org>
From: Nick Hu <nick.hu@sifive.com>
Date: Wed, 11 Jun 2025 15:15:34 +0800
X-Gm-Features: AX0GCFt836Lo7RPXBqlCX9ju9k05WYmV2JoCwZYZlclqH9DiOrcuiHuFOhx2tAw
Message-ID: <CAKddAkAyvRdAz9X_rCGgfdxD0Z_Q7sAt8e5nuJe7=s7G-Y3+AQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: power: Add SiFive Domain Management controllers
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: conor+dt@kernel.org, krzk+dt@kernel.org, Cyan Yang <cyan.yang@sifive.com>, 
	Samuel Holland <samuel.holland@sifive.com>, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Rob Herring <robh@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 11, 2025 at 2:57=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 11/06/2025 05:10, Nick Hu wrote:
> > SiFive Domain Management controller includes the following components
> > - SiFive Tile Management Controller
> > - SiFive Cluster Management Controller
> > - SiFive Core Complex Management Controller
> >
> > These controllers control the clock and power domain of the
> > corresponding domain.
> >
> > However, Since we don't have a SoC specific compatible string yet, so
> > add '- {}' for the first entry [1][2].
>
>
> But you must have Soc specific compatible strings. See previous discussio=
n.
>
Maybe I'm missing something, but since we don't have a SoC-specific compati=
ble
string yet, I thought we agreed to include a `- {}` as the first
entry, along with an
explanation in both the commit message and comments [1].

Links:
- [1] https://lore.kernel.org/linux-riscv/c91d99c9-0ecb-4dcd-9beb-5a1e9fadc=
619@kernel.org/

> Best regards,
> Krzysztof

