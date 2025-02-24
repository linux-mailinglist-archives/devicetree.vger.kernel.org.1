Return-Path: <devicetree+bounces-150422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E171CA421FE
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 14:53:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 35F2F3A2207
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 13:45:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CB5A233730;
	Mon, 24 Feb 2025 13:45:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GymbdWTY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87F8913B5B6
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 13:45:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740404737; cv=none; b=DF1+z7vH2pPHsrjyK/gjMlgCEoxKtFNZQJ5b8xdiULy/k71LelGwl5ZitXbbV1rmQFTG71vOp7z19k5KYt7U8QfG/Z13RbpGUi2kuXsTPpxJRZ6JLtOaeXYW40amAphbfPzNfX+CZ6ouXe3woBqOGSsHrlk0rI5wK1ngim9RFYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740404737; c=relaxed/simple;
	bh=YxFGfTzbpsU2Ndkj72fW5M98h/iyMTLKmwsYCZh39AE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kAimaYYJSq4UTNx1YzeZae+UccpqNU5XxaSwFSGvAP7v1IR//ILKtGCeQX47NK+712GNWDuvOdwxCOfIVd//Rs1p/ob/1dHUp0g8XuhF9prdB0wKR1GHuywWlPohy58G2zKkuNOYtJe3am5TIGydDwINt67R8KmvYifHeTGdnlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GymbdWTY; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-5461a485a72so4314482e87.0
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 05:45:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740404734; x=1741009534; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rQtxIikjRYVU2YE1FfJsa2nPhFSgRqTZXI/yYof9sW8=;
        b=GymbdWTYsed/RydxRDc9aOdFhthWOBvWn+l0gJyIVc1Q45R3CyPuxj1Ir130IysQcN
         PwgLsuya/GkJfUu0PMIczUqPmVgR8N+Jk5UE1SbcaYXKxMtUCNVlToRKV0Yw0ZKr1g9G
         A7YhtjcjARi76uP9QYmZxe3akXY3bGjD2ZJkTt1x24b8Ld0xW49NPevgNnJpF4qnGR65
         pcFgTFAqz9KaIl/xwf32OJkhGQ00Uoi86alN3kddllPC4YUXygyOMJInNyfu3Qg8qhqJ
         8jPpc9dnB43AD5zZzP7edF7yEqCW2p3b6ACuVRtXVP3b01pMboaARIilGo+L/qTuB7EH
         vdfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740404734; x=1741009534;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rQtxIikjRYVU2YE1FfJsa2nPhFSgRqTZXI/yYof9sW8=;
        b=ow2CcO2rznsB6d2+9/aXMNTpQqroEiDffidNM354m41W0UVlF8nUsjMJl3tPG9DlSB
         gAIp8iCYdD/4+GstLxnY8Tof5a+0BqWoxgFibLtZs6VhSAnGuQecnL9I3BcZKy5FjrsO
         8l2hlHCm959IUbVNXE/ZcUtfIZhWOi14r1lqKaUnyjf6ue0xtJhzPU/NVLrvVqDiTHIb
         GXw15ZTfhozWvus3mXZPJOH1bVWGV14k39a93SL6msBFYph/iM3YXELW5ppByTDDoSEC
         Ebco5UVbThBvZLiQEaGPOIVOOSy6oGgb3TZCLo6zwGH4/ouXiKgWvW/1LJg+MLgKtc/3
         76SQ==
X-Forwarded-Encrypted: i=1; AJvYcCU5cdU978HbWiBNJJlEpG/gvkjsiGG7V3XH7Hb4VMXHQphF/kgyrbAkYwJSKJcXihRx3tM8SB+bn7b5@vger.kernel.org
X-Gm-Message-State: AOJu0YwvR4RBpfJBGmHJMqkq7qSB5O41Nvk1nREh19SyxB81ZPvK3VER
	m8S0kbte1WN6u9mXa69ETgcY/BKF6RLCra89uEPOTE+shhQlJu0b3tIdKMvwM88=
