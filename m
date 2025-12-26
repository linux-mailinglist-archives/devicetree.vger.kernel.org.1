Return-Path: <devicetree+bounces-249730-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 85888CDE919
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 11:04:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 46D0E3007FD0
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 10:04:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21A3728C864;
	Fri, 26 Dec 2025 10:04:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="F4pAphAH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60BAC45BE3
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 10:04:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766743446; cv=none; b=PpWyTUCduedvVEjxy6hTRxojtSFuMhA8Re7Q+WfiYlxZ2KPcOIG1hOpDeiyk0hyPX6X93AkcgrBcy9llHh4YB+jZUxYOA3TsxWbmpFJmbr/k15sppR3gHPHhJIGzojEr+3cvLOpQmhjDU57V73t2rCg5H9H32nQ6DGMZg0r+X9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766743446; c=relaxed/simple;
	bh=bsPlTRK85fjjyDDqOcgY783Uyn44b4lPb1UUHMFZ/co=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pP/e0DetUdlNTKAWvHnCiSvTbsLti26grD6ML1FV9QqEjbIe8wkXSVYxcEzDjWvFOWRti79Dhzh4lcfc3NMNcnFAE7bp9LgUtB7yIfM4tUHTGWyasfjxjCmbEhTXi7hZmKPpTCrTp+CV6sRvXCEgl+p4Z1yqX+cAi+A6m6x3ox4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=F4pAphAH; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-59581e32163so8365368e87.1
        for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 02:04:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766743441; x=1767348241; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c56xVey+/P0K5DvPpIeRFr1NM6R9NaOEhrxube/Xe6M=;
        b=F4pAphAHLtPt1+EInHb/X79ez2KY7kAuFDM9wt93bNd1lNSNWQj+qVE0vgK8hRnWHT
         ZJFkPfMqZ7fSeL0GAtpCUdPGMm2bWr9/7XcmEEjHB5LBI3wVsntDxD/h411GwcODFDmk
         6rdSGXWBQCwBVhEzgvSQ9VnYE3ghuTI+tFT+v4MBVzoz4zCzWaf7PNl+JWLVfJfkwPYL
         0Bq7itlnd1N0u/oT4QhAh6Ephwy4TKPlogzrzlPzyptsT3c9wRcFZu0rofat10/a5TOa
         qXiT4jJ3/45iV5hfhnmp0zOtyYIP6IulEq+0qS1CmC/MJV+E/KyFccyhD/3sCyphuzZC
         azAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766743441; x=1767348241;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=c56xVey+/P0K5DvPpIeRFr1NM6R9NaOEhrxube/Xe6M=;
        b=D+znqsquW02/kxKAVdRedu73b5/RZg0IcxXb6hrVFXD0Yhnp7iF63apLLCQhev1Ajs
         A1gab8Bxtm848FVdulhWDrHDJpXnoq+V4aEXEnemS60cARWFualvZicVX/WjjqCLck+V
         Jrl9u4Y+NvGXyzGk0cxbXQX1J2z3okY8Ev0SLyPsXyZyyCfVgUE7p9gefMC/F7AvR47e
         RFH38X8eMDVcR92Qfh/P3ldRmRI1mFX/rgLcdjw+c0MmZOCjcosJEgMlqEtbwxz0mZt0
         B96Gd/7Ki3QTYMfRq5w++O9/wmIR5A+QrOEk8w0B8jA7BayDdjm8cL0f2nVCnYRazUaZ
         tgPA==
X-Forwarded-Encrypted: i=1; AJvYcCVpkkM8t1rknO/Hk2dl0+oCF/Sh2dnAMMxnLxJgMPuYg9gnyikLtJQNu1Lq47PR3mzzfe+kBpx7DSo4@vger.kernel.org
X-Gm-Message-State: AOJu0YyAq7xIyxPb0K6wx85caeFaLu3E+iOhR0E0Wh3ur8nG0hf0N0OJ
	hbKhy4U/xFOQRpxg09bcUYunLiixEnIXl89yoZHZ9M1FQeymmtxCC5lPP8oIkdb3Nm+zMLJk5lL
	ljnomqwqA/ISTu4vLmoQ7ydIlPSvmXe0=
X-Gm-Gg: AY/fxX6owYwT4By7gClWltyXgRJAn/uCjQYo6cAw96r26/O9No/I9C51Prrdrf8ehNp
	HIGzAdZ6yW8NpJ8CeL+2kJuuQAC9m87ICKtXEiy6XLJaGew8uJpUZO3PBC6aQSBH4BWXzuDIurf
	lsChVJ/822NLIzYAIWQrxsIbMgeRrFwOuoCJHd8qUf0Hqqw4uA85OfOPFbJMYSXOShpwj5vXWRA
	jX9yuHPt+B5BUi5AeDnhRfhO6EJ5I+a2vgRAshRDGgmc/A3DuOwneVafJwsJe6jI4TuUdz6nRn1
	bGvZUew=
X-Google-Smtp-Source: AGHT+IEeJtzsXB++6IhxWCem8I/iqi6tN+vUyXQQj7sGJYC2SPWAV++ictVP2fCKp10Wj5G66giWAcJxanY8UYAXGPk=
X-Received: by 2002:a05:6512:e9a:b0:595:81c1:c57 with SMTP id
 2adb3069b0e04-59a17d1813emr7434587e87.11.1766743441289; Fri, 26 Dec 2025
 02:04:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1766471839.git.zhoubinbin@loongson.cn>
In-Reply-To: <cover.1766471839.git.zhoubinbin@loongson.cn>
From: Keguang Zhang <keguang.zhang@gmail.com>
Date: Fri, 26 Dec 2025 18:03:24 +0800
X-Gm-Features: AQt7F2qiUK1mpU25DWjs_X4oGOorQ76rYhxJTsfWZSC-loYSKF2H28Cd9YxqJXs
Message-ID: <CAJhJPsVMsWmiaghsyvfwGzBOoKR0Tn9gGwaT+tpeW7q+qfZN3A@mail.gmail.com>
Subject: Re: [PATCH v1 0/2] RTC: Add Loongson-2K0300 support
To: Binbin Zhou <zhoubinbin@loongson.cn>
Cc: Binbin Zhou <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-rtc@vger.kernel.org, 
	Xiaochuang Mao <maoxiaochuan@loongson.cn>, Huacai Chen <chenhuacai@kernel.org>, 
	Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-mips@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

For the whole series:

Reviewed-by: Keguang Zhang <keguang.zhang@gmail.com>
Tested-by: Keguang Zhang <keguang.zhang@gmail.com> # on LS1B & LS1C

On Tue, Dec 23, 2025 at 2:42=E2=80=AFPM Binbin Zhou <zhoubinbin@loongson.cn=
> wrote:
>
> Hi all:
>
> This patch set introduces the Loongson-2K0300 RTC, which has a similar
> hardware design to the Loongson-1B, but without the alarm feature.
>
> To Keguang:
> Would you have time to test the driver on a Loongson-1?
>
> Thanks.
> Binbin
>
> Binbin Zhou (2):
>   dt-binding: rtc: loongson: Document Loongson-2K0300 compatible
>   rtc: loongson: Add Loongson-2K0300 support
>
>  .../devicetree/bindings/rtc/loongson,rtc.yaml | 13 ++++
>  drivers/rtc/rtc-loongson.c                    | 65 +++++++++++++------
>  2 files changed, 57 insertions(+), 21 deletions(-)
>
>
> base-commit: 16bd954c93360145bc77cc601e350913fc28182d
> --
> 2.47.3
>


--=20
Best regards,

Keguang Zhang

