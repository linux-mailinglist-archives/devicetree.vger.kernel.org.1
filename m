Return-Path: <devicetree+bounces-235688-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 71873C3B948
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 15:09:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D5515564935
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 13:49:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67D713376AC;
	Thu,  6 Nov 2025 13:47:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F5CE3375AE
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 13:47:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762436867; cv=none; b=e5nvLoVyKA7chHvQdcBlNzVRVi8rBK7/png86Z4Y3HkOGLildVVkWMyOUzDKPLppXNE4a9Xdis0hSrKbqJu1zf5a3b/uVkJfSblnU36qLVjeHiq0V5m04ZWYD6dimBdEFBrn/d5QHSmm9BiThiUJ+Jv40fG0ywbJG6rKie5/CMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762436867; c=relaxed/simple;
	bh=I3VUE6vhtWsWrhjiq89donvlpgI2hn86BAEVlUadz4E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FCoqEInC6nW+kPmMYCSQmq/ZtxppCaA7ZSG7bE/yGVW+39e2Z3kO0mH2eVBClen97MIR1whBAchqFuK2fWL3Nr4yWSdo6prlxqQwz/ZRoVfhcmWESNIOUr+KiXkEQI8CdusijR4T2yrz2OU/qtBuJUKKFgiLkAOBLsIbz/DqhOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-341d07c020fso941695a91.2
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 05:47:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762436865; x=1763041665;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1zvXQzHMZF+ClpmnJuOqJcZtH05R/CK4p6fsF3c0XaE=;
        b=OS5o6woFx6ImLtq5H1ZACRMCrLbX1qTM1uXxnuRlWa3/UJcIGRr/yivC+3cZSYWTdR
         2bNR43usrr6bfc9TthT2VnqqXtNwsmWSF4ZrnEctx+cJU3zhrwAdfp/1KmFFygbZHxDv
         VLMEpTWQFtghG4qS29+IRYX1tqKYnTPBXb4sTmHn865a3jjea8ZRn7S5IAPlJOjcwoKU
         uoNL01fCCvRhUwqTGMBE28TjBR6767sDszV2nKE9cS0Inf5q0agJO7lB95romnvU2SzY
         MQKfYkuL31DEVHCO5/mfX4EPc5LtxqQgzIbSp8+NqlAQFqJWnAd4ta/zOEjo9rxCuX/X
         GusA==
X-Forwarded-Encrypted: i=1; AJvYcCVnh0iEUqUY/LmA+vn2fuAVQi+hbL1sOvHZiaF3vj/7cZIhGOCb589P2eBjBEGFtrxqH18UoBX9N7/6@vger.kernel.org
X-Gm-Message-State: AOJu0YyUwH+Ter/DCTLs+LO4w3jDoGIFubpmSXbs7ViaGNgOJhHTydaT
	ao/NvFkFULRqXPZ78aWGDpDodN63a/178l5DAmDoKY+mp7eWd7sWn6n471Utdj6J
X-Gm-Gg: ASbGncuEGnk9hMxXdVQ/CrDNAyGBmkdAgirwX7uN8Y31J6KAl0n/SVuKBpUXWqtBLP2
	cL6k/BjGU2C0Iavqrgwl9vjHLCGkjW1CDJt+mRMH3R0VuRybcuhcx8wbvdAj2rbupoKwpk6L8I+
	ShoX56Xg6u0OgYVUX4uWXq0LoD+vckFQmqZFLZkGRyICrUUxJlPbQftDFY45ZGXiyWAayD5PlIl
	famdMb5VQ77sm+zyvFtHcv7PAva4JFprCpiyO/3HrtHJoeg9bE3WwylMSZhV5APO8TDfcdx9fW0
	/aPe76ZHG5Ag2Dus19wHdE03Li7vzKWLGiQWnBcx7Bqvsg5dAffjeGTQM1s0DfQeoBgvzd9jDAn
	VTCoWp7pkibehLkxXyftepxehZFt6XkTq6AgtbPGbVtMTlv5R7eKEv9QCzOvnQjKaUFzdLu2bma
	Fy25O+nEEoZVkNKrZlAzdkcRB7RYhIbdHc3FNb3W59T4ijw7hoymRG
