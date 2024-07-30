Return-Path: <devicetree+bounces-89538-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C5FF1941E67
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 19:28:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6E28FB26A62
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 17:25:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EEB71A76C3;
	Tue, 30 Jul 2024 17:25:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CMSeGHBl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF40B1A76C1
	for <devicetree@vger.kernel.org>; Tue, 30 Jul 2024 17:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722360356; cv=none; b=BMdmKV17BiGo7kkrSdQnqHD8RR5jXhLfyUQFZUYtIRHsTvYnzBOZnAdX++ZF+Mfjf34fJwW75R1ypulq0OoGa9qC8uz5KVpk1QPWBxMC8ZBmhrWdIIhU5XVyGdAS1pH5UAlB6mgGVqopwJTZPco5sDhle0jj93EP8vXeuxJ8wC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722360356; c=relaxed/simple;
	bh=SR4ep8u0jDhObX+j+vH22fJ0Ll1+cct0CntZJ+AgVsk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=n+UVr4W2cy0U1nJcb8kn8cDb6QLXxunrr9j0Ia9cV+mIgMA+IE1ApON3J/PDFw4PUf7v16fOWql9hN0XiOxrva9KcbK1miTADfFqEw9l2TapiGurie0kw5frG6kxKHhYqxW6mPeqMXNDOHU8D4CL5VDhTJqDUGrgoIOenr3Y6Ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CMSeGHBl; arc=none smtp.client-ip=209.85.128.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-654cf0a069eso32007087b3.1
        for <devicetree@vger.kernel.org>; Tue, 30 Jul 2024 10:25:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722360354; x=1722965154; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SR4ep8u0jDhObX+j+vH22fJ0Ll1+cct0CntZJ+AgVsk=;
        b=CMSeGHBlwIQhj3U0fyS/ew+XpR6cSHCzsagRO7YCSC7WQrMGvS8EfIEsJb21sn6QDW
         L0va3+a1qC8IW3lCuwUh65F7TRI770ywZGUKx+algIattbafZzgm5paSLRuNk2k21J3b
         4lItTkLrhSUJr8WZeF79SX/oMkSPbIbYjfZG+SIcqTM/gk1A4JK2E+vLqpPDH74qRPxU
         V0qlsekLQEToydkJkEsJaSP7iJKUHDD6OCil9b5Y4Fm52hIPXRLIkn5yFZi5nIABKk5D
         V3jmkSccPG9iSG/6ejG2H9jIZxrWo91cnBlCLtIvJes5w1GjpHWbqiUWAYRjGYj3s/nO
         2k4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722360354; x=1722965154;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SR4ep8u0jDhObX+j+vH22fJ0Ll1+cct0CntZJ+AgVsk=;
        b=wpZeyhD1K4yiSuXjT5h6OLey+7ovPEtzPhB8I+8Z3YE5o1XnWnB1QqSSDcOqVqdufg
         e42V0bLCyZ+KsALDPs/GtplNJpk9KGQ+uRobPwu1teBXjt527bH/Gy1cWaQfM9k2tkY/
         vHjUSBwBXhV5sE1sH3tk7SGg4pRNlTXTdMRUrUDCT1yU5XdkSW+jSYW6SsquXOEuU3Hf
         H8ERdbyAqtOIJpezYtG5pMnCQdV+P+qFU7GbJ7HjLiwATVhDg+8CqAC5rLcgVexJJRfN
         65HtoQ0DIVmMzpV/aaJBmPY6FwmRapGjmCkcNaBOTZ0T2I5RL3hYNrI6XobE3yhqDx5Q
         1JOA==
X-Forwarded-Encrypted: i=1; AJvYcCWAfMrmvbWZ9wEwW/fODS7lBOl7/L5ZH4kf/Gf/wfni5gnvtAxoAU5Au2IVPBQbXgmjtIX6YU2Rzs8q/a5rpIX7x9hZ2EKPBL2fTQ==
X-Gm-Message-State: AOJu0Yytu8dVD+UYpn+qJLrzT/Dke3h06BG3OjbQp+1g8VCoy9JnffQ9
	K7yYB0sNVYEl8cGWf7xVHkrcwkSJsaRdm2RAx2nXWMCEX0lAEx8D8a4dkRrY3ys0hIKuCYz10GL
	wJrzZkFWIO4fxrx91ddDvHDvWCUOElz4l3v3XGw==
X-Google-Smtp-Source: AGHT+IE5wZhEQttbYW1SZcrl7UTaSkRi1X+/IcIlYkWNAtNbmsb6pPs3LqQs8Xr4/GbhKK2YKJn/GGcCRIMa4SAcUGI=
X-Received: by 2002:a05:690c:46c6:b0:675:a51b:fafd with SMTP id
 00721157ae682-67a097874e5mr154692857b3.31.1722360353870; Tue, 30 Jul 2024
 10:25:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240726110114.1509733-1-m.majewski2@samsung.com>
 <CGME20240726110142eucas1p29f261e5e81c177456fd5bb5546871eb4@eucas1p2.samsung.com>
 <20240726110114.1509733-7-m.majewski2@samsung.com> <20240730161748.GA1414176-robh@kernel.org>
In-Reply-To: <20240730161748.GA1414176-robh@kernel.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Tue, 30 Jul 2024 12:25:42 -0500
Message-ID: <CAPLW+4=WsGikZ6qOi8dWg4wFsVbhp29cv=DKP06jc4TQn=yUeQ@mail.gmail.com>
Subject: Re: [PATCH v2 6/6] dt-bindings: thermal: samsung,exynos: remove
 outdated information on trip point count
To: Mateusz Majewski <m.majewski2@samsung.com>
Cc: linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
	Lukasz Luba <lukasz.luba@arm.com>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Anand Moon <linux.amoon@gmail.com>, 
	Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 30, 2024 at 11:17=E2=80=AFAM Rob Herring <robh@kernel.org> wrot=
e:
>
> On Fri, Jul 26, 2024 at 01:01:10PM +0200, Mateusz Majewski wrote:
> > This is not true as of commit 5314b1543787 ("thermal/drivers/exynos: Us=
e
> > set_trips ops").
>
> What is not true?
>
> How can the h/w change? I already asked that. Please make your commit
> message summarize prior discussions so that the patch stands on its own
> and you don't get the same response again. Assume the reviewers have 0
> recollection of the prior versions because we don't. This is just one of
> 100s of patches a week...
>

Hi Mateusz,

Do I understand it correctly that the patch actually removes an
outdated description of *driver* implementation, and not outdated
hardware description? If so, then maybe it makes sense to rework the
patch title and commit message in a way Rob suggests. I.e. rather than
stating that the patch removes an outdated information, instead
mention it removes *software* (driver) description which was
incorrectly added earlier. Because bindings are only meant for
hardware description and should be completely independent of driver's
side of things. Also in that case it probably doesn't make much sense
referencing that commit for using set_trips ops. Just my two cents.

Thanks!

[snip]

