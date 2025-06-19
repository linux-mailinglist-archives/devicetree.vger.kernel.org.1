Return-Path: <devicetree+bounces-187452-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A855ADFF27
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 09:52:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 512A63B0FD2
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 07:51:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DE8F22CBFC;
	Thu, 19 Jun 2025 07:52:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="bnO8TB91"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73C713085D8
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 07:52:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750319523; cv=none; b=p81c85Cuxl8gj1i+sbdmkupWOy6gS/KZOZGAPNqGsltHmwtrDjHQbQXOy+UfyAPW2jPQh6JY63cxNLIQPk7ZuxlbzNDpIjbL4q1Uylpi3W5F8rSypG1rSCGAkszgCtXW1UTYl1Y1hmGc7jgxg7QVO/DWZvUGh+RqZCKX6VHZ0Co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750319523; c=relaxed/simple;
	bh=7mQQX0g/RXBoYey7jHVoGxTSFtEhgzlZ2xKLsOSPaOg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ReVn0mT0HNpxRXtGm5Mev1TnO8CDNSZmG3TQwSWL8GxTH3HcM0b1VBMneTgzvMU4hkkQqg/+gNdrU9mn88YBmdjhmnxloN24xj6B+8OLdmqB97xn3YJ+P3/A3R56INnAvz3ysvnUuw3Z3yD7JvdEYSN1h783ajrZ5FHZxHtFnVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=bnO8TB91; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-55220699ba8so554505e87.2
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 00:52:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1750319519; x=1750924319; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7mQQX0g/RXBoYey7jHVoGxTSFtEhgzlZ2xKLsOSPaOg=;
        b=bnO8TB91+bqkCFtzVBCIsOhc02OTDTmRRCSBYqU3GSPneYpVvvaff7+B8i9Ez/7W5B
         FnJRV+isIylWBbWVTd5QPuVKbFOK4wIJDsOvwlFaazre+3Gie4lwgooaXNGTae3YfAN7
         6WwrQznORydJrN7fGvAvwFi9ugGvRsyHYhMGQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750319519; x=1750924319;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7mQQX0g/RXBoYey7jHVoGxTSFtEhgzlZ2xKLsOSPaOg=;
        b=f1qhnCh5N9q/on/hw9zMbktZjECIfX4sPqJ2yDD8GtOypdOswdSDfKAG6DFtN+OYhF
         +rOxL+RNvTgn3i+PRa1CaTDqno4HseKMZ+G19jTHaoxIoid+62Wsg+BAhpepkSxNV7rf
         kvfzyftPYpR5Sm4XdSozrEuHJVkE8UaYNE+DB2U5PtVU362FEXHNpnwkb7/194pdil/H
         ENOj/em4xzlyewBSfNDgSJbir+6r5jbaqb4L8rgcQhIOouUuYg3LiCK/dQ2WpgqyVC1A
         WMxEx/6pizeUHaLH8V4To3upt12oQYRMFHsqCuhwrot+yDvWNyC8qkmybpcdxGafUzGh
         TP3w==
X-Gm-Message-State: AOJu0YyPZ3BZwjwALZXgiJC2G9GmhtLymjfPW5vdckygh69TgXas/h2Q
	8ME6R+Losrpq4JFa8SB/InJqeNsbtZ6SUlsuP6d7+hJ/hd53Y/zMw3QOJ+DskCP8ts2iD7L1f+Z
	6iQHxCE1rS358mCPEM8gMZGHJ2N0D8NBqKhGYoKXk
X-Gm-Gg: ASbGncuMQW93C37h6zdXZKp9dbt+zqCg8rKIK1pwkt+Fu4TdfRDPc6zeFYxQbJHvne8
	tcpo1V7nDdIi5HIRODHZ0EXqFA/RKfQ8UqdvcRLmyJRUv+GqAai2wLzl6HZKIpWnDzep36dx+Fv
	HpB6P29LjwA53goPzEyWvqLkgcHhMYu8ie/YMVXRO6KNg7hqxPh7YR9IJTn9NlGT5atHEunCM=
X-Google-Smtp-Source: AGHT+IGKSw6WMdR9IoIRey67gW5v3Kd28RATCpIk0gj4cgp0HNOfe/nKQSJBKksAip/SsLckx6UbC9sCyZs1uSNHQ90=
X-Received: by 2002:a05:6512:6ca:b0:553:6488:fa56 with SMTP id
 2adb3069b0e04-553b6f42225mr6061529e87.43.1750319519609; Thu, 19 Jun 2025
 00:51:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250318102259.189289-1-laura.nao@collabora.com>
 <20250318102259.189289-3-laura.nao@collabora.com> <CAGXv+5E-G0BY5q_EsxOkEEJvqXaX5=Y9PWqNbwysLEFfU-UmAg@mail.gmail.com>
In-Reply-To: <CAGXv+5E-G0BY5q_EsxOkEEJvqXaX5=Y9PWqNbwysLEFfU-UmAg@mail.gmail.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 19 Jun 2025 15:51:48 +0800
X-Gm-Features: AX0GCFshC_lgMp9vezDeihTD0kDhQFAT31Y9bBRKASrIpMKtnPIy3f3lDgJ-TQs
Message-ID: <CAGXv+5Ff8jFqURizywr7NedprytSoCz9HvaW__v_Q1LcuzMxrw@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: mediatek: mt8192-asurada-spherion: Mark
 trackpads as fail-needs-probe
To: angelogioacchino.delregno@collabora.com
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	nfraprado@collabora.com, kernel@collabora.com, 
	Laura Nao <laura.nao@collabora.com>, matthias.bgg@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Angelo,

On Wed, Mar 19, 2025 at 12:23=E2=80=AFPM Chen-Yu Tsai <wenst@chromium.org> =
wrote:
>
> On Tue, Mar 18, 2025 at 6:26=E2=80=AFPM Laura Nao <laura.nao@collabora.co=
m> wrote:
> >
> > Different Spherion variants use different trackpads on the same I2C2
> > bus. Instead of enabling all of them by default, mark them as
> > "fail-needs-probe" and let the implementation determine which one is
> > actually present.
> >
> > Additionally, move the trackpad pinctrl entry back to the individual
> > trackpad nodes.
> >
> > Signed-off-by: Laura Nao <laura.nao@collabora.com>
>
> Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

It looks like this patch has fallen through the cracks.
Could you pick it up?


Thanks
ChenYu

