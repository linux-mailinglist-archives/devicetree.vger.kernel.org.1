Return-Path: <devicetree+bounces-249598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F37CDD218
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 00:13:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 80996301670B
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 23:13:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 863F023E340;
	Wed, 24 Dec 2025 23:13:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="fC7O8iqR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D07A218AAD
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 23:13:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766618000; cv=none; b=F6EURPUvfjhlUr9tZwMHadIjgw3VsYc1AkHCBu3Y8hQ6F13WmDPHydCNW9V63+5/JoiYkMBeMboPUMfBYKfn4acWFq771P0E+lrdaaG9gTJfip5D6hIJDeXPU6bb6n+IeM+C8CKbF16lEw+UpGFd9THOCAqXpWef8LxTUCCiQ94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766618000; c=relaxed/simple;
	bh=39eKp0lre0iAcEwilAxe54iPna/jYDclKLk1A0GLHac=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oao5yVOGPm5dxHdd8d9/nHJDWIr0jWIuJSPJki06jU/kZ3m9DXHLwTygPTtXRTqUFc6Be+glpHRiIKtuqpByyAAf7nEXg5G0pu8/mBRSTYLimndoVOZeOrGxcIC91rN27OgFKZ6aUzSqNs7397vW/tnIWGI75g64WWF7dICYlKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=fC7O8iqR; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-29f1bc40b35so105177395ad.2
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 15:13:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1766617998; x=1767222798; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=39eKp0lre0iAcEwilAxe54iPna/jYDclKLk1A0GLHac=;
        b=fC7O8iqRkTNk0AYfKGcFMFOpLTVoQ8Vu1uWMtSw64AeRPOHibFtzAxZqyh6A/fstU9
         JQSfpWv7rQ4bdxm0Jn+I2ov5FJ9jZ7at5P1hrKCobO/ejVsPwvS1paGugoanIIVsV6Dq
         0Zi5qInKanR59ri+cwrEtugBodlXQVbf9OWISZSwKOmT6m3M1hilFhqpeeRXVoaAIizV
         Z/WMZ1GX+gB3njcZMmztx54KhPuCNH1INcrUFeAecfrndAjtvmllfGNZgayujpOepRIy
         JVeLsU53ZLZgRItn5SM0Pk8docIMub1PerNUUyXTxibSagkgehtBzz84QDQu6nEcPs7E
         maaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766617998; x=1767222798;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=39eKp0lre0iAcEwilAxe54iPna/jYDclKLk1A0GLHac=;
        b=aL88VNFpmOhMVRx7mcb1pBlHmmCCJGFupeH0/hOqAtZoRmyl//XgIm4+KKOCWfYjuU
         FPbkQQojJPFp/iDPpLjDExAxAqTm+2z0mNEw65QNUW6rP8a3resJKbUdrVndW80W3uUb
         3IljDFXUBxbShViyV6GqXCnGap70Da2YDfH6iwe3dbAKXWqOyxJIV2hddB/8fzgZUw2E
         Bb4I2vlarJyG9qzSYP1v6jL5Of7YhPt53FcPCAPLh9CfUzawxHJPmnQu3fHOXB9XtH0m
         gSQiikmdpS4r3MsJ8fB6pgUMNjbcDQxAY90xnFTLzGKB7SmZfGKToPHp9oeAr5uwGEIi
         padw==
X-Forwarded-Encrypted: i=1; AJvYcCUxW5PK9v9tAvRDEMfz3zATcOUXAxNAho9+OCCKHrFOplJ3RNTPjOWnE167wbKRKygK7a38XzHrrZya@vger.kernel.org
X-Gm-Message-State: AOJu0YybfrjM8huNLx0B1aZCsABbBl9U+eJGLT4/SOVzEN4dCVRvJbmO
	o6KzG3/dtdeNax3HSQjuis4IOSbiOPc7Jf7bQBDMqBDyhgxk1Jys+UhWcIIPt9oA7FPyLp9Wj83
	lJsUww0yaNc8NiOL5/LliOA2S7Ot7drE=
X-Gm-Gg: AY/fxX4R/146Zvu9AYRCl0vX7qzMq8+0fxYsm+4VHDLb+aDzuHs1rtNaYDF2c1Vy54v
	bfnHVQ++1dkb8xdUObGDkKWWMJRqiR744IEoO2Z1RbWp2p+ocyp9EELtdn0Hs5KgcEJmHlADTDI
	A7jBQ6MNCFxZDIrX17W3oAu2AzH1lP+QehGA5xaz0a3+hj7YeOTYokgxul+eMEnsdJ93u82LMkV
	1kkFS6fLKeUnolKUtD7kg/3ovPllCVD+jTJWK/ivd2kxmqp03r4EomgikQw14zw458X9crwiw3E
	QNTl7p2PG/n7mzkJg5T8eUMphZCH
X-Google-Smtp-Source: AGHT+IHxaT5zaSwSg9D3PpaQ1GSF383GTh4mgURyIv7jV0U9GcfwlGrz4kymRBv4+EFCWY7j+PDxnjZVzSewttnmnpM=
X-Received: by 2002:a17:902:f542:b0:2a0:c20e:e4d6 with SMTP id
 d9443c01a7336-2a2f283de1amr175122085ad.39.1766617998054; Wed, 24 Dec 2025
 15:13:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251223-reset-s6-s7-s7d-v2-0-958f341449f1@amlogic.com> <20251223-reset-s6-s7-s7d-v2-1-958f341449f1@amlogic.com>
In-Reply-To: <20251223-reset-s6-s7-s7d-v2-1-958f341449f1@amlogic.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 25 Dec 2025 00:13:07 +0100
X-Gm-Features: AQt7F2oLSwp7qGXw0Xpn9L9LA9q7ocHmFoWAO1mWuTnDqJHxHA-5n9rc1zIgydo
Message-ID: <CAFBinCDXppQNyadCJ0dbD9JQW=pRFkcJCKt8=etN+JrNdW--Mg@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: reset: Add compatible for Amlogic S6/S7/S7D
To: xianwei.zhao@amlogic.com
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 23, 2025 at 6:37=E2=80=AFAM Xianwei Zhao via B4 Relay
<devnull+xianwei.zhao.amlogic.com@kernel.org> wrote:
>
> From: Xianwei Zhao <xianwei.zhao@amlogic.com>
>
> Add compatibles for Amlogic S6/S7/S7D reset controllers,
> which fall back to 'amlogic,meson-s4-reset'.
>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

