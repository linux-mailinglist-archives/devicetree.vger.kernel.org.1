Return-Path: <devicetree+bounces-76493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D37190AA82
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 12:00:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DFD6428E730
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 10:00:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CD811946D1;
	Mon, 17 Jun 2024 09:59:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OYrawKlU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B77219408B
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 09:59:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718618399; cv=none; b=ShXfPJKSi7i596EdJpOhNBpxuvkKMuNbmrVRWDH9SfjGXVdHbJs3cTyyMAkqxBGNyCuD3oAos1YhuFZWMaczww6il/YGMytBFh05DFoIe4OUmSQfkFOVtGJxENcAMPqk4qZM3+nDokdkYntu4tDyyDTqJ4W85v/ubxSUnOlASJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718618399; c=relaxed/simple;
	bh=2N4at/r/PEeA+K1d6l6Y6JqSO1Kgzxy+VfdvEaQIRN0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uBVR5PlBtGcxJDDomjR+JiNQ6IMp+vEXZBtIdF79jzcCgyjDxnz2757mNS5d340f4usrImZ2TSFhbEoyKzR6fZnPdQliKskDyxUE3GqifXTEG5sm9uvRY+FTYG+XSvLWMxr3tV1JgmNeS3TsQ2CdJnFaqH/kuZAdzkBVltmLtEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OYrawKlU; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-52c85a7f834so5403301e87.0
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 02:59:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718618396; x=1719223196; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=w6mDZyXxGUWK4+/DvvGnt5R2A+ndNSGgPh+p/M4hqI0=;
        b=OYrawKlUUeIkxHfWAMa0OyHGIhriWXJjhX9CSL8uk1AmPkcN2slksl/LgcGUtoRSL+
         lYveUF9mKN72NV4sVEUW7zodFcDcpTv3t7YreDu7nDLsnui/NcQnI/WE/JLb4PfP/TjD
         A0mausyjY6A3vuRBES7TtTi3qI4+WaThAeeUKZdu+tCF6d8L1NxXJu1V49282EaZQ7/d
         jPwonRyi8zghDTlyg3So0ZWLJmhjjB/gNu7n3w+IuDzPXlMPhZ9dmX8oHHCqhBIdukVF
         S/w3IPwSZLwE+WVZlXaSX8qA4Ey1Vn+tNzFg6+nHnnDboUeqEzHrVuK4M/p0NBirxImT
         fBxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718618396; x=1719223196;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w6mDZyXxGUWK4+/DvvGnt5R2A+ndNSGgPh+p/M4hqI0=;
        b=s6sl3I2DzlWOu987/Mbezx+eOJE1F2HWlDWngwkKZk+0CrMGxc2KEpOVV6X4JQJNT7
         F3emfLC+JE2b6phh6fEm2VuUr+lPxTWrjAzMB8/9Aier86bxxv3ZVU0yiWBqyJGzenP9
         MAUOHmOU5LVcT7u2J00QAdOWqhFJDHu2xc6XVn6//GYUKJweApsFYPTzZ+uM80MLjrmG
         /EZnARl/1Lb+NN0pDSS9z+RzkVRaeS4jiwG1wl6omIh/OfLVvV3RlkBD2uCCLRFCbJyJ
         1HusqP6v4LEST0TINbmFQO6XMdEIxNDdr6pTF83all6r22lTycQTp91sI+ISfd3q0Ea8
         XBww==
X-Forwarded-Encrypted: i=1; AJvYcCW3n/eodqbKHDE/UBp8LYpGP9Jgu9qqfXKRMM1bvuuIKlV47hfX/fwr53oZxqDg0qXbV+3I+CI+tDPtRck53y1sF0BXuwQ+04MVng==
X-Gm-Message-State: AOJu0Yx7ZHxZHBfDFlj5+5BHSJf/Dy+QQSAYu51jff0PzYb+TYK7h96Q
	Yv/n5/NhZRGIdDrYeSDU4x7FWI9LYB/CNMoG+iGKnKB4VCSuictEZnlowkBL2BY=
X-Google-Smtp-Source: AGHT+IEtJa+bfhMzAScFHBa5OpVDCnoBy0AhQnI6ujSC8tI2aUwTMvw0ISSpUeCJzbVA8VjiiQE0NQ==
X-Received: by 2002:a05:6512:280d:b0:52b:82d5:8fd2 with SMTP id 2adb3069b0e04-52ca6e90a19mr8035281e87.47.1718618395848;
        Mon, 17 Jun 2024 02:59:55 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca282f457sm1195097e87.91.2024.06.17.02.59.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 02:59:55 -0700 (PDT)
Date: Mon, 17 Jun 2024 12:59:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Neil Armstrong <neil.armstrong@linaro.org>, Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH v9 3/4] arm64: dts: qcom: sm8650-hdk: add the Wifi node
Message-ID: <6ev52bswy75qpti5dlgogdzvarsl2aph4qmgc526wfvngyhopo@yesllrhnn6kw>
References: <20240605122729.24283-1-brgl@bgdev.pl>
 <20240605122729.24283-4-brgl@bgdev.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240605122729.24283-4-brgl@bgdev.pl>

On Wed, Jun 05, 2024 at 02:27:28PM GMT, Bartosz Golaszewski wrote:
> From: Neil Armstrong <neil.armstrong@linaro.org>
> 
> Describe the ath12k WLAN on-board the WCN7850 module present on the
> board.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8650-HDK
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8650-hdk.dts | 89 +++++++++++++++++++++++++
>  1 file changed, 89 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

