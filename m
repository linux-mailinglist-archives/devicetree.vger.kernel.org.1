Return-Path: <devicetree+bounces-254434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC17D18492
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 12:01:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 715F4308F5A4
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:54:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30991349AF8;
	Tue, 13 Jan 2026 10:53:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f67.google.com (mail-dl1-f67.google.com [74.125.82.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9564819067C
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:53:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768301631; cv=none; b=Jz3NplRLMASsLXrMX2/TrDwCk5AfD8OV3K/CkVzNTlYlgwxsWxBEidy7dXJFDiPb1zrv+0in1nTs86SawArHwSQTqYNI4zg8Q1hlJXTIb9vwEBXqRXHR1A7PHVXZPgEC2wUnnDcAv0hn3j3sqtnzBEDeZwJ9cIG1XcaYKmagnJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768301631; c=relaxed/simple;
	bh=q763xDQsPM6UprpPWRAUoU+HU6QnwR3CZB0Sot9DdR0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=P+cbSkybqn7ZGJMkfCMX++Zq7MCRmjL9dHJ7TIGEDAYReHZFVzKPEwRbuPCCJJmFGgNDUOvTX7ti8K5HjOMT10QtZHgBB12+t9BCIM5zm8WIRfNbmZSvKsmZb0eaN52c3/ZGFzdeoq9qF6HRy4DkoADc+HHKEsQpNp8CqD+vf8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=74.125.82.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f67.google.com with SMTP id a92af1059eb24-11dd2370722so3947172c88.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 02:53:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768301629; x=1768906429;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MR0NoHyZdJndLOZGMkASZoG8F5TIOzALE+PpGAFfY78=;
        b=HrgoU8XMS5aMMK9tIvkxbQctGcPmmHV9kHBrAjyOce3evokIcge1DQ+zpbar7/7vzV
         uq7e/KlSsG2344nxHK+IWb6hTVkFsQOAhuyQQe23nm1JtpEjdVfGM+v+jeq6o5+zI6ab
         uw81ajqfytBf0+4dX1NVql/wLB7M+cfeNLpwUDjMaQAGuy2iE3/junZaIc9btWov3K/s
         C7f9nd5c1L8GcivnpZvR/BDFeeKgWr+nkTl3nguMf+SSRf1r9lTRa3vAS2gJVDm61D+w
         w+H570o4qMXHChGjvCfu8GVGs5HG23l7rajzcapXctr9Zmz2xA/ToFfaGN2aZXaTkKIg
         R8NQ==
X-Forwarded-Encrypted: i=1; AJvYcCWagh8//uS05vkwVp0Ud8VZ4VbzoUqSA7+8KDUJ9JPAFiBatW1oUK3KOQM1lgsTlgvwiMzRPpslWK6/@vger.kernel.org
X-Gm-Message-State: AOJu0Yzp2shTc+U1eUgipB9Y7guXZIwbmZ0yi9AXhANLbaH7BAyIx8Ae
	aERZ6FCha6sEwNbutgGytxg83EERqRplsksS1S+13hVUSy+RMjCqSVG7UA3ZiPj7N5k=
X-Gm-Gg: AY/fxX5BknSzOOFudHKl3egwKzM4Rdb2rTyAp3AnSrsP6KxUZ4daXbpd1hsUK2IxoJL
	5XWkAfWnewmQskljxMV8N8ubKMHfreT9VvBj/rtT60MDtZg4rb2gjIrlhVYS0EL3A0k77UCWZvI
	e3JJDcZobRMHGqLheMsplTgh8P1r4qThkLAUXGT1niN0c4CfoPLb73BfVkb14nD0AQtqUCG79LO
	9ZtFb5oz6/5EgyP5Fk8X/VV9CEYbyFhyL7eYPC8qRh86LgnLa26bSkOJdsWGSpQDfWb3vp2uK0K
	v4JyB8jflE9OcFbi6sSMyzQ9KRMQhsguSOd1FqTI2j8feQmQao7UuE+Md9RSf83jWy1DbDqFTHJ
	WS6CTTTKRjtvzrygNLp8om2cxlu5JKIEkDI1nRHKB1aoL118fDUYZI23ZrvY/z4vaWEux9BBe/u
	B+OyB2xP8tcGVPOiZmvCIGqJH7j4SFbg4U5RKwi33xuvSb4Sbv
X-Google-Smtp-Source: AGHT+IGh1fauvrOol0ruoI6sZzK6QXlOFXbtTi73wM6zCyHfZdLnmjfIDFcZM9QunMAKf3094fSznQ==
X-Received: by 2002:a05:6122:18b5:b0:563:4a88:6ecb with SMTP id 71dfb90a1353d-5634a88727dmr5521297e0c.18.1768295620442;
        Tue, 13 Jan 2026 01:13:40 -0800 (PST)
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com. [209.85.222.51])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56345043f83sm18387304e0c.19.2026.01.13.01.13.39
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 01:13:39 -0800 (PST)
Received: by mail-ua1-f51.google.com with SMTP id a1e0cc1a2514c-9412edb5defso2042749241.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:13:39 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVzq0uJFKWvQVeL3aJ1zwSqcAfBqRjcN6+Hk8QRqOrYgSKIImQWrL1nAKR2GbU+FsRzoGvsBhI7hH1Q@vger.kernel.org
X-Received: by 2002:a05:6102:419e:b0:5df:ab05:d846 with SMTP id
 ada2fe7eead31-5ecbae4aedemr6860725137.40.1768295619640; Tue, 13 Jan 2026
 01:13:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260113000715.231238-1-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20260113000715.231238-1-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 13 Jan 2026 10:13:28 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVGsfCTzSSjh474Ohimad2W5h1Z=vNhS6zU=Lb9f5Zbxw@mail.gmail.com>
X-Gm-Features: AZwV_Qhh8RJBBYa7gKoAKpUlBeVNsz1RZyqK3-3_U_RszPPYx3TukXyRJOwF8cM
Message-ID: <CAMuHMdVGsfCTzSSjh474Ohimad2W5h1Z=vNhS6zU=Lb9f5Zbxw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: display: panel: Fork Waveshare panels
 into separate document
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	David Airlie <airlied@gmail.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Jessica Zhang <jesszhan0024@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Magnus Damm <magnus.damm@gmail.com>, 
	Maxime Ripard <mripard@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Rob Herring <robh@kernel.org>, Sam Ravnborg <sam@ravnborg.org>, Simona Vetter <simona@ffwll.ch>, 
	Thierry Reding <thierry.reding@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Marek,

On Tue, 13 Jan 2026 at 01:07, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Move the Waveshare panels description into separate document, so they
> can be properly described with compatible = "waveshare,...", "panel-dpi"
> and attached to "waveshare,dsi2dpi" bridge.
>
> While these panels are described as DPI panels, they are generally part
> of a larger unit in non-removable metal casing, so the actual internal
> configuration is not known. It is likely that internally, those panels
> are LVDS panels, connected to ICN6211 DSI-to-DPI bridge and then another
> unknown DPI-to-LVDS bridge.
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Thanks for your patch!

> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/waveshare,dpi.yaml
> @@ -0,0 +1,32 @@
> +# SPDX-License-Identifier: GPL-2.0

scripts/checkpatch.pl:

    WARNING: DT binding documents should be licensed (GPL-2.0-only OR
BSD-2-Clause)
    #68: FILE: Documentation/devicetree/bindings/display/panel/waveshare,dpi.yaml:1:

which matches what panel-simple.yaml uses.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

