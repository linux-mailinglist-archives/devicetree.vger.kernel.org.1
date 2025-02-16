Return-Path: <devicetree+bounces-147091-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ADDBA373DF
	for <lists+devicetree@lfdr.de>; Sun, 16 Feb 2025 12:01:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E77CC188F133
	for <lists+devicetree@lfdr.de>; Sun, 16 Feb 2025 11:00:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD64418DB3F;
	Sun, 16 Feb 2025 10:59:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Oq2Y+Ggp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A00B218DB02
	for <devicetree@vger.kernel.org>; Sun, 16 Feb 2025 10:59:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739703590; cv=none; b=UfjRDTBe+okn6c5OA2Rbwg5LDOPJkFESz+mJeq5aMz11ISyQOQdzrhON8e9yBUwo+ZKl8TjgpCYldL3rNNfLQomSMnpQ9EPWoLrJ0b4dmAMH3zOjBg5ZaYu1hgnZzrg1uComLSlM1ZVp2dzQJzidv1cskHP37JNNLl9ChvNN84E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739703590; c=relaxed/simple;
	bh=LrTPNkbzHbVWVKeLoyuVqqR2fLoUWxZ3lfDMYLwSTAo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=YroPJTp57CIJFgHeQUcrJYyngFi5QudSJOpm7enLGBD3WM/Ll2Q4/7gt/FcNEUY4LN5yhxdytpMnmMPT6rv/CM0uYVl5OTFT2aIWvOS7o2ddZbZwkE3FUcSjx3gvizwhUIraU64hHfjs2WxDzoXTf+hNaTa2Ref+VJdq5HxVcEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Oq2Y+Ggp; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-abad214f9c9so30133066b.0
        for <devicetree@vger.kernel.org>; Sun, 16 Feb 2025 02:59:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739703586; x=1740308386; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D1AyJU2SefZmjgW51aej4VtriM7oYS4pHdsrSQl/DNw=;
        b=Oq2Y+GgpHCdm3y5cQkdOnI3q9d9KO+crbDaDVOUTz9zrlu3u00Q+cr+p9HnTcLnwnA
         7KXzMmegIrvpWvCX2gphAuAbSV/2AyEIbKl/rPWJhixp11WlkGrvs+oxjo2e9cm2UEFH
         AWCJnAJoeI8qxhFxZt3ioX5JCjpo3hdAjCi9MXp3TiPb6WP7nB5HA5fXe6OKkmnU83sT
         D5tEahy+BWTDBLnXogkoULx0FP/0nsWDWq4HNc90ltgnOeHj34b0AmfE6awjUp34usoI
         i4qGZVnakqnUVmqoCcojLryKLlft7g+9qzSfryTTMquX/iv/eYgvl6f3v4Yasdo1DKXu
         9jwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739703586; x=1740308386;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D1AyJU2SefZmjgW51aej4VtriM7oYS4pHdsrSQl/DNw=;
        b=mbcE0PgGUIbhw9GVQByqxvzGgskwwxvweEovLxZZBrQwpCGAZBj5H4WbqxglUL4MLe
         HfXqoJTK3HetePpaWeI/ESx63di8nBYETgC/FvqZa35vSmkAHna86D8Bjj7zC7yDWeTL
         CCoH6S5LPGGwUD4B0Q5V52C3l9sFY//pK3TdgFJl7kLEeuBWJZfnelp6Jnfd0V+utKwU
         jaw4abk6gcuhJYVOe0xfA//myzcEw0thgNbbPv4KOLnnWfQjnHtXd5yJK2D/QFmcmZnX
         gKWsdnfpHSSEh69AAVDFdIdzsr9suqMVIn7VAyypxKrRwhCHWz048RRMAvjEGA9Co4dr
         nowg==
X-Forwarded-Encrypted: i=1; AJvYcCUKztY2l1cmROrPWM3HZQj95kJSYMTSnz++pXsggEoLEgpeYbj53MixyIhXAuGmDZ19xeK7cHeBA80m@vger.kernel.org
X-Gm-Message-State: AOJu0YxB2Lum/xkUUgIDNhujCefqMNz5f3HyfB79vzD265ULafhIhOJD
	NLqmU8tq+gdTfxSsRMjaj46dlZOeTdi+sshfigpVeywWbLRhlbA6x02Sh4sZasg=
X-Gm-Gg: ASbGncscFQ8/pwMOSzv/8S+22j/5Se2azQye6IKtqNcnPyzcdMRMfJz4NkrpGKfrGmz
	UeiLMgGdFZjF3oHN3wJIHmLRgV7Rbz5jETcq6Ppp/+WsI+B5XPx6vKSgqtGmNvWFhMEis88p5lh
	FAN+1UBJhUXc/ED8qG1hCbiQb41C2lBoPh5uGZJFrhAkMAz8XqXX5QLJD5f2qNeg0jHtAK0bIna
	UFAoC5QRMucWMCJeAwNqFoK6HDyqgMf2zzpFwURJFO+UHEK0VShzmUWGKE3EBu97MTThABtGRLY
	Y8DX0TYwAWlcjNJ7jmi3g4y5WUni3kA=
X-Google-Smtp-Source: AGHT+IFefTV39A1neLhgECtLBQWnWdC3L7ZVJ1cd5nkHx/8W7pKyxsOQB1ZeilaYCi+pwtC4N7wgZg==
X-Received: by 2002:a17:907:d8b:b0:aa6:6792:8bce with SMTP id a640c23a62f3a-abb709319d6mr218337366b.3.1739703585852;
        Sun, 16 Feb 2025 02:59:45 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.144])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abb6f13b11esm310849266b.71.2025.02.16.02.59.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Feb 2025 02:59:45 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Jassi Brar <jassisinghbrar@gmail.com>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 andre.draszik@linaro.org, kernel-team@android.com, willmcvicker@google.com, 
 peter.griffin@linaro.org, daniel.lezcano@linaro.org, 
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de
In-Reply-To: <20250213-gs101-acpm-v9-0-8b0281b93c8b@linaro.org>
References: <20250213-gs101-acpm-v9-0-8b0281b93c8b@linaro.org>
Subject: Re: [PATCH v9 0/3] firmware: add Exynos ACPM protocol driver
Message-Id: <173970358411.40124.822612928338453939.b4-ty@linaro.org>
Date: Sun, 16 Feb 2025 11:59:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Thu, 13 Feb 2025 13:05:13 +0000, Tudor Ambarus wrote:
> Alive Clock and Power Manager (ACPM) Message Protocol is defined for
> the purpose of communication between the ACPM firmware and masters
> (AP, AOC, ...). ACPM firmware operates on the Active Power Management
> (APM) module that handles overall power activities.
> 
> This protocol driver provides the interface for all the client drivers
> making use of the features offered by the APM. Add ACPM protocol support.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: firmware: add google,gs101-acpm-ipc
      https://git.kernel.org/krzk/linux/c/97b9ee2972bc0060cfb4d456118699942a6847ff
[2/3] firmware: add Exynos ACPM protocol driver
      https://git.kernel.org/krzk/linux/c/a88927b534ba18019b0440cf3d7f068407b5250c
[3/3] MAINTAINERS: add entry for the Samsung Exynos ACPM mailbox protocol
      https://git.kernel.org/krzk/linux/c/8e9faeb642511ac90b8b4f6a136ca1046958a1d2

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


