Return-Path: <devicetree+bounces-256952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B71B7D3AF3C
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 16:36:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7B968302E15B
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 15:36:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41DE538A9B3;
	Mon, 19 Jan 2026 15:36:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Q8K9mV+c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 947B73644D3
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 15:36:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768836981; cv=none; b=spGLl1RBMkjVdxsJ6uMitmbkFz1g91GdmxNaYySU31ArjzOM4sh/N5ov9u1LUs3CMUsueu4eb7vhueztJyPML8Ie0c5eyd7ldWgbiVJkFWEsJjTFHeY8qOzPDpdn3ADi/VBjEDZa76gdgdaSGPacNjBy2j9x3uLbanFSQDzhkzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768836981; c=relaxed/simple;
	bh=KMJ5nMJfhQBbodCSUw7/slQ7OY7bXr5BnBhnNIrMmcI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=cgBtsYAGGXxksCgpTHZ3N5Jis236GzawXRhg4RrQbtQOQJJ+UH14BecL71BMrUWJjz7fsCkwCK2xczLcYYnfX2MvTj4ofNC/CmrYluIws7t9DhT3mg0oC3ETdTeV71Ry+IC47k+abXkxersgPsuH5mpf+sMpzejM1NPtWjlQJms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Q8K9mV+c; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-47ee974e230so36053405e9.2
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 07:36:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768836978; x=1769441778; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KMJ5nMJfhQBbodCSUw7/slQ7OY7bXr5BnBhnNIrMmcI=;
        b=Q8K9mV+ct0Sq4RpPjnMfWNfUvj9PaDdqwRUPWLc+HO3PGTPX+SykrB7wZOt/xptCKP
         AaHJ1Ij+ExBenLLgzChp2qzPrv28JbuxjKLtXZsoW5frkaqrTDaLmHzUPvEvzQ6z3bW+
         SeHgwEqeV8bTNCM/z/FmvhWj7WLfNKCUwnioPULeqt+FdC47eUY2o1GG17M7A85+XsJh
         Rv+YC0G+2uOn1ofqKonGDybQ6o44ECDU+q0z8zNJZbJ0RO9gqLFYlrhXZPAOMUPLd6eu
         lqcFHD3aX7cZ/0X5m34g8mc4hNxr5+9DR3Nerna05uNOlKfYSjDBPHwS6mw1+PaNU0gf
         Ot9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768836978; x=1769441778;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KMJ5nMJfhQBbodCSUw7/slQ7OY7bXr5BnBhnNIrMmcI=;
        b=rT/cJW3phGQ0snAvl045G+pDzgKKnDrRrdCONnSaHzLkAjqvM1I+w+uSXhl6vJ1Bt0
         2tJrW3ZUh2UfXV9tqagB1FLodsz/CXQ16enGpXCRVx1ekwqHeM2kv/Fy/pDulb0uMRVT
         RsmA1SC1FNVivtjR3f9ZOcjHOfZEK5RzuCmBEUoH7i4oKbJHPJVwuLTm+Bwie0pfE+6L
         w/CMr2B6hxx2fQbYNOZUe0xnKOP6QIDsAkmjR3p79i43Ixlh5on4UbXSNpRN7L28xNVl
         eqh9HlFQCqUX6+hlWIpUIhfexnFB/AlYqFd7DLYlcXJYvw1n4Lt4DIyiR7uOPFJgR7v2
         /30g==
X-Gm-Message-State: AOJu0Yxspd5STkkQEyRJL9o2hrOJ8nfeEoqa8RFyezDP4DNw9EKEvbS4
	+odaB2HoUy0TaYepojSxvz0dgEfUlI34wEXXd0TH7+hOlwaZ2hAEGnyS
X-Gm-Gg: AY/fxX7bdU6UJF5Ze7YXcpk6QD7Du3wvck2EEFD3omQdXpHGcmeoZAyhsDvKoumSaF/
	/y0giZvm3KyNK8eZmGAiXTshcwrB+2IoOMFYxmV52mXEIgbiXbYnfhkh+OAj7HJ0d7QgaOklDdh
	TypozIeezA6vhwk7UmmRU8BsdpoWUvhc8lYAMdsiSlFxfK9r6h5CSMnQlhVL9t5nQORVX38ECE3
	JgaKu77y5yqdSyaxJMg26OQGdzc0/KzAZIeE39g7xCJhKMRDEqPUJMEYFI5qSv1ZhjKvKG2bnDd
	aODjgHH09PSs/z9fE+DmLZZ/EPJnpqHb74MUd1ZqI6UPXsspbeVcgFWko7oZMyDIZ7W8BgZx7UW
	GGwoFwpfClwSeYCGS4YNux7OORxhupWN5pcANuzx53Kn1W+A99gJgy5SHIyKt5wtEKYjhN943fE
	W/Q/5p50KjpMTvq6cDcEaLnkmd66gJHusWnW3b4yW5bSx9unwoDQ+L0E1exQ0YBWbbQyPp
X-Received: by 2002:a05:600c:4584:b0:47b:deb9:15fb with SMTP id 5b1f17b1804b1-4801e350af0mr140088985e9.33.1768836977812;
        Mon, 19 Jan 2026 07:36:17 -0800 (PST)
Received: from jernej-laptop.localnet (213-161-4-198.dynamic.telemach.net. [213.161.4.198])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43569926ff1sm23614533f8f.13.2026.01.19.07.36.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 07:36:17 -0800 (PST)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Danilo Krummrich <dakr@kernel.org>,
 "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, Chen-Yu Tsai <wens@kernel.org>,
 Samuel Holland <samuel@sholland.org>,
 Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 imx@lists.linux.dev, linux-renesas-soc@vger.kernel.org,
 linux-sunxi@lists.linux.dev,
 Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Subject: Re: [PATCH 8/8] soc: sunxi: mbus: don't access of_root directly
Date: Mon, 19 Jan 2026 16:36:15 +0100
Message-ID: <5957177.DvuYhMxLoT@jernej-laptop>
In-Reply-To: <20260119-soc-of-root-v1-8-32a0fa9a78b4@oss.qualcomm.com>
References:
 <20260119-soc-of-root-v1-0-32a0fa9a78b4@oss.qualcomm.com>
 <20260119-soc-of-root-v1-8-32a0fa9a78b4@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne ponedeljek, 19. januar 2026 ob 11:40:19 Srednjeevropski standardni =C4=
=8Das je Bartosz Golaszewski napisal(a):
> Don't access of_root directly as it reduces the build test coverage for
> this driver with COMPILE_TEST=3Dy and OF=3Dn. Use existing helper functio=
ns
> to retrieve the relevant information.
>=20
> Suggested-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



