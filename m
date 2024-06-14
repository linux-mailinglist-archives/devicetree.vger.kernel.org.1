Return-Path: <devicetree+bounces-75888-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C0391909029
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 18:26:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5E436288D57
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 16:26:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B96A19AA5A;
	Fri, 14 Jun 2024 16:25:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=timesys-com.20230601.gappssmtp.com header.i=@timesys-com.20230601.gappssmtp.com header.b="VyFdOtOu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2981F197A95
	for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 16:25:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718382305; cv=none; b=RG1LOFJYjf0cf5+eccLTJcrhBGWkR5xRCPar1ljWufWtkH+A2Be4UQUWIrhuLycAEpXNQ0vNtidluYsoi44lmOLZk3Dozg0HiwR5m/rVZQAWmJLbeVFOcvj786DzJ+boh0Rjlkbpb+0Do4Kfj+d2kfOAvsJ6RkNHqVM9jGESums=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718382305; c=relaxed/simple;
	bh=QCq79d13E0tz2njJOcLY9mxviKHMKKd7mCV9RIVP2Sg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NAcMtApCB3AAn6rw5aYRCby2+QqbSKCLhKdqeSoDpBQ1k38Bn091WTXikdeH2aHGAuuMfEzej8dvbWXtfD1jQJROraLV+mTI5jIEdXFB4b5Zd69J5LnpMJhmBgLtb8V7FXEJbIeBtAvsuuNrcWWyr9MC61x88q9WRy46d9k5j9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=timesys.com; spf=pass smtp.mailfrom=timesys.com; dkim=pass (2048-bit key) header.d=timesys-com.20230601.gappssmtp.com header.i=@timesys-com.20230601.gappssmtp.com header.b=VyFdOtOu; arc=none smtp.client-ip=209.85.219.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=timesys.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=timesys.com
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-6b0825b8421so14554246d6.1
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 09:25:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=timesys-com.20230601.gappssmtp.com; s=20230601; t=1718382302; x=1718987102; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AJ9BKcjtQxEX9HY4AyHldVS/pYAF0bNjL6ygRqtnenQ=;
        b=VyFdOtOu7HA7/xZDSbmFbiLFOlmquoiVqCS3U2oG70jkZS43lJ1l+iq66js25wNcBo
         xX62Y5m+KNFNhILXK2xh0hmANUtaoEdRnMFvEsYEkhlvWFBXdZKTyYRKep79xo8V2hNX
         cNFDwsBOHFlTm8yFjZrzdu7+IM511w3KIqWi3Ef0+pxJ6i5Iv+ZD6fb2TJzfXbFSK3aF
         g9XlUeIsVMRGgN0RhumBCZyu+801SL5gj73Kj5n0nyTET/l3hMjuVgT5nfkNePPr1hrs
         tEU1jXCW2wpzzgnX3wJmZSDgnde2eY5IB/mSOrTzZhIAzkrQH2FIHCOfrm62lV+T5RZ6
         qhZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718382302; x=1718987102;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AJ9BKcjtQxEX9HY4AyHldVS/pYAF0bNjL6ygRqtnenQ=;
        b=SlFvlG84YN4Pdn+/+KW3kfl7i4KXmWQBOn5UmMW03IyltPBNhGbXCo2HjYl4sQrWFS
         ttpq37+7bSZmp+UPfpNVsdPHlTV+naU0OKwCYcjr40qrDXUD1NyCsJSZdHhUBWg5GyWi
         /lcjWUeCv47Jur2Ttkw4Bo/vHQs0sK0yOALP8BhijqeKmeoqfH5+SmAZxO5zDv5KnuC0
         uUBnq6LJtBNVYKki97gKnzGiVVI9/J3YqqFxI4Jasaiz2HebiLm82+SRbUM44ZNAwN2T
         lLauY0RmXEIcxTJ0+AUV2z3/i1t6pztaJG1VT6xAW8X3xBsRmTB7CGgkldP5swlqPD3N
         KT6g==
X-Forwarded-Encrypted: i=1; AJvYcCUo6CWuvNATAAX3O/RWiSZ8grPsDWrxnPYYVXKo7zs3sccmym6SY9FIqFY3fPJoNlXsHVQ5tyuS0hl1o00Dpwe1qbWl4nljpENRyQ==
X-Gm-Message-State: AOJu0YyR1ceby2wNplZoR7CALVFJQl7ZzyoQcuFsKT7S36hGZ++6grJ3
	Okkzm38S+pmjWR4YSkBZfZm6uVJpdjDi3T+/NhOebUXHVF9pCOP2w0s0ap/vLidPJcFrBwbxj2I
	omE12quZS+rwJ0OWait1Mew8XQ6feGViTOp/tkw==
X-Google-Smtp-Source: AGHT+IFxjsSmHmfjxcdx9LWJjlcnDzbmg6MTEjpCpU1mp7pLjF7m25ZdRpimxrXWgRWc3HiQ8GE0JCG3qf8CO/aq5Sg=
X-Received: by 2002:ad4:448e:0:b0:6b0:820c:2d50 with SMTP id
 6a1803df08f44-6b2afc722c8mr36483566d6.1.1718382302054; Fri, 14 Jun 2024
 09:25:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240611094810.27475-1-piotr.wojtaszczyk@timesys.com> <Zmgor8accyAiUkUO@finisterre.sirena.org.uk>
In-Reply-To: <Zmgor8accyAiUkUO@finisterre.sirena.org.uk>
From: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
Date: Fri, 14 Jun 2024 18:24:50 +0200
Message-ID: <CAG+cZ06B+AexqvwZtNP5FX50AmghAFLa=1ebxmKLvMoyVJ529w@mail.gmail.com>
Subject: Re: [Patch v2 1/2] ASoC: fsl: Add i2s and pcm drivers for LPC32xx CPUs
To: Mark Brown <broonie@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vladimir Zapolskiy <vz@mleia.com>, Russell King <linux@armlinux.org.uk>, Jaroslav Kysela <perex@perex.cz>, 
	Takashi Iwai <tiwai@suse.com>, Chancel Liu <chancel.liu@nxp.com>, Arnd Bergmann <arnd@arndb.de>, 
	Michael Ellerman <mpe@ellerman.id.au>, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, alsa-devel@alsa-project.org, 
	linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 11, 2024 at 12:36=E2=80=AFPM Mark Brown <broonie@kernel.org> wr=
ote:
> > +config SND_SOC_FSL_LPC3XXX
> > +     tristate "SoC Audio for NXP LPC32XX CPUs"
> > +     depends on ARCH_LPC32XX && SND_SOC
>
> On a quick scan I can't see any architecture dependency for build,
> please add an || COMPILE_TEST for improved coverage.  As for all the
> other things enabled in this Kconfig file there is no need to explicitly
> depend on SND_SOC.
Ok. Later I will add a sound card driver to phytec3250 board which uses
arch/arm/configs/lpc32xx_defconfig config file so that the COMPILE_TEST
won't be needed.

--
Piotr Wojtaszczyk
Timesys

