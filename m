Return-Path: <devicetree+bounces-205693-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B6FB29CD9
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 10:55:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 827E51642CA
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 08:55:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22FC7304BB5;
	Mon, 18 Aug 2025 08:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="df3D12z8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 938613019B6
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 08:55:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755507322; cv=none; b=h1iDm0jAW+LuF/omOQQQsVrdVBTeK2T7GOgnfY1nrnxbmsn1N1cwytrxtsi9lELGrtyxnItLYdSFbNyb92P1NdneRJf5HovXIdGqDpIEmJ1q28UuWA3gifv6g331hH6PXoUnE0ePwgwVuU8AMr6t0//ArULaAF1veMp/0XbrhDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755507322; c=relaxed/simple;
	bh=doHN6EunE4q7NHlaNCFD732IGI30PIFL/jWt6aNwl7E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oh2SH7EhWjycqe+qPeZTenuPLOZ1JCQgQNIW6mUpUXw6aEa/17hhLsuSuvA+ccIHGNedMhKNRdhqe8wo624BGjMpYESEH/NMBQd0i/oQYBCvzCkHg86ujBIzkjCHmnK+yMS9wnSed71DHu5FHu0WOUsz9hTlsajIj20Jr6lzbdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=df3D12z8; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-b4717554c29so2517698a12.3
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 01:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755507320; x=1756112120; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=oZn/2dNIEW/eVFC5JfnC1aipczmqj7uzjriC8bPsWpM=;
        b=df3D12z82MVMhgsPXGUVgJaQC/OJnuqLR57UTGn6BL2o3il38p3Crpd2pcBReCyM0s
         1vshYXWzucKA4YmZxkfswh0ntUBwHAqmUudGvuaTDTfdG6J0FxLTpQWdmuL7WtHZoDCJ
         EZJWeNExogFV5DWN9duma+fTuMzVpIF94rhsDLmbBwW4WwGYZUs6UqRrWs0GtGL9sZhc
         FG6soKSradjdaxELBs7Lhd673NHlqAIcFu+p4wMkoVlIIiS9XiSD3wd5sgfOKltj9CLW
         XfZH7b32d8Y5QGUOCo7V24+me3NFhb7jXeYVrI3BwkBc2Y8UuwnPh14xcJNm+hGOWGTV
         tvLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755507320; x=1756112120;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oZn/2dNIEW/eVFC5JfnC1aipczmqj7uzjriC8bPsWpM=;
        b=mMje46lwqd5mnH/SZy66D6R92d0HhGSgmfZA9muKF0yuVyce4NM4Y/q9JWt7w2l8vS
         zDhhJd/ZFKoT3cm5pmv8IquGDtCgq+qVWdhCPTFwWpa7mENMvS1ucgHbj0ffbyJ/uBUN
         nm3nTV0SM6THZIrUszm0TGkvqw4F71U6J5d95GIJsIPaw58aNTgDOwLZEccKHUMRUrBN
         3xpuK1JJ6q/mzmdhlD6aNuond7A4cFAff3nVY5US6L+tNUkN0EBwNIPLm52d6XFqn/yh
         N+PBPyaCNeEQIPyL/YaAjBWcpuUIABwLAU7BNy4o08/QXpJQ4ubjfc/w1NGFkTPHOuPb
         fjBQ==
X-Forwarded-Encrypted: i=1; AJvYcCVI1DdobOwQdCsJN1fNuzPYteyrZ81+H7ZIzKG1naiza0HnXl1U8LqLiNPML9j9a7xKezPuc6w8sjit@vger.kernel.org
X-Gm-Message-State: AOJu0YxqkAlqTSqnM3nYFwmHG4q9ASbx41uOsmGBRkWQ8PKGatcww+hV
	kn6Xz6JTOJq/RpD/UVDYmFxrQyY0pn/bR0omOVj3c4g03hpWQYiGEmmN0orzeNix0Sg=
X-Gm-Gg: ASbGncsY76IeMOk0NU/pGrXOzYQFLo8Ur+MTpK7llo0gpMLV1e+100170YaYZBvk4gZ
	AHgTq588SFzQDn3F7wrgUrx76Wf9Dphu+hElWQmUmOKjlOXWNSHuQqpNw2xRmCDn5a3OF/ONgVX
	jUcJaevI1/mbMbmNAkilcpgMaRxBhsRYq/aWM9ub+QQyZw2Ky4gfrwIZ8kQt2YpAoU4f8POCKK0
	IrzpswHy0v7mLhmayN4VTh4kPJmfWLoV8cPV2j81twdgBuB6wzAOuYe3/3/PR685Yrz0RmQ6rii
	tpFQZDhPOL6ymuTAo/u0xv1W8b38Io4hrZ6nsat+GyPKazuxGg4upw/RGTVaFkXQQFGQlQaug7d
	+QhlUpBiWYti5dC9xILXhHTSS
X-Google-Smtp-Source: AGHT+IEwAoFmY5jt3W71l+SnRGhFYQeBBiVkuaX1UqUzqxvAN/4+HpvtbFxN/YglucS1GoqaljzKwQ==
X-Received: by 2002:a17:903:1c9:b0:240:6766:ac01 with SMTP id d9443c01a7336-2446d6f0386mr165051835ad.2.1755507319891;
        Mon, 18 Aug 2025 01:55:19 -0700 (PDT)
Received: from localhost ([122.172.87.165])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2446d53eec7sm73735595ad.118.2025.08.18.01.55.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 01:55:19 -0700 (PDT)
Date: Mon, 18 Aug 2025 14:25:17 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
	Stephen Boyd <sboyd@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/3] PM/OPP: Support to match OPP based on both
 frequency and level.
Message-ID: <20250818085517.dj2nk4jeex263hvj@vireshk-i7>
References: <20250818-opp_pcie-v2-0-071524d98967@oss.qualcomm.com>
 <20250818-opp_pcie-v2-1-071524d98967@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250818-opp_pcie-v2-1-071524d98967@oss.qualcomm.com>

On 18-08-25, 13:52, Krishna Chaitanya Chundru wrote:
> +static bool _compare_opp_key_exact(struct dev_pm_opp **opp, struct dev_pm_opp *temp_opp,
> +				   struct dev_pm_opp_key opp_key, struct dev_pm_opp_key key)
> +{
> +	bool freq_match = (opp_key.freq == 0 || key.freq == 0 || opp_key.freq == key.freq);

Why !opp_key.freq is okay ? If the user has provided a freq value,
then it must match. Isn't it ?

> +	bool level_match = (opp_key.level == OPP_LEVEL_UNSET ||
> +			    key.level == OPP_LEVEL_UNSET || opp_key.level == key.level);

We should compare bw too I guess in the same routine.

> +	if (freq_match && level_match) {
> +		*opp = temp_opp;
> +		return true;
> +	}
> +
> +	return false;
> +}
> +/**
> + * dev_pm_opp_find_freq_level_exact() - Search for an exact frequency and level

Instead dev_pm_opp_find_key_exact() and let the user pass the key
struct itself.

> +struct dev_pm_opp *dev_pm_opp_find_freq_level_exact(struct device *dev,
> +						    unsigned long freq,
> +						    unsigned int level,
> +						    bool available)
> +{
> +	struct opp_table *opp_table __free(put_opp_table);

The constructor here must be real, i.e. initialize opp_table here
itself. This is well documented in cleanup.h. Yes there are examples
like this in the OPP core which are required to be fixed too.

-- 
viresh

