Return-Path: <devicetree+bounces-191677-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B64AF0102
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 19:00:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6FE10164255
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 16:58:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F389427E1D5;
	Tue,  1 Jul 2025 16:58:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="o1uSGvQn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B88725F973
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 16:58:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751389088; cv=none; b=DTqMpmSEFbxrMTpF7teFlOoG4EjHY8f4+pwex1X3nFCfXE4NtSJTGhXHm3SVorc7IgQrZ6hTRG0z6LnlF79jx27VW6IssKlIILsuRIW2jQx9CsHWphLdw/FkucII1yCKmtP1n9Z6bRx3hPZbqxKkL5lNxw+bM7TkuVnLRjUMcF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751389088; c=relaxed/simple;
	bh=dzI4RRItBwP5q3Y5PX2f12fubIl/5nheXaVm8tXeqzs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mmhhdsoqEo+AUJaksey2aRr322Y76/2SC3o9JvUj6rnQWZyDtQzEfAfMg3no21HSd28WHDNImdpWEMxDlv6r3o+5VFeBinx4JbmEYxujnt73Vma6K+SwWra7QLeJWpxpFKeB5HlNcTPUR0mThbILvdOVt8Be/HFuiDdIOlc6aBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=o1uSGvQn; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-555163cd09aso2753114e87.3
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 09:58:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1751389085; x=1751993885; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dzI4RRItBwP5q3Y5PX2f12fubIl/5nheXaVm8tXeqzs=;
        b=o1uSGvQnoBEy+UbAFy9CF84H7qNMhTqxEH3HUkeZW3RvShGbjlnfkQu93n/0SLjyMt
         gX1tXUt4hheVI9bqOti6idL6SzxwDf74cFhyE5MBjPIVJiItmVn19/8of8u0t4IJf2eg
         1vysT+58K2YwFGIDQuCaV5AglbHyPlACQHpXTym/MbglVOSaa+BVTk6mvzrsuZB7cV5r
         T6FXggU6qs1JPnpJbLXE7S9eJxjghWpwGEnb1Z1rJCS83LwN+Tykw/BEvUKhtVevgyZu
         2kHTc4BjyWC1pQ3SGz3n64OlMXHBtMGYY+WSdGtO6CewpX32yNy3zf2V3teT80Z8b68X
         XsWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751389085; x=1751993885;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dzI4RRItBwP5q3Y5PX2f12fubIl/5nheXaVm8tXeqzs=;
        b=kZCcrogi8nkNCzRXc/miWALXwM8ix1nwacekzeVWoW0EA7//PTT5QLI5XWaaQnxK0I
         PuFwUiY1S+43zJLKxwDcSmtVvgsyt6B3PSiJ38SDBulh2k39ihk5Q84Lto+p+OEZsjct
         nbXGHxbDwTTs64S3qLLMZ9+v9Q4u+w8wa8+slEHhCE58HdWqzbZHI3VzhcQZ1tdo1dNI
         SzeGlP5BQ8elr2IY71eIe4Nk3KMefSSSq+Lq5kda1Bq5Ob5FL9ARUGXuw2y7bML3toFs
         OiacaIbQO/Y73mUaXUVsa4ZzFnT4a6JEwY2Idhvm2XFb5S35V8xfznQQacWQZ/rrnKjz
         eT+w==
X-Forwarded-Encrypted: i=1; AJvYcCXDS6wo110cAXu1ZJKBFznmx96qnxdurp9Q+ikbJquHG/YEVE/Mcs/nzLpMFkKdgKW+NwWxVQ7DlKUZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwA3ktat+UPaA9veMsXQ2Rq4dSciYLHmooTSad1run7+HBEtD+2
	AgTot48CMCeSfOVR7keJOyIX1q7bTAXJk8OQA7hgPmT1mgCenojccoIqKNt9rnrVWp6n7DnfzG2
	3vi2XTj+9k42Y9IPgWfM9wz6pwrn81tqtfOiGzQYXKw==
X-Gm-Gg: ASbGnct4eaFILFSUsKqFvmZ71JvO/tQ4SYvl+wbjjsF4nkGOUfNR4wBrR6j0Ay7Cit/
	GCoyiOljesXPZvRbemouwDrSD+KvD8FoYknTi8JUD8fcCJHIF5o/rXhdGgaffyOQLi+M6olSEUM
	3cZLLZ816v21I4ymNsPHYXy3KA7eNE+RmOhpEmCcnodBb00f1fjyMcqRxIhH/BSFB9+svENTUTe
	VFX6usN/hdl
X-Google-Smtp-Source: AGHT+IG64nPVO4Y/HQMnxFfKxk246jSY9LbY+uqXpxjn3azvh8I161aO5RqsHD6Sfyyidkbufpf3uFPmik9YHQGyJsI=
X-Received: by 2002:a05:6512:3049:b0:553:2418:8c0c with SMTP id
 2adb3069b0e04-5550b9ee29emr5961397e87.57.1751389085164; Tue, 01 Jul 2025
 09:58:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250701-qcom-gpio-lookup-open-drain-v1-0-9678c4352f11@linaro.org>
 <20250701-qcom-gpio-lookup-open-drain-v1-1-9678c4352f11@linaro.org> <DB0UKX1N7VZ5.VYBEG94Q6Z5I@linaro.org>
In-Reply-To: <DB0UKX1N7VZ5.VYBEG94Q6Z5I@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 1 Jul 2025 18:57:53 +0200
X-Gm-Features: Ac12FXzDTOrYTtHpYNbE_jTA6vgiJc1jLZBGQpE_nFsAEMlIS3CpRo6kKLC1EjY
Message-ID: <CAMRc=Md6+p2wT5rZWOBwUMFcLw_p4rANBxbG4pvWyM6AuW1wAA@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm64: dts: qcom: qrb2210-rb1: fix GPIO lookup flags
 for i2c SDA and SCL
To: Alexey Klimov <alexey.klimov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 1, 2025 at 6:09=E2=80=AFPM Alexey Klimov <alexey.klimov@linaro.=
org> wrote:
>
> On Tue Jul 1, 2025 at 10:01 AM BST, Bartosz Golaszewski wrote:
> > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >
> > The I2C GPIO bus driver enforces the SDA and SCL pins as open-drain
> > outputs but the lookup flags in the DTS don't reflect that triggering
> > warnings from GPIO core. Add the appropriate flags.
> >
> > Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
>
> This works on RB1, thank you!
>
> Tested-by: Alexey Klimov <alexey.klimov@linaro.org>
>
> This also should be:
> Reported-by: Alexey Klimov <alexey.klimov@linaro.org>
> hence Cc list is not full.
>

Thanks, I should have added it when sending.

Bart