X-Google-Smtp-Source: AGHT+IFALhz3yKsGr9ReE1FKz7mka2z9CLE+IDRGWKwiO07yJ+c4vdprW4BS+cFECYQ8zCTTqJKlVQ==
X-Received: by 2002:a17:90a:e7ca:b0:341:8c8b:b8e6 with SMTP id 98e67ed59e1d1-341a6c45f0dmr9810281a91.16.1762436864707;
        Thu, 06 Nov 2025 05:47:44 -0800 (PST)
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com. [209.85.214.181])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7af82ce7e2fsm2832707b3a.68.2025.11.06.05.47.44
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Nov 2025 05:47:44 -0800 (PST)
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-294fb21b068so12194945ad.1
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 05:47:44 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVlVTYa787Dab9lLc24o1ZyJOhjyPZYUwgtogb8T6lakiATzeMkR7k1DxZPVtSqAJiTqIYlMe42IwcP@vger.kernel.org
X-Received: by 2002:a05:6102:1620:b0:537:f1db:7695 with SMTP id
 ada2fe7eead31-5dd891f5d34mr2214888137.26.1762436493734; Thu, 06 Nov 2025
 05:41:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251106-add_l3_routing-v1-0-dcbb8368ca54@renesas.com> <20251106-add_l3_routing-v1-3-dcbb8368ca54@renesas.com>
In-Reply-To: <20251106-add_l3_routing-v1-3-dcbb8368ca54@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 6 Nov 2025 14:41:22 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVYzpJ8iqyPqbR7Bd=qpqDyV=GJ+Vw5fZ2G2S27gYO4+w@mail.gmail.com>
X-Gm-Features: AWmQ_bk8o_RbFEO18v2EcWGSAt2mahWgELrgaPK-1AkGfKDcrGdbiBTIxT5Zu7E
Message-ID: <CAMuHMdVYzpJ8iqyPqbR7Bd=qpqDyV=GJ+Vw5fZ2G2S27gYO4+w@mail.gmail.com>
Subject: Re: [PATCH net-next 03/10] dt-bindings: net: renesas,r8a779f0-ether-switch.yaml:
 add optional property link-pin
To: Michael Dege <michael.dege@renesas.com>
Cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Richard Cochran <richardcochran@gmail.com>, 
	=?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>, 
	Paul Barker <paul@pbarker.dev>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, netdev@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, 
	Nikita Yushchenko <nikita.yoush@cogentembedded.com>, 
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Content-Type: text/plain; charset="UTF-8"

Hi Michael,

On Thu, 6 Nov 2025 at 13:56, Michael Dege <michael.dege@renesas.com> wrote:
> Add optional ether-port property link-pin <empty>
>
> Signed-off-by: Michael Dege <michael.dege@renesas.com>

Thanks for your patch!

> --- a/Documentation/devicetree/bindings/net/renesas,r8a779f0-ether-switch.yaml
> +++ b/Documentation/devicetree/bindings/net/renesas,r8a779f0-ether-switch.yaml
> @@ -126,6 +126,9 @@ properties:
>            - phys
>            - mdio
>
> +       optional:

Doesn't look like valid syntax to me...

$ make dt_binding_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/net/renesas,r8a779f0-ether-switch.yaml
  SCHEMA  Documentation/devicetree/bindings/processed-schema.json
/scratch/geert/linux/linux-renesas/Documentation/devicetree/bindings/net/renesas,r8a779f0-ether-switch.yaml:
ignoring, error parsing file
  CHKDT   /scratch/geert/linux/linux-renesas/Documentation/devicetree/bindings
/scratch/geert/linux/linux-renesas/Documentation/devicetree/bindings/net/renesas,r8a779f0-ether-switch.yaml:129:1:
found a tab character that violates indentation
  LINT    /scratch/geert/linux/linux-renesas/Documentation/devicetree/bindings
/scratch/geert/linux/linux-renesas/Documentation/devicetree/bindings/net/renesas,r8a779f0-ether-switch.yaml:129:1:
[error] syntax error: found character '\t' that cannot start any token
(syntax)
  DTEX    Documentation/devicetree/bindings/net/renesas,r8a779f0-ether-switch.example.dts
/scratch/geert/linux/linux-renesas/Documentation/devicetree/bindings/net/renesas,r8a779f0-ether-switch.yaml:129:1:
found a tab character that violates indentation

> +         - link-pin

What does this mean?
Description?

> +
>  required:
>    - compatible
>    - reg
>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

