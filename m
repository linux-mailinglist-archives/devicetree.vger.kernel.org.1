Return-Path: <devicetree+bounces-229114-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6D5BF3C3E
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 23:35:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 807AF3B0771
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 21:33:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AC7A2ECE9D;
	Mon, 20 Oct 2025 21:33:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="E86mJ40O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f52.google.com (mail-yx1-f52.google.com [74.125.224.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC9852DF3F2
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 21:33:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760996019; cv=none; b=FQNJYzqbTMjsvO1IuW90uSEJzBXfF+R2mOqXN/7EEVYkwNYRXitzqOtxdIQWd/3dqMnZl+lzONqOZSKcaMjniuENkLdbOzfFuAAYGEJgd/34u6In4MkanZL+XT++P9KqrXOhKjnIM9+Q+p0niReNKHxzrTc+NzNZntwXlT9O1KU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760996019; c=relaxed/simple;
	bh=YrGlth5fvXPzZeAmBmyPZPRYd5dwsROMF4koS4KTwi8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tGHjvFkZ4a7Kxy+wDL34V4D5VJrl96xzsiyciGVSj3Tuquw7Mb6TOknjiMGAhQZN37lO+uCXkTS3GV9L/OT0mwMi1T6STD5OrrDxYvD04nggqn7M/Tha79z2OYSgnH4ENlXOvrkJGmC8xnZ41/FWSqn9goTLXrMmOl6wjMX4Drw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=E86mJ40O; arc=none smtp.client-ip=74.125.224.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yx1-f52.google.com with SMTP id 956f58d0204a3-63e1a326253so3774505d50.2
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 14:33:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760996015; x=1761600815; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YrGlth5fvXPzZeAmBmyPZPRYd5dwsROMF4koS4KTwi8=;
        b=E86mJ40OvCSR8ntDIfW649tLJ3wA7fiz3uKUgMSOyJ9DZi+nQQwGOqK08FRAv48nMP
         d4EZISYUjzAQ71gtqtDL9uvu8yZqO3WES3b7L8fFqnr8JcSxV4av+x3iW2c1Twp7cWFZ
         XqtiwPqsoUUItd5AGt4ifPohAmmWvCA+VjTpHl4MnKC/4iAU+K1YtT2aS9PkjhK+IBOo
         LfHPtBpjQYk04TObgLLk18+WwBetmrP6r7/Dog3zLmgsQoB5XVvXxjdrU+teHpViHQYG
         8xhYcwfRHlfmp/9u9BB/gedTapeadLnLHjqkTOhiq5/zyNXFBiGAU6sYTQOm6Bd4g1rh
         +beQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760996015; x=1761600815;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YrGlth5fvXPzZeAmBmyPZPRYd5dwsROMF4koS4KTwi8=;
        b=Kn0lZCPQ2vKNENSbm7iRdxyOPfVTpDzBGzxyCfuj6vQGGpTMZ6mHztXRLIVmLv3VZY
         9nabCvKQZS4m9BACFvgLGWlTk13NaGz6yWuFjVM4TA2Ni9FwEQIdOUY80f9h3ZdWLhP8
         3CEzGf5+J0bpl0S2UPPQgU7WI8TtrqoaCliqoCCIpRbtDTGefoyVvmTMiq7RHU+ye2To
         MbwCoyD+H4LKIyF9V2YJTsul6v5Z71/niWm7JusKUBic8a3zYUQQa/bfWhlKPh5zhMf/
         jZEWXMeJLXFZuTuIfetWB+7EXBVdUtzMh16N+hHyWtl2Sfzl/YmDHpwUK64Df0+U6evL
         qr6Q==
X-Forwarded-Encrypted: i=1; AJvYcCXqmTVPtUhgj4osrdDqimRX1DbbKzx/fsCuBpv0p8Hmm8nGByEHiBnVxzdI4ynHzOfRLyX8P38Uo6mA@vger.kernel.org
X-Gm-Message-State: AOJu0YwrKkLszumUdFkcci1SkDHI6emDy+vQ0e/7vTccTMrDDQ7ZRsEX
	8t8Z7i21dZkSD9nUWhPWOkVnYNtke3Rfxl3ZYQdr3GA0qugPmsRQX3LfN0dgZhNKlsqja9Rj1FK
	sHzIRmYAYFYelpyKe7upHPSCCRHwkkSzpqNEMlyIg6Q==
X-Gm-Gg: ASbGncsumW+7OXK/V8p6AtlU596Qm7OY20J0avI7GCvMNl6QzOo5P58RGGKpu6AS1zB
	UGaJYzylQZFZKQZvY3BUkEWWBQ8GGnsq/heZ7URpDHcmEEu+VTJibhlxk6warsxVulgORZ1euFT
	RHX28jf9kyxvLM3ERjHHYMRmzLjknrwoEmtpFTc+h1AxQw2+IXhWlEqJnhFWZ+GtCxTTa17UyJK
	rcIDyLael6b7BFI0PHkCY5aq8JOjQDlErpuz9k9P1N+AjCmwZirhROTnZI8HdnsPcpuXPc=
X-Google-Smtp-Source: AGHT+IGnAj+PvLwk6sz8k8VBBs+rDQFENAxd89cmxP0Cskfc+qbx8RLj0mUzmzdGLHOstur2GpIPaCgQ2XYuSy6QrTw=
X-Received: by 2002:a05:690e:1558:10b0:63e:1531:b3dd with SMTP id
 956f58d0204a3-63e160e3c4amr9861710d50.7.1760996014901; Mon, 20 Oct 2025
 14:33:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251017074646.3344924-1-gary.yang@cixtech.com>
In-Reply-To: <20251017074646.3344924-1-gary.yang@cixtech.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 20 Oct 2025 23:33:19 +0200
X-Gm-Features: AS18NWCltDS_N4NaY0c3A83FgC_-lfyfiL8AVRFFfvMHb2dlUjXD7k7Kzg6VMk0
Message-ID: <CACRpkdbcSkKnwODw_utWEUcwg+Q=_h=psM6ZKphGUr4iPqK4XQ@mail.gmail.com>
Subject: Re: [PATCH v4 0/3] Add pinctrl support for Sky1
To: Gary Yang <gary.yang@cixtech.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	cix-kernel-upstream@cixtech.com
Content-Type: text/plain; charset="UTF-8"

Hi Gary,

overall this version is starting to look really nice!

Please address Conors comments, then see about the
compile error on the driver itself. The code looks good
otherwise.

Looking forward to v5!

Yours,
Linus Walleij

