Return-Path: <devicetree+bounces-66050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1CD8C1104
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 16:12:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 92CD21F21F79
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 14:12:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F314415E1E9;
	Thu,  9 May 2024 14:12:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="DFE1vbZu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FB3F15250D
	for <devicetree@vger.kernel.org>; Thu,  9 May 2024 14:12:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715263930; cv=none; b=sA/4upbp/w54XPv0DkrZuocKogic9v+jJwIxBFt3cNmrWGxArGEsKX8VPjSIpz9CC/z1Yoj3Mvy4GjuUGN0Itfv7X3cH7z68OVrHdPaQpuCVfJJCkdFsD2i8/K0lL3WJQQsyBHqG55xglrLpURQ93dFrtUgg9vjjRl+MJzmWLG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715263930; c=relaxed/simple;
	bh=0JbJpB7AKjp4/Tkn2k5aUr2Jt6ncTbt/GkloqD6biXM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RUvtADVqsjFBawqkyVNt4DHJYeM2CbocBoqpWzS6UuIDHSaKKK0aHfTEWOPKeH0ZPSLcHh+D7QKKq7Q8WSu4TEB+tckzM06d7xK+Cm/gqclOLhgX3LU8DNmhSHk+Ia+h+P2EaujjqkccaplueS/1uuMzKJrini6mgY5Zw59kQ4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=DFE1vbZu; arc=none smtp.client-ip=209.85.160.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-43df9ac3ebcso112061cf.0
        for <devicetree@vger.kernel.org>; Thu, 09 May 2024 07:12:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1715263928; x=1715868728; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lKYgk1K/0ztKVNzQLQfhwN4cnvKJTriQx0hD8c+rjW8=;
        b=DFE1vbZumbNPJLEmPItIxZNyGyb+dhxkYQQZrXBLWAejKDzgkLGu7g1CHJOBhCnclf
         wOu8fZWahjJn7LMPrgGjyOZ2YyaQyCKx93OS8XwDfMokRYAqYziFS9TGZrKTc/F8sDm7
         JAGS/EHzCSK844dLTTR2Sju6yLhwspOvHJgCtmLoTeSNQEfXyft+iAb+U/pDaME4tzoP
         1ZDlIeYNoAzaNxql+QOHJTqODZ8+27tg/yoJhKk92L2d7Et+9XJp6A0gf1ype4Dggd11
         3lnpvhAg0NiHFmioWDCY7lg7zK3k7GgE2MdDBK7oO58D1s2nA/HRiW83KUF3B6WpGKao
         U7ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715263928; x=1715868728;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lKYgk1K/0ztKVNzQLQfhwN4cnvKJTriQx0hD8c+rjW8=;
        b=EYlmzYx4//pO8b9pp5RKL+pYYftS1BIk2w1RXLby1KbA7g376SpaDIIYOB/dkAN9Zp
         utEZ3fiwS+EkIT9G4CsO6st8Q1Lm2QzN+zvsJTXmw88g8PUrxHyvg5SoDh0owfR69SbQ
         klD3jwXX7bZanDjUNCTNt1gMaIW+hHm7q2v0yq612hPopM1ncUiV0X69vj4yWaZ7KpQd
         GhnciGPlOmlMB6FnsVaY5BSNq6UT5cN3AzPDaSySQ7aIZmxZERv05Y/L8qttjpYrwh72
         9GCMiGryccMtFCWa1/er64TtuLBx7xuVNq1lpwm9acFRWGUWvsHxmVvRX4VGfCHXALQd
         QVQQ==
X-Forwarded-Encrypted: i=1; AJvYcCVU7Iy1bqfJqcR9LRAUab5v6hE1GdY5liAR0IKItoma64fSihZ/yXEm2UcvWt5iZbnX6e8B/+gebe2CcCXuw/pSuHIAXywllH3adA==
X-Gm-Message-State: AOJu0YyfcqTM27o4bormtOxqwdUE0xVztArmjq20fzmdZ1QL0f2vNlAg
	ITUL3i4kqK454PpevSNOrvmFOCi0gvaENzOiHo214Rdh3tz1tIY7p5iVkxsyVgwaAb2n/VgmqXV
	ptJ6EWOpDx6AgCWb2JozMBdjSmA2bg70pNER6
X-Google-Smtp-Source: AGHT+IFvuSQcG22Ig7DeauYZsrwsp+uIqjXGQRfJ1VPnduyNbUdPF39bvdjed/XkNswMRuYX8cDshnhVQDZ7qNQZMCY=
X-Received: by 2002:a05:622a:580b:b0:43a:b977:d611 with SMTP id
 d75a77b69052e-43def960973mr4096621cf.24.1715263928208; Thu, 09 May 2024
 07:12:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240509083453.14073-1-lvzhaoxiong@huaqin.corp-partner.google.com>
In-Reply-To: <20240509083453.14073-1-lvzhaoxiong@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@google.com>
Date: Thu, 9 May 2024 07:11:52 -0700
Message-ID: <CAD=FV=VfBXjgYTzNEj+szHX9-wGig9XUFVt+CkG6mXzHwZjduw@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Add starry bindings and driver
To: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Cc: dmitry.torokhov@gmail.com, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, jikos@kernel.org, 
	benjamin.tissoires@redhat.co, hsinyi@google.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	cong yang <yangcong5@huaqin.corp-partner.google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, May 9, 2024 at 1:35=E2=80=AFAM Zhaoxiong Lv
<lvzhaoxiong@huaqin.corp-partner.google.com> wrote:
>
> Add bindings and driver for starry.
> ---
> Modifications between V1 and V2:
> Kconfig and Makefile configurations added for starry driver
>
> ---
>
> Zhaoxiong Lv (2):
>   dt-bindings: display: panel: Add Starry-er88577 support
>   drm/panel: starry: add new panel driver
>
>  .../display/panel/starry,er88577.yaml         |  59 +++
>  drivers/gpu/drm/panel/Kconfig                 |   9 +
>  drivers/gpu/drm/panel/Makefile                |   1 +
>  drivers/gpu/drm/panel/panel-starry-er88577.c  | 444 ++++++++++++++++++
>  4 files changed, 513 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/starr=
y,er88577.yaml
>  create mode 100644 drivers/gpu/drm/panel/panel-starry-er88577.c

I don't think anyone is going to look at this series since it's not
taking into account previous feedback. Please talk to Cong Yang (CCed)
who is also working at Huaquin and is also sending MIPI panel patches.
Hopefully he should be able to pre-review your patches with you so
that you can learn from what he learned. If for some reason you are
unable to work with Cong Yang then let me know and we can figure out
the next steps here.

-Doug

