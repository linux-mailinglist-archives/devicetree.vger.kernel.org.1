Return-Path: <devicetree+bounces-153629-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D580A4D542
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 08:47:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2AED8170E95
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 07:45:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6F4E1F8721;
	Tue,  4 Mar 2025 07:44:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YbvYvjVL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152CC1F8BCA
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 07:44:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741074298; cv=none; b=uaZT5es+aj76zamXIZogh/SYX58ZNfeY0ynpo5Y8dBPHduuv2XpYuOvZ/53p4da2PWkg9dYXLWehFRmtTC1mmGyi+SneirsIg+CMqTsq9zJE0qFsxn4C/FtztqusclBqVJUFop4g0iMT78qCm7JYRsrF5dZryf9LJolTT41TfeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741074298; c=relaxed/simple;
	bh=cfHuVxnu7QH+sQrmblbsaaSZIKplU5CSQMSXyl7pbY0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GScbdSRTBt6faKt9X85CzwJVWsoLSxKn2M1zlr28xRNTylDfzrOK36E+1x0ffxLxmCMln2Q2MyIUA/BzDegDkx4u5gcJ+Ql7KuV1APBrdBS5uwoUygwTxgdB+xyB5qLcFHSuMpNTxh862RBBgvmY5mqI8q+Emahi/OTyLeqbrVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YbvYvjVL; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-543d8badc30so6126597e87.0
        for <devicetree@vger.kernel.org>; Mon, 03 Mar 2025 23:44:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741074294; x=1741679094; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cfHuVxnu7QH+sQrmblbsaaSZIKplU5CSQMSXyl7pbY0=;
        b=YbvYvjVL8fgaOm5gE8mSyr55SVbW8+j+kcN5MuF/RAaw1yMw6w1oLDXRNJLhwixZM0
         doFOT0sjJN+TLE8QyRTGnDUtwqVdq61ueO+YlGaIa7N7IcfEJwjqGbKts5+UFKzmq674
         eq2HE+2ZzXXfFzB0RZoVi6XjXmEuuq761hWv2+e+vXewi8N2NQAT4/nw++uctGc3uqBx
         S9Wz2eUL6WLUe82g6JXWz4uBS47xtlbOXGa3ijIhDIYr73DN3qXCJqpgqjlyz2ZXaMVC
         tRWUkOm+AX2n3vXlWOhs4q4Dtqe92n41x9DaRVkNAdZTrr03jAAiIK8/LS3v2SwgLvhT
         HXxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741074294; x=1741679094;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cfHuVxnu7QH+sQrmblbsaaSZIKplU5CSQMSXyl7pbY0=;
        b=bKraIzME7/VjHryiOQOCkzXkhF5WZVumeDzDt+qPom9YJjWiU7J4lwuy0wi0o1AwON
         TfuRWiqqjgpAI5roWomFj6F+qOvuTx4xawlO3Z4Oi4fTd2JvyP2hiFwXL5bNdBIR/DEP
         a2RF4hkx/vomeAjL1eYVQnnBnqM7/42j9GSyYQ2WrGXxiB0lxBUNyvlOQZjG4cSc26yC
         YcyMMb8Io3ZEXmYwjcjdnPBqrs2K20LuR0sYJ306Zj/07+qLMGQwKo3MxTTTaYtAJbOx
         qZUX64W65hj2liuCmuk2bIU73RELTCFipUgnPRP3lmJmHL/ycrzCcN1n5cRl5/08cctV
         aa3w==
X-Gm-Message-State: AOJu0YxKpyvYVIB3CbLKHQqFjB+IZOFPNYXszkPRzSsBvjBEAXRVK3Kl
	CLkHmVaTRs6KMJ4B7cjPmyZSq8C4/08WPmfxybhQS8MVS2QRlI7nKdaeBJszqlZr3D/h64Nz2nx
	rHfTXSJ8jxmwPleK0nTAfzgWfsVamiL6nOA6iRw==
X-Gm-Gg: ASbGncuN52epDp2Ab4Lo4v+K74zNnDJDIb+dwTQwRsS0cwtU5HOYCngmk4DdUmzrI57
	nNnCwf2j226NTgGrzaPqWtvQ7kfEk26g/BC1s3uKx9Tf57JGE+/w6T7USaMzsAbZO4ecd71o51V
	ONO5Dp13keL4eoDFRixOzEANh7aA==
X-Google-Smtp-Source: AGHT+IG8iql/N6flFoDurYfXL+6Nhzwn0YiFbdLZRbNYnXPe8GqjUr4Ij5hnxPgJ0B/99Ttu8SfLLzv3fgXxEHBiMx0=
X-Received: by 2002:a05:6512:3a90:b0:545:60b:f38d with SMTP id
 2adb3069b0e04-5494c107f3cmr6115785e87.8.1741074294122; Mon, 03 Mar 2025
 23:44:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250225-gpio-ranges-fourcell-v3-0-860382ba4713@linaro.org>
In-Reply-To: <20250225-gpio-ranges-fourcell-v3-0-860382ba4713@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 4 Mar 2025 08:44:43 +0100
X-Gm-Features: AQ5f1Jq5MmYSadltqaB__GrUY0SomfKMu5UqgXKw2WRhvMLdgoacHXmXjEzeAJ0
Message-ID: <CACRpkdYfcf0toAcU5OEKG8paOv+x4KXSNMEyVoyULpBONZq=EA@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] gpiolib: of: Handle threecell gpios
To: Yixun Lan <dlan@gentoo.org>, Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
	Alex Elder <elder@riscstar.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Bartosz,

On Tue, Feb 25, 2025 at 8:40=E2=80=AFPM Linus Walleij <linus.walleij@linaro=
.org> wrote:
>
> This adds some code in the gpiolib OF core to deal with
> several gpio chip instances per OF node.
>
> The change was prompted by the need of the Spacemit GPIO
> controller.
>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

Maybe we can merge this threecell handling code so that part
is set while Yixun is working on the irqdomain translation, I
think this could need some rotation in linux-next in the meantime.

Then the threecell irqdomain translation and spacemit driver
can slot in right on top.

Yours,
Linus Walleij

