Return-Path: <devicetree+bounces-76401-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E7B90A763
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 09:35:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 890DE289AF5
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 07:35:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14B8718FDD3;
	Mon, 17 Jun 2024 07:34:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mNphIsM/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55BA518FDC4
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 07:34:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718609685; cv=none; b=g8gPMAk9ypj6mIp6Helb1pDKuahMF0qLn+DiXm/kbBVcjWp+ewkrf78wKGaX4BFLYQzadtvweP7HYjQWXU5LZUg6NL6gG+1wNMZOIKN6vk8Gx2dBHzFzDdWwOL9YBET7yPz+Xam3v5aWpmBbNDQXcg7w67xOhMopVIZAzre4Sdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718609685; c=relaxed/simple;
	bh=Xoq4EUAvhohkGeVSJqSuDIOlvwFj9GujMdx8Xhlpyd4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=e1OHwTHhGXYQsWs8paBmhtw7jOw9BXRYEIxIDDtqZs72EnPmUT6Rii9uEay4ZiHWBdH/nawgt2KdDRb19wK963usQf+aOI05nkmAoXa6YQv1o1XBpsMJZgZU+m6xtXaGTCWbWQ84rcF6WcJyfDjyOYLGJl5DD/dG+EwXjZ9CxhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mNphIsM/; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-52bd48cf36bso4776758e87.3
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 00:34:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718609682; x=1719214482; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xoq4EUAvhohkGeVSJqSuDIOlvwFj9GujMdx8Xhlpyd4=;
        b=mNphIsM/hoVzAEnpb0VtBzw4GG0kCULFsFxvBVPMa9nu3Ay0yXAzxFcQ+Au+C4LCtl
         YTmXzI5MR5j8KUWcWkWKFuaHeM5Q6HkBhfzCNyRkETCOah3EU6esgE89oU5N7mid0WYG
         +KZCeKKPZqr+Zn2rzXm0GhPsRPZVazf81+zF8jjeojdJfpCf36RYS1v2olQTGL3SxwJ/
         Fa3OZfqJmAObPnDwnyZlZl2yWdFJJWQpt0q8vyX+ESzZTs2fp+SZzaFd1Q4/qU0D7R/+
         b3/CxuWfl4becH4m5AP3q6y32TM5c5qHJvAvaHoro1mCVQF5+RIF8e65ZB/DpJO/MZCj
         P8Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718609682; x=1719214482;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xoq4EUAvhohkGeVSJqSuDIOlvwFj9GujMdx8Xhlpyd4=;
        b=pgscVupr+REN5wTC5bzKXXU4JTWA1UYUL7ODFmHwnOgEhjP/bilQV6Yw2IC3wf93+w
         3howVe9Jt8+dPxk6CHp/G7UqzJvRqIuT/0jOlVNh/pdmeCE74WjU36DvZ/woWlg5qrcb
         2JQLQLFR4uW0EXj7GlCvLB+JJ2370SYX3libYBqG6O+pVRR5utNqh1nvgtCkCP+lKfIB
         Hk2Rw5v9mTnHM+iV04IrtjMkwnlhTPUKxQZEXgpT3Q0vMd6H3chp5yu7GVkM2toLB54x
         G3ZKskN2Xaaqa9dEbefLzga59ri7lEIxx1Usdqj8z3vo9lMzfK1EY1hLYT7KaqTXZnAT
         pcag==
X-Forwarded-Encrypted: i=1; AJvYcCUm266u2yZnD4UsnHIG368rtWjQsds4D+s1bev4RW1MmRD6Ddp/yzAvrfF+2b1hXJ03kLDo039qen6xbGcIa0Og4trPYckHEjTUjA==
X-Gm-Message-State: AOJu0YznzF8Mi6kye19Xt5+LD9ddow3firUlsrSSk/4iQL+SsThYiOfq
	puvufDpophUUr0RLqZZNhNpJNprqJEw+gnDpWnX5XyqHWPE3AsS4EUmB80k3Q8WwgYvIY6z6FBT
	e0R+zHx5PmQy1XFFpVGrSVMlRprx4rqYGFVlaoGtFxM9g5Qvl
X-Google-Smtp-Source: AGHT+IGqIDqoMDiWUnJbMVSGr1EJQQ4GFqNlfiC0YOW4DAh8bCGdlwiNhRqn/j5asJGjevkFUoLeA+A2JuGUQ9QeAF8=
X-Received: by 2002:a05:6512:3c97:b0:52c:adff:4bcb with SMTP id
 2adb3069b0e04-52cadff4c84mr5977471e87.53.1718609682402; Mon, 17 Jun 2024
 00:34:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240531-dt-warnings-gpio-ast2600-pinctrl-funcs-groups-v1-0-a6fe2281a1b8@codeconstruct.com.au>
In-Reply-To: <20240531-dt-warnings-gpio-ast2600-pinctrl-funcs-groups-v1-0-a6fe2281a1b8@codeconstruct.com.au>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 17 Jun 2024 09:34:31 +0200
Message-ID: <CACRpkdanSAkR-czs=OUKLh6dpiRk0QDLR-T0ECrG-Y4cY9=Vmg@mail.gmail.com>
Subject: Re: [PATCH 0/3] dt-bindings: pinctrl: aspeed: Define missing
 functions and groups
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, linux-aspeed@lists.ozlabs.org, 
	openbmc@lists.ozlabs.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 31, 2024 at 5:03=E2=80=AFAM Andrew Jeffery
<andrew@codeconstruct.com.au> wrote:

> This short series cleans up a collection of binding warnings concerning
> use of undefined pinctrl functions and groups. Together they make a
> reasonable dent in the volume of output from `make dtbs_check` for the
> Aspeed devicetrees.

All patches applied.

Thanks Andrew!

Yours,
Linus Walleij

