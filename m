Return-Path: <devicetree+bounces-43853-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9C985BAE6
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 12:48:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2A08E1C243AE
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 11:48:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1EB9679E4;
	Tue, 20 Feb 2024 11:48:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="dos4Vqu9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com [209.85.221.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 769106773B
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 11:48:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708429722; cv=none; b=Dkr8v/KPKdw6RoZ+qN4ddDn7KPapLIm0rFaBvvRWbmcbtu49ZdWFeXxoZ1ShGklxjPVRGRxovRQrI/tzcOz0EVMFWvDTweBNbc+M4WJ68gwytDeERwvc5wxlMFrDVFSUkogWsOpAka64/+lw4tnDjxopohmv0Yzk3ZhJNgWO8n0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708429722; c=relaxed/simple;
	bh=1paBppa9kXyF4t6jx2dx0KVwu75oULYWFXwh3w7uJhk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EU2srKATBVvgxtmoxvD88iXLQ1SwW9YlYwf9zLOT8Ys30qHpS37N3QBgb/9faQJ2bZa4RDOeZboLiSOVAICtu02WUmkZa0EozWRbh5dC4uqBPImoYmjZqP7bnTRYlw/E/DcUHvcQ6xi0JjOpPLmNTDgWCb+gW6lpYQzx9dbMrb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=dos4Vqu9; arc=none smtp.client-ip=209.85.221.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-4ccce61a111so344671e0c.0
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 03:48:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1708429720; x=1709034520; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1paBppa9kXyF4t6jx2dx0KVwu75oULYWFXwh3w7uJhk=;
        b=dos4Vqu9qn1f0VZfm4KPRbnXV0MZFq0GNdHNLRUhrd+n16n3FUa99zLSdVXrFTYPUJ
         nwIJxPXtoKQrbOG1EHw1KEpW644cYGjEMl+uUtONDhzsgu+CJf/XmP6pf4Hdw3Dq3lAK
         4S2bpy1W6Q9pwDFKcLfVehmBsOGwQg2kZQeMRpbGtqPu/vMsJn8M5NuTCqP0r0xNxDkr
         uCg0E7Ylb+lnb3me3oS3tyBaKN5oGLhtUZKfBOv0dJA0udAkg7XzR34DlvBY68L/QfGQ
         +371+/c4772e3tTNTIJe68YZlTnn8447RxavBjr/pXZenubkO7BQPkjPHHk4voFugvXb
         JunQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708429720; x=1709034520;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1paBppa9kXyF4t6jx2dx0KVwu75oULYWFXwh3w7uJhk=;
        b=K79D/ldhdZOu/94jIpwoPG6ki9bnlljGC0j4kZxkbnu8n0T/Fhzv+ep6vbJsJK0FMP
         b8g0C07CO0Rne+6dCsE4Abie7oxIAb9LLGhxcRN/9iVY3HrycW9RQOOqQTIOos/zhRo7
         HT6tBeho6/a4SlQe4yfMeW+F+55lux63uyh8G6c5mv/tJ+EaNtRMpZsTcEgWQKgoXSAW
         fHth6EGY2xwCtXfUjuJgckok19Z/vq64nlqRqksLVzKqPzO6a2mha5Iuv7fOJiHAHmJR
         +IljUk4A+9KCT2gqYAnR657MNeACMyRKCacMA6j+AOhsMw08CYTONc+lseGGIpoh0kro
         udNA==
X-Forwarded-Encrypted: i=1; AJvYcCVdTiCmsd7dhXX+bL+UBnoLxNpFaVpW0SkcrJ08yIIoiOzgEtSc3GcawXtx9aSLCFoOi9qQdHzN3iUHGGEbr6LM6PIkhI/GTTkUPA==
X-Gm-Message-State: AOJu0YyJPyO+HHLpxvo+tf9rwz1geVBAfx5fca5oJspgA2+UEcZpDQwt
	VnbA5KrOKFmbjPsYJF/BhnX7D5fSfn0jcw2oVq6pCI5HtHNzIRicjBrLbcTrVvn7VvNcUzxmfVn
	S357HSWW15DjZxsQaBhmcG8yiv/+tw5a2r8SzUQ==
X-Google-Smtp-Source: AGHT+IGSt+7LYikhDFYx0cLtpCAuzEqPHpTuVYE+MOnTWdXCL9GlyvAMZDlwfESCgNKoolfZRtNBCXYNBKzP3Qf2Hvs=
X-Received: by 2002:a1f:c743:0:b0:4cd:510f:4137 with SMTP id
 x64-20020a1fc743000000b004cd510f4137mr3182381vkf.16.1708429720382; Tue, 20
 Feb 2024 03:48:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240220045230.2852640-1-swboyd@chromium.org>
In-Reply-To: <20240220045230.2852640-1-swboyd@chromium.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 20 Feb 2024 12:48:29 +0100
Message-ID: <CAMRc=MfqOxOO3DXhvQ4W2THGc0vzkTTGWeoyDrzG6JWZB3Ao7w@mail.gmail.com>
Subject: Re: [PATCH v2] gpio: Add ChromeOS EC GPIO driver
To: Stephen Boyd <swboyd@chromium.org>
Cc: Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org, 
	patches@lists.linux.dev, devicetree@vger.kernel.org, 
	chrome-platform@lists.linux.dev, Douglas Anderson <dianders@chromium.org>, 
	Pin-yen Lin <treapking@chromium.org>, linux-gpio@vger.kernel.org, 
	Lee Jones <lee@kernel.org>, Benson Leung <bleung@chromium.org>, 
	Guenter Roeck <groeck@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 20, 2024 at 5:52=E2=80=AFAM Stephen Boyd <swboyd@chromium.org> =
wrote:
>
> The ChromeOS embedded controller (EC) supports setting the state of
> GPIOs when the system is unlocked, and getting the state of GPIOs in all
> cases. The GPIOs are on the EC itself, so the EC acts similar to a GPIO
> expander. Add a driver to get and set the GPIOs on the EC through the
> host command interface.
>
> Cc: Lee Jones <lee@kernel.org>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Bartosz Golaszewski <brgl@bgdev.pl>
> Cc: Benson Leung <bleung@chromium.org>
> Cc: Guenter Roeck <groeck@chromium.org>
> Cc: <linux-gpio@vger.kernel.org>
> Cc: <chrome-platform@lists.linux.dev>
> Cc: Pin-yen Lin <treapking@chromium.org>
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> ---
>

Applied, thanks!

Bart

