Return-Path: <devicetree+bounces-240238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A3FFC6F1A0
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 15:00:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id BE05935660C
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 13:52:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A02FE3612FD;
	Wed, 19 Nov 2025 13:52:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Snt6j7LM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF67035E523
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 13:52:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763560328; cv=none; b=X+MpUtrZ52babNS1gLbIx2JTtXk5CKPdzZKtamFSZ/4MNdrVU0mxVOM/Q63VIEeDemsvJLnKBWdRFY8gLlVvNJY99ix+ebOGFzwgm3K3+TBlTGCAIEGOD9+BN/UhYfSERLXAXQdMhYZOUoVwsGmiUL2/lRvlpHpdDwZD/2s91Qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763560328; c=relaxed/simple;
	bh=9Sw7qNK2MuqEfcGlDiodQEmkMQSxPXI8ojkn2672gPY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZCStQCYzUhnHlyVWHxqW9QOLiGWUXCH7hTcYPx0Mwj/zKnxE8yVD1Edp+aNWz6zXqpt/gg1QXWA8XPLso1SDx4JHpp6WdKRlXUDRFat38G+gagIWz82AGJ5EKA3ivtYxqatYcnZjb1XLXwXAeI9GL6461SEIk4XulNfV9tDw3+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Snt6j7LM; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-594330147efso6717970e87.2
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 05:52:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763560323; x=1764165123; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9Sw7qNK2MuqEfcGlDiodQEmkMQSxPXI8ojkn2672gPY=;
        b=Snt6j7LMr4k9kZO8xqFcQpVv8OepnY4KrYS3NPi2/fSBBSq+/W4E6Y+Nb50ZpN1xgH
         1Ii7RksL0kRAQipraGoxabQ66PlwbcDixQTl/8pFw9Pd/uqsViV5Y92oIQlJalZLGtzZ
         vMdf/TkiQg96uzTO70A+QrLzd+pcORoHcbgPv0WHIUakRIzziE2ug4YGa8Vhhjwx4bLP
         vhV/TGB247IWW6BenW497MUVUz7pvyHOG0uMIMfcJZhVg2TXSf8iy56iBmvsgI6N9Lny
         P8f1/kij6nMvzOElOEp1ZNAKIXanN/r2+5W21iUz8w7Abova9RFSIupEhgyN68RPpOMA
         KegA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763560323; x=1764165123;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9Sw7qNK2MuqEfcGlDiodQEmkMQSxPXI8ojkn2672gPY=;
        b=PvAO7bfK5Xh+v6GcTY7UXFTpijTkh9C2G7gvfCchVfoyPRzA7tuVSfm54f1MoiBIzv
         Grx8qYXCt/AzYPRGY6Kn1MJsdPwlTrbnuER8SFcqoxDCTubWoZmkxSq4iUE30YJYcTn2
         APXBatp7bwtLJPt8dlHBd9s4LHsqzZMYZg3mbdI0rGAnJKoOmfFmaPRLTFYbZzrgkQYX
         lglMlm1yZQBNtqAqEFa0LNqJx1xhED8mZyb7/vIeEzY/N/Maz9yKU3AtDKfoPITNQmup
         oMZnjXa5qLuQvFxBkxhWkjVWFM2CBv7hhyms6AhoOcQVCrSNI6Acr5INuWn3uS0iBbAd
         KIhA==
X-Forwarded-Encrypted: i=1; AJvYcCUoOcEQb+kKFanoT6hV97S/YNbBvaBgF1aHWYO7Kv/KVtYHJelLrZhxsGDKckKx9LjL6iHwD1XTHa9o@vger.kernel.org
X-Gm-Message-State: AOJu0Yxj/gPWrBb3nV+cdTmDI1/05tFGwdeFQQ94avfDYVMZ4hQKArbJ
	MpmFhgvGzV+BMgnV9y3eB2CME5oI/Hf8H4iqb/yqgGLXSzH3216AYHuXhKttejTcMok1uXpiAFr
	/YQ17ThcGiv5C/5hgGDrWPeNi0OHarLF1uDMCEzKOEw==
X-Gm-Gg: ASbGncvS6cEcpPXWzaRKAojdAnrRZa1CpomqZwvx6Yc46sFjnYDbXpqwaoiHkx9FBqJ
	wUL7fgL2YTAEhInJqB+rxwYj1I5NF94gTujWtb9RTu7QRc+C9ZpvuG6BHQZX+7ZnE7ADPgCzSIL
	17Ofv2DfWJFI1REspADDba7XVephN4cVVEbJqtfSz4CCwqMp9nB1gaWfdIeYSe9/5ZoLo8RJAnz
	N3nImSHMYciVtvcw+Hr2Evanozua5/pspSuRWs7JHOFg4fuu8S1oLR6oFOI3A+DCovw0mw=
X-Google-Smtp-Source: AGHT+IEmqj3lGDApr9edrXMaFwN0H3cZ82GlBpdq67AUQg80YKIMgCzJi1RzhM8yWFVqY0UQAGJbUbSB8ccCc0F5BHI=
X-Received: by 2002:a05:6512:3b9c:b0:578:f613:ed9c with SMTP id
 2adb3069b0e04-59584201168mr7597957e87.43.1763560322586; Wed, 19 Nov 2025
 05:52:02 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251117-upstream_pcie_rc-v5-0-b4a198576acf@aspeedtech.com> <20251117-upstream_pcie_rc-v5-3-b4a198576acf@aspeedtech.com>
In-Reply-To: <20251117-upstream_pcie_rc-v5-3-b4a198576acf@aspeedtech.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 19 Nov 2025 14:51:51 +0100
X-Gm-Features: AWmQ_blwvWUHZn6LSm0qwvTRD5Kr7vftxNarMVR6ZM3aN6PFLC6U4mHy-OgOWik
Message-ID: <CACRpkdYp4NuxDA7QLnqQ_pfd7sFZuDjCuZQ8Jim3BYXN=u=2Xw@mail.gmail.com>
Subject: Re: [PATCH v5 3/8] dt-bindings: pinctrl: aspeed,ast2600-pinctrl: Add
 PCIe RC PERST# group
To: Jacky Chou <jacky_chou@aspeedtech.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
	Andrew Jeffery <andrew@codeconstruct.com.au>, Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, linux-aspeed@lists.ozlabs.org, 
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Andrew Jeffery <andrew@aj.id.au>, openbmc@lists.ozlabs.org, 
	linux-gpio@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 17, 2025 at 1:38=E2=80=AFPM Jacky Chou <jacky_chou@aspeedtech.c=
om> wrote:

> Add PCIe PERST# group to support for PCIe RC.
>
> Signed-off-by: Jacky Chou <jacky_chou@aspeedtech.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

This patch 3/5 applied to the pinctrl tree.

Yours,
Linus Walleij

