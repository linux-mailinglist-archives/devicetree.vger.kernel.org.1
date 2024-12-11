Return-Path: <devicetree+bounces-129688-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B6CEA9EC8BD
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 10:18:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6D1CC28212A
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 09:18:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CC84233682;
	Wed, 11 Dec 2024 09:18:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="ap6NNcZV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3132336A1
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 09:18:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733908715; cv=none; b=Aigy5I3jAUcTSiXAgqHmBIjTcbvG8t6if2vAO6M0njOjYDDVKU7iByp7tgoemwi7g1KKdBcPRz6EmiEcB2lFUCjYVzd8TdCD5BkGmHRcVf8CD+QNNy12eMno54Pkc/A46+seno2cZgHifMoRXhRt1Gl8I4jDBaNYPHeLp/lJqWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733908715; c=relaxed/simple;
	bh=3vHYlP+vndcNXuZOI6XprGkQpKc6n1GhE/RqwAQGt1M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=poXEgD/ki4Jzh0vwbUhQaQu9m6o/XPbf+QaKkQzOS7v7+FTL+Cjp/baA5GBwEOy3wn+bEYSqfi8kB0GDbalO56TmN7bpT8iuwVYqRhqq/7pEvu7jGpDZ+dVeLyMoPZDxR+aghrGH40PBrFefZt+e8fdltc9wZy8MEVoNiIXUOyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=ap6NNcZV; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-434f30ba149so22493075e9.0
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 01:18:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1733908702; x=1734513502; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3vHYlP+vndcNXuZOI6XprGkQpKc6n1GhE/RqwAQGt1M=;
        b=ap6NNcZVR9tEdDFafFXVp8tZwW1IbPCjW6gAJOCL8T2Yeu/XM7u5+iMinmN9oD5r2L
         0JNFgDECbdlm/XEY5pAJoB9z4mqPISbUVMQKv/9DVRX7eDN1PSHbQv7ukZCGhwVrme5U
         qwDjtLamHKHP9xUVzThABInaLbgV+AEeDJ/4W5w32lD/9Sa6O/JFwBy1PvRWdoymYbhj
         mhF6yt2jvO7nY0lBqA62zvDTUS4EGXyMIcXpNwEMmkr7h6q2iIuHoUgq5xvdj2pTUJiX
         QkKEbmjFe8ilJ3apuPAu1lH7zLbnyi9ZTiIaSZD0D+F9Q6cxpmlfgGfe9rGdTyGgzR3H
         7UuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733908702; x=1734513502;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3vHYlP+vndcNXuZOI6XprGkQpKc6n1GhE/RqwAQGt1M=;
        b=KPEkikLsKRa3SAo6o+einoYd0eYfd6uMvHhIaWSOT/KwWVm4WgHldCSDPOykQWIrcA
         1v8vFjjLlsI6f561Ut514ozN5TMFxBPRzTJoMmlPQLL7KeHa6Iv1IsO7g2TaA6qQR8fg
         Y4tFSZmOjayc46teeI3UVu9uZpQF0KiWzqHay1I0WwKQmSOy2xWThK9Xm9feGSyQQHJf
         ZbC1IV7bpMxM0tT2zEZn+Og6xRfLY6dS+rSgm5dzv44IOJLpmphxS4WsVlWkGsSk6ul6
         MgHv0R09b1GSgWSAPxn2AQ9ZmK0XS5Q1xexOKbW3OoYKMg2yVMMjTVi7s8Oai1B4omJw
         4g6g==
X-Forwarded-Encrypted: i=1; AJvYcCX9QeXv+fFsLaKxgDFYc8FX0apUKH8emWwi/Cfoy0uzF1pWQyL2TUdtjPnnFnO7pIHnbxNq60MErmZA@vger.kernel.org
X-Gm-Message-State: AOJu0YxruzxpZ1GnLGgFuEqrT889HW1ghCi8II3z8m2Icnv58gOOJZDD
	hhOQbauOYPHv1daDNhLIqefXBEeyFbRy/89yfftrKyeosohvHv4fshvlnVyjGInjUXJfgEk298L
	ohiLQF3NwABcnwJJSdwynE1rHql1BZdqckkkV
X-Gm-Gg: ASbGncsDbaXDiIB3Og02Kkb5I3d+SPpMbkpS/XGdG+PBuMyorWRxR36wtlH1aAud2Ue
	h+25iIzKDKghZi8gYUuVVB9O4asD+ytmIaIMaoX8sTsBw/m4K0WKPD+WrBGcm9A9pLA==
X-Google-Smtp-Source: AGHT+IGXlwylyC3zJtiNHL0Jm3c9KPPDvqnLEc6f8/awzTY/st7wW/grsH5pHA1x0LnLhySjtkPO/7zB4NO4hs7+tfc=
X-Received: by 2002:a05:6000:18ae:b0:385:e961:6589 with SMTP id
 ffacd0b85a97d-3864ce96d45mr1556644f8f.20.1733908701835; Wed, 11 Dec 2024
 01:18:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241210224947.23804-1-dakr@kernel.org> <20241210224947.23804-6-dakr@kernel.org>
In-Reply-To: <20241210224947.23804-6-dakr@kernel.org>
From: Alice Ryhl <aliceryhl@google.com>
Date: Wed, 11 Dec 2024 10:18:08 +0100
Message-ID: <CAH5fLgjWGRCzy9WXVd=ggi5=R6e8Z12bq8yYwAQLxLMH-uObMQ@mail.gmail.com>
Subject: Re: [PATCH v5 05/16] rust: types: add `Opaque::pin_init`
To: Danilo Krummrich <dakr@kernel.org>
Cc: gregkh@linuxfoundation.org, rafael@kernel.org, bhelgaas@google.com, 
	ojeda@kernel.org, alex.gaynor@gmail.com, boqun.feng@gmail.com, 
	gary@garyguo.net, bjorn3_gh@protonmail.com, benno.lossin@proton.me, 
	tmgross@umich.edu, a.hindborg@samsung.com, airlied@gmail.com, 
	fujita.tomonori@gmail.com, lina@asahilina.net, pstanner@redhat.com, 
	ajanulgu@redhat.com, lyude@redhat.com, robh@kernel.org, 
	daniel.almeida@collabora.com, saravanak@google.com, dirk.behme@de.bosch.com, 
	j@jannau.net, fabien.parent@linaro.org, chrisi.schrefl@gmail.com, 
	rust-for-linux@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 10, 2024 at 11:50=E2=80=AFPM Danilo Krummrich <dakr@kernel.org>=
 wrote:
>
> Analogous to `Opaque::new` add `Opaque::pin_init`, which instead of a
> value `T` takes a `PinInit<T>` and returns a `PinInit<Opaque<T>>`.
>
> Suggested-by: Alice Ryhl <aliceryhl@google.com>
> Signed-off-by: Danilo Krummrich <dakr@kernel.org>

Reviewed-by: Alice Ryhl <aliceryhl@google.com>

