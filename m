Return-Path: <devicetree+bounces-253488-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CDCD6D0D6C9
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 15:03:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 71617300D145
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 14:03:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF14F344047;
	Sat, 10 Jan 2026 14:03:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f195.google.com (mail-vk1-f195.google.com [209.85.221.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F091F25771
	for <devicetree@vger.kernel.org>; Sat, 10 Jan 2026 14:03:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768053818; cv=none; b=qrbTgV3g3Rgo2D31edYVVsm1m+d5AralwSwwdi39LldfSGsYoCADMPBlURLjgO+R4roCo0px4q/jqx9q3g5uoRnCT7BenE+SDLTGI2Ai+G3VxczNAbUnGchtL9fLXvaUAc5nz0bUEiq6TPQTTNAE+ve2UuT9BroQfit8rLvDybo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768053818; c=relaxed/simple;
	bh=+hIKWxEFnKXhpOi0CDirFiYYoKezYuUhhk82dtboigg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=njzobXt8RXDq8XEqPZS3qWVxdNPRCKdSokwgBGNcB+qfNaxO2tHQ8gEw8t7fwfcNMPJcKPVP44wUSsl+g+juA4ahp4C1JxflE3rbNwneoMuJXysBhMP/3QyE8JoxoDQnuBjEd44Is0P5sQCq3PfDPX6rnaKzhlpzxgWfUbC917I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f195.google.com with SMTP id 71dfb90a1353d-55999cc2a87so1427533e0c.0
        for <devicetree@vger.kernel.org>; Sat, 10 Jan 2026 06:03:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768053816; x=1768658616;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7/+nQPBpahPuTRTHglEM863xOzb0uRGdbVA+VJIFHvc=;
        b=uePtOs02Ogwy2D/iBhIjJyMMHhrNWe7S4CWslbUFqRFQ6d4czXSrKBHIPx3V5ldrYZ
         9PwP6n3wsYgnv6Djfro3jDuLz4+0rX/3HnsVliQUcwQvwRs/besiaVvCj9joezNAMhcG
         LyEIJ6yQg5IWOBISkj224Q/YYBnvPI2+bLODZUiZUyvniY7a8WqV1JmQW5VQNdkgLSvD
         MtWDiNuU7NCQp0ikH45IMLy3RAbHk+CI38OILX7NeRqc11jjBq3RNibeyI+EjOthJlwC
         +hpaJv2MlxfZOOu3bFbd5m17ScPXDsbjrYrS8RiKgae//08TtiUQFOh2RHXCPsNBYEIB
         9zrg==
X-Forwarded-Encrypted: i=1; AJvYcCVwPu93Uh5RzlIo49iWB3z3dGp1ea8PGoCST28rtPkr8pJZtLiGQ0j8MtsZzA7M8EsmuNl3/IxDPs1i@vger.kernel.org
X-Gm-Message-State: AOJu0YwPStE5rjFCzPDONWGXA5Syk/RPNKl7TRqhDahJtJUAxbSAhzvH
	UcKKrH8mJTgHvr/nC+BPkiSA3L4E4bTK+lUF8TreIn6dfhCVe7HL5bR+mpZ0cRrj
X-Gm-Gg: AY/fxX7dK5wqVBThXIVZ9vMue7LQD22HZ3KyvZNETKvmfjqGJyosxkhPXEHDM91hFPX
	YvhV3fq4azInGhsmnIkpcpP5LnYRyeeYAcAokOMEPe9c2OuQBtk1bHz0aR4dr9lqwETlBL48I0g
	6opO9D4tIhi2TQHy3dhl6mQIQc9COHImhLzKIQxIvnTrG468GnZewpQoppuXdjKf13dnlu9t7yq
	VkATqkV8FBzxXNUWGIem8XjmrK2yMc5Q9q+r0R2jBZ+eCemV8sP/B/j+EioVlYwpq57zohaYrcu
	rUQC+IfP/isZJcXJY3nLI+f4MtuKF/vjN7Ux/aNY2klnDPba/0riToqIs3gRgjHQMkqp0e9cWMS
	B/ZNoxuxTn5hk12rDEB6U3W3pfZudLOlMso1JJPORdUjovvqIHm7OUXZblM6iE+hxCGNOKrfDOW
	+2q2oFyXxjm3gjjJ+ynpPKk/14SnMarYQMMpy3ObJimFngw/DR7ZQW
X-Google-Smtp-Source: AGHT+IGuqFKmrNCS4yR3NsZlNIR0ccO93mak0bhDhHF9sYoDnDxBtf/QP5YpVSrccseky8L9dag2Hw==
X-Received: by 2002:a05:6122:478d:b0:563:6111:218c with SMTP id 71dfb90a1353d-563611124f6mr2604245e0c.17.1768053815616;
        Sat, 10 Jan 2026 06:03:35 -0800 (PST)
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com. [209.85.221.178])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5634d9162a4sm10212145e0c.15.2026.01.10.06.03.35
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Jan 2026 06:03:35 -0800 (PST)
Received: by mail-vk1-f178.google.com with SMTP id 71dfb90a1353d-5635e6b80easo752178e0c.2
        for <devicetree@vger.kernel.org>; Sat, 10 Jan 2026 06:03:35 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUYTix17NbkiaEsQAU7GBLJzYX+fVP9Rns8dhIw7k0wPaCCVx8S5Cm9yUmxVXKWDgF4bfSnijRTz8Jz@vger.kernel.org
X-Received: by 2002:a05:6122:3c4f:b0:55f:e06c:442e with SMTP id
 71dfb90a1353d-56347fad1f6mr4158743e0c.13.1768053814696; Sat, 10 Jan 2026
 06:03:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260109134409.2153333-1-shorne@gmail.com> <20260109134409.2153333-3-shorne@gmail.com>
In-Reply-To: <20260109134409.2153333-3-shorne@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Sat, 10 Jan 2026 15:03:23 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUiFk7bVHh_034jPyBGkgDGnc-dXJDwOEnBD2iZ02uVng@mail.gmail.com>
X-Gm-Features: AZwV_Qj6z-YvX-ELAM615xI6NqQo7zoOHhnr178XasgXuOsQv6rk-nrDVdiPSh4
Message-ID: <CAMuHMdUiFk7bVHh_034jPyBGkgDGnc-dXJDwOEnBD2iZ02uVng@mail.gmail.com>
Subject: Re: [PATCH v3 2/6] dt-bindings: gpio-mmio: Add opencores GPIO
To: Stafford Horne <shorne@gmail.com>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	Linux OpenRISC <linux-openrisc@vger.kernel.org>, Linus Walleij <linusw@kernel.org>, 
	Bartosz Golaszewski <brgl@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 9 Jan 2026 at 14:48, Stafford Horne <shorne@gmail.com> wrote:
> Add a device tree binding for the opencores GPIO controller.
>
> On FPGA Development boards with GPIOs the OpenRISC architecture uses the
> opencores gpio verilog rtl which is compatible with the MMIO GPIO driver.
>
> Link: https://opencores.org/projects/gpio
> Signed-off-by: Stafford Horne <shorne@gmail.com>
> ---
> Since v2:
>  - Fixup patch to simply add opencores,gpio and add an example.
> Since v1:
>  - Fix schema to actually match the example.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

