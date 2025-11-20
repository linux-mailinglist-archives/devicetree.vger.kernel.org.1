Return-Path: <devicetree+bounces-240624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B48C73806
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 11:41:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id 86B6D2A66F
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 10:41:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B408326D74;
	Thu, 20 Nov 2025 10:41:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZVWYZX+J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B054C2F9DAF
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 10:41:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763635267; cv=none; b=PnoZHQSPItA9YghXz5QZhb3E40SI7o/21l5q3fQhlb3xpdJQ7BjDHb+vN5glb6xvptHEhV0ebCLMbwJiWkecv5Vk439KliTaDORbdsWXSvFbYkZq74bZ/HR1cxTZZ1ir9QfZGYFm8qruIGVHj55T0BG2HUT0By0lt0r83MyEns8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763635267; c=relaxed/simple;
	bh=io0yQaa1iknMZ7l3/uqh69Bqn+IbEs5aipi1mxEhbhU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GMGUSni7lDIMCDCPTmfTnGQDCyq1NeZPsvXmdVLQIccpiThoeDGkogjDxJ5NtNuyfpxLfLHSl0PoarsFH9smyJEyBBMXHl1fZc9k3Q0XschKznKTXvvYuIa67VHt/t0tX2/Xd4E6aojWZmB3i/V+TykG6czAs+6hv2xEtUMsAIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZVWYZX+J; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-47775fb6c56so6357575e9.1
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 02:41:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763635264; x=1764240064; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6mgwJ/4Ukd3943JvYrBsHnnqudEXP4H0GnoIDUoRcjc=;
        b=ZVWYZX+JN/f8iDmjZp5yg2RjaIzZd2mokkn/eUWWs8lsP+0CaW6MejDN7PO+TeXplv
         5mTNyCO27siIgDdmJFyLxK0fDDrRDc6Dz8vmfExrPt/tQGClM1lixolhBVnF8fk7pTHb
         bvGjbX1+7sKQZ7DggPqMAggGWKNnj0j9YgLG2PHrLgR5Z39qN8ZCzlnwKqq2hkxd/B35
         J8mTU6t2kHgH2b4OuQdTkj4ImqR1WUzFPwvuiPA6WAfHqCvAI7uSmqTZ8vGAkjWCqPcU
         msPEAPWobedjWDKH9Z+0fKmdOlkMMQuGYd2aRMksXP8huVUGatKaltpwyEpEYsKQmkvy
         mrlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763635264; x=1764240064;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6mgwJ/4Ukd3943JvYrBsHnnqudEXP4H0GnoIDUoRcjc=;
        b=phyHt0yESLN749cGs3nm9cNH5Ze2lGt/qm0FXCcVHz6Hh+LKYj4l49vtWPLZaB0ghS
         c01QET0iDeH4TcRXRbBQw+fNzNsyAUXTNeKdkMCbZzdDCLKIMnfHaAgNpthlb8y0NkNY
         xrD+dMT902AcjjqW+S5JHOAygOV5PEt25Vp3Jwt4aqNp3CyDZYbbuZsd3LuzCE26zhW2
         4a9FTlL3NPq3c8tLrTw8Jdy5Wr+1STxnGPQzDg/bOF1uwHI/pMs8Dlv6cdUyad7BIUP7
         OrNyFJQ04+p8FuEMbXO4GJZNPAKxoAuREZAvcArbxg5VEJMONGGbtcWYNwenATJ2QCHu
         +Ntw==
X-Forwarded-Encrypted: i=1; AJvYcCXTiiqKvDBjRimh+3sG+KExb/pZgycpLwlt2/qMQYflstz5/OcEM9OvwalpBEqCZ4HLbhl5Y2sgQotO@vger.kernel.org
X-Gm-Message-State: AOJu0YyxEHGma7lG03AO03JomAN5nOsVcitsZ9+06NZoW/JO1B2ghq0F
	yfy9L9p3vtaL5ClygUGb9m4RkG8LmbWKjhAmL9D0SwY2LH4iiORkjISc8rPpGIDAIZc=
X-Gm-Gg: ASbGncvQEpDDhI/Cp+/YS+aj96X9wdWFLhpsRfFBY1GThnJbw8hvj4O+Kf1REcvMY4e
	mXW9FF7eqw73FL9rSrIrTjxLZ+EKiJCThs0wPBtHTxF2nvs2ZUSuReY/4EJgndy+42kXgTDN70S
	dv7KMIFUgTYIqVCPJ7FKBClGOHRLXhZbiPu51sBhwWe1tTpszimKBr0GrzYLB1rMNGcYVCaBqHj
	sTHXZMdK0GSljGYKFt95EA3Y8JjITu9aSkNcw+6JYvdLsmGBse0Rl+XWnYLeWQzk6QuwzNEfMVg
	C7BFXW5BkYkLRbdQ2OfS7qmTawkZKkMyhXMdYTV588KZb14B+z2TgVUpDNXuz8otE4mgCz89hzW
	XsGz5YOj6UI2graAP0uRV5Rqs0VekSCAtKz4Z1+S4XMIMQ+XoE3R3ixLjHhdZXkRq43ZZZDufzz
	FgUBXexRU75q2G49XI
X-Google-Smtp-Source: AGHT+IGGzICrs8WsC0ZES68VHcMi+t5RlEr2PL0lmqRHtaEz9GTuPQDpK/ZRodLwmdHXmR03IHrQcw==
X-Received: by 2002:a05:600c:1386:b0:477:7b9a:bb07 with SMTP id 5b1f17b1804b1-477b8c91ecfmr28935345e9.35.1763635263239;
        Thu, 20 Nov 2025 02:41:03 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-477a9731a75sm63861745e9.2.2025.11.20.02.40.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 02:41:02 -0800 (PST)
Date: Thu, 20 Nov 2025 10:24:03 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: "Kevin Hilman (TI.com)" <khilman@baylibre.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
	arm-scmi@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC v4 2/2] pmdomain: arm_scmi: add support for domain
 hierarchies
Message-ID: <aR7CEzlHFYmQykKm@stanley.mountain>
References: <20251119-pmdomain-hierarchy-onecell-v4-0-f25a1d5022f8@baylibre.com>
 <20251119-pmdomain-hierarchy-onecell-v4-2-f25a1d5022f8@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251119-pmdomain-hierarchy-onecell-v4-2-f25a1d5022f8@baylibre.com>

On Wed, Nov 19, 2025 at 04:58:46PM -0800, Kevin Hilman (TI.com) wrote:
> @@ -110,7 +110,14 @@ static int scmi_pm_domain_probe(struct scmi_device *sdev)
>  
>  	dev_set_drvdata(dev, scmi_pd_data);
>  
> -	return of_genpd_add_provider_onecell(np, scmi_pd_data);
> +	ret = of_genpd_add_provider_onecell(np, scmi_pd_data);
> +	if (ret)
> +		return ret;
> +
> +	/* check for (optional) subdomain mapping with power-domain-map */
> +	of_genpd_add_subdomain_map(np, scmi_pd_data);
> +
> +	return ret;

return 0, plz.

regards,
dan carpenter


