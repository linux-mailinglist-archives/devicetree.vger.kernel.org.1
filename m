Return-Path: <devicetree+bounces-155798-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B3DD3A582B3
	for <lists+devicetree@lfdr.de>; Sun,  9 Mar 2025 10:36:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F023E167D8F
	for <lists+devicetree@lfdr.de>; Sun,  9 Mar 2025 09:36:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC9F61A8418;
	Sun,  9 Mar 2025 09:36:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RMagQJTR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E85EE1A5BBC
	for <devicetree@vger.kernel.org>; Sun,  9 Mar 2025 09:36:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741512978; cv=none; b=tiY2B7Zrif/ptiGbZhoPmiKvEGPC/nluNJVeSZ2WuxCtbymJ195K2cP2P/QrSAqLXZcvOP3pajeLQwwtcAsWcp+YRtPZhz0yI9K8XAsss19aMjIR7VXN9jmn0fnkqAVzL1dvEYKXBY/t+0/58QwEO7rizPtE/gkna+NMYBv2DWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741512978; c=relaxed/simple;
	bh=RVfu8DAMzXPHxXwHgpPDG4/bBTmqwuwrt/l5NUmzylc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c6nrjsbb51fS29Bod9ewPgysdmfMEMiNmZcjq8df2qx55BxQzDB0p4gziH5O3+BbmanInNUjfiruObErh61ODBBtsEZu28yRjHX8zAvrR706y5s1fUI1pnzf6+siAg9gR7NrFyET5foK+WgsoIs56wDJ2CYUv0LpTllslhCaAHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RMagQJTR; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-30bf7d0c15eso22183191fa.0
        for <devicetree@vger.kernel.org>; Sun, 09 Mar 2025 01:36:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741512975; x=1742117775; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qv7t9LAWFlrZnh/h1qzmcLb/WgGltOmnbPS1Sywm160=;
        b=RMagQJTRI0VuKI6kR+3xBVVqMfQWa9rJjUQfZlWWZMTzEm0N8Y/wGNpGD+I1aeQNFZ
         o04lA0H4vIX0OHiXZ3IC8vzEcgQli+gWNEsqJd/yII7xDni0BFpXCr7HpnWHhgD2YfcV
         xOiNS2T+GrAD7u78FgXkb5Hb1j69CKz3FSk0APN5lhEQrPhKLFs+Vu9Eivq5D2JxompA
         YFTTsAV9lcKjU1cvsE46Wsy2ZbXm4oy/sJVX8ylg0E70iyGQGL3njhw1SVlkvoecm4Yd
         SFgmjYwI/ggtlpxYLeHTqeg535+3ewLV9KJJrKTTyBV/Z1ORCE8g80cm8K08S+0PHC/S
         L7OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741512975; x=1742117775;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qv7t9LAWFlrZnh/h1qzmcLb/WgGltOmnbPS1Sywm160=;
        b=SRATiIiRcWbNEwwlDy9zwCECMsxowA0Og13nc0HQFJYyDQCIGAVJZsQ4pvGMp+J8rj
         vF+P1v8PQaeyTGWpxiqYuH8aRmoRSo87YQLKLR7l4xpB50yYpvJWZQl1B67I9C/nI5Es
         FbHTwJtQ1yr6VF+B2f1wtcy1PjSv+R9bm+BHmPn+IecZnCdmJWzE6P9SMEg2aKoHzIWe
         s6GOi2qz1AKcTJjMgw46Pazwh/SqmbikRcjWF8aL7rGZhENSCB3SO3wi2cNYTtWbKMdt
         +vr8TrZopGe2msn51ovfkIrfjxUdL29HH5BWy8QckfXhsk3JPuwyFS4gUcSzyz1WGQg4
         DODg==
X-Forwarded-Encrypted: i=1; AJvYcCUYQwhi6wOIIP/kx4TJLZijrPu2ooDzKC4fRvSmE6FJvWl1/1pKSy33Ne5GtLdmF+pH4HeFKiotUFw/@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8F556rSgb97W78qnLon+VU5lVooimtMyzwVYVBYgnRhYtBsID
	/k+ZxkaanGHzmn5UouGMtkz4LrBGfWWt9hCC4MJxQsuhDaEGf5G5gtFOmi4ezqc=
