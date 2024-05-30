Return-Path: <devicetree+bounces-70935-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C4D8D5055
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 18:57:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DFE67285B0E
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 16:57:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46B2F3D579;
	Thu, 30 May 2024 16:57:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xl2wOlmY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 914F03D0D5
	for <devicetree@vger.kernel.org>; Thu, 30 May 2024 16:57:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717088274; cv=none; b=GSKYryJNBT9WYjtVLMpBZNBwSO9meoVgf+7puQpky6A8M24PSrXu3O0w6FAl6MoznN4PFXfAtg4AMFo8Yq2lOYVJyssPCyAG4HDKaH1FLFut3znM4OtHYy49lNs1uiCHvTwPmdA7Xy3bRHYqKF5YFvDjbbgK9MPE7wF6YDh0law=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717088274; c=relaxed/simple;
	bh=1onJRP+jFxIMyKcg4gEbETl6dBq1pgiR9B36y9NOf8k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mJLQNl3MN8o6KDB+mkGcU3DpkHE6MzEruFDh8EQsfaX6CWWZ8ilZVa/P0SQNttT9DfrTLr+f+p2pwTFZnwu9Nha5p2DFXMyYyiuvzkUZbSN49yri90+XXzFbe2kyq4YDvPLGVWpOsVWntCtj15I3w3be/XRi/lpIBXGskZaYNic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xl2wOlmY; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-52b4fcbf078so1429907e87.0
        for <devicetree@vger.kernel.org>; Thu, 30 May 2024 09:57:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717088271; x=1717693071; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yKoEj4pEyvsK1sZbYoBerLWwhP69DaIECJ0l2WE1aaI=;
        b=xl2wOlmYtgOmUBpOp1htY6lSZ5cEoeYl/x2P0D5xORLrSdEIaW93ZjoLBteXSrh8aE
         kF7ABElk19CA+MmV4rn1HhuMp1rgGRA/1Pq14mvtWzv/cbtSMQOOxOmtQnGkqMBX7r36
         PHypjRP9DfjCdATbwLH13DRJnMncSURXz/HgWyIjWyzzV1hkIWIOVgYLNaEcX5vfLjcr
         Hyc2ZuhDp2EG7VxIrKaoq28MOoiHFrJgHCfCHu6DVRoQOnbTj/rT/cQ1HDVtHFcKLQ9t
         v+9yRv3XvzBAKLCYxcsQRQY4LyoJgz5FrRGFb+hraN5hLK/PgVi8ehmCcbp8XnXoZOLK
         RhSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717088271; x=1717693071;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yKoEj4pEyvsK1sZbYoBerLWwhP69DaIECJ0l2WE1aaI=;
        b=EtTTe1s5Q4Tgi1C7KrEMMjB+ZU3p6CCJT1ZtjsWjKjAsXZuE7Jb4YIBd/W4ysqUoyO
         O6saAdM39ohELjXj7pF/XSB1UYc5kyJCRb2ngfNGRsgr+ra27jer/hKFhMcnvJfx2ZDk
         tp4KLhq6oaR2pn1U/PtuyJtL2LWfHz4kCWkBOx+G+aCiJZ6hbPJv1mm4gctqAunUimNx
         emUZjPPnlbdsMcqQYR+V81X5oxNQzVYpCKVfaArXBEBb0Iw1PD9bpGCPTRkdZrx3cU5v
         b3w4qCy7MRgraipP9ztjbCrRB7lZc8qTKZUWrsUTqMVsXPK/iPAid6nOm/57tC/flBET
         pfQg==
X-Forwarded-Encrypted: i=1; AJvYcCUTwP0nNF4sJ/UBgTp8PWj9AeLbD5A96B4P1wPfOaiROocWYZ0Yii2z+BpyO5jmrUd620/68Y3wf5Z+HVpD6TlMHy+IdP+03YihcQ==
X-Gm-Message-State: AOJu0Yw+DWYt+MC9ssbPZicn0kLm48PQG/olDwKOTk6heSW6XsJkerp2
	fVXCdLIlCYUen9uD0c+72m5CZ+GPmwi3IuCoNeEeDrN1DLAP//zPCsPKPYjSBmcRdWCV3u9kEhp
	D
X-Google-Smtp-Source: AGHT+IH8Z6ZFXdEJVP9oiiG+s2OZtC1b9Y/rKhXYZ6RU/OU7SX24wjbozbL+AWiyWgVina8q1f7DXw==
X-Received: by 2002:a05:6512:1183:b0:52b:79c2:1aa2 with SMTP id 2adb3069b0e04-52b7d422680mr1697242e87.22.1717088270668;
        Thu, 30 May 2024 09:57:50 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b84d8971csm13865e87.264.2024.05.30.09.57.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 May 2024 09:57:50 -0700 (PDT)
Date: Thu, 30 May 2024 19:57:48 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: pm7250b: Add a TCPM description
Message-ID: <ib2fm3jdexpnqbp7nlmtv44kmrsqhr77jjlxwxpch26d665rts@qwer4ablhqmu>
References: <20240530-fp4-tcpm-v3-0-612d4bbd5e09@fairphone.com>
 <20240530-fp4-tcpm-v3-2-612d4bbd5e09@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240530-fp4-tcpm-v3-2-612d4bbd5e09@fairphone.com>

On Thu, May 30, 2024 at 05:05:48PM +0200, Luca Weiss wrote:
> Type-C port management functionality lives inside of the PMIC block on
> pm7250b.
> 
> The Type-C port management logic controls orientation detection,
> vbus/vconn sense and to send/receive Type-C Power Domain messages.
> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/pm7250b.dtsi | 40 +++++++++++++++++++++++++++++++++++
>  1 file changed, 40 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

