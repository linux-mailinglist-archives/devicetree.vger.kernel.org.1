Return-Path: <devicetree+bounces-138061-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F2E2A0B984
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 15:30:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AE4BE3A1DD2
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 14:30:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3A682451C6;
	Mon, 13 Jan 2025 14:30:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vJRCP7JH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5666323ED68
	for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 14:30:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736778639; cv=none; b=SqmRUE4UmRP3Nio3J7wE/rGPsA+SavWivw/ClIAgPAN/ctGTqtEAkoA7W9CLoexSP+UPKk722p5I8HqX9F5oZ6wXcw4yA/mFBbjsgOilWhfC8wi2wetFeXXsjVMvWZKlLKRD/FW+O7Vf+qg+R6jmVZua5Y0gY0q3Op82OhBJF0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736778639; c=relaxed/simple;
	bh=yQiQxuwGR8sipxLnE2QpNqD0m337joQm8Mgec26elhM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=M2cQ++gA2do7CsNerW3kC+TY0WCli7mk1+HnL5i1yyDs2Q/31wyD7Mw8YWyWI2I8nzZ+3MxW6o3Kb/OTQRXqtMGn5NaV/VfztbjEQqHrFJordgcOKmZYX5yidUNIBYpS/x/Fgs9xncLsXPm7ebA+GxTx3RznYa2vrbGcmDrV8BM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vJRCP7JH; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-303489e8775so37805251fa.3
        for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 06:30:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736778635; x=1737383435; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yQiQxuwGR8sipxLnE2QpNqD0m337joQm8Mgec26elhM=;
        b=vJRCP7JHCmA8mWQDiSFlV8GUugVUxXlPe0hdhmeL5c+Lr95DLJaZC/5Ixm0y/pWHN0
         IWQ3fAhfjVrd0ONx7JwHcDEDOqPQG9/OCoW+wQvciLMr7TvRVN5JnpZzc3mT4l5ja9pa
         q6150s78X0PswQC5fO0jlNRiplthwybM93s5ujCagkVKufZhn1LqIlscLKmAn1Wf+2nm
         dmKSq3vkwi6QJhteaq5PwSVrHk+qOWRyx9wNhwUJIpDyCSNPFy+zXYxv45JFRd+kqNVk
         6aYhW0sRnGwIErO6HeJLadja6OJSpCjKxePDpIJOL6NPz9QTMxwjoyMgB2IrUbqKD5cf
         7H6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736778635; x=1737383435;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yQiQxuwGR8sipxLnE2QpNqD0m337joQm8Mgec26elhM=;
        b=f7SCDZBiJ2btjuQMaY0Eqc09K/NB2gVOrTJddghpjb+Vn8HczEFJe4E42oTaenRjiL
         92GLp/jVvhrNqcD3qFbuoKSAqYmGhjgu7lRtnGygPgsbDUeC7M2+uKIwindlDchiqGPP
         iwWQRJBwlHux2HwZ5T+tdNxYt0DaLahf8Xu/tM+vYsDtA0KkEJlWcXnkb5Cvu66P1beZ
         LOvCc30G+oKp+4sgGRZyfQnd/Pjhpvv0IbNdDAyhpYSknnwu9eP7ZS3w3abnY16kffpv
         f94QIebq5awwnCZwbYGKibIf3YLZwWN9RfcCd/svzPUmDlz0KbDODcT57IUt4wmA8DME
         jRaQ==
X-Forwarded-Encrypted: i=1; AJvYcCU8HudK5ECQcdtwb6HPcs0fBlizBxvTOtpnJQzGlJeXJrQ5izdog15AdqhWZgUKmQjfwKiRQxG4nwhN@vger.kernel.org
X-Gm-Message-State: AOJu0YwIj+Zh/N+vvpqUL66MPYFOX7cD1c4kxQDS4ilrFe15ntEp62mW
	DG22Lj1aPgnjo8JyPfydaqUV44AGs6D/eQyOJGAMafrRHyyqraoMLXUPMrBKMrytpEz/Dq/+9Iy
	3PTWvgICJTJ2BsH5p1CSmCg9FrtXqqJfSON4S2w==
X-Gm-Gg: ASbGncuEq6CySbO6XMqXLapZ8ogQs0Zxu8MBNiDw0CwQCtp5OnrUOsomhwjMu+xaWOn
	+lZn0/2f3xCY6mutkT6Jcj1jKjMJkfz3o8HUK
X-Google-Smtp-Source: AGHT+IGhfOPi0kkaR3fzIiz3zYVKzNITf7WqJXfvCEhBW44RAY34fqtT6fXLyl378DmtnGYFFnV3yeRTPKvHK9wdrxk=
X-Received: by 2002:a05:651c:221f:b0:302:1c90:58e8 with SMTP id
 38308e7fff4ca-3060ce3d06emr30538601fa.33.1736778635404; Mon, 13 Jan 2025
 06:30:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241227-a133-display-support-v1-0-13b52f71fb14@linumiz.com> <20241227-a133-display-support-v1-10-13b52f71fb14@linumiz.com>
In-Reply-To: <20241227-a133-display-support-v1-10-13b52f71fb14@linumiz.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 13 Jan 2025 15:30:24 +0100
X-Gm-Features: AbW1kvZgkONvTczIqxIzrr227mixg_kY6H8hXCa96ZE9JLa4yEIXQA2LwUItM1s
Message-ID: <CACRpkdY29s6Cz3zvtksLO8sESwxhkVdmGUipVAqiEtix3E1=Vw@mail.gmail.com>
Subject: Re: [PATCH 10/22] pinctrl: sunxi: add missed lvds pins for a100/a133
To: Parthiban Nallathambi <parthiban@linumiz.com>
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Maxime Ripard <mripard@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, iommu@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-phy@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 27, 2024 at 12:09=E2=80=AFPM Parthiban Nallathambi
<parthiban@linumiz.com> wrote:

> lvds, lcd, dsi all shares the same GPIO D bank and lvds0
> data 3 lines and lvds1 pins are missed, add them.
>
> Signed-off-by: Parthiban Nallathambi <parthiban@linumiz.com>

Nobody seems to have any objections about this patch and it seems
technically correct so I just applied it to the pin control tree.

Yours,
Linus Walleij

