Return-Path: <devicetree+bounces-97915-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B29B9641ED
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 12:34:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A97D31C24A1E
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 10:34:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 980CD1ABEAD;
	Thu, 29 Aug 2024 10:24:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Y8PaUcA5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C8ED1A76CA
	for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 10:24:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724927088; cv=none; b=moakaAbhDpgZfv7yEW+c98zE7jxhOhWsYfw/64mcZmObAxcqOz9LRvB9Oqn3pOUsbc8PqnbLxtP5/qvzwV+6E/oakpOEm2wsGscksA1+UbSLD1/2cPi4+Y+usrQD7F4SOP6+GzqontPkocLn/cdGpsZltuDU8yaPITwtgNxWgt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724927088; c=relaxed/simple;
	bh=85nAiCVJwW62QrE2b6r88lCjF1lPmNgCQtLklbdsK4k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YWXGhY+uQsYujfBkQiPhWbjaXI0kMANebX8pwy1xEpbbL1M02KWPNQPMOkWHhgf3S1xWLuzFPU/ZWcYdEJdn6yzlxDoRQK/x7Xbwp5csHsyFzoHHQzYkWJB7hrEsF1innIzviIcuKyUpI35MTqwF4da9ZG1dBpasNmoCo+GG3FU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Y8PaUcA5; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2f4f2868621so5766491fa.0
        for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 03:24:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724927083; x=1725531883; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SZ/w73AaDcXnHgRTfa/18n3sPpKrgC+SUsJfs6EyD5I=;
        b=Y8PaUcA5moJt9cLegY3MzGmNXt1jn6nP/fptdePOHLYDlWP6mMxUeIx5LnjFiLLdS8
         D88yl3TiB9vksXbY+bWWnffkYyMTWdFrhdGSLCAt0jgrfcH6rFKi8xxX0ToDmWYh89xk
         vEVuH8zsnBDO1I52+38E2Ku8T73NuiBea3fzs4OiFe4WCzL7eOpHshFx2rPnRNLfjXvW
         Q6OdkOjERhVTzj21EyU/BuT0TKL77Ndpa6AVDjx1uq8l87yNiQDkPxmScIxb2EbQDT2N
         QzrAWHEmZnLileDmOAHppoJGLUR3Qq25xsWQYrqUABeBARydWIzyugts+PuZczmzxQL6
         /hAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724927083; x=1725531883;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SZ/w73AaDcXnHgRTfa/18n3sPpKrgC+SUsJfs6EyD5I=;
        b=h1OVxwNIGyYezaxxmQV2ECkQgmiwsaWQysuo20wEPLuAEfcDK6/UN3Qnb2rv/03313
         SkxqXY3ReOxEBJrkLEYeEq7aqeFLTJa/ugVyDBddc9Zrj8NSxsc3CoyJLdqabjy60pmN
         kmx4WPTvdHYuQHMX5vkbXYtuVNarSe/W0SEVCKfavUOCeGFjp4042Ug9xRkKSLAYzJG1
         aFZ1jIYMLeVvdCiyIyywcCR0Q0ShEv/yWT1CFDzYLmRLi3i76nKlhWOrlmZuNyqp2RBS
         7o4wEjYUakE3dVSgHRhk9lPK4dDjUQyhGeh3Gt4QCZN+8UYgaW7XdD3dJ1qU4YtNiTMu
         haPA==
X-Forwarded-Encrypted: i=1; AJvYcCX0rX/7sZLaamq+HIiS+00JxxJpyQdquerYlWHPlFBuMs5p7C3LxiVk7sepK4o/ZAYF4UTgqt3VMhv0@vger.kernel.org
X-Gm-Message-State: AOJu0Yy900PAJf7TXSbzN2OtxozIU5sfotBNqGaEEg3077QiZHrdGsL6
	Wth/BsKk1VYooJYhfOPaRJZx//dtwIZq0bIDPVy/GEMXH/ajPDNUpbjSJitGcv8=
X-Google-Smtp-Source: AGHT+IFvU8hzzwqySK6Z6GUIQ8oD4NTRyF61j/91mZyR2mOx6xG0K5M+rBICRiQtcdWNMlY5YDmVng==
X-Received: by 2002:a05:6512:b0b:b0:533:3fc8:88b1 with SMTP id 2adb3069b0e04-5353e5bf859mr1504710e87.54.1724927082870;
        Thu, 29 Aug 2024 03:24:42 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53540840f44sm117424e87.202.2024.08.29.03.24.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2024 03:24:42 -0700 (PDT)
Date: Thu, 29 Aug 2024 13:24:40 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: andersson@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org, 
	catalin.marinas@arm.com, will@kernel.org, djakov@kernel.org, richardcochran@gmail.com, 
	geert+renesas@glider.be, neil.armstrong@linaro.org, arnd@arndb.de, 
	nfraprado@collabora.com, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org, netdev@vger.kernel.org
Subject: Re: [PATCH v5 5/8] clk: qcom: ipq5332: Add couple of more
 interconnects
Message-ID: <kscjtfse3rkdg2sp2uzxiueadf5l66g253vrahfir364yk57lv@jbk4qfbricxx>
References: <20240829082830.56959-1-quic_varada@quicinc.com>
 <20240829082830.56959-6-quic_varada@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240829082830.56959-6-quic_varada@quicinc.com>

On Thu, Aug 29, 2024 at 01:58:27PM GMT, Varadarajan Narayanan wrote:
> Update the GCC master/slave list to include couple of
> more interfaces needed by the Network Subsystem Clock
> Controller (NSSCC)
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  drivers/clk/qcom/gcc-ipq5332.c | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

