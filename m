Return-Path: <devicetree+bounces-105344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 437C398666B
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 20:37:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D436CB20D66
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 18:37:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FB4913BC11;
	Wed, 25 Sep 2024 18:37:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="cUDkPRUF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57AF31369BC
	for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 18:37:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727289449; cv=none; b=K7bhV2HzQ2+7Gq6CHKaLCRV5MhgfGDmpVEry0FaUm/Gs9gRYopTHEYhCJ0wriwnM6Jb5G0bnEp6lcNWgiTcTpL/AcVMtjnmcgjwSnSHm/Ekg7FIp1QyOkPwIYP/kpaTz0svV+KV/jL876+GMv4vXGIvqFQ3GoDPlcvJX57Uu/aI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727289449; c=relaxed/simple;
	bh=cyVRyFJf8dJkEyRz4vflwDc2ibwSg0V81Q5XUJnpi7M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oas4H7vWWcIo5HJuNd2ypyxqo5DmCvECpMGnTFeA06wA6z6udmlVknrHUAA+rcODXVWxsea82RFAKOKMckZXm/cbpwcfzhJCHYDYg8X6YyL27/SonLajiwliJDry0icO0PbdpOcyIr9bN3bE1mSZYMrzBEEmAnjOIOTRFvjPx1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=cUDkPRUF; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-5365b71a6bdso224538e87.2
        for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 11:37:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1727289445; x=1727894245; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OFThj/re2vC41tZMBLN2SspbaAqnoUprYdw+PnC/kvs=;
        b=cUDkPRUFtMU3JpHu39oXic82J+cplvZGDTbs48dEARiNJZp8Me2hlWPQ5BIzIXHX9Y
         6iP0JglfmtQx5AAFlhWppKxBWESqhxAdfRg8KGpA7VeJVK4Ndbp4ArNK0VqwfPEtwtVJ
         ibPEHufOUHPPvaDjb28rTaeSRifqiJ50NqzZkCsV37OsvFGbfo5cDpfZLQoLLuMkbTVm
         snS9/BwEe83cc7TJaD0bwwCkC9UH0TVdNXNi6yFspCzUuVNViYZaF7TmNNmbHuklKq9V
         2Hc8EzByQcfOPaTt9GbH717fiWhMkTk30WwztiRElX8pMI7rhoeLqzaoXzK282nwUgLx
         HjlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727289445; x=1727894245;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OFThj/re2vC41tZMBLN2SspbaAqnoUprYdw+PnC/kvs=;
        b=qNZYg7yY7BfO0lrQFmibwsmXAxtepSuLRsfDQWs8yr8265j1ss7GSApG5cgNL4Bzp/
         JgTXK6Hscpl0G4AzwDEWGia6Gj4+dasMyWMQ8IqupKgk6ZrsPP61b4jWep481mMN+gd6
         FdEjEEUJTAH7FOycGniEctP5jRtN41cI6tP8P6zXyuxIFyVvSqsWIqg+ICoj9uD7LZ6Q
         fqhv8tIYUM3HYpN1n5MLiMFGJOg6XhCETaqoqLzpGChFgoamgM+iHuKnp7g+W2Bxk9Lw
         JghYAovBRKnOl07nJFxSixCqXngIfXa/s+w8Ti10C4gSwBU9sxcKr1k4342RzZDGqPrs
         op+A==
X-Gm-Message-State: AOJu0YzIVkmPQ7irRdyXXGRLlDDVQRFqEl7AGn5UBFQ+jaK6J6VYIP5M
	67YN1K9stt+QP9AD1AHw9LeEAcNtjtMwXbmRQBvzykBL+1jQ3+qV7ffLWQVqLjDEGBxdfkfmlHm
	dSMN9gRR7ZA+YhcP/0BrVBoCDHwcOcNkc8lXTaA==
X-Google-Smtp-Source: AGHT+IHaS0GYiED1udg9sJkvm1oWDzsprODDPCct2S6hPExFlKTCrN8zZtN5i+8CVM+bfrZWoohYDq68YfgJ9oi2NjI=
X-Received: by 2002:a05:6512:1294:b0:536:a50a:3c25 with SMTP id
 2adb3069b0e04-5387048aa77mr2429037e87.12.1727289445143; Wed, 25 Sep 2024
 11:37:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240924-powerful-amber-husky-a53cbf@lemur>
In-Reply-To: <20240924-powerful-amber-husky-a53cbf@lemur>
From: Luka Perkov <luka.perkov@sartura.hr>
Date: Wed, 25 Sep 2024 20:36:47 +0200
Message-ID: <CAKQ-crgdxQfE-pMAE2x9kuXS15KVfZCTi7b2vTAJ65=0qnBoDg@mail.gmail.com>
Subject: Re: Bouncing maintainer: Luka Kovacic
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: devicetree@vger.kernel.org, helpdesk@kernel.org, 
	Robert Marko <robert.marko@sartura.hr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Konstantin,

On Tue, Sep 24, 2024 at 10:32=E2=80=AFPM Konstantin Ryabitsev
<konstantin@linuxfoundation.org> wrote:
>
> Hello:
>
> I'm reaching out to co-maintainers of the following subsystems:
>
>   - MIKROTIK CRS3XX 98DX3236 BOARD SUPPORT
>
> The email address for one of your maintainers is bouncing:
>
>   M: Luka Kovacic <luka.kovacic@sartura.hr>
>
> There are several possible courses of action:
>
> 1. If you know the new email address for the maintainer, please ask them =
to
>    submit a patch for MAINTAINERS and .mailmap files.
>
> 2. If this maintainer stepped away from their duties, or if co-maintainer=
s are
>    equally unable to reach them via any other means, please submit a patc=
h to
>    MAINTAINERS to remove their M: entry.
>
> The goal is to have no bouncing M: entries in the maintainers file, so pl=
ease
> follow up as soon as you have decided on the correct course of action.

Thank you for sending the email. Robert will send a patch.

Luka

