Return-Path: <devicetree+bounces-231693-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A5EC0FCC4
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 18:54:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 74E5834FE38
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 17:54:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B499531690D;
	Mon, 27 Oct 2025 17:54:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dW7Ys6fu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f51.google.com (mail-yx1-f51.google.com [74.125.224.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BCCA3164A4
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 17:54:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761587671; cv=none; b=WVs2IQnlWfPL342FD7es01TaiqEn15qtZoiconm5dBr/sHUqujzxNgttoIAuTQt5ozpDf6XO082cNWFLuraOK+GUOWYA/OROipUjdxVgo+Tpod4AbBtZpVHFYADywSA5Ozg3+FC0ge7NH1tMZv2i4QWt9RFGB6+32kj6E0ydgrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761587671; c=relaxed/simple;
	bh=NzZdOY46K/cXCbuZL5mOuRF4mEX+BvP5cuWOMDVMv1E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Zq+Xrc3efenm1JR/2H30A6eeZZsG+BGRYKY4FZRQiZ06vCHmB9fBpubYmk7tsK6csRm+m9wKNN7kmbz7OWfOfwkU5BHiytNIUAp0/bx5/QTQPR2LCBlntWybe/VFkFbOWXOLbveaudAyKr2IZPT0OL0t9HrIviRzCJqswAxyIbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dW7Ys6fu; arc=none smtp.client-ip=74.125.224.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f51.google.com with SMTP id 956f58d0204a3-63e18577613so4943189d50.3
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 10:54:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761587669; x=1762192469; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NzZdOY46K/cXCbuZL5mOuRF4mEX+BvP5cuWOMDVMv1E=;
        b=dW7Ys6fuQJ/OfgxrAhGCzTzWb4JnoT/k27bXZtdYc5ORqZrBRH7HQl5vfKxr1U8SIf
         hjL+9BzWEumy9jCScHpXPpGhxWea4+NUvSBB1RwIp8Qaf5sX42DYDgA15xxn3WCYSP3D
         d3UT2OrHEd4OmYJ6RoI/7ThvvEK4DSUDxV3Olmbrtw7lJs3OZPKiHQivyZtGwfuVyomj
         Y/Gs5qNj4Jk/IK2skQXJDOhj0E+VnfYKjEaSKWRkOjLKOQHGXORqIy5nH92j1iDGKQVp
         2ARhW1rHDbAR1voBuv2csYh4qLL1j7cXNCOLOcTcQTHCVdMpFYorzEcR3CLdwb8WKUTy
         TBKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761587669; x=1762192469;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NzZdOY46K/cXCbuZL5mOuRF4mEX+BvP5cuWOMDVMv1E=;
        b=LNXmWQDlUEFOAPM13vfXU16UiSE/n5pOLUPaeHNOvMkVJVnJAKu837fNajj7YPT7ZF
         7hqIWGTiZCD/xIZ77oezkf5o4rqdkCi3TchO2+R64nPbY/luezNJk5vHP6RlUA5mUaaM
         X6Av1YN67Bl7yQyZjhqSTgzPDIUqL4Gh7BXPOHehWJNBh/UcsOkEoH4tpt6DocRvRlw4
         IAHg1xSIMtnrl+GBiPkti0UZzyFXcKpTAIyI/LNA2tA+zKZ5cJymkRmaghxHsWRd+SnO
         0bbbhbp0Uftk4+TP0njt554CUO4PVYWopBKbdPtpq9C8Ruk7LfNskU5Oy6lDFI4HctS9
         SgtA==
X-Forwarded-Encrypted: i=1; AJvYcCXegbYakARz0uykJ9ZJhx/DAlMs65t687t5kPjG5L/MatYT/Qh/IZUfhR3B4To19lJFUWBPIUGglFFv@vger.kernel.org
X-Gm-Message-State: AOJu0YywsZO//2ry5rFlppetcIGUfIpOlhUh+fRfGa6Jnzic7AiwcBCc
	WUObCAKpvxv+5tL0NjPPUcCBCcOeko80mnO8glHy7qRDz2G97gDIUkSmsRSWRqBY+ReSEOcdExB
	07UlE/N/hilz3QhLD+5n6HwRHoCXMv9U=
X-Gm-Gg: ASbGnct0xDq902oBGAwevnA/Y9Qlp/bOQ4SUMDl/wcHA9ebuo+qPGeAK2PVGS4+Ffdg
	gRSXAq0roI5PBiTtpbZ0XemXpm00HJqTBrEdKNZrmkGHbwLwKo7BuwsCQ3+wcsv7J4cS9QO02NO
	HfOjPq1z6haxAO716CwM8mEfQqpFIjuiIvyUc0kUeAmK8e4YmXynkj5qtKY/FydVgoKw7nN/SpX
	Zj6OqPI0q1Vup/EBvmXEzbU58MLLUX6y74ASgQcrew0fvsWWc/ItMKAI5+v
X-Google-Smtp-Source: AGHT+IE2jhHjqCkGDdKGqsiX9am1QsRUA/JalOQk0LiJJJ2IdryQKnnXMaj865zQeSCHfV+PSlsAcghri//T5UAHYaA=
X-Received: by 2002:a53:bf0d:0:b0:63e:2605:ebba with SMTP id
 956f58d0204a3-63f6b95cdcfmr540955d50.24.1761587669045; Mon, 27 Oct 2025
 10:54:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251021-tegra186-icc-p2-v3-0-1a50b526dd40@gmail.com> <c6eb8ad7-acb4-4218-9293-7ee532be56e9@kernel.org>
In-Reply-To: <c6eb8ad7-acb4-4218-9293-7ee532be56e9@kernel.org>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Mon, 27 Oct 2025 12:54:15 -0500
X-Gm-Features: AWmQ_bllUkrPIxLdGkz4quqxBqkw0vRHPN7XriNb1cvYmJGSw_0yDSZvh-TXVqI
Message-ID: <CALHNRZ-6Wp1k9zWg=B5xSt7n_9Fj9XchBq7qniKZtKHkHVouZg@mail.gmail.com>
Subject: Re: [PATCH v3 0/5] memory: tegra: Support EMC dfs on Tegra186/Tegra194
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-tegra@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 27, 2025 at 5:49=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 22/10/2025 03:09, Aaron Kling via B4 Relay wrote:
> > This series borrows the concept used on Tegra234 to scale EMC based on
> > CPU frequency and applies it to Tegra186 and Tegra194. Except that the
> > bpmp on those archs does not support bandwidth manager, so the scaling
> > iteself is handled similar to how Tegra124 currently works.
> >
> > Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
>
>
> Does not apply, please check, rebase and resend.
>
> Patch failed at 0003 memory: tegra186-emc: Support non-bpmp icc scaling
> error: patch failed: drivers/memory/tegra/tegra186-emc.c:217
> error: drivers/memory/tegra/tegra186-emc.c: patch does not apply

It applies on v6.18-rc3, but not next. Your cleanup series caused the
conflict. I'll rebase on next-20251027 and resend.

Aaron

