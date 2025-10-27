Return-Path: <devicetree+bounces-231786-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EE614C1198E
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 23:00:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5F1FF3B146C
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 22:00:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E01A63161B9;
	Mon, 27 Oct 2025 21:59:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yUdk19iD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1728E2E092D
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 21:59:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761602399; cv=none; b=M+/HZFOCl8TmeMfz1TwjPbyuh7vD+WqHOlb07JJxcfAfKO0k0loB/hTJZDwQFH/Uf4MmS2FG29U+X0AIrwSBJr7eQh2QK8QNJC+oIRNFRdDkV1vRkCNJ8lqLvPP0W0RHSnw5uuwIpVzlW2rZCETxCRns6UR4AIHSe4iG8YC+/WI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761602399; c=relaxed/simple;
	bh=+s9wJrUVnAiARoihgzYhQW4ZH/+T9QovHaBTy4YJrjc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oQ0KLok/JunHebgU2lctxQ4SI9dNoFxC6H4TLSKsyn45VTaf2YRxiSwdVKGuI+0G9vBAX5ukMqHTYlwLDOSr1sjWLdyOy6FvslqHVlHOzBzo5Bqkh56zBzGV/ju2eL6rZotEa6yo64KRE/rX7kPKC8I3LXX6wZTM9jVPDEIOq+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yUdk19iD; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-591c74fd958so5815097e87.3
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 14:59:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761602396; x=1762207196; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+s9wJrUVnAiARoihgzYhQW4ZH/+T9QovHaBTy4YJrjc=;
        b=yUdk19iDG9Y2oATyh5vf/Mmf4yZ82QWmJm65k014Sv5n4gZ8Jtr0PsS5yh2WnlL727
         26VKoJSi5DrBOoGeDw9v8PxxQWMFkJJMHss6M5DN36/u+QfNLKMX6UIKEtfzdCnQJyB1
         omitV7vv3YE9C2JmssdREvA/qWTSyJ0wxcA4Pvdr3N88ARUDIXuCwK/rqCLDId3/Vjsa
         929jRE9R23gfqJkrxyfp/fg+UDzET+oxRndmGiqh5qBVjukKWllLYLKN9vfCqZpz/iKu
         b/X4GAuASQ5wAm4EMolhPc8MpOCyI4voUbQBKrrXb5ZkDCPZb4ZABjj26VPoI5w31BmZ
         qrEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761602396; x=1762207196;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+s9wJrUVnAiARoihgzYhQW4ZH/+T9QovHaBTy4YJrjc=;
        b=H4Y6508t7M/Lm/ufkW3oJh0sibGQslDG1b5ukwD9Kc5PgIR5ZIozDDvYJEcKiKmlOx
         rfdz+gLpGBqZP8HN2W31uZL9AyCfG9EVzdaVdunHbjiykDsvtW+r22pSW0IQIytGdUs7
         3PVuPU5SvuLSH/9d4+yfwU2WhYWWiZC0u9VgHcFfdbHnGEWxryPQbfwUPiGc+6YEns/2
         VjLlQNXQgm3cr8w0HwpSgIDetceGYa4tKlceXHHo2SS6Fp0i9PB8lsVE/4lDwyx9uaBL
         TaESJK9+X3BHrSKwtGhSi8nMQc2WhxCTBnpQWE9fWLO2d7chgfCy5Y9ypJkDwhk8KAgS
         HM4w==
X-Forwarded-Encrypted: i=1; AJvYcCXLjCZcY5Ic2K7ZvHk3TTdHneUv/FQpdkFCAKBPCW+4+7/wcmdbl68av7jvMv6LvlvQMJygsfPS4hW8@vger.kernel.org
X-Gm-Message-State: AOJu0YxQrxTsK9CFUVqlfRWCWEHWnIld8jSqZXYN/f/oC6yNt+4PRiYp
	lajSG0x/F/thUpJjdfDBI6+hV3NBiZ3AjI7ASYBf0MWBi9/D/400EC/lVmIhNQi33Jwa5nNKOiC
	EG33BX8xO1kqnCi52mjqb+jo7ysg/FyIUV8KbILa7qw==
X-Gm-Gg: ASbGncvbMAnEbZVuAKKhRGQ2+UI1Oh0MMLQYcNB18Vxuf20L2GXTvioBLgoV1Up7zDF
	w93C0XQGXXnPmCPLZXYl/jsnEe9JmpMQ5Ol+wPwWUAIZxCPcFTynzEHHcFMZbkx5Qa4GeXSuJ2x
	zBwVj3WEA41dUL31cZqCEgXLwTVc49OFiGu263hphXaDx2V3EV3orA/his2lYy8X4CiYRpwpjp0
	FcwRLP3ZLrQl/Elw6HAdAlhUNoQ1afUxOuBHPlS4SJ+JUcBaAlaGPtMpw0epz71hufJrOE=
X-Google-Smtp-Source: AGHT+IGENMuTPrZutUQ46wuswD5BGa1TjRpeG2e88psXFvOk1H1653TvwH72RHt6gkUrwbtJPBtV0+X773X1GDUqzwQ=
X-Received: by 2002:a05:6512:2349:b0:591:ca21:e985 with SMTP id
 2adb3069b0e04-5930e9dc52bmr571986e87.43.1761602396255; Mon, 27 Oct 2025
 14:59:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251014153040.3783896-1-robh@kernel.org>
In-Reply-To: <20251014153040.3783896-1-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 27 Oct 2025 22:59:45 +0100
X-Gm-Features: AWmQ_bnaFR_aOmEFaodrc7AgItv72GvXAJNlQaZ0Wjyw4FDq1FooRjnsolDKmfs
Message-ID: <CACRpkdbiJKy2KrCO2wETQzLAkFate4miWNJ2Ed=a=jzS07wqsQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: arm: Convert Marvell AP80x System Controller
 to DT schema
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Andrew Lunn <andrew@lunn.ch>, Gregory Clement <gregory.clement@bootlin.com>, 
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Miquel Raynal <miquel.raynal@bootlin.com>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 14, 2025 at 5:30=E2=80=AFPM Rob Herring (Arm) <robh@kernel.org>=
 wrote:

> Convert the Marvell AP80x System Controller binding to DT schema format.
>
> There's not any specific compatible for the whole block which is a
> separate problem, so just the child nodes are documented. Only the
> pinctrl and clock child nodes need to be converted as the GPIO node
> already has a schema.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Patch applied!

Yours,
Linus Walleij

