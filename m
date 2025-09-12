Return-Path: <devicetree+bounces-216550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0F3B55252
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 16:51:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5E627AC0802
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 14:51:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32D5F3128D9;
	Fri, 12 Sep 2025 14:50:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="cWboFxnO"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AB04312838
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 14:50:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757688649; cv=none; b=eVdPJNCxeeaaQKMqhpLtZCSf5im669lsQik58WjpPTeMF5v/6PLtxDhyDf8urMH+fTcLcaU+lCOMgX4nMKpO27Q7abiSZ3fy72vW6RGhTrfRQrJ7d124y1HDvgwShkdihXssLU72/dY9sH1z8aYfC8pxkuYEp9xYrmo11/3xJWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757688649; c=relaxed/simple;
	bh=nsgqBhuQMIRgj0Foq7lbTZgCUyn2NDAcRteObcMHZAI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A3qngHv9ir/xkOp3TNeRC/TkV48budq2+gh/bsyCdYenKqrLrcLdfhme13HjLaKGxzJiERPaNibIZ/gqG1x6xk4ccc5HCJk4o+Pk0pRa2fK5Ck+ZygRk9kiQOXCmvWT0GXKlaf8VRJP0jou+1czgY6wFrnkkg0y9tLwbXWbZyAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=cWboFxnO; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1757688646;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=NWnv1uPYTna1ts6VTb5bmSJ4gFzt0Uz75RWyORHBYho=;
	b=cWboFxnO3+POHHYtgd/t7mR5Kt7Sj3ylEXOD2RrvCd28XG/A1OUmD5Nz4oX1MvZiBkgVbL
	JFz5rVJACU4d7+syyPWXUXT5XxP/dx1IVMn9EBJMzy4s2/MQ6u0P9pG0agTBBQp7w03i9U
	j40Cq+8rPdFTilIv7B5anAq5tdVmcwE=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-668-FgcC03aYN6C9mcC1BigPlQ-1; Fri, 12 Sep 2025 10:50:43 -0400
X-MC-Unique: FgcC03aYN6C9mcC1BigPlQ-1
X-Mimecast-MFC-AGG-ID: FgcC03aYN6C9mcC1BigPlQ_1757688643
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b3472b7efeso38855581cf.1
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 07:50:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757688643; x=1758293443;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NWnv1uPYTna1ts6VTb5bmSJ4gFzt0Uz75RWyORHBYho=;
        b=vnzbdpUZdsbVuSrAoeFKtwXQv/sQeUwdHFNZBAYTvaQwRGKKdpWNCJRZQQoiWw2eWh
         w8iq9to24UyTxVRAc5SEK+3mUc4XwUfxgI+0u2ufkm6m084f71N5INeLnDFsqlXO0EeD
         5e5f2yfq4jUqGaovdXIMx6MB7JBAWkeH9UM4963OqihhX31AFfkofdtb0BpXwTgKe2q5
         +sMwD3U0mS1J66BFuceNDQO+cfoSwkfQzrePfokoCk3QZVLXRdUkeuSsCB1Xp6gPV759
         d0jDc3YQXqBJiZnxmF7MdKr9fAYH469utg1FH4SO/t+AyLj/PDlxKZ0MoqY436y2tlg0
         66Pg==
X-Forwarded-Encrypted: i=1; AJvYcCVCtxatPZ46gJBTyuWTOvw+PXvAKGWi9+l+osLamIhLrBz5CJpnTzD9APTkLbFAsxy4myvIymoks3ff@vger.kernel.org
X-Gm-Message-State: AOJu0YzzzzAbWtQ+xgwJCMA9vKT2nlBTqjulHhZfeJM0VQPuX7Ktz6e4
	qpnvzDuBpgIfDJpyqrSsSjW49ZcUYu3zZtat+3q/2ZAOXCkvPqrv0LwaINHLGtV27E7FLaxCMfd
	YeqSRbkkMBSR9SwKGhK8b81mOYd1rrI5Sb8S860X0I5Cg11t6ChCSZmS/0FewwZI=
