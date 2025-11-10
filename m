Return-Path: <devicetree+bounces-236784-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id B91EDC4758B
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 15:51:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6341D349DD3
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 14:51:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 519C9314A67;
	Mon, 10 Nov 2025 14:50:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com [209.85.221.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 862122D5A14
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 14:50:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762786256; cv=none; b=dJxf+lb7nNqswXL8FOf+EOpvCgxL7mIAj77cHGtOLeb65viPKybZT2R0P0SH58saLEOijBz3zqpHC9cqnD2p76o0ASaHNK7yFKIT89IMjEEnX9Dn4P8Q0ojeoBPtE2ND5t8TiHPqPADW7BWtLp7p2i7PB2HH4E4ogiS+Mvmy8wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762786256; c=relaxed/simple;
	bh=IMhWei8UUtQyD2IeaxfNo1cout9WByPftYAKndZJ3d8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YbPE5CfDMRS7RFfqtPXl9LeBHmqKfPy/0uQeIbczIRd16j6K2ZG7S0K8G6N+zfRXGsJT5bzsE9kLQXI5CspCocUKXp8doDUAnAoEvYSuVYtppk9k0hvNiCWta3n+fhhh6rirMJy7JQMffVafmkI1CyNnltfuDCriFMCO3tPenxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-54bc08ef45dso1810883e0c.1
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 06:50:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762786253; x=1763391053;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r6W+AZvJNrL0mTuGS4dpQpITz95eoR4mgvv8GabBfNw=;
        b=FANHFC2F0uDWG0bRyfz0AyxSbZBNfxIqimljxGBSaw7QL3OXIOWJ2FBCo5VumYxroM
         ma9Ft/WV2XYhbauVSLR3qMAGaKcDI2SgfcDKS7E94/KkQL8W8I1Tes2czogEUBZNDR1k
         1lIo+3ErV1WazB4BBhi4O69tynBOn0Q2ff7oBrD8e0HBf0vUOhHOYTVm81JOKalM14xf
         6ZkNMRRO+KKeBpz3cRHuApz6gj/VEndaOjVhr+SlGHOlEAlMJvAExvmEXkVVXl9m24tx
         XzjE39AkPWKAe8bLNNWcGL1I1Ev4GG1346LFJ0yidwITSHuwROnUorCBNv5GC9YXn30D
         Jh/g==
X-Forwarded-Encrypted: i=1; AJvYcCWtWDaa0dDFIR3VVLfRzkjsh/6rrEe+vTkV9vOxtI7QfTFLUa+NJAUZGrJgq8p47uvkbtCqp6HsVdch@vger.kernel.org
X-Gm-Message-State: AOJu0YxU2bVvNsuTW01CJ0mBPghDNpiNfh/+EWeQ+sCR5Dbkix4kB68E
	WaN33l/uFrPDsl13xAhDtwXTm6vEcJl0JmhBmMTDZOIsLLyn04QcJB3vspSjFPl/
X-Gm-Gg: ASbGncv9B339myjDziqBCDHHF+bsEJJUUppudis3Sa/ud6y50Ou0FVdojnZ2Bxqn6qj
	kyLoHU4jPKAmN9EIXVXsM8+4cq8ptps9iVxLsqXDvDeeF+1AJhKLGfvatilJmTbjD3UQo+he2SH
	SHtdNFeOEEPvQ9dkwNpRATYbzXiPU4U+w9klgbe6DBlHwlrczWeDucAkYLdvpKGAMbiB1zXMFe5
	g+pfX3g3UiyfJuAZQbK8Ma6tfTHo76hl2xUuPPZ8hKk02oMQiBnVa6stBSxidwVf1OwkCP0iW5l
	A1OrWvqlAFCUBPdZU1EPc5OmWtIwDLri4BdqBAGplb/rIdvu/e8a2jOE8X05qgW6M/xAvTZvDnc
	RprbXMERS1W41uiDAwKz9ef00Pl0tme7uJh9OeDgTIUYGDYyGUvmcXpX8eVvi8+cXxbd8cRaJlc
	76LJnGcQ/01zGwepQDd8MTefcH5iBnehIXsgR1thEz5FyUpzUO
X-Google-Smtp-Source: AGHT+IFVcSXHc033OHSkDLGMQsBKws9WQpVo4ifwoecAaKCl2eYLn/Iba8SDe4ex4eJuMdaxh/VuBg==
X-Received: by 2002:a05:6122:2024:b0:557:98ab:8a27 with SMTP id 71dfb90a1353d-559b3207524mr2802178e0c.3.1762786253283;
        Mon, 10 Nov 2025 06:50:53 -0800 (PST)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com. [209.85.217.45])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-559956a5d68sm7238504e0c.9.2025.11.10.06.50.51
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Nov 2025 06:50:51 -0800 (PST)
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-5ddaff87c82so2426930137.3
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 06:50:51 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVwDtImxe4CyUnxLBHOmvUJkCX9u7XJPMjeSvd4qYYKz6ZFalsd0ZrPtyl2CzG6DzfP+LjKSW1hOYi7@vger.kernel.org
X-Received: by 2002:a05:6102:ccb:b0:5d5:f79b:e93b with SMTP id
 ada2fe7eead31-5ddc4781079mr3199460137.32.1762786251015; Mon, 10 Nov 2025
 06:50:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251028175458.1037397-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251028175458.1037397-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251028175458.1037397-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 10 Nov 2025 15:50:40 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVyMZe_6tCBaWJrHm5oEnFmYQtYjeEw8-4T3KqZOSwdBA@mail.gmail.com>
X-Gm-Features: AWmQ_bkDbMYfwCmJo4-5lhRxl2GtT1PU_uiGdBZlvXcWTikgK8Rjt2psKny3OQw
Message-ID: <CAMuHMdVyMZe_6tCBaWJrHm5oEnFmYQtYjeEw8-4T3KqZOSwdBA@mail.gmail.com>
Subject: Re: [PATCH v2 1/5] arm64: dts: renesas: r9a09g077: Add ETHSS node
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 28 Oct 2025 at 18:55, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add an Ethernet Switch Subsystem (ETHSS) device node to the RZ/T2H
> (R9A09G077) SoC. The ETHSS IP block is responsible for handling MII
> pass-through or conversion to RMII/RGMII.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

