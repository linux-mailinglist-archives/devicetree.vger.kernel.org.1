Return-Path: <devicetree+bounces-121458-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 73FF09C6D07
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 11:39:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BDADEB229E5
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 10:35:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15DB61FDFBC;
	Wed, 13 Nov 2024 10:35:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="fj4IeXX4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F03F35885
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 10:35:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731494149; cv=none; b=NwZzhKcvi6Z4JVz9HukPOPG5tDvc6G6UWxMTWwkGNJmqE6AR6/itL9M81f/StCvr/e6cAMxyNBeJKH86MUJ7BgjiyjrHH6873S1zsK8/faN8HTzVL8LIhmI8pfpSWAoGWP83285Fic2XGzWuDDtRWcACn5VirnaRKensG8UObhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731494149; c=relaxed/simple;
	bh=tvSQveL4ZNKaT17R19YRy4ou5GvUrxgvspZno4PsLPI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=I5hgXhPsLGEoLF2C+qrUoPNTsaR6Xb5hsw8r1hhavHzBZStznybNr3hfqEeIRYWYZEpoKY5yDDgDn4Bko2GomQyK/iRcFGLjJYFy/sQ5ZqHHaBwjr1aBoxuQnriICGdPLsGVe37G+vaJknT9tck/F/fzNJ8Rs8abqKa9Fud7z0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=fj4IeXX4; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2fb584a8f81so60544781fa.3
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 02:35:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1731494145; x=1732098945; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tvSQveL4ZNKaT17R19YRy4ou5GvUrxgvspZno4PsLPI=;
        b=fj4IeXX4XiBLvuA2rPdndYu80VmdUg09rbAnv+dcr7MGhyAwjSLzWInBkUUJld+HEK
         WuboBVHh2ZgcyFGs1A720iiqtC5roOZwoBeg66N5NwlnYH1hjR03t/X9oAglYlE/+fLX
         D8GAvSXCRg/AMRvs3Xal0PTTM+ZYOj2uPZPbPviTuViLpkdyAzcFSMFesj0haErXCn5Z
         beDfu1GgfOCY1a7zevuQjC5O/0Yy2BLW3Eyl3mCMbn3PZIAIYJ4PZLu+Lxh1mVz+gSO6
         qdsGzbmk9XqCDBEAEdUYaPntBsuDY72/GFsgnSOqIxZv97WGvHWCL4REpf5DTHpTq68G
         bhFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731494145; x=1732098945;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tvSQveL4ZNKaT17R19YRy4ou5GvUrxgvspZno4PsLPI=;
        b=TGQCMTnB9eeC/ZxUNvjDbzXCZaNn9ffGGI6Z8B9kCavqnZPu0k9wmqCVfp8HbVcMTw
         dzxCMo1JDE+4IA0eSvFP0GBn8cHPN7qiuogDBd+3FnbODnHHYzScKICYisaiZHUSaVSI
         6pUXqqDxRYiN015U6+RT8LEwcHrC+kmrR5DzuCKfaZqDNlSXnm4qJRHfPkU0IEQd4dol
         ApbgK9SLYv+clFa0JeLvgO5llzu1xEcCuajmXjZ+66e1Bt+YCyZHLy8nf4GfMra7TcMz
         i46XCQiFbd0LPwKaMXCBBjJIATk5CZKfbZR1QMldGJ0kBwSeOjRJ8Aw/pi2tSStGwl9i
         Ko7Q==
X-Forwarded-Encrypted: i=1; AJvYcCXFuxxBcD+a7/0o3T2Y+2oN9ic4uzMaYXeerU+WTcJ/yL/rbIu4kxIgM030gluxAky4xhyDHR63RMnp@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6Td1rPmRHfMKXciC60W/oID66NQGgihflfMvM5GIb3fXv1U6M
	MY30xcUKPpuSpm1c/y9l87Q0M4ncBugvBrNvAB5hmCOwWlLki3DmnXDlanE5q4AbZxhc1TOoxVk
	FUNuR5fODkY8i5QRXrhQqr19p0ikGUcuaSkuAgQ==
X-Google-Smtp-Source: AGHT+IGO61t/piOQ54Ce2aHGK+yl3sQvYvS7vWigZwnBMLRlsxtH474c/h1XAYOCKrPLFzb2ccMr1lF7r/2+NuZ2ju8=
X-Received: by 2002:a2e:a913:0:b0:2fb:5d2c:7509 with SMTP id
 38308e7fff4ca-2ff201824damr96451511fa.14.1731494145249; Wed, 13 Nov 2024
 02:35:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241112-sa8775p_cpuidle-v1-1-66ff3ba72464@quicinc.com>
In-Reply-To: <20241112-sa8775p_cpuidle-v1-1-66ff3ba72464@quicinc.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 13 Nov 2024 11:35:34 +0100
Message-ID: <CAMRc=McEjDbhuUV9zEBfT+OUHLS3ARYFvSMau=eXsomh2yiavg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sa8775p: Add CPUs to psci power domain
To: Maulik Shah <quic_mkshah@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	quic_lsrao@quicinc.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 12, 2024 at 12:22=E2=80=AFPM Maulik Shah <quic_mkshah@quicinc.c=
om> wrote:
>
> Commit 4f79d0deae37 ("arm64: dts: qcom: sa8775p: add CPU idle states")
> already added cpu and cluster idle-states but have not added CPU devices
> to psci power domain without which idle states do not get detected.
>
> Add CPUs to psci power domain.
>
> Fixes: 4f79d0deae37 ("arm64: dts: qcom: sa8775p: add CPU idle states")
> Signed-off-by: Maulik Shah <quic_mkshah@quicinc.com>
> ---

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Which reminds me there's this comment from Konrad that needs
addressing too[1]. I'll try to make time for it this week.

Bart

[1] https://lore.kernel.org/all/06895dff-bdbf-4dfd-8f00-ee850297ec12@kernel=
.org/

