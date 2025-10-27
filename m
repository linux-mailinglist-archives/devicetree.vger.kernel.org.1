Return-Path: <devicetree+bounces-231793-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F15C11A45
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 23:15:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9B7903BA0F6
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 22:13:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9874F328B73;
	Mon, 27 Oct 2025 22:13:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mcFFAINK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB7802BE7A1
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 22:13:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761603217; cv=none; b=t+4sxQISFlAiLiSydxoTbOrbbyAZLo5kWopEf6sLVjTlraQ6vZKDDe0JFLOSwJ8ZjyA0YE0GMhRulINDWQPe5zTpwz1TMNwvHy68neCxyPZTZv6Gi2ZpaPLtjHmSk74eLrYXEBFIh64kc1LBMGrLD8o/7shwEJEdYQj4pUJx4cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761603217; c=relaxed/simple;
	bh=mQTKJScatLYjbszW8Nmlz+tuTFmWhnW9yYaJmefda44=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mnbXrBIwd2YwWMs8Hu0ziZqG/N2hWBwCJILogEEcwXg3eQ0XT+N53SJmXkOh9D7gxgap24Hnrls3aA6c6JXn5o8amj/Jt/3suLlrzclO4merHqUoOESLn5ruHJm7SUzR2R1HbwIZcEZcKe+gYM3GO8HfUAVTRYyQoeZsIBfCt98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mcFFAINK; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-591c9934e0cso7492728e87.0
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 15:13:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761603214; x=1762208014; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mQTKJScatLYjbszW8Nmlz+tuTFmWhnW9yYaJmefda44=;
        b=mcFFAINKBKl1oFJOdmUNYBj3q0Z1Yl5W5xNtzDyJBzoffk0hginF+vLPh24NCDWDwE
         7BW7Sz5S5UAt0c3nr/huh+Npyudh+fU6MefMLr4HCsZmSggcy3zfdqUq7cy9kvBAZYXc
         +VlhYJsFznVt4mNLVehv19PGbi5dt2QiT2rhQP/+vSmY61MBGhaI41xV/+N/ZG9b/4pD
         Red9o0IXhGjODfW5KXfvdowtp6RDKPmLTHUkxdFkktAMo7+TZQOjFXFqaA4w43rB5HvE
         2cJIEN+ccBR5x6Dbxy46Dj9zwwaAif+dLSlsGdGOSM9kisYlKYnctm9/CuKD83KP0v7M
         lYQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761603214; x=1762208014;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mQTKJScatLYjbszW8Nmlz+tuTFmWhnW9yYaJmefda44=;
        b=nVKuVU9Mv3Uf9udPL+scenjawimrvgcCDQS3lpZBuvjN6Ndg6uQOOi+eCPStOqLki1
         B7p9EFSvYeGNYSB7jTFmC6b44Hr6LlbaR18CQejI4MRiidJxD+pcxzXEdgZ/hiXGxTxD
         +rB4rLI3+Je4b0UHgnuieQVc6f7c6Ya5S902iAqw6fpQ4sLZU9OB5Yz/gfFyCrgqeiTH
         wwoL3/wwnix5Ura9vCVaATdkd/obGlXG+rYn2+JAIBULPuhjOA8fUvpYb4RFZmHtt0Uh
         c2ETIQ2BJOo2pjdbx6XYr+1hCLy70iL/DIguRYR4HTVJERQr5zDsFmLE5mkwNBJC0/y2
         HCsA==
X-Forwarded-Encrypted: i=1; AJvYcCWYAQYX+CZEiIIwamh5u1nh2KvSY7UhIrV6BrfSudbTEmUW0B17EFdT4qeCLaIU2CEcHFhnFcueuGNt@vger.kernel.org
X-Gm-Message-State: AOJu0YwBk2nL7NU6DjC6cX+5bOrcfG5ccz2Bhu3FJUWCFXQBMjetxPr3
	47r2yaADoaTpFB1X5pJE9gprdlZMDQTwwH41TupkJOnYHYwHXxYYuXn8q6WcSW/JyjFJiw8lQnR
	vKIiVZmFtlOjfd2XhLzB2xqh4Nvld748PBKl5SW5h6w==
X-Gm-Gg: ASbGnctSaeu11kdywfzysbhWZvJe81/F/3wxrMDYyaywPep2CSIxxqVi3oKr26O2pH1
	hoFoXaSFD1/oGmJlilnlIm/lV76dmDTQoixxEYfvAkS5naXvJbP2322I56Bq2B/YPnx39O4kPxZ
	JHTj1uwH0pEUq/8XA83xGjEbfCo629VN8dNjl+RuoNqhmrhJZdG5iUsYhvDvgcKNXuKRnvH3iGj
	uVjuB1taY1PF2BXF/ti98J8VvLmEI687Eom56vUge+zkui/o2sUVr4BHMQlwrPionZCD+3GBWmb
	4yhH7w==
X-Google-Smtp-Source: AGHT+IGiyuhAd/g3j8DFK8VW5m7bOjesol+1DXV+h5pePcwa0TlxwvPOrfmVLR7Li8szmQf8I82fLHqa33iH+2F8eRE=
X-Received: by 2002:a05:6512:ea1:b0:586:8a68:9c4d with SMTP id
 2adb3069b0e04-5930e9dd17cmr516262e87.52.1761603214129; Mon, 27 Oct 2025
 15:13:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251023132700.1199871-1-antonio.borneo@foss.st.com> <20251023132700.1199871-8-antonio.borneo@foss.st.com>
In-Reply-To: <20251023132700.1199871-8-antonio.borneo@foss.st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 27 Oct 2025 23:13:23 +0100
X-Gm-Features: AWmQ_bnPVCXY1Dpjano01hZ_Z8pqJmAtt3_jZEXugTZ4oHs4-VjsvtZbv--6EHg
Message-ID: <CACRpkda1d+WquYsUq-ntWRC0J37w6=UBcSSAwL_nroS4_h_dZw@mail.gmail.com>
Subject: Re: [PATCH v4 07/12] pinctrl: stm32: Drop useless spinlock save and restore
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

> There is no need to acquire a spinlock to only read a register for
> debugfs reporting.
> Drop such useless spinlock save and restore.
>
> Signed-off-by: Antonio Borneo <antonio.borneo@foss.st.com>

Patch applied!

Yours,
Linus Walleij

