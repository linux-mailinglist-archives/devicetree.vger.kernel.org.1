Return-Path: <devicetree+bounces-126908-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 28CEA9E3868
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 12:10:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E201D2817BC
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 11:10:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 586D21B413A;
	Wed,  4 Dec 2024 11:07:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AwF6CUim"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48AF31B21AB
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 11:06:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733310422; cv=none; b=XaUjKzHtm99rMZxT/X5Y1jLmac/qMO7mZFdJkYVygO1YPUQgMWK8HZlXTwRYETj1wdBLkOA0fzlaxCwMCp+YueNtJ1aTpMwpZSUyU4GBg+1MafB+b2lKHVZUhd82GuYyX5RhB2xniw5g7rs8grR5CqflqxZ6/ruvRKj4iDepNZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733310422; c=relaxed/simple;
	bh=E65WWkwNgLnXFkVJhkwVsz00upPotmr4Pfe+PM77E68=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AR9F9Q428Zv2dco9CMIrNzyrrLMN16YnlmflS/dssMV1F5n6l/jQcfH0bUy9hug+kR+V+S9BAqvcdzQV7EWUf60LXo4gzSgkBwCh6+phQLmUs28Vn6Mq4rPdtKRDVYLbKXBf1/ZT33CXdyiL4mo16z9I70E9hyQEeZGm9A6rtTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AwF6CUim; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2ffc357ea33so68314881fa.0
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 03:06:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733310417; x=1733915217; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Frwodt7e80iVestTvU82jBPF1mauExxFI6AqVijqEjg=;
        b=AwF6CUimdgFE5Pc5NTsfZ2kgva8lQYAofkJAciTJcm8hk8fp7oo5Jut2rkh6NnILtH
         LKMQ16ThbY0cXsTsHxeZ3D7vbPI4kbi4zRFz+mjBZjBS39l9pOyD4tAh4wld3o7IzAMd
         Aa2lKHphSl9t3Dz7gwTpVQZD8MLZ9zRoaHyoD4wXh+WknS2QUzcvMUlh9m0kxDTcZAYf
         qIzjjmKw4w+R/58I7xulE5A5TbBC6xZVRvLyI37weeymWHnQurBCqGGIJnetYVhhB+q8
         JxTY+DnbQZim5mLgcVJA+b7J0FtXMzH2X5un2BZzo7SgZnMDdPE5HQqXjABV2XYT1Dyf
         yChA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733310417; x=1733915217;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Frwodt7e80iVestTvU82jBPF1mauExxFI6AqVijqEjg=;
        b=Kqk7x2ZZwJeH0bXWDtowOGErqmisN7Ra9IiJSZsadLOA5IuxXmV+RX7Z8AWaGchIG7
         +Nuo3Zk5Tsw+sd0w1L0PZG3QatjTGCWR4WCFzoZCCqlt++CBATyXdfX8jNSsUPoUbmwl
         pHa2O821Miu534MSR1AI7U9cofEkiKbfe9JSZ/0henbAKcMuqIJL/eiG8xaTtiYbTDup
         ArSkSV33FR8HrA7Gf3ffff3/3DEH/BWocfCaUu85W6kipAarSKHcwISnKptgIaUlHB5e
         dWacq//fo4Zesr21dMFm9Ibq9AzNpFKAYOHekjSauywyMRZLEhGdwo+rhE25P2dNhYLH
         3RBg==
X-Forwarded-Encrypted: i=1; AJvYcCVL/EQn0fKCm4IQJShb/7sjtULGE+xQKqQUoS1+RWJQkslHHlxzAGCYWl5lxn6000PZ24QrgfODU4+J@vger.kernel.org
X-Gm-Message-State: AOJu0YwCsmhB6QfXHCOzooii4eEDczobtuIH+Kr7ivHLS7JwesyJwQFx
	elS9V7c+4BMyFRVkU+80LYzJJ5SUnqu2Y+OsTfnoqJRy5NsZOsMJv1l2EsFdc0U=
X-Gm-Gg: ASbGncsgeXaLaNEjTgcOglsIbrfWF7wKi112ff+J/yWHX56b0D1Qndbli+dRBnAKJ67
	lcJ9JMslyylNpnIkVsGUEbruNBMQY2P8CE1angJW0BsW7v4AGB4KRYm8BaBdDsw1ZE/BRUPoZEq
	wOoetW5glHU1sDdSY6b/D/Qw2rZfytiDlHN0TRfPREIjevMGh6JOdguLpfTr3RZ1+J+pG/g9bsc
	YnectyYspFCxnfxT048cvyWt+pbJA2dQjKvUX9kd+tWBBi/NGvEQ4MSTRjXgclYXQm6DZ+3OrMi
	q9ARCkO+L5P141O19P/LoekrwR2peQ==
X-Google-Smtp-Source: AGHT+IEMk4pFxAlr3TGP6UdHEhLOi9fl1THCZj9kUnw9vcRnkqFukVuUyiWzLySwmier7TkiwbynLw==
X-Received: by 2002:a2e:b8c9:0:b0:2ff:d81f:2d33 with SMTP id 38308e7fff4ca-30009ca9f84mr30152041fa.28.1733310417470;
        Wed, 04 Dec 2024 03:06:57 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ffdfca1c6esm19213481fa.104.2024.12.04.03.06.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 03:06:56 -0800 (PST)
Date: Wed, 4 Dec 2024 13:06:53 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/5] arm64: dts: qcom: sc7180-trogdor-pompom: rename
 5v-choke thermal zone
Message-ID: <b7ayn6kejzh3uaxcn5kfvrjdl5isiqei3uelf6yma7ap5c4gul@4qmnbdb6bix3>
References: <20241204-topic-misc-dt-fixes-v1-0-6d320b6454e6@linaro.org>
 <20241204-topic-misc-dt-fixes-v1-4-6d320b6454e6@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241204-topic-misc-dt-fixes-v1-4-6d320b6454e6@linaro.org>

On Wed, Dec 04, 2024 at 11:56:56AM +0100, Neil Armstrong wrote:
> Rename the 5v-choke thermal zone to satisfy the bindings.
> 
> This fixes:
> sc7180-trogdor-pompom-r2-lte.dts: thermal-zones: '5v-choke-thermal' does not match any of the regexes: '^[a-zA-Z][a-zA-Z0-9\\-]{1,10}-thermal$', 'pinctrl-[0-9]+'
> 	from schema $id: http://devicetree.org/schemas/thermal/thermal-zones.yaml#
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

