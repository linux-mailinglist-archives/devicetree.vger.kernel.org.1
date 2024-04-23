Return-Path: <devicetree+bounces-61821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CC66E8AE537
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 14:00:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6C0E91F240B3
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 12:00:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66A5485285;
	Tue, 23 Apr 2024 11:45:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AfKbM8bu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBB2D84FD5
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 11:45:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713872738; cv=none; b=XmUhJ4yAv9ToQCKX3nP6oNQFM/GgsJlRgdQ4u09C/XmPQrryfzVpSkMKz1kywEsCi6QV2Vtm7JP05bGPukOa88ijARjfE3c/fRXIjJMrfdSEwS9BubxC+hIhR5UbKJVD8scx6hcUOr0+ApULpbG+ZYrs3OqmA+vD+hp9hq0+nmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713872738; c=relaxed/simple;
	bh=H/lqfoUoA9HGgdB95eqbp0XOknmbVzTFVNMtslGHyOo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XxFiCr+xe5wAvVYzzH7XfkwBZVs2l1IGZKkbFAbawayEOYYCY6557FwZOngzvjPsvT0aA1O4a9pRBwNjypysSGWEpVo9FzPDJInSriUTFd4j18HaZU7R+o5mtU4Y6t5NA35b8Kq1CKSU6QrcgxSEroNmlL/UyrwUous2+C70aHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AfKbM8bu; arc=none smtp.client-ip=209.85.219.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-de47485532cso5364380276.3
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 04:45:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713872736; x=1714477536; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H/lqfoUoA9HGgdB95eqbp0XOknmbVzTFVNMtslGHyOo=;
        b=AfKbM8burmrYa/7jVYVH/4TGBjJg5OuSby/3zEeHeblt/rS+wnycE2hAxV9zqg/MSR
         ZwTnzsZKJ2Ch/z5x2mwzpfoj+/P9DSZ55zrvE3t9f9WRaSmvsuVP9akU59QtRyK7PlKq
         RGgP5dYrGYjWNUF6W8vPBzVyO9jCCHbaEInEmVHtQQaLfRtaB8aXqAQRqyT6y/anehgr
         AjabqnUxdIl//4kARlnRRxF2t77fEuMBDMBsMB89KKo/uoba+W0r8qSNy8anMG9LDIti
         vti0Cqhrfyt73wqtY0fYkYVt2aMlHy7bFOgC0betgQsQ09k70I14K3HRzcXnKRpVIPg6
         8v6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713872736; x=1714477536;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H/lqfoUoA9HGgdB95eqbp0XOknmbVzTFVNMtslGHyOo=;
        b=BPFEqjHl6oO4ZW0NCQw6Q8ypzTSashrtYPnlhjQC20H1v0JZKSxW2X5j0iFb/dc1/Z
         ONL15vsPwQ+fQ4X1NjjsiLRoP8tHvUwzZXI7EYxyb/fZlTLJt7y6ml90+3EX1qVaiYjt
         vr+i2cMw62QFOfLJJs2py+31L2HKbxVnQ7MOjsAtO2Ndxd6zW4umuIdPzRml2jbG5TDG
         6F3M6Fkf6ZxbmLZYORCSVd5HMvZipnQURdnvBeCAMOtV9G2cUf9Z06nIOnzYybBtdWRR
         TK2jBs2TX6BKq3KyghPEp/d6M+kXWNrNmRho8R7WGj5jV7J1+2KHRa56l5XknGAob1qd
         OWMA==
X-Forwarded-Encrypted: i=1; AJvYcCUfnvyFzkYFO7AYPXGsr26ZufMOZiHOuJjAA4Q6/OH1PbvUesh0QtFT+mqQkAYGa9wdNeRSRsKrPVQIQKorP1Aj7pcZHUv363oLbw==
X-Gm-Message-State: AOJu0YyUN+bKJ+2k65D1NgSlkfzHK9jZNkz5LvzDDEZxJyfWZreA17be
	oBM00brleYMtdrwjODzFGXyCTfkHcrjjNvy2zUnql0aYZ51o9CZyMtqJYaM+TO+Z9ArQcz1Ok+9
	QXFoDcHrlQF7sDYhnDbxs2tC+u33+300d7v7WAw==
X-Google-Smtp-Source: AGHT+IFGBNpbMUezdyLxLwzOXaa56Oqof8QOE2L4pU7kiLPOi5cb7TxXU/PCDspDWB8A0udLqZxnSJq+LvZ/jkCg5O4=
X-Received: by 2002:a25:d803:0:b0:dc6:dc58:8785 with SMTP id
 p3-20020a25d803000000b00dc6dc588785mr12771434ybg.62.1713872735756; Tue, 23
 Apr 2024 04:45:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240423110238.32148-1-zajec5@gmail.com>
In-Reply-To: <20240423110238.32148-1-zajec5@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 23 Apr 2024 13:45:24 +0200
Message-ID: <CACRpkdZp4jVa0UBAn3=eYf=m=YKtFMOA_S5ck9mbdF+mKw2roA@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: BCM5301X: Drop ranges mapping from AXI bus
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Florian Fainelli <florian.fainelli@broadcom.com>, Hauke Mehrtens <hauke@hauke-m.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	bcm-kernel-feedback-list@broadcom.com, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 23, 2024 at 1:03=E2=80=AFPM Rafa=C5=82 Mi=C5=82ecki <zajec5@gma=
il.com> wrote:

> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>
> Limiting addresses to 0x18000000 + 0x100000 disallowed describing some
> devices (e.g. PCIe controllers).
>
> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

