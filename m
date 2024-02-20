Return-Path: <devicetree+bounces-43872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A66C885BB8E
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 13:13:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5B7C41F21964
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 12:13:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C02067E64;
	Tue, 20 Feb 2024 12:12:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FWVhMlhN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315C967C6F
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 12:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708431176; cv=none; b=sQS21QBYvr0lRbD9BWvtLwQbArXtdVdiiwVjHyxSsBUqx8Z/T4reGnBVRW1UjYkmBUf6P4kr4LZNaa8wehmLeFe0On+U0WOumawg4ICU27ky7p6s1M1c6C3HxiiajmLz3NOa0gWxi0+M4tbw/Y9SdT1SVGbb8d6b2YfHbry7zfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708431176; c=relaxed/simple;
	bh=xk3aJYvUH7ummcRIbLiEZHE82TlzfaBE6gHzhdpzgcs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CYXEKTzx8AoMnJcOfK9jKOXBd9gh5ESvasUl9/we3vAxtMS4fr1LzDefwQorNh7INZJ9n7HU6e83wg5qBW84xoybC/souelpVZdTi2l81WkWPr8Uq2YqeP7RgnW9M+t0PH7gaBwvlPb9v0BRN9KInZ3b4uvXLgYo7R/6XzsoNuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FWVhMlhN; arc=none smtp.client-ip=209.85.128.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-60869c68926so3945047b3.3
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 04:12:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708431173; x=1709035973; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=e6wTR0VmqItODr2yd8HndCQHY6rqvWA1sKIhl9SSx/4=;
        b=FWVhMlhN4rE9aV5P9cCsDPHzXOpyPbpXYkysI+LoL6y4i1pFdT2CoNLaPnILraRGay
         rQf/m/G4FfWdfcL1PUgrj36CGtLb1CN19ENiYMY+VXCbTPwSQuXy+O5m6z1C/ykoPYxQ
         mr++JRE8NuvfaVCqTzXMLzs8sQeZEBgyfBGE3vDmKHkD/h0XD0sMnavj44trCFQ49M80
         6ckPPg9KKWWIvqANU7dnA1iSWvT+1+oRrV7qnod9GqQcGj1zxj/KVauB8tTAoI9GQEp6
         n5YZ5nQ3nVuUvxZ7w9ONnfn7urGoTyBQWuGvjeTgJfdY9wi8NRpkqPZeKCb8nvRgwsF7
         QycA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708431173; x=1709035973;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e6wTR0VmqItODr2yd8HndCQHY6rqvWA1sKIhl9SSx/4=;
        b=kk/FFFKY/25kkj7XaDSBa4Mx/C/YE6DVGuZmO5CoKIN3/Bp4VkjGml3ePU0RF0zi/C
         NtAZvPIVXHmTi1dQeN2kLor3rQ7aYPmzlZ4FC5agtZZkmxq8PlE8jdYUwsJxco46fVbY
         x1JGZPKvahfwptyE4KmtQrB4BbVAMkDLb5zsx+dnSV461/IoDCoN5rBlTTwtLpNf8zt/
         smqyI4KLBWxZZ0IxV2URi2JMGUHRpOMefrGNTr0N/KXwjIoAwjE8SJlrZVlGn528KGV0
         w33VkAsAorU7jtIFquCYlri3cV3pm5nNHJ7iPWmRhO6YIeulEWgQd8CGcTb/Ydc7K19o
         aunQ==
X-Forwarded-Encrypted: i=1; AJvYcCWAgPazF2OBYIr1HknY+WPGxa4o+yK72K4x+QkLr+Y5dXkL8cBgmX6Z5DYje0/Mwh4S9PEaski+wBSVJVXMTWG7lsbLlRW3lVWF/Q==
X-Gm-Message-State: AOJu0YzxHhH4jPDS8AHs55Af0nuOcytXOdXjYNHYCFct1d7QsYOUrIva
	+Nob32R5+FmKWuVX69A9O4c5joM7NdVpTHPvovpK5lkyraIiwxZ94qbkybSQo0FRLjV/vUUYNaH
	KxszT+6AaW1AbzNejMs2kspvNJejH+WbHiimiag==
X-Google-Smtp-Source: AGHT+IE89QVyewZFZs3o8KYR14F/wdiOB0kpE6qbJHNRXT44hQTbwweqexbkQuL1HRYlWatO5NlcBcrvZUHtw5GjUgs=
X-Received: by 2002:a05:690c:f90:b0:604:9551:f595 with SMTP id
 df16-20020a05690c0f9000b006049551f595mr16185146ywb.50.1708431173276; Tue, 20
 Feb 2024 04:12:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240220-x1e80100-phy-edp-compatible-refactor-v5-0-e8658adf5461@linaro.org>
 <20240220-x1e80100-phy-edp-compatible-refactor-v5-2-e8658adf5461@linaro.org>
In-Reply-To: <20240220-x1e80100-phy-edp-compatible-refactor-v5-2-e8658adf5461@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 20 Feb 2024 14:12:42 +0200
Message-ID: <CAA8EJpooQh0v3cvoum94J2AkmUgD=KEiYw6R=2=h9un9bGvc2Q@mail.gmail.com>
Subject: Re: [PATCH v5 2/2] phy: qcom: edp: Add set_mode op for configuring
 eDP/DP submode
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Johan Hovold <johan@kernel.org>, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 20 Feb 2024 at 13:58, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> Future platforms should not use different compatibles to differentiate
> between eDP and DP mode. Instead, they should use a single compatible as
> the IP block is the same. It will be the job of the controller to set the
> submode of the PHY accordingly.
>
> The existing platforms will remain with separate compatibles for each
> mode.
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 76 +++++++++++++++++++++++++++----------
>  1 file changed, 56 insertions(+), 20 deletions(-)
>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

