Return-Path: <devicetree+bounces-151070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D30CFA4455D
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 17:05:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 60F973B4C0C
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 16:04:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0188188591;
	Tue, 25 Feb 2025 16:04:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jfM037W6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0627E17B500
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 16:04:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740499459; cv=none; b=ouxrHZfN5cy64WzHfvjrMKcYYs3opIALU0+p/u+SLy7qqYwl5gM7SnFQaKbl+XX2QnjVpCAc6XscDgU/xmSBwExlsQ5IygBedsbBrzjWDGMvbzEP9NJ7BwVLHj80e2jthyJ1Gp/W3/ZUhIlo0iXxpc5AgBqantloqLP+a+ZtKXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740499459; c=relaxed/simple;
	bh=ZWUvknXfYYLvFqt4wPTgbskSKIiWK+wf2r8m18E1vnc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FWMIdeFr55ZbY5lLt6byVJJI/eRBS/nGLfP59iVSno/YpBOzk1ydKTfZdyoL9oaSFo2uTRMOYxqm7b/IIgN6DCAeWnu1VSrNzunstyKfNvCYMOffKywENiUAZQBbImI5IsphP3XgbYj3iYZe1eE0rc9ZaIXnOC8o2GSo0e7vs3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jfM037W6; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5462a2b9dedso6883854e87.1
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 08:04:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740499456; x=1741104256; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZWUvknXfYYLvFqt4wPTgbskSKIiWK+wf2r8m18E1vnc=;
        b=jfM037W6npixrvHkU2dAPgCmCfVgmjgOFuioD0HZVD1MOfJYnZDM9FDrKA9c4NO9/o
         qip1kCOHiU+cXPSCgc+ct0ZpuOqa5iejwTQO0/5YiDrWRHLDg3mdNI/oTfEYwAbQRiFB
         ZbM3Eb8dYV30YYUmJHLU0UhhcdXKWAA9NKLXTO1XN8xz3UxpO6auieacaqnEc0OUQWI8
         YI8KTYdoxbTIs+txMrk6BC0Nd9w4Wl41wnmi4uO+YBS75iL71/Z8SkQjDAQpiXvjkwtY
         319eE2pxYCD+fUR1PecFps0A8NxWBwIkG77sNO8jjKZgMvfLU8ewNZGzEnQ6uT9P9awz
         G6qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740499456; x=1741104256;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZWUvknXfYYLvFqt4wPTgbskSKIiWK+wf2r8m18E1vnc=;
        b=UjV5TshVI4vwxsNGMMRsOMquwZDvZMXfPHFT+28y5i+HyMY68VskkWuxwwmGm83r4H
         zplEkeTfmAa9KlnSHLGhsCv0WLQMSBLILdgqzLHCPOCr9rzxfjnDBQJbqOMJJAkoQEjp
         Xr0WRVUnnKPuQU1Gp7llFN+t4IpsQxJpycUPbZTpE4Jvq+pQjA6enN0NPvgauoil3v3U
         s9k8oqX4bfNnDEcyd9OuSxm00NX1Mou0JgDWgtWfLMMpmCHURXRvcSg6M3sYi52cf0Hl
         JGk/jeBW1E+XQmMcql6Bd6MZSZz/d0QcjFFkvBaZfTgN/bd1MyPX5jLlHn4seFstyFAK
         qTWw==
X-Gm-Message-State: AOJu0YwWh1HKaKSIU5bquZmE5wuvj+gTMlMriu3tEpNSF14sItiPrI3p
	jrmfRIPUD69ZWxXVHDXChQFGOVhcnAhs4izF2qSgbShREcSVqyTwmS2EbdN1EwW57Qj+QwpZAxX
	nvYcXKu23D76jAVCM1x7YWA3iX+UusVzdU4H/5Q==
X-Gm-Gg: ASbGncvisoxzjR7ODpeic9XnH1UsmV6DWAFjBTbCG9DkAWjFvl8ltPB6OYqlfSeUztY
	oOEqvpQkIG2IbnYzYKNe8Zt5teFkNyC47PuUHGDPaG7EbkPvhic8EB3CJYloKzHZCjHbJYQzJJZ
	focgU6kko=
X-Google-Smtp-Source: AGHT+IHNL/Gah3mevPZy4cnB+3l/3UaI9egw81hpQvTsWfBgPed86olYK84spCPWAgNJnWS+LPsg/bk0GhoKPm/zotM=
X-Received: by 2002:a05:6512:3e1b:b0:545:8cb:218d with SMTP id
 2adb3069b0e04-54839268650mr7339170e87.41.1740499456063; Tue, 25 Feb 2025
 08:04:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250221180349.1413089-1-vincenzo.frascino@arm.com> <20250221180349.1413089-10-vincenzo.frascino@arm.com>
In-Reply-To: <20250221180349.1413089-10-vincenzo.frascino@arm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 25 Feb 2025 17:04:05 +0100
X-Gm-Features: AWEUYZmNsEy3fFFOlFl9Mr8FzjBUhEhxzOfrGNxvr7eNpQOWSTLd5B3Z3JZojQY
Message-ID: <CACRpkda2A-3LDM=rbdLO9F=hAnMY02a+_m0hLxp6Rp6dsHWoLQ@mail.gmail.com>
Subject: Re: [PATCH v7 09/10] arm64: dts: morello: Add support for fvp dts
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Russell King <linux@armlinux.org.uk>, 
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Jessica Clarke <jrtc27@jrtc27.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 21, 2025 at 7:04=E2=80=AFPM Vincenzo Frascino
<vincenzo.frascino@arm.com> wrote:

> The Morello architecture is an experimental extension to Armv8.2-A,
> which extends the AArch64 state with the principles proposed in
> version 7 of the Capability Hardware Enhanced RISC Instructions
> (CHERI) ISA.
>
> Introduce Morello fvp dts.
>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

