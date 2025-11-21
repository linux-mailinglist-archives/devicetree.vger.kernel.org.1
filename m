Return-Path: <devicetree+bounces-240867-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EFDAC76D6B
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 02:07:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E41834E2BB0
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 01:07:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D9F022D780;
	Fri, 21 Nov 2025 01:06:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OoPymf4n"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183541C84C0
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 01:06:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763687219; cv=none; b=s9TszmmPKhgQEwyYjDwr7XYOnwYp91wglALflc1r776JJ6L/FFLMlIywUfqThg82oRQeynKe9MGVkf0RM/cwRz9nHknsU19K6RrnpoVCw4Y8YXdaoLhYQH9ncVxVOAaDTCWmEyx+h5DfjcJeZDpuAg4VzWv3VDHhCfIkoVwdZwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763687219; c=relaxed/simple;
	bh=Jt8lXkFCWKS3cFs/xChO8KZVAsJRM+PJgGHcq4dDsRQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ex7IxjX0YQ8qB7MpD81KZt53kUFZcc/+KTAsqmh8xlqU1u3HoXWLbzdAePxjFuo6CMopoB0l88t3epATOfj2SE2HbW6w7XW9CGbpN63HyqX1zP1gGHvpJ0Wei2egkvIggQ9cAanfWyvgBF8o3xtTkRdn9MVsLv40tF/Lu/1Cd8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OoPymf4n; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C091EC116C6
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 01:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763687218;
	bh=Jt8lXkFCWKS3cFs/xChO8KZVAsJRM+PJgGHcq4dDsRQ=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=OoPymf4nHgZqOFIpSZeG8gzEQRNf3ObAQprc+UhVaPDPAOKdR8V0li2kUnNkQkzIH
	 jtS9oeuIcDu1PyqiUFeB1gC9rPf3SXQD8zkCOO8ggEonSXlfFQWMSjx2TpVBRcdDmo
	 50nU1Zl7/jD1oCEmXg/yaQzogQsA34fzA/ZhA8FvP4U0qBjbFbNvluiBzl7bPyxpOk
	 1FCZ2Cqjb8ftdqDt/uaxm0opUQ55FcZU1CzIsjlELKDEh8RxQVzm3rSfb78qzmPM1x
	 bdhvNKZItUHYmeeniKdyPSJALgKAFs1vFMrl9KZlWWtCrUhOuukgQEmNHvgjuabmtL
	 JXzYyjSePzVRw==
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-64175dfc338so2684461a12.0
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 17:06:58 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV7MVwkvaksule0bXH0AQOG1Fzd65L5TDe2Ju/yGw4R2im+FGSmDYqRGiBJR77+Zl7+5eMIpIY5zqA+@vger.kernel.org
X-Gm-Message-State: AOJu0YyeIAOvs1dWi24evWzrGUV9IT+p/uQet5rgQgkrU2dY8ty0kuWE
	h+ulQVdbr7tAdVuyDdHfOqLGjKZvJ9VWtLEqHLOdAIJdO2btdM9huRsFkD07+Yhq6c5xbU1+che
	zJ9nkV3IchJcNa7yL0LUV/Tp0JldpxQ==
X-Google-Smtp-Source: AGHT+IEr8UNZJdEEJXzbvLODQi82/EawVSe13I+a/Ug5TSwMKyLWH/s20rCyByBisR0z44L15MdZI5LUMFD2YBNHrB4=
X-Received: by 2002:a05:6402:3246:20b0:640:c640:98c5 with SMTP id
 4fb4d7f45d1cf-6455469d112mr494423a12.34.1763687217400; Thu, 20 Nov 2025
 17:06:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251023160415.705294-1-linux@roeck-us.net> <176297731621.2151636.2516355929483523874.robh@kernel.org>
 <f5cc4e3e-ef66-7786-f9b5-f9d5f0846386@kernel.org>
In-Reply-To: <f5cc4e3e-ef66-7786-f9b5-f9d5f0846386@kernel.org>
From: Rob Herring <robh@kernel.org>
Date: Thu, 20 Nov 2025 19:06:46 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKzLARKeM8xP+TeVhuksth7F9p8kaU7KtRxHFe=q1Q=9w@mail.gmail.com>
X-Gm-Features: AWmQ_bmdEJ5yUUe6s_0aXrsjWn4r4713F3SQSs6LiJVNFPLHbf0H6rd0ZVsUCOM
Message-ID: <CAL_JsqKzLARKeM8xP+TeVhuksth7F9p8kaU7KtRxHFe=q1Q=9w@mail.gmail.com>
Subject: Re: [PATCH] of: Skip devicetree kunit tests when RISCV+ACPI doesn't
 populate root node
To: Paul Walmsley <pjw@kernel.org>
Cc: Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Han Gao <rabenda.cn@gmail.com>, 
	linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 13, 2025 at 8:53=E2=80=AFPM Paul Walmsley <pjw@kernel.org> wrot=
e:
>
> Hi Rob,
>
> On Wed, 12 Nov 2025, Rob Herring (Arm) wrote:
>
> > I guess the riscv folks don't care about supporting the relevant
> > features either, so I've applied it. Can kicked down the road again.
>
> For the record: we do care.  However, it looks like this problem needs a
> more general solution, something that applies across CPU architectures.
> Lacking that, we might as well have behavior consistent with ARM64 - and
> for its faults, this approach is at least simpler to reason about.

The thing is that problems show up on specific machines which has
little to do with the specific CPU arch. I don't have any visibility
as to what problem you all had which prompted disabling it (for the
arch, not the kunit tests) to be able to think about a solution.
Leaving it off just means we're potentially adding regressions in the
future when we try to turn it on.

Rob

