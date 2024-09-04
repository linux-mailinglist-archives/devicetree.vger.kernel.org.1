Return-Path: <devicetree+bounces-99763-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DD47096B226
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 08:50:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9BCFE1F22D3B
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 06:50:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49FCA146580;
	Wed,  4 Sep 2024 06:50:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S4JB0Bls"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 656F613AD03
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 06:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725432638; cv=none; b=lIciOUr+1qXyoSvk9zpU3p1j8jI6/HSwM7KxUwVgmU0oZn5hHV/oSjfbRNl1lxmylX3oij6zaR3BP57aI4+c6WtipOA7N77gywoD/mCbgmLgyajZzkkPtJDRicmymsY3pPcbpB6g/GJpPlPIOovFkvaHdu4aSXksINsyem/1L1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725432638; c=relaxed/simple;
	bh=HpLRa4Rvt/+aAqe7IwAUdh3ViPIKY5BzBPQgUSEG2Jw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pxXs8jlO2x3jZG8urkNAT/s8JNsUVFnvfg55sQpIX8lNeYXyre/tf13w0D15G1zXuDq3Plz3l8COXicw6jDDQ8UC0OLDIse4kaNqhqj5DoCYqwSKZsZAfwglHw2Drh14GaoGNRUUQpMaKW42J4NzfjDbIs/itEPx0xxbtxSM+xM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=S4JB0Bls; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2055136b612so35705185ad.0
        for <devicetree@vger.kernel.org>; Tue, 03 Sep 2024 23:50:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725432635; x=1726037435; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=en2oD5qDU2tZ2yKUFz47PNROzUaBtikH/wne/ueokiQ=;
        b=S4JB0Blsry9wagRKRzgguTMN2QY1C70Yw37rOuspCFfPQV9yA8t6cagvZOK5MEiF/k
         jZgjhMr3yLlz69MGdhn+HQxSYG0dX3HPyK1yodFMviKstagw7jR19udvyR8RQwhaBPNn
         mALm8L3gtQMHbpDS1ZxsLJLzOWueynR9hveQ2S4GeoeQDTb0NQAlML10V0JtQEJZ1HYi
         6DTiXGMENEqfEK8vMGUOS3qm3MofE4NGJAseaRic4/XHanZhgEE6VN4gTa/7YEUp407Y
         58HulOvoqeDFl8gvHbNSgk6cluVYbO57OFVfoySmq6G7wrV1W1L6nF+yqXEusOsEg8Kv
         nncw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725432635; x=1726037435;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=en2oD5qDU2tZ2yKUFz47PNROzUaBtikH/wne/ueokiQ=;
        b=EpfHgMBFYd8ApxtHoqs64mCjthGfzvKcuzbiXZUp87KxMjcKamUr/HtP01dSPwcWwZ
         9ChdKFgWHSs31FQrAGoUkfoFdw+mLO3JpTX774XWBdT+zzuNPw6mQ3GPb6P8p/Bb6YiX
         hUnGbP+TPgPQlzsX1mLNLKqebMT2MRhTgd69XOuVwTAU1YnSP7YP74jMb2B4+ZL916X3
         KbQ/BwflCU7rKjy9APRAOxJbNh/wjKK4c0T46jlJ+YXVdPzrrwjgL6L9EROU9B9Cd0Z5
         dK+cFo5Cj2gOL8nfZAmi17MLvz1lFYh9fhoFsOY85xoUfpH5BQIyqXa99/OcP6dE1nyc
         M8lw==
X-Forwarded-Encrypted: i=1; AJvYcCVCqh8aTTB5D370SizcmsGZtP7T0x2aeNzf3FuhFklowxlDvmZ4jZrsP6j/99VQ3TyTEr+jQ2ny6BpX@vger.kernel.org
X-Gm-Message-State: AOJu0Yyt7D2H7jIF9CcZOzKQbdbMR0iXu989kJaHwQp3Y28oKzNMb/xI
	JyFuqSiguFuK/d/Wy4dnECZNroQ6BjHuzB0Iz8e3gyu8G9thGEgS9nxc7ywkeso=
X-Google-Smtp-Source: AGHT+IHuXkPrjnRxHzKUt+c3fsqI1O6+trvX9+ZrTiAv83zDvIGejHvXzro9xkUdyvXrL9OT3DDtvw==
X-Received: by 2002:a17:902:ebc5:b0:1fb:4a68:b7bf with SMTP id d9443c01a7336-20546b35bd7mr151754375ad.45.1725432634728;
        Tue, 03 Sep 2024 23:50:34 -0700 (PDT)
Received: from localhost ([122.172.83.237])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-206ae913674sm7704755ad.51.2024.09.03.23.50.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Sep 2024 23:50:34 -0700 (PDT)
Date: Wed, 4 Sep 2024 12:20:32 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Dhruva Gole <d-gole@ti.com>
Cc: Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Vignesh Raghavendra <vigneshr@ti.com>, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: opp: operating-points-v2-ti-cpu: Update
 maintainers
Message-ID: <20240904065032.zetnlmzbswae44mu@vireshk-i7>
References: <20240903-b4-opp-dt-binding-fix-v1-0-f7e186456d9f@ti.com>
 <20240903-b4-opp-dt-binding-fix-v1-2-f7e186456d9f@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240903-b4-opp-dt-binding-fix-v1-2-f7e186456d9f@ti.com>

On 03-09-24, 16:00, Dhruva Gole wrote:
> Update the maintainers entry since I will be taking over this file from
> now.
> 
> Signed-off-by: Dhruva Gole <d-gole@ti.com>
> ---
>  Documentation/devicetree/bindings/opp/operating-points-v2-ti-cpu.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied. Thanks.

-- 
viresh

