Return-Path: <devicetree+bounces-203844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DE672B22A95
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 16:32:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5F7C21BC5ED6
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 14:19:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7ED202F4A0A;
	Tue, 12 Aug 2025 14:16:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="ZsH+uVTQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E252B2EA47E
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 14:16:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755008187; cv=none; b=a+ha28hxxz0z96DRgW2L2rBG/6I/VIjor0BDx+NLNXYiIMcvS7J5cQH9T9LVgoVhsu4wL5C5QTcB47qE/ud7y5w1Jivr3VbYq+eqjJ9Ad7qjxA/TW9cSIS2Pn9jyDxm3W40dIQXLXtFt64etZByS/JvLJwXZqWhy2BMtr2yPePw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755008187; c=relaxed/simple;
	bh=R5nnZKtUiilDivRmsxMYOh+vKL6+puQDJ6xyxH4ExM8=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Le14fUQ6N34/3yMeqgv94dTjcr7SEKTynHMSst1BF8J/V86a4Krz5DRnCqwTGmkWy0BgUvRXufxY+H2sgIMZkqbRTEv6qP0jO/TDAPYymQa72ZeP6vsKeuxDla1WBdyUIn2fv2bKff61hZS5kcP4pKZZxRhAdYrXi8XyuiASJ1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=ZsH+uVTQ; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-55b7454c6b0so6055036e87.3
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 07:16:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1755008184; x=1755612984; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=R5nnZKtUiilDivRmsxMYOh+vKL6+puQDJ6xyxH4ExM8=;
        b=ZsH+uVTQF/xLILlchoKK43ktOfavTvT+t6GYzbm9aQGMQuoDqOmXEL42L8oXTsLr8Y
         P+1qlPYEmobAdynkNr6mODxl7v5mTbjVHoVSGd4j9iquKqvuXpqzn+blRGO5M/jh/EVy
         T7heI2vFr43GdMIZCV2Ckqu3GzFSmYeYxh/vS+qtOHfcqc7T19aONqTBdBcM9RRBnPZE
         8/3i252m6cbPKnDgasYR80MWym8v7Z0aUKVM0F0rxaco37Jiz7vH2SaBWt4Qz3WKyAXh
         tNurhRTX7ozqTfKt6s2OUFNlE11kSlzye+3Kz6YeLHogZaS5m9rWnWx50Gl358uy8z/b
         OqyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755008184; x=1755612984;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R5nnZKtUiilDivRmsxMYOh+vKL6+puQDJ6xyxH4ExM8=;
        b=ZL1VLQbC72zvOwePOmdkrpZ84oPMKXbg97sW0Evr9NItVZ7jtCz5l4eCbBLHROm4Pk
         hgokxxCWiSXhPjuN7k0kPK3upcNzzjXYSxteC64kMBvjBDxdhZS4BLn2YwKKAlclZgWQ
         FQ2ns8ru8AI5D2ig0bpgb5K7ay3RK9JbiyL4RFEK0ruzD2FQzdxyNBE8FsdHL8gJelCq
         u3BzYNVBxBge/LvNU2TWh3ZBD3eltqm1a5ecYSYRcxRskqARNrpTIOMQJVeesyNxiCKj
         Jwt1jN3Koh1PzvSKoc/PQTnY3BlD5cDNFN7yfYCiNr+kfULk4VRupuHvgizmNEalmxxt
         HZAA==
X-Forwarded-Encrypted: i=1; AJvYcCVNtaT1xjTc+bGXc5Z7/SLjqsi0BEHll7529mAFSSPOk6WLU0/KeyfohxXF+ZFTnkwMUBEy+aDNd0wP@vger.kernel.org
X-Gm-Message-State: AOJu0Yzf7LmbUhzO0a1jiNmbvCHyZRe5wvewecRVluYMifAkF3BmiGmR
	BtWJi8Tu/1mbSRiojFUxcYmaCd9iSho8JV+F9T5mjq1AoHzeqSvcQXRZC45SfHPAtEmHin4XvRQ
	04yEVl5ZfsyDM4RU6SOpZzfMskfUbUTBdMnpQpnetqg==
X-Gm-Gg: ASbGncthZ8+ABf7UqR688zngieDHRbRZ6Z4zwgO/pVYRkNpkyFyhw4DnJCf+PHaTwUs
	PguIVKiJWOHGhoqtUqjaiiePGC09ZWotRVENnf6eesTuOi+IodrKqDc90q9dYzm2dWY8QOotIxP
	HeM2hZAEk3dkd8bTe0iH9obLeLP4NZcu+JC4dY39aVUzGHnZU8dJFUNZkQo7rbsR5hhoWtpiEjx
	DO2XqnMqNwWN0Z3OLRJdvechR+gq6oi6IEA
X-Google-Smtp-Source: AGHT+IFSWGaG+YAxuC5QAHmmbcboQlauIZZLZgo0OwDLSkIV0ywA07Ks+Bfh+bGhzN53ifgDGqSDL8YW+yRt/PdEog4=
X-Received: by 2002:a05:6512:1329:b0:553:2480:2309 with SMTP id
 2adb3069b0e04-55cd7581e05mr1175047e87.3.1755008183964; Tue, 12 Aug 2025
 07:16:23 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 12 Aug 2025 10:16:23 -0400
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 12 Aug 2025 10:16:23 -0400
From: Bartosz Golaszewski <brgl@bgdev.pl>
In-Reply-To: <f4d04d0c9d72d089af7490c6ce91bb4c455fbffd.1754996033.git.christophe.leroy@csgroup.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1754996033.git.christophe.leroy@csgroup.eu> <f4d04d0c9d72d089af7490c6ce91bb4c455fbffd.1754996033.git.christophe.leroy@csgroup.eu>
Date: Tue, 12 Aug 2025 10:16:23 -0400
X-Gm-Features: Ac12FXwr1ZykknKcViL5DSBC6TTWTpzY9rOvoc9OKAJoev5KLP9n85B_Vyoqws8
Message-ID: <CAMRc=Mc_MMwsiGybyMdY0T+QiRuZWFGEifxV4Kz7oqZaY_-kzg@mail.gmail.com>
Subject: Re: [PATCH 2/4] soc: fsl: qe: Change GPIO driver to a proper platform driver
To: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, 
	linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, Qiang Zhao <qiang.zhao@nxp.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, 12 Aug 2025 13:02:52 +0200, Christophe Leroy
<christophe.leroy@csgroup.eu> said:
> In order to be able to add interrupts to the GPIOs, first change the
> QE GPIO driver to the proper platform driver in order to allow
> initialisation to be done in the right order, otherwise the GPIOs
> get added before the interrupts are registered.
>
> Signed-off-by: Christophe Leroy <christophe.leroy@csgroup.eu>
> ---

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

