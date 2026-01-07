Return-Path: <devicetree+bounces-252274-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5356FCFD1AF
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 11:07:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3684A30FF19B
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 10:01:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A6AB322C67;
	Wed,  7 Jan 2026 09:52:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WswTie/n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f178.google.com (mail-dy1-f178.google.com [74.125.82.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C405732D0D0
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 09:52:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767779575; cv=none; b=WJ4qUps5DsfoqzhlG55I6EVU1RR6yCpjEy2m6kpPeCK+G6pStSD5i9+eoOqN+eDsRPVoL7s2GmrcuGLNNIGICkRlkFAJg/BqgU5vwarLEjjuJiOySIjWxN3XuP49UZy6ZPs8ZBHMWE/7TsGc5Mq571ati/rf17Xf+3yLVDb/C2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767779575; c=relaxed/simple;
	bh=rvvOv0vv9H8q++Ltdf0WVIDOuGmNQfGsyInkVBB65VM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=W9XRxcxhZXxmfDC848G6RFkulnBbdMlLajSgEwFO80vQZmYZ/0s604RVlYWIhaP0Mo65VcNdlH8GQATcNfwqLiHX0Lnm361haE0Ip9GmlZit+pwxG5U4glDdpL45GsGuaf33fqzA2tc1Yw9V3bcEF8u7O9X7XALPWcXigUb5sPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WswTie/n; arc=none smtp.client-ip=74.125.82.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f178.google.com with SMTP id 5a478bee46e88-2b053ec7d90so1116113eec.0
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 01:52:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767779570; x=1768384370; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rvvOv0vv9H8q++Ltdf0WVIDOuGmNQfGsyInkVBB65VM=;
        b=WswTie/n5RBFA0VsXfSj6Grz4pfH3N8bWz7h4XXYcQYM0vqU1QkjNe/l6SWrgFNX/H
         HqaQjv483NMUVuzWVxSwKLhasfeaF/eGNqEYH8mals3YX3Lj5fj8ubvcmykAx6hrRBlt
         sHSFw+yWhOdxMFDrtIvtpoUZc/tNO5+5jywWByOvTuEHuragievh59iIFtlwvtBuYZiY
         b7qJt16EnXBtugx8VgH+fb47WuJV7S1nATJ7Y3yua5IHepk1GkzvLEA/haDx7wMdCWZD
         E8j2hykGCKTWHFzHqpOzqTIF8ruDCe5I6xJMj+NP0f3xOEUVKnTIIOuilctYWHdJig7Y
         sANg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767779570; x=1768384370;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rvvOv0vv9H8q++Ltdf0WVIDOuGmNQfGsyInkVBB65VM=;
        b=mitkFLqPedRPEOBo4SzfY6mgGAEJ9bszZir4cQJOC0jxdUvscpAgvLppgdRRcMbJu+
         5rayfxwl3KBG7/T6xgf3KJyzTlXoqBCRM1SOd4nst/A1xeeEwY68IqGlERfnrtZViB9H
         whK+9aPJqYUYFbDDMb9dwlYpQNKKyDSzOK4nena3DToiwLMadVJVoUUYvKQ1yDB6N7B8
         H0fniLeCnw1B3cjc+4aRqGC7R+gT3w4+vPOogNvbHiMo1bWVE6FdWlLNT8XZtOnqtPrz
         y2Tx6/RaOmDEgjlfG+y4ZAF/58/eVezGDayrWXam14NWygwcc5cIBWMZubxLTr5DpAEa
         PTcQ==
X-Forwarded-Encrypted: i=1; AJvYcCVkZjUNRyKQd/MN+Ljm5JEZeMtG8P0kk0J9bXq1jXHvCsby6EYIpE9fdQlPwV0iNkTt5PdkRTnzAxSE@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1mvAvWWXx0CTo+AsmbjgQ4N54duYdwciVWDjpEudBzv6SKwJj
	UolyLliJ4B52Nld/Ulx0xQ/FZZx9TDICu6OzA1d2vW0z57M7nSeKis5EGBSPSgam2Rp4YPWdgrt
	q31I/9mkLZ5vtNd/jY3Epe5HdodImEBs=
X-Gm-Gg: AY/fxX7N0QQdXDpk7GANqSnBxFHyqcHQdDrmexZKVxj1QqSA6obvMFHPm50QKkynf/M
	HgaKTdwIAXb9k+GrFqRWhUsmHFO0+I3pFqzeQPJKvhtBpPldjCcScq5CAIFw8C4ZyK6Os0yvtN4
	oMpQYPH9sXPp1fEJOPiY3zVcqFDqjBlFJ6HHGtCvvQXrDnDYcLKhL0K1suOrkVP5qRFikyqsRb4
	EBXN6OUWh+C0EXiMSqM0RlgZv8XLeRuoHs3N+YAiTMpp/RJhZ19necS+72YFW6HWe0kq+Q=
X-Google-Smtp-Source: AGHT+IEsT6AYnql0T7zlCNvOahx8BTYyJ+IW0sH1UvnJzbYCCmPWp7Cct2vMxCYT86QC+/C8HxYvBejoGMBDAF+WblE=
X-Received: by 2002:a05:7300:5781:b0:2ae:5e6b:dc41 with SMTP id
 5a478bee46e88-2b17d21b748mr1497359eec.14.1767779570503; Wed, 07 Jan 2026
 01:52:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260103083232.9510-1-linux.amoon@gmail.com> <20260103083232.9510-4-linux.amoon@gmail.com>
 <6f30a01c-8fc4-4368-88ef-7c513c505515@kernel.org>
In-Reply-To: <6f30a01c-8fc4-4368-88ef-7c513c505515@kernel.org>
From: =?UTF-8?B?5byg5rC45rOi?= <giraffesnn123@gmail.com>
Date: Wed, 7 Jan 2026 17:52:38 +0800
X-Gm-Features: AQt7F2p0-kEhpv052gHNNvlDi9s6r7fu21_si4nAOG3q3nXtXMATV47Jwa2xpS8
Message-ID: <CACpCAL0GLMV-2p1tKAXe6R+N2c4YadH9vpEG3GdPoHTNTQSuow@mail.gmail.com>
Subject: Re: [PATCH v1 3/3] usb: typec: fusb302: Switch to threaded interrupt handler
To: Hans de Goede <hansg@kernel.org>
Cc: Anand Moon <linux.amoon@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, FUKAUMI Naoki <naoki@radxa.com>, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>, 
	"open list:USB TYPEC CLASS" <linux-usb@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

> Still ideally we would solve this in another way then
> switching to a threaded IRQ handler.
>
> As the commit message of the mei-vsc fix mentions
> the root cause of these errors is typically an interrupt
> chip driver which uses IRQF_NO_THREAD disabling the auto
> threading of all interrupt handlers in RT mode.
>
> So the first question here would be to see if that flag is
> used in the interrupt chip and if yes, is that flag really
> necessary ?
This is very similar to the issue addressed in commit 24b176d8827d
("drm/msm/dsi: Remove spurious IRQF_ONESHOT flag").
The IRQF_ONESHOT flag is preventing forced threading here.

In irq_setup_forced_threading(), the conversion to threaded interrupts
is explicitly skipped if any of the IRQF_NO_THREAD, IRQF_PERCPU,
or IRQF_ONESHOT flags are present. In this case, IRQF_ONESHOT
appears to be the reason.

Regards,
giraffesnn

