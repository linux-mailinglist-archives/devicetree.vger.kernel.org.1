Return-Path: <devicetree+bounces-126621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5385D9E2186
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 16:14:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 78CE9B652CF
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 13:58:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30C721F471B;
	Tue,  3 Dec 2024 13:57:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Fl+HyxFY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02F161F130D
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 13:57:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733234270; cv=none; b=uK479hCUd59NhLmR0OqAu1859kQ4GN6dx6nRLSaUyMWW4n96ofrEaifRKSwnWC7H6aoLnRpaXPMwe12Wf4miZ9pCsnoVKq2gMEkJd14yGKP+xScZq4GZU1L6nrJiLZPyCqDwXMPVjGXbKTAh7x4Hgt/xB8UVsS6jpcWphwv/seQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733234270; c=relaxed/simple;
	bh=rYvvBdg8fi4Xr/3R+nVFs7fW312NlcNLWvE6GK67uZk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gKD3ZQe/75pIGAHLnB9Zb6/PXxEsjUI/RCRlHO1qAoUVunEMIPnPO2Gm0c8+l31emevllbnICajkomBx9zuVogtZOWJNHTjVj8OzRtDkcFkZUHF46JZLBDmbACTtmAMBl8DrHXpqA+QR/PmxFy3N85yGNEJ10hDQ1kup5yfs0QU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Fl+HyxFY; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2ffced84ba8so53635271fa.2
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 05:57:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733234265; x=1733839065; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vma/aVgOijobBlFAdjamC8x1tA3Lu2jI5+iEG7pb/Rs=;
        b=Fl+HyxFYW+x4I5aqYjjuCRfwZjrlx5AD52TR86fq15vcJGuthMvY0T5nbjIxdgek32
         xqQXEEOi9YZte0gnhnDQGK7EUPruhor8bp4WZpX3+3Ib5bDTo9s7jC1xmnN5eQr2QPlq
         bNZeCdmTyJKycEofHFFGuqnN2XcmTrVKGZq8kf7lTZYpsfCPKt/LdOx1sgjri/QsyirK
         Z+R7NFqjgNoBFUDRJV8tb13T8z2ignlBD2r4FytBTiHTpjgcFfGKytV75jweJ3+Hq0T5
         3ZlGFx0f5R7RiJskcxFrIFeAJQnpniQpgBPl3bUdrzXcFdzzYmpsiYwFi1LPa1bPIA3j
         lEUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733234265; x=1733839065;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vma/aVgOijobBlFAdjamC8x1tA3Lu2jI5+iEG7pb/Rs=;
        b=bM3j0gaU5tYm8a1IAgoL3x9N7QNpuzQp6902ncWmQJROW2l+DDc3BQhrPfwPaZ7K9n
         o9aEhgtytX5lish1pkf758yvEWffkQrtNIgWS5rNSM0Hwy8A6Zh+93lf6kBsG7Bd1lFw
         LGU4mhARItxkOD2QTy/nd6vcUCti/OcaFDEjrlVizOQ/CGdWMHkiW6SIaU/qs3S+GqEM
         9Eh3+ffKN715Fb2EzOMNgKstEH3xdEVTxONcKDafnXpF3MtpZIUd/b6kUVpOTEMyqeMe
         SZTX0PUlHx3nNZQRx6bNbOppI/bzFSOdb4/n+e+dvuJutdFYt6bGZiCMJjifIZ96oiS+
         QffA==
X-Forwarded-Encrypted: i=1; AJvYcCU5BtuF8i/y0BCZQ0f3CQsdXKes44iToeG35NedQ8tmqK+D+4WZblfE8/puS0TdBRU5OJj9FS7RnFwD@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2oLg8mYClJeDSzKx7Ect1y+g8YLuzPCxe7AH7QE2qPQVR1KNb
	4JL2MRImrUqwPlpVZ1eV71E+RLhvaa3gh9n8eoH4Xr8rv0A1RkWrgK1W/OK9N0Q=
X-Gm-Gg: ASbGncuWKWmUJg000MNdBHmOn9fYTWCGE+HAw9tXsgXh3c4tQr14qcOO+i/+lmHpgzA
	pIcA39BTj8YVx+GS5QRylUpZRdyyP2PxO3OiYLdA9XB3Co0e9mZrs0N+zkHUSUptO72ef3PKAsO
	GFoPhahR66leWMfNyOJ4l+RKLWY5yLi8VkQvxf6uS042ux4CGJ4VAJAaBHwIx6gjh1bZbGm2wUM
	NQvNfbwdepEMTcuLbJLUqbKPVWLaQ/JYgDjeBE7kpN6245nqCxEx9AkR2oglhZz3u+eLFrXacIL
	N1HGuA89lgd4DykMlrmewn502OOSGA==
X-Google-Smtp-Source: AGHT+IEWu4ApKaC7Ta4KrqQTWekPko59agvuRUFXVxJooAszNQZ064G9g5fn/NzI3dsNUT1RD2yGnA==
X-Received: by 2002:a05:6512:3b2c:b0:53d:ef6a:17f4 with SMTP id 2adb3069b0e04-53e129cc3d9mr1370082e87.1.1733234265135;
        Tue, 03 Dec 2024 05:57:45 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53df64432b8sm1845404e87.90.2024.12.03.05.57.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 05:57:43 -0800 (PST)
Date: Tue, 3 Dec 2024 15:57:41 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: power: rpmpd: Fix comment for SM6375
Message-ID: <rcoo6p56lowzbkgci5umhg3xd2hnp6ledk74ys3hw2t2il22nw@bcbs4zmcbzgn>
References: <20241202-rpmpd-sm6375-v1-1-12a4f0182133@fairphone.com>
 <yo5cc3cvvwwdrqrrgwlquztj52sijip3ffyyqag55jrnztxi2m@hn75ylkhnxie>
 <D61WIF2XWKL8.MWU6PK2XGX4F@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <D61WIF2XWKL8.MWU6PK2XGX4F@fairphone.com>

On Tue, Dec 03, 2024 at 08:52:59AM +0100, Luca Weiss wrote:
> On Mon Dec 2, 2024 at 9:00 PM CET, Dmitry Baryshkov wrote:
> > On Mon, Dec 02, 2024 at 04:45:02PM +0100, Luca Weiss wrote:
> > > During an earlier commit, the comment from SM6350 was copied without
> > > modifying. Adjust the comment to reflect the defines.
> > > 
> > > Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> >
> > Fixes tag, please.
> 
> I thought for just a comment fix it's not necessary / desired.
> 
> Anyways:
> 
> Fixes: 2d48e6ea3080 ("dt-bindings: power: rpmpd: Add SM6375 power domains")

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

