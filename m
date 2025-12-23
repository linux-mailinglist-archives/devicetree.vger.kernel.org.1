Return-Path: <devicetree+bounces-249079-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 9759FCD9185
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 12:24:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 69BB73018368
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 11:24:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D88C330304;
	Tue, 23 Dec 2025 11:24:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tKPFxQAW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC48032E6A9
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 11:23:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766489042; cv=none; b=VnCOad7QARmMTVnP2nC8QHLFA14KJxAfv3kDOxYSpGrGtyJKHeojTvzcybNBcQui/y+4GVYnkPZEylp2XFgUBru+fy/57ta9ZW1vaIAcJ1vkQ7C09z35tRL06V2Oc5Gdy8zv65FkxZw5k28vxTbtMv1/8Q/21jiZYyXwbU4ddgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766489042; c=relaxed/simple;
	bh=37RUNcK4I4PT64rzfy/R8cHrYSg57U06mGC+3iQ2/Cc=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=gjgOWf6kM62IizYAJBOxTnplQmWCXt86SmpTePbFQL5YNOb33nszVJtPaEHF3ks3LndZGo8eSITB4UuV9KkWSIrfxsihq091rVYtrv0eVEmRveKVE0vveheKlbCVuDRxVnZnhV9Yb+dEW9cmZQDDPWX/SAdwoeV5zlZWtG3UfOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tKPFxQAW; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-7f89d0b37f0so2956757b3a.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 03:23:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766489036; x=1767093836; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=37RUNcK4I4PT64rzfy/R8cHrYSg57U06mGC+3iQ2/Cc=;
        b=tKPFxQAWWy7WqeLWw4aCui8xwjf1CuYXKC17dHGNP873KGKNRlArUUNtC+Ae9eGbIe
         rH9QDGXmQdEl/cyFzF4cZJZ6ijCadHKqe5xR/d/XdupVvlg5JcwjfuFhCfJAUDT8aMTt
         S6VbQUVpwJw7aG+SE/t+w/Um3ocTAqlkke3ChlTId9biwe0kh+HFp+VNIhA0KO/gPmc6
         CR1T/sYGfaxJGFTDvw58rzt3Nnwe4e/3f0MWu+gGiCQtPYgEmavdeKsOABxEj70TDpTW
         /YgWJg7dXBhJ1vpunElw6b8TjhVyNW1gL9eTDrYZk8f1L5BIXVuHWQ+HQuM1tiVAgHif
         yLpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766489036; x=1767093836;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=37RUNcK4I4PT64rzfy/R8cHrYSg57U06mGC+3iQ2/Cc=;
        b=hLjKEJk21t1TTmvBrDC3+XZIZxMfyS1aQh37VYFSf/9DgVNHQZmfDtQe7uBdq1K/V0
         09MwFxTxttQ2IHY6gd6cK2VmT1R1HiyfMLtW1147DDQSG18HCjRJ9vCVqqwF/IC/BX1V
         891Eix+g4jeCewGYkKHRrEFGkvk2xry0X9MRT+YW4qSjr5BQt9IC835AOs3zDJkWvdSH
         tVfHtGpNAbDMUCj1eVDimYNdpijmsOdzYwlHAHL7dYwBu6r9ME8rxHovur2yO96KKBi3
         BTNIdkfe9EkPI1CPfxuqqdYfuTRADxNlT/cDZ8f6MubDBjnKMFXWOPNepqkZY29OsVgw
         YBKQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+IT6S0P1OvCt9DMTlVJ5fk6zv+YSr3u/6NZnkmK2Pqn8/s8PUouZMV7kMQY6+5azT+CW7pl0NGI4D@vger.kernel.org
X-Gm-Message-State: AOJu0YwZ7TRGX6pd69lwTpMKcycL1PL+hvOpWRZUQCi39ByHjoopvrD1
	r+9OpVq1B5ZhqomwTI+N+R973bMT5jxXUakUQUnxkztzs0qDQhkR8H0xp34CSAi3AMw=
X-Gm-Gg: AY/fxX6+h0Q0ziFS9jHzmqKyyCjxDLLQrAOy9RWfDJ3vQGs+MgCpf/+EqG5kQdmoy4s
	qZKRChyV6UMj+SeqqntVZ8eZUMl9ZsxPnh8e+VM8cRmFytRAi470ZO7IJsiJNxyvuoQtrQ66kdO
	Z9GepL8WBSzdklHoBO+46B79PMLhk2cPlz/CINE0MHefU6GNZf0Oa6En2oNnk9gl+/7W7L3p6Cb
	thXgZQ0kXcn+CwZzoVQfUzi7rCaHxHrFO1v91vBp2O5VSjrToEcODIEHO6hq/l9YCKfiMtLCGTM
	8ZeB4lVJYJNoYB6KyiPZ9uInI9K9Yx9VltR6TzPdRkU7JI3H+q74WoxGKOBmdq8C6XpW2DZnxGB
	3Eop62BT0eSxnj10G27DvygNyEY+VxBvLxNSGfieHYEAmYg9IYrcLUKalnKLh8wD/TPFSkDymRe
	OVIeIbQyWrKkbj6+Ox
X-Google-Smtp-Source: AGHT+IGxox0BnKpXIXpIkILbnFvlZ2cigLgZX+lwkyuIDPT6BC7th92Abu5fCPBNRSHMzVeVYDoTUw==
X-Received: by 2002:a05:6a20:a11e:b0:366:14b0:4b15 with SMTP id adf61e73a8af0-3769f933424mr13267847637.32.1766489036518;
        Tue, 23 Dec 2025 03:23:56 -0800 (PST)
Received: from draszik.lan ([212.129.75.63])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7dfab836sm13480878b3a.36.2025.12.23.03.23.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 03:23:55 -0800 (PST)
Message-ID: <a3b89ce1a88e9efb2ff6af27bd1bd48dbc06c2fc.camel@linaro.org>
Subject: Re: [PATCH v4 4/5] soc: samsung: exynos-chipid: add
 google,gs101-otp support
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>,
  Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alim Akhtar	 <alim.akhtar@samsung.com>, Peter
 Griffin <peter.griffin@linaro.org>,  Srinivas Kandagatla	 <srini@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, semen.protsenko@linaro.org, 
	willmcvicker@google.com, kernel-team@android.com,
 devicetree@vger.kernel.org, 	linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, 	linux-kernel@vger.kernel.org
Date: Tue, 23 Dec 2025 11:23:56 +0000
In-Reply-To: <aa55c3865d151697120a2855e711d59468bdcd0a.camel@linaro.org>
References: <20251222-gs101-chipid-v4-0-aa8e20ce7bb3@linaro.org>
		 <20251222-gs101-chipid-v4-4-aa8e20ce7bb3@linaro.org>
	 <aa55c3865d151697120a2855e711d59468bdcd0a.camel@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Tue, 2025-12-23 at 10:18 +0000, Andr=C3=A9 Draszik wrote:
> Looking closer, why is this not val? Now you're shifting the sub_rev
> register value by the main rev shift, assigning the sub_rev register
> value to the main rev variable.
>=20
> And then, all assignments to main_rev become identical and don't need to
> be duplicated.

Anyway, it does work for the SoCs supported, my RB still applies. Code can =
be
updated in the future if the need arises.

Cheers,
Andre'

