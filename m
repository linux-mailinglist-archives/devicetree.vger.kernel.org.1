Return-Path: <devicetree+bounces-64771-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 431228BAD7A
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 15:19:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 87F4FB22395
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 13:19:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69E47154C16;
	Fri,  3 May 2024 13:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Bx6WWJ8q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3E9F154BF8
	for <devicetree@vger.kernel.org>; Fri,  3 May 2024 13:15:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714742133; cv=none; b=DcnCfin6Oy0CNk9++kR0huv4Du+7h8abPy4JvQX10+xCuy0UWVp+0m8fjARh0KZOakSIeq/BtE1i05ZPNAs6fV536qE18L5BriAgpyRSa7ilAagHqVOkg0+r55jYBLr15vxU9FqlASlvYVwEvTw4i7NJ5mLM4Zq7jQn2fEFv2yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714742133; c=relaxed/simple;
	bh=nJ+FiEP00RrtPRa8uswJfiMy2zzb9NIscqnw+JbmrlE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=u/DzG2vj8vRNa2DsL2jWSk57TmjpJ4ym/qplLH7dk4XUADQo9lageTUuAfu9WC24R4d9pAYAKXOkjBV7Pwbhel9PuN/RBhKOXbfHRc4sw9wwJPUdqjgH+yMwvMhoMGjq2pAOxigDZctBnjutjcIhp7MsIiWFhCaaS1FTxdmP3cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Bx6WWJ8q; arc=none smtp.client-ip=209.85.219.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-de596c078c2so9142167276.0
        for <devicetree@vger.kernel.org>; Fri, 03 May 2024 06:15:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714742131; x=1715346931; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Bz627HBjMOmmynWa0zBG+92oc4pA2ou1WBH5AOlZFK8=;
        b=Bx6WWJ8qiPazUlp8r1gkkyCLZa9f5OkTzjOIqttSst6zQZrPv50T1KhDTmnL8MNTQr
         cgPm/gkLVU5/KH3DqDXag8VGgXHWxjYPRyIEYvXv7t045Uv0zHnmVSNHclJHIe9PP7Kn
         kmblALCI+aFYUXuGROLqsNJ1qk5jSjGS91V/FXY6Ab1JqQ5YAPgHKR842sgZmI7paRxx
         IqrGolnbzOeLUF9hXvCLG0Mz4FXLe3BfePUWziJSq2KPgizc5MpEilaiX1eRot1jdBom
         XNQJTWFVOxNSMM5e8dLStGvi80mntT2tDUCsq1I51h//Y0v0hzdA2yW2jpe+P6ZHwKeU
         5QKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714742131; x=1715346931;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Bz627HBjMOmmynWa0zBG+92oc4pA2ou1WBH5AOlZFK8=;
        b=XFYEsmO2AFBNstN0uBp7anl5djNXwDJ4xbkRziMbouEze9kJYCFDq8fvEx5BkzRow2
         uynIXA8O0pQaU2OB7hZPeAgdbeJdNp6ui8Zc5dk/5vv0Fr3CPXGIxPZTwVGDu8DxcN4F
         XmALB7T3gEHWNjZgdDDKvZf9Ddip7i+ZKBtZzdgIiNLSvIH+XkXFikpdcGxpuKy8XGGf
         yPPGMX56p6x6TYGmQE2NtysgfcBMckJhyHl6SnztpOmmf0OcXyfTFhVv0pSlpuulrmBs
         CgZLiqo9cRVAjOfI1pMxcqzNN2DoSXvUY/wu9NKLJSVSpy63w2IpQUpDjFonYEQ/eF7Z
         hy9g==
X-Forwarded-Encrypted: i=1; AJvYcCV6cEdvuL0Q9QW46RN662ZN5ScNfd3NrJXmESsd2Q5WMujDFeVMo4p3Wc26/cHf0XCB301dNh9wr/m7IDBq9gHtsFQ7yFGg647uHg==
X-Gm-Message-State: AOJu0YyuLMTkAsQXeHitj77o7x/HLyrbiaNxMAglkT4NO4Q27xj8yAZv
	UrW+DDCAVxkTKiAVEN3NHSoPjJodjM3cCGPruihYeUPUnL0sh2wV9rmkOhgKjHoeenrtAKH2+pE
	zlxRX07ANGAwvTqffnxM2TdmZB03xuGtB/ClSkw==
X-Google-Smtp-Source: AGHT+IGffsIdpZF6BPv9Of+hyi7vyRpyRz79bbW9RmMLTofCsWiZmPRZRs0kpQ7Tcy7txTp5OlV1qfabQJWeVMOx5Es=
X-Received: by 2002:a25:abc3:0:b0:dcf:3ef5:4d30 with SMTP id
 v61-20020a25abc3000000b00dcf3ef54d30mr2869989ybi.17.1714742130823; Fri, 03
 May 2024 06:15:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240430145937.133643-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20240430145937.133643-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 3 May 2024 15:14:55 +0200
Message-ID: <CAPDyKFpRjoVdyXh275YR3f4oOFR7MY49_JNzZ2nvrmSMYokRkA@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] Update compat strings for SD/MMC nodes on RZ/{G2L
 (family), G3S, V2M} SoCs
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 30 Apr 2024 at 17:00, Prabhakar <prabhakar.csengg@gmail.com> wrote:
>
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Hi All,
>
> - RZ/G2UL and RZ/Five ("r9a07g043")
> - RZ/G2L(C) ("r9a07g044")
> - RZ/V2L ("r9a07g054")
> - RZ/G3S ("r9a08g045")
> - RZ/V2M ("r9a09g011")
>
> The SD/MMC Interface in the above listed SoCs is not identical to that of
> R-Car Gen3. These SoCs have HS400 disabled and use fixed address mode.
> Therefore, we need to apply fixed_addr_mode and hs400_disabled quirks.
> 'renesas,rzg2l-sdhi' is introduced as a generic compatible string for the
> above SoCs where fixed_addr_mode and hs400_disabled quirks will be applied.
>
> v2->v3
> - Dropped items keyword
> - Sorted strings alphabetically
> - Collected Ack and RB tags
>
> v1->v2
> - Updated commit messages for patch #1 and #2
> - Dropped SoC DTSI changes as its a hard dependency
> - Grouped single const value items into an enum list.
> - For backward compatibility retained RZ/V2M compat string
>
> v1: https://patchwork.kernel.org/project/linux-renesas-soc/cover/20240422213006.505576-1-prabhakar.mahadev-lad.rj@bp.renesas.com/
>
> Cheers,
> Prabhakar
>
> Lad Prabhakar (3):
>   dt-bindings: mmc: renesas,sdhi: Group single const value items into an
>     enum list
>   dt-bindings: mmc: renesas,sdhi: Document RZ/G2L family compatibility
>   mmc: renesas_sdhi: Add compatible string for RZ/G2L family, RZ/G3S,
>     and RZ/V2M SoCs
>
>  .../devicetree/bindings/mmc/renesas,sdhi.yaml | 39 ++++++++-----------
>  drivers/mmc/host/renesas_sdhi_internal_dmac.c |  9 +++--
>  2 files changed, 21 insertions(+), 27 deletions(-)
>
> --
> 2.34.1
>

The series applied for next, thanks!

Kind regards
Uffe

