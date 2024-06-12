Return-Path: <devicetree+bounces-74908-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 88FA8904F94
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 11:47:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3FA541F21897
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 09:47:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FB1316E879;
	Wed, 12 Jun 2024 09:47:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NqCaQPRl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73B1816E867
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 09:47:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718185625; cv=none; b=Y7Iw8h4UjWd3jxtuF7QiI2mTlOhy0+SXqTLqjzuRFU6jjojpmZEM17Q5RaPGXHybKOTY4ftfu03gikiSiPmGxOLtSaBzHGsOgQK2+rOI5RZ7QGRBzafQjcJFJwkzSFOU8mbD8tyM+SxVhg/AxCjJMgEhsYRqMEe746DIPOEYkB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718185625; c=relaxed/simple;
	bh=zQKdgF8mcEp+wVi7lqvaVDwpdEckLhnlchOC12xC+RA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=C5QJJg1NL8dfAZmJUdKxI+JYiy+juQf2yeKOJnrTxMY8vCqJ6TA50dwXrsf7OfCAxhvpjWRIg/wWDdCSUMzbsBWaNsV6b8w5539bv8czrNN3bOccAj+v3YDhORxecXkxYh7wX96VOrCWWzFGAzwH8Yfb/n1ZWOsVBSH0EVXC+p0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NqCaQPRl; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-52bc27cfb14so6210603e87.0
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 02:47:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718185621; x=1718790421; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zQKdgF8mcEp+wVi7lqvaVDwpdEckLhnlchOC12xC+RA=;
        b=NqCaQPRlTRnZ5AqJpRZYeLGeRA00pmfFw6V7DlOqQ8WqAeyOOAMnVc1OnRdnQUszEi
         om+vkFuWK55xI7UGVC5Zhy1DK+RyJgrVPq/VU5zYB3AUQbH72GQPU+vDBiUAxqA7a9AY
         JcLby1i/X5OSb6AKFLYXEk8UHflvIVEOGEXzqsrKpxc+viIPQEMt4Tf8qB+bUCFaQ1Gp
         mgeIKlh7RQ6nWyEWatcaFiGEnJpTaLlWadLTi1vg6T0AKrwE4Ym8AV2De8vLADQ0YrYY
         tZCf1eA4fDR9jkYx72fALjhAUjU22dZI48vnbRC8rkpjJ2iws8MKViFWZjNutZ1TfSjS
         Ff1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718185621; x=1718790421;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zQKdgF8mcEp+wVi7lqvaVDwpdEckLhnlchOC12xC+RA=;
        b=ngjZA8gJccEfCkSuQlhbg1OxlFnsdxiSqMe69YEIDaY9+TlD18w21hf76ozkrJP+YF
         9JHtI9I1s8g9Y1fFjqZQfvGaVEJJGOi2lMMn5TPAJaTNQQi/G3RvHKs/VHxWdHNBA6BQ
         Zi60GWnM1UcX/LfGmdYUjoPFLrXTn1+aJ38HDzJ5RdyWXioO1J53yvazEqAJdQ5eGDI4
         4Gu6L48GJ3xpWpwWcsxzaZSa1uv+2DtDnoSH9NR+XFnOzRgJz5vs8ZPnbNWGldY+G3Qs
         HySzQiZaM1hiboYfJyDv1pGQDHLFbUJ+GHfsRej5vsW/3UjHKfi0QsRM3QsfAX+fC/D/
         niAA==
X-Forwarded-Encrypted: i=1; AJvYcCVi7tc+fEZwZ2xuBQOoe2xcNv0GM+hHLmzwvvPVZbfGSDBngUNunusbeXxsL2iFQYanSx3iKpNCOKGwj04tYph66VADbUmsLz5iZQ==
X-Gm-Message-State: AOJu0Yz0mzxpqYydiPPPq+pPqpRxBKcIs5cnF/7wuDnQaFgGkaQuhtme
	S1WJJntzomeBLwy6jb6PI6oU6Xq/8xlI6y0FFU+b0sVxoUXtdA9YGephoLKHhBggJMBrlNt9QfW
	m2/qg2ZLWoRyKwGzE2T4VRwB0Yghuo3i8Ur19Yw==
X-Google-Smtp-Source: AGHT+IGCNkHASnW9VHX/JSYWKJzZNEu3Qmg4CK2c1hPkFlnh/pbup3cTnpgiY+Of0KiWJ4QoVJYCQXU1sRI9qEXlsX4=
X-Received: by 2002:a19:e00a:0:b0:52c:8811:42f7 with SMTP id
 2adb3069b0e04-52c9a3d2020mr998967e87.19.1718185620774; Wed, 12 Jun 2024
 02:47:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240530165424.3173673-1-Frank.Li@nxp.com>
In-Reply-To: <20240530165424.3173673-1-Frank.Li@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 12 Jun 2024 11:46:49 +0200
Message-ID: <CACRpkdYbZAMjgLQPo9Xw_ooqpohwGKG3S1qMV0sKsDAYh3Pv+A@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] dt-bindings: gpio: mpc8xxx: Convert to yaml format
To: Frank Li <Frank.Li@nxp.com>
Cc: robh@kernel.org, brgl@bgdev.pl, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, krzk+dt@kernel.org, 
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 30, 2024 at 6:54=E2=80=AFPM Frank Li <Frank.Li@nxp.com> wrote:

> Convert binding doc from txt to yaml.
>
> Remove redundated "gpio1: gpio@2300000" example.
> Add gpio-controller at example "gpio@1100".
>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

