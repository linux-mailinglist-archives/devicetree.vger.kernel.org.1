Return-Path: <devicetree+bounces-249600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C14CDD224
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 00:16:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 06C5B3014AD8
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 23:16:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D5DE7081F;
	Wed, 24 Dec 2025 23:15:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="K1QO1kC8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7906224F3
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 23:15:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766618158; cv=none; b=lF+Jsl+K/EcpD5czSh0AcDrnAvAhZgrfTZ358LIZciQVkAvc/1r+8iwC9M1SgXbSSQf55MAhkJCnPiIapb+B0H7oh8H3y2opVE19VY2bbZ7VkbTqVSLnFNHM92qD5M5fGOlG6CC6vd0vqdrx1AAKqu1EyiF7AOea8LCQtSrt+LA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766618158; c=relaxed/simple;
	bh=kMksNBI4okirn91dF+40cWo6VsIqz/Y3+k9t7y0NYw0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bpgK1/+QyTZqK/HKjv1xKWkfKTKb4GEwwxuGW3uHSlUGOb8vfyJam95d3n0172LAfYVq/Mf86G+xpFNnMccW4egLccVtgIPfcuB5kfSmLA9MzcdGBGjWR4/Ylm1Cn+w0iHMnDVGvlyiOpeG2t1curA2t7IWcrcH5ja5IDNF2YL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=K1QO1kC8; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2a0a33d0585so59047765ad.1
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 15:15:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1766618156; x=1767222956; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kMksNBI4okirn91dF+40cWo6VsIqz/Y3+k9t7y0NYw0=;
        b=K1QO1kC8s7nTJvKVB1OuQZ/qKkjXmDL8EEbC/w5GH4D50xW0Sj+oBAtUIDk5YETqVj
         9FYoaSOIivG1bZ2T5PrqlymNwqobZoJblxRIlv2SrdlQ4mW7TqXO+rkxLVJ/NKYS4x/m
         P9anO4A43EVi3ADFplSJgOIa3o9/KIFtIHv49/YmTWwEO3mfDg/6XNNfxJiYBGLAalVl
         YoST3ZQBRss/ngWQ9qB6XU2oLDfGllKZKQpV4W3KzQ72UOHTlOMJLXBAKydluyYQAKAZ
         tV0NJWsKYHpKDp8TgtyTUPGGeIsUGE34wq3Han99Ang85aBdUkhio94dVIdod9yeyiVC
         H4Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766618156; x=1767222956;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kMksNBI4okirn91dF+40cWo6VsIqz/Y3+k9t7y0NYw0=;
        b=lkg+pcvSKVQqom+6FKYywpZCl4Tey3m/uKH51Y+5/9dsdn9hoB+V1cTe+aFM83AQ9R
         gCZ7KOhf77J685fF64PxOyDY/iAI2tg0f+TdSYXXf9wzrqHfV1OqSsmVc/Q1vCMX8Wu/
         GKjed9geETzQgrn1Sa+A/xDJEEdg5t4hsp7XL9nlHTKXNTRSKy4W4oVkWzlXQN9Lphy6
         B/51Pkeu7HnsXL6giv4/Fcx5rI9kyesYFp+FQhJJr8zsAEJD1x7y3r9+BJx8tU06jKvd
         L9bU76RtVra70rG3Eq5Wqgmnft+3sD1SFXlBZsiN6Og8QAH3z9FvUyIcxYeO0hinSUWs
         +E1g==
X-Forwarded-Encrypted: i=1; AJvYcCV5yoJpk+kmCl5hqweCZSog0DNkogbEf1Ib7SDdDwjDU0CF3e3wk0+bZnGn2UOnl2BrmKcTI3ku4lIj@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5qzyqRxdC4veW7eEP83U5bYZpsuNkx1Z0mBf+uq2/FbH4Ao1b
	vjg+rm/i8v5w3b6Asp0Zaek7RSqwwq+cni/i98qqXpBggPB3dZ7aRJYyn7/rjedvqFs793ySOqe
	JLWKH6nGFkKnQcOdE/8dBA1pUCEBQTYU=
X-Gm-Gg: AY/fxX5yMyVO9Tlu87xv7EOiUqSufQyh53JWFY2XAzIHEd5wq9EkYeOrqsee29GtM89
	Q2l9NOg9YfJwFFGNLT5bz5T/0xCHpspDC0GuBmkw3IK0u0EgxHRf1EHdV3ipb0YAChcOIS5s0wA
	HfK/U2A/5wCxuVJFqkjIEifuOGK+2NXh+ukRFnKIrTwsuXq5ehv893o2fUs3ignpYMqS1TEh6dm
	IiE+tJeKE4SXt7XjgNEbeNRZNNcMVzZDBxLz9Z/SQkc1F0E05QEar3+HX4GTfPAipjGKcSQMqIb
	ssaExcEiqHU3/1FjKVFC2MPbf0pk
X-Google-Smtp-Source: AGHT+IGimQCF7uDiWcIkQf5ZGHJsugq8yU99cywmoPn2usoL23Cf1mdn7HpaxV2mzn+gUNIWI2A4OkqUcmfvAbx8uk4=
X-Received: by 2002:a17:903:2308:b0:295:5668:2f27 with SMTP id
 d9443c01a7336-2a2f2205789mr144409705ad.9.1766618155975; Wed, 24 Dec 2025
 15:15:55 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251223-reset-s6-s7-s7d-v2-0-958f341449f1@amlogic.com> <20251223-reset-s6-s7-s7d-v2-3-958f341449f1@amlogic.com>
In-Reply-To: <20251223-reset-s6-s7-s7d-v2-3-958f341449f1@amlogic.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 25 Dec 2025 00:15:45 +0100
X-Gm-Features: AQt7F2r2xC2wIc6GvAUS4OY-EHPUACvAJXV_sv-Et3PrOio9vmU4SqQg3y8gAnc
Message-ID: <CAFBinCBQbpsqujgU2_xqy-=ZmPww8AbXq7Gy9ih23TmOzZNTOQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] arm64: dts: amlogic: Add S7 Reset Controller
To: xianwei.zhao@amlogic.com
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 23, 2025 at 6:37=E2=80=AFAM Xianwei Zhao via B4 Relay
<devnull+xianwei.zhao.amlogic.com@kernel.org> wrote:
>
> From: Xianwei Zhao <xianwei.zhao@amlogic.com>
>
> Add the device node and related header file for Amlogic
> S7 reset controller.
>
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

