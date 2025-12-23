Return-Path: <devicetree+bounces-249150-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFB9CD9859
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 14:58:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4427730A92BF
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 13:53:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A24D29B204;
	Tue, 23 Dec 2025 13:53:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com [209.85.218.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD552C21CC
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766498035; cv=none; b=kc70Xwz2aUWgeYZ//gAN31hFraPFO/pWaN/3GON9fjbuFvHIdO39zW3dSDOkhGuPzopKlnJGewDFj1h0stULg67T+9T9zi/h/PqAxI2RSdE6DvFFmMv6A4EDtJ7APQ5EDeEreVmTM6PDR8fx5AM9+GPvu0DA+5QDNkLWR8ZMIhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766498035; c=relaxed/simple;
	bh=a8FMrqVjKhSh+xBRWMkzRxeow3Vn9zz3nJEF4GxFrcU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RhLTOWBVUJyQ/uLXqvfUn7smrtQCF4ZzcxC8rt+bdwzcX89QNtkw8GYA0ibDpT4pfKxfrBv4fEPLluo50U1uB2ys7EmaUSy0WiPR8wqMSSqV1oVloTwqprP/omQfuvoclx7Qnw+59TrV3u/87UTHYtdeO5sWyg3bfKeD8NStrc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.218.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f66.google.com with SMTP id a640c23a62f3a-b7cee045187so898090266b.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 05:53:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766498032; x=1767102832;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H+ixeMsLCpQech4lVzSsQCsVyCManj4ccnQ8O83w1ys=;
        b=uEr3PEsoMahd7hueb52LC7tygeAEd0HnAihFAAi9mJw318/cTnqiV5/tdFepbJccvh
         S2cJsJTTypa5hjhDEdMDL57lW/so8WuJ1505XDtT2yALgVKMzzPO4y2dQpST184XNXEm
         tcuTLM7FnUPYoZaVMgKXiHQ4s2k7VHcBBq+l+Iv9noUhTRU/nOsbw6X4z7t0eyc2I33R
         bHcMpvBOFRQTrKtdpRDpUiIHEbjECvXRuvySIIZPTVmvNlFeNwZhjy6Xcd9QMgX0S8n5
         xijUsqx9kDmGLXTzRyswz9OSOGG0OLGfh0HxQA0RZqMnrC+HVPvbL5IrXRxjGsKHFuWP
         s40g==
X-Forwarded-Encrypted: i=1; AJvYcCWc6d0JSDOlLkl8P1YsJ7+pZ1j6LwOk3kD/m10kZva/HB2B3bGVZZrNjmnE9j478DUNyMKJyEtA2pfy@vger.kernel.org
X-Gm-Message-State: AOJu0YychGbm1pJ5H8VVczc16kOcwZk6ltsB+2TJh/fbmABgGZ3RmQIJ
	LGD113w0Fp7av1EnuJwtEjHMrX5ymRN7OhEpbapXswUhcE04O+nOe4oo4kXtKfqYVz9c8w==
X-Gm-Gg: AY/fxX7JkAun+HQAdq9KI7v12wT436NJ/CBqTYVzRa6mr+UOz7IZMrPrzzVHGXRYLQG
	+rALtI8bOKUDnJmPOkGaQDjr2rzMWw8s3wLnx9CzfB1gkLaibh6/1XbUOGOd90vT7PLQsUUsqHG
	aKWNLLNVmWNKJtYZpHWj8F1oqX2SAsPf7MbgnStakI3R21DAS0rQ4k130sa+8keZFHvjUUOgILP
	lbuwWXMit0G5RJqvTV1yZ6QnPhe3DwQmWFgkhhLip4YEYIa6MvtoUKA54NbISaLc5P93lmyghfB
	2UxPCHY2FVGQEQzO6TtSCc7LlmkGjoeCS/XftOv1hTnXegeMGUSsr3St2K1VQTWsEjKA9LjMb5I
	bZ1GXdMZrJZdOduzz4vdbvd89K2W/BQe0/A3bS7ykuHCINWVo9HXLsIA9D9ee3u/7f3LusNxHNK
	8HMjYwZXjWrhYuxFkcNB/fdzevCGol6CjUR+0MG2bkzMxBrEIeXon9BkG2xA2ut1HdWvpCiw==
X-Google-Smtp-Source: AGHT+IGjUqFwGwjimYfd3IUdFWzo1s5cQuFCGz/H3nfKpIdS3i21iefhogTsn7bF7hEc1Q9ZQ4ScYw==
X-Received: by 2002:a17:907:3a51:b0:b7f:fa5d:53d with SMTP id a640c23a62f3a-b8020632a8bmr1411244166b.30.1766498031460;
        Tue, 23 Dec 2025 05:53:51 -0800 (PST)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com. [209.85.208.41])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b9105a9d8sm13619712a12.11.2025.12.23.05.53.46
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 05:53:47 -0800 (PST)
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-64d80a47491so3603586a12.1
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 05:53:46 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXimFFnvTkFhs+lZPbwHcKsv+Q1laQNeznPBq3mV37Ln46C7CbPOfJZJrLEEJTqc70z7ke7l8NHLHXD@vger.kernel.org
X-Received: by 2002:a05:6402:2711:b0:64b:a3ea:5086 with SMTP id
 4fb4d7f45d1cf-64ba3ea565dmr12657162a12.12.1766498026801; Tue, 23 Dec 2025
 05:53:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251201124911.572395-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251201124911.572395-4-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251201124911.572395-4-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 23 Dec 2025 14:53:32 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXoeZRztr5vw=ApkUMcBFejTPdqTp1B7H_b4BCrp=CTxA@mail.gmail.com>
X-Gm-Features: AQt7F2pPAdRHTEKtZTIpjA8opdNaxGZqUaIcqPY8S0hZ4lPuFl8ZXn8vjc6i4OQ
Message-ID: <CAMuHMdXoeZRztr5vw=ApkUMcBFejTPdqTp1B7H_b4BCrp=CTxA@mail.gmail.com>
Subject: Re: [PATCH v2 3/6] dt-bindings: dma: renesas,rz-dmac: document RZ/{T2H,N2H}
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, Johan Hovold <johan@kernel.org>, 
	Biju Das <biju.das.jz@bp.renesas.com>, dmaengine@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 1 Dec 2025 at 13:50, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> The Renesas RZ/T2H (R9A09G077) and RZ/N2H (R9A09G087) SoCs have three
> DMAC instances. Compared to the previously supported RZ/V2H, these SoCs
> are missing the error interrupt line and the reset lines, and they use
> a different ICU IP.
>
> Document them, and use RZ/T2H as a fallback for RZ/N2H as the DMACs are
> entirely compatible.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

