Return-Path: <devicetree+bounces-129355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6889EB5AD
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 17:10:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ED6E3161A9A
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 16:10:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E637A1B86D5;
	Tue, 10 Dec 2024 16:10:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lEQ3b60X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348161AAA0E
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 16:10:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733847015; cv=none; b=twNRsJx2/XnKp21UITeQSd1HxbUpFadXeEBu6i3SPIZ7orlK3/0G7oiXK2TO0aaFzPXzbjr3LOEKwiVgZY4F1I8Z55FVDFx+6fwU2xdd+ODfqVJ7RJ6Uv+gY6H0kcn/HEY38uhoTjzRz8NPok7bgttyKgZIMUS/1zlG9lLG/bNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733847015; c=relaxed/simple;
	bh=5GudjBzxvQaYsCWXxbQ6HJDgG3OjE70z3x4WM6wZ57k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=u7aBS2WsrDshekZdZlR20tUWqhT4ZcCpQDj7h2SDqLGx7vYlLeNIiLxBluiVpnNOBwgyfP78zf03eKvFhaXFyzTNdEbVjCRS79aOLcvOaESsLu3rl3Nmdl2JpehLLHDDsoGbLYkfhXfZ5SkoJnC8T4OEPdzlPA59TMJwcTw9B3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lEQ3b60X; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-e39fb8548e2so4731614276.3
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 08:10:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733847013; x=1734451813; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=HNXvfug15XfoQwdKiIGBWtNC3tcA8qpMkETpkFfQs6Q=;
        b=lEQ3b60Ximaw0rRGcTaxlZOxQ+s69OIiWqzpLCeo6tBC267U7PneKNrv2zBJIPFCdJ
         lVXTzchz9SIy0P2hFOSLEJ3eLzCalMNZFGv+NNDvk8hUVVkZJKIXdNFvih1XklHcYO+u
         flV8sRufX/GuITqv7L1oVmhqmEaUGISmCLIIHjvwZh+qaMHptvjkvTSrJMEwWS0IxHvH
         I0OKtkMwTVQbnNgVO6tU+vy14RlmQWiB0m3pxoBnIiWJteW8WbWhMCrBfgEr4qlydB3R
         mybKsXjc0eVhODmSaBFPEopy++xpRmgctn8m3eJKG0m0wmLsVIq94NMkZdKQfVrYqQIa
         8f3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733847013; x=1734451813;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HNXvfug15XfoQwdKiIGBWtNC3tcA8qpMkETpkFfQs6Q=;
        b=ITLL8sX32WI2wdMu1RmL/diRfNlpXI7LKhEK4d7UfN/fqSCBQRzC2oqfmTY5hjuXbc
         uku0i1htoPA/0LkUZNd6ccK/6Ol5YNSuBiVW931SiLqEUqty7D8DR6myrxjufzZiLckz
         5/Q3Zc0lcpVuLefU7B45pXdOp/n7G4l3DWusLGMUiOBFkq0Hl0R4Wwe4eFzZ3h0Wq5sI
         sPUYb5eldFfavEDdLwq9l20iw99GJJNYEbZHaHs6o9TSHb0PM30ngOqg2Hg/Pqjznwzg
         uv8gvc5Qg9IH0nkFr8khVM1Fil8GDZEB9Q6IdbFflKV1oBpUCfwJNo1aUdPZrVEyEcSf
         zztg==
X-Forwarded-Encrypted: i=1; AJvYcCXgX70Ok0jOVQzuFPlrJouQXwWGhqtVZCUFXhWRH++YpZr9RYtAWNi7zH32wKG9y0C/AQghCq0441Y/@vger.kernel.org
X-Gm-Message-State: AOJu0YyLfSwHul0OW9sTdRNa1IWYmjffjZjHz2XPf4Vv7saqLW7Iq7Pg
	wpPysSyXZTh0CeQC9Mc3IyhU3BGUHN1xLic9h6a9XIDPnx3cglWA2K39b1OM12EfhQDDIJrdw7Y
	yxUVNrpuz5jm4cyWedwxXKEBmtAclCgfZzXB70Q==
