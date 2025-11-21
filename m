Return-Path: <devicetree+bounces-241018-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B00AAC78B51
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 12:14:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id F205128C82
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 11:10:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F05F82D8DC4;
	Fri, 21 Nov 2025 11:10:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BAAB25393B
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:10:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763723453; cv=none; b=kLXI1uzgjWGyNgdbrglwc8lVQFsti5presYJTaiVEO0WyCGlAZBaXnxNtW3ASwlHOWf2zN+PWx5mJNCtEwNsMXoepquYJCJwXVA8AS459QfDQ0wdK1Hf+FLO4NoK/8YTKQOFM2OVo9BIj5996FK2vWOYokgoswD4Rkd8sMPDCIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763723453; c=relaxed/simple;
	bh=aA0dgpQjZapgdawUH97P5AeKVI3is8ojmmfq5AcnB30=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uMTxfqqh+XaDEY3yz6lCvll0CRvUuZg8jTTeF1aO8ntylFeJFbGN2GqBBAagp2qN+snvcRWsabL5pIkKs4I/4fH6s1bikOJ6dmVcF2mXKDyL3q6jTVF94do/C7B9Pp+cToq0R0MLluN2dRCc5uM0s20hWFw2mO8w81uIlDOQOpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-55ae07cf627so605958e0c.1
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 03:10:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763723451; x=1764328251;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+77DyjWht0xTAUtMByV+BjBRLSnj3uwYMqKi4c8r7gw=;
        b=tu7jyH4OaRGPI8vfcG92uIlXoDw5J/78hiSHJUqlytkXSbwjXB9XI7PFpep8qS1tj3
         E7Lmew335Zl6lFL+/GvvSDHeOm3tVVGOwwYr+uZNqidUjaRngX4xW1V9QZLdEGBALB7d
         BU2Y7K2k/8Qmk0Uvs9GBlRpOzA0LZgAw6OV5GLk8+/mRdz5/X9PoI4toIpy//4HHnD8L
         /Q3G3x3ahZCL6xn+0EEMKsZpGjy9qbELwlDmjSARFLEr4w9wqQBJcXaNGBbubmMymkIF
         7C/JTx87Y9+IR1G+NlsBv2bOtNcOg7vu3FapxvTx3mPUUBFKW6duTWjCP7XDNXmcOFaO
         IpXQ==
X-Forwarded-Encrypted: i=1; AJvYcCXsvpc4ZoZ8d3c+NnH6B1Fah+RenWeV8Dv3t0G8WwWRq47y8zNd4i9rH/qwAYADOEkfZxD0+Sjlj38M@vger.kernel.org
X-Gm-Message-State: AOJu0Ywzb7DSaUjLH/ydTvdwO65+W23As8t36qMUVbZ65kcVKx/wkQbn
	kHv3Lq8EX0dwQFVPI0cyeq5xnbfimZujKNb4qT0M/ETzEAiJJxI/Nw9MhbCOxRQ5
X-Gm-Gg: ASbGnctfnVaMfkeAPqiwt2gctmPzakD+YOK5yTDsG/z2+u2XmCqxT2QeL1ho+uD1dWd
	mzKhwd7V1Sv2LKWlsdOUJh9L/cOZmZXF5B7GTVbrpBIjRS3Qf5zHmV8YO7zWWI3r+i0iQQlCUDn
	/OIJzPvdjUJvXFhOQOqY5dLjPDZgYs3FyvfHhODVKEJWG4GnVdOFKvJid2jqvNl3KRGjhTqn12j
	l9V/4XtJ9tJrIloetHaIQZpjXBSCUdpcObLnkHKXoX6kQzy1CyjhQrvGdpaUalrQmPMGLOli319
	0PUCXx5VVUFoh3hWFdnvUL9rNIh/sDTyR411x497r7cDFYq40P1u+smnOHY3lAkyLZgPCMdFO1x
	3s0LvuDxPUagbj2IYQQTeD7m2JSlCfwMs/ioYW1sjDfEGh1m8F4bybimFmWveIWaC3htOTq8Akg
	7nzF9FMQXFNWh/ediKJJlO8WdqU0GPjmKbVXYc+GctZbjbnISF
X-Google-Smtp-Source: AGHT+IEiGh0XHkSa+5LWLXDE46qTPvV0xbGdKx2y/dgwgTA3QbrOEOaiexaML0EgUckOXby0zvVSJQ==
X-Received: by 2002:a05:6122:1d51:b0:55b:305b:4e3f with SMTP id 71dfb90a1353d-55b8f01e2ccmr325116e0c.21.1763723451196;
        Fri, 21 Nov 2025 03:10:51 -0800 (PST)
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com. [209.85.222.51])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55b7f7749fesm2156059e0c.12.2025.11.21.03.10.50
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 03:10:50 -0800 (PST)
Received: by mail-ua1-f51.google.com with SMTP id a1e0cc1a2514c-93723104137so551972241.3
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 03:10:50 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUy8plTvUutzht/32fPHhSODA+/6AKGRNEMcq9COamUgSMIbpmqSs4LxK0qF9koKcUH68mySItsGyTt@vger.kernel.org
X-Received: by 2002:a05:6102:5a8d:b0:5db:e851:938e with SMTP id
 ada2fe7eead31-5e1de1ed4b6mr369202137.10.1763723450426; Fri, 21 Nov 2025
 03:10:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251010-kakip_dts-v1-0-64f798ad43c9@ideasonboard.com> <20251010-kakip_dts-v1-2-64f798ad43c9@ideasonboard.com>
In-Reply-To: <20251010-kakip_dts-v1-2-64f798ad43c9@ideasonboard.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 21 Nov 2025 12:10:39 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWrMGGHt3g_eF7q+7WCuDg4DK7nLObszKADD2bxmMJhMw@mail.gmail.com>
X-Gm-Features: AWmQ_bkvxrhLH7ZLxZokI5MbBD5f29KhuLuCg5iCnBrvGiUJVfgVzugvmE2mXxU
Message-ID: <CAMuHMdWrMGGHt3g_eF7q+7WCuDg4DK7nLObszKADD2bxmMJhMw@mail.gmail.com>
Subject: Re: [PATCH 2/3] arm64: dts: renesas: r9a09g057h48-kakip: Add ISP and
 IVC nodes
To: Daniel Scally <dan.scally@ideasonboard.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Daniel,

Thanks for your patch!

On Fri, 10 Oct 2025 at 12:51, Daniel Scally <dan.scally@ideasonboard.com> wrote:
> Add nodes to devicetree enabling the ISP and IVC that are found on

You are not really adding nodes.

    "Enable the device nodes for the ISP and IVC..."?

> the RZ/V2H(P) SoC.
>
> Signed-off-by: Daniel Scally <dan.scally@ideasonboard.com>
> --- a/arch/arm64/boot/dts/renesas/r9a09g057h48-kakip.dts
> +++ b/arch/arm64/boot/dts/renesas/r9a09g057h48-kakip.dts
> @@ -50,6 +50,14 @@ vqmmc_sdhi0: regulator-vccq-sdhi0 {
>         };
>  };
>
> +&ivc {
> +       status = "okay";
> +};
> +
> +&isp {

Please preserve sort order (alphabetical).

> +       status = "okay";
> +};
> +
>  &ostm0 {
>         status = "okay";
>  };
>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

