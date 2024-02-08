Return-Path: <devicetree+bounces-39792-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC3784E201
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 14:31:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 056241F22FD4
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 13:31:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 162F6763F7;
	Thu,  8 Feb 2024 13:31:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S4FdZemn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69D16763E9
	for <devicetree@vger.kernel.org>; Thu,  8 Feb 2024 13:31:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707399093; cv=none; b=GeUYC6rEn0qS3xAhj/v39OrZkm17OlThwc+1BQoEBwCP5dw/d1ZHzsc2QT/a63kYpFCDJx1ZX/1OSBf1lOFxNdENjIsBuv/I6LAFEj1DzYeShaHlcssuYIE5lF8bIR6LwrMdQowc5Tfy3GkQ5X+HKnHlRCGn1GVK27yAb8bP+bI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707399093; c=relaxed/simple;
	bh=C4OvEEEwjXlQdhcROp3m3acnLC0LaYM75E3IJm7BavY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sG4xC7v4alDCAtfo0z3HuE1N2rm4JzXpoBo2wV0zF84j7m6C5qDgPzUxD36uXZI1U4dlnyYvaSYtshULKaQ7nokWIncAJG7Bmh3bTwUkyP733g8C+p/K/Ai3p7V4HbyjNqsH9keGZ6bvjXBIGV1pGfl9WU9jcYhJpg7bJaReEd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=S4FdZemn; arc=none smtp.client-ip=209.85.128.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-60495209415so17415327b3.3
        for <devicetree@vger.kernel.org>; Thu, 08 Feb 2024 05:31:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707399089; x=1708003889; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C4OvEEEwjXlQdhcROp3m3acnLC0LaYM75E3IJm7BavY=;
        b=S4FdZemnM0WZ/l/jl5wMZmdJJQKVgReuOcB0QNNVtS+IJVv7SqpOOlS/bWkxG3hvjk
         CG+nSxatlZ3Mg/uVHYxDZzfkmE/ENQGJJzo8m2PDeZ7Z0Mo0VgwJ/wYsyjP1fEVPcX3m
         vqKiXcPwun6AXF1QUIfnNXVWDOcSzjyz+Zn+YVaBX/pj9KIKBRQ+PRnLdR4ZfEhaGR+2
         UyFg7QgkcyD6V+yGN5kCMbFoAcLoO6RKtkny0H7Eac8h+Ise9xvYg8+4qnDlmXzMZp5f
         yFV3/y61D8OerhNVfc6ZliFd/Ld0OC6qDaGbKMsj4GHvAnp4nNrcF2MqDfDtSxUDzEZc
         Nhmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707399089; x=1708003889;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C4OvEEEwjXlQdhcROp3m3acnLC0LaYM75E3IJm7BavY=;
        b=ShH4YEK5b40j2rr9Tef6GA/is10qKl3h560N0x1u5S/NtnQyec92Kb6bFZs89tr4+u
         kqvjhWswqZ2uLq0CehsVZJcgFkrqmUD6CQLpITWGwV0X1/l7oOUFUp4+MA2FWr7lcbWY
         Mpzhc+NsQWYbBAZiDi5tvqxtzDCNKcZX6vODlCnjm+cF5dgrgmO9+gSCJFE24IXQUeV1
         rPxFhahCaN1tqU7Ma7bApqais3r2pr/bDDyW014w4PwW64nMryy9XDa6i2W39n1ssJ22
         J1W9d9GAD9CDQfZVEuUSFz9SVTYpYlwoWJeqIaPE2A1GMBBi/Iw23JK6SBeqtCrQjtKq
         nFGg==
X-Gm-Message-State: AOJu0Yx0nTwYQw5zTkvrb4KTk9SsYb1Bv8wih/KyJ9WFP7M2LisqtSPw
	H22cc7xDYBSQ/e8Id/xiVnBfhX1HspG1BF/y929vnGzYMxIafMOswMXgzPeDHAMA4h6lpk6HeZf
	IPq764E7B/6TjvcemDr/dX22iOkBWqy/6Jbv3ww==
X-Google-Smtp-Source: AGHT+IH7ejHpSxnYkgSDOz9JbPT7cK19dcHwdUp8da713zRYjS45D7HGSn8vMhrU2FW5og7Y4ZPr4S9V7UiubVyiBWo=
X-Received: by 2002:a0d:cb82:0:b0:604:9e94:7c02 with SMTP id
 n124-20020a0dcb82000000b006049e947c02mr3572225ywd.25.1707399089608; Thu, 08
 Feb 2024 05:31:29 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240206112501.715042-1-naresh.solanki@9elements.com>
In-Reply-To: <20240206112501.715042-1-naresh.solanki@9elements.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 8 Feb 2024 14:31:18 +0100
Message-ID: <CACRpkdbzv-Q8KouPCkWmc46Eti5fjnuiZUbWcSsKCXReurnnTA@mail.gmail.com>
Subject: Re: [PATCH v4] dt-bindings: pinctrl: cy8c95x0: Update gpio-reserved-ranges
To: Naresh Solanki <naresh.solanki@9elements.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Patrick Rudolph <patrick.rudolph@9elements.com>, mazziesaccount@gmail.com, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 6, 2024 at 12:25=E2=80=AFPM Naresh Solanki
<naresh.solanki@9elements.com> wrote:

> Update maxItems to 60 for gpio-reserved-ranges to allow multiple gpio
> reserved ranges.
> Add input-enable property to allow configuring a pin as input.
> Also update example.
>
> Signed-off-by: Naresh Solanki <naresh.solanki@9elements.com>

Patch applied.

Yours,
Linus Walleij

