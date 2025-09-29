Return-Path: <devicetree+bounces-222456-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB59BA94BA
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 15:15:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9EB807A53C4
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 13:13:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E10391E5213;
	Mon, 29 Sep 2025 13:15:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com [209.85.221.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E9C1D63D8
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 13:15:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759151713; cv=none; b=lF4dTymRo62DeKG3qpEO6wASQRzpXxt0TOtIKwaHV2CxKL3PcqeHOqwK7R61AAv9RF3psrCqDZykxluw51p2Hpc80/R+rndLMFhlH1p2WbYkLV9cL1pCcEJz8+eXTc6OFjpjiP5k154VnE/eHGt3W5GVjMFY56ufIYw8QOw4DYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759151713; c=relaxed/simple;
	bh=25QVpmBoR7pVggVi8SCeBBL/ftaE/xNScWjYKPGOX4c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qlfwHUBxYyFyxuwWRckJ8+X8PA2r40dyBInoUkR9O0x456h1BTqlASbrixGc557edaLBtEjPe8aHs7XTlibbexjcI2USrDcY5V845tCGg8fRrO5qbujzwU+wph4UHh8dz7OKV1d2ye1kTlWJYMnF+D4GcCkzetJdMtUHVVWLB4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-54bbaca0ee5so568650e0c.3
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:15:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759151711; x=1759756511;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cSc4pwxNOa0392isOmyuqWj84KWUJBERAZ3w9UdjLTA=;
        b=s4KsHP4ZaXAIWds+lm/ivMYqQzGIm6GLFpj1aykS+QWKMiMH1043SUqDxxovLfu8yS
         8ReYJHtfG6NJegM6qXpvCHXWPUrtjUcZe3jw4NMC0Jzc/67sv9h2zgrVU+WEog6kdggw
         kISh+OW1Vl6HwYRA2UtVDNPBW+ttwbWtodSuG8+7wkk9h3W0iog/f6uhXUcM9jGAIBDW
         BIDlwcgHOJic/li5tQVDsNFpDUyb7ojkfPrWPjA0CTomdb4llE0KL7814eEv3QybeQ64
         IxpWvQ9jLA9tmdYhy1QTCk41ILOU9iMH28RFXIdEfPlreLbL3JLab9OblpofaNM9n/H9
         9QAg==
X-Forwarded-Encrypted: i=1; AJvYcCX6Qt8B+/BDNz/+j9uP9molAk58PP5gi2YQKsI3YTD47ZRa3Z24GqvWJzEd+smg3yca35jq/zcCLeys@vger.kernel.org
X-Gm-Message-State: AOJu0YxBjpUZ9TRNApecnOe8YVZfAC/OX1N9AIc+vCcxVaCV0sAmHpEs
	D6kmBDFgBQ1/KnfLIs5FDj3ckyZLSC5asqFxyxs2SoJBZxhKCiGIjPUTi+3n+qKD
X-Gm-Gg: ASbGncuqX93LtG2sxougFDyANj1TwohgU6DpvdjhMR1WYiv1hi2pqkGStZDPBySHBvZ
	9cXxGI/YXMIbdhPBtHBN5oGxvjIb/9ezKkeiUZNk+xGUSQZuIxvW3/SzSe+dfw9YH7ZwEu1GI/z
	nRFlLT2+H3hH56STrwr5EdjSnC/KBcxAoZDGOizIuSK06KOhlvosPJomIJB7I8y+xwPwiq8ByD4
	JUPV9alxjRhjiXl0kVfnFP2zhp6zQ/Ik/tdxcrZc+5UdKp+a7hmBF3cfkeDGzxwiNwqi8ygasPT
	H0iHjbfiLwL5TlepRdHjsTyn9fNDAFKoKjGBFR4loqkLsuSjhdDUBLopKN7WKiysGl0G0fmMANp
	UirEDtBxzNNXtWbxHcfA9oyK7iq/HwntCedQJVlrHM8L5fWdeMKiX2yAXs/sAJ42qwUWVwzgod5
	0=
X-Google-Smtp-Source: AGHT+IGwsMxvONg2I1yx66uVUBlnNeJ6vfTGvDJpUGLw/4nRxtFw1jhCanCyMsUcF/Ya/p2RWx1qZQ==
X-Received: by 2002:a05:6122:3117:b0:545:eb6c:c6bb with SMTP id 71dfb90a1353d-54bea300520mr5435935e0c.12.1759151710921;
        Mon, 29 Sep 2025 06:15:10 -0700 (PDT)
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com. [209.85.221.178])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-54bed881ea0sm2291845e0c.1.2025.09.29.06.15.10
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 06:15:10 -0700 (PDT)
Received: by mail-vk1-f178.google.com with SMTP id 71dfb90a1353d-54a98bcdedeso513297e0c.0
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:15:10 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWggIfoogvx3hghdjfFKXHXUSiI45lr7S9bp+JLBb7M0HMyAp4RUlnj4o9zY/vIg3XQLgKY8icR3frp@vger.kernel.org
X-Received: by 2002:a05:6122:308e:b0:54a:23dd:5a9e with SMTP id
 71dfb90a1353d-54bea190263mr5089492e0c.3.1759151709973; Mon, 29 Sep 2025
 06:15:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250925093941.8800-14-wsa+renesas@sang-engineering.com> <20250925093941.8800-16-wsa+renesas@sang-engineering.com>
In-Reply-To: <20250925093941.8800-16-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 29 Sep 2025 15:14:58 +0200
X-Gmail-Original-Message-ID: <CAMuHMdW0Ub=pfdPunBuXC55nQa_iu5W54jMcx714Bhmb3KZWFA@mail.gmail.com>
X-Gm-Features: AS18NWBMxS3buGoOE_HDNs7xKX5YTZcMVNk8miT3zn1LyOl0EOjllS70cwOh0nc
Message-ID: <CAMuHMdW0Ub=pfdPunBuXC55nQa_iu5W54jMcx714Bhmb3KZWFA@mail.gmail.com>
Subject: Re: [PATCH 02/12] arm64: dts: renesas: r8a77960: add SWDT node
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 25 Sept 2025 at 11:40, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

My
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
on the RFC is still valid, will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

