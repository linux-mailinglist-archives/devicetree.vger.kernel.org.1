Return-Path: <devicetree+bounces-240081-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 659A7C6D25D
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 08:35:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0613B4F2E1A
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 07:33:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 768062EE268;
	Wed, 19 Nov 2025 07:32:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="lZOYKIPb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D4742D73AB
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 07:32:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763537567; cv=none; b=Ny2ch4H74F1/DOVFoJu0zsANp9QO3sNjOvIMNhUjBqPfsvuE8LrOrhgBOIPvkfBRTFs6vTYbcnJcF6MGoK7nFIi1dNgPbGeSRDwQcyPJEjm8DLzUpgYVk/60qzUE6msxu894z8xR4o7uYWMTuTxg+dy5Ir1qOxg8LZUDUYDuBe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763537567; c=relaxed/simple;
	bh=QH5oLqLZDQZSVsmh0LNkhFrypl/KCzx0EX65VAszEfQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cNKr9UUbVxirIUgE22xhMOpTe8SYUSjQkgPenJcK/1seeY8D6IuuSiRj/iMto4roRll3WC8HPePB94I/5B8gZX+Ff5ehEI55Fan3FtS0UjDo6j6n622+XA1NeQikvkgy+GD1dHxj6AxCkR6F3froMS4dpc0TXvKY+NVPfPLtbBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=lZOYKIPb; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-37a2dcc52aeso63916941fa.0
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 23:32:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1763537562; x=1764142362; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IO0DNZhiENG8w/XHNdOtB6qefAmL2Exx733Q4ukPAMg=;
        b=lZOYKIPbNO5j9gD1vaA93jUrkWuj1sWlbaJDz9n6DJRcQhZAwcH85ULQ2UTXDxlPVA
         8aFLr8rBiZnwYubHT4H7yFS9rDxuxfE426MSOhnF0ZuNENsHiT4Ueghgj5ILj2owhSDu
         M+JnmIE7iP7FCcyWpb2hFVWn/b9Ls6uRPAgII=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763537562; x=1764142362;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IO0DNZhiENG8w/XHNdOtB6qefAmL2Exx733Q4ukPAMg=;
        b=vwWm68QO2pGfrS1JNVfYV1B8rUEPaGxQm8wZT/hzHmNbWEtZYVYfZvTq1F9e1H0hBS
         d2G2zrnZ4+oH5Ic8q4XDqiyuquZEN4nQxcRhqNAkZAF4wQ6vo+9c8Z5nbghVWDSV3N8R
         rjk6IrqQxLWUMUAlBSixtX+l1QQAQjz3hJjfpVjEN+dvIfSdhW+BmXki79bACTidMRX9
         OPtcvCCVMd26UrcDsbS2NgfJ3exxDETGnZVZ/t5ZmnaOm96IgIrP3VTny2WIpuviw9gQ
         vHEVVS8IkM5cP5lEP4tXgtSVKQBNx8GufWtLv0DTuBhsbDaqx0cDT+n0jCmat4f03zBg
         IKIg==
X-Forwarded-Encrypted: i=1; AJvYcCVbMu7Ovi93H0IMHhDu2B+J2wDcf1IdE9oLzDJvSWNSLFKXbYWw3wziVHrYUI0Mx+L582Qvv0hcnFlR@vger.kernel.org
X-Gm-Message-State: AOJu0Yxwzq14v4I+M5TU3CBSNaNGK6Nk3VONfB0eRt2ZaqrAqvH1NZDu
	VbJgjz/vkPjpNj1vxkPL8ron6AjbVnvcdrrvOoFRUZf9ERpqp2v6W2JdHVoRGH3BtDXZ3o5KpGV
	9BfK/BbQY/uHObbz0gdIqJ3nNwUux6ex7G7gpNoWU
X-Gm-Gg: ASbGncvuFhYwygAe4Z8BQKou2/tRxzcRb6Wyt5zQQF621h1+M5Uk+4uPayMIwsOCNNZ
	Ak0HHd1eJ7v+juQejMdo/3EDa59hY6qdAc/awOVctun/SR6/GjVM9ukx7OPoC83CxmAhEG832vh
	0cRxN3HOtLUUWLKMUdpuSK+0ptMfLn5dEPudkQPEpyjgLbNdeoSWTmhY+6cMxrPaIgjgTwV/o7X
	xeOPHqElnkcmmrlMSIdTpkycdYNIgvARQMCl3Gr7h6Y9mqY9D81kUUDjH5eAHzSgr3HhFqjVqTp
	bWOYdoJV3auL7/oJ4Ahn3Q0fkg==
X-Google-Smtp-Source: AGHT+IHJrAu1K7jWQMAE6p11RyXzPNk9G1nAtzaQ+Z3fQ98mNJH85oUoeMLP1XXO3FI/y3LlEG4mixCcvEMB8DZHxuc=
X-Received: by 2002:a2e:a1c7:0:b0:37a:432f:8ecc with SMTP id
 38308e7fff4ca-37babd71d49mr48399931fa.33.1763537562422; Tue, 18 Nov 2025
 23:32:42 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251119071126.1719405-1-wenst@chromium.org> <18342493-54f9-4e5c-be05-568a3026663e@kernel.org>
In-Reply-To: <18342493-54f9-4e5c-be05-568a3026663e@kernel.org>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Wed, 19 Nov 2025 15:32:31 +0800
X-Gm-Features: AWmQ_bkw083HXAHlfoTHPiQeY1k_8hzN3vGBWotGu575ZiGZHcE5k6oSmz34_IY
Message-ID: <CAGXv+5EnfwRA1SMvt=3n7gj1gS3BndXKNVfmfkC=y6n2A3VsdA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: firmware: coreboot: Document optional device
 specific properties
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	chrome-platform@lists.linux.dev, Julius Werner <jwerner@chromium.org>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 19, 2025 at 3:13=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 19/11/2025 08:11, Chen-Yu Tsai wrote:
> > Coreboot, or the ChromeOS second stage bootloader, depthcharge, will
> > insert device specific properties into the coreboot firmware node when
> > there are valid values.
> >
> > Document these properties in the binding.
> >
> > Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> > ---
> >  Documentation/devicetree/bindings/firmware/coreboot.txt | 9 +++++++++
> >  1 file changed, 9 insertions(+)
> >
>
> TXT files cannot receive new properties. You need to first convert to DT
> schema.

OK. Let me look into this.

