Return-Path: <devicetree+bounces-222465-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E1EB8BA94F4
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 15:20:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9BC0B17CCA6
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 13:20:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E4B730748D;
	Mon, 29 Sep 2025 13:20:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com [209.85.222.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209E72D47FF
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 13:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759152001; cv=none; b=li9LMdJW4GmhFnoFHZOFurECanY8YJpe5lb5FTXhuxyVhnEmOfbzmSOzKgVYYSibXJOpjHw3gy5n0B4KoKyMeEQ55AurwQUMlgg9T/U3x1Yil12lMdGIx0zO7z84P5m6Q5QgRICP15v5DxDQ0k1vGjiXlbxsxpJAeF6Go04Rgdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759152001; c=relaxed/simple;
	bh=vIo8G1dUkqGexyodFaJyBEisgmjuJNKw9KNh+swMCgY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=l4sXkshRnMxfnOwtGG27viWY5Jvix1+q6IKTjZ/Rp+1CCkWToYbAJScqBgucWrj+5UKMnEvsIRDIyM+dRz5cVRRdzdhgUFTP4pktopc+EtIACyzSi6xIiVIu5QqPWBBa1JE+BXvMws/KRJmwkIH7LRsvBcDIg6ICAgn2SZMHoJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f46.google.com with SMTP id a1e0cc1a2514c-8e3239afdf2so2785339241.1
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:19:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759151999; x=1759756799;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=23gbORvNsNd/bWBvceXGDRuebww3eQ8/sn5W2L2Ij0s=;
        b=l+hN+av647X5pb2p/1AClh+STUSMSWd/9r0b7AwCc9ZGlolge89P0VDr+ANueUyq01
         cwF4prG1JdMh46qvoMl1CdXWw4IGIfne5lKFqv2mZfI3SVLUioCeG2f7vi3VoK+yAOtU
         WBqtubVVGRLMfGQSFinpooQtd5EB7taXBZAYYgrUK5JpkMj2CG4Os4KXVh5m5qy4LK/T
         WJnTd5CWtIWPFVeFG+igtfznK5N+PwPegOi3hlsEKkuiWjeoPAOQLTD9fqYc5JNYpjWJ
         hr6zk3TyLbDwbGTt7S3dNbFlJyzRuWU+U0iW2mwmziodgvMe0szdf/qZ3KM9F62/lGkC
         ifMg==
X-Forwarded-Encrypted: i=1; AJvYcCWjCLRglbrS8kceu++tDIAtYmsJ0vR4Y0fSV+CrHQvbfmIRwgGB6DGS3uoqglEXuM0DYgK3QHsmyhGB@vger.kernel.org
X-Gm-Message-State: AOJu0Yynollbj1prO1sk8l/pLjDeG4NfWsmgmuOnFjY96I/d5HiOuDmd
	6XPxHx2f7wUgAEGHUaZ8YdMOgar0MpYmnsE6F5X9kW2UGnxP88AD1ENy1Dq4ef7X
X-Gm-Gg: ASbGncstroJ5ofw8Ja2+AXOo+CaAKa0fTgvrbxpxl/BfauLPI4tbnUSH1RqhUool/nD
	e4wVuBJdULfBa+pfgbGfa/e47Txot6gUP0wFvEePZNHwjvPEQqrh8Q0OmEn/om7xZUZeJ5qt/pq
	VdTJ0qgtahoKhne7UyQQP0SyhtkZfVezEhX2q4ie/OnE/M774lXpI5tTpxjkesGb0CtR7UQjl39
	jqD6j37uocov6C4hfmOt3udN6lIZ7z/wYPs68Oe2SoBl+AphnCPsfbsuR6DIL/4AaHohG0zMSZB
	8Q6JYStvU+BjpoONwk7538/ZvllkGTsjVjRiaFdMWV01xzh3AzfTwDDghJHNDL/0sdyqOVufSl0
	F4ltgb6s4o4ezlDG5v7goDIW9D4xvI8s4YZ2J4h7g0r2Qeo6TspL4l1lJ5GoRnRR6cM808GXY2C
	q405770g==
X-Google-Smtp-Source: AGHT+IFFskwQefUrpaNCgfZIIZH61nzqdCNBjf/zUxLbGzrEsFnDAKvp9B3uChpS1Mm3bbV53q+V0Q==
X-Received: by 2002:a05:6102:5488:b0:5a4:4f20:2ac9 with SMTP id ada2fe7eead31-5accd216a25mr7329058137.8.1759151998688;
        Mon, 29 Sep 2025 06:19:58 -0700 (PDT)
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com. [209.85.222.51])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-54bedc9f653sm2205063e0c.16.2025.09.29.06.19.58
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 06:19:58 -0700 (PDT)
Received: by mail-ua1-f51.google.com with SMTP id a1e0cc1a2514c-92cbfab6c0dso92552241.3
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:19:58 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUh5aksJcao5oj7yKXnDDv4IajzNeRENIm5WRP7baw8gcxyGOHvR13V/xpRf30J8I4V4+V5PgOW8ZeE@vger.kernel.org
X-Received: by 2002:a05:6102:c0a:b0:534:cfe0:f85b with SMTP id
 ada2fe7eead31-5acd4639aedmr7850547137.20.1759151997701; Mon, 29 Sep 2025
 06:19:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250925093941.8800-14-wsa+renesas@sang-engineering.com> <20250925093941.8800-25-wsa+renesas@sang-engineering.com>
In-Reply-To: <20250925093941.8800-25-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 29 Sep 2025 15:19:46 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVg90v7GtR-Na22F2AHbB77dNPAskcrMkZfcNn4KQciXA@mail.gmail.com>
X-Gm-Features: AS18NWDouu3Mlu91mJ6p4ux5ma0dgCGP3C3S3u0Q2HXWXPDY1GzrC0vYCXYV9HA
Message-ID: <CAMuHMdVg90v7GtR-Na22F2AHbB77dNPAskcrMkZfcNn4KQciXA@mail.gmail.com>
Subject: Re: [PATCH 11/12] arm64: dts: renesas: ebisu: mark SWDT as reserved
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 25 Sept 2025 at 11:40, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> This watchdog can't be used with Linux because the firmware needs it on
> Ebisu boards. Sadly, it doesn't mark the node as reserved, so this is
> added manually here.
>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

