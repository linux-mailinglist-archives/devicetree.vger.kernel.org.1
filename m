Return-Path: <devicetree+bounces-217316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A5689B57539
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 11:48:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 070771888AB4
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 09:49:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 136612FABE6;
	Mon, 15 Sep 2025 09:48:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="f4LuR0YO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com [209.85.218.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 084312857E6
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 09:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757929718; cv=none; b=IekkKxBoohjSnHGmlWt9PCaAiaf7mNolt9k99yW/3Lw+a4K7OSWyPJVxD0jipE0Fqem7NPhzzbTzxDEKxFn+mwzUXuAK0waPT+mV0S2UrQhtAmi3kcbNizUOoBtHBpLjksSq9mRl9pFlrUCW43SQfDG9LpJ2AG1c+yJR2Nc93jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757929718; c=relaxed/simple;
	bh=/LYSOpOOPqvNcXEEZn5XwCOqw0wWb07v6/+f7MdgBos=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rCji6fHi8sExSL6k8Gn5c0LmLprLmh6DolI2DMzLeKE+LAMbYGTFUtJJQ295Tz3v69dqY5oZP30Tv7PCtsTxyNIhTjx12msz9lf9rauO3bZoteILc5YnVWkfmpAI8LJZVLvRKtqVM89oDyPNiVaDiTHqkpGGHzzCs5ms/9M3d+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=f4LuR0YO; arc=none smtp.client-ip=209.85.218.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f67.google.com with SMTP id a640c23a62f3a-afcb7322da8so28614966b.0
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 02:48:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757929713; x=1758534513; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fGusVWyXCqe6ZR64zsDRe9g6dv6szqe6e9/gXZqBwGw=;
        b=f4LuR0YO7vpmUv708BOaG0ruD191kjv3oOC9g7Zqr+w7AOuwrbBhxohMys+MjIP9ok
         TRfGr/sOvanku/o7em1flBmtgpfoWNqY5sOTy/dNVapCsu0Hr+Ph0LNh7gJJaNa9Xrzk
         ZM5ioFO1kl/auUYaJGV+l+KJHl7Ost1cozUJnHhRcpSwUIQsdLZbtRH/4H70BFq4oWff
         v7u6RJen4atF8wIz/Yh1UIoKXARzT+xZ/dEfZfTv1QNbeweavsFqjhBV4r6KuLO2VaFl
         iunXrMgXAzFQ+wqnabUsHL4w0oynz0tfEEaoEF99131Gmh913EGkHjRknykKVWErJ7xW
         3Tdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757929713; x=1758534513;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fGusVWyXCqe6ZR64zsDRe9g6dv6szqe6e9/gXZqBwGw=;
        b=NPe0JZDo45B+jw+nD/8tzArx44lBtnZi7w285PYZIdVs8mKsu/Hy2E0wO7BSJRqSqb
         JqYl0hIXXfyD/34O+02Yhwpi2VQ5lO83iD5MbG0bbWq5E3sHs4v6dKWKY8NJqnQHRS0J
         VksLxEfk1JfrUc+sOivGTegGnJwWXiK6yKatHo9YA/E3gT8XnzloiS6aP588pyjzRb7x
         glTTVKKfeq0jNITmQEbz2BlZU/fSe143rNsRsQBuwP/7CiA38GpqQQFwgAKjZOnNuT1B
         x6izPVSu4NrnTfeFaYJFsk7Ml5C6YiyC0/eCbjL9H2SGvZzdy1e937A1thuENS3A59pL
         Xv3A==
X-Forwarded-Encrypted: i=1; AJvYcCXXlnSoRQ7Vqinehf74QND7bdYSMryQ0n+UCPNO1aOuUAUomF8oY5t8fHOqQ35DEohmJQy/5Hpvae9G@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7VLgACwOWhsrzLhuF2Lw5kHfkvvPGehMtjJrHDnp59XjB5WuC
	G05gvBKKfqwaSFbGQbKx8d9riTAAM4xNVxsaWIn5NRBs6Q7Oy6IUmMFjngwSjIsL+fY=
X-Gm-Gg: ASbGncvpbfEcx9rAPEoAIhpuWQsS/Q1HA6mVn9DHExitbjHw/NBMMN82DdDxhgz2xuY
	IOSNuQQNdGaEjjDcjELxkooXybaY0tNpyWxEBXFiomXAafjJ/wBQrtzI4Onw1Ni5tZE7GvwyBkI
	ylpLO0iBq02LCrKnids8fEPR1Pe1eVusRcQ1Fzbr7sa2+tltX27CpLc+GKZ10XFSEDykMhle4kI
	8IDa9mErGrGkSfmvoHd4tb5mJ1Qvn3kI103biuliPpAfGoa8O8/ViNCYBscqdU0Xe0QDAJdstxI
	LXj/TlqD5/85+lYnbsnxWSCDuRS/9+g/YY3FMl2Z8B3YkXcgrpAFlcLiXAkTSxYj/3SNLB5UmCg
	dpc2HfumQnitRWkZTnjdnOvzd+fLmxE01PYIdMySXQf0=
