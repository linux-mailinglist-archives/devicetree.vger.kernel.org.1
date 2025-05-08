Return-Path: <devicetree+bounces-175045-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A5BA6AAFA37
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 14:40:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C5F4D1C048AB
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 12:40:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3B6D227563;
	Thu,  8 May 2025 12:40:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Q7+J1Jt2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 093C9226D11
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 12:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746708009; cv=none; b=gOPMcBrC62+w3Ohp6NnLxgDx75cqNXLBT5Cuw+z8PuetmlZvQAUTkdKrBj020Ro7QW9jOclgZZpl+P7N9tzvRJlDPC34Qi4xNdYY4SuJkuPB02yNecPKnH6bMD/AQyQ/chC7rcRpy2SXsbq5fWua0XEL4d7Zzksh1uQ6D2utfQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746708009; c=relaxed/simple;
	bh=k5BZIpNSbnLLVf6GsMiXvLOEULV8LNBcK7VhrImMes4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gAwezmzY4FfQEFcgeXgAP2/6vgRTOtWkgDHEYGMAA//0YakBDo91U5riCzEoDIixoPPoEvIqGUcuHOfRmm6mLDuLg0CeZrjWcHs/Rd6oTxbgPVT0ueH7LcsKn33+D6cagCdHgM3NFf43XK3a9cwbqe8Yidq4savEyv3dvIXU86Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Q7+J1Jt2; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-3104ddb8051so9588431fa.1
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 05:40:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746708005; x=1747312805; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k5BZIpNSbnLLVf6GsMiXvLOEULV8LNBcK7VhrImMes4=;
        b=Q7+J1Jt2QiiD2hZwMmzCr9aLKbiZog6DelK3WZjUKzc5Ckbh5fKs2QL8oEfdmhuCAg
         K/6j+TI2eI3X090xIWs3im3Vio2k+qMbecXuP5dYfXA1VBAhgVBOWwsGL5FWx6jZvu6H
         3Ms0Y7rCoAidusL2T6LL9w5J1iqoWtJyk056M+4mdn5aCwlIZN3TdOkatC3SlDyJglUj
         Q0bD6tMjZKftNpzJnSGXDXNSrCC1LGD4WmmzbyW16YZ9HxP43hFP/4EYaXuNgfK/KlRn
         ur5e/z8b4OYzWPTUJlCT7G3tlMFVgh7RSBdXs60MzyT6d6evqG9eJtyjfTnD9j94i5Ac
         fN0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746708005; x=1747312805;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k5BZIpNSbnLLVf6GsMiXvLOEULV8LNBcK7VhrImMes4=;
        b=rZumzb/FAuy6a+WdKVaWsYLRDAEOQ40oeeCyd7UjapQjccuAmEAKORjNnsspXoU1E9
         aNu10EcIvNYTv9Nnsba5ClgeUsvObhVOkV3oBm3QzscYLJpKXoYdk5T3iJdEEdg9ocO/
         YcSlhKsEdhltyFWwySPTT616QMnOYmBstb2tClUo0TsrQnXwoDvOWd4Nv+M56cvPiq7s
         4IuN+Z71VbKJfjBK/KyhDOGRq4926rQx8US0xKuqlWtIqJvToz0NKC3TtQrBxgvv3N3C
         hH7lw7halY8FBMwJgK/V9x9En7W5WCMxErkO4f4kMJoLu2t1MtRiyD2vHb1rwUyEqjcx
         mccw==
X-Forwarded-Encrypted: i=1; AJvYcCW12UPFQyubusAU6id7PNLp2q07Fvf3jT7ZGBvQulhEQCn+s2DK+qDqf5DHgxAPI4DHuUMboC0pxcw3@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0zVLaS0tyWwfkF6QSjFWI/6UB+lJ5ey5aXHFmCYtMKp8iED2N
	NMFCsVvKEVsf1wCLNDL8FRPcxKCF0Ao5P4xBHE38RiGHL36KOtjUo6H3nMXx0btFWN1zw9qXf41
	GmDhvTFIXGFQtBelQN79uOjjpqxoA0cbyP50IgA==
X-Gm-Gg: ASbGnctXsTqLAdou1R5og3atFBNN6xUtExH8tIRuOFpE6g9GsPbvD6WWsqt1y/uZgfr
	4VJVFEYuIh2TOz4JM3iTBlao9bYn5fd38YOvVDSf9iGa7eYC8ZayH6xr2WUdWki0ZSyrDTgX44D
	uZVT9NS7hDx6ao3CXYnVUP5g==
X-Google-Smtp-Source: AGHT+IE9Q77Fc9oOyWJ9mYq6tNAso+9Vl6Y1CISquo5bvdrk2LvAwCog/GBR9BhmJk3ThE6vNrzoMsQVh3TPJJ+DPTE=
X-Received: by 2002:a2e:be28:0:b0:30d:7c12:5725 with SMTP id
 38308e7fff4ca-326b88dc5acmr12360541fa.33.1746708005111; Thu, 08 May 2025
 05:40:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250506092718.106088-1-clamor95@gmail.com> <20250506092718.106088-5-clamor95@gmail.com>
In-Reply-To: <20250506092718.106088-5-clamor95@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 8 May 2025 14:39:54 +0200
X-Gm-Features: ATxdqUE6Q61XCWcHKJmDK0yBWijzJI2jE1ft8w41_6SRUeW_38JBflpJsCLlEk0
Message-ID: <CACRpkdZ9_GnsH=gYFumDE4a+Ois8eSyrn=s3qVFhHA7YyV3Y9A@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] drm: panel: Add support for Renesas R69328 based
 MIPI DSI panel
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 6, 2025 at 11:27=E2=80=AFAM Svyatoslav Ryhel <clamor95@gmail.co=
m> wrote:

> From: Maxim Schwalm <maxim.schwalm@gmail.com>
>
> Driver adds support for panels with Renesas R69328 IC
>
> Currently supported compatible is:
> - jdi,dx12d100vm0eaa
>
> Co-developed-by: Svyatoslav Ryhel <clamor95@gmail.com>
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> Signed-off-by: Maxim Schwalm <maxim.schwalm@gmail.com>
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

