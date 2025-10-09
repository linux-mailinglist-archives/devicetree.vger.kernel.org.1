Return-Path: <devicetree+bounces-225034-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7D1BC9B4E
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 17:09:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8952E3B4564
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 15:09:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B8122EC0A7;
	Thu,  9 Oct 2025 15:09:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3F352EBBAD
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 15:09:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760022593; cv=none; b=pbOsvPWkOWoGQUXAOQu+s1XUdxQc+mSuJKr76I0RHXD1/dLY1036tqpWjxIHodxCbd2yfPqP226O2+K7+oD7pLU9m5LEEJV6dszCzafhN/uf93+4FTAvaYtCoAoLGQAolnCUK26jtgIcvLqfK8yoUD1NQoR8gKo7jlgmKut9EBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760022593; c=relaxed/simple;
	bh=G7BnJKOJ08l5+/PUjxt9C+wdBC0QSt1VmKpYirvoF1Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NWt/alkl0RfCl+Hv36j4sk9vCMPwFXUQqE9TGN+GCRYwIB7P2L5rapqiI2YcJfMVP1I9+DMZwvI/mOrocyh0r7cjZa5/F2UKm/DQBdN6lgB+vZcMtoVhSQfh4yZT/bIJG9Ws+7+6O5HImefJMjTTBUzPo0dOFswwBd+s0tXTCLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-54aa6a0babeso1639211e0c.0
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 08:09:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760022589; x=1760627389;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bFDqj9jQUKEWoN26aJ8wwmIbcIGNIv4JocheXpFei9A=;
        b=umb2m/MhQNtmJBSFovZKqGv9d3nB6Mq266FqtC+pUGqsASmAgToJ3LE5gJbU3Orw79
         d3KSdn7jttjdeUeIjvasmIxaq86RopA8c6F/JrgvRbWB7k+2AnEGhp2qJY2W4cTEyhU4
         cnbhhVG7s/bOo2izOpYcfTwnb7dDOpDw311l/TZER9+TwjWGM+x4NmCCNK7ybljyxdJZ
         AdD1JF73pOcOKAMUnLo7ph08WWTckkXSrgLF8ZWbPmgIIexQ+xJU1j2VZ8piPU45blKA
         HDMsszkSMkNotV6qQhAuOso5sj/9+TRpzG0dePwQu6Lu+B6QkON1pWwymmxv+og01RFZ
         14bA==
X-Forwarded-Encrypted: i=1; AJvYcCXjbnid7gPPYEyiiEcC4hPgrpW2N0NbIUPaSfZCKW0BBHOHfyTTJ5uC/1dJmrD7fphrH4wPo132uRhq@vger.kernel.org
X-Gm-Message-State: AOJu0YzoajjUHmhUUqzkVPDCZx+/yySTzp4mrrqHBviSa/Z93axJSPZY
	Eapn2M2jB6KyFalsa+KPiSr4Ummv0Lqsui8heGz2PM+gVZBUP0vXn7AHb7klWfv7
X-Gm-Gg: ASbGncvTWs6XCOVK9s/zYpnjDv1WqJgi6SwUkEiuGghoT16f6BBzeUbyaZGNmDrObiW
	koM2GmANa7mqZokFHc9o0c6a8eiUP4fvppxLuJJzMEGwp76fr8TAnIEMlQYM+hxJD7Eb3E69CKq
	ghR7ImB9jFFcQn0STmWpHHljVGIhTMWc7Ls8x7D09tPl7YvZ/s0WSnDWJy6bZ43Fvkv/IlZDirc
	e6GIoI/Cboh4GiEApFw3QchcFx+y0oWedkJakiit3gAmWlWwlBIEb1wPtETRAlJvQFUMLouqY96
	WN6aC0u/HWMcMr3RXlvuMYJzRDDLAeZtGnNYSY11Zy7Yz5Jub14uznm9j1Vd7CvvW1a/kMolt35
	jewSqVY2i7k3aLYPTws/K0c6rSdya+Ch1gGVgqT/b2hkIDSMK9Bf1YQC5Eh0GrgakddsjayqD3e
	8IN9fzvrRkFZ1R7HDc/8I=
X-Google-Smtp-Source: AGHT+IGCefJqQ3xj1Ftiq4+iB8LMmZPh+NJf6HhXlyrQlVWz4TX5CKTe1y7prICV8Tb5zH74noex5A==
X-Received: by 2002:a05:6122:3110:b0:54a:1ec6:b1ab with SMTP id 71dfb90a1353d-554b8f3e2b3mr3807434e0c.0.1760022589474;
        Thu, 09 Oct 2025 08:09:49 -0700 (PDT)
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com. [209.85.222.46])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-552ea335f77sm4283954e0c.2.2025.10.09.08.09.48
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 08:09:48 -0700 (PDT)
Received: by mail-ua1-f46.google.com with SMTP id a1e0cc1a2514c-8e286a1afc6so782413241.1
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 08:09:48 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCW0dkHZSZ/lXTQcauh56+kc3M7Jy2qEALWs0zW1BxmAa58AwI3wq+WgCfQg/Y6pmBqrk3N/ksM8mzBi@vger.kernel.org
X-Received: by 2002:a05:6102:8392:10b0:59c:1727:f59d with SMTP id
 ada2fe7eead31-5d5d4d8c8b2mr5359744137.11.1760022587997; Thu, 09 Oct 2025
 08:09:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251007104624.19786-2-wsa+renesas@sang-engineering.com>
In-Reply-To: <20251007104624.19786-2-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 9 Oct 2025 17:09:37 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXBr=8upmYpf8QCenFV14L3ZkCtYd6hY3ouioxOdvvv4A@mail.gmail.com>
X-Gm-Features: AS18NWBDe24I_NNGtfkIk4NkEvfMFRU8kqsQ-PBIipjAiBw_hSlwxxkuVX-bPiA
Message-ID: <CAMuHMdXBr=8upmYpf8QCenFV14L3ZkCtYd6hY3ouioxOdvvv4A@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: renesas: r9a06g032-rzn1d400-db: drop invalid
 #cells properties
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 7 Oct 2025 at 12:46, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> The 'ethernet-ports' node in the SoC DTSI handles them already. Fixes:
>
> arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-db.dtb: switch@44050000 (renesas,r9a06g032-a5psw): Unevaluated properties are not allowed ('#address-cells', '#size-cells' were unexpected)
>         from schema $id: http://devicetree.org/schemas/net/dsa/renesas,rzn1-a5psw.yaml#
>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Fixes: 5b6d7c3c5861ad4a ("ARM: dts: r9a06g032-rzn1d400-db: Add switch
description")
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