X-Gm-Gg: ASbGncsEWqLkgquYuJMcXhKYQ/XWiKDvzLV+Y15Vb2M6lJG8k3c6fY34vol3DdyWtMW
	yDgwvxXJUhVGqnYYX3jezEj1ybCzVG9lZxWQ1N/YxDI4iYgW3etEEdCWjVP3CaeXdprfwa16UfZ
	mb5RU5wdfrg6kIGmz70Q20bA5wQF4IjmQ2TVlv1Ms/e/tiOU/yjrYFEE8Z2Uz1b2s3pNi5YxwSd
	7k2sab5qyL40qi3223NkjTIYMaMHDiOfvwx4+LNYAUhtjuiKIHkkebQO5s4os+h7QZWVbg3r4P1
	OvWqoCGAxs3Jfyeb+d8zABGL0VapQCzQMRteQvxdxi4dPM3ZetoIeDs0R+sdIdwnEqnXN3ate4O
	9eQt5PfOIH/vaZ8u2MDMHyRpXgNuTFw==
X-Received: by 2002:a05:622a:5c1a:b0:4a7:81f6:331e with SMTP id d75a77b69052e-4b77cb3caa7mr40317931cf.6.1757688642714;
        Fri, 12 Sep 2025 07:50:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEyVIdYLjBKhorz3T0zQ9Rxegov6rF9Te/Pu4Zg+RAzt3WZQiqnmCsJB1uwM7uqun0gGUSs7Q==
X-Received: by 2002:a05:622a:5c1a:b0:4a7:81f6:331e with SMTP id d75a77b69052e-4b77cb3caa7mr40317551cf.6.1757688642278;
        Fri, 12 Sep 2025 07:50:42 -0700 (PDT)
Received: from redhat.com (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b639a61502sm26238491cf.0.2025.09.12.07.50.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 07:50:41 -0700 (PDT)
Date: Fri, 12 Sep 2025 10:50:39 -0400
From: Brian Masney <bmasney@redhat.com>
To: Peng Fan <peng.fan@nxp.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Cristian Marussi <cristian.marussi@arm.com>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dan Carpenter <dan.carpenter@linaro.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
	arm-scmi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 4/5] clk: Add KUnit tests for assigned-clock-sscs
Message-ID: <aMQzP7DamsQWl8_L@redhat.com>
References: <20250912-clk-ssc-version1-v3-0-fd1e07476ba1@nxp.com>
 <20250912-clk-ssc-version1-v3-4-fd1e07476ba1@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250912-clk-ssc-version1-v3-4-fd1e07476ba1@nxp.com>
User-Agent: Mutt/2.2.14 (2025-02-20)

On Fri, Sep 12, 2025 at 11:35:53AM +0800, Peng Fan wrote:
> Spread spectrum configuration is part of clock frequency settings,
> and its behavior can be validated similarly to assigned clock rates.
> 
> Extend the existing KUnit tests for assigned-clock-rates to cover
> assigned-clock-sscs by reusing the test framework. Add new test
> device trees:
>   - kunit_clk_assigned_sscs_null.dtso
>   - kunit_clk_assigned_sscs_null_consumer.dtso
>   - kunit_clk_assigned_sscs_without.dtso
>   - kunit_clk_assigned_sscs_without_consumer.dtso
>   - kunit_clk_assigned_sscs_zero.dtso
>   - kunit_clk_assigned_sscs_zero_consumer.dtso
> 
> These tests cover various invalid configurations of assigned-clock-sscs,
> ensuring robustness and consistent error handling, similar to the coverage
> provided for assigned-clock-rates.
> 
> Co-developed-by: Brian Masney <bmasney@redhat.com>
> Signed-off-by: Brian Masney <bmasney@redhat.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---

There's no need to add a Co-developed-by for me. I just gave you a very
rough starting point.

> diff --git a/drivers/clk/kunit_clk_assigned_rates_zero_consumer.dtso b/drivers/clk/kunit_clk_assigned_rates_zero_consumer.dtso
> index 1d964672e8553a90263af400367a2d947f755015..d62c7522c92461245d45f8ac0ebd26fa2850be98 100644
> --- a/drivers/clk/kunit_clk_assigned_rates_zero_consumer.dtso
> +++ b/drivers/clk/kunit_clk_assigned_rates_zero_consumer.dtso
> @@ -12,5 +12,6 @@ kunit-clock-consumer {
>  		compatible = "test,clk-consumer";
>  		assigned-clocks = <&clk>;
>  		assigned-clock-rates = <0>;
> +		assigned-clock-sscs = <0 0 0>;
>  	};
>  };

kunit_clk_assigned_rates_zero_consumer.dtso is modified, however
kunit_clk_assigned_rates_zero.dtso was not. The underlying test doesn't
check for this, so you can drop the change to this dtso file.

Everything else looks good to me.

Brian


