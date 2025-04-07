Return-Path: <devicetree+bounces-163875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 63150A7E5DA
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 18:14:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3940B1885F87
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 16:07:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D56320897B;
	Mon,  7 Apr 2025 16:05:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DPVF7zbe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CB562066EB
	for <devicetree@vger.kernel.org>; Mon,  7 Apr 2025 16:05:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744041921; cv=none; b=dL8Df+deNjMPz+etCss7sewo7JjW5efjN/77tftna+V71SgEMcsL9tkVDMZVX3UGw1Pv9PYISVNG8OxkU5jmXOJ+nWUd3RNfRVYZfqRHHA1KNPM5la6HMNAvp/TQc5ZNKbbwh+TscDNok1Z7oEsFpzAqM+SawReGsFotk7hrIXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744041921; c=relaxed/simple;
	bh=u0aF0vd4QcjvPIuR0+km623x+V7ksr6MnKsaPN/8+xs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GyhxQZi/MLw7WJO8PsZLK3ILjXBbxKATY+Ott/lUyhvp3gtD2AXTCRwBfH5QIqZhqvxbBj8WP2YO21dVO4bnvzX2odTjirg8zvjHlzHw7XmZbRZt3CH9oZEFm++tATGivKFFxErNjrI6/3wSdeAnnxwePc5grZwrOB45uzm/H8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DPVF7zbe; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-e63504bedd0so3387260276.0
        for <devicetree@vger.kernel.org>; Mon, 07 Apr 2025 09:05:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744041918; x=1744646718; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sIltRROPIS1IFEA+sscZBf150A68RCMQ2MklOTTVcXo=;
        b=DPVF7zbeZiok+kLrcO1mMH5DVBDyne3+gv1n9v70X32P+npah5RaGGrQQ4Xmv7MrCS
         r0vXD5SL6nF78IAwk9X8voAEtQh/oYeXNItxXIpCQlnpn0L81ZrIP2MBeloBUfzWcbvz
         jFIVwhc5u8zefr4AyHn5atFJiSVu+E+8/0oru43HXp/tY9m7lxqFlohmncelf4Bb1jfe
         iTtHeUHbyMxqAbClhlyatFHyO3E7IFW+AJpZlVlxaf2pPtf9fOqeYyzfSMGhXKjNq9iv
         W24wDbL0kK4UKLYZHj5l7MOcPwNxb0vGdiCFqopfl8Q+gAXT6o6TtOFF/TmJ/DVBhD2w
         VUBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744041918; x=1744646718;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sIltRROPIS1IFEA+sscZBf150A68RCMQ2MklOTTVcXo=;
        b=jem61R7Ab2ZS7w5ze0PdJH0CojuhItMdqzKyEV54wGc3ZgeNlx+adgC+Jxx0UNp7oe
         CozlaTOnw4meVtoisBJh4IuimhvYK+7/FX2ULjQLKdx3bVqyKkig122xpJSw5FYm6AL4
         L2XfojH1R35/47Kdch/unH6vQ1v0uSJKtBF5Wf53/qRd/UaO6Uq3rT5mubUXBvNj8v1X
         CwK4+CXc0pwQ3Av4JqR7Pu2XwglfWEJVVjCOCbBePPbUWyFGhNshznMK+QEgl9hkicGm
         MivZ21A3phy53hDGYG7RWP9TbejC/BaMBI+RO/aKWsDhPDZav8r2ozVtHmQ+JJNIHJ8o
         R3vA==
X-Forwarded-Encrypted: i=1; AJvYcCUtKG5kpW7jHF/SFYSl233TJZAEWhKav+4TZxIKjBO0D7P27UY/iC3o74hSylsLMp4En5vrIWjzTnHN@vger.kernel.org
X-Gm-Message-State: AOJu0YwsXlkC135wThLUtZnHXd6wv0fuPfsfE8HFSw1vSgGXQ77jNVZQ
	GXFnMAXgqLtBgWGyDHjJmomeLycHGbkjZRjvhZ4fjqfib/BpF/VAseYacbunWcmduG+ka65BjgG
	WDxHFBRZtCgEWcRLOafPLhZm/uY8DcUMAx+hcz6iWVNe9TNCS
X-Gm-Gg: ASbGncvGVdkpswv29rC9NpIaDD1kho5rpTLETTMvvh+H4777XPIaD7edtdSlKds2oXK
	J/Zq3YeuwabalyhbieJdopCN+CGRKS68LWZeq8TXgEw3tl5Ldrq0m/isTivfzNTSNrPttr2FEEE
	MfXpqjFMYYzM8gQm/gDlnPGBtkQco=
X-Google-Smtp-Source: AGHT+IHfemisUrYTSu+R+ITsGXJEjJhr5usaC/eR6dHy88Fr/iGTY4qDERK1sHs9feVLfrvg0UHQslChxfDxU3tm638=
X-Received: by 2002:a05:690c:630a:b0:702:46a3:4721 with SMTP id
 00721157ae682-703e153033amr248995447b3.15.1744041918403; Mon, 07 Apr 2025
 09:05:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250326143945.82142-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20250326143945.82142-8-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20250326143945.82142-8-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 7 Apr 2025 18:04:42 +0200
X-Gm-Features: ATxdqUFP_RvU6m6--vLVjW3iZgEwByAoHi4eONoRyG_VyZwI9qdEZYqg6kr0NJo
Message-ID: <CAPDyKFrCy-rWeYz3qoRsTQkw+PY3e7=zGUN==4U5_8FvdHezGQ@mail.gmail.com>
Subject: Re: [PATCH 07/15] dt-bindings: mmc: renesas,sdhi: Document RZ/V2N support
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-mmc@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

- trimmed cc-list

On Wed, 26 Mar 2025 at 15:40, Prabhakar <prabhakar.csengg@gmail.com> wrote:
>
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add SDHI bindings for the Renesas RZ/V2N (a.k.a R9A09G056) SoC. Use
> `renesas,sdhi-r9a09g057` as a fallback since the SD/MMC block on
> RZ/V2N is identical to the one on RZ/V2H(P), allowing reuse of the
> existing driver without modifications.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml b/Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml
> index 773baa6c2656..7563623876fc 100644
> --- a/Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml
> +++ b/Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml
> @@ -69,7 +69,9 @@ properties:
>                - renesas,sdhi-r9a09g011 # RZ/V2M
>            - const: renesas,rzg2l-sdhi
>        - items:
> -          - const: renesas,sdhi-r9a09g047 # RZ/G3E
> +          - enum:
> +              - renesas,sdhi-r9a09g047 # RZ/G3E
> +              - renesas,sdhi-r9a09g056 # RZ/V2N
>            - const: renesas,sdhi-r9a09g057 # RZ/V2H(P)
>
>    reg:
> --
> 2.49.0
>

