Return-Path: <devicetree+bounces-117008-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 930199B4A03
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 13:46:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C67091C2279A
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 12:46:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E808205ADF;
	Tue, 29 Oct 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="wr6DQDzV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFB5720262B
	for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 12:45:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730205953; cv=none; b=p8/80oYUqjjgJ4WbMHOlH0mJtTBvEIJvP3nPCfoIzXvIuKfMF2BS3zeAnwM9r4DuRAiw3ixTHwar1SehhN0AeHeWlW5hF6GjEjxjaTpY6wU/8PnyhGMvNgHKz5Qi0TAROxicvfuekHI/Ftvej8bYLnpnukKOcIFQmQ/nNx5EaHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730205953; c=relaxed/simple;
	bh=GtzJ47n0bMGIC3fQwXJAU5Hmzy0ocBZhCDRYOCRmxZU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZLIowuJx5mV/CjEPOjSgOzMexbWZVp7xqkZeQCn//p4hpoZ7DQO7uvH28oCe5PUTGlfWNHZZZuZwhlQ1I2AzE0BR6DwGfeX73QN5ywGr49VElMq+JK5sLbV0Vav4zw4WqtA6yl9Eqh+4d7P6f+Q4F9JTAmvD2FxbvdbU+3OtE/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=wr6DQDzV; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4316cce103dso70931075e9.3
        for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 05:45:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1730205949; x=1730810749; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GtzJ47n0bMGIC3fQwXJAU5Hmzy0ocBZhCDRYOCRmxZU=;
        b=wr6DQDzVgsxzoBfN0tOEWhKrDMMy2lq+MYC5dZCB9175P8C/HW975PcOeeAOB9/Oep
         WhwYf//UYIuPF+YWVT/Zsi3xHElNMHr3AaatzUdRw5npggTaV2CUpXVy2W8La1FzWn25
         gJ4L372teJDi8wISFxQKpBjxM8PUmwl42/i2tplU0Upi8HkqDy4iwOWb+bIYcT1EarQK
         0uiaYjSc7+zHFbD9JIbfA76MiYu6SR9J/hYzukeo9h1QzZ0xls4hSlPUBUVoaps4YxOy
         HVuVUPg6iX0hFqsTXbZDNG7aEQ2uvjF9jebQRZ9OfPe90ZLENK048af0b8ioNal40vW3
         2oKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730205949; x=1730810749;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GtzJ47n0bMGIC3fQwXJAU5Hmzy0ocBZhCDRYOCRmxZU=;
        b=p1O3tVOH/hz5WHa2yREjU/R4mZ9QftDLIKHi5m69zay25mABp9yLUIFatcY90zE7P7
         31yp7Xze+0BkLH56rcfo/YMmMa1jHPV2dDm+9Q3xwlQ/5qxzpN1Sg7BJn4Go7eUw85gl
         CTvEL0YNFfpoy4ftCVGSzuijqImKpzc7SK9NDwe/dugmkvwbLRCCfGnlMOZ8zVQM4C0h
         TURE9n0B2aARmwgKxrIZIZU3+KcJFEEisXe8HQDL33i4EsT7KgCBe9+de1+aIO8B1aQw
         hGpneFW7g21aDwT91qPDtJXWBOVWbCO1ym5pMgxxO6A5GKW3+/bjI7j/Lp+3Hi4b8a64
         dx7Q==
X-Forwarded-Encrypted: i=1; AJvYcCV9KQeyB8XXi4vRznF+0NOsJdmuSfXFZ7QF9gyFAXpoJ3WzKKvDJTcD4YjBiD0G2iv8m46dqAPhzRTV@vger.kernel.org
X-Gm-Message-State: AOJu0YwOlqEE8mAp7MjrfXUUvd1oObJaHTDSZbfJayjhHZSCJ6mL5bP0
	WAKrX9yfXTdw9oWDlWtDOBUNbO9QityaVa9zxdlzHmZpQy0Ojma3tAHJk25Gbgpz0J8rEddBtHJ
	+ZccJUFwA5VUADLIqPSRKSYLGPenAp06q7gSG
X-Google-Smtp-Source: AGHT+IGeiowj3zMHJ3YR03nzzPGzLm/Rxvr4HwKwchMRBnozZXVzhVD6hnCcZcIEs7fKbrQEswkrjJ+oz3BaJydpoLA=
X-Received: by 2002:a05:600c:1ca1:b0:431:518a:6826 with SMTP id
 5b1f17b1804b1-4319acadb66mr124917775e9.19.1730205949075; Tue, 29 Oct 2024
 05:45:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241022213221.2383-1-dakr@kernel.org> <20241022213221.2383-3-dakr@kernel.org>
In-Reply-To: <20241022213221.2383-3-dakr@kernel.org>
From: Alice Ryhl <aliceryhl@google.com>
Date: Tue, 29 Oct 2024 13:45:36 +0100
Message-ID: <CAH5fLghQ3Rdgk+xzz9RzNzTs4vYLMO0q-SkDOrnb1u4TkPQVUA@mail.gmail.com>
Subject: Re: [PATCH v3 02/16] rust: introduce `InPlaceModule`
To: Danilo Krummrich <dakr@kernel.org>, ojeda@kernel.org
Cc: gregkh@linuxfoundation.org, rafael@kernel.org, bhelgaas@google.com, 
	alex.gaynor@gmail.com, boqun.feng@gmail.com, gary@garyguo.net, 
	bjorn3_gh@protonmail.com, benno.lossin@proton.me, tmgross@umich.edu, 
	a.hindborg@samsung.com, airlied@gmail.com, fujita.tomonori@gmail.com, 
	lina@asahilina.net, pstanner@redhat.com, ajanulgu@redhat.com, 
	lyude@redhat.com, robh@kernel.org, daniel.almeida@collabora.com, 
	saravanak@google.com, rust-for-linux@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, Wedson Almeida Filho <walmeida@microsoft.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 22, 2024 at 11:32=E2=80=AFPM Danilo Krummrich <dakr@kernel.org>=
 wrote:
>
> From: Wedson Almeida Filho <walmeida@microsoft.com>
>
> This allows modules to be initialised in-place in pinned memory, which
> enables the usage of pinned types (e.g., mutexes, spinlocks, driver
> registrations, etc.) in modules without any extra allocations.
>
> Signed-off-by: Wedson Almeida Filho <walmeida@microsoft.com>
> Signed-off-by: Danilo Krummrich <dakr@kernel.org>

Reviewed-by: Alice Ryhl <aliceryhl@google.com>

Miguel: I think this patch would be good to land in 6.13. I'd like to
submit a miscdevice sample once 6.14 comes around, and having this
already in will make the miscdevice sample nicer.

Alice

