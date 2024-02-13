Return-Path: <devicetree+bounces-41242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BDFC852E68
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 11:54:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6EF581C22B81
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 10:54:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB70E24B54;
	Tue, 13 Feb 2024 10:54:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Uxh2Rp0T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E19828E3C
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 10:54:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707821677; cv=none; b=FdBBsynMSPA55BTHqJ6R0aQEVvIe25+HuCD/nYN8GUNXTvKpac8vxnjPEVkFJIbDXqJxdT236NUitCtvmoqUTWWBzxeI06Utl1O4lcltlqk/I0GZeCe8mJCp1nviZi2cnA8+yR+sRV/xfe+EsvCa4fASn2RNKhJm+/gLaq/EhBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707821677; c=relaxed/simple;
	bh=gYHrqM3G3kRoZsoYastsq+KgNzJfw/bctahA7VNbwNQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dCmDWiViB5NlmH+0HagybPMYMuMTwzX3Ss+kajHl4kXXowkE5VcbLnCuIq0H0L99EGDig5cFSZiEkjgB0WaodyA0cl7cNdPl/2lT/ELKVdpOVGWw1dRPCbuLVPj99dq9b2H6qAMREu71ssxHnt62ohriCJAQkPZc+Ubi2gQig0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Uxh2Rp0T; arc=none smtp.client-ip=209.85.219.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-dcbef31a9dbso809738276.1
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 02:54:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707821675; x=1708426475; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=U1uzd+QYrNr3GtaEVm7817MCVofpByYmPHh8dkivfTM=;
        b=Uxh2Rp0T2SPY6/aSaLGY+K3wzeoyzUmbEPLlrfQ+CoCRg0lGtdMDsJb80qNmYkHCa3
         ubf6NoOCpwgKlDYZDNJYGbJ25rvGPrQXCiXaMsnvA5TBQKhskIe4xrR6sv7MvGib7k9x
         +Jwj9KxqMZOkztIT9hV/yWWfhPtDShrR3QmQnz37s5snIg2tbsXMWNChzpsamixC8bhW
         dAbXkZwgUpH4/DtQ+2F59Qj+GIOw8+OFBHpEBaNvfnIQqzVGSsZ5M0Nrh+tZg1e1vIKY
         w7hiAUcPswKg4Sr00bdOB2A4eAEOfNWLbAn4FX8udlQl4t/3g75ctbFF4AY5tux2xSD+
         d7Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707821675; x=1708426475;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U1uzd+QYrNr3GtaEVm7817MCVofpByYmPHh8dkivfTM=;
        b=KEV183uZezSlIfHW6ujHvjQvM/+1XKSOjZZm4dcG2KoA0wIE0l/QH6hTzAGxVSjBoE
         QTLEC/3/glMK4tSTYIKsI2HYGPegOAyKFFbFQupG/LMFe/oQAuqCR9h3LBrovGH4KDlv
         LJP4118SAudo3+AS7CNpPFnnBOPl4RIZcSd/qg9wgD9214AbJIjwChPQezpnZhS2nWye
         5QBq+wKe3i1u+zxXRmD1PKnoHgCI7WlHgmyhtzHM/xIe8t3hUEgAax6K2MnmDkuVxFYG
         HHCVrsc0cC3r0sQzNb9ufmlNzBiF/7t2a2tmqi9gT+Vh1vxVJ5AyVJkuppQ2S6G/q+H5
         Wr0g==
X-Forwarded-Encrypted: i=1; AJvYcCXIS18ExVRFxVWXiQFKUFPfsTT7kV2X5U9sVHBu58Klt68LNk5tmAaL+rSKvsta+t+kmtLqe4MpEvpEfTDR8x/joLe0lDIkM4tkzA==
X-Gm-Message-State: AOJu0Yx9rXv5X03Zqz6XVIlqytyJKx9Vx4lhy2xnizUlIckQ90Uu0Efn
	5G+5CvKcOFns4XLrkPkqJEG/OnQTRrNoc/E86KDyp90kps107SMTJpgC06NnRfGZ01lZvrpMks8
	QebmOIiqNK6GCsAIdBy0sUoH74Ebt95plOjfZ6g==
X-Google-Smtp-Source: AGHT+IFAWLxJcI5gkouU1r1s5LPV7Trnv3iW1vw8OhO7CT8+bqdVLybIeh0ETpjhTb6NanG6KbE/5Wo7b825LL+mGTQ=
X-Received: by 2002:a25:9703:0:b0:dc2:234d:214d with SMTP id
 d3-20020a259703000000b00dc2234d214dmr7312147ybo.40.1707821675312; Tue, 13 Feb
 2024 02:54:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240213104754.8195-1-quic_riteshk@quicinc.com> <20240213104754.8195-2-quic_riteshk@quicinc.com>
In-Reply-To: <20240213104754.8195-2-quic_riteshk@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 13 Feb 2024 12:54:24 +0200
Message-ID: <CAA8EJpq0AnPgcP_zWw2hOYKeZ7uvuf9f=Z6=af5H4BCE7TC-Dg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] arm64: defconfig: enable Novatek NT36672E DSI
 Panel driver
To: Ritesh Kumar <quic_riteshk@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	catalin.marinas@arm.com, will@kernel.org, quic_bjorande@quicinc.com, 
	geert+renesas@glider.be, arnd@arndb.de, neil.armstrong@linaro.org, 
	nfraprado@collabora.com, m.szyprowski@samsung.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	quic_abhinavk@quicinc.com, quic_rajeevny@quicinc.com, 
	quic_vproddut@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Tue, 13 Feb 2024 at 12:48, Ritesh Kumar <quic_riteshk@quicinc.com> wrote:
>
> Build the Novatek NT36672E DSI Panel driver as module
> because it is used on Qualcomm qcm6490 idp board.
>
> Signed-off-by: Ritesh Kumar <quic_riteshk@quicinc.com>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

>
> ---
> v2: Fixed review comment from Dmitry
>       - updated commit text.
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)


-- 
With best wishes
Dmitry

