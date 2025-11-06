Return-Path: <devicetree+bounces-235715-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 50202C3BC19
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 15:32:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B7B934F3F95
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 14:29:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB65E302CD1;
	Thu,  6 Nov 2025 14:29:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B4322A817
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 14:29:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762439355; cv=none; b=RMExtcG0ZJsqxJ4sSk95OBbrMqWhmwcpr/5zOUoE/Hiv3KtdYsGpSg2lvU2QMZGTMdlYOb3wTBHjT3eeOi6o8ccq+QBQ0p0fLTufzUCRI2pAmg68K3V/bLuZTE7mgIn8N8h0FEMjAJFYEKrcgn0O2FFLPMVqjj+Zl55U4E4ZbBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762439355; c=relaxed/simple;
	bh=NdOeY7lnDOPuK6VEus4jY0bG+2eiDkIJXg9ctj3EdoA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RzLRDtyhMv1GqJDwVZZBdLK1eU9dm1i/EyeBFZItbjSCd6IbltCagfU/B43zs1IKQjyEXGeOtktf3qVJYA17Nv6oK/khsRaARU6HcJ60gIWDwhZasCtrX5XV6l25pJoFmZa3BUNfJqDx57FlIp/YeUXNwwo9W9mXAWD8BVtQpak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-640d0ec9651so1486705a12.3
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 06:29:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762439351; x=1763044151;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t3Qbwr2Y/2kUNO17tUXtWv3yos6fo6dQ6sGg+S6eon0=;
        b=LnlQ47w3dKFTkRlcOWU4Ip4hFQO1AeF1IyHpUY9PdVditmTWCRqKNN7mER062WT1d+
         r3QY03my+OFGjvlb0Ftyk41Q9sbkbkpTGCJiQ6p+zIBc39Z6hmAgpYbGV5WNwOwPMHqa
         p8kzWfJ9/51XjUoAK2LR3yF0nEVHe6H7UxxZFENURhg/YorHQeADb+dAQaub9kAuhFbE
         +8CeDLa9qio2/msgauYJZI6eZTcVyZeXV7wauNfVd0fScoqUEheAPBb7G1aFvAOPkFlB
         QXYYIEh+zzivbZG24d2AJkZrLXwSNlCPd4z9vd5dellBUuggDrddTBqrcffPfZTWBFlw
         /Qig==
X-Forwarded-Encrypted: i=1; AJvYcCUkFZiMi+8l6jwsJ0TDwWc3+Q9+1gjsT7lGrbAa3w9/ohlGbWcQRmoJELflwoABDZ2ImMPKnmVbsOxK@vger.kernel.org
X-Gm-Message-State: AOJu0YzHxqD1X6zbVJNuB9y4R7ynfsW45kEqkqPKGiiie0BceQnowss6
	/s7mOUSb19Il65t979OymMgjyWR91NZ/gQEve7uNuAsg4ObmTL4OmmGcQxon1Gwdc7o=
X-Gm-Gg: ASbGncsPyT535dSsgOShrl3Thy4cl3OYvX7FXJnQ5UicOJaWx+zrSa9brWUqQJPBL/N
	DFPyl1TLsybN5/C8PZ5I34yj+eAQcPH8xHM5f4JatNTEnQ5TBivZkUfXMdV8h23gU275NhVStGD
	o+zYyrmb8re6cfRhGHl1cD6kjTnjq6nCahRde6H5AV9gjVpAq2Rndy4G+OFWmeasz2BiDnxfkXm
	gtTpZR8FaIwDzKS+AaH+wj7NwSAkVEJKq4B9zQk9WKPyYj8Gp7/kOO8FVOdVfUAjXMd941BLX5C
	7WCNvMnsOcPOfNK5986mv4QP7V8Q0rOtkoJVdH2Fn985aghh7Xr0Fs7asFuAqYp48KWXnFsBHqE
	Cx7Z4fsgUDf0uJmgrOJ5s+aOMDHlI71X44+bXGAccMsore0hK3sBkJmoE2EazlmUTIT74uY3gbs
	abmoKgRblUgk62oqCA0HFj7Q0Y8BQLc5BCRN/RyQ==
X-Google-Smtp-Source: AGHT+IHz/zZQCeKQEIMQKLBOZtzC0QFxY/7eoLhUxNMZVuVj/JEIvRRKc1w9+oDSbKWKtFd0SXGTqQ==
X-Received: by 2002:a05:6402:20c4:20b0:640:6650:9173 with SMTP id 4fb4d7f45d1cf-64105b8f272mr5523080a12.33.1762439350637;
        Thu, 06 Nov 2025 06:29:10 -0800 (PST)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com. [209.85.208.45])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6411f8578dfsm1945274a12.24.2025.11.06.06.29.05
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Nov 2025 06:29:07 -0800 (PST)
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-640d0ec9651so1486517a12.3
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 06:29:05 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV5EGAjeIG7tmHLbRQNYxmCI3zBh5C8Z7LdYS8tjOCGYOQGcUaAT8tR55MxWvfdQ9E31MYVo8wdNZW7@vger.kernel.org
X-Received: by 2002:a05:6402:304d:20b0:63b:ee76:3f7a with SMTP id
 4fb4d7f45d1cf-64105b6b3ecmr5978777a12.26.1762439345346; Thu, 06 Nov 2025
 06:29:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251105231815.1927239-1-niklas.soderlund+renesas@ragnatech.se> <20251105231815.1927239-3-niklas.soderlund+renesas@ragnatech.se>
In-Reply-To: <20251105231815.1927239-3-niklas.soderlund+renesas@ragnatech.se>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 6 Nov 2025 15:28:49 +0100
X-Gmail-Original-Message-ID: <CAMuHMdV0ydbmuQSi03Z+S-PDCfCniMEv8mJmyjTk+fow=psHoQ@mail.gmail.com>
X-Gm-Features: AWmQ_blCLPFn8r02Z5U7Y2OzAl3U_Qf6uQ1OKqEvZIhri73Mjip1xcYunGdvcMY
Message-ID: <CAMuHMdV0ydbmuQSi03Z+S-PDCfCniMEv8mJmyjTk+fow=psHoQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] clk: renesas: r8a779a0: Add 3dge module clock
To: =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 6 Nov 2025 at 00:18, Niklas S=C3=B6derlund
<niklas.soderlund+renesas@ragnatech.se> wrote:
> Describe the 3DGE module clock needed to operate the PowerVR GPU.
>
> Signed-off-by: Niklas S=C3=B6derlund <niklas.soderlund+renesas@ragnatech.=
se>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

