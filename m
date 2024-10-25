Return-Path: <devicetree+bounces-115755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE6F9B09D9
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 18:24:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 006821F228CB
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 16:24:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A313187855;
	Fri, 25 Oct 2024 16:24:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xPh6jeP3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07B8B502BE
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 16:24:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729873489; cv=none; b=d8S1IhwawC5TgIQJOdxd1JfPZM6VlGP5du4CDHDG6mErbpu9b/AUQ/slSw2IbJ6PCbgzaj/deOqs8GFEcJWCYRmbiJDoTgWWBk1mym/q/DyS2qfG+JdgFjuqBmImhw3J/Azed4T0eQAxjBvaAT8DnTgiwepQX6O5cEl9VqHYgkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729873489; c=relaxed/simple;
	bh=uFxGQ84TzgKb5slx95M/+bzD3Js6QUjK6CpY1vcd89A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lL69kvo4jaUuyw0KC3V67tcgKarGP2XYsB2MnP9s3LPw5REznlvNIJqT+W3YVXCN8sd26r0EPu0Z/n/XrXVB0azYRyRI0IgJIaBO9izEUX4LvMA7ED4uK1kq2RZXed1GAAZvuAnNbNRM1ipnUOgFWECxG6Yry6P2KDedOarUu+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xPh6jeP3; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-53a0c160b94so2692556e87.2
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 09:24:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729873484; x=1730478284; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uFxGQ84TzgKb5slx95M/+bzD3Js6QUjK6CpY1vcd89A=;
        b=xPh6jeP3PdUW2F8GuUQV8vrs8ZeMQPPxoDBRqqZpbt73lxfbDKnGjaXqyJLtG/HM46
         mtbf6CeEBmdkQRVJaPVoGW6L7jxMwZESDpNMINs5c+x093d3EwN3wohaWihfMWweX2UE
         ehiWwm6/+ICJyfzY4mzYumlE9Xc+UI5seI3F/aDU8Dic8+4id1oKlqgfVxLjWeinZHSy
         PC/j87eOF0z/K9ew5RH0rZVrgiTlYPxj60JRFVrOEFEqMYFcnrXkKSf1XQpYZLBBXLFY
         CNSVlEepod6sXiCe3srKnNwBCPANiZGxY27avP2jRrxTG0AGUNiWz7yG2M2GLIF4IXs6
         qXnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729873484; x=1730478284;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uFxGQ84TzgKb5slx95M/+bzD3Js6QUjK6CpY1vcd89A=;
        b=ayl9lkd8hs6HHR92UDc5Q0B5OBMdNfBvD0VaViw1IxjiwsbS4wTTPz46wHxS0YYEAt
         tOvQQowK3HHVIYZjCBMBgDw8r4WugzYilecoLBH4rVj8f7O0OEII4AD3FjnZQXZ/TZb5
         Xl8uFzMAxpT/eRAtdJN7cA6P+JT2TbU4z7gvEl7aEL9QnzJQZ0acAXu+uU9oNoFZua3M
         2f6Fa/qDO5M3o/XMRSsqJBbOOwV/aV9cSqRU/lKYMkytufNjGlaCiBpGphwSBS3w7exj
         78Vml8Rut6Em8QFcK2MaMwivMxR/Jj+UVJVs+8VwMMHK3exc5KIgfu7b7qAxJpnE0UPW
         4DKw==
X-Forwarded-Encrypted: i=1; AJvYcCV9xnEl8cK5eusWRIa7bms4pO4sa+FZHAACeWcJzxoCfqGJtjmE8nGCyoZ6xpdcIruikcKd8XC5QgyV@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/Vv92QHj3NxX6+ObLVgQYHQzFQa4ZbGfcOzvVvr0rqSUewjve
	+FM2mY7r47sr1X2bRKdBUw/JqXEoU+PKKMczvlUThVfpUw9nW+tuIsaRPDwn9UfBFqfRcMnZo2J
	+cRv9W4Yvxl6whmbv/1lHnHwODhunRqBOKGR+mg==
X-Google-Smtp-Source: AGHT+IEfpJ2a3ZiZX+RQPhobkt4J8q70FA0o2YD9ICo8hjOQkce3gRZLgqbQg03WL2CrnH1fCWI3UEeT8tJywgVGdn8=
X-Received: by 2002:a05:6512:12c5:b0:535:66ff:c681 with SMTP id
 2adb3069b0e04-53b1a3615demr6698254e87.48.1729873483988; Fri, 25 Oct 2024
 09:24:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1729738189.git.jahau@rocketmail.com> <1a3b08a4bc9944ebe05ee48bcd8ea11bcf3e9103.1729738189.git.jahau@rocketmail.com>
In-Reply-To: <1a3b08a4bc9944ebe05ee48bcd8ea11bcf3e9103.1729738189.git.jahau@rocketmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 25 Oct 2024 18:24:32 +0200
Message-ID: <CACRpkdbPgku6qAkaGN-AC5zSgwQTs0JnXT5RYOgWddU8TA301g@mail.gmail.com>
Subject: Re: [PATCH v3 2/5] dt-bindings: display: panel: Add Samsung S6E88A0-AMS427AP24
To: Jakob Hauser <jahau@rocketmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, 
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	~postmarketos/upstreaming@lists.sr.ht, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 24, 2024 at 5:18=E2=80=AFAM Jakob Hauser <jahau@rocketmail.com>=
 wrote:

> Add bindings for Samsung AMS427AP24 panel with S6E88A0 controller.
>
> Signed-off-by: Jakob Hauser <jahau@rocketmail.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

