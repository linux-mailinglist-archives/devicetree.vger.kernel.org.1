Return-Path: <devicetree+bounces-58610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A6AAF8A28BD
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 10:04:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D6C551C21D68
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 08:04:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B65DC51C59;
	Fri, 12 Apr 2024 08:03:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ImU1UnhZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF864F8BC
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 08:03:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712908988; cv=none; b=GLjWmMwCRCpcwsVd1fkm/xO4F+oJ/bkV1iTgNH5K3nKUKwA3GjfTKYHmHk/wZ+t6Arr1e1fm/JjvNh9NjjK+ul+inoSpVntFRyqt+awac152NiTyYogPUjus2vMpK+Qw2NaFwhkeYXDVi9/jR6mt83s0/q2tg7uaqG5z7RtGdf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712908988; c=relaxed/simple;
	bh=sMvckcWEuIps2ST3PWpxhiXW6z76nnxipwsXy7cbOcQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=t+YqWJn6aYNWIR3TzGywtQekm+wS1YkYmmdzEXTaNxHiX2g608cAc0OX6WdFdLx4ShxDzR/XFWz2B8b2gVjjGif1mvCR4HYWwq7fRP0t4Zgml/1dCBpBsBrTCfwVlzzlpvKD1u13tdYuV+MV0mLgVwIiqz77agfsYw/hPMATx+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ImU1UnhZ; arc=none smtp.client-ip=209.85.219.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-dc6d9a8815fso633758276.3
        for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 01:03:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712908985; x=1713513785; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sMvckcWEuIps2ST3PWpxhiXW6z76nnxipwsXy7cbOcQ=;
        b=ImU1UnhZ2/ufccb3yzUsHb+oBUyp1yDFgtbfxbdrHFs1GwOydsjMXUnS8Kgb2sW+3Q
         y52j+zpOh+GICxPNb6G40YTu+shIpHsLlYSOr1wny73PfRqBwCwTdy+DO4VjMTiJY9qL
         izSVX2NqG4PTtxS+OxavX9kBMHgEuy2CmJbhdSghU8/rd86MVlCoCrLfL+M3hNsn1b9j
         3bA6PZNPvRveSwRovI5pjFnX79S5+gkOmKK2ne35OakGlbCCE9t5CZ2FmPkiHZAoVv7W
         aWkiqZQdRNrghu6Wm1p654K5dHYdkHZzMlsDent6VYYHCQeDxX86Es8W3oj8VFdwpKCF
         fLMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712908985; x=1713513785;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sMvckcWEuIps2ST3PWpxhiXW6z76nnxipwsXy7cbOcQ=;
        b=MXZsmR4CuvIWS6dcARJgqg47eQ+hMP4CbUuhdFeFNH07b5qP+yGMDNsEwc9DaDdQwj
         JRFxIw9s9jw5+YQT2N2i2Gh6UO5FjP6RBVyauZdWlwBAwvVyrKKcfE7EbD020Yk0nDHU
         O2Z9rozGAf4O/WobVNo07oV7TEoNWI8vbsBvxleCIzdzZ9JwRzOIymaCNQccEeKe5XS4
         vGw8u+aWkYHp6xJ15CV5ny9GZcPB4+6iUntASQWsf136ZRLqthPN3Fd8EU+xlD4Qu+v6
         qAissOARhPZ3or81p4NYU9kZuAJWl26vvWcu6TK1VGVOGgClORidOs/k8DtZIgprH9QY
         F3TA==
X-Forwarded-Encrypted: i=1; AJvYcCVh547IWqkg4anFzOh41+LYURsX2fHRqIUDiiq2JJtnhFZ9d4nGV3RmaXiWoJthV6t8z0UankeT74t+VhReK+Ur9xt6oceGSFqfPA==
X-Gm-Message-State: AOJu0YxV39iaHRY/BMdtRYKqUM0kO0ncvn8JyfBXfOZtpV10wDIgDkht
	54mp1Z6H9kfRyNXjMC9kT6aqX//KDSQqfrdTCssHWqiXoxgJQg+hDk2UrH9NWggMiushu8iISDF
	elibwCTjIeU3Zh8nc8+JXZKHyHguUEtsomaN7kg==
X-Google-Smtp-Source: AGHT+IFL6N72A/DwsiHCuflyAbDg8zkwyetqZEftIvZpoI8NkVqPM1+X6exx3vuVrRm5YMeQMMOGJ9flJp9ZQ1araAo=
X-Received: by 2002:a5b:b47:0:b0:dc7:32ea:c89f with SMTP id
 b7-20020a5b0b47000000b00dc732eac89fmr1814859ybr.15.1712908985165; Fri, 12 Apr
 2024 01:03:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240408105128.30586-1-zajec5@gmail.com>
In-Reply-To: <20240408105128.30586-1-zajec5@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 12 Apr 2024 10:02:53 +0200
Message-ID: <CACRpkdYxd2XM0Gg7DOWQHxK6c1egwcb2xZvP5QdmfC5P-8AHPw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: mediatek: mt7622: add "gpio-ranges" property
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Sean Wang <sean.wang@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Hsin-Yi Wang <hsinyi@chromium.org>, linux-mediatek@lists.infradead.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 8, 2024 at 12:51=E2=80=AFPM Rafa=C5=82 Mi=C5=82ecki <zajec5@gma=
il.com> wrote:

> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>
> Allow specifying pin to GPIO mapping. It can be find in in-Linux DTS
> file for MT7622.
>
> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>

Patch applied!

Yours,
Linus Walleij

