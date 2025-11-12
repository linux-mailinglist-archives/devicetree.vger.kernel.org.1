Return-Path: <devicetree+bounces-237744-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id CDAF4C53807
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 17:47:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6944C348650
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 16:31:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8BDB288505;
	Wed, 12 Nov 2025 16:31:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DCDD238C1B
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 16:31:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762965115; cv=none; b=Wp98FRnpyZgJ9som9m+ZvcPxTAbtWRaNfJHApupEybZKHx8xfwpNgZvAlJGZdt2UyaiRBPZclN4a2WFsKAbeiBXCwggOFUoPZY1Z3pHylTzVcaFJw2HR1IVancGvUmxsvRiNfgFtnoSUixO6WG12/2EaEN6wKYWvPj0scuuGStU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762965115; c=relaxed/simple;
	bh=KKsAI3szX8k5QGcaHEIBxzjAglk5W7KKlVx8cmhmNBE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=C5M84B64XNnDMZmW8tdeHIYp3EowtHrg2wAhaHjcdQUFoHTIsWMnmn5k/UuZmNFVASwl1Jm7aRM9sPvJkd5pSXLVxyxhUSvA9l8Y1J5gNcXk1SDo3H1lMrB+od/IDOJmiVlRKqqkfJJHYfX66LSssVb+fFdvLx8vUGZnwh8uC8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.167.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f178.google.com with SMTP id 5614622812f47-4501b097976so511054b6e.0
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 08:31:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762965103; x=1763569903;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2P6mD4EHSxM2KeefnQnSLrX2dBEn9VutMK08a+7oUBg=;
        b=C4Xv+MzcM29HfwJHfHxzuVZC9ZQ8Xe82NRwHKCeGOCIQYDsV7OUMYPHKXj7Cu1vJ/f
         OEBT6WZiCnIGGAgEuavQRPrcKRPGf3Qtd5hz8v3OktpMzB7mA2lDIfBnj9BJ0uSMxptO
         rryBXMtf/PlFBpzHeWb7g8aG5bw/tgO9WybSl/n+fYe38/hsHTIteAj6gQ0M06ONGeBy
         x2v/imuhLmILCO4h79/Ep5aTfddQIO/o+fUSY+Uc79tg80m4L3YFwGvCRe14AASgzB+6
         1eztePmMrH2Ag0DWG+qvCLGJaWwZYBV/Ft5e76mRxZW6o17Zy/lZ9RMU8iHi/olYAGJx
         QHAg==
X-Forwarded-Encrypted: i=1; AJvYcCVXXLpbK+pyyYLfLYLmOk2K3KPnw9OMybWxjGrVW8iwFzKvm6QMGrXr4nLlzPZnunA8iro6ptqrbO3b@vger.kernel.org
X-Gm-Message-State: AOJu0Yzp7Opfu8PRxY6sjfZMdjw4oV0Pfpi3i0unK1WFIF07vDp9fxFU
	K6e1WgMdSMbzS0afhPEDHF++y5wzZy9DSgnStw4uOdRBoealFfe40C9vRjShqjfF
X-Gm-Gg: ASbGnctlmO/qTFt6Pe8Oaxq5vlOHzcYsAE/3EqiAxbIbxCVUPDqLk7M69uZB61dw9k2
	VOLcXv+pLdwdKa7NuO5EHpSnQzjHEe2gqiCM0F7v1hDiSNTT/fSF+aueDgpA+SImGUhfRm2vvxj
	317bJCyAIM2phlnuojVfLbXFAFseTxmmVZrjBbgna9GPWHoYKddHyMzXsYayi/d9es7h19aBaIi
	wCKqBeyx/PPZW3trqopnlMzERh508QwIZ0Ar6OFKDyvRuVr8eaZwmuf+fIZfVbfq5fkOCasXTZR
	kyBOlsfqaVEgNSlPXxE6//cz5ecaSSPQTbW9ldMTjGZRLwxEDAQfAE5Iqml8eEM0FST9r4NV7ol
	lCIOsWONneBudsqghAX/GCfJwBxBOp2sJ7pXuNSuXVfQCLycVtlWqjvG5w6QYuJV3NiLk5HMSEr
	d/+gJjball3yCoAVMSts1jcqaJ+05Sqr74tkPHY98PqQ==
X-Google-Smtp-Source: AGHT+IFH8bhwTBajEXL37zGNzkALDNqMPkahCm/nZDSNSazis6PSLc2cwZfihOhvGBsYXu9vAwg/uw==
X-Received: by 2002:a05:6808:4fe5:b0:44f:7562:1a73 with SMTP id 5614622812f47-45074583954mr1975863b6e.35.1762965103059;
        Wed, 12 Nov 2025 08:31:43 -0800 (PST)
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com. [209.85.167.179])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-45002798bdasm8297162b6e.17.2025.11.12.08.31.42
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Nov 2025 08:31:42 -0800 (PST)
Received: by mail-oi1-f179.google.com with SMTP id 5614622812f47-450154aa53fso484431b6e.2
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 08:31:42 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU2pf1zzUE6/gjBYOjP5e8br+DLsPsbgJxFE5Doe5SRWgoj6KfiYajorStLlYkg0miWYJACxBoX8nH9@vger.kernel.org
X-Received: by 2002:a05:6102:4424:b0:5db:cba0:93a with SMTP id
 ada2fe7eead31-5de07e5dd3emr862566137.35.1762964749487; Wed, 12 Nov 2025
 08:25:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251112143520.233870-1-yuntao.wang@linux.dev> <20251112143520.233870-2-yuntao.wang@linux.dev>
In-Reply-To: <20251112143520.233870-2-yuntao.wang@linux.dev>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 12 Nov 2025 17:25:37 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUOXjMOxOn5oU1jftAVKk6b+8LN-72H5tAqaAyvysxhLQ@mail.gmail.com>
X-Gm-Features: AWmQ_bnXVpA5sSxuV8McK_e1ZHyzSr-EJLVA6EUpZKT19Uyy9uwBtuUtu1ias6k
Message-ID: <CAMuHMdUOXjMOxOn5oU1jftAVKk6b+8LN-72H5tAqaAyvysxhLQ@mail.gmail.com>
Subject: Re: [PATCH 01/10] of/fdt: Introduce dt_root_addr_size_cells() and dt_root_addr_size_bytes()
To: Yuntao Wang <yuntao.wang@linux.dev>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, AKASHI Takahiro <takahiro.akashi@linaro.org>, 
	James Morse <james.morse@arm.com>, Chen Zhou <chenzhou10@huawei.com>, Baoquan He <bhe@redhat.com>, 
	Zhen Lei <thunder.leizhen@huawei.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Changyuan Lyu <changyuanl@google.com>, Alexander Graf <graf@amazon.com>, 
	"Mike Rapoport (Microsoft)" <rppt@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 12 Nov 2025 at 15:37, Yuntao Wang <yuntao.wang@linux.dev> wrote:
> Currently, many places use the result of the expression
> `(dt_root_addr_cells + dt_root_size_cells) * sizeof(__be32)` for various
> checks.
>
> To improve code maintainability and reduce the chance of errors, extract
> this expression into two helper functions.
>
> Signed-off-by: Yuntao Wang <yuntao.wang@linux.dev>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

