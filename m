Return-Path: <devicetree+bounces-204931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1317BB27671
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 05:04:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1641D621C8D
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 03:04:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29DB72BD5AF;
	Fri, 15 Aug 2025 03:03:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="eFSyTybM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECFBB29898B
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 03:03:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755227036; cv=none; b=C8geY1lVDyhTXZZ5+/0MkMDsdP4nQ5LNdKqTkEwRoas/BiyT1fvRjy3j9EYCEmoHdw30XMns4VFUpTCxAGqth7+/OwX4cu/p878rl8exLcg8W4Rbj6l+l23ZbMr8dJZxOw05LFECiBdo3cPVxT71oKL54sMLruMsalhkx2PVhho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755227036; c=relaxed/simple;
	bh=HinHQKZUtxe4t41iR9D9bn+PEZ105vFBbOQmMnTwk9Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HROLUVa3zwhXKI7Nm3Ye6bPVpquFVpKKW8Hih0v5jacJXG2fkcTgz8yYJoukl47WUPSpmjE6z7sDUp7YNfnntPuRabnB0kHDuzN15B2pd300sKjj3gzA/27VG6yp3CckXHMu1ah2IxFd6SXOj8Sy0TS4AVFlPrbwrTMCVm0GnQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=eFSyTybM; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-55ce52b01caso1699236e87.3
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 20:03:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1755227031; x=1755831831; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HinHQKZUtxe4t41iR9D9bn+PEZ105vFBbOQmMnTwk9Y=;
        b=eFSyTybMep2zGs8cgTE9pFyv+RTx1qg/TRgwPwPzjOQ7yhv/VSIHID5g3GxVInSYYs
         MEYzYAInQbb171Zo4sOPVbxWclPPKuptT/OeJ9TBJAvsCWXlngg9fkFLbU6PW1q805dl
         OiqErf0N1aN3mvk2cDicMkezFJiuU/xQAQxCQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755227031; x=1755831831;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HinHQKZUtxe4t41iR9D9bn+PEZ105vFBbOQmMnTwk9Y=;
        b=EuLV+Go9J8KAMYGodYUEeuXecqmBc/2uD7EErvClzpIQ1wjpHc6R7tr7sR4zqkYJi+
         QnrEmEExQQmdBl8+o2g87Yb7OlcP1auG/4bwCSC3vmq4O/bAwdW8jV8G+iJvFv9bHZ3i
         XYgN16PZ8+DViPNsJtLeW+BsV/s2XK4av0CWdZ7Zl2bMbJhiFaJL+bRFPTzOXB0Z/jNo
         jsFgfgl2dCRCGoxw/KQfXVGFRBca6b8W0UTiuP6OEjM3kHthySuDcJdrE3ddp07f+D6O
         zR9PIOeavR5OZXWNn2WSLS/AMsCFsCzxCg5apyz862DxzCgyhAnjueBETVP5t919MMce
         ax1g==
X-Forwarded-Encrypted: i=1; AJvYcCXAr7YY/iy4KAYWgabYctinmrrZWzpxU1RIr3podEkqSYz7095e7HULPaOUGBt0wGr/ViqkWIGRiBAc@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6iFj0MBifZcUplMs1FX3DEHgiPi1u6MJrsHll0XPUxq5cM0TP
	yyw1WHzaC0s2PlFw5ad+49g5cN/UISW3ZOy7g/gFBa4cp7+syf5XBA5l3/+q4dEw740P59pCm4Y
	2j0hGWbDZI1JNSrn2aPrKZhZrcQ0q0Lsos51uN1vv
X-Gm-Gg: ASbGncsi9QwFTOuWkdr3NFsBvSMbfojpovMeRQ3oYTByw72Y6V7ygwZ1ahvIFFY0wBm
	jnmBqzXMmdERgstxy9ccAWYjpA6tLPhcOzXIuBXxP+x+6baBI0WJ7uKyt/MJR24sf7dx5ggoSsT
	Knzxjq1bYD4bfne3cwgJv6eugD5A4u2ArD2/yf8JvYsMzbEv2PlieqoQ27hespaGdp4sm+xFt6W
	TvIqvgmVoofKRs3sdFOdhwMHdG2WZ6D8YsvLg==
X-Google-Smtp-Source: AGHT+IE5oudoWOuExXFcWc613ObdeU+xcba/kkjYM4lQww+ElYzSmi2/gSXFiaP7UzcFCgh/kx+W9zwxu3OJ8SIUDuU=
X-Received: by 2002:a05:6512:1104:b0:553:a9af:9e43 with SMTP id
 2adb3069b0e04-55ceeb906demr143594e87.53.1755227031067; Thu, 14 Aug 2025
 20:03:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250805135447.149231-1-laura.nao@collabora.com> <20250805135447.149231-2-laura.nao@collabora.com>
In-Reply-To: <20250805135447.149231-2-laura.nao@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 15 Aug 2025 12:03:40 +0900
X-Gm-Features: Ac12FXzlE2kni0q5NyqXgX7d170kjvAVh0V3KwwS63urIxRRXRRBW2zdHpmR4vA
Message-ID: <CAGXv+5GDU45O46A+mpdu1HQ_sfT2Su4fgFCtr4xPjoRPzwOWmg@mail.gmail.com>
Subject: Re: [PATCH v4 01/27] clk: mediatek: clk-pll: Add set/clr regs for
 shared PLL enable control
To: Laura Nao <laura.nao@collabora.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com, 
	angelogioacchino.delregno@collabora.com, p.zabel@pengutronix.de, 
	richardcochran@gmail.com, guangjie.song@mediatek.com, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, netdev@vger.kernel.org, 
	kernel@collabora.com, =?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= <nfraprado@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 5, 2025 at 10:55=E2=80=AFPM Laura Nao <laura.nao@collabora.com>=
 wrote:
>
> On MT8196, there are set/clr registers to control a shared PLL enable
> register. These are intended to prevent different masters from
> manipulating the PLLs independently. Add the corresponding en_set_reg
> and en_clr_reg fields to the mtk_pll_data structure.
>
> Reviewed-by: N=C3=ADcolas F. R. A. Prado <nfraprado@collabora.com>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>
> Signed-off-by: Laura Nao <laura.nao@collabora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

