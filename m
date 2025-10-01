Return-Path: <devicetree+bounces-222907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3CABAF50A
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 08:58:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EA1A71925E25
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 06:58:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4EE225A354;
	Wed,  1 Oct 2025 06:58:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ldnhcjb6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B6723BD13
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 06:58:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759301885; cv=none; b=DjMzaiSoYuHJi+MCW/2wZlSK9A3WJ8KPwDaeRNH06zRF5UlItsEJZWv4D2um6WoGp8nxno3EUKCr4t8nSHvzP8WJfoHI/BV4fhTnWoTCMOevp0Lw0sVcrdPFsm2HXBrojVOKisqe9P6xALRS0A8y6Oxa4JnDH95nFyhzLFqBYqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759301885; c=relaxed/simple;
	bh=hfCe8SmQAHAct7mpZyJeNqeq8O+Ruejbrp48T/gcUh4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GrTCCGDNHt+5CGFGrZz9sAwIHS5IImIDwH2yUoJsLFLr/12qweAbKJ7zgzQsGK4SDogBHIezNA/41z3uRP5cxzR44qh+1M2ThbaU+J2RQK9WsPWSyU1oQFvWak/8d02H3AsYmRxOxZpFCBhtG+GLsqZXzgBEcyVrI6TAowgpgDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ldnhcjb6; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-36bf096b092so95551311fa.1
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 23:58:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759301880; x=1759906680; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hfCe8SmQAHAct7mpZyJeNqeq8O+Ruejbrp48T/gcUh4=;
        b=Ldnhcjb61uXjdr9zylGJieG7AtCoVHGe/ndwlXeVqCx6H544qlfC1sH5cpv2fqTHI1
         RD5GlU8CPdbfnKSEgyF3giOQomDqZXaWxnJtWxXUiuX00QyUKi1AhLsVg8k2AvBQ2hia
         272ay5lBDU1ncuQ0d3X5JNdLUZL/6RpHv9av1Zx7VTILQN0gyW6oTXxsxMHdsFrDMOnM
         JLHDVEdpRMcqcFtB7aa94g3aFXWY/G2cqHbyKShv1lBpCi0q5cW0jsKyC7gbJxTTCpqC
         /2DEpllaGzlJ4okIyzBp+C8wNZRu5BACHK6iY624SuQ098FPWDfexnCLHEQnC/rwN24t
         x+6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759301880; x=1759906680;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hfCe8SmQAHAct7mpZyJeNqeq8O+Ruejbrp48T/gcUh4=;
        b=iJFv0Pi0UJudXynsDkEq1KBMsA54n11uddnpfNeo8iA8RXmGaYl1XE0iC6uWcw5+Ft
         8fY8auP3ZgpVcDh/QxxZ/KEkbrfslKWorhhjjcWoimy3WlysNQmWAP5ggluYQi4cou8D
         RlSI5qFFmMu++ywF9XeeWWOQ6xn/Jcp4ymdxJhlo3gyd68nOC4BqQUvN/TNKLKWNwEKC
         0d8LK2xQqi3+Wgf5AnpUYCYKq+hDfn9Fu9xfCHJSITy3Xrah56UpvRq/56tR0U7Z86rK
         Y5bqGy8rTvxiZzLnMndy6cAyy8/5DkzwERtGcMl0Tw56k9YayLWVqQY8BaauS1Nfx2om
         7WGQ==
X-Forwarded-Encrypted: i=1; AJvYcCVS4bK9LDdjGI5xsr/scpouTVZ5QgA9PJ+q9OjEvpnrG9/V39+1YshSy0yJF3sDQUo1KWZ9hYYo9i+b@vger.kernel.org
X-Gm-Message-State: AOJu0YyGb0/iNgdeo0hxvPsVb7D3AV6eP46lnIV7mSLAEU2p9BVjbzFM
	QHvbWYpmwO+FtpS09itErxOss8MPL529UvwzKkciFa/FtFMjORoRSFTY0U6BfWPgApBgpBLmUj7
	iKpX7NCIGlmYUuJQYsmqJW4gbjsR0sLgFvB5BXfyY1g==
X-Gm-Gg: ASbGncuclb4uFjU3Oa/4EZyVA60SoKKw6tJm+knYGGXH740ng0bJBBeLj1y/00VTi4/
	bhdNzibdsiAws2vqubhzfP4bjHwn/dPs4/b/hn+Q2gf2bJs8X8WcLGencaEBmWbRiTiGg2B2jzK
	YKU7kuSlZqvLCzpShodv4m0RWj2ELVGaGT8PEnfEcuHM+VM8r1DlXgpm34RoJqjl3HWCejx7A8b
	diqKSh4Wn0gVUQdfzwj43QoE9825bk=
X-Google-Smtp-Source: AGHT+IEFYBTk9nGSfmBNRwdlnBZfU/Sd6UTKJyGtF8VquxDEPDVY/XxX8lcgahg6Ei0VXCczWM+mbwbqwLB0jcHsDcE=
X-Received: by 2002:a2e:a548:0:b0:332:37d5:da95 with SMTP id
 38308e7fff4ca-373a7404f33mr8420991fa.33.1759301880298; Tue, 30 Sep 2025
 23:58:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250922200413.309707-1-shenwei.wang@nxp.com> <20250922200413.309707-4-shenwei.wang@nxp.com>
In-Reply-To: <20250922200413.309707-4-shenwei.wang@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 1 Oct 2025 08:57:49 +0200
X-Gm-Features: AS18NWAuz5cqgLXrZSSINvwGEDmvTaVcLOQI-X1PgOUAiEVmWUpsc5bfCXSgBKo
Message-ID: <CACRpkdbB+DfhqUE-fsz_RQ1U02+nMEhNsXrKB4bd6dvLDLjWUQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] gpio: imx-rpmsg: add imx-rpmsg GPIO driver
To: Shenwei Wang <shenwei.wang@nxp.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>, linux-remoteproc@vger.kernel.org, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-imx@nxp.com
Content-Type: text/plain; charset="UTF-8"

Hi Shenwei,

thanks for your patch!

This patch was not sent to the linux-gpio@vger.kernel.org
mailing list, please include that or we can't merge the driver.

I think the OpenAMP project should show interest in this
patch series so I created an issue in their github:
https://github.com/OpenAMP/website/issues/122

After fixing the issues pointed out by Peng the driver
looks good to me.

Yours,
Linus Walleij