X-Google-Smtp-Source: AGHT+IF+NlznyOGggwQj3KyFsitg1+o/PgvLt2K+8mej1rfCe1KkaHTdY/LMOod7hUMEDatMyfUGkw==
X-Received: by 2002:a17:907:3c8e:b0:b04:6412:95ec with SMTP id a640c23a62f3a-b07c3554da5mr1217317266b.10.1757929713359;
        Mon, 15 Sep 2025 02:48:33 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff21:30:ab20:75dc:ab3e:bbb9])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b3333e81sm915322866b.94.2025.09.15.02.48.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 02:48:32 -0700 (PDT)
Date: Mon, 15 Sep 2025 11:48:28 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
Cc: Sebastian Reichel <sre@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Subbaraman Narayanamurthy <subbaraman.narayanamurthy@oss.qualcomm.com>,
	David Collins <david.collins@oss.qualcomm.com>,
	=?iso-8859-1?Q?Gy=F6rgy?= Kurucz <me@kuruczgy.com>,
	linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, kernel@oss.qualcomm.com,
	devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 5/8] power: supply: qcom_battmgr: update compats for
 SM8550 and X1E80100
Message-ID: <aMfg7O2qmpKCiq18@linaro.org>
References: <20250915-qcom_battmgr_update-v4-0-6f6464a41afe@oss.qualcomm.com>
 <20250915-qcom_battmgr_update-v4-5-6f6464a41afe@oss.qualcomm.com>
 <aMfWKobwM5bhJEAd@linaro.org>
 <3559cbe4-b2e2-42d4-85ad-554258fc9dec@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3559cbe4-b2e2-42d4-85ad-554258fc9dec@oss.qualcomm.com>

On Mon, Sep 15, 2025 at 05:44:40PM +0800, Fenglin Wu wrote:
> 
> On 9/15/2025 5:02 PM, Stephan Gerhold wrote:
> > On Mon, Sep 15, 2025 at 04:49:57PM +0800, Fenglin Wu via B4 Relay wrote:
> > > From: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
> > > 
> > > Add variant definitions for SM8550 and X1E80100 platforms. Add a compat
> > > for SM8550 and update match data for X1E80100 specifically so that they
> > > could be handled differently in supporting charge control functionality.
> > > 
> > > Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on Thinkpad T14S OLED
> > > Signed-off-by: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
> > > ---
> > >   drivers/power/supply/qcom_battmgr.c | 7 +++++--
> > >   1 file changed, 5 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/power/supply/qcom_battmgr.c b/drivers/power/supply/qcom_battmgr.c
> > > index 008e241e3eac3574a78459a2256e006e48c9f508..174d3f83ac2b070bb90c21a498686e91cc629ebe 100644
> > > --- a/drivers/power/supply/qcom_battmgr.c
> > > +++ b/drivers/power/supply/qcom_battmgr.c
> > > @@ -19,8 +19,10 @@
> > >   #define BATTMGR_STRING_LEN	128
> > >   enum qcom_battmgr_variant {
> > > -	QCOM_BATTMGR_SM8350,
> > >   	QCOM_BATTMGR_SC8280XP,
> > > +	QCOM_BATTMGR_SM8350,
> > > +	QCOM_BATTMGR_SM8550,
> > > +	QCOM_BATTMGR_X1E80100,
> > >   };
> > >   #define BATTMGR_BAT_STATUS		0x1
> > > @@ -1333,7 +1335,8 @@ static void qcom_battmgr_pdr_notify(void *priv, int state)
> > >   static const struct of_device_id qcom_battmgr_of_variants[] = {
> > >   	{ .compatible = "qcom,sc8180x-pmic-glink", .data = (void *)QCOM_BATTMGR_SC8280XP },
> > >   	{ .compatible = "qcom,sc8280xp-pmic-glink", .data = (void *)QCOM_BATTMGR_SC8280XP },
> > > -	{ .compatible = "qcom,x1e80100-pmic-glink", .data = (void *)QCOM_BATTMGR_SC8280XP },
> > > +	{ .compatible = "qcom,sm8550-pmic-glink", .data = (void *)QCOM_BATTMGR_SM8550 },
> > > +	{ .compatible = "qcom,x1e80100-pmic-glink", .data = (void *)QCOM_BATTMGR_X1E80100 },
> > >   	/* Unmatched devices falls back to QCOM_BATTMGR_SM8350 */
> > >   	{}
> > >   };
> > I think you need to squash this with "[PATCH 7/8] power: supply:
> > qcom_battmgr: Add charge control support", or move the modified checks
> > for
> > 
> > 	if (battmgr->variant == QCOM_BATTMGR_SC8280XP ||
> > 	    battmgr->variant == QCOM_BATTMGR_X1E80100) {
> > 
> > into this patch.
> > 
> > With this patch right now, I would expect that your series is not
> > bisectable: The wrong code paths are chosen if you only apply this patch
> > because e.g. X1E doesn't use the QCOM_BATTMGR_SC8280XP code anymore.
> > 
> > Thanks,
> > Stephan
> 
> I see.
> 
> I was making it this way to address the review comment from Bryan in patch
> v2 about separating the compats change. See here:
> https://lore.kernel.org/all/7f001134-e099-492d-8ce5-4122d83a3de3@linaro.org/
> 
> If I revise it according to your 2nd suggestion, would it conflict with
> Bryan's feedback?
> 

I would expect that Bryan had my second suggestion in mind - separating
the refactoring (without functional change) from the new feature
addition.

You need to add the new cases to the if statements in this patch, or you
will (temporarily) change and break functionality.

Thanks,
Stephan

