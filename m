Return-Path: <devicetree+bounces-151054-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F08E7A44467
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 16:30:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 280E3177CAA
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 15:29:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67B2F26BDBF;
	Tue, 25 Feb 2025 15:29:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XLNIzzc4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1E326B95B
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 15:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740497340; cv=none; b=MnaDdVI65XDnENaikqa85+nXeDyYquQb9FjVvJfYS780boJsDWvS5kLTlt3L28Mq5jk9hw0IYcPEREqvPkWHxDe2FZLdPFUW1eP5wXStMSFSyu7PGSoTsXFAlZKpvLn5ov/55ZJlw9Pc3V6zo1CoOYQYdBYNWHf0itodO3TKzsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740497340; c=relaxed/simple;
	bh=ymU4Q4V4l8CtxCLaS6y7/QU30Qeo8lyZjvxMHRi+AeI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fiKsiflFp2iZXSKR5AMna8tkajluEnnUBnJUdnINUsoBVZkx9KKtlgS8F/fGLY3mHGTQvd2B4hnPgPmBb+QbgEKlzvTpn39Dh5WuZpYGLhb9sPo5T4UdtY8xJqTgX3aUkrj3itIFeHlscLHquwzs6CeUqaSP15euArMrIYvXxBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XLNIzzc4; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-30a36eecb9dso59229281fa.2
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 07:28:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740497335; x=1741102135; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ymU4Q4V4l8CtxCLaS6y7/QU30Qeo8lyZjvxMHRi+AeI=;
        b=XLNIzzc4dZATR8dK4h7o4yGSIZATI09cLfguFtMel5IWGkv/ufP4phDMSgU0u4QK1j
         /TDd5GtPCsJIa4Lrk7+7J+iKkUq0Nt+5AFK5gWuV+QKBWz44hpTq3sHwftr0rIC1d89X
         TBHvtyfI03LH1USTw3x9ile5uy2Rxd+YxBXa5sBkdLVBpbD9adzzAgNcv43YrjwTg6eG
         2kbXbVSSkJES/la0yga5Vp13GnBATKdIeDACm9i1+HfgsN/dJcVc/GVHZGuMmiJejG5O
         1O9CEU5f5BGcp/SEjQThbI93iN2WEAhYdicE4TURUypTMaInqm2oxo6o+d35ChXH+OST
         Z00Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740497335; x=1741102135;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ymU4Q4V4l8CtxCLaS6y7/QU30Qeo8lyZjvxMHRi+AeI=;
        b=s6QLngQT7x75Yso+bUg5ocxwjkkSHiH9UobnecMixMHlr5dvbnEssW9q6T404GxLRC
         A5ehpysLa8BbDKt/FSriKh8sZJMRJH65XogVXLBHS7prVtXEK8yVP1IsWWR4tb7x/y1l
         my5zkaJ2PJj8/xEkXxr+bjNm1E+3pSO/J9T798YNBwV3b69PPYbBO4TJpj8c5MpDY2WR
         KFEtca0w8pUvnrxcISay6ya/B08d4fN/C3FrE1WoN3mjapn1Of3j+V6CfGG6aek0gye4
         kAUAkQO+1neRp6EVr5mjM0128KSNfqap/UJ+PffgmjJhC9lRpMZZp9Tq5wwg5vM7eLKn
         Bebw==
X-Gm-Message-State: AOJu0YwHjUpT0ME92sYXswZb5X/e4EW1jy0nf1EYRUEfDaCeIB5VVjIi
	CZgv3URNoXyKwJ8QIgODvjy5sPqTA4D2YBlQMTfU9ncMA/9LbwcbsbVhhDF6GPmNiW/UXM+wkP6
	63Z+KesP+ysVHV+R0P51Xci+W+EUSj46pQpyb0w==
X-Gm-Gg: ASbGncvBfWc1VDyv63UZncjGQtnICt4KIZ73YKYCY8a8wbKGe2d7tCRo8h1RT1GXQNb
	9ZMB+L7zPCuvgZXeN5wL6dEzQK+FeUZ2Ix7K0e4gQbFw+DGlsemV5FI0JciGnB60cL1UozPM9l5
	Nt8uiI1jA=
X-Google-Smtp-Source: AGHT+IGvQGYbThJryHx4S9X0G/hQwdXky4NGM+IG412kF+Oob4gqd5qSVYxirN603Nc55xdy612DJLqmzEaxlENgSHw=
X-Received: by 2002:a05:6512:3e0d:b0:545:25c6:d6f5 with SMTP id
 2adb3069b0e04-54838f5c9ebmr6533494e87.53.1740497335376; Tue, 25 Feb 2025
 07:28:55 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250220180427.3382482-1-vincenzo.frascino@arm.com> <20250220180427.3382482-7-vincenzo.frascino@arm.com>
In-Reply-To: <20250220180427.3382482-7-vincenzo.frascino@arm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 25 Feb 2025 16:28:44 +0100
X-Gm-Features: AWEUYZmYCPdOL-kTocm-qdrcGGN2FaHnyCLLC1DBvOuBsbs6HM0zSb7Of9lav7c
Message-ID: <CACRpkdZorvRd26+BPXpz0U26b0AUD4Z0PQ4RyoPi0OPyR1KWGQ@mail.gmail.com>
Subject: Re: [PATCH v6 06/10] perf: arm_pmuv3: Add support for ARM Rainier PMU
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Russell King <linux@armlinux.org.uk>, 
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Jessica Clarke <jrtc27@jrtc27.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 20, 2025 at 7:04=E2=80=AFPM Vincenzo Frascino
<vincenzo.frascino@arm.com> wrote:

> Add support for the ARM Rainier CPU core PMU.
>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

