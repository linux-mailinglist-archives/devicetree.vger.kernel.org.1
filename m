Return-Path: <devicetree+bounces-85203-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5034592F4D0
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 07:00:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 074751F2405A
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 05:00:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E097417C7C;
	Fri, 12 Jul 2024 05:00:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pB7faLpe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79EC517996
	for <devicetree@vger.kernel.org>; Fri, 12 Jul 2024 05:00:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720760424; cv=none; b=mfClbtv6oda+tadEfnfWep2ZKF4cv7oggyslP9uKoZv7tf8N5SQuUenqCDjUu/YheAA2rESs3qvAdU5JTqyrMHDQzxHpyCjtxc/RZC6eyukp+HgHfGFeu1mKwtzjtNcHiDULe20eYq1YaC/UrXy+PJ2zxnaV9HoELd87+ItHczM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720760424; c=relaxed/simple;
	bh=xtREc+nIH3/pIs22PXknrsxKAv9mk8z/DpRw7fu7kso=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=ix3Fey0ucEu1H/CGtikyY7Ta3oCAZ9j3cHwTUTyADfe4xOPEsA6zPhuOPs6RAW8ZZePyNzo9SUPePev/jyNnQ98Ka3T9/xMCu9QxlVdfCZBfYqwpIdpbY9jdM+RWEHe6nVKGzKmNnF4d9dwG7uSte285XEAuhvQSV0ajeirPypY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pB7faLpe; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-42660b8dd27so10268995e9.3
        for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 22:00:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720760421; x=1721365221; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xtREc+nIH3/pIs22PXknrsxKAv9mk8z/DpRw7fu7kso=;
        b=pB7faLpeVi+WDWOq3IWH+hnI0QFI+KQGUj9uO4ENgazkYZg/8+gdHfguV9/fhEGip6
         GaLl72DnNJZV4NKmdXk+sjUcAKRDt65rH5HZsrC3uS8YynIpgz6/CQGPFwcvNiA10pvd
         m7zAdOxfsoyCLsPOTVi0UCjW6zwW2fzBrjJE4xjRKsiHCT1qt5KnR1ZvdXSroJBgIn/Z
         qMlY6S1ufdNYC+pzE6LLcWHjT/YAmRG3mHPk/Ta7MTjx53k+rK4a7EVwAKXDCNvCcOjR
         1fxomeSf7pKaWfryWiEU0fCCdBdIyasWkS73BE4TRtXjEQTgu8tuzDku4k5V1QYnMrSX
         mD0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720760421; x=1721365221;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xtREc+nIH3/pIs22PXknrsxKAv9mk8z/DpRw7fu7kso=;
        b=Cku1iS/BfjWiuvUATJUAaEgmQiKRDpKIQysv43d5uWzH/mRsq897TfqgF7pAXdySJ3
         YAZKuT5ufOdn0YRr6qo1+UPkGvH0hbfH6A7cN6AMuivB9GZCkSR7RDqI3QiXmruwg+dc
         BfM33r6R71Y2N+lmjQ7l+wQ9aUsomNtqAQdbJsD0QfyMRvCDt58C6qgyEPGUDuuX3RX3
         Ds0zeIjSvt3gPI96jg5XQ9Zxb8e3LLXvXatGihemd7wl7Lk8XD6nYnq7ryjzT1aiGRAm
         5cZD5iHe/R+NiS+Mjm5IP2QMEOOBltK6LiVTNPXjL3g2hfBfhgGmnQThsit2oaCtOYjC
         XWYw==
X-Forwarded-Encrypted: i=1; AJvYcCWxP0xWca6izizjFPW17852H2SJs8Br7jw45HyYyiNY/Iuhh4qMdl1990zJnWlHdwcCV7+PvXGghlyHxUJbQdzYU7/aXAsNXIQ/Pg==
X-Gm-Message-State: AOJu0YygTgXz4iqXJ9qXIBeLFWEzlIhzQ0phNPDaaH6+Fa33YO6Ky6N5
	qrzHJswExSGD+N7TN/c8MuROVAJsc+czCtZ6I+xfNRd0unOfNQDQ2EOvyjR6bfw=
X-Google-Smtp-Source: AGHT+IFiYFIGKJfQyPnchd/fwzShUwNh2360VhDrC8CiwYOSi3Z+91egB0zDkeO+M7mP7Zw60Obmkg==
X-Received: by 2002:adf:f584:0:b0:367:993e:874f with SMTP id ffacd0b85a97d-367cea8f98fmr7195391f8f.34.1720760420550;
        Thu, 11 Jul 2024 22:00:20 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-367cde89198sm9143958f8f.60.2024.07.11.22.00.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jul 2024 22:00:20 -0700 (PDT)
Message-ID: <74fd5d7cabfda98f578b5a4d4f4df1adba05ca3d.camel@linaro.org>
Subject: Re: [PATCH v3 2/2] clk: samsung: gs101: don't mark non-essential
 (UART) clocks critical
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Marek Szyprowski <m.szyprowski@samsung.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Peter Griffin <peter.griffin@linaro.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>, Chanwoo Choi
 <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, Michael
 Turquette <mturquette@baylibre.com>,  Stephen Boyd <sboyd@kernel.org>, Sam
 Protsenko <semen.protsenko@linaro.org>, Tudor Ambarus
 <tudor.ambarus@linaro.org>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
	linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org
Date: Fri, 12 Jul 2024 06:00:19 +0100
In-Reply-To: <0faacbeb-2ca3-4749-89a8-6dd81621a07d@samsung.com>
References: 
	<20240710-gs101-non-essential-clocks-2-v3-0-5dcb8d040d1c@linaro.org>
	 <CGME20240710132933eucas1p1b4367ec7a3938a39e732b3079eff6f32@eucas1p1.samsung.com>
	 <20240710-gs101-non-essential-clocks-2-v3-2-5dcb8d040d1c@linaro.org>
	 <0faacbeb-2ca3-4749-89a8-6dd81621a07d@samsung.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.3-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Wed, 2024-07-10 at 16:35 +0200, Marek Szyprowski wrote:
> I think that it would be much better to check if earlycon is specified=
=20
> in kernel's cmdline and if so, simply mark those problematic clocks=20
> critical in this driver. Make this code hidden under=20
> IS_ENABLED(CONFIG_SERIAL_EARLYCON) to avoid polluting release builds.=20
> Any comments?

Good idea, I've found that i.MX appears to suffer from a similar problem,
and I'm testing something similar now:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/dri=
vers/clk/imx/clk.c#n157


Cheers,
Andre'


