Return-Path: <devicetree+bounces-245692-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 50093CB45D3
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 01:46:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F2E14300A37B
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 00:46:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9DC71F3B8A;
	Thu, 11 Dec 2025 00:46:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XSsUGGEl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340A81AE877
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 00:46:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765413991; cv=none; b=rpLfcmprp7YzfQN/743wx1tZUuZ9xHMiAKdb6gCZlbQsyulVgPh1finB2kd1UHwaq7z+4CvdcgtzUCEOehQUZl5v7MCPQgAYNWYsCVSME6KbFMtxQk+Xj5fqhsZFtFUxk+sThr8fznoUaAMYcysNiK7qIxcvP+oBhTGGHwHMBUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765413991; c=relaxed/simple;
	bh=7JYkoyZtX+AYaSCjaxLjeTfpVBahhj7hlnNxgfUao1E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PDc3N7Bo8+2ocrLvqvS2MOkEtYuRNNQCw0rSvQHM8/205P6ZNczk8Ap3h+lQIWXpVDR/HK46ylpaxGanxR1wRcyjhb57di0tv5hKciaFyRJTUzIaEHfKVyR7uanZqlcEhOytILERb4ciwhGQvHRfMV7f2q2w3SvD3LOod0QqYUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XSsUGGEl; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-597c83bb5c2so285160e87.3
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 16:46:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765413988; x=1766018788; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7JYkoyZtX+AYaSCjaxLjeTfpVBahhj7hlnNxgfUao1E=;
        b=XSsUGGEl1338YU1Wgk77PXc1FsCJMjpL8aqsxrJ4gfhp0O3jp2IiDCTZgbpAMSvNnu
         V4FHKrIquSWOtNnCKzZdfRNhJ2yZYKUZQm32sDUzzHTiM5+Q68KgzzkaSko9HvkEh8Nw
         fRaR1EU/cezcky9Ma9dquhZc272H+nJUUGshcTvSslZVVl+9NEoZ97NZIxKnx5qBysub
         IjwjYiNuFkCQHGivuuVphBCW0rrOBBf/J/r+mcYnM6yTjj6PcPgVf+PVY6BvRAsaohb8
         LelgEcL9y01h592JAG8LzEWyyBbCnyHVrGHC/SBJwaoadZmjfY13No6WOcBkySHzLzy2
         6RGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765413988; x=1766018788;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7JYkoyZtX+AYaSCjaxLjeTfpVBahhj7hlnNxgfUao1E=;
        b=AZOfgH8ilrMsfXZrWVZjqFNQH146FY464TtGpXTTV3xxJLgBP52Mr66cvJu0pHIEyb
         KeJEj9YlrhEe0ciMCAAPi+LwWl+JVkXhiE4oOSWuafacu38Rd5JCHbq5K5bPIe2EajoU
         Wbifhq6QV0SqJ5hpGB7Mp2rrIC8ttQC6wifWYBTJykj/I6VdmyA2TSLO19XRjMxeHFOF
         tFciCro8MiPuwQa31SUqhsMn1pEOaBwoHtlf7zt8YYWVxFrS/FVg86iQBOO5/tXNmdVw
         ZwphrHiE4r6Oi+ZXy39NJ98eBR3ZfSErGQDHRzNITohbfvsSrTjBoDRxrwNww981oSRW
         1m5A==
X-Gm-Message-State: AOJu0YyBJBtK5GsZKwYQj/EaoWLDi2ZRHJJ6ItatBQK5X9zgVhKz24uf
	40vAIPCFz5UH2MZskFwHub1l4tG29x+y/33R1AYWc7xYugGDnI7et5gzaZj19Wt1nKTOcXH0alq
	hTfYOEMYnLrixKxEX7ffntRoiiT+Shrt2Iq80oJ4=
X-Gm-Gg: AY/fxX49lXp10OI214viO1426G/b3kKVQa3Ae2otPCSMdFucOL2nZIMOzIPMV1TrAlo
	rmH18eA8yjQ5VGPOpWj9wYhUgbX4WvvJz7dSBQ6k13eKwh6VKs6DwvjLlJCb8Tof4LGEIsAzZZ/
	NA9gIv5+bmZ4Yct8R7kH9J6KjcyF7Z6yt3KYWKcr5vP2UvPgn2nSunn/ZTBZehEk0ATEVHoqfov
	qXkv6AhNki6KKC9y4CfckxJnkEQnEvqGghtl3RrlWaVzx14vDZmIWMb0k7QJgf/FoyVYPgy4/pe
	hr4LywfdE64KOaOsFTD/5YwpooLXUL2Js9LkjA==
X-Google-Smtp-Source: AGHT+IH6NbxkTUZSljGL5UXTIkr6tHBMYOHOGf6OgfMEP2fzi2rZqXy88k3bhBA+yI5GG+va9k8Djc20ctoHh43XOXI=
X-Received: by 2002:a05:6512:3c91:b0:594:546c:431f with SMTP id
 2adb3069b0e04-598ee4bfcc2mr1798313e87.49.1765413988056; Wed, 10 Dec 2025
 16:46:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251210152000.42265-1-stefano.r@variscite.com> <20251210152000.42265-4-stefano.r@variscite.com>
In-Reply-To: <20251210152000.42265-4-stefano.r@variscite.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 10 Dec 2025 21:46:16 -0300
X-Gm-Features: AQt7F2oJTNhQYHQm4Mp3X_RNji2ahbbkHznpjmov3J1DROZAGzAUDzZ2iEMc9-U
Message-ID: <CAOMZO5B2__4qgJRni=DPxd1QoPQLwO+r9ZbdbsOWXZemVU86aw@mail.gmail.com>
Subject: Re: [PATCH v1 3/6] arm64: dts: imx8mp-var-som: Remove UART2 console
To: Stefano Radaelli <stefano.r@variscite.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Stefano,

On Wed, Dec 10, 2025 at 12:20=E2=80=AFPM Stefano Radaelli
<stefano.r@variscite.com> wrote:
>
> The VAR-SOM-MX8MP does not include an onboard console connector. The
> debug UART is provided on the Symphony carrier board, and customers may
> choose to expose any UART controller on their own carrier designs.
>
> Since UART2 is not populated on the SOM, drop the UART2 node from the
> SOM device tree.

This change is OK, but you need a patch for
imx8mp-var-som-symphony.dts to describe UART2, right?

Otherwise, people using imx8mp-var-som-symphony.dts will lose the console.

The same applies to other patches of this series.

