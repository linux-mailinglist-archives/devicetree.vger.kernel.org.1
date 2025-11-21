Return-Path: <devicetree+bounces-240989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AA2CBC787E4
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 11:24:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id 8F2992D2C1
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 10:24:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A8DE33CEBC;
	Fri, 21 Nov 2025 10:23:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D84042D8387
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 10:23:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763720634; cv=none; b=XPJjxSwWfFOjcHwqo+8N4wsR1n894NpTf3sR91KkfmTGQ8Jv+C8g5nMSw+M0OnXw0IsDwJ4Jq+NQw2+fGRP3PsAGoYGRqaUnzUJ43FNXzatWjbC5NIKrIowzgrAYX7v8bFTYmgdmzNBHP3dcDxCvfWRTXtzT1viNuT9pD2VksVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763720634; c=relaxed/simple;
	bh=GhsZ8Fz5ea+FMGpetIKZCr5jsiGsbQaOmhnoafKaWMs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NjMGSwIvDIuN2JzM9CokWoPJtPkxrUo8Uy1FCDlJwhu2+wr0iI/LD9/GjPuJPhBq9hMgYzgd1JCEB8kvoAuSobgrNpEeXbkhr8mN79HEcmPztSfSqk1nBsnFMxi7Yo4/b/MumCQlhPZJ+Mj4dze5mlnn+gUMoDpserYYPPLDgRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-5e186858102so670129137.0
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 02:23:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763720632; x=1764325432;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SZ2SskaUkurTKzbLrvgmf6JMHc+39Llze+CWyN92u4Y=;
        b=d5MU31/D6b0/4FGa/BHF8Ul5cqaav7MoPvilUDcNRP2q+3tVOs+nD5ouYXVMt0rNcl
         AMf8PEQUR75rKCL5TzE5j712Ion7VjZyat50JmyPw3SSMDy6NA2k28DVAg2aOi3u8Ubr
         ZCfTEgsZ+5jv1MNGItGohGbC5j47GLt9hMyOa0+byvYEdpPD/Eeo4SBoMcEfqFDPxwC3
         7F/4C17trv/1N968Ozxg5+Wody0OVmTa4GXE7GLBuy4h5I7BQXUJ29eISuK+ZuGYmcPq
         ybvVqp4u4TyCXb892Axr3gEN5+rd8UWWC4U7S5tESTsDmLGvAAywvGnD/5y2QCl+hLI3
         AUOA==
X-Forwarded-Encrypted: i=1; AJvYcCXUES+6gh9mfvgU7/Sv+pffmbuaLqrAUSLsbOnNz8bnHTDG7sfo7//o3Fs5MfzdEaUcXRZdVjPHsYh7@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8gmMD0YS5+mvz17OhaWg316IebJufCCIhFk2NGrAvhG7vtlJk
	tmfPhBQImhS3A9j97h2sNKURSoExlzPMutVk8j1TBiNaRq6d6z+yHEE+I3KBnAdT
X-Gm-Gg: ASbGnctuTiv+5dvBqUT+RPJkVq20q8+Ca562k1kZSq7IyrZ88Xyx3GCiqQQ8lZbcyjy
	MTcX3QKhSXFzXhOq1XKde2AeuwO2CMeHzlCXs48INWajDH8Y7fGy439CeoCmqa35w4cKx9XIZMU
	hidEQhlM+DqUgb8VzU452FUz2OrDwmAwxtbZqN+DrfgiWEHZa572cUb0ZOBeZwGArOMnjg7IQqw
	HJDnFxh7eWE5Rk2KsKoD6PLcvCW7SLTtmRHpOEZPHlH2aPetOIpvY0tszeZh47PDc2AWPJaK4no
	O6F6yEtwNAFH6z04MnQ0CsQAwjkDwX7cYn3wD1YUTXWZFMa++VVsmlwkFUqSwyoEP8qrTQfxtb3
	sjEVwFgnkh/mccpZA9FpmUZz3xKfvIFGAVpWsa+RH1XQs5Mymteg1BIFYY9QFxchJshoKzp4DzN
	Jq+u9IKOOBxCPWeIMHQIatzFXSMld+Rfa+JDASvNHJcQFamZgP9m9KXGkas9U=
X-Google-Smtp-Source: AGHT+IEgovWA4N99pP+gTRS6HNHtqN3AT0/MLsJez0jHqGe9zhcMOLabcczFeZbagZaikrCtF3cFqA==
X-Received: by 2002:a05:6102:3906:b0:5df:bb10:631e with SMTP id ada2fe7eead31-5e1de4bc6bcmr394726137.41.1763720631595;
        Fri, 21 Nov 2025 02:23:51 -0800 (PST)
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com. [209.85.217.54])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-93c56519706sm2057308241.13.2025.11.21.02.23.50
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 02:23:51 -0800 (PST)
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-5dfd0101905so675567137.3
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 02:23:50 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXuHP2DVF89KnJ+IuXojK6LhZAyju+buxbD9sWSYsqIxyOW7mfBH955oGr0L1SATP5dNMeV2zibwrQK@vger.kernel.org
X-Received: by 2002:a05:6102:2ac3:b0:5db:e6bf:c4d7 with SMTP id
 ada2fe7eead31-5e1de3c5ce1mr331446137.21.1763720630690; Fri, 21 Nov 2025
 02:23:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251022073141.1989762-1-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251022073141.1989762-1-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 21 Nov 2025 11:23:39 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWoum=tVskjVnjJJNc-BnZKxYT4K8zSpSHxY+sP-9xGNA@mail.gmail.com>
X-Gm-Features: AWmQ_blI9MFBWBRM3FNQ52s5pXAABz8leVBOE5KgISRyHCZpTNLJR85pAdtOY1I
Message-ID: <CAMuHMdWoum=tVskjVnjJJNc-BnZKxYT4K8zSpSHxY+sP-9xGNA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: rzt2h/rzn2h-evk: add note about SD1
 1.8V modes
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 22 Oct 2025 at 09:32, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> 1.8V operation of SD1 requires the jumper to be placed on the correct
> pins of a connector on these Evaluation Kits. 1.8V is needed to achieve
> the higher rated speeds like SDR104. Add a note about it to make sure no
> one else spends too much time figuring this out.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

