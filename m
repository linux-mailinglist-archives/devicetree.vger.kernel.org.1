Return-Path: <devicetree+bounces-222457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4C6BA94C0
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 15:15:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4B31B17BF1E
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 13:15:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 816551E5213;
	Mon, 29 Sep 2025 13:15:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com [209.85.221.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 078561A3167
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 13:15:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759151734; cv=none; b=j8Ot7HFuEW+sN3wqAX3D1C01js5iTG2rX8xj81xIPsUIkjzrWwZDfqNm2mAq4Ls5yGhByqNW75EgDb/u3eqAQ/ZJ79cS1DrWWL15BPKQPah52K+1jaCymTisYHq7OA1Moa9mzxF+ug737O/h6JV3zY5Ge6KGTDDCBPosp1Md9h0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759151734; c=relaxed/simple;
	bh=/CeoiIO4oEpN9VjHP8HfKiYF99Pkq0Nca8WusPYehew=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Yy4+jXn2qWOkKRSJcaEAJ/92lvaizW0K7tdZL/loLwHf/ve48SGKyRQngbWQEEDIqG7/dEwAk2vPxiYAgra5hP/Hf8iv1IK7i41pisMj0ZxVZANcibdhqB5yI0IDbN9/eEguhkQnnla6Pu+pCK8jdTv+CaQUJeebjOqBF5IJZQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f178.google.com with SMTP id 71dfb90a1353d-54aa30f4093so1783746e0c.3
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:15:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759151732; x=1759756532;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WGWKfU0acW/iaFNqPdL/2iourou2d7uCdc802/WdX5U=;
        b=VgBIEhybF1zf/dU4RJKJqG/sTrnAXRJdwe3eTz9ts0O7ELvUN7eO5O0i3QQ1qbkIIz
         9FVaVfObu0i0iDCgEw3KaECOFrQDSLVi47OH1L1mNMJwnZYvtWbfb1woeEkEXRhLGauc
         rzxKtewIcL9joS0Q27kGynSEcN6QzLV26yQ4T2VrE/MzhNOLRpVw4DY2benCUea0Ke5p
         HtE5hZ7aqGF/lz0S7k9OOEXJkT3otY3/DCICo64x6wz2lXgJ9NpyyfgFcpiY65PGp2fG
         nVF7a7DED2A3+IGw8gKgjws5xc0/+2VmsfjvGibUmFxPNpY+TJOVIJA2bJDw6R+NpoNQ
         3KXg==
X-Forwarded-Encrypted: i=1; AJvYcCXAZfPgJGenqGWPg6c8F7jOMJZHcsgTamw95Tqevo+BUh5MGTBHNp3LbiCH8QVfOZy8uYXW8hZ5CjFx@vger.kernel.org
X-Gm-Message-State: AOJu0YwOWX94Syb/0mDAzwIVG2tRnsI5iJkTHlGtOSgH1d31j8FiRoWF
	DKTpNlA9tLiKuTrWhelga1MeA5WDK3bcEevUxA3+i8pZOWz1iY1BaDEiHqlaekKi
X-Gm-Gg: ASbGncu2hLmp3qekIkOhqOLeR+H42uDtt3B/bTWfCf9rH+ThBBMIv3pfhe5aP9B76Fn
	Z3SuSTLLZGvfR0uraOTVLbOMwZJNLBohfo4dYq4JGgz+jhe+oxGZrtlMsm7VTTfNbCtMTud//vh
	7GMgDLXr1tHqHunbmMWIaGJK8M+5sv/aO6VyNhpiTQHQQRphn89WAUtR7NvjI7NZqVjLI1NGWgW
	KtrEO8EKyV3thxue0VdWH8C7DSaM/UGyGFYadfzY8/7ov9etIDceQdRuPsqvskmS1mfClRabQ1z
	SPvGD325nc+UdoxNy6zSft1B/DHS0pcbeRWc6RIRTzdaCW/PCkEpRR8qLbFtFt22tSf7OsIAGg1
	95M86FvOg2o47R5OseOJbkz6s1TXsr64WgkGCLkRZJF2hYt4m1Cj5+pY2M8tMrNBVEhMb6I3kYU
	hw5+PibalfMA==
X-Google-Smtp-Source: AGHT+IHE78QtuYlrllCIRbLmYV5oOW6C/u2ZF3f80vZd+DFVQbd9nDRAmcxEJaZOi/DT/rvmCu9bqA==
X-Received: by 2002:a05:6122:1699:b0:543:53df:f3c with SMTP id 71dfb90a1353d-54bea1bf9cemr5725892e0c.2.1759151731498;
        Mon, 29 Sep 2025 06:15:31 -0700 (PDT)
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com. [209.85.221.182])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-54bedc9ed00sm2220092e0c.17.2025.09.29.06.15.30
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 06:15:31 -0700 (PDT)
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-54bbc2a8586so1728438e0c.2
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:15:30 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWpfUWRyEpkvTyACfTa9jckAXohA2P9DWSzx7rfnsqD5LH/aQSS9EWf/28mScG4y3OLbZgP3BZUV5tP@vger.kernel.org
X-Received: by 2002:a05:6122:8c18:b0:54b:c83b:9299 with SMTP id
 71dfb90a1353d-54bea30052bmr6229796e0c.10.1759151730053; Mon, 29 Sep 2025
 06:15:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250925093941.8800-14-wsa+renesas@sang-engineering.com> <20250925093941.8800-17-wsa+renesas@sang-engineering.com>
In-Reply-To: <20250925093941.8800-17-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 29 Sep 2025 15:15:19 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXORD8pFRby+FQswFUSi8C5HVE=nAQq4U5iCgu74kkWFg@mail.gmail.com>
X-Gm-Features: AS18NWCWp0vwAjCqxkEVhkiKbracedhO7Drp3DSCL2VjLWHvrisv_m82-RlCmJY
Message-ID: <CAMuHMdXORD8pFRby+FQswFUSi8C5HVE=nAQq4U5iCgu74kkWFg@mail.gmail.com>
Subject: Re: [PATCH 03/12] arm64: dts: renesas: r8a77961: add SWDT node
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 25 Sept 2025 at 11:40, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
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

