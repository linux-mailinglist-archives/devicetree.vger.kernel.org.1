Return-Path: <devicetree+bounces-84736-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D8DC92D555
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 17:50:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 26C36288566
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 15:50:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DB3F1946D8;
	Wed, 10 Jul 2024 15:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="MGIvVfLy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBFD819307A
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 15:50:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720626633; cv=none; b=RP6vfEsNf6wep3ERqLwueSvL3D4EwHoUT3SkTHkn1UCI5tKe1P1CFKYrcQIEbIeGK07K6qAN3srCEutSz5C1TnlSqWWM2akHkRYag6MCdsaL5le6/3oHaot84l+a3XrMWfxeNJf8zE22AZkxQPji5N9O/Rlk8EknIu3G1qO+ons=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720626633; c=relaxed/simple;
	bh=yneKc7QmLHbr/S7vKpCuOc/Gw6qodem1chsdBrkwYIA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PkhWVywXp2HsaFTL7ngjvPxmR8ggph8HRZtUI2FqDilbJW7Y6/L/djCf9jPjr0w0akF0BE7PhUoDJzZzaSyGefviepkRlpm4VZZWxORaCgJp81F/jdjwkMN0RxP5jWMRGxg1TCVbkOntAuA1tyvO62KyAk6cqQSTpV0UuuIj4qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=MGIvVfLy; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4266f796e67so57945e9.1
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 08:50:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1720626630; x=1721231430; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XWZUqKVzg7P6u5MGavsKXGRW26DyCY05W0UIIBlog9I=;
        b=MGIvVfLymqxteai0GyZsVroo0RQNBjXnda3WRyQtuVSDZznNlcBFBYekilo0P91pAx
         cnMcS38vNKLGdQ84Mb3ej6+zk8fvEl/VVp/ZZw4UMfaP2Arla0T0yBPeNz6MAbiC2pt6
         xx/2Ny3aSG59qLqU6MNcOVOkQzbNagWmZlgR/gRsCTfAu6JEN0N0nJM4EvLtdI5/GIKH
         NcC2+b1PF5VQuYohAVy5aMjScXM63ponFNre5UwZqcF8rKZE3K4Qgv93f4pvs1n3R/s+
         qmIPto3HoXNv11m84l7OJlE51jkoxmyLnmZe+f/9fk6ctrs66IypvpVYye0GSPxC+Xkq
         mt8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720626630; x=1721231430;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XWZUqKVzg7P6u5MGavsKXGRW26DyCY05W0UIIBlog9I=;
        b=CtCKVk4PJjZGpnfnSHoLIodwS6uYwQ4NSXuQjC6+1kt8gLXDaZgKkjK7uFyRl/nW8w
         YMOpfEhJveUf/d1eyctoaaHdq29jPoVGAkPlAcfaEB+3D4OsyJko8sRfObQtWzsKUp61
         jpZPklwAGeGEk0tmvYYyvq4WpQSZk0FqFcYjVCQW734/eTLMYUptjH7RIUmuHmcq3xEy
         NM3aXgLu7wxDfA89bB4a7izVBQu5OE66SUu7V0/YtrWmZgzh5v1EzWuqBJvBMKZkHGXF
         /SA7HHjCl16GeXKk0f8iyMQqq1puqAJGzIcbSavcHeJRmalaEHT75jDpFjxVGoTGw/8O
         lqag==
X-Forwarded-Encrypted: i=1; AJvYcCXe3iDaQwjQ+kVSm9ECHNsRYnfnFEAxgBOjN4qjxtjFbnByozsvZW0xvfkwJeI7T3lkMhJePG9VbkfwLfiF4davmJgH/7XtUfLIlQ==
X-Gm-Message-State: AOJu0YzjYsTrWIQ4swvFFd95lUjiWcvk9aTNEFeyriKicoxIGGFjsQTX
	3DfyW+dvpN42onhoW5A6C+xlZoaBoqULV++geX+uWwHykXOJd9qFHVum91gEuL3NzUHeKfK80yP
	ilOUFTWTVdlDgOzrUXuXfJTxWqEdKBR9+KBF3
X-Google-Smtp-Source: AGHT+IFo76W0cPpP3VpSRtWR1YzUtFerX+Iej1bNsoOgXR2VdbT/Y86UlDjWq8i3WE9bDJY/MtS/YOS5s5OndIv9OFA=
X-Received: by 2002:a05:600c:5718:b0:426:68ce:c97a with SMTP id
 5b1f17b1804b1-42794253b39mr1516875e9.7.1720626629870; Wed, 10 Jul 2024
 08:50:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240704085555.11204-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240704085555.11204-3-lvzhaoxiong@huaqin.corp-partner.google.com>
In-Reply-To: <20240704085555.11204-3-lvzhaoxiong@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@google.com>
Date: Wed, 10 Jul 2024 08:50:12 -0700
Message-ID: <CAD=FV=XD=B5Mb36UxxaxCdhEhgXMFKmUjf_gnKda7hgq0-YYaA@mail.gmail.com>
Subject: Re: [PATCH v1 2/2] HID: i2c-hid: elan: Add elan-ekth6a12nay timing
To: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Cc: dmitry.torokhov@gmail.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, jikos@kernel.org, bentiss@kernel.org, 
	linus.walleij@linaro.org, hsinyi@google.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Jul 4, 2024 at 1:56=E2=80=AFAM Zhaoxiong Lv
<lvzhaoxiong@huaqin.corp-partner.google.com> wrote:
>
> Elan-ekth6a12nay requires reset to pull down time greater than 10ms,
> so the configuration post_power_delay_ms is 10, and the chipset
> initial time is required to be greater than 300ms,
> so the post_gpio_reset_on_delay_ms is set to 300.
>
> Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
> ---
>  drivers/hid/i2c-hid/i2c-hid-of-elan.c | 8 ++++++++
>  1 file changed, 8 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

