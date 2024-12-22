Return-Path: <devicetree+bounces-133303-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C469FA3FA
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 06:08:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DAA4F7A225C
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 05:08:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4808136327;
	Sun, 22 Dec 2024 05:08:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oWUCOYrM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23226846F
	for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 05:08:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734844120; cv=none; b=hsB8vSuPteqh8tGIZ0wuU2yVNjzdsrq6jfv8b/OnxjILVRNplLapjFo5mSEnBgfymjIAyd7D69lUFw02SULtYUIhdmDHBdoqWcKYBQJPLQYjbSyXxnLjf4ceriazlHchchbwEoPdomUeAbl0qVAoIXC9PDVlc80C9G+8h5T3ooQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734844120; c=relaxed/simple;
	bh=M3BQggzvehW1xb2Hdms5/aPPlKaAydg/firtTy5Vr2k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Vh8DV06aAaej00wLkO7AhtWb1lF9cWCxJvZaeBTXf3cWTkVyzlzzSruKpkMcewzMh+O1av3Q1HClleUswq5rNiMab71P6HxY1SbUFeKw/M8xuFkAFYWcTvLEeH4cLQqsfObGf6lAbumMvO+uLSGVlKu1VyvtvEBHLHJ5RiH4noY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oWUCOYrM; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-53f22fd6832so3333944e87.1
        for <devicetree@vger.kernel.org>; Sat, 21 Dec 2024 21:08:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734844116; x=1735448916; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LhIhwXQyWGRA6ZQFZENdZOUdSDFOhh5oAher3TloHlw=;
        b=oWUCOYrMd8Pq9yY93ZOTgyXXoOWEj+vYkZkM2uuYMIq2NZscvREaX5LJrdYmZZGhWa
         ty8fBTog6RzxVJeNSfJCOTLrwOZWNEZtoYpZJdtdBeBylabqkIsj02N3RzxiSKLV7s28
         GWVV3nSsz/8E5fIBHIUh9l2kSyUt86UrM1sSZttuFsSjlg7HJISU1Ebbi5zOzoB6Kx60
         ZWj/70jQTtrDhNvhbsvd0r16HU/0Uc4xfwCKg/0op2cEQG6jIB0n5awIFkNxB2OvFVyh
         ke5Fz2oooC8INXG61xcuM3VLWgLtQyWHx9HONyujl5F5LyBAcWhYAUUzeriF1GgLUcXS
         j0vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734844116; x=1735448916;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LhIhwXQyWGRA6ZQFZENdZOUdSDFOhh5oAher3TloHlw=;
        b=rPrUQ5qFrlTxvuUrj4WtgM81z45nqASuWgGPGjI2aAWWcJgs0xUiZ+4TMN7CFjSN5l
         r++5fZiWM8uQG637l6rMbDUQ8dEwOhHPB6pP2eWJFDd9JL/Dj/eIZrjxYTuXu47U7T+f
         EmnlmFUb0+UwhsE9WlromlewXY35LGKg5+QRC940qmA055eU/rPdlszsTH2xABnoQa1y
         qVTySVGYoLJMlTxkvCiV4VgyMY+bbXkAl6yVaQwJrhIRDOfGG2KkrT1ZoIEy3RO4yaFK
         mYjIh0iu3t2WFZyYfDtwuaI/afSVlXtWLbFYvyKAUSqWPz+HmrsfinFr+aDfZMRY/Hld
         Kh6Q==
X-Forwarded-Encrypted: i=1; AJvYcCU1jxvz8pAtxHlOAwwdWChtw5dXUL7R0NP+b0lgZXOb8I7jsHdHaefIYiYDyVzuGHpWTTS7PGgHfUw6@vger.kernel.org
X-Gm-Message-State: AOJu0Yxb0N+mS5H3LQblrn8V3AAG2LL6v9MDouZ2MSDXnbyd4CMZ97RK
	fRg2nzxWWsLD+ZeEfR+qOpJqrlrtBYlDJkO5RySwhH48t2PuKUYA6zUf9W+ucPw=
X-Gm-Gg: ASbGncucb5C1RLfqFecUZ9VEie/SZFbMeALRl01KBIc68D+MuslfLX3Jab+RnyKP0T5
	82uA19F+hkzTbtn1gj3nInPb+kAz6jmyAAcJqTG0tUUK3MhV8+JHWAe4sdsY32uNLygSlzOkaYj
	fBiKe7iXE4Q1zGik1AVg+1YOCsVAuzltkp5fyaJjWsj4+DeeziC/XbGUzAk8wPV/IJLxAHHKvGl
	jB4xOIWuFNO0/uTXLOy6pK0oUl5r8P3FZEYSc6Q0yAAdSMAbi3PKnRzKKwJq6hEw2yn6ru+/qbJ
	+zy4BldoGzdSDxnPrMFjC+HrWr2tOA9lSy7F
X-Google-Smtp-Source: AGHT+IGtW6Kf/rJtLlyncFJjC4GU84ZPSbTV3FNxTfKyH/QwjK+pivG8twNWft7UnKacR2ZRfKJ4Cg==
X-Received: by 2002:a05:6512:6d3:b0:540:1d0a:57fa with SMTP id 2adb3069b0e04-5422953247fmr2247671e87.13.1734844116231;
        Sat, 21 Dec 2024 21:08:36 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5422382fabfsm871452e87.231.2024.12.21.21.08.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Dec 2024 21:08:35 -0800 (PST)
Date: Sun, 22 Dec 2024 07:08:32 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: konrad.dybcio@oss.qualcomm.com, andersson@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, konradybcio@kernel.org, 
	krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	robimarko@gmail.com
Subject: Re: [PATCH v4 4/4] arm64: dts: qcom: ipq6018: add LDOA2 regulator
Message-ID: <ffwb2sxdzsi62pn4g67g4lysrfrsuqmzz2nvolw6i5fv4l2fo3@7tuh76xvusio>
References: <206e1dd4-7e71-4e84-af80-19a0d448b469@oss.qualcomm.com>
 <20241222044001.266999-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241222044001.266999-1-amadeus@jmu.edu.cn>

On Sun, Dec 22, 2024 at 12:40:01PM +0800, Chukun Pan wrote:
> Hi,
> >> @@ -31,5 +31,14 @@ ipq6018_s2: s2 {
> >>  			regulator-max-microvolt = <1062500>;
> >>  			regulator-always-on;
> >>  		};
> >> +
> >> +		ipq6018_l2: l2 {
> >
> > s/ipq6018/mp5496
> 
> Does ipq6018_s2 also need to be changed?

Yes, in a separate commit, please.

-- 
With best wishes
Dmitry

