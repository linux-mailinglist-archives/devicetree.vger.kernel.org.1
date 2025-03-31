Return-Path: <devicetree+bounces-162135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B304A77177
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 01:45:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E58D11689B6
	for <lists+devicetree@lfdr.de>; Mon, 31 Mar 2025 23:45:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54A2921B9E7;
	Mon, 31 Mar 2025 23:45:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="Rf27NY1z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6EF741C64
	for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 23:45:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743464719; cv=none; b=i0am8aiJmwJf1UV8KHO4Q6GvozVOGUODowTINAmfTsOWl9KYq0uXJgentVO9a66gvswMGml2lzbmmeZ59jJhApd3gEzu/l7TELXjd/GTn/oHY/l5o4bFCx2CIPlLxcG8Jb4AGFoNk7fW9lhlzKtCdJgLTUD4YjKVpx9Ny+6Q1lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743464719; c=relaxed/simple;
	bh=PDj01Ad9D9384LS+xvtl+DCVQ9dzZ7KWEvAu3iSEBxw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GbsrTB5Ac6h4LX1/ldCpxvkiN/dF6JVV7zXZbdYxnUH5qJLhWyrMIIKj2gIWijsCJhJ4EzY6YbMLrf/FiF3dN73Z5i9IlQI5RSCDv1oyVzmds3Btsd0f59trAHxylsIgT3Bu/6RiVlZ7jpTgpBHJelmAWyWTBaEO5pMaZVyEqdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=Rf27NY1z; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-54addb5a139so5495062e87.0
        for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 16:45:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1743464715; x=1744069515; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e04/jOZEpgcg6Qfa0s1PaOutVdlD0Cl29sqV9y8ymK4=;
        b=Rf27NY1zYJP+8THrLrEUzImw5sWzwsiOYrvg8zPWfeW1p7DTbIfg9fnJT4uh8lFqjx
         +M7ZA5o8B+QbuklLVZjDsNbMD2hByRdmSSYcAUcSn2g9frZDAcIVhncaaybv+ClHVNLC
         Zx4CUYKHvq0yFfaHiUqieKOYYmidzwUDHy7d6iQmuwNnIDzCtC09fuUVgs7iSXiXgRkJ
         mEFIvYyT4dfRC8whLtISmwVcWpk8c00alolz+pDFLtr//BDBVT2tfGiXGdZwxIjxzm68
         Cttls58FZhk53QFIbMN4WQQqTM087Su/byUUqsP4uMjb22IdfULK25b85DjfccrNCJ8l
         cy9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743464715; x=1744069515;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e04/jOZEpgcg6Qfa0s1PaOutVdlD0Cl29sqV9y8ymK4=;
        b=I7UFB637Y3hDkvkYHvG2QQf8m+Mgdy7Sr6fR10UxuvpUddKYBhKLESqSbSJSUNr/fi
         vjHVtYrSnZLn6Jy6NcuWz1xdrYLxq2X42nFqXLqINGL7DsCWeJJ2ZlBVh2++qp7q/gjC
         pD6GFJtTZWRyvszStjyxu9f+WXXRblogTg4CshYuuypAeLo5IU6sHMAxTulaLaqZ5mLU
         HRFkwGTTzxXFlmVLNTWrJj6WrSORwtXYmOK1XRqlk/uYZaqXp02tkkCbZcLW0c7artjm
         pH2Abvhi/zKg9rgUgbfhNCcSgTxv2wORzakOrLZm0ZgjLHvzdUTCBnki9u7bgWK5YDhT
         LIEw==
X-Forwarded-Encrypted: i=1; AJvYcCV6Hn2SNmOAlmqYsDCcp+1gKxhLhLV/gp87zSoXj2d2PenrksLYGW80SNOJpqOU68BBwvgwBMQSFUnH@vger.kernel.org
X-Gm-Message-State: AOJu0YytNmPc2e9RwncHWp6kFeuzqlZgw2jAp/TDVMtzkiQIU4Eb6uKz
	4h7FijoX0hi6kN0fvujDGfk8b6nCIDEQUDNr+NZWJkIPdoJ09y+E6zEMPGrpdZ6LlykoYqOunUl
	ebENDool/NqW+uz0oyXk3xWPcwnXQJ2npqak=
X-Gm-Gg: ASbGncsUl+pGJ01GXsBtLoS1ITM67pORsxsnl6q0sW2x9sQEuUjWRE4ul26Qyl4skQ1
	GgolwiX24O//9olVM6uVkRFI6zzP5dbqIRS2TyZOY5lIZiUkhpKPl8AX7rMSxO5Ter0f52Su6a/
	EPc9xZqGhkAxmtWKL689Ur4DIWd3HOFa2tb+VmsFRRzZc4XqF9k/zat+4=
X-Google-Smtp-Source: AGHT+IGKxk3GQ1L9qdBB81JDCx4Bq2Dj2b06TXN+b9tb6Ea14RgDQquGhJcn7FWqUTKnzxE9oIWAc1dXzRqRgDpEaRk=
X-Received: by 2002:a05:6512:3087:b0:545:532:fd2f with SMTP id
 2adb3069b0e04-54b10dc4647mr3518759e87.12.1743464714691; Mon, 31 Mar 2025
 16:45:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250331230034.806124-1-willmcvicker@google.com> <20250331230034.806124-4-willmcvicker@google.com>
In-Reply-To: <20250331230034.806124-4-willmcvicker@google.com>
From: John Stultz <jstultz@google.com>
Date: Mon, 31 Mar 2025 16:45:02 -0700
X-Gm-Features: AQ5f1Jp34FTtnvs1g4RVHb7nLo-iWvkEtBdosqwvf4UXMVf7403MXs4PKlQvGmM
Message-ID: <CANDhNCqNqXfGgvo8vNof1qi3E3jejk5KBD=oedZp2_p8RKZdjw@mail.gmail.com>
Subject: Re: [PATCH v1 3/6] clocksource/drivers/exynos_mct: Set local timer
 interrupts as percpu
To: Will McVicker <willmcvicker@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Saravana Kannan <saravanak@google.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	Hosung Kim <hosung0.kim@samsung.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 31, 2025 at 4:00=E2=80=AFPM 'Will McVicker' via kernel-team
<kernel-team@android.com> wrote:
>
> From: Hosung Kim <hosung0.kim@samsung.com>
>
> The MCT local timers can be used as a per-cpu event timer. To prevent

Can be used, or are used?  If it's an option, is this change important
in both cases?

> the timer interrupts from migrating to other CPUs, set the flag
> IRQF_PERCPU.

Might be work expanding this a bit to clarify why the interrupts
migrating to other cpus is undesired.

> Signed-off-by: Hosung Kim <hosung0.kim@samsung.com>
> [Original commit from https://android.googlesource.com/kernel/gs/+/03267f=
ad19f093bac979ca78309483e9eb3a8d16]
> Signed-off-by: Will McVicker <willmcvicker@google.com>

thanks!
-john

