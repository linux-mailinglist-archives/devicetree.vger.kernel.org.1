Return-Path: <devicetree+bounces-214346-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D5BB48D3E
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 14:18:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 29CD07A2C64
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 12:17:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED6CE2FE565;
	Mon,  8 Sep 2025 12:18:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bRj0wY5v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBAC2FB98D
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 12:18:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757333930; cv=none; b=PbkjdT8Un0Rew7Zhiz2773N4nY3WbQOIJN9RMYxHSiJrDdExx20FLPFFvVDlyJZ43N0gxbxlRlxm00M3b+nGJFTS0kgJxavsJv+1XAiqBrR23nihXNr93REVDhUAyukZ5wh4WPup9teGXz7LJZmRIPHKGE/2yscWP/D08apacCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757333930; c=relaxed/simple;
	bh=D03VLSx8qWcHMylhQkNfYVr1yuDfARwAcjhSzmKUp4o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=J8VoKXwSQFFu9PBC9sZuXRJaTLzk47X44GPRhFvN/NmdFeRp/Rv5Xc09lcWBEzgomlmVtfj+N9RuWJ09vPM/m20Vi8sMnGqfgwl2ZoJJ4w3OM6lF+ViMnOwocZO8woCkWXzM35z+owaIqpA9iX8jGMgAXMt3lXaCGhk38difAcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bRj0wY5v; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-336dc57f3f2so40659641fa.3
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 05:18:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757333926; x=1757938726; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D03VLSx8qWcHMylhQkNfYVr1yuDfARwAcjhSzmKUp4o=;
        b=bRj0wY5vx42hNu/oUuC5Cm/9lcsT9/hRuPE9Oje20Z1pFGQkuaDKH+5HV2HRwmiw7T
         d4Mg6aqxBZv12/y0DQgz1/VdVODPH0Y6aRqiBtYtTIRswO+4rV88Ur4BY4B0G8j90i8Z
         U9omj4Unq5PQEoqFPMkDEfm/V5lqIV5e40nVgUeMPOkCAYF8/q3AwtIJ82pFlsojBeoO
         mgQ3f8sQifmQBTVHT+InmiABGE3jSjHwqASAei1EJdgXqpJ91hctA2wqUncnVTLPfAZb
         c2Dio9MRHOq3Kans/ajYODY0Uqg1zhjeRQa44EGSPFSv1bnPqhCzrilYn+WhYW/yop0J
         ++xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757333926; x=1757938726;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D03VLSx8qWcHMylhQkNfYVr1yuDfARwAcjhSzmKUp4o=;
        b=t+8YgYmqJB5lVrcZWM9frQE8VMMtWDunpoX+kIv6BR8rJlt2zMcJPPUVezfPg+pRDs
         Hymchc1g87NoTT4tohp78gH2FDwb2RFfVFBeZfpowCyWZ796g/qhNg88DA/0fh9jc3hX
         kzth9zqjgMw3JzM6tYux5obwVMx/IkBjyXkt/y2zj/z+F/Y0I1yXihtIjcA1Jcgo08fh
         zb3HLzFe8CyRpYwgbxv1ykmKVFSEpwk1T0EZuGeDsZ3z472xJKOt2hGdxJveV3xvp4c6
         cMAmpvwaTwbEf3hIOSTdrOrtAS20tVmktF+U9keT8ifRY90SwphByN3Ps3+MzrfZXIhY
         RKQA==
X-Forwarded-Encrypted: i=1; AJvYcCU16DQ6aa41ZoifRL8IYpRVzZvhWO4lfF1cqjKUUzO3j732olXxygnI+hdl97DMun5E0qbpxH74A96o@vger.kernel.org
X-Gm-Message-State: AOJu0YwNkps24456muu/f/VmiACIRdWUX2SdhGYVPOOraR678QlYoya2
	AWXfk5fe7jdUP84lM49ZbWc+p8H/drGAy3BxYG4n/b7+PT/VnW8DOr32FQF/99puiBTQc0Aj1TS
	rP/Z/d+71r+F4NZ7qgXML7uWyYsWq6J7ZiabnKjB9p/uAXzmrShH5
X-Gm-Gg: ASbGncv/eV5X4xDL4oKIGnuYuMzAcNVcyULSgAYczt46imd+0VOEU0CB812D6RJPZ0S
	oBuAqMXwKl/axqT+zsitcWdZJ1Utz//dMfN1mRAGufH9oMTZGkxkN0MUClcsWLNe41AvrCBPK+O
	SWnGHgcLsQSm/mEAfzrMQ/4WB+xpfd51dTrXcTvWdW6q8q7aBkT4GYmLLfEnmruyvwQq6liYTFL
	cy3AxNsRtEPODqBJQ==
X-Google-Smtp-Source: AGHT+IHM/asPiTx9epOD6oTfJGUKN67uaWlwZQ78ImQd67LcYMxVaHUE3T7Mz8CkVcX10agc5tRhs6MCp4IvPGbhEmU=
X-Received: by 2002:a05:651c:20ce:10b0:336:80e3:b1aa with SMTP id
 38308e7fff4ca-33b57396e4emr16467561fa.40.1757333926321; Mon, 08 Sep 2025
 05:18:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250903-sdm660-lpass-lpi-v5-0-fe171098b6a1@mainlining.org>
In-Reply-To: <20250903-sdm660-lpass-lpi-v5-0-fe171098b6a1@mainlining.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 8 Sep 2025 14:18:35 +0200
X-Gm-Features: Ac12FXw45K3T8l4lkY0i6QN88olXVHwaoVRfqMYPmh8yFo1l5iil-Ht1oK5lLbQ
Message-ID: <CACRpkdY2o7PB-1t5kwGFpWjDu4QfKG_gf0_pGA=V1=_KFCqqiA@mail.gmail.com>
Subject: Re: [PATCH v5 0/3] Add SDM660 LPASS LPI TLMM
To: Nickolay Goppen <setotau@mainlining.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
	linux@mainlining.org, Nickolay Goppen <setotau@yandex.ru>, 
	Richard Acayan <mailingradian@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 3, 2025 at 3:43=E2=80=AFPM Nickolay Goppen <setotau@mainlining.=
org> wrote:

> This patch series adds SDM660 LPASS LPI TLMM pinctrl driver and
> introduces pin_offset field for LPI pinctrl drivers to support
> SDM660's quirky pin_offsets taken from an array with
> predefined offsets from downstream [1].
>
> [1] https://git.codelinaro.org/clo/la/kernel/msm-4.4/-/blob/LA.UM.7.2.c27=
-07400-sdm660.0/drivers/pinctrl/qcom/pinctrl-lpi.c#L107
>
> Signed-off-by: Nickolay Goppen <setotau@yandex.ru>

This seems ready for merge if you fix the last few comments
and collect the ACKs/Reviewed-by, can you send a v6
addressing this?

Yours,
Linus Walleij

