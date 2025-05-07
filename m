Return-Path: <devicetree+bounces-174643-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 43474AADF45
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 14:34:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 77C2F1C24CD5
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 12:34:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD3E6280010;
	Wed,  7 May 2025 12:34:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="xGidBM4B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09D8D1AA1D5
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 12:34:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746621270; cv=none; b=dIbib18ZConOkIElOfE3IBGG34niU8Ic1olq+ksmwuyffdawylgDSfG8t3gT7Z/XARsk9CfzC3tL6JkfqB45cFt+YODxgjmUF+4vrmLipyqltJWjGiujzKvMb4XaFj82WRGIzemwvIBzict93FMM/uss6qy/SzaX3m8UdLzm3yA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746621270; c=relaxed/simple;
	bh=ZB6p0b8UH/bESGFVljJSkPx38LKg32CurYlFoIT8hZc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=upIfrEzFJAa3ZhMqepOUNKraU/6SYuJ1aNqb8bpWOtvYPglgHyW8yrJYvW2yXfQMEn7klkbKOTZj6BS2GfjTK3MjIxdKx5bvDCVNnzNfKqn+2ugLYYmG2QDUBQ8RHYMx1eKPr8IotpZCbqCrNQzT3lLCCCZaYvlgFhefa/5wF1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=xGidBM4B; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5499614d3d2so6148993e87.3
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 05:34:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1746621267; x=1747226067; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZB6p0b8UH/bESGFVljJSkPx38LKg32CurYlFoIT8hZc=;
        b=xGidBM4BxDWDPx+kY0CEBMQEkiPYkIlDafiVWfKhbA30+sLcGEG4Bcf3JPOuhjzsqn
         5rgVd5suB3Q/FJGpO6Xy9MbjqcIEXTNVV2WnWCJGxP8iDl5ij64AzY8eZOhrw87Vbfg1
         gXnpO9WkOfxH9En8/AfEZYex82a2u1lYh9DADDfsbXHEo0cYaj6MJbmcYDGBJNTc/mIJ
         UJ0UsT0kfUy7jajqaJuXFu+1jMz5TeNbMmqQsWwQszgqqWHfv84qvRZwo7N9t9WMp7fG
         OtZ4MBwKUV6mfSLXIYNxtbkZBKBIzNPIkxp7SAkfTv96EJFYDNuJkWhEmJksRm0AhcQf
         tFYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746621267; x=1747226067;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZB6p0b8UH/bESGFVljJSkPx38LKg32CurYlFoIT8hZc=;
        b=gHK1JSbU/nOsNb2P1as9ZY3j69JIOHUyw1wcZZqece6OIWEvIb3KCRzZpqqVlgtDxF
         umEpmZwh0MaktguXoWMh8pWI/s2Z3U7bu7wyKws+Lqsko+nijrnIdxk2dSe7FiTFYafi
         ZUhwm5xVi6oIC5BgcDVydUShGzvmhIFbGQfRoBRrVNoVA6yYgBSahTkg/tXv1sKEtVy5
         VEbQh+pgaT6WIEnqjSVpFZOxWghPQHGQRjVaL2ut7t5TMEbkWaGgEAvQ2ua6Dj5b6m01
         ym3gajrJiTMou0+p6V6pOQiOlEZ0+7fRFr/GK2l2O635X5l+3IGidRvP1dipIMEN5U5s
         4H4w==
X-Forwarded-Encrypted: i=1; AJvYcCXYDy4JF9mOeChenjqA01kAvSDRz4x4bX1ddTpF1Rko6zGaV+2hOLTs/5XnlWaAF+RY00XDMBrONpRU@vger.kernel.org
X-Gm-Message-State: AOJu0YzOo3EcxG/yc3iTVlx88v4cAMgwknWWV2a/PB0hjwQAOYm8R+zv
	PVeRQzjfy1LJEHb+pveSMNMwDzXE6xFill510DCqHh0IJGzQRJ8cZYzTEo0RfTNUGMGeqz2sFzH
	jKmnCaq5b3YZv7h9WuMUU16O7CvCjhBCuCVSq2g==
X-Gm-Gg: ASbGncvoFRhEETZilo7qy8eghnwcO1GeQrGwLZ9dLKMdNlB80VdKnTefYxENC9tvnOO
	boazi6uGUi1o+Io+2cgo6qPmSn4RWT5v8LR4wSuaSPBdmbMN0k0LGL8o01YXmA95K9/OCjGsuK8
	yrsMV2GJTrhTBxTgdTvNeVkzCOh5R6y3HwGlnr74G4rsV5p/YgeU3XIQ==
X-Google-Smtp-Source: AGHT+IFgG+UK5CY55EUMSZUkeEuk/IEYk0VOZ0UOQusDDqiZWUfgLmmWHTO06WOk/G/RNJCbB+WH17/isnZ24eNHT8g=
X-Received: by 2002:a05:6512:31d5:b0:540:2fd2:6c87 with SMTP id
 2adb3069b0e04-54fb9292d7dmr1436866e87.16.1746621266974; Wed, 07 May 2025
 05:34:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250505144903.1293558-1-robh@kernel.org>
In-Reply-To: <20250505144903.1293558-1-robh@kernel.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 7 May 2025 14:34:14 +0200
X-Gm-Features: ATxdqUF5eL8gozIaQNQZaqyBb_VdC7-G7d3hXKd0rOv6I6RqAOxjq7im7gawZqQ
Message-ID: <CAMRc=MezTdjGmzTSsfJa-Srrhobz4du4NKVvPWv9zDRMsz2v8Q@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: interrupt-controller: Convert ti,cp-intc to
 DT schema
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, May 5, 2025 at 4:49=E2=80=AFPM Rob Herring (Arm) <robh@kernel.org> =
wrote:
>
> Convert the TI Common Platform interrupt controller binding to schema
> format. It's a straight-forward conversion of the typical interrupt
> controller.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

LGTM

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

