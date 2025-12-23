Return-Path: <devicetree+bounces-249124-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 955D9CD9646
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 14:01:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 17A803018973
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 13:01:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC09933A6F6;
	Tue, 23 Dec 2025 13:01:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com [209.85.221.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FC23314CB
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 13:01:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766494884; cv=none; b=Rxz+WMd5PMDwowSY4HBfCemcWsQ7NP6LHG/F5doSYxrxAY4HdTip8Chhl5go4F8fij5V3ElZ2mR5F3q/jiUb+fdTRhwctXRVitgm6F+PrMs6duy/Q0ykPh3dW3bgZPTfMoHGbNE+EFB4kehWRLRv47ufOth75YQ9hatSIVN/zvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766494884; c=relaxed/simple;
	bh=DmzV4xvNmIC3gGCWO3QodxFTHQ3XUO1suKUrpVXnwwQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=X53YLWh9UCaZbFgD6H10eyzkvsaa+MYK/VCgCvDTeZrKJuhJQ4W5TgFHwiDhyELU24Dq7yBuJ0/+pJuCabY4TQahC/9dfGkGKwyiKQ0zltvnjCVC/9y/RcUutlQQeKJD/RRWMcHXAVZsGMWfFaJ1ZX9jUap9wnnpfNeYyRy5nWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-5597a426807so3137515e0c.2
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 05:01:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766494881; x=1767099681;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IA6jZzQ+8S2knok6hUBAL8IKfKRQPJXwctwV+WsKFLQ=;
        b=XvIuoq32wfon/htRk0WktL0fIu/JgTFVWdy2MWAdg4xvmimCvyiVaJgknW95HacWK8
         xA1VDNxDS69VMkMq1oy8t8TcSdvAEJriWZV9eOYNHMmWZPqDUqcQxEE5bkmv40+ADq9W
         bN6sn9J4a2jl1pImhohxAKoZn5v+kRJAz3Zl5ZdeiPBdpsIICAscBFA900CvEakFT8lh
         zIOe8WYd7wEZlAbebHh8w02so2DN/mDGKCEHX4zBuULyFbYjCcFQRoSEdLV4zA7ZZ7Oa
         Awzk5buTxRzweGnV808j9uAK66vqdUupxyuVOC1sdvDQi5GQVWe3SpZ801sr3h1sLhwu
         FInQ==
X-Forwarded-Encrypted: i=1; AJvYcCUOrCPS78SSsWzCjS/wnd3yNcWF3Q16HuOgBNq3t+aiZuo0ETEf5AgYaLqCnigpTrqKrqgllSSgWJ+V@vger.kernel.org
X-Gm-Message-State: AOJu0YwHDRRWwoKDtR85gTk2tVjqKEzkwR5fTlYr0/eZPwsXGBDQAnA+
	aobNrdxwcbrJrsx9OirHy6U4aESfENYxWJUa6tmuepzXRKOR50qHrFmKRowlma3p
X-Gm-Gg: AY/fxX6JYrbGxLAvucC0CbjtTER4CZcYJIwCqa0kvBm4xoynZnG6KjrWHAiW9jd5T7K
	wHd8xJqkUYbIvd0V+HacWUV4ZEGx5neCyzxIg1QLZYViy7UhyclNFE6/acx6CdE2EAxWqMip5QB
	gLANXIngzQ2ChdN6S6+txtfs1aeTFl87t6QAb2MHLH7f8vecFFJGn2OdPa8nw8WSFW8q48+LaeJ
	+Bi4BrndYQDtCjuw2lTMUjLdhhAdmwRdCvp6clIIZMB+g8lhAxz6iJ2GlhI1A7agyy83aMt5aEY
	f+Aa2ON0e5b5Qm8dHKulxeWFyh+taeXreQQ8wfZ4nf1k6PotwnfLnEck/re5CkS1wVdj5KYXuxu
	c0O+MCKcdF7sUXjMrTJOleVvOZynDbid98bdplnIvxHDlNQIB5r3bbEAWbR/mvsxfqacBz9xhnh
	KB+7wYYAgFfwUo3ghK01sOCTMG6CSXKOKC7lUjRh4N7QjAx2ZjiOZfJYvpECSC8aI=
X-Google-Smtp-Source: AGHT+IEfZUef66tn8RaNK4EPfpwafoUnH+sGT3H7P6EDHdm9tBJGkqwfQR6TxuxqkFwOr+B8qwG1iA==
X-Received: by 2002:a05:6122:4087:b0:55f:c4a6:c584 with SMTP id 71dfb90a1353d-5615bcf3583mr5046146e0c.1.1766494881352;
        Tue, 23 Dec 2025 05:01:21 -0800 (PST)
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com. [209.85.221.179])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-9434168cb10sm3817905241.7.2025.12.23.05.01.20
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 05:01:20 -0800 (PST)
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-5598b58d816so3529125e0c.3
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 05:01:20 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVm05wQKfkSTKQCU0ESoNINm0CN8e8hsTrcwLdnyDqkBARcBp6fy+K1IVXImmpznWoWO6tWrEOk1f5K@vger.kernel.org
X-Received: by 2002:a05:6122:1d52:b0:559:3d91:5f2d with SMTP id
 71dfb90a1353d-5615bd867efmr4540600e0c.9.1766494879778; Tue, 23 Dec 2025
 05:01:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251215034715.3406-8-wsa+renesas@sang-engineering.com> <20251215034715.3406-14-wsa+renesas@sang-engineering.com>
In-Reply-To: <20251215034715.3406-14-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 23 Dec 2025 14:01:08 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVkTFWo5RdVq+H0PQOHs-7TO08V4YY-Vagoi96yawtPeg@mail.gmail.com>
X-Gm-Features: AQt7F2pjBBT6ay2L-6lkLl7oRDtUO3eq4pQP7jcPLoHRlos7jjrUGuT_P-wiI5M
Message-ID: <CAMuHMdVkTFWo5RdVq+H0PQOHs-7TO08V4YY-Vagoi96yawtPeg@mail.gmail.com>
Subject: Re: [PATCH 6/6] arm64: dts: renesas: r8a779h0: Add WWDT nodes
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 15 Dec 2025 at 04:50, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

