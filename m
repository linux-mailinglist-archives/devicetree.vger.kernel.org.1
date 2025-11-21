Return-Path: <devicetree+bounces-241191-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C76C7A876
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 16:26:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 957A33610EB
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 15:20:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21F6834EF05;
	Fri, 21 Nov 2025 15:17:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F06762E7185
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 15:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763738259; cv=none; b=tXZMY8FPbrUFetQ7igA7hMcAcLfYRyI000jMriFDbepyFoRKekCG/ejc5mO94FjAv470fi4ixLKrPRcIUK+ByOSFJiuUdS99uyP33/oDMcSmqfbWqSOcQ5QsGKb/izcB4T8cW0BnSHoN/Tlz1fkwf6135zj0b5mD0njUsgvphcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763738259; c=relaxed/simple;
	bh=5eBeEdjkR/Hkm6+xplE8icfNSmSd/34vcdQdGK2qte8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=H7DvLGALihU4aNtUxHnFVmRGNL8okfQnP1/+HlmQ179lCCILdNyyrKDED6BeYlkwlrV9bku+5EVVnDhWjk608PyVOhKT5Z225Oc76eN3396ugSgZU3MJjikSPxTMA7msej22d5BeRJHf4gIDguDCPgNE6iEXvyG/FZYDVsqneNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-5599688d06dso586873e0c.2
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 07:17:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763738249; x=1764343049;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gIua8RfV2AxpUiobTVSq3dGuqkuUf86Fn/APkM2iKmk=;
        b=fCYxsdsI3U8gDcFczDThFXoXMQority1C2fyV47YuyhKW6IUbUog4Y3QRyHDKl6xXZ
         ICnPFd45qYAhpaoBvq7D4sIt6oV3xUvavdHMBmMhsefEZd4k/ePI3w8GeviNkjOBX4DP
         zaNR0x4TFmQ9IGzmYwuX+z5JO95cp3yLHj9kRZxNiFl42xzUmX8/VQeFGBqjNNlV4Xin
         OXX8ybidjrpnADKhszHOTVAwe6m2Cihmst5TV/CQeBSGLIMqgoRurD4NiYbFbRHLNhJ6
         pB7ybk7JUIzWot3z1Ov1GzagWIgYNualMXZ/aKvzYRqahv56713yeCElmIGFdI27Zmwl
         VEhw==
X-Forwarded-Encrypted: i=1; AJvYcCW03VVZO6DbXd0qH86wFUWSGcw8+J99/WT8TkcQJ/n6KN6YzVWZ326wj+Xj6y0fZhP2oKfHdHC9HNhP@vger.kernel.org
X-Gm-Message-State: AOJu0YxHLCzAbR6GwrVKFpPFj0DWM+pkafC+WzIwiM7XSzimcDK1cJUs
	82WySwBtRyDuZvZ1on2QpiFYyPgegE82lkHDFkXHUL7asebL5gBrWvj+duYpJPex
X-Gm-Gg: ASbGncugMyMC+Y4nX2bFVXGeKigq5PCKJCrREX8yXICpTwNLh81KxN7HZcIaDSNNwyH
	anMNJR5nWczv6kToV3NcqtIlgShtdpm/1wmivGJjLmKtwbo6796J2n128J8wi++ISKAVIeQjUvx
	s6GAhNKv/0DzUMq/5kyqfbdlnpkAhdlhgwqXKX7deAwVvNIslMQ2283en4Hd5G5irfWEb/xYroe
	yYWsoWy9O9Z8GsQoHN9vF8OrJUVF3b7x6CTKxh9pIDCV/tr8Nl7FpHzzEAI4MwLoW0ZrGvvdtmz
	/7wDBj+rQxmKDABCpC8FBfF93jQEl6mE4tvqitR8cT/DS6jAiCuex9rb90q9Usz4f8aNeqn/KBt
	futSdASKPkDw/ewzhPiDzGWpwrVmT25cBZNWFi+PbSgLbKN9dVtERhtObPUUo13ekK2A5FHV6lf
	X0JgZzDmwsBYwE7rs3XbD9QMlg0pzqNEo8SIbTmrewJTwIvbxs
X-Google-Smtp-Source: AGHT+IF+z3wRci7Th4UFojB7i5+pJeohOcv34Ij82pQ3HIGOOX2ijSg6YUZ6ilOVksj8pTN9Da3USw==
X-Received: by 2002:a05:6122:400a:b0:559:85d5:bfbd with SMTP id 71dfb90a1353d-55b8d715209mr794811e0c.9.1763738249483;
        Fri, 21 Nov 2025 07:17:29 -0800 (PST)
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com. [209.85.222.51])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55b7f76e8c9sm2445400e0c.10.2025.11.21.07.17.28
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 07:17:28 -0800 (PST)
Received: by mail-ua1-f51.google.com with SMTP id a1e0cc1a2514c-93516cbe2bbso611639241.2
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 07:17:28 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX5m6qk4S65wfPr6ha/NzJcl0zlWkIErsy0EYfMJPSdYn/BZCA0AiLgWIhS67OikmdGr6tQbOdFSIYw@vger.kernel.org
X-Received: by 2002:a05:6102:e0e:b0:5df:c1b5:82e0 with SMTP id
 ada2fe7eead31-5e1de36be43mr798925137.32.1763738248035; Fri, 21 Nov 2025
 07:17:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251114105201.107406-1-biju.das.jz@bp.renesas.com> <20251114105201.107406-9-biju.das.jz@bp.renesas.com>
In-Reply-To: <20251114105201.107406-9-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 21 Nov 2025 16:17:16 +0100
X-Gmail-Original-Message-ID: <CAMuHMdU2bougdWmD1CpaKDKe0iVJD-H03qbNhhLgyfSpsxp15Q@mail.gmail.com>
X-Gm-Features: AWmQ_bl1HYrUoeR3tLvRWfUvLCultmhzxtsQnjvLxVOOYGWOny4VgM7c5de7q4s
Message-ID: <CAMuHMdU2bougdWmD1CpaKDKe0iVJD-H03qbNhhLgyfSpsxp15Q@mail.gmail.com>
Subject: Re: [PATCH v3 08/13] serial: sh-sci: Add sci_is_rsci_type()
To: Biju <biju.das.au@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Biju Das <biju.das.jz@bp.renesas.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-kernel@vger.kernel.org, 
	linux-serial@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Biju,

On Fri, 14 Nov 2025 at 11:52, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> Add sci_is_rsci_type() for RSCI port type. This will simplify the code
> when the support added for RSCI_PORT_{SCI,SCIF} private PORT type.
>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

> --- a/drivers/tty/serial/sh-sci.c
> +++ b/drivers/tty/serial/sh-sci.c
> @@ -1182,6 +1182,11 @@ static int sci_handle_errors(struct uart_port *port)
>         return copied;
>  }
>
> +static bool sci_is_rsci_type(u8 type)
> +{
> +       return (type == SCI_PORT_RSCI || type == RSCI_PORT_SCI || type == RSCI_PORT_SCIF);

Would be much more consistent if all port types would use the
RSCI_PORT_* prefix...

> +}

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

