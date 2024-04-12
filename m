Return-Path: <devicetree+bounces-58621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D6A98A295E
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 10:31:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3D4E11C20FF5
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 08:31:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 909251772D;
	Fri, 12 Apr 2024 08:31:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aJo7lYrV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E67F205E3C
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 08:31:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712910673; cv=none; b=tODZOVROnU5cpN6Wt+nGdU+RsxhH8jZi+R4/eGzz5y3AXEJv0Rlk8iVYEVIt3X/zmnoGaPjtGsFkVek4seejmPmbppMjNUiWYbosWVO0ppxeGk/znF5M5LuXRzlBo8verDmYut525aVFeu2nd6IHCDWn55kKQRetAFsd/uiKUXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712910673; c=relaxed/simple;
	bh=BhT1jE89A5XqO2tzoqI5jO1EDjj6BeLlqBhAhkURh4c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YrOxBwmMIW9K7i2VRb+Hdp+cV4A0x9YLBD0BW4gU8iKGF+k5KxZuTJoJXJ/6ktyxVJWzNAGzhqdS/9b9gsLOFchcHdBxwxw9a/o6F0bGcgi8HyiY3dC5mhU18MlGj9pbS8jGAwWMFaI7IVMZSOBFc7+5+2lJVgPTZBG5ArFzYM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aJo7lYrV; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-dcc80d6006aso651608276.0
        for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 01:31:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712910671; x=1713515471; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BhT1jE89A5XqO2tzoqI5jO1EDjj6BeLlqBhAhkURh4c=;
        b=aJo7lYrVSjBTbXLvT0grwBsLlrgrHYxhXfDjJMWlzLdXdFIDgl4Ri6xQhkkY+ElI8k
         9SYjV55ZJIxyJm3wK+X7ELvhLTzD2u6sbK6zenKjx3/VZLkG7v1lrsCFqo6UvNS0mz8g
         PfxBmOnsf/Gc28nLrTqQqw/ixDDGrq42VTZp+oUEEURbvwyNl5vDLPBbw7Vc15RpTuRu
         tmyS8KAwuP4NhwwJ0qQBAhlfdjqbx0RW/w6bw/bsm9iSGu6/kDETXJhmO3gB0xdDMynT
         xn0BTXuETC/onx3a8b4lgdRzJetAm5SkvREQ60544eQ1SL1xbS3sRjkaEkIbJZTvCcH6
         wXyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712910671; x=1713515471;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BhT1jE89A5XqO2tzoqI5jO1EDjj6BeLlqBhAhkURh4c=;
        b=dtod6M6r13KMquomyFCZRnkXIdeQStfFihJ7LxydCiN1wrHmTJ1TuE5thASC344p/S
         TwYMNSkyEivFaLTyhMnJQ5NNQ7VDJ6cE7Zydg8PiCWRlf55mAieOKkSiXAevZX2BIUkH
         9lPc0j1wnJcn5GBP7dx0BXRlBlzQ9oqe42kzbxvgUiv5lJhkJAlPb8jCzhlPYKgpULKi
         uUscHJ5fd/h92q/ITCYH8GAq2fgXQG69opTAsxorrIFvRYqUtwLDWI5FAIlmyXyl/kBW
         /X+3klYaYe4wg3b0ajcHU7kfFhi9QBVOw6RF/jmlCOArwRHYVg6wl8Gy0LJm22MtNqdj
         CbeQ==
X-Forwarded-Encrypted: i=1; AJvYcCUQCfB72PQj+aFAasigtXUbJBM2vakJXFZbWVU2sGrd9VIIE9ZUbTTA1fS4GdaxwKKzCglwhLpf+N0UD3q8Ojn0E8ZqlTpxfqz7rw==
X-Gm-Message-State: AOJu0YzAiBxK1v4U9md2uoQktul295Ns2M68LNBUrO+SkSVNzeG5xVFC
	E1IKrMmJgryqMXYBaqeSHa3TWr9BsjQOoYsAH+jx0fwci5wvzeQFa6q/gU7jilV3om1NNmiHAQw
	mCjcRwTR0zpd5KE0O/YK4Cl2IUkfcPhf8+FiTSA==
X-Google-Smtp-Source: AGHT+IEpRX9QoCtOmpeTrUfGJSzwCkGevye66eEpbga8uczi++MnGeH4xjs3pI1FUzJ3cSgmZQ6tPr1sMp/PuTijaD0=
X-Received: by 2002:a25:8e83:0:b0:dcb:e0dc:67ee with SMTP id
 q3-20020a258e83000000b00dcbe0dc67eemr1775012ybl.45.1712910671197; Fri, 12 Apr
 2024 01:31:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240405-pinctrl-scmi-v8-0-5fc8e33871bf@nxp.com>
 <20240405-pinctrl-scmi-v8-4-5fc8e33871bf@nxp.com> <DU0PR04MB941754A6D751E80840F9A79888012@DU0PR04MB9417.eurprd04.prod.outlook.com>
 <DU0PR04MB94175853573DD7666AFBFB7588062@DU0PR04MB9417.eurprd04.prod.outlook.com>
In-Reply-To: <DU0PR04MB94175853573DD7666AFBFB7588062@DU0PR04MB9417.eurprd04.prod.outlook.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 12 Apr 2024 10:31:00 +0200
Message-ID: <CACRpkdYN4k0kpQTORnjsnM_kKD2Xo4RqdS4n+kG0N3SucMyV9w@mail.gmail.com>
Subject: Re: [PATCH v8 4/4] pinctrl: Implementation of the generic
 scmi-pinctrl driver
To: Peng Fan <peng.fan@nxp.com>
Cc: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, Sudeep Holla <sudeep.holla@arm.com>, 
	Cristian Marussi <cristian.marussi@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dan Carpenter <dan.carpenter@linaro.org>, Andy Shevchenko <andy.shevchenko@gmail.com>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>, Oleksii Moisieiev <oleksii_moisieiev@epam.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 10, 2024 at 9:06=E2=80=AFAM Peng Fan <peng.fan@nxp.com> wrote:

> I just rebased to linux-next and found the patch
> "pinctrl: pinconf-generic: check error value EOPNOTSUPP" is there, not
> removed.

I just haven't had time to test and push out my tree, the patch is
gone.

Yours,
Linus Walleij

