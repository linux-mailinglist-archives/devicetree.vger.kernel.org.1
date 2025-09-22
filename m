Return-Path: <devicetree+bounces-220137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F143B9224E
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 18:11:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D63D74E048D
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 16:11:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B118E30DD23;
	Mon, 22 Sep 2025 16:11:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MKtazzxM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1DD305E10
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 16:11:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758557486; cv=none; b=BOc5LXyuwOISd0lRlcXAiwjkEz2BuyFg7d5vHt4CRogPYItzW9qe9TWKojI52grhzeCRNW3eVnOlHseNy/gktvQAdsxf1L9gX4NXDdA3/2TV8sSBLl8I4c+7ocR15sNmXaEMVJoD0QFCJrdhElc3p/4fydUq8Z/KJw7UIfZbm9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758557486; c=relaxed/simple;
	bh=lbCZuCRT4lMk8VwiDJS9qwmYIpPm3rZqFqTsl8NKnl8=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=MkY7hzbJOG7WOoRmOm4AxIxM2kR3UHKU/DB6xXLRlPrqy9FPme5t2ca+4QcZdLCeGvKZqEvbhHL3UBAK0nee/gF9MpKMHVFpoCD59NWRgx75B0mCl7N/s1OMoBSp6qZaR1a+E1sM+UH1hGlLZfSt9HZgQxjqD7Y38iAkIAyoErU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MKtazzxM; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-46b7580f09eso10095115e9.2
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 09:11:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758557483; x=1759162283; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DEnMMyTPzSbYjCuENNMIPA0pMqJ+aV1qFH9XDih+9hQ=;
        b=MKtazzxMb+2vnyYCRb70bDr9du3wy8gFEVOiHdNyCR7NJ2afU47JsDbZ8SgS5HDp0j
         m2xcIhH/c2L7DL8U5gVmYevV053mZDRNr8YEcRUlZsdt6rxuvNyYMto07vRb5Yi84trq
         4VRAEElrTKr8leOoL9Cpjes5ifbtwahAk9hbbq5Z6GX0sEiNuLBZuNKhShr6Ugg07yQZ
         OVRQ7iZTVZbt7YQsIHGRn1Kz51azyFCwpCYYhArohSAzsn8s/vRI7S488USpaCfcIpiD
         r1N4sCAQzcrElcPhhfYFdU+BXYBCYQiSxV5qk20aREPLdH5jJVNQ//qOjCMcuD6N1BPI
         jTGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758557483; x=1759162283;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DEnMMyTPzSbYjCuENNMIPA0pMqJ+aV1qFH9XDih+9hQ=;
        b=wmlzj9WUXOVFOZ3G22p0nSoGPdRcZj3eO5SCdYVkn5vWwBb6EUiXnFqgCKvw4yilRw
         K7iFylKto3qEvf8covndnhdlhvFrZtyL0VtJRiO4E5QTtOG1NDEUz+b+ySbhWxtZc8Bp
         93OTjHO7+x12lgXLVnX/WYmCiN1BjI9N5gdxpZGgHpVbCIDTQGLGnvjjOVyQcHouscdI
         zZnvMFxxdNKpKBEXq4RnCWsuNlEIi4XfLgr7q9WA72bNLyZtvteHiHaMyo5XkFwxZpCd
         fcdB6RK6iIWfrOFPPPgJQUvc2XwsDs/COz9BPcS2QxGm5PY5K68/w3FY4IeV05xQPTzD
         b13g==
X-Forwarded-Encrypted: i=1; AJvYcCUOzS3VbUzpXCK/BjbtD5rfD/9ZNDGob7CZeFLUgAG4vjlSUHBg1ttoHSOMPhw4Uam6dd38pa1a5Ik3@vger.kernel.org
X-Gm-Message-State: AOJu0YwTNTUJC3MHhxxRMODEhU0018S2I57KqZbQrSGrIRJpWLSN12zI
	3J63tPvaVJSGDOtlwzUUmR3dOER4lLnYRHPq0NSb/vw858XVBC6yV+wK
X-Gm-Gg: ASbGncuCvm5hFnTslhNoKe7W+qSnS5Jo38yGWMXAXAKlu7FsQOPWp+9VjUMxZ0omvHF
	Y60fGoyIONemT5TsnMh8jUFH9XmxlwlYy4NDxV+lTxQOOqoKtiENAGJ5+LHcnZtgWBzfd0MsUpf
	YyGmaHopjVojYU9TEleA8t6DpWEzreHyoiuCJwS3MxFAwPJSYtOB9/lAlEYF5wPlEb0uqCD7syH
	zhKGGdtzobxouA8ED/36CvklXl5/7xkeB8Bg4GfNgo4u+RWGjdmEzO1zXMIxfJl7txslAvlfwYD
	iWlV5JJAamWFS0IGkCEqVMWACZpCVHUqTnbin1SIY4lAUBmUhYM4t9MvhdUTX1D5N1givyB9Koy
	++atX4Pbqt5fFhmZFlinVjv8OY3PG+2fcEp8ID+LQ1XMkUQBCbJWu3v3fOFjWGV/IBFqNxL9IZB
	nwQVoLwA==
X-Google-Smtp-Source: AGHT+IGdiz7k8V0AhAdxhfd+pKps/rRfo1454RdG9IyhVYMPnmXBEYKoLxSXpCioAD2M8iGpREQWoQ==
X-Received: by 2002:a05:600c:3b20:b0:45b:9912:9f30 with SMTP id 5b1f17b1804b1-467ead6730bmr108706325e9.6.1758557482842;
        Mon, 22 Sep 2025 09:11:22 -0700 (PDT)
Received: from Lord-Beerus (net-93-70-53-177.cust.vodafonedsl.it. [93.70.53.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46de4d67625sm31370685e9.16.2025.09.22.09.11.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 09:11:22 -0700 (PDT)
Date: Mon, 22 Sep 2025 18:11:20 +0200
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
	imx@lists.linux.dev
Subject: [RFC] arm64: dts: freescale: imx93-var-som: Align dts adding missing
 components
Message-ID: <aNF1KOCs0eHL1Njb@Lord-Beerus>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi all,

the current device tree for the i.MX93 VAR-SOM is incomplete. 
In particular, several peripherals that are present on the hardware 
are not yet described, such as:

  - audio codec
  - PMIC
  - WiFi + Bluetooth module

My plan is to align the DTS with the actual hardware by adding these 
missing nodes.

Before preparing the patches, I would like to ask for your advice:  
should I send one patch that performs the full DTS alignment (describing the 
patch as an alignemnt of the dts with the actual hardware), or would 
you prefer a patch series with one patch per peripheral (e.g. one for 
codec, one for PMIC, one for WiFi/BT, etc.)?

I will do the same with the other Variscite SOMs and Carrier Boards

Thanks for your guidance.

Best regards,
Stefano

