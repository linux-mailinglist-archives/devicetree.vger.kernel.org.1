Return-Path: <devicetree+bounces-134703-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC1A9FE520
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 11:00:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BF755162558
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 10:00:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D84BC1A0728;
	Mon, 30 Dec 2024 10:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ea0pGJaL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFEF3171C9
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 10:00:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735552823; cv=none; b=IHG9j7r75GuDSJQfnqEeRNPEIRQf502fFSsKywGFzt21cwHnWOi6cMZ3rTvdqNIaz0nu/ldrz7unmc3oY5ndsNLhwEZ4/S/GbV50BBk9Xonw17AS3DGmk5yw1XI5DVBN0SugaCahgXA/Fu3jXdpUfDoLCDmOVlpIKidG9CXIFT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735552823; c=relaxed/simple;
	bh=fOjkv1D88de8gXreGyoDFXpiiXpXl153IZ6mKq/jnkg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=bGJmtl7vD9iUZwbrNQ/9EFjUe/fklCSkuQatBTK2WV5GigNwG1xSiy7a5en09jbnG3ZOX9bY1Rx/hQ/YzDnIIPZ3mLY8vpCDZisHKOH7udyzIOjaf6+Gtg4NWpbyfjhVSs3WcXLQa3AC+9/NSqFQwcZ4zotu2+/o7qfRkj6NPKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ea0pGJaL; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4364a37a1d7so95637255e9.3
        for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 02:00:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735552820; x=1736157620; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6jfp9SmUDH518VNnaMu3qm3fIwFvpgmQiefan0yTgrM=;
        b=ea0pGJaLhCFCgcWhCmLkmnlbEHaGlZZCpihjRg6vLospFJB5tIhzQ8N0wXh9KfgNTU
         OX9Z8fGnooUw1kD7mLsQE/Cc/BYPpBxp8U6MI04fuohm9TeBBSJV7ExzsLJb/0IiwOU/
         hcXIrC7qt6Bgmrw7xdtyI1PrJc9NXSWC4RTBh/PK0iajQrUwb3/jFJllNaNdb5b/YrHU
         iu8IP8yTxiyk81jht7Cezh4UaK7ipniYUqU7XszeLgDrFwFyMCdNeuMKSPACIDC4kWH1
         sKfeQLjqJBtYdYtqaDSnzf/1F7S5MbN6BHtQp+3+3cJBs5yMatlB6jVTWJNAzzOXH+3L
         aFpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735552820; x=1736157620;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6jfp9SmUDH518VNnaMu3qm3fIwFvpgmQiefan0yTgrM=;
        b=rBcSN7IMLDQc0GJOxiBLC20sKJu3O+iHgg2/52PWuLcCRPxEJ+GzGvfcrVPVNQaaUH
         sWNKc3zEq9ybl4uX5/nGK3xhiBsSfogFaBOb31Rb7WXb6hVXk5Ckyjhx/3g62CQJ0Ftr
         mRygFpBPV3HySQcNO1iIY3Qah5eOQruqY45kJBkREOhPeCrMG7aFeVucd9LLEEdkbBxg
         FyVDfd7Hfn4XfG5LwRM+iDDwJ/bTIZJKukQ3hKQKNofdDseC323KdXHjEFqOg1miq5c6
         Q2f2oV9YvQ9WF5Q2rRYN+25n7Hj1q3K3DhSIIamZ73RCyJhfoducDzhAf0Kh/Fn/gT5t
         1Kqg==
X-Forwarded-Encrypted: i=1; AJvYcCWuPT8OkPlkzC6JVFiIViPF6s0v6CCjfOsjk3giD/B5pkV6pu4FpBQdrwxfCko25K1Pb3VtlDkzJoaI@vger.kernel.org
X-Gm-Message-State: AOJu0YxwF0H3d8qKWt9a4ytFvcRFrRQwowv+gKTQ+7iMdR4sVcd43fVl
	D/8QPpoZj3ULkyx5ipHvSNIcdHwpEINEjvWtGrq4tyK4hkk5xUnx97OvaV/zQepZTcehpck8x0X
	x
X-Gm-Gg: ASbGncvZ373rg1bxcuLektiC+ei8z4fX71qBTb2Z0pvDIScMQSKf+6WqdfoGKvPF8Hl
	ADAedC0UPMuhd1Fv07QqUe+MUnrAw2SPACZsBhVU7cJKtfsqZvOhGYdH9wgrzJCgmZemx5h7Jt0
	UYpdCPJ2r/45fB0fp5DSggCBVPHu1+rkKp+NUAI0Nabm/MGQZNmS2X1az+dYYiW9OyAbnK1itTJ
	Ckbo0zGLNldn1eWQSLXiKG4vXwUk7fA5WYznwSPlt1xXcanZQ+t+YM6BznIig+3VVSs6hW02WPW
	BQ==
X-Google-Smtp-Source: AGHT+IEuGi6MCYipXIk5Q5oobmNxWaU1dKW0QbR9Td99CaPeqsk/klM4UWZLTAwld9MSa5fELHIXHw==
X-Received: by 2002:a5d:5e09:0:b0:37c:d23f:e464 with SMTP id ffacd0b85a97d-38a223f75bdmr31618551f8f.38.1735552820388;
        Mon, 30 Dec 2024 02:00:20 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4365c08afcbsm360576575e9.21.2024.12.30.02.00.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 02:00:20 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: linux-amlogic@lists.infradead.org, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org
In-Reply-To: <20241226220352.965505-1-martin.blumenstingl@googlemail.com>
References: <20241226220352.965505-1-martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH] ARM: dts: amlogic: meson: remove size and address
 cells from USB nodes
Message-Id: <173555281977.2076800.1598444993782802807.b4-ty@linaro.org>
Date: Mon, 30 Dec 2024 11:00:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

Hi,

On Thu, 26 Dec 2024 23:03:52 +0100, Martin Blumenstingl wrote:
> The only board that actually requires these properties is
> meson8b-odroidc1.dts but that already sets it on it's own. Drop these
> properties from meson.dtsi because otherwise they can cause dtc
> warnings:
>   /soc/usb@c9040000: unnecessary #address-cells/#size-cells without
>   "ranges", "dma-ranges" or child "reg" property
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.14/arm-dt)

[1/1] ARM: dts: amlogic: meson: remove size and address cells from USB nodes
      https://git.kernel.org/amlogic/c/3a4bb81850662bebab74f1ad27071652b1825d58

These changes has been applied on the intermediate git tree [1].

The v6.14/arm-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
for inclusion in their intermediate git branches in order to be sent to Linus during
the next merge window, or sooner if it's a set of fixes.

In the cases of fixes, those will be merged in the current release candidate
kernel and as soon they appear on the Linux master branch they will be
backported to the previous Stable and Long-Stable kernels [2].

The intermediate git branches are merged daily in the linux-next tree [3],
people are encouraged testing these pre-release kernels and report issues on the
relevant mailing-lists.

If problems are discovered on those changes, please submit a signed-off-by revert
patch followed by a corrective changeset.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git
[2] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
[3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git

-- 
Neil


