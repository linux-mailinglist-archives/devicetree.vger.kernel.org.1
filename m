Return-Path: <devicetree+bounces-125273-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C819DB617
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 11:56:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6DF3128163B
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 10:56:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAAFA19342B;
	Thu, 28 Nov 2024 10:56:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="j8YcD90M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FFBB192D82
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 10:56:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732791380; cv=none; b=FY769gXTlXdSlvGNy8NDgaTRwVR4rFKTP1xpdCW4KahCWMLMucSFNKUV+23/1ENjBNa8HUb6c2iGkYAduSstnAh0y8htLz07cufG/+fCq1GXBgUwXLDVIAG8XbI30r8avs5j2WzF+OGBo4Er8nIyC3lkJaNE0yjK/QD+ARhwAR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732791380; c=relaxed/simple;
	bh=UHpZFedHEBtUcb+szMjru33LYi0CiBGsIbwkSU8NyIs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GiiJ3Z5ebKwAzliKssJ7b8OtWJvC/ZkC/PgdpZgxdiWPr/D7ewvY1J0UkzAJJOJ+DXKAPdUXTXBdotHu97eMir6b/jUwFIiWFd3Tkz426P70j0MPAnVPSTnK39j9Lh3yMxcVfK7sw3jhsdF2KPh7099InNDQZVLZ/SmLh0QPHVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=j8YcD90M; arc=none smtp.client-ip=209.85.161.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-5f1d1fdb328so283980eaf.3
        for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 02:56:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732791378; x=1733396178; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UHpZFedHEBtUcb+szMjru33LYi0CiBGsIbwkSU8NyIs=;
        b=j8YcD90MGucrKbRYkycUXRZYgEiCjq32yAiTbYrVcss7Lz0bRdSd9fpvQxG2PdTU8i
         mShDU+o00t41KOPY32JWUCG4+hBb69q8RcPb2ijQ7Qs+u/JhnEEnMGLVYR7cB5sLByNw
         3Oyyo4+OevlqcJgTZaojPj6owIbVJoL3nIEBdNtOncbSXohtHVfk6zemrJ30RBdEkYXb
         6twHE3DqZD8KneWUvUVQCR6NAQb+RdSKRMB1/FoAaonKh4rXfkhKYvkaQRZccyCloeS/
         PLRdb5CYgg0UQnNptr8qWopC6e3eMjCOX0bdlpHhW283p3oAVl8iouLcKZvn5+KlhwUs
         6BzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732791378; x=1733396178;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UHpZFedHEBtUcb+szMjru33LYi0CiBGsIbwkSU8NyIs=;
        b=RKp372YPAckwvdLQulWDvEjG3AIPwAEBTaMHMuVvrqFtFm9OE6Edd6zcBSzaOABZsW
         GlILIc9YqSvW5J/ye5/fC8i7WdrgYyPH/uiZCmyNeiPsrzxAE/1W5Jb9i8xoX/3nhRJd
         SeFpFAhPOcR3tFrOd/eQmbCM0NmZSzpl9slT+LM2C+MV82SmgelmaSPkjdp0A3KxvcR7
         zOekzJDqV4pFjCc5to4CYGS3A02pTHbIHdwIaKzF25DfHW7WyhskQlOLbUCuoeIGoc8n
         hbY1r5d3somRbbM5CdYIPJLsUJMPAa43tca1TrAixj5zSrATUu+5P94UFxxlVuZBaydJ
         daYQ==
X-Forwarded-Encrypted: i=1; AJvYcCWwGdNoQ+J9hxtdwY72Xu2cYocBN48b6B/MM6HLX3rSuEWJpi9VZ+Hjq74NquzOEEhQvN0Lk6tW5xNv@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0beZqJRW3Xpa2KqgQHfViiJKMpaCxoGOYXJMy1GNX2gC8ukjN
	fdXnHGo/V81hHy4/XBQoBwuJADu02iZyHA66st1s6BdNxfIJBko32/voJAEl5R1Glok8AYwJVnN
	SF6yXoC1q0vBLPAnEsbmzQ1qcoYdmAQtV+dwVSA==
X-Gm-Gg: ASbGncsXh2h5nFyn260vLJaAY21pMcYdTxOBZDnqPRMCrEUD/a1G0qKXyE5YzPSH7vH
	LZaoVbAq35xHXOq4Y0ZzZwz1joOMOjMko
X-Google-Smtp-Source: AGHT+IExQGgfObepg/1Hx1vn3/3ajGhOjBe+ADkPuF/jgeiOTQLuy+sihE6vDknoDDEFX2CMag6bWzzgs3MwxWCbYFk=
X-Received: by 2002:a05:6820:2704:b0:5f1:fd30:f45b with SMTP id
 006d021491bc7-5f20a275359mr5606418eaf.8.1732791378483; Thu, 28 Nov 2024
 02:56:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
 <20241127-gs101-phy-lanes-orientation-phy-v1-4-1b7fce24960b@linaro.org>
In-Reply-To: <20241127-gs101-phy-lanes-orientation-phy-v1-4-1b7fce24960b@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 28 Nov 2024 10:56:07 +0000
Message-ID: <CADrjBPrVgnS3NFVvouRYQ32xBfyYBHKAgFyhEerMzenarE3G7A@mail.gmail.com>
Subject: Re: [PATCH 4/9] phy: exynos5-usbdrd: convert to dev_err_probe
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Sam Protsenko <semen.protsenko@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	Roy Luo <royluo@google.com>, kernel-team@android.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andr=C3=A9,

On Wed, 27 Nov 2024 at 10:58, Andr=C3=A9 Draszik <andre.draszik@linaro.org>=
 wrote:
>
> dev_err_probe() exists to simplify code.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

regards.,

Peter

