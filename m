Return-Path: <devicetree+bounces-234741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AEB1C302DE
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 10:10:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A3E014E7F53
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 09:04:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0921529B8C7;
	Tue,  4 Nov 2025 09:04:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com [209.85.221.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CB8F26ED3F
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 09:04:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762247053; cv=none; b=hTUIpsi89DcCpJ2Yoq9V4ytbQvb7vg1oXMxzlFWo+elaTC44es0a82V3AC1IARx9a0Dlp+6oQUelL2XM/O2zwHWQ7kS2OOzpxANb4PF7mSajvu4sWGLvmu3+4puosGR3z6dO8h2WmkEd6p4Z2pI8cAVlS4DRYQrUk9UBQckMY4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762247053; c=relaxed/simple;
	bh=UdNn3B8bC7IQAA1c9AUrLXpfm+Der+/vToVpbZchveM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aWcYDtIQpplcddCbpk4IgHx0N6ub+Fj+SWu6V5oe2dYJX2dvzniGBl9roWtyUxEOwvzSOfaZHe2pGAWPQfjwPNjOTWn+JEQOqm9lqnq9GyD4pJ+N6K4HOKmZcieSfpYpOkj3E4u+yLzT6EKjNYlbfflilYIR9uNvnPmqSFA9uUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-554ff1682c8so1275965e0c.1
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 01:04:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762247051; x=1762851851;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pO6dE6UElPiJpkG1mq8m4CRYqFTl9ZYqxqWs3yM4h1o=;
        b=WJsBNUEIviOWkOuNGkLFBwa4LQlj7laoo0Dx8Yi0saKSySqYfpyzez20pYCOJLigTb
         I7QwBUY89o46hqrr8n1CLPAV/NChsgkou0bHtn1ZvXMNIrkt4KGoOt2ARFqsMHiJYoMw
         6rVnsjvoNARYQLV95pU/14Axy39FdxkfP7fbKPb0vVf6MU5VJ+/N1VMB11wsZAbKdL8n
         B8b+gF/GpPK3RdrrPLrr5UKJfCFNE2p+nDfvqgd3omBnZfOeECbXtXJakPHZkwYo6lmk
         jRfqUwh84DYFtRi9darJm1G3xPJk6lcGLWSPhUwJyl/WpjQAZ+fWReZJhEchN1nGo5Dq
         pfcA==
X-Forwarded-Encrypted: i=1; AJvYcCWlBa3P8k9z9uv5dc6ysv1yCYzjtJ3fzk4D/7LZw9VUdAUFwpEuCjZJVszowu2jnx58AGu4/9N5ObUQ@vger.kernel.org
X-Gm-Message-State: AOJu0YxH3FQxn8oUx3x/jwXFsHW3+0R7tihvnUTHSLo+R255iOfZeJoO
	tFlKbjjtQe0rbJD7RkSC6s704052tVui5+LWSugfzfhTGJcZjThmSVniiM1V+s2O
X-Gm-Gg: ASbGncuE/qIGdFzWYxkJHSW/gjKzjQOhmszUUpOytFnXnWaxBqRYICkGFI0NcmU62b1
	hD/sZboSibUzgYdx52Lq0uttHg/u+kBPUTXb4+WMZgvEZznnIQxOZFtbYjF6qw9xz7JV3nmqNac
	Dh68PnJrVtfBwC074pUca4p+JjB8knoa5MmnpRjyPKC6Jh9iuf6NtCju/7Tla376LpVt0cqAiNm
	ZIfRY/z5XDTcf/XrGXNPmR90d+V/+6qcpeepa80h1roLFewrfLTfieKIwNANXB2IyEyU+TPtKYK
	ka+DPaU4rkeaYci4CvA40CfooOI+ehfcrU03bqJDgf3S121kGYp/LBhUtiDPeSeXhlBbyh8fLkG
	BzMXrh9We02NpLV6ekX/a8rOOg6nFJUVTngvuO1xbzHzRskP8pqOz6FWD1laGpZY4dGQ2S6gppA
	Ut7+/SlcL0wxi2RlVP5FMnDmrI8JsmuT7+qfrzbmx9QmcCg2WC
X-Google-Smtp-Source: AGHT+IEtfKTlQbFhIiedXQVFWXXH4Pynf+sY6O0bL04xQrFgGL7a9INbwQ8tFX0cViJjAAWUZvs0hw==
X-Received: by 2002:a05:6122:a1e:b0:544:c8bf:6509 with SMTP id 71dfb90a1353d-5593e3e6bfbmr5731353e0c.4.1762247051041;
        Tue, 04 Nov 2025 01:04:11 -0800 (PST)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com. [209.85.217.43])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55973c9994dsm839733e0c.18.2025.11.04.01.04.09
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Nov 2025 01:04:10 -0800 (PST)
Received: by mail-vs1-f43.google.com with SMTP id ada2fe7eead31-5db221488bfso5638393137.1
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 01:04:09 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCURBlzTxwrj6Zkz82A/XAdqMmzsbDWgaCCh5K/ujBXwlzbFUBdq+6+wElzMiPndx0YDByeIBeasj+T6@vger.kernel.org
X-Received: by 2002:a05:6102:dcc:b0:5db:ecde:5ae7 with SMTP id
 ada2fe7eead31-5dbecde6663mr1599267137.32.1762247049753; Tue, 04 Nov 2025
 01:04:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251103200800.173440-1-marek.vasut+renesas@mailbox.org> <20251103200800.173440-2-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20251103200800.173440-2-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 4 Nov 2025 10:03:58 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXQJJYzdWD3tufU5wVxy1OLfZEXh_KbkjTdaY4XJwKyOQ@mail.gmail.com>
X-Gm-Features: AWmQ_bmlcpVQIRAtDzcmHfsASxj-kOO0XENw5qhpcWFOCPThzyKdxDz-JN4eLYI
Message-ID: <CAMuHMdXQJJYzdWD3tufU5wVxy1OLfZEXh_KbkjTdaY4XJwKyOQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: renesas: r8a77965: Add GE7800 GPU node
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
> Describe Imagination Technologies PowerVR Rogue GE7800 BNVC 15.5.1.64
> present in Renesas R-Car R8A77965 M3-N SoC.
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
To be queued in renesas-devel for v6.19, pending acceptance of the
DT bindings.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

