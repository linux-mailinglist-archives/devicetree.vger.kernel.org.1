Return-Path: <devicetree+bounces-234738-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A349C302A2
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 10:08:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CA93D3A7336
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 09:02:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 562862BE635;
	Tue,  4 Nov 2025 09:02:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com [209.85.217.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62CBA5D8F0
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 09:02:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762246933; cv=none; b=A2NEU/T4a8ZkG2p4JmrDuZzteAvvVcGOtrOvqChiVtNLuXjkF0U9IkFhk4Cpy9iwRVa1rNvGSHE1EY5BJQiLOn50dIe+iV0GUCFOGzLYY91NXuHNDK20Bt8t3nD3dWA2RFudLOn3ZQ3ikl8YbRdEnh+UVnYT7IGTU+mQ2Danwrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762246933; c=relaxed/simple;
	bh=Bs6qu82kza3J6Kn5aAW34CDe1TfQ63KLMwuu3FVhd1k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OqxGPti7KVdp/1YMpQOHxtCEfrxtpAIVOQ3/lJsakWHpMgh38tyr13InoBmsT8JSZ1AeFVaJ6mupm+NLSHSfip2L1EAsylgtMak/0NxXSjmUhnY+Le3dfCMiRzuZ0a+nb94bshd1M466ncOLTiHqv7wLtaEsOqe6sEFgzo5rhG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f43.google.com with SMTP id ada2fe7eead31-5dbd8bb36fcso2002140137.1
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 01:02:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762246929; x=1762851729;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H67jLGC2+nP+gJvVX0MRHo5Sws7Lcd+OKCPJPF9TIMI=;
        b=bqngJIL3+znXkd372K2GCcd5FYxsU2wqQzIIRkDraA9dq1KMxsIQJaV7dE0RK2M8Vo
         dYs1EcMs8LCALv+pPwhAHjA3Sa9pPiUT6GVOI09EZJaArNtNebuLkc1Jc95ezm7J9TXw
         qT4Qp7llcGc7wFLSVtKtLFsoUHXYRsS8fo68CCpRxbe54C7wlovbeaOJKBtNPizM0ucd
         +/tO2EYTCbvSMk6x5RIEsW4NjRbcCL4/z9i13gO5RTLs7iQD2a6gF+sVqUGneyRBCwVQ
         FksotmCp5SDQcBLXjkwVrgpwYYBpfVkP5rf66JeMliIx1M37I0xbKxEOEv2bHv5PnKpx
         WHjA==
X-Forwarded-Encrypted: i=1; AJvYcCUqKfrekH6Xf3JrG2HSCaZt97o6rWX5iXBoM2ezynyNW5h6KDl9dEfNABNM6YfPas/9P0upDQTMAro/@vger.kernel.org
X-Gm-Message-State: AOJu0YxPZuqGps4Nat4XyPwYIvehBo35R9XXk/oSPmwuwHKGK4VR/NIA
	1nFdOWannJVqY25v8P05KO/LdxYh+w4/HbnN2K9qlTtlbAgeMZ2Wv4bTFaIKDrs8
X-Gm-Gg: ASbGnctaG9TbX397CXTNOjve9bbPvjbodz1kz6chh3dJUJQA+k41v04+srY7lSmy1mO
	aqhN+R3Wrgd/OdBgTxh/f9IvDWWgS/QSwd2WaJFvuYWjDNqaG8QZtJCFcpmBPZrYdchr7h/1J2v
	8sGorKdCodyfHommxTf/2LQ+MyNT04iER9VuWZgTpxo/YdF3BJvN04iokIHHj4dSi1e5MW2yR7s
	KmIDXU5jBp0d8aJRGSsuSTz7zeOefCzh3ytlL0udnQF1/XRjOzS+kUL/azq8DUxFAs9Gx8Pj31w
	/oaqBQEJ1jG3oMhQfjzbf0W1Ym2Iknb+WeeJSDZEGl71txcJ62Q6ERStYTznJ5DYMFFRmiYT5ab
	2Nf21z5pNy8FDi4+DWuJD5IfUZAetuxbiXH851Z34dcnfmfQx0D5Fj5tuyyp68nmWw/4rXryvSb
	3NOYYnwSllAxSFYPiEuR+RNBacIJsBYpdImjVw3A==
X-Google-Smtp-Source: AGHT+IEDDPtP50hy/WjfutP4oe1IiA3bF9SziZR7RBGmpLV8CMuKb93cz5gyGJ+2KKgvuGmX2EM9Vw==
X-Received: by 2002:a05:6102:1445:10b0:5db:f8c7:5aae with SMTP id ada2fe7eead31-5dbf8c75f17mr600616137.17.1762246928944;
        Tue, 04 Nov 2025 01:02:08 -0800 (PST)
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com. [209.85.217.53])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-93542b31d18sm913770241.11.2025.11.04.01.02.08
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Nov 2025 01:02:08 -0800 (PST)
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-5dbde7f4341so1679562137.1
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 01:02:08 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXaChG+Zxyn0GE8D7T3SYBci+HXocjrDFDlAM3CZeiQ7gKQfalplt6bY+mM8nhDkfHNcH/78ouQDIvR@vger.kernel.org
X-Received: by 2002:a05:6102:442c:b0:5b8:e08f:eb38 with SMTP id
 ada2fe7eead31-5dbf7d63c3bmr753205137.14.1762246928045; Tue, 04 Nov 2025
 01:02:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251103200800.173440-1-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20251103200800.173440-1-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 4 Nov 2025 10:01:56 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUoVrMCcN0yY6BNrgXxFFPP-uJSAssZVrSWBSPtTr9DwQ@mail.gmail.com>
X-Gm-Features: AWmQ_bnnwTsbga4_ceAKrw3IqMNP5c9B4ptZmLIuqnx7fLogJkKsw0-FT6vmR8I
Message-ID: <CAMuHMdUoVrMCcN0yY6BNrgXxFFPP-uJSAssZVrSWBSPtTr9DwQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: gpu: img,powervr-rogue: Document GE7800
 GPU in Renesas R-Car M3-N
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	David Airlie <airlied@gmail.com>, Frank Binns <frank.binns@imgtec.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Magnus Damm <magnus.damm@gmail.com>, Matt Coster <matt.coster@imgtec.com>, 
	Maxime Ripard <mripard@kernel.org>, =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>, 
	Rob Herring <robh@kernel.org>, Simona Vetter <simona@ffwll.ch>, 
	Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 3 Nov 2025 at 21:08, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Document Imagination Technologies PowerVR Rogue GE7800 BNVC 15.5.1.64
> present in Renesas R-Car R8A77965 M3-N SoC.
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

