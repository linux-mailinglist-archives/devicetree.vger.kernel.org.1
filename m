Return-Path: <devicetree+bounces-217289-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EC60DB57411
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 11:07:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 39C84173C4C
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 09:06:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 859AF2F5468;
	Mon, 15 Sep 2025 09:02:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eg1VOmR7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D1DF2F5462
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 09:02:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757926970; cv=none; b=Az3VNYmnf+ZPdc+KplIz7M8TggmEHXFIEIL7hi36606Y74OxLeNrPNkivF4OQaegvAL0SxeVNMhLwbTiLja+rn3yjdWqo7qd7Dx//BSwNijVc3ugtRoocXHi0b9ZanFxM6cFM0FTrMFXLR05NHuGSoSe/Ss0bYkbcs6y27zdN5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757926970; c=relaxed/simple;
	bh=C0YkUmrHajMk+TIUliZWVchR3y+Q8yUcd/+iydBLkn4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=R/bHwc109DtheuPJeFY5JKDWqhiXCZ+40gnmjdHeTR3TaT6FDoTKiy4G9UsaZkuzZEjncU5ToPg+xLcFzvXKczYzlsbgReJwZrDMiEAokphafa5M6pJXCOJ8kjQwOd4xSrjTO8VKmXE0e8eG3pI31jtGNfE3kiYzijqyQ1ETaag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eg1VOmR7; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b042cc39551so658672066b.0
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 02:02:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757926966; x=1758531766; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4ApShfXQF2Oi6G8dmAOghgnsvmVSLzQLwz5wXFZQiKw=;
        b=eg1VOmR7zShmn+hHiqoCSBy9ccujENIgSGAfLe204EOGU+XnJDTA3uYY8umymARXlN
         mJiY1n1EO+fP2t/Yv9+0vIPcSgNHdjRCF0a9bbhCFjuDH4rhR1sWlo30kRcfOH/R0OOI
         ICqhmxH2Vt+03zkTpaeq9H2WkOO2S4PO2l3Y0MrGiBlSLkqn74zgfRTD9/M6DEXBNfmT
         wEkZQ5AVpYlW77o1vaZxEo6SDDGHcAmb6wQ4JQ3BbUiWbFWqLJi7+KX48YYXrFQ8KKNL
         xEM3y9sv2DBW6OBq+2WGpC8ujzyJuGSMaN7LbOZ5S+PgKMdbuFfsqbIVQZS5XOptyuG3
         g7qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757926966; x=1758531766;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4ApShfXQF2Oi6G8dmAOghgnsvmVSLzQLwz5wXFZQiKw=;
        b=EH9pW00AY0dq1dLpa7ppk2EMPYnwUSGmY6GbNLLpPyInFFhEZKC8O/6QO0pMLEhX+N
         ahbTmKXWTPTdIdWBYtRH1dppKVTThDpjt3Hn+P6vOimGJTaleq/klVCuMhONaNQ5FUhq
         LXd3LxTPvC7iTt48ih+z9trX0Mbb9Mqz3+WWZOkS4E+TKgmQW8zNx/b0dZYaUQom+Ysa
         NWJvDPbwqp4/kqPZL8mkIkogLo7BtppJ8JCWrJud0tJICt7F3ZttHwguNMTVinmGmXaO
         1hPD/V3fRJDITwINwJsB3sPh6PlR4AJagGHgXyoYKF7TL6+nFw5Ctvcpfj/UmOcMW7sZ
         R/qA==
X-Forwarded-Encrypted: i=1; AJvYcCUItTZDwgEKR2ZQiol5trp+9VWL5MKgmkaLDsN6N2LbWRpbip118EOB1NXvAptyGv4FWh4Z2d+IsxCh@vger.kernel.org
X-Gm-Message-State: AOJu0Yyfui4fP5LAaAoP0NNJuBL5xo6X4kwaFFPiif8wbKTaN4ONhXXj
	/kyJSWKuCsRnOa3qvPvcvAlwGHcbGiVW5Iy8hKEo2WDbZEmA4tHSJls2fyX/fRxduNM=
