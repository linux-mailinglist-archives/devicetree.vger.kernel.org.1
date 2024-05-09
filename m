Return-Path: <devicetree+bounces-66054-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4C38C1148
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 16:35:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1CA0C1C21B50
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 14:35:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04FDF1E502;
	Thu,  9 May 2024 14:35:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="fvVVIbMF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C00E1BC4B
	for <devicetree@vger.kernel.org>; Thu,  9 May 2024 14:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715265323; cv=none; b=g1dZQ6XuKh2Hh8JSjEai0q+61eKDlJjhiPqAoxWydRI9kQ8q4M5oQ7IyX9JuuElqupb49y99hwV+7wLv7w7qLkUes/jZk9SydJ4C83BmuyA+ExSIsP4tGJFi6x9nAHjUnKXxMjBcxGjJyJ8W7Dqwt6xmZOE97oMCZHSPfQUf1dM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715265323; c=relaxed/simple;
	bh=EntiUyXCDMlVzLn7liXIjJ9qVPEcZjbVhmx7J3iQjIg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jZ171wVEz6MMEUEm1XcHBY7dQf+Vw9yMiuttX3QnC2mRYaDaGIZirMMq+EIwEzUSQ7Vv4zOVhcMwovpCWn5IVglT7A1wqTo2nyBUWcuV/+ABiJFh4ASEUT1qgzuA9+ilWX/YJ+kLNb/3L2QLnF56PUalftkW0JolKZbb+F6+iYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=fvVVIbMF; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-41e79ec20a6so64935e9.1
        for <devicetree@vger.kernel.org>; Thu, 09 May 2024 07:35:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1715265321; x=1715870121; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sJeFE0WuwLySQ0WLtZlpt2n7k4kefS+JJOJPYozhu9Q=;
        b=fvVVIbMFbhGMWOO7Z7o76Tg7SNCrb/QGR9N9TMjX2EEkU1CidhW44Rwq9BCq9llSCu
         XnU5hxa7Q9NAgrnn0RSwf8iiTdu+X3TzpTZh1/dIP06u87H9JlKMu8GizxYtqTHvdWjp
         l5VnPvuArfLsZn/NCqPsQDW2HyL3Y6h4B3H6FUe3bSwJkjTiacHn6afRsZSXxrX1G3i9
         B958fxe6bPrdT9W1aLgjTBi7c0rdke7oAkjs6whBfdQVASaMtmpoWak98dMZRVlSvkgN
         ni8sx8S69aXi49n9yD1KjvxRucMdhf+vC48Cj9wCmBnXDF7DHykWoIfoN5foK45BnqcC
         Wihw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715265321; x=1715870121;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sJeFE0WuwLySQ0WLtZlpt2n7k4kefS+JJOJPYozhu9Q=;
        b=ZqhRbLfGFRECOVe0DIySJWAGQT6xFDoYY0jitaDLz5QZqltzRovwrziczl2v0wFZVQ
         UFr3DfFC9tkZ4Lwz+6GjSP2+yKhW7HMp5QZOcYl0BGo7QGQPUQc37erEWBvV6S8EMKoY
         SN3yvhsU+xeX4xtoyqUP7yNLoldUzlsRN7ppscG0D8+bxB+YO3Tkg8DzhGMqx+SOtLda
         RfUmp4NaeQL5lf0/3L3zTZCM4RMwwd2lJbT6LDUjRznZiD0klkhQCh1QlH1IOyhQfI+I
         BCKddweCPGVWfGucaPgz0eqcQ83GMcncpiXscQSRyuYYnaVJq4hKB6SSJOXKWekkn3Dm
         A3nw==
X-Forwarded-Encrypted: i=1; AJvYcCX8Xh/uAfpoI9DK3zVGqrNHmqeEsSj5tP1vLmKZXKtuIqoGE2MGUV5keBl3jFqDvI5PRyzWGRHXRp+lIcOelzdB5lqwkgx31AhtHQ==
X-Gm-Message-State: AOJu0Yww2RoBEh02Jj6Lhmh661FgKJH8sLMuYF2Zh7ix/nrzmcaZSmH/
	IX8+9ELc9Bon1t0GQykl6uZ86wgEJce49GlwtfhBamxBkxMLDIrR8GQItVJ60SwgFIQF7WjIy23
	n2LmWlNrNocCiE4InTNzBIX3f+q0CQ/oaqnFtB84iUi1gv7kF1OIM
X-Google-Smtp-Source: AGHT+IFrxb8EZwM8awOjCJtuIkTKILys6t3R7G703AmTYA7D4K8O26Itepd9/edJho95LxphvCI4NfYSMfrG1KjL+Yc=
X-Received: by 2002:a7b:c8c9:0:b0:419:fa3c:fb46 with SMTP id
 5b1f17b1804b1-41fcc211f99mr1451285e9.5.1715265313018; Thu, 09 May 2024
 07:35:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240509064336.9803-1-lvzhaoxiong@huaqin.corp-partner.google.com> <20240509064336.9803-2-lvzhaoxiong@huaqin.corp-partner.google.com>
In-Reply-To: <20240509064336.9803-2-lvzhaoxiong@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@google.com>
Date: Thu, 9 May 2024 07:34:56 -0700
Message-ID: <CAD=FV=Ugm+-ziY+8f93KOChvmkbf_MdxEOoyJP5WJq70m-aOGQ@mail.gmail.com>
Subject: Re: [PATCH v1 2/2] HID: i2c-hid: elan: Add ili2900 timing
To: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Cc: dmitry.torokhov@gmail.com, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, jikos@kernel.org, 
	benjamin.tissoires@redhat.co, hsinyi@google.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, May 8, 2024 at 11:43=E2=80=AFPM Zhaoxiong Lv
<lvzhaoxiong@huaqin.corp-partner.google.com> wrote:
>
> From: lvzhaoxiong <lvzhaoxiong@huaqin.corp-partner.google.com>
>
> ILI2900 requires reset to pull down time greater than 10ms,
> so the configuration post_power_delay_ms is 10, and the chipset
> initial time is required to be greater than 100ms,
> so the post_gpio_reset_on_delay_ms is set to 100.
>
> Signed-off-by: lvzhaoxiong <lvzhaoxiong@huaqin.corp-partner.google.com>
> ---
>  drivers/hid/i2c-hid/i2c-hid-of-elan.c | 8 ++++++++
>  1 file changed, 8 insertions(+)

You silently ignored pretty much all of the feedback from the previous
version [1], so I'm not planning to review this version.

[1] https://lore.kernel.org/r/CAD=3DFV=3DX5tk0tCcDa+vLnu0aoas1TDWuqvkMzM-27=
8dOCX8K1gw@mail.gmail.com

