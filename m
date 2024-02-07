Return-Path: <devicetree+bounces-39526-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A0984D373
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 22:07:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A93991F22F69
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 21:07:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05C9A84A30;
	Wed,  7 Feb 2024 21:07:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="wliovv4a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A8BF127B53
	for <devicetree@vger.kernel.org>; Wed,  7 Feb 2024 21:07:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707340071; cv=none; b=IBB5sF8h5wy+MN00HLxQNXkEnDg2GBasvC3XkZ/icLqwrARFiyIkiI1DQxGTpCi3q2cmBa4OabB00BJr845kp7ubNfBwYTQKUdSJXjJdGr3H2HnmOkBI489VzPm+qEQoL7CnfTQPZIpx7nX6Sfp5beYEz3RIW64ubFPQ+DoSv/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707340071; c=relaxed/simple;
	bh=3+K0JHb4O++NG2qWKdASN7tNJhwYArUzScEMeR8uFJ4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=avLmBpH6Ormg4lrRM83Aiw5aD3QNvhBqaENouC51jyDli/AloyXZZ43LnjMOgx0kMj78o6jVS/J8XqXsGsRrv7uL1b0IHPlnKNzuW/JIpqM6Vpl4o3lh1HQ9vt5ks+ESklOq+OoKsZjHjNprF/1r1Wb1C3WBUWDYVW8IkzDir2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=wliovv4a; arc=none smtp.client-ip=209.85.160.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-42a99dc9085so43811cf.0
        for <devicetree@vger.kernel.org>; Wed, 07 Feb 2024 13:07:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1707340069; x=1707944869; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3+K0JHb4O++NG2qWKdASN7tNJhwYArUzScEMeR8uFJ4=;
        b=wliovv4aFygG3OiXb9dd279KPSjBxIwu/B4OgsZHoAvy2f6mEsx+2sZGr0Qh991vEe
         oG0SIo/XSzvCUXnuK/VpHJbd39Jb0R+3DsRqPV62WKxJlK5/qFgZo9zDQ9M4Ysa6n9S1
         OovFJnWFtNOiDOq14+tOkeJi7hfZLcHP5lnpOTEQ+f4qaqkWdaZ4128ppTBqVByZI5FS
         vvXw/Qy5F7AFToBTH6eiAvczjvS6Zs8zPIi4KiBMAQ29JKX9gW+oqvUo+j7vpbeLIoCJ
         fcE8EC9igykulNK2pfTWqcZMh5EjEfLAqRr0kQHhM2FDZWcw/VmvmlY0TFmlCrAlmQHj
         IuJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707340069; x=1707944869;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3+K0JHb4O++NG2qWKdASN7tNJhwYArUzScEMeR8uFJ4=;
        b=wNFAP0NdEwnyIa8xvnc8cAJvQKq1DDOC27KgxVTHPL4WHynmydRfsqHhLMj8RVPn3v
         cQDu7pvAzcWzYXbj3eXsT37lO8/xZGOBQec7birCibJAwZ8IHYHoFstvJ/Wcg/L0wtU1
         8AzJK/Yxz3qtcHx8DYJ4UwN76oHoTi7WV/HwLdmIXxI2V0W7EjazVnMnr8BDqrd0Nd7J
         786xSCHFil7hP75oer4EKX0W1oXYaUmECseR5QItjU13ArqhHcjUQKXr6477rNg3XB3N
         npgBF8DcZUBDpAbRIblZODo7ULAee2wHzhRQonIHB+OGj4A73p2Y3b0K5GxRItYpteos
         rAdg==
X-Gm-Message-State: AOJu0Yzkd4RxCMBnHElU1xgr+wOlXJQVATEiaCHXodi/EGZJ2LpCj3wS
	PqMZKELLtL4Ew0d2PkwPJtnK/IRZYRAtQs+K69qL5dUKUUNAMcaz6YWDtVZuPT3eUAG0JpVy2VW
	WAAxZ4QzTDgS5yLQ6LHQa4zd4gwXgq9b+ReKV
X-Google-Smtp-Source: AGHT+IFDTWsEXAUSLB8+5iolXkuB8IWj0qoWoDo12DjqvPEqB1M3oTcGJ1UKhEtzKXiSe/KLMnbYiZ5ZWJaTZCqlqPY=
X-Received: by 2002:a05:622a:1190:b0:42c:4486:5466 with SMTP id
 m16-20020a05622a119000b0042c44865466mr236351qtk.4.1707340069017; Wed, 07 Feb
 2024 13:07:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240207011803.2637531-1-saravanak@google.com> <CAL_JsqLh6dLWjGoAFFxZXncMTY0Vw4M=Ahba1q64_M-dpZ2BXQ@mail.gmail.com>
In-Reply-To: <CAL_JsqLh6dLWjGoAFFxZXncMTY0Vw4M=Ahba1q64_M-dpZ2BXQ@mail.gmail.com>
From: Saravana Kannan <saravanak@google.com>
Date: Wed, 7 Feb 2024 13:07:11 -0800
Message-ID: <CAGETcx-bXktAay_c9q-WSyLXCwbqmZsFocn4vah_+BcZK0cgXw@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] Improve remote-endpoint parsing
To: Rob Herring <robh+dt@kernel.org>
Cc: Frank Rowand <frowand.list@gmail.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Xu Yang <xu.yang_2@nxp.com>, kernel-team@android.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 7, 2024 at 12:11=E2=80=AFAM Rob Herring <robh+dt@kernel.org> wr=
ote:
>
> On Wed, Feb 7, 2024 at 1:18=E2=80=AFAM Saravana Kannan <saravanak@google.=
com> wrote:
> >
> > Some changes to do a more accurate parsing of remote-endpoints. Making
> > fw_devlink a tiny bit more efficient and the debug logs a bit cleaner w=
hen
> > trying to debug fw_devlink.
> >
> > Rob,
> >
> > Can we get this into 6.8-rcX please?
>
> I'm failing to see how this is 6.8 material?

It's a bug fix that's making the remote-endpoint tracking more
accurate. I thought stuff like this would be okay for rcX. But if you
want to hold it for later, that's ok too.

-Saravana