X-Gm-Gg: ASbGncvxfTEGW7PeYJhzHRP62bnMdPJdn1lYRDB9ti1qoKiBcsgX3dfCXOeSfu9qjx6
	ee6uZf1MjJvLji+LAGRkU1otoERxjbIwASnYScPiPGPVpTV3RQUGhVYMilY51MH+gL/jKfQsvgq
	1RUdOsa82dtMArvUG5W/HmYjMH7nXhKy4IVXP7+1lDrPs5ul3LPceZxmATUuTudoxMueEdJ/oa+
	eyuI1T1Y/eVP0vYNq5V6ndNrYipqtIYFdWm38+6tyRmYUdH/XajXfUcQ+pyS+LXkNQttPl4cCrB
	JUnsnH/B8ng6N1cTYe9StOSA0G7CZ9rcfBvyAHbd+Jk97DitFhEE25i2+0RgB+8LCgdpKCc/mit
	2r9asJUWojg9Strq/POSdrosnzvqvPo/gdNIJkSVa/e0=
X-Google-Smtp-Source: AGHT+IFJqW4ATs8hpOqhKur7nNuySu2I9qWO2KqW58kjbzZTek7UpaV471VVvj9InZNl3XX07WRoUQ==
X-Received: by 2002:a17:907:86a0:b0:afc:a190:848a with SMTP id a640c23a62f3a-b07c3a78fb9mr1146716866b.60.1757926965242;
        Mon, 15 Sep 2025 02:02:45 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff21:30:ab20:75dc:ab3e:bbb9])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07d2870da1sm574403366b.13.2025.09.15.02.02.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 02:02:44 -0700 (PDT)
Date: Mon, 15 Sep 2025 11:02:34 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: fenglin.wu@oss.qualcomm.com
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
Message-ID: <aMfWKobwM5bhJEAd@linaro.org>
References: <20250915-qcom_battmgr_update-v4-0-6f6464a41afe@oss.qualcomm.com>
 <20250915-qcom_battmgr_update-v4-5-6f6464a41afe@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250915-qcom_battmgr_update-v4-5-6f6464a41afe@oss.qualcomm.com>

On Mon, Sep 15, 2025 at 04:49:57PM +0800, Fenglin Wu via B4 Relay wrote:
> From: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
> 
> Add variant definitions for SM8550 and X1E80100 platforms. Add a compat
> for SM8550 and update match data for X1E80100 specifically so that they
> could be handled differently in supporting charge control functionality.
> 
> Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on Thinkpad T14S OLED
> Signed-off-by: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
> ---
>  drivers/power/supply/qcom_battmgr.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/power/supply/qcom_battmgr.c b/drivers/power/supply/qcom_battmgr.c
> index 008e241e3eac3574a78459a2256e006e48c9f508..174d3f83ac2b070bb90c21a498686e91cc629ebe 100644
> --- a/drivers/power/supply/qcom_battmgr.c
> +++ b/drivers/power/supply/qcom_battmgr.c
> @@ -19,8 +19,10 @@
>  #define BATTMGR_STRING_LEN	128
>  
>  enum qcom_battmgr_variant {
> -	QCOM_BATTMGR_SM8350,
>  	QCOM_BATTMGR_SC8280XP,
> +	QCOM_BATTMGR_SM8350,
> +	QCOM_BATTMGR_SM8550,
> +	QCOM_BATTMGR_X1E80100,
>  };
>  
>  #define BATTMGR_BAT_STATUS		0x1
> @@ -1333,7 +1335,8 @@ static void qcom_battmgr_pdr_notify(void *priv, int state)
>  static const struct of_device_id qcom_battmgr_of_variants[] = {
>  	{ .compatible = "qcom,sc8180x-pmic-glink", .data = (void *)QCOM_BATTMGR_SC8280XP },
>  	{ .compatible = "qcom,sc8280xp-pmic-glink", .data = (void *)QCOM_BATTMGR_SC8280XP },
> -	{ .compatible = "qcom,x1e80100-pmic-glink", .data = (void *)QCOM_BATTMGR_SC8280XP },
> +	{ .compatible = "qcom,sm8550-pmic-glink", .data = (void *)QCOM_BATTMGR_SM8550 },
> +	{ .compatible = "qcom,x1e80100-pmic-glink", .data = (void *)QCOM_BATTMGR_X1E80100 },
>  	/* Unmatched devices falls back to QCOM_BATTMGR_SM8350 */
>  	{}
>  };

I think you need to squash this with "[PATCH 7/8] power: supply:
qcom_battmgr: Add charge control support", or move the modified checks
for

	if (battmgr->variant == QCOM_BATTMGR_SC8280XP ||
	    battmgr->variant == QCOM_BATTMGR_X1E80100) {

into this patch.

With this patch right now, I would expect that your series is not
bisectable: The wrong code paths are chosen if you only apply this patch
because e.g. X1E doesn't use the QCOM_BATTMGR_SC8280XP code anymore.

Thanks,
Stephan

