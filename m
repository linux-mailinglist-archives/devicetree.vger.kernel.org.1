Return-Path: <devicetree+bounces-231787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A9093C119C1
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 23:05:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6883342286D
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 22:05:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C84F2F12A5;
	Mon, 27 Oct 2025 22:05:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AY1Ok+NS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFC4F2D7812
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 22:05:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761602704; cv=none; b=WZCjaYcBooxaRa+3XisLOMFi+/1NTa3Z5ZrfBZtFJjTBV0LagTFkG/v1/JcdbuB6j7a7NjA9goWStckeHWwIvHMX0z+o+QT5SM5M1FsGYQMzYyVXPa8ZY2GuFVU+pM08w78IfA1Xf+91xEo68pFTpLD2h84/6fmbifkrezNMLDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761602704; c=relaxed/simple;
	bh=881iDkPEZh85ObsSmrMAZ48Htve0Wj9g+gfovyJ15uM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HxdRG+oTzALfZQCCrrGIbJJfHb5rwIEVRcHhnv8hpZ8vATmq8XHCbTXD7ZrD3AydvItQtyctjqIPhsV++U/RvA4YUz/PzQDxkDpDBYer/3R51DRYXt+83sjN6jTWhW0HrOwh1nEOnEjAlDlBtIgOBDEY4YbsdnHTyBoL3GVec+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AY1Ok+NS; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-378d710caedso57603461fa.3
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 15:05:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761602701; x=1762207501; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=881iDkPEZh85ObsSmrMAZ48Htve0Wj9g+gfovyJ15uM=;
        b=AY1Ok+NSj05rf5B6Qk9YA4ZHIYVjoSO1m2vXDJeJK5UNKe9mRGKsXW5EnjQ0+JwY6L
         bInfp+u8gcsWJtvLp6SYv5te/smbG06Hrx7cLF85ElCL1bWXT+uTCn2Emih0ODIR7t5x
         HBLmm0G33Xx1mX8/lmv2UH6YLP6fZytuQTv/frdf3MnQz/QHmHrt64Q4OKtAeUiMcezu
         L15qNzUqKfgFWdeS37d+PdpwXF/5wVxbb4ohDQ3FbZjiZQrnXPF2TR+NQX126RWOO054
         7y+dcqJ0DhZBbZ+k2auEkaEG2j0cyzAOyMEnGX8Qpw21DUJCAz4NXickpHwIsoEl0lXr
         +NXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761602701; x=1762207501;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=881iDkPEZh85ObsSmrMAZ48Htve0Wj9g+gfovyJ15uM=;
        b=CcDsoShI7NlT41x7VZCwQpSeTxxFkl+6VGbHHah1nRn+gf9EwbHR1G1pcA9R0WvQHS
         n3Qaf8TyZ/5GvFl1+UtzqwSKLExLnI+UCeLqsvCCCgB9z5JSQr7c9i4Yr0CrHK3RKKMP
         siaD6XiIlQvEyom+05ICua2WTSEV7UOAtCHbgbZDIq20jXuBu3LpovG2ruJ/kqBNbnIm
         4bkH17Sukbh8SsNtELom8j16aJenu8tgc+cpYkGoFYvExYbBzsoAkt3yJ1bzARY9M7fA
         ddDfgeEOMkHkqGj43Gs6JT49svaXXfiBo5wcQTAeup3Vu4/V8HCJJIkByK/fgV8T9gTj
         WrsQ==
X-Forwarded-Encrypted: i=1; AJvYcCWMUpvYFlgRlaC7WIoHh7/p0DFLlFn3rU8aWsyGq48VE43zUiuZ8UT2EVanr3wr69kUNESLsHqZUM9A@vger.kernel.org
X-Gm-Message-State: AOJu0YwpiKY+vw86eK0dG9+TvTv6fYNytagYQejHnhqZcg5SnyB41H0Z
	xnqtXg3NmV5VArIJfDy2sY2xT29YcCZ/8RyJf8jBcQExvnznrl5YSnGoc7AqXUBwCN/lzKGJvUE
	XztVfYlfqpy0jwBJlD/nk1fRvZs7gK4UGFYtKPC5IMg==
X-Gm-Gg: ASbGncuADCy4NaZDuEaBsXWFCZM7bPEoRWzs5lITsCjpnc4dFUCvECDIBLA/9abM1HV
	JoVC9wFQoMrUENOG6POGwIw44xXOl1H18ARvIRs1EbKvByGAhoGi6RnCUtt3iAyRXkNNK1D/T0q
	ekGqquyWpMfbEAjq0pEYxaKNJUBZAKlrOrAeOSiFmHoj1RuDfXOkOsA8o0mxEIwbEOl8759qYi+
	z8TUOhqU7NAChZMffJtivCu2+O6oZaGtfqw1lz+tHXuQsfl23pKB15ikogDCveqtOaNXA8=
X-Google-Smtp-Source: AGHT+IHoUF4RHiTK1ixTbcpPhI4tBBI8uNgdSo0LDy74WVyTiTCN+lBwjm/Roz3VFn6Yvs6CWMINeSQ/2LwI3eIrZ6o=
X-Received: by 2002:a2e:ac13:0:b0:378:d757:d307 with SMTP id
 38308e7fff4ca-379076bc3a7mr3168981fa.11.1761602701023; Mon, 27 Oct 2025
 15:05:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251023132700.1199871-1-antonio.borneo@foss.st.com> <20251023132700.1199871-2-antonio.borneo@foss.st.com>
In-Reply-To: <20251023132700.1199871-2-antonio.borneo@foss.st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 27 Oct 2025 23:04:49 +0100
X-Gm-Features: AWmQ_bkqvtHBv2ihzMqbHUb5leNu-ZCVXzL1Rr2PRCeRlwPcmd2dgcjDCOHd-pw
Message-ID: <CACRpkdYUt3mZX_KjFps_BSRQVrPcn70SrwEJGKRQUjHq3VXcDw@mail.gmail.com>
Subject: Re: [PATCH v4 01/12] pinctrl: pinconf-generic: Fix minor typos in comments
To: Antonio Borneo <antonio.borneo@foss.st.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Bartosz Golaszewski <brgl@bgdev.pl>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, 
	Christophe Roullier <christophe.roullier@foss.st.com>, 
	Fabien Dessenne <fabien.dessenne@foss.st.com>, Valentin Caron <valentin.caron@foss.st.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 23, 2025 at 3:27=E2=80=AFPM Antonio Borneo
<antonio.borneo@foss.st.com> wrote:

> s/specyfying/specifying/
> s/propertity/property/
>
> Signed-off-by: Antonio Borneo <antonio.borneo@foss.st.com>

Patch applied!

Yours,
Linus Walleij

