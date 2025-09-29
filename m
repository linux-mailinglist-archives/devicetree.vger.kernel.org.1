Return-Path: <devicetree+bounces-222463-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E70BA94E8
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 15:19:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F0AFD3AC253
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 13:19:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAF55301474;
	Mon, 29 Sep 2025 13:19:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com [209.85.221.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCA6306D40
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 13:19:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759151941; cv=none; b=czl9q6dzozc0aYEUGRvOhsZ1iutwje67g37PR9zaUcQWYXNLdQaLUhewfQ+QQ+sOCP8EwVqn3bxqiDheVxvpYDaZRBmsn/C3qaDGFFI4z0kVDv1hoyL9ZUdnoyx5b0kZHe6a5QSsYP5y1DGifOMMRiZerTBMLTBFJ2lE7MLpmAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759151941; c=relaxed/simple;
	bh=XI4WQm7gGIFXaYh8DfxF/b4f0tVnA8IxTMlZYokkIMs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uTeV6WP8r7380WWuckK27gG8C6HLBYzfGFLVKBdZseKm0STS4M+AKHk8+T+GRMkpv3UApvnORf2bFenH6fAr0YTr4L/BluGnZFOLw32MxbhvquqzdBsP3Y7yHaeGNNOEdjUCD4vK0EKFdfKMI0MJv+yuKWlti9pnZfAbYPRXDY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-54b27d51ef7so768538e0c.1
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:19:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759151939; x=1759756739;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VdSWk2OXDxNVG2w+TrLN0xqawGUa3pPEMijCIv9j0o4=;
        b=DslNaS4ujjbtDXUAtWbmsOP4LS8a2Lx9jrGsgRqXTKPn0OCbxWGKROhJLBolJiILUS
         8PxE5F7f1Jdwc8pJova4C0DbYAmVzeh9eek7wPNwlbdarcm2E0bpZPMixl239WSqQqK8
         AW4uvPdEn9DI4UkO3pRNmqv0NXy3lKAIK2HE6LPdYMQutseNxrmx3jcf+0+ybL/2SusF
         IOTKU/O3EL5ygnal+olB5SGe3B8zq9Z/701ANmbgoGXGReICCHBXrRA5IIbr31zaBSlm
         QDad08N9mgUIvVKdOTnMZhwT3R/GLGXqZhYn55EAHlQGOz1WKXs0H+aqfVwZTwcsnLVC
         N1Yw==
X-Forwarded-Encrypted: i=1; AJvYcCUJti+8A1YeCG/iLkJs32sx9M3CF1KqpvOPPidn946+LjJxAByLXlgnjZbtIL2g3xYzu7ZKLrrtAdaq@vger.kernel.org
X-Gm-Message-State: AOJu0YyhDZb4a1Bch4xZ1Wkr2aHBpCakEE//E8YALvNvD/JXEnHA81Mx
	LxgU1H5zcbjNlXP2epWlg6I/MiCYxHdN+LI9FuFHa7N47wk3gSaQwcbmcmzrbpK+
X-Gm-Gg: ASbGncsr7OKHRZDoH+W5b/B8uki0JjO1rOU6+8i8ybqqu9cXn6Q+LMINO5p4NFZN7De
	SQm44+Qjy0EOPhusjIhUV7FvfLwRYmhCxR2xa/1tMbSdeSlvHL6L0BZDG1udD7qbvWNPccq1W/A
	8BymdskHu7B2Q3bswmTUDbJqI/F2SE71RXwzTEyiTnATKZQ0QYuh3JIFp9pBwobqDem9cngh0O8
	BIdxPw/SAdpEQ6Tmq9GRthHhe/dQwVI9CJ0v8UCNkMB2KmblYmRQkc1HEJ/TDw3P1xQDTPDuEhM
	6aBtHWvMQ/0fKl19RJ6IpWY6ssbORCJJLkIkxMbC691AQUHRXMzc+cWHN/5z7boMBGofG1fs4p3
	etQiaB9ipdVoZ7nGy1ppylJGKspz1Qwr85U5J8xZ5Wb40QCCklvMJEatWTtyv73RA
X-Google-Smtp-Source: AGHT+IHeGce6LumEITJnixvA7sREic1DBIm8MFKGQVkU35r45KqdNQd/wX9F3HLgcqog7qWaL29/Mg==
X-Received: by 2002:a05:6122:3126:b0:54a:9e47:7624 with SMTP id 71dfb90a1353d-54bea253b8dmr6736486e0c.14.1759151938840;
        Mon, 29 Sep 2025 06:18:58 -0700 (PDT)
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com. [209.85.221.179])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-54beddbc629sm2210622e0c.24.2025.09.29.06.18.58
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 06:18:58 -0700 (PDT)
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-54a86cc950dso729181e0c.2
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:18:58 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVGAZ02Owsv0nSD2n0QpYZn8hbbt3gcDzFLkOovbOCh2ERVtOofSsBQbKjqNc4NEvdX+htPBMmL20tv@vger.kernel.org
X-Received: by 2002:a05:6122:1826:b0:54c:45bf:f46a with SMTP id
 71dfb90a1353d-54c45bff790mr2168126e0c.5.1759151937696; Mon, 29 Sep 2025
 06:18:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250925093941.8800-14-wsa+renesas@sang-engineering.com> <20250925093941.8800-23-wsa+renesas@sang-engineering.com>
In-Reply-To: <20250925093941.8800-23-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 29 Sep 2025 15:18:46 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWeWJyp9-_6ERhwmr95kP+NTc7FH91qpdkMMPM_ih3G4Q@mail.gmail.com>
X-Gm-Features: AS18NWD05VYP9c8qfs8ZvDaGbSCzI_X3AZpykIxSu7kdJsi-zLRmU6CPupP8k5U
Message-ID: <CAMuHMdWeWJyp9-_6ERhwmr95kP+NTc7FH91qpdkMMPM_ih3G4Q@mail.gmail.com>
Subject: Re: [PATCH 09/12] arm64: dts: renesas: ulcb: mark SWDT as reserved
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 25 Sept 2025 at 11:40, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> This watchdog can't be used with Linux because the firmware needs it on
> ULCB boards. Sadly, it doesn't mark the node as reserved, so this is
> added manually here.
>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

My
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
on the RFC is still valid, will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

