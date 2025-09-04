Return-Path: <devicetree+bounces-213011-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D080B44677
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 21:34:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3EE77189A797
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 19:34:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54BE726C3A8;
	Thu,  4 Sep 2025 19:34:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lpQzrJpv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8487A2459C5
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 19:34:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757014458; cv=none; b=ERSuX7n3PjRKctpSnYl+9feRHsipZF1cej/bXA5tUVd1SuOLCDQwrPSr3C5tI9Am/XTQeBA2Xt5OYMhR22doRRF4EDdDeckUxe+pcQP+GT8ZNm7T07qLH9prtn7dMT53umEop0XmVXDcJLWAG+AXUt3fTCo54+nPYHrOCH2SqwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757014458; c=relaxed/simple;
	bh=clPjNzrRlrR9W8iK7IsCzqluvKE3yxrC0Jr2QIzTItE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qsyRShK9nxTVKq9+6rukGg0b/NLvac5K//QWVxihB7G6zJa95MxDw0WswFgYAK9EU4lNCKFh5Be9724n0lwa7e6tpc2SuBl9lSy6xILfW5sS1rBVv6kyYCBBpLlbdqa7L3m0fubHO3p3YP5JLMkCKJ1T2gbG2yiA46kON5QoyRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lpQzrJpv; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-336cdca667aso11945671fa.0
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 12:34:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757014454; x=1757619254; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=clPjNzrRlrR9W8iK7IsCzqluvKE3yxrC0Jr2QIzTItE=;
        b=lpQzrJpv5R031VqsaxozYtelK2+fHPlPiWcr/M/NY9bFP9+cIsIQHAEgK/97S8yS/F
         8pHAUUSAzNNelLpjKTYwELxGCiJ29kN3acRlAePIGwKh2yVC3t7LSQ2Qf4cxG70J7yzP
         lFGnuS0ji6C6mTd1QqrKoevzxgsdfhC98Q9DG9gt1uOFZ7ugk9EpxjvB89kOq7DJx2sz
         CQk71nq/uoajVuakD0UUM9ccBBNxNNO8OLJUE3Dqr64aOZIpuQ5H+ZLh6or1rMZCYugY
         5dgvNcLbOgdqsaB1BMT2Zxk744RJLWN6aepQGffHXT3S8isKQtJv7xIXOpbZtMsTzI2V
         fRRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757014454; x=1757619254;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=clPjNzrRlrR9W8iK7IsCzqluvKE3yxrC0Jr2QIzTItE=;
        b=f4tRODIrfupKPhO4qjh5xm3yrAsMG4bN5L9ri8GTSGvWH88LXxsE8KSAx3mVNCz4U8
         3p/Fqe38yG5xWaxiaKUbQ/5d8NyRKTEqClYGRHKfhBQr2njFCA6mqNtQjM89260eRDWo
         NPXzAifEM8y9tZpVj5vGj4+2A6C5htF7ip5DxTdYyPgM5iZN1odl7XKeYKVvYM/Vd8Af
         c4hyizA6aoQQottAlylh25dulJn351/aBdZk+rpqJ1Rxz7wihcO+Q8FyTQ+k2S4z7sah
         TtFnCRbSE7XA1VPEEhGY7RGZ3Ueb0e8VFMEoBUdfYSvE81AhqbZSUgU/+mV66+UF1bLS
         siNA==
X-Forwarded-Encrypted: i=1; AJvYcCXtDM1QIoTbb6U5HcVsnhZgIFlNg21JAWF9EeJCi3uHnL/KHCL4/tILy3JOGOVkPIrhMH9dYDv3JbHa@vger.kernel.org
X-Gm-Message-State: AOJu0YzeHJ/4FLxCsLhnMnqR6ltMj3aPiYaHtDK6TfD9Wyu/xQ8VjkFX
	HTi5JPqwZWfLJ+0VTjogmoV2p/IiZDDfY1MlBLOTkJPtCfqmrcFj5k6HD7Zn/oMS0O5REJjuMRK
	z7I/bTC/y97QCshN4778pU2Q6+DgIpp81UIEBaYxQlA==
X-Gm-Gg: ASbGncs9d0ZLfeFzk87aeMxQ/DJ1gKzP0KRvb8J6C37h8JL/d5Hz+IajNE3czmk42yc
	0EW8JpJ5/1d/LihMVRW90v233tFn5Naby8pFoXsfqWy8Z2kpDWTlczrERXsszzIk3hkjMetNjnU
	1AYWa/hk4Gy/pt11+y+tOpKLxQOOKTT8YstqRm0N24OoBPaaStKdtXKhcGq32lvilWsTXSKirxg
	obEpb78UjMeW4H5SQ==
X-Google-Smtp-Source: AGHT+IEM7jhXKP31Q5ndk+KiHK48PfI3HF/sr3X8hFMQjwNo5zeLcG5ihiQY4yJX8VctkDHZ0/XvKBh/j6C82Ua3sDc=
X-Received: by 2002:a05:651c:19a3:b0:336:72e1:7f45 with SMTP id
 38308e7fff4ca-336caae1d45mr49522041fa.24.1757014453579; Thu, 04 Sep 2025
 12:34:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250813065533.3959018-1-pankaj.patil@oss.qualcomm.com>
 <20250813065533.3959018-3-pankaj.patil@oss.qualcomm.com> <vxd4gr6hcbv3wmgbo3phhwserinub6y5o2dhkoaheofbwphaz7@3mkfwswaukeh>
 <9be4695b-54eb-461a-9e59-81670089ff38@oss.qualcomm.com>
In-Reply-To: <9be4695b-54eb-461a-9e59-81670089ff38@oss.qualcomm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 4 Sep 2025 21:34:02 +0200
X-Gm-Features: Ac12FXxoMfMgKe3bppQxjm3t8wtzMbd4lxjj0GXJNQiFFIQLEQle8aSsfY7NR58
Message-ID: <CACRpkdawjL1CKy776Ya_tZJaurmxRVqx98DGSUZjUWZe=Gdrcw@mail.gmail.com>
Subject: Re: [PATCH v5 2/2] pinctrl: qcom: Add glymur pinctrl driver
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	rajendra.nayak@oss.qualcomm.com, linux-arm-msm@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 3, 2025 at 11:53=E2=80=AFAM Pankaj Patil
<pankaj.patil@oss.qualcomm.com> wrote:

> This patch was not pulled in linux-next,
> commit- 9a1d01fbf43f56a02026eee44181f70108a0dec8

No you said you would do changes to 1/2 so I have not applied it,
waiting for v6.

> Does this need a rebase?

Maybe, then use my "devel" branch.

Pick up any ACKs and Review tags please!

Yours,
Linus Walleij

