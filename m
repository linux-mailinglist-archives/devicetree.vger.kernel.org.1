Return-Path: <devicetree+bounces-79336-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C636F914E10
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 15:12:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 07ACC1C21407
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 13:12:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92EC313D62F;
	Mon, 24 Jun 2024 13:11:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bbBbkXhB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2C1813D60A
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 13:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719234717; cv=none; b=VOHAC/hO/ghTuikRoLkJqHEMh8hblwYXNQvixCV7zSwwF7WbpekBmD27/AYtXA1ujnt+yoSCBSPEObOZQIwL4yy5Wl4OgysEOBsEuHPMGvziqSzbMY8xejU2btBiBF/s/ZYbp6FAAkqhGDMukLhDjpJ/wsE3K1bXl7lE5dtL6lY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719234717; c=relaxed/simple;
	bh=VjNCFzWs4fMip61XK1/2tUG/6+rad2HUZJCzNnVtNt8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=X9zHezYVDS8VC69yVbSHZk8SPkK6Vws/cTgumAzdSEMeKCOobcleg0wMPj5Rbhc5A5hpRihejkJY5nk1a/XWnl6L4ZzIo0adD4x/raBrmXnMAqR0VQmAoJBJZtIzPeEofi++2MiEWuDgqBhtzZF3rAblz3Nbrt+wGFnbkP9KF/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bbBbkXhB; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-52cdb0d8107so3442798e87.1
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 06:11:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719234714; x=1719839514; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IPk/V6ZCtMtNKcTQ0BbQ1yW1GyQn/NuNLdo14/zbbMA=;
        b=bbBbkXhBa2nkhptAqEeGO8yEE7uHmESMz7hsnO3+2uVjxWH+Ug6zhZi7cmfZgtckhi
         jPlc4Q09Pa5oTVal2/ZXeCv73GvHcv9QGIL9NCI3Xhx3WURdmPN3RZZxagLrf2zhGCv8
         W/jp7nTU3Ca+5E+CYd3lSJejV06OG4KdSGm+U8Odg7cQVWqJgQPU8WPaAHNZjoD3S9M2
         VOjB8WSU4vOo5deTZL7nyPRcdfMgeHFswQWlGkZz9riNwJ2z1YfBJQ8891tRfQ/ly+lg
         aatL5cF8YLHpRDmhmaslhZpbdqhJn51um9dm6EOpK5lyhkWmF7wFDDY2b9srLcaSPY8E
         26pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719234714; x=1719839514;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IPk/V6ZCtMtNKcTQ0BbQ1yW1GyQn/NuNLdo14/zbbMA=;
        b=PPdvWFKfhxrfH7Xm0Vq0mi0nLrgjoyv2HF3xa6XY4KUCjSEEmPnHBGT65jMLe0sSpB
         Tk7G5ltOMrNhfJ4NPReKjlHNtuBy3VoI3xxGxJ0QHsbI3w7qNpDM5+HePq33+ukOVIfn
         b1TZ0fKQBwUeYrTpoEuFVh5t17Xf4Sq/goXyNn5LYhzrzSdVMjH3vAin4chg+j7ThxiE
         1FgqOdw0FrgNFfhYaZn1QxLgpp4yTIiBEiB5IsJIsgKGFpxge3/KzwU1g1VEPq9vvozz
         SAmxgbxUCtWV/zZdKwucjGqU4/ST5F52qvOYJn9j0ix+OwKfo32U0QHj9XmQgrvldeDy
         EuyQ==
X-Forwarded-Encrypted: i=1; AJvYcCVOr0kJ1hOhmAqWuUQMo7hm7LW2rM/goG0JrURDBDbR0mh2+FXTUmMS5qUSjZ6w30IxhLMx7HatA/DlCMkNE3v6RnYhPRTPGOqrkg==
X-Gm-Message-State: AOJu0YxaG3MUs/ZqFWAdq7gDhJHUaWFmgdw44W+WRlUdmr4I0Vp+nVEv
	Vsl0w4SZ1NMxfVOk3yYIUb1NZEVOiuB7pWfpSvHt18yL0A0OHqn/FXqeKENZVlQ=
X-Google-Smtp-Source: AGHT+IE6VlpPc92A70dxmbYGuqq6zvs+OwoLUdsYnDUUrs9lY4ROR5VlF1Z3d3UMo8Oryl7Nn+WZYA==
X-Received: by 2002:a05:6512:3e0a:b0:52c:8b03:99d6 with SMTP id 2adb3069b0e04-52cdf7e671cmr4286209e87.6.1719234714150;
        Mon, 24 Jun 2024 06:11:54 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52cd7cdf464sm947409e87.143.2024.06.24.06.11.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jun 2024 06:11:53 -0700 (PDT)
Date: Mon, 24 Jun 2024 16:11:52 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Caleb Connolly <caleb.connolly@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sm8350: move usb-role-switch to
 sm8350.dtsi
Message-ID: <3yq7bdgvngxdmgoumyxkvcaj5ikut4i7mrsjhwly4hja3kuhcg@5f4mphitl3hp>
References: <20240624-b4-rb2-fixes-v1-0-8d763ee4e42e@linaro.org>
 <20240624-b4-rb2-fixes-v1-2-8d763ee4e42e@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240624-b4-rb2-fixes-v1-2-8d763ee4e42e@linaro.org>

On Mon, Jun 24, 2024 at 02:23:43PM GMT, Caleb Connolly wrote:
> Since all boards with this soc are capable of role switching, move the
> usb-role-switch property to the soc dtsi and stop explicitly setting
> dr_mode to OTG since it's the default.
> 
> Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8350-hdk.dts | 5 -----
>  arch/arm64/boot/dts/qcom/sm8350.dtsi    | 1 +
>  2 files changed, 1 insertion(+), 5 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

