Return-Path: <devicetree+bounces-122206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0799CF237
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 17:56:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 150461F250E8
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 16:56:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18D2B1D515A;
	Fri, 15 Nov 2024 16:56:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nJOtsBkf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78A16847C
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 16:56:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731689775; cv=none; b=ZU0oU6azlBs2wLVIoJg9zM8kpWZvraaoqg73ltG7UzBWxIzKQrq3B1Kh0NwmFl59WByjtFX14x0nk+aQtanpyywBYUdIolFN+GkWn+OaBnTmWsEt2eNAy5kp+SnM5ue7Pg3CddSUM5I2fcphIhY+Pwq4WeOVpHa5FzNa8TF/ALU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731689775; c=relaxed/simple;
	bh=u0nInsxIdNGOgQambcoXqwexeiN04SjXqkKyG9oCO2M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QVVMZH8PEO/Q+fiQYzLJ534iKWd14xSg2grWHf+hWACaNt3pVGP1fMbJSXgpFGs3Mw/MPz2Q2inwJ561vuHq0+lvpbvijTWUXVnVkF/tUwIL20vT0OBXpnZkrb3sGsFQFwpX419HQQlpTRbWiBzsiaOcQwyE0VOJ5L947M4ERNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nJOtsBkf; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-53da5a27771so2375302e87.2
        for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 08:56:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731689772; x=1732294572; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=u0nInsxIdNGOgQambcoXqwexeiN04SjXqkKyG9oCO2M=;
        b=nJOtsBkfuZjLUBaGSY2ctjSsXQCjeKXpR0bRQGIrr6FW6osBk0hg/ietnCwXzxis4N
         hBfOlosoO6kw4Y7sQ2mXNRiwA9fgB6V6fLTpnpVzmZ8vGQ0zyhNSp2ASl7Onvu8Urb3+
         WLPQJkB2gYlEr9bMsX2OSfHW2ehVnSPgdmQ9Et2P9VLdKKsT6QCMNtNWg0dD0y420OXN
         khal2tRUZqJSVRkwwiCCrQPYgpOQ1uqbYyoZmD71ZAgeU00FIpg9dbsDThF8+JYjR2hx
         LIyq5KXi/Qjojx4T03RnsPARrPPs2i1XDVzsnV5BwV7ki7rJOlqy335iDK0AIvVafSag
         NXmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731689772; x=1732294572;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u0nInsxIdNGOgQambcoXqwexeiN04SjXqkKyG9oCO2M=;
        b=EZdI9Qq3PPd5ZyGxD81nq7K4lCE9kH7TIHe1tr4/lLsJ3PHaIn05GdRV9YpaRdPJR0
         ladJ12xTSCGlo+qRV7yWyeDEffa5C1KgcWVy9Y+ZccxZU13tIfhLELblfryBlqQQob3a
         OO+slnqjiZA2FGc0zC0dd7+50adg5TwsUk7i1olyeA7a0B6ytgdItvI0WtFkEDOLwRgb
         nezJsZzotoHaS119tp/Sz5PhRGwTmBI7HUy9yJjgIFboxLM+PAEN7DINZjFR6frljBWZ
         JRfq3RBcgfynlGIXxulbVwNjrd2tQA3w6EjbMjWHcvVD+lVxv5Vb5yH2hBEjNPmTHq2F
         WHjw==
X-Forwarded-Encrypted: i=1; AJvYcCWPRdKuZfn+SHoDdUN23QyKvwhC6XE8nHrONqhWHXKR5jjGmMJN0tyPxMuakdjxuLAzRfWKmBEkjAkU@vger.kernel.org
X-Gm-Message-State: AOJu0YwIIMV+RtYH4u06KDdNCkbMzXrN8vbncJ3u2FFl/fwTLbJfK+6z
	R1CuKB+ELKqadaQc+RjBfpjpjRv7HPFjh7xAgYVWMCLvtpsg3l6arRhuf17wYe4lCbL3G8tFeVF
	5cw9Bvmy4f/XS8CqDmhMEq5w171NUDdL0Qf4=
X-Google-Smtp-Source: AGHT+IE20zD7t2FLBp8RIdE2sMJJAa9tUAjhCXdCLHXfNc2IobukMtVDq0qK63Ffk2tfmDubFC4R/lr31VQmlVMzCXI=
X-Received: by 2002:a05:6512:3a8a:b0:53d:a283:f290 with SMTP id
 2adb3069b0e04-53dab2a65d6mr1953880e87.31.1731689771303; Fri, 15 Nov 2024
 08:56:11 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241111045408.1922-1-honyuenkwun@gmail.com> <20241111045408.1922-7-honyuenkwun@gmail.com>
 <CAGJh8eDdj5zwENGWHHdZt8ejdVZ=d4GTNzW57rohyL2rvEA_hg@mail.gmail.com>
In-Reply-To: <CAGJh8eDdj5zwENGWHHdZt8ejdVZ=d4GTNzW57rohyL2rvEA_hg@mail.gmail.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Fri, 15 Nov 2024 10:56:00 -0600
Message-ID: <CALWfF7+7KSZ2UJUXgS_Pr3=xzMEyjKgZ4BPL47zkmfnM03HUqg@mail.gmail.com>
Subject: Re: [PATCH 3/3 v3] arm64: dts: rockchip: Add Orange Pi 5 Max board
To: Marco Schirrmeister <mschirrmeister@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Ondrej Jirman <megi@xff.cz>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

>
> in your v1 patch series you mentioned you do not have access to EMMC
> to test. I am happy to test EMMC, but I had problems with the v2 and
> v3 patches.
> v2 dts did not compile and I was getting errors for the hdmi0 entries
> like "Label or path hdmi0 not found". I assume I am missing patches.
> After removing it compiles but the board does not boot.
>
> v3 patches don't work against 6.12-rc6/rc7 snapshot. The patch that
> modifies the 5 plus dts fails. I again assume I am missing other
> patches.
>
> If you have some info with which kernel or other modifications I can
> use your patches, then I am happy to do some testing.

If your primary focus is to only test eMMC support for the Orange Pi 5
Max, then apply the patches on top linux-rockchip for-next.
https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/log/?h=for-next
That generated DTB should be able to run against an older kernel since
the Orange Pi 5 Plus already works.

It's complicated since the HDMI Bridge support is in the pipeline for
6.13-rc1 but it goes through different trees..
The driver itself is merged into drm-misc next

Where as the DTS updates are in linux-rockchip branch

Also, regarding v3, I rebased on top of linux-rockchip for-next to
include the updates for HDMI and GPU on the Orange Pi 5 Plus.

For my development testing, I used Collabora's rk3588-test development
branch, so all the needed patches were already in one place (since
they test on a Radxa Rock 5B with the RK3588).
https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux/-/commits/rk3588-test/?ref_type=heads

So for v3, I had to first cherry-pick the Orange Pi 5 Plus changes
from linux-rockchip for-next.

Note: for v3 I held off on adding the USB 3 support for the Max, I was
going to let the Orange Pi 5 Plus finish their USB 3 submission before
trying to refactor the common DTS nodes.
https://lore.kernel.org/linux-rockchip/20241025175415.887368-1-wens@kernel.org/

>
> Cheers,
> Marco