X-Gm-Gg: ASbGnctDzTCscyqosov7j+Kz3w7LXGdq140etPoWQaGynMNBCdpo3JabFDWlVMa22Qt
	iTSq93QfwyAb2Bd9c5ahmQfMyjZwanoPlrrB+
X-Google-Smtp-Source: AGHT+IELbJvk0NPV36M+fcncTTHMyREVObNbnHGvfeRgsIrYaGiOwpPdOwf890kyMOnEyS8+yJEfq/uf9mQc3jRotz8=
X-Received: by 2002:a05:6902:2b0c:b0:e38:b889:7eff with SMTP id
 3f1490d57ef6-e3a0b071e93mr15453171276.6.1733847013083; Tue, 10 Dec 2024
 08:10:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241128-topic-amlogic-arm32-upstream-bindings-fixes-convert-meson-mx-sdio-v4-0-11d9f9200a59@linaro.org>
In-Reply-To: <20241128-topic-amlogic-arm32-upstream-bindings-fixes-convert-meson-mx-sdio-v4-0-11d9f9200a59@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 10 Dec 2024 17:09:37 +0100
Message-ID: <CAPDyKFon9-3U5Vn2i+WtarSAYQHnA_ho8CGQmiVoboq1tnt4fw@mail.gmail.com>
Subject: Re: [PATCH v4 0/5] dt-bindings: mmc: document mmc-slot and convert
 amlogic,meson-mx-sdio.txt to dtschema
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Maxime Ripard <mripard@kernel.org>, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 28 Nov 2024 at 16:16, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> Document mmc-slot because used by amlogic,meson-mx-sdio.txt and
> cavium-mmc.txt, so make it common.
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>

Applied for next, thanks!

Kind regards
Uffe


> ---
> Changes in v4:
> - Fixed address-cells description of mmc controller
> - Cleanup '|' when not needed
> - Added review tags
> - Link to v3: https://lore.kernel.org/r/20241007-topic-amlogic-arm32-upstream-bindings-fixes-convert-meson-mx-sdio-v3-0-ad4eb22c2a8d@linaro.org
>
> Changes in v3:
> - Revert and insteads move common properties between slot and controller into mmc-controller-common.yaml
> - Fix other comments on patch 2 & 3
> - Link to v2: https://lore.kernel.org/r/20240920-topic-amlogic-arm32-upstream-bindings-fixes-convert-meson-mx-sdio-v2-0-5aa8bdfe01af@linaro.org
>
> Changes in v2:
> - Fixed description, limited to 3 slots
> - Moved out mmc-slot in a separate common schema
> - Link to v1: https://lore.kernel.org/r/20240911-topic-amlogic-arm32-upstream-bindings-fixes-convert-meson-mx-sdio-v1-1-b7bfae886211@linaro.org
>
> ---
> Neil Armstrong (5):
>       dt-bindings: mmc: controller: clarify the address-cells description
>       dt-bindings: mmc: controller: move properties common with slot out to mmc-controller-common
>       dt-bindings: mmc: controller: remove '|' when not needed
>       dt-bindings: mmc: document mmc-slot
>       dt-bindings: mmc: convert amlogic,meson-mx-sdio.txt to dtschema
>
>  .../bindings/mmc/amlogic,meson-mx-sdio.txt         |  54 ----
>  .../bindings/mmc/amlogic,meson-mx-sdio.yaml        |  94 ++++++
>  .../bindings/mmc/mmc-controller-common.yaml        | 357 +++++++++++++++++++++
>  .../devicetree/bindings/mmc/mmc-controller.yaml    | 346 +-------------------
>  .../devicetree/bindings/mmc/mmc-slot.yaml          |  49 +++
>  5 files changed, 504 insertions(+), 396 deletions(-)
> ---
> base-commit: f486c8aa16b8172f63bddc70116a0c897a7f3f02
> change-id: 20240911-topic-amlogic-arm32-upstream-bindings-fixes-convert-meson-mx-sdio-6fa70546ebb8
>
> Best regards,
> --
> Neil Armstrong <neil.armstrong@linaro.org>
>

