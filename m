Return-Path: <devicetree+bounces-229030-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5FBBF32D4
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 21:19:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2613C18C2739
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 19:19:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 795382D5932;
	Mon, 20 Oct 2025 19:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Kdd3YdFc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B76042C08CC
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 19:19:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760987967; cv=none; b=YSxxXHbYuF04s6ImW0xTnLd1LtwgCoAPp9S7K+DAPf5CqdxUzs83JGHP+GCZvvk/Lw3sqgVtpWg9Rv0OqEzMxNV1LSz/+ZbRlH+B8gG8yauhKaxZ9yzoXjehqj5CqWzQ3xIMTE5B+epkhhRCVhncdKPYiepSv/xveoq1XC4m2FI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760987967; c=relaxed/simple;
	bh=YXpkBBmrwSLjuLYxkx+3i4ZtUHvDplauNtUTFwWBGco=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Q1/j3vREqvNfHBc4DTeMiSzYZyGISzzZxY6+LXD4b8gbq4JD0iU9oBWjrCAb3UWNQTIbhZ7yFFPivJd/9raYig2gsJ19MCbouI2+vpvtB45kj62u5D8H8DVBwzJ5wxLB32H1FgOUitxt5C3PEZY8vGAQnstYR1YSWIC4/G7ykos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Kdd3YdFc; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-57edfeaa05aso5408604e87.0
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 12:19:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760987964; x=1761592764; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YXpkBBmrwSLjuLYxkx+3i4ZtUHvDplauNtUTFwWBGco=;
        b=Kdd3YdFcMyrvPRoxy4FtZJGCj9hQyARmmshnlMe3lA41voG47/kTWHTosvtnin9DBr
         GNrJwwhgFAR8swu8NsZO20DcnHn4uQ3PjqjFfRpQ0Lyi1e09IANp1xbX6Wb0O/a7MSII
         +/0uqxHMKFZeidtvasWZMjCyujXJNhpGS+uAYDRQdbDThvUCvXoLUe5Vy9bM9O2RIqhW
         szrXgSd8z33mdRgKgr893RnZvk3XbeoeYhDsE0fdtIcCwQETZX2utHC95pycz0p4whPZ
         +5ZRj6GSltJ71vBN3jfU0ktsX6mAxtEC51vnC1U6qXj/mJb5W7JKwl/qF115jdggm0+1
         D2wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760987964; x=1761592764;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YXpkBBmrwSLjuLYxkx+3i4ZtUHvDplauNtUTFwWBGco=;
        b=fwihqjv0nMVPxOUvnWYqoesEbzRfulT858qfJgB9tJP1kjwLV1d49t9XLowk4Xt44K
         Ij1Pzl4S5gUZtLV5yoQUEUjf/yoQZ2dBBNAZ5MevBPjEKHnq0G9r+k55GBNl9dCJQq97
         oBIZnz3vnWAArlz2RBRpe1Ibp5Axm+uMDmwhK+DhEVIxOHASxN9eQDMziaRfDlQ1v5fq
         pI0jzAyCP8LoXoT5nmKK5JT39kra4ykIKBnWue8iQ03mcMhs1qG5bZVzL11tiKmJdABx
         3bfLClFVmMdjcCp5hebVRC/U3FMloj4npY38PaMDFajji5JWAkO1mPsXyuK5OcEX8FrU
         lgaw==
X-Forwarded-Encrypted: i=1; AJvYcCUD+Ens44E/+hAgcz5stkZBL0GdrFZCjd+/flxmvYXrbOSh6Ife5o6pD/5wcv09k4chVm2kJUX02sjf@vger.kernel.org
X-Gm-Message-State: AOJu0YyjeKEC2rXK/n3OoMsO5h3R6KuhsHMzZeD2o5ovpwn93UJjvPeU
	fmGkkIxFiWXnmNN+OoUbJ06XhlOS5CMvuH0eYZGhZTv8RNskPsInSWgCGGoTKrNwWe+mPKN1AH0
	vCm3pskuPF1MZ5+fxADAb96zYxf8pHW4=
X-Gm-Gg: ASbGnctKnFRBsaHlPRXCM4NlkV26xfpCr1rlEez5V4e016O4gWzoRPbMrpV16aKDkEF
	LMOzJoyjJAo4rHj1aZoGvOsq2SjSCfOrzt2yJYWcKH2Cb+ltTD9yGy2RulZkP/swUiCkevRKj6n
	CQGPYfuDhXGzlek8IzWYdT9HeyJsm6r/ZRkgCxOrLvpOJinXOoffPFxpPoSAw3iDjR/U38S2wVJ
	OffsS4hNTmsIudZqaajPDMgK0d+bAfhhT1rAfQ79ktzUz/dqsynT+Q3iEhCRcz7h9YeP+abYFo0
	n6/7d7lWwzgBsbyCQwcNKUr884zC
X-Google-Smtp-Source: AGHT+IEvSQqoPC0w5PqHnyoNSr3taVqbpjv29jeiklwEL1fN7434TEmXmWt3EGss8QKd/DksBI8+cWWNCno4+2/Z7ZY=
X-Received: by 2002:a05:6512:1545:10b0:591:eb00:9795 with SMTP id
 2adb3069b0e04-591eb00988amr18089e87.13.1760987963720; Mon, 20 Oct 2025
 12:19:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250513-tx2nx-role-switch-v1-1-d92ea1870ea5@gmail.com> <a3833c6b-5574-4aaf-86cc-66c10801ff3a@nvidia.com>
In-Reply-To: <a3833c6b-5574-4aaf-86cc-66c10801ff3a@nvidia.com>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Mon, 20 Oct 2025 14:19:12 -0500
X-Gm-Features: AS18NWDPp-wH8uYhmDLfsUgIzuO_wAf4YraXF5LgQ1r-UO3sGLpOYdxnVLvjeiQ
Message-ID: <CALHNRZ-wcEf-3ekk0wGxdGw0O5HiTnFUwFRxyKAikQkkWDjteA@mail.gmail.com>
Subject: Re: [PATCH] arm64: tegra: Remove otg id gpio from Jetson TX2 NX
To: Jon Hunter <jonathanh@nvidia.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 17, 2025 at 8:36=E2=80=AFAM Jon Hunter <jonathanh@nvidia.com> w=
rote:
>
>
>
> On 13/05/2025 22:10, Aaron Kling via B4 Relay wrote:
> > From: Aaron Kling <webgeek1234@gmail.com>
> >
> > The p3509 carrier board does not connect the id gpio. Prior to this, th=
e
> > gpio role switch driver could not detect the mode of the otg port.
> >
>
> We should add a fixes tag here.

 Do I need to send another revision for this, or should it be added
when picked up? If the latter, this is another reminder about picking
this up.

Aaron

