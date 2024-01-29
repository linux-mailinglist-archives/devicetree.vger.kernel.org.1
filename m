Return-Path: <devicetree+bounces-36333-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2071A840956
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 16:08:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B428E1F22F49
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 15:08:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F61C15351D;
	Mon, 29 Jan 2024 15:08:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KLQg21T0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2394152DEC
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 15:08:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706540923; cv=none; b=nZOcRn3d3XqWPj0lDSlmeN5tPB1FnVG5a7TDrczv/n8atrRjacW1bvufoLlLohg0dHJj465fgGr66WDPZ+6QVybbuweFvF731fA39Wbm9KjH2YsshF1v1C7qbisAy3jyl1wbNgK4YDiNAzggKXBEcbUC0oAt8gS49PCyz2oudRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706540923; c=relaxed/simple;
	bh=7Ad9b8sC5p4drimOlyy33kQgcYMT6N80v45xUSMRDqA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JD2T61bsnkRws2WSvNDj4Eqv1NIw3LsrxGxMs/9PIebaATvW/xagKYTU3397czfFFgavhuAFjuEYGWoywGaNoH6445hpZSp3wFG39/NTc2ix3dhQe27sgWv9I/wsAO7zCdJPPIYzWSBvlfuvzKilF4tGftadXdmW+lsYi0A0rHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KLQg21T0; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-dc642cd955fso2043070276.0
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 07:08:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706540921; x=1707145721; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WHc0ySmd3+BUchE2A6eeEhPhJOTzoceSWy6/UF2YYmg=;
        b=KLQg21T03+/PwPrp/bd8sHw9xBbxj4gWOBzAfzuAc0wnAR5lctlHxPGr/Z62PQkjZb
         9o0YGarWzCHb7GBhhsuA3aCdXD0HNdDSXs/l66QHVEUE9Etn9m2kVw9jJY5LWT+1GLAz
         5j3lUT+qz4KOZalNwE9v31ya2UyG7eIKMbVPeTRiY2u9Jchzr9BaPGAIqyEbqC07QCe4
         R3JnOSibM43CNhMo5YNzisIqPdJhbhuA86URPbXiQ7+DrLiiUkwn7RdfEHyzZbKYr3yE
         aNheC1DR5pkw8O4YzSUFiR1SDTp9wNedA5Ca0HS4gwzs2bXllVQTHncPXZSfNBTRSBrC
         Cecg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706540921; x=1707145721;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WHc0ySmd3+BUchE2A6eeEhPhJOTzoceSWy6/UF2YYmg=;
        b=eVpzFBJW2rmIfUFDohMEc/Fv2DhYcw0rAjSUUeYxfhLkmrhloCSJLuDzV6oXVOWcBK
         kmm+5NU+XEaJtdnO7j5DgKI6WInxBcAt6ba/K1dg5zSvOyOB/WM5kYyn5DTDYn4Q31mB
         ED6JtFeiBPxXPZ4aPa4wM1+9o1wxpD3KfheIsOKJZboN9kAzlBoKl3laK5cPLLDnZndT
         8yEP5cQix94LFDkxPtbfCfwwmOiWCrlZRpTNn2fXlzyuXg2Wx3o/LAuDrR7miJ1QPbSG
         TB4OBBNSjjA0IxEqPWadB+i+UvwFnCo/PQqVeoaCJiVwGztAXtkt+FekRXGiNOrpDalu
         iQDA==
X-Gm-Message-State: AOJu0YxJXxCejuF0WmxZfCi8zMB43z3Dewzwmt175b1pTi0DsRkeBR+i
	WxrUcva5uA5uKUnw1qaMCYzQAqwO/a+erEvhjpvOW/DyCx7vXeraxF/smlvMPFw+wCr+ZQ0M1bI
	IxII4SJpBQR4v1JeBZ8vPZKmsZX56FMI6nj2ztA==
X-Google-Smtp-Source: AGHT+IEGAtVAdaZvHFjfmQf1IJOtCdXiDeGVR3eL7R75RzaD4DvPC28PHklGGBsD3t+yL5unf4AHNAwUb1afgQibw48=
X-Received: by 2002:a5b:18d:0:b0:dc2:23cf:6ada with SMTP id
 r13-20020a5b018d000000b00dc223cf6adamr2403587ybl.73.1706540920775; Mon, 29
 Jan 2024 07:08:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240129-x1e80100-display-v1-0-0d9eb8254df0@linaro.org> <20240129-x1e80100-display-v1-4-0d9eb8254df0@linaro.org>
In-Reply-To: <20240129-x1e80100-display-v1-4-0d9eb8254df0@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 29 Jan 2024 17:08:29 +0200
Message-ID: <CAA8EJpq1RSi4H6m6UQcyxEr=hip=ypKz9DhHziNKvDjUHsES8Q@mail.gmail.com>
Subject: Re: [PATCH 4/5] drm/msm/dp: Try looking for link-frequencies into the
 port@0's endpoint first
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 29 Jan 2024 at 15:19, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> From: Abhinav Kumar <quic_abhinavk@quicinc.com>
>
> On platforms where the endpoint used is on port@0, looking for port@1
> instead results in just ignoring the max link-frequencies altogether.
> Look at port@0 first, then, if not found, look for port@1.

NAK. Platforms do not "use port@0". It is for the connection between
DPU and DP, while the link-frequencies property is for the link
between DP controller and the actual display.

>
> Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/gpu/drm/msm/dp/dp_parser.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/msm/dp/dp_parser.c b/drivers/gpu/drm/msm/dp/dp_parser.c
> index 7032dcc8842b..eec5b8b83f4b 100644
> --- a/drivers/gpu/drm/msm/dp/dp_parser.c
> +++ b/drivers/gpu/drm/msm/dp/dp_parser.c
> @@ -97,7 +97,11 @@ static u32 dp_parser_link_frequencies(struct device_node *of_node)
>         u64 frequency = 0;
>         int cnt;
>
> -       endpoint = of_graph_get_endpoint_by_regs(of_node, 1, 0); /* port@1 */
> +       endpoint = of_graph_get_endpoint_by_regs(of_node, 0, 0); /* port@0 */
> +
> +       if (!endpoint)
> +               endpoint = of_graph_get_endpoint_by_regs(of_node, 1, 0); /* port@1 */
> +
>         if (!endpoint)
>                 return 0;
>
>
> --
> 2.34.1
>


-- 
With best wishes
Dmitry

