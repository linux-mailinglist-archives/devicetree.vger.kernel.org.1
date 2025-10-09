Return-Path: <devicetree+bounces-224978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 680ECBC95D8
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 15:48:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 0B93B34E8FC
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 13:48:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4826B2E9737;
	Thu,  9 Oct 2025 13:48:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com [209.85.222.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 747F42C21E7
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 13:48:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760017702; cv=none; b=GXst6yy0oVa6i2GGANpDAjEHf0L9QLhGezkMcrSPRBrJUbC3On/+uvIRYDATSE0+IjsiG7P+JzB+iUFGcxq5sR/YktFE6oHpq+Rid20HmCabADV35Hi3S0bC4xQW3BIPuQsCFigLxYlX+mm2Oqwk4YJs61D8j6KPhETLg4ciE24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760017702; c=relaxed/simple;
	bh=JjQpoyc0JbwG+FEvkuaWThczaXfrHcuUfCyMSt2Iwi4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=H1gnsI4XCHlyt/v43HxIgO0b9ozcu7P5ZVMxkUsTPb5QBCQS5I0TuriJQCFwk820DDPYMAnXGrNqdGTTWBrWJpv0dcpFWPaCRzoFojNGWkGji5eqN+76vpf1hsDxh23YAZW5JxE5c3qnayKmaxzytKvuIsaFWCL0xhtartGVamA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f41.google.com with SMTP id a1e0cc1a2514c-904d71faab6so737297241.1
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 06:48:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760017699; x=1760622499;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i8nqM9b1HtBdmvYyNLXKVVMOUuh6yunOxpZ3Ex1Hy4k=;
        b=irim13ZddXXNVrrBJvk5tAle18wjWzPTSMHpaQyWWMkoXXSiu7TDk/MZlJJ9jjxHDO
         l7eU1uJC2t6OB8YWFULXeQXRCb1cjaxLltc0ZMvr7GYQSTAG1aUI3raPItVuZf+u7mDV
         iCZVwXbbPdbJFV3cu/k4CVifSPKNzpnL8nBLgo+D798EtEQrRSNgnGnbGvTEeAzXH4Fy
         T9SdRTY6xW5+ttQapniZ1LICkST6rac20ytVYsLykQC3EqgYscAgJIv2z5roOhKFs/uu
         5mFzCBPs9/KD1OYtQsg0DKar/FYYV14C0qwQ5XeLgzraJukWPlcA3sxOQZHgzt2TdIF2
         d+Fg==
X-Forwarded-Encrypted: i=1; AJvYcCU/41hDPLp2EQFTVuwvTsMlZDdGKRDzyt/CbHT8Y/RiTj8y7iPO7x8gjEmvWUXRM727K7QadVDbt+ob@vger.kernel.org
X-Gm-Message-State: AOJu0YyzW0BUOtE6hMevQsenNrynPnlHWXuAQCXy8EX0jS6mGvJF23vF
	3tV4wtk+rqkX2fHeqMkHAkJKgJONUbVINgAG1Sa0VLsFFWsU7Flg9JRB9blgIRAW
X-Gm-Gg: ASbGncvXUoizpY0IzZ7T1AKpyJSTe27vH9hsl7ky1T1y0/iE62rVZ/Vr9mmB/nWD7ng
	zRyXjDLcEv3lqqmaV4d6ef1bUVkhss7oHJLLWHjP2gMf1rW0GgOMcQ11IONTsKAO3e93bFgAOxC
	/I/wOxHcvjZrhuuhEkgXQs5uRULwHpYcZ0K4SW3hqWeKFR9fu/sMgZRmB8G8LHSFmZrYpbHgm5m
	dBzsmPWvThKdeVs7ygNICw+aJg+J4UVcU6mf4Yq88nVzNFuFuK1jcKZ6h4GWCbKCnOnx+L4sYou
	Gzotu+DFqW1G0Zxn8Hj2iK5DC50Jm1WB4UpmKtaTKqpJUGYm4cBvazAllVSnUTIb1U4o33R1LEy
	zj0LXK1fHBCWJae9UZBUsukIPjxWNJ1h1xMcS/n2DFU4Cuey2OpHalVl2LxtOCcdqTGPZHNIFJt
	Wcl7Y7RgUN
X-Google-Smtp-Source: AGHT+IG/ziRlQykuk6928+IUWN5mm31070nNUmE9Du6uK6VaQSEa9QUsYqbYT8L8h9iOeSqODwHTcQ==
X-Received: by 2002:a05:6102:dcc:b0:59e:2c90:fae2 with SMTP id ada2fe7eead31-5d5e237cd54mr3493377137.30.1760017699056;
        Thu, 09 Oct 2025 06:48:19 -0700 (PDT)
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com. [209.85.217.41])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5d5d39d180bsm2390257137.13.2025.10.09.06.48.17
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 06:48:17 -0700 (PDT)
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-5d28f9b4c8cso254918137.2
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 06:48:17 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXGS1RkNfrNVcmvmZVd4R/MisJMbMSP+Sx7lnG4CFVYHCbnZIuL4lLYCoQWEG/7L5cQl0ABGB+6W98x@vger.kernel.org
X-Received: by 2002:a05:6102:418a:b0:520:dbc0:6ac4 with SMTP id
 ada2fe7eead31-5d5e21d04b4mr3948255137.2.1760017697372; Thu, 09 Oct 2025
 06:48:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251001212709.579080-1-tommaso.merciai.xr@bp.renesas.com> <20251001212709.579080-9-tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <20251001212709.579080-9-tommaso.merciai.xr@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 9 Oct 2025 15:48:06 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUHe7KWiUiLLTYpn2xhq9B-xUoZ6pdnTst0NTMMwuKoow@mail.gmail.com>
X-Gm-Features: AS18NWDDR7-ixkdtwTI6rYs3jroTCBn6LCN-Tix-imcePNZM2CXum5UmVX7CU2c
Message-ID: <CAMuHMdUHe7KWiUiLLTYpn2xhq9B-xUoZ6pdnTst0NTMMwuKoow@mail.gmail.com>
Subject: Re: [PATCH 08/18] dt-bindings: clock: renesas,r9a09g047-cpg: Add USB2
 PHY core clocks
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: tomm.merciai@gmail.com, linux-renesas-soc@vger.kernel.org, 
	biju.das.jz@bp.renesas.com, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 1 Oct 2025 at 23:28, Tommaso Merciai
<tommaso.merciai.xr@bp.renesas.com> wrote:
> Add definitions for USB2 PHY core clocks in the R9A09G047 CPG DT
> bindings header file.
>
> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in a branch shared by renesas-clk and renesas-dts.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

