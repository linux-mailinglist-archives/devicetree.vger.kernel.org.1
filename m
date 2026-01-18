Return-Path: <devicetree+bounces-256601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E02D39B28
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 00:20:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 230A03004CAF
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 23:20:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECC443191D7;
	Sun, 18 Jan 2026 23:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJmmi3Nm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA1373191CE
	for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 23:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768778399; cv=none; b=T+PcT4LjiqjvYL//pHouw+s9ZwtXhXSgnMfa1QLoLNo8j/MploWo4Alm/AY2+e3E0sgidKRgwisbKKv5p/c0gTCsHf5FAJLGDjs/1Qe3Kc8xhl2mYa4+bFrJLzGNxcpbZCcDAMvQclpwAEpT956DWtam3nRiRZ1izSir5WylZC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768778399; c=relaxed/simple;
	bh=KQahX9Ida40SOepzr8jeh3Kbh0VozFNGC0uFeVXRi8Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=i84kNHhJceBp0zCH+FHfZJM/VO11U0apyJt4FFSDx+Iq1LDjhFONE/ygizwo8+i6G4IBQoqflmAdKtMEcMfe0eDFywXpaMrblMUZmlxHn3a47d55khr8M6ATOshnCTJXXd4fitItzOzEtpn0mYL+rHO2TYtSbeUDpVcqZbf6Kzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJmmi3Nm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC807C4AF0C
	for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 23:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768778399;
	bh=KQahX9Ida40SOepzr8jeh3Kbh0VozFNGC0uFeVXRi8Q=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=IJmmi3NmKmrvwoL7N/hX8L+Aifsq1REGYp8ZY+XK86rSstwzzH+Xv69riym8VssDh
	 oCysqk4h5w3+z6my0aJkiRk0zl6PEuPmKwTb0JIxZ+VH/h8EdKBmqY90RYN0ggtQ54
	 EsMNggHbl4+9OLT/SncoEXee9iXWAkWo5/6eQd6wvfeGKTOQcGHDdJQ92FTC/IbTA3
	 xDFA2szab4+o1/ujZ2NvChIBZMVdE1SWbQHTlE7YQX9ZD8yS978rIIOaNs8r2l3LwI
	 3BngCPBW8Xnu72OgIUVyBhWm9t37h34UiHn5dLFCZOjNX6856wO5+Q7hRNsS7SSRLj
	 gE6P8VsKSpzEA==
Received: by mail-yx1-f42.google.com with SMTP id 956f58d0204a3-646fe7f70e2so2688448d50.0
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 15:19:59 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVxqPmNlVBtgAtRqbOyxpPgjWG80k9tFDAmBJXCzLcjmgBXPShfN948JQ12FtSFUGWwyeAzzGrwtgXH@vger.kernel.org
X-Gm-Message-State: AOJu0YwRL2boa9UxalEBNoJhmNEZPBqY/s5y7E8G/HLUHHjH5d5Kyx0M
	ggzZLuzWt0DQbE3X+Uf8ErkAa2tdTm4W1Oxi8b6wNVe9ItyZTxjvAtKQpyRRMlJOKgExvTictbs
	DHnx0D6ZREdWF+5lKqvU50IiaoSCQ1Nk=
X-Received: by 2002:a53:b11b:0:b0:63f:a79a:7690 with SMTP id
 956f58d0204a3-649176ef355mr5879650d50.39.1768778399088; Sun, 18 Jan 2026
 15:19:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260115151014.3956805-1-shorne@gmail.com> <20260115151014.3956805-2-shorne@gmail.com>
In-Reply-To: <20260115151014.3956805-2-shorne@gmail.com>
From: Linus Walleij <linusw@kernel.org>
Date: Mon, 19 Jan 2026 00:19:48 +0100
X-Gmail-Original-Message-ID: <CAD++jLnY058sc+S_rjor0fr++OvcrRt83OQwBg4h-dJb02UVzw@mail.gmail.com>
X-Gm-Features: AZwV_QgiHVcO8adqXA1eRik_biKmhzWNffXr4dW_AsBt0gNd876ueevIIqnPwpA
Message-ID: <CAD++jLnY058sc+S_rjor0fr++OvcrRt83OQwBg4h-dJb02UVzw@mail.gmail.com>
Subject: Re: [PATCH v6 1/6] dt-bindings: gpio-mmio: Correct opencores GPIO
To: Stafford Horne <shorne@gmail.com>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	Linux OpenRISC <linux-openrisc@vger.kernel.org>, devicetree <devicetree@vger.kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
	Bartosz Golaszewski <brgl@kernel.org>, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 15, 2026 at 4:10=E2=80=AFPM Stafford Horne <shorne@gmail.com> w=
rote:

> In commit f48b5e8bc2e1 ("dt-bindings: gpio-mmio: Add compatible string
> for opencores,gpio") we marked opencores,gpio to be allowed with
> brcm,bcm6345-gpio. This was wrong, opencores,gpio is not compatible with
> brcm,bcm6345-gpio. It has a different register map and is 8-bit vs
> Broadcom which is 32-bit. Change opencores,gpio to be a separate
> compatible string for MMIO GPIO.
>
> Also, as this change rewrote the entire enum, I took this opportunity to
> alphabetically sort the list.
>
> Fixes: f48b5e8bc2e1 ("dt-bindings: gpio-mmio: Add compatible string for o=
pencores,gpio")
> Signed-off-by: Stafford Horne <shorne@gmail.com>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Reviewed-by: Linus Walleij <linusw@kernel.org>

Yours,
Linus Walleij

