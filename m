Return-Path: <devicetree+bounces-146258-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C88A33E78
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 12:53:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9C7C87A2DF9
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 11:52:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 848802144CB;
	Thu, 13 Feb 2025 11:53:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Xe5GaG9z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A113A211A06
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 11:53:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739447597; cv=none; b=f9aD1gFUkGeRuwqq4BtErVdBbcIThtTcua6A0ntKDWth2Qi7QWlCgpm1UxVbihQQpyUIhN5N/vlyQj1mIKBebFgEv/XZp4H9kNgpSgRHsovtF/4nqXlbyTnax4UAaIK3uMQdyO5i7EDWbNrXvi69ji3I7YRlR9UpOQ7kbEdaQVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739447597; c=relaxed/simple;
	bh=FBAEzgfozo3sMyPEiMssFYNAXN9icWZt28ooDZsRqQQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LM/3V02feKpZNg3TxcM9s3yzBcbtOCdd9E4VdoeiFDo6i+ZC9LyunomaCAtytrJFxq8LsavhcXd51tTJ2xC392rtGt/BeAVOMDGS6em/JLEtCWcYXdhHlXkfe1dVDMUcJ5yvXlJzlGSTU3mFvTn16UgeVUqrsOCyLEzVr+EGfEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Xe5GaG9z; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-54298ec925bso1029727e87.3
        for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 03:53:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739447594; x=1740052394; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FBAEzgfozo3sMyPEiMssFYNAXN9icWZt28ooDZsRqQQ=;
        b=Xe5GaG9z8ovLTQZj9Fquy9D/vPxpVaO17WfohTBBdpOW9TGa5WFuAG/HUA0MsEW4OA
         gFvj/ywPu7V8Xs7t+JjoU5jAyJTaymZn/6WrF5mIDB5bqkAeQCtgG1R/ds4XihUhZfL0
         iPMVh/DGb9rW0PMB/dxVtli6/iqHGcSoYI35MvytMQ/41NoEkTs6fM99v6ejuyTMGnxT
         Xu6hvBwrx94qo+mUlfQ9ISovdHuAIsNqXBTWA87qkyB9fUkVHdp0dMSlxv3mCJKene/u
         78fctLVm2CO3oLKgUj7vHinqvoVKwedNJKJdL8YOORF4NvkOgo/zwztfUJfHn3nqZ178
         sC7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739447594; x=1740052394;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FBAEzgfozo3sMyPEiMssFYNAXN9icWZt28ooDZsRqQQ=;
        b=V0V/7QBibmsYkWeJSXsz4TkJkPO9g6ZUmIMSlpnCx41bdo860CtNKP+4D0B4xXAf27
         hR6pbTyN5Wtl0N5hP4+P6/j8xuj93cH+5ze921l/+i1E3v+2PuwszLkteAobLS3iStTh
         aCtn+7poclJTBOdadp17Y5nyMq2Blcj9vF2k37SrGhXsAjCelHR+esFuvy47V1uFj0Zw
         Us3PlsJxPhFxmWn9sO2Xtbi4s4i3auZ6ieh7P4/dni/+DpZxGJMnTXnsZcNiObCW8U5p
         lGQHEeeM13KUJw9fcwlCyRJVzhMxbmBiNCrfrXZdLCZ8DdE0OGRmBExdiuicCBYeCN/d
         ATpQ==
X-Forwarded-Encrypted: i=1; AJvYcCV1rACfgnXqyV5bx7xdsbhirc9gWiuRn/wIil2F/L8/6Jfn6lPOlR10qS50bYSDcU0Mky29Ub8/mkEM@vger.kernel.org
X-Gm-Message-State: AOJu0YzuGmjlwlrjAI5WxfsGQYEpcdVEVZA5p2BKMlkJPbGnNO5JAzJL
	+wqE8ga+U9rzXr2rg8D/L1DPIj6n5ZJFkBGjClJfH6s7CPE1ThlAMHdGu0NIO64oF4lphWPxbG3
	ZryjKBbhqrIotPOS0gT0htuAgFn4DSbmt/KoPxQ==
X-Gm-Gg: ASbGncs/mmoo0X89z1pZRY5pqkUlYDp8aUKft7bXZrPRtTlr2lyxEkBrQzvkOltGgs5
	B/zgpkK2KdJ85DN+9WVc5XsmJ1X+vT23wWfvqM46QGsF3ZRFmj+RwXk2jrj5Igm2jC9dh5dh0
X-Google-Smtp-Source: AGHT+IFrJk2Lgcl9qLARw4zO2zXacUNTi5I8H/0MVApdZGwthvQgZMRi+CUpERAkupPLyPdAt6bDp9Kyi9iApJcwghU=
X-Received: by 2002:a05:6512:3da8:b0:545:c7d:1790 with SMTP id
 2adb3069b0e04-5451810cbbfmr1856800e87.22.1739447593668; Thu, 13 Feb 2025
 03:53:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1738328714.git.mazziesaccount@gmail.com>
 <3d85fe979fca352bed4d9841e3233c055dfaf154.1738328714.git.mazziesaccount@gmail.com>
 <6867812e-7269-4686-9fc2-55afd9fa91bf@gmail.com> <CACRpkdaP6biD8ueeezBDw1P3LP6ARoJw0zfkmxC-QKK0fw79YQ@mail.gmail.com>
 <a52933a2-8b87-4e49-a346-91266fe3b675@gmail.com>
In-Reply-To: <a52933a2-8b87-4e49-a346-91266fe3b675@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 13 Feb 2025 12:53:02 +0100
X-Gm-Features: AWEUYZngO0EMbmgu4N_VovTQxYF2iqEGDA2eFPLTfNLuuRjhlejPGJ-q9RrmeE0
Message-ID: <CACRpkdYMytiXoXrjTX3ts6ce1T6Xf4rSyk=sDP9fYz730Q-3bQ@mail.gmail.com>
Subject: Re: [RFC PATCH 4/5] pinctrl: Support ROHM BD79124 pinmux / GPO
To: Matti Vaittinen <mazziesaccount@gmail.com>
Cc: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>, Lee Jones <lee@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, Nuno Sa <nuno.sa@analog.com>, 
	David Lechner <dlechner@baylibre.com>, Dumitru Ceclan <mitrutzceclan@gmail.com>, 
	Trevor Gamblin <tgamblin@baylibre.com>, Matteo Martelli <matteomartelli3@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 6, 2025 at 11:09=E2=80=AFAM Matti Vaittinen
<mazziesaccount@gmail.com> wrote:

> I just realized I should've shared the link to the v2 - which may not
> include all the recipients (because it no longer touches all the
> subsystems - and the get_maintainer.pl probably reduced the list of
> recipients). So, for anyone interested, here's the v2:
>
> https://lore.kernel.org/all/cover.1738761899.git.mazziesaccount@gmail.com=
/

Well it touches (uses) the gpio subsystem so the GPIO maintainers
should have been on CC...

This is one of the shortcomings of get_maintainers.pl really (also what
b4 is using): it does not know that if you use some specific APIs from
some specific .h files then some specific maintainers need to be on
CC.

It's because there is no hard rule: <linux/slab.h> - who cares? It's not
like the memory management people want to look at every user of
kmalloc()... <linux/gpio/driver.h> - this is a different story because
it's possible to get the semantics wrong.

That said, I looked at the patch in lore:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
for patch 4/5!

Linus

