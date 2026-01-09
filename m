Return-Path: <devicetree+bounces-253334-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 72937D0AE45
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 16:28:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 740393116801
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 15:23:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2511E2F1FD9;
	Fri,  9 Jan 2026 15:23:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCD9B26D4F7
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 15:23:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767972186; cv=none; b=Wz0UqXgtTmh7Zp0DMf1BOL+xEwYce9rmRYLqIfg65R6GlNyrwN0VUvgafZhssAYYyn1R1jHNVnf+x2ZxBvUHo+9lzyONVeySh6AsQ8MAIEwd3wkAPiSk8TjmGuBJRGbh2U9HBNRvYSbAWN+R7l1+pfYHXHXGm+VDJP3tcUmFKko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767972186; c=relaxed/simple;
	bh=w+jdZUVVwjV+PWegTFQC8k6OIH6RStJrT4z0XZT8ub4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Uoc1PSoZlVefmBMJ1wCiV+BWooCbJrSSGdCXFl5f8UrYVcJO1KKY0FYLXvLgwUDLgq2B/TE7Ffcvr5Xtudp/6EdFyXhm/jVeDDCF/Le9fpTGxjVcfPLm0O8hTm3Rt2GfQZJPZ8IT3F0/Uz0e++qMxBR4LuQHHNIMlJtiup5v9n4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f49.google.com with SMTP id ada2fe7eead31-5eeaae0289bso867674137.2
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 07:23:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767972184; x=1768576984;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3Yk9dSVnKNdMvFrF2qz2ohn6VtZ07d1DNjC5g6zs10A=;
        b=SKl1y4VlTOibLJpTsFDH6oQ/OHwd9INS+LPBYYjVeLrqk6pOCmqqGdCANbw/fV0oOm
         CbBg8BeYuy+ztFQtgZjEfL/CZCiDY9Ziqd4tVs1Ld9bYxYaejkvsdUBvy2VxqPCEh0kQ
         L09/ulx1GFxJTTFBZDJKud2VnPTb8fuJMwdHIOPqEpeNXGrOARRzmX7kp1SkVA7IGeso
         mhINaH55QGYpFvAY9nRxJITeT868YexF5ISNg9vLdV3YWhmWIeeVr/D3ZtF6p8OZg4F/
         B6OLpnMaWUv6E5mQ5F1sOopcpec8Ulunt67zBnVw909yKaONfE63b/DisdNnGtatiLlk
         Wf3w==
X-Forwarded-Encrypted: i=1; AJvYcCXNo+xnJit7YMc8LBa+gl4Wuj3uAQFJRYZ3ddkCcwVAiTVO7CzqLPDSArN4nWL27unR6YuijqUk7C0G@vger.kernel.org
X-Gm-Message-State: AOJu0YwLRR8geRnvZgkoT5wFA/Ej1f/BXgCStcxCwo2rwEx/f2Ilx3qI
	6I9M2yEBXi7BYWPcAxk8g84UkpyoMAur778ZDV8m3B4Y5IoS4t9F9ekeDiLtNoC3
X-Gm-Gg: AY/fxX5wpScuSF8sAreXLEApcP0AnjHPbYYklAgRXs+b7Pvlc65K0CDQll2lN0tk8T2
	KiITvI5zOSYKorze/lKPDKxaMkF0SkhasqjgS+yEiJzkY8HSoO7YMsE89HDycb0/iUUEDiQmGpn
	+ehsmmEAI2D8MP7cO/Q1zLM+CUPUFOsStov1majBRUJh8BrLdUMV76L+glI7em9tIrVCrlol4io
	HcYRQv355dM0eT7YiUQMt7sHs51kAyP3CUQyTjU34jaeurwjz1QUBIMNZuBEh/Ek5iXVzlHr4gt
	FM+fBaqLkra6QXu6LsnlguDGGqOl23jiDSG8Y4Crqnt1D21HrcZK1P7TppMrHza7DTK8BwbhygH
	0S/tXcIJfUEKV2yCAdVeH6PMxY1Fq5jIYU6pdsF4/+g/396TWjxwz+ftCSEWSzttRxnexZkqs5O
	s4XxHYm1cZA3nx1vq6MDz0INu38bF5MwI0000MQPdGjMo1IhYtNWAcQtAWScw=
X-Google-Smtp-Source: AGHT+IHn5GtlDldzYQzSDDBaAwvzskdrRecBz+8l7p+IXj3yH9mT5opuxvZ2aAV2jUsxolmO9EC6sA==
X-Received: by 2002:a05:6102:162a:b0:5ee:a76a:8513 with SMTP id ada2fe7eead31-5eea76a8724mr2240657137.33.1767972183549;
        Fri, 09 Jan 2026 07:23:03 -0800 (PST)
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com. [209.85.222.48])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-944122ae554sm9166378241.2.2026.01.09.07.23.03
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jan 2026 07:23:03 -0800 (PST)
Received: by mail-ua1-f48.google.com with SMTP id a1e0cc1a2514c-93f500ee7b8so2105883241.3
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 07:23:03 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUe0tUxZ52QgGGDkUQzgCgjHBqJzCwut4jAvHdrBJlZkwv1KZsyg+kghYU81DObdNKzfD8DNxPk8tO+@vger.kernel.org
X-Received: by 2002:a05:6102:509f:b0:5ef:a8da:8b26 with SMTP id
 ada2fe7eead31-5efa8da8bfdmr108598137.27.1767972182710; Fri, 09 Jan 2026
 07:23:02 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251223152358.152533-3-krzysztof.kozlowski@oss.qualcomm.com> <20251223152358.152533-4-krzysztof.kozlowski@oss.qualcomm.com>
In-Reply-To: <20251223152358.152533-4-krzysztof.kozlowski@oss.qualcomm.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 9 Jan 2026 16:22:51 +0100
X-Gmail-Original-Message-ID: <CAMuHMdV8juJgq6jX-ESXvBSPTKNx2mq2WrGgVwpr1Bq-c7D7oQ@mail.gmail.com>
X-Gm-Features: AZwV_QicpQ7GT1hCJKQZF9H0_G4o3xzdCzGbwbgl5SK7llEp_u0_daC0SmeUxmA
Message-ID: <CAMuHMdV8juJgq6jX-ESXvBSPTKNx2mq2WrGgVwpr1Bq-c7D7oQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: renesas: Use lowercase hex
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 23 Dec 2025 at 16:24, Krzysztof Kozlowski
<krzysztof.kozlowski@oss.qualcomm.com> wrote:
> The DTS code coding style expects lowercase hex for values and unit
> addresses.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