X-Gm-Gg: ASbGncs1go2SzgU8mHfg+Vgh1BQGNdpZqIAoEVuM259CBt6/hjlXS08k108VWsq6JM3
	x9fRKAqLUaVZZxjYgotRNME3XovvqeXNMW3g5ANE7eT9sXo0a17llDH+4nd8ZNdUUo/VaK9niom
	QspmjvUfghPataFnE5e74g9CwB7hu2rozf3jmWXqcNEjaluieQgexKP2QYFZ0aqPwh+NtjjRsxg
	uKDqN9eqt2dZpq9eLjmEe+ZRm6DAoavA1eCjns/+BSVQhhIJ9u8kho/UQxmu+5gIv66DFFbSeYT
	MF+nyiELzX3P/L2DjvcSTQMnNs9dt3h0X/hB/icz25C0Kjsf/0KABhFrvrwY6kSyzeAvYjsEWmS
	nVcCkAQ==
X-Google-Smtp-Source: AGHT+IEOHs/ggD9ekbq8Mt/oGjuToBiu/aq901Ne4MqUwh5GjjUsqmuKg0uvV17mLepWLhRrNwcWHw==
X-Received: by 2002:a05:6512:3ca5:b0:545:381:70a with SMTP id 2adb3069b0e04-54838ee8ae6mr5302777e87.15.1740404733603;
        Mon, 24 Feb 2025 05:45:33 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5452eda31acsm2966821e87.119.2025.02.24.05.45.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2025 05:45:32 -0800 (PST)
Date: Mon, 24 Feb 2025 15:45:30 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
Cc: George Moussalem <george.moussalem@outlook.com>, 
	linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	amitk@kernel.org, thara.gopinath@gmail.com, robh@kernel.org, krzk+dt@kernel.org, 
	quic_srichara@quicinc.com
Subject: Re: [PATCH v6 3/5] thermal: drivers: qcom: Add new feat for soc
 without rpm
Message-ID: <n7twid3k2ykwjviidngxnl3tdy27uxx6uhfh6hj2tpztufagwn@6zd7vre6dnqt>
References: <20250224061224.3342-1-george.moussalem@outlook.com>
 <DS7PR19MB88837D7AE30CE306B8F71F3E9DC02@DS7PR19MB8883.namprd19.prod.outlook.com>
 <be872be1-dd0a-481b-abe0-57ed2bf50c22@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <be872be1-dd0a-481b-abe0-57ed2bf50c22@quicinc.com>

On Mon, Feb 24, 2025 at 02:38:24PM +0530, Manikanta Mylavarapu wrote:
> 
> 
> On 2/24/2025 11:42 AM, George Moussalem wrote:
> > From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> > 
> > In IPQ5018, Tsens IP doesn't have RPM. Hence the early init to
> > enable tsens would not be done. So add a flag for that in feat
> > and skip enable checks. Without this, tsens probe fails.
> > 
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> > Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> > ---
> >  drivers/thermal/qcom/tsens.c | 2 +-
> >  drivers/thermal/qcom/tsens.h | 3 +++
> >  2 files changed, 4 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/thermal/qcom/tsens.c b/drivers/thermal/qcom/tsens.c
> > index 3aa3736181aa..a25ca17adf1a 100644
> > --- a/drivers/thermal/qcom/tsens.c
> > +++ b/drivers/thermal/qcom/tsens.c
> > @@ -975,7 +975,7 @@ int __init init_common(struct tsens_priv *priv)
> >  	ret = regmap_field_read(priv->rf[TSENS_EN], &enabled);
> >  	if (ret)
> >  		goto err_put_device;
> > -	if (!enabled) {
> > +	if (!enabled && !(priv->feat->ignore_enable)) {
> 
> Please drop 'ignore_enable' and use 'VER_2_X_NO_RPM' instead.

It is not possible, since IPQ5018 is 1.x. But I agree, a similar concept
should be used.

> 
> >  		dev_err(dev, "%s: device not enabled\n", __func__);
> >  		ret = -ENODEV;
> >  		goto err_put_device;

-- 
With best wishes
Dmitry