X-Gm-Gg: ASbGncu/hnJjBTQRqjhJLASeE9BrzBcdl8iH6dsT6S8rRMqPRQqXAVnPAePjRzUFi8m
	/3WoEyRKxyDKwDGfDv3TydRXjAdE8L9hTNKbo/zGQE71mOsbmmlaGR9yLlWw+tJkWd7LFtHkhXY
	0rC6UBQVF6SjbUOskJnmrfCbuTy4Q1m6w8A4DngOfVADCpYApji3/MsFQrZ2N7vJ608AAXhWo5z
	OjCxB+krEsJMuQ0uKGMXpnb35dHeGIeb5GxRN9q1LmEZvPZh9BbxZmBS9/EfziPbrty3aiXPzDU
	A9MqVrntV6t3R3cckDrFD8j4PFa8LW9Uz0JTVgIa5kAvyppbmnNVKLhQodRXvbJzxW/vI54Qeil
	kZQjRLRHkJOnaEGl6yumHBz7S
X-Google-Smtp-Source: AGHT+IFQyC6l+Pw1P/BVH/g0erUa7GdcnXNOr76Jgy50Rjd/lC1C4UYs/hv4IKjbXl6NI52mEWrsnw==
X-Received: by 2002:a05:651c:1541:b0:30b:d63c:ad20 with SMTP id 38308e7fff4ca-30bf45e28fbmr31911591fa.24.1741512974977;
        Sun, 09 Mar 2025 01:36:14 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30c00e42dbfsm5573811fa.89.2025.03.09.01.36.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Mar 2025 01:36:13 -0800 (PST)
Date: Sun, 9 Mar 2025 11:36:11 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: David Heidelberg <david@ixit.cz>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Kees Cook <kees@kernel.org>, 
	Tony Luck <tony.luck@intel.com>, "Guilherme G. Piccoli" <gpiccoli@igalia.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-hardening@vger.kernel.org, Ivan Belokobylskiy <belokobylskij@gmail.com>
Subject: Re: [PATCH v3] ARM: dts: nexus4: Initial dts
Message-ID: <qu5w56bp5yurdgbhjpeiabn5pvpoov7xfyta5j7djnnrveak42@povbs5bddtsz>
References: <20250309-lg-nexus4-mako-v3-1-1dc2807df296@ixit.cz>
 <l4lv22oi2ktubf7aveqxqtwb7zz7cfrzdayuxxgwdj46ygubfs@qpl6ut37taoe>
 <88da307c-0403-405d-8356-c8baeb18eaba@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <88da307c-0403-405d-8356-c8baeb18eaba@ixit.cz>

On Sun, Mar 09, 2025 at 10:17:29AM +0100, David Heidelberg wrote:
> Hello Dmitry!
> 
> Thank you for looking into it. See replies.
> 
> On 09/03/2025 09:33, Dmitry Baryshkov wrote:
> > On Sun, Mar 09, 2025 at 01:45:51AM +0100, David Heidelberg via B4 Relay wrote:
> > > +
> > > +&riva {
> > > +	status = "okay";
> > > +	pinctrl-names = "default";
> > > +	pinctrl-0 = <&riva_wlan_pin_a>;
> > 
> > Where is it defined? Also pinctrl-names should come after pinctrl-N.
> 
> definition is kinda aside in qcom-apq8064-pins.dtsi .

Ack, missed it.

> 
> All other suggestions incorporated, if it's OK otherwise, let me send v2

I think this also needs several supplies in the riva device itself and
in the iris subdevice. See qcom-apq8064-sony-xperia-lagan-yuga.dts.

> 
> Thank you
> David
> 
> > 
> > > +};
> > > 
> > > ---
> > > base-commit: 0a2f889128969dab41861b6e40111aa03dc57014
> > > change-id: 20250309-lg-nexus4-mako-da0833885b26
> > > 
> > > Best regards,
> > > -- 
> > > David Heidelberg <david@ixit.cz>
> > > 
> > > 
> > 
> 
> -- 
> David Heidelberg
> 

-- 
With best wishes
Dmitry

