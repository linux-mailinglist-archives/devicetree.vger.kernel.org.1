Return-Path: <devicetree+bounces-232783-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 56BC8C1B838
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 16:01:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 27D431888E80
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 14:57:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40D102C327D;
	Wed, 29 Oct 2025 14:52:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com [209.85.217.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8710262FED
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 14:52:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761749574; cv=none; b=fJv4Agr9tAnik1pf3zTh/2bv5/joCWoT5miO4lskjRyG/pwi48fmTIzIof6xpqEIxx2dASAMIOoZALzL98IyQm9a0zH+vwLueeUnPdHcKgc+1wkZNTl1rd57zVyoPoVMh612QHjtQa1bZle8Nq9Ua35CHn0dyA2YDcb1+FYZdfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761749574; c=relaxed/simple;
	bh=9zqV6jhB56NFXTaKlUcgOIVmNv3vcWwq2ciUZhAwPaA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WzOOtl+DiV973Tvu5zpzGUrGEnJNFs2DedEMl280f59nVnbVJpLd3nZ+kUUpTGrtIYq+Qwwanh2sNZdbJwNXluA3h8sTPJhH9MMLyzcXdOEKBLy7I5wXDhN+3J2QxAd3A+aJqdtRoT09J3Vvqw+nvk01D+j9afjjB/92KigEdAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f44.google.com with SMTP id ada2fe7eead31-5d967b66fedso4447418137.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 07:52:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761749571; x=1762354371;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iQvv7exwOArMoYZGDke0hdGiWbyAHG9S2KTmO/d6Kf0=;
        b=FkkSGmnP3bnd35vwJYcES9MHQVXBh9/gNjskuZroZe+Zx1tQ2h4W/0SraE8JzLuLuV
         nS986DcRs2W0vDc/I8Is/zVNjt7Xag6LDQwgMLP0Nmt5Tz/Yv/h2m/7xkOqXKqdjwuB9
         Kq82xXpFlUR5zU9BuE4eD9ZXanDp0jBtGPXqAKrWhH2VsMPThnlnHewASnmfykZWxWUh
         +ZVcE+S+feXkEVND9vy6Dn+69gu8dOpPytVHZ/I6ABnfLC/INL4OLg93KRu9UDA30O+Z
         iphjQM1n2EYrDf6utGMqKMozylLrkx0UtxmLMwydeHHUG8DQbHINl0HB63gsK+fRlvxW
         Q28w==
X-Forwarded-Encrypted: i=1; AJvYcCXaKmu0HriMpoEx6yjPQ+KkfsbXA+P0dm+6kwhAR8GBqGXz+1NFR9pdzkW6zibCtUGCf+nqxS1dSGp+@vger.kernel.org
X-Gm-Message-State: AOJu0YzzFS5yUp41SxBEImdpqXQOgGkGQmNrUWRIRSLvptJC5GJogdN5
	jBNpXdf24qyontsY1kLWMl41bCPO82kOMFWkhllk6dXQZa2sLymxuB/ltl9RKNTD
X-Gm-Gg: ASbGnctwrIJdSbxb4DUXU61UhmI367AT01RQjWE4g8Lu9SN3sYtRwZ8uaMC+WflwU/E
	vX3mJJqFGQPaB5vKNQKi6EvPRelbBEQGFxuJJHNpUbxsS9QvNwfdPCc4v10kgYZArL3Rv7D4Fsi
	bkFUTitAXETmJIsi07eHc6kvmaijxQ1GR5yCyzNjgK3Kxj9zIt70jN9dc2AqdgwEn1jbBrxUZPn
	rl6loi4ldEtQN9VZVjswDFc6RJW9BSmRhpNDZQKOVLxqtl67PQD8PDhHIfQeuh8HNrmgsDIGU8y
	5BGX41Hgy/TLIXafQJD3kKMHgUZEJJQ2BZxP0SgoBqdX1EQSIjliu87/FChhbyJKcwF/mI1qJmV
	T66lsKjg+O+56f/TyOnYFzc9bKnk6KcMls0oInZvkHR5gq2I9H3kRU9CVHsNjzaRD7f3yudzrZO
	dDrK7X79EHVmjRSrf+hpsH8sFzudUUb+bFemfKYRNe4qu5YwPtxBG2TqL7cLSuf9o=
X-Google-Smtp-Source: AGHT+IEVknxO3UmjovTtaTXXGqKswbQigqNmbp34Le83Su7fovzYT2hwC5C1tjNXgT3c/3Dj/ZCbgA==
X-Received: by 2002:a05:6102:4a81:b0:5d5:f6ae:38c6 with SMTP id ada2fe7eead31-5db906958d2mr1057337137.37.1761749570962;
        Wed, 29 Oct 2025 07:52:50 -0700 (PDT)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com. [209.85.217.52])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5db4e4e3b4fsm5091969137.1.2025.10.29.07.52.50
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Oct 2025 07:52:50 -0700 (PDT)
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-5d967b66fedso4447396137.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 07:52:50 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWP+mZ2vLQ9xuVZIQ0eTLa0KTnU4ubJZn/2RhWuxGjQN1irY+kGfuOnEZng5SQl0Gs9dZ+Jbuuf1ZHp@vger.kernel.org
X-Received: by 2002:a05:6102:1624:b0:5d5:d1ba:439b with SMTP id
 ada2fe7eead31-5db905d8f89mr990736137.11.1761749569699; Wed, 29 Oct 2025
 07:52:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251027211249.95826-1-marek.vasut+renesas@mailbox.org> <20251027211249.95826-3-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20251027211249.95826-3-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 29 Oct 2025 15:52:38 +0100
X-Gmail-Original-Message-ID: <CAMuHMdV_9nSn1M8MA3K_trWW2niB21Tj3+VSQgg0zrNOd166iA@mail.gmail.com>
X-Gm-Features: AWmQ_bmu-VsyNsgrWByxIwZ6BxxZOq0ku33A5vZwj4heK_7OuwvDxVVNAt1ifsw
Message-ID: <CAMuHMdV_9nSn1M8MA3K_trWW2niB21Tj3+VSQgg0zrNOd166iA@mail.gmail.com>
Subject: Re: [PATCH 3/5] arm64: dts: renesas: r8a77960-salvator-xs: Enable GPU support
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 27 Oct 2025 at 22:13, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Enable GPU on Salvator-X 2nd version with R-Car M3-W.
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

