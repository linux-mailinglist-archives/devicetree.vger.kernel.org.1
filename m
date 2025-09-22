Return-Path: <devicetree+bounces-220233-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF69B93425
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 22:47:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C60ED165D64
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 20:47:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C040B24C676;
	Mon, 22 Sep 2025 20:47:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dSaedKNm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160C178F51
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 20:47:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758574044; cv=none; b=ox0m4shjrnBvbGfCV3a9MUHJ1s6Azu/xpqMvgxU8tM0adOizFo/72aYLL1m6NY7gOsaAf1MI8Uhn0+LwpMSGsuEYvsVYGnqHXwRx+SxRC2XrGHxG/1moPlCBroI/M3xJHZgljWOaOJQPzsIjTMqv8qQRx9V9f3T6mxuL7esm7jM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758574044; c=relaxed/simple;
	bh=yaYM25E2I7kWwhhZKj7Y6d0J3R4l+LJDu3rAVcZ7Tww=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SK+C2WHwEFh0Pl6yW3p3q/aCP1dWW8ybrYXM8Jz1MurR1HXJOesg/ZinMzpcF/RcD1RyLBr8esU8wJkzzuMu9D4jP60XN7UqO4ilIFmWhs0KK/RAd9DAb8GCcOQvMpk4JiP6MJP1g4um6fTKTmKTfOYUUI0GRMKeV5gvS9yYqQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dSaedKNm; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-45ddc7d5731so33721195e9.1
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 13:47:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758574041; x=1759178841; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PfSwXekC6IkZ+kGhNkKolv5g+HvkF8QkaHCWr3SNIrM=;
        b=dSaedKNmy+adUgX4NBPbYFZpAPpP5p9Mn8bmsMAWzVm9yPmtiSnPJ+1N0Xnhp7yTjb
         1ME+0/dJ1J0oR0q0lsn3YLjQ/3z6lW127swFQWD3zRa7a5NjtV8AEnypYKenwk9fcAsm
         dxjyvHCwC5PzidZByeyGeE2MVGeBt/HnTwpLq2pZrOr+9DMwNrxCmFJ2M669j0995Di8
         myFrsQltrDhpWWAp1VesbxGVFU/cY8+N/cpCDDOq/+XcQpib23urS9W+TSQpiHQNi+/G
         +orYWBBqlUPM+2zYwtt3ySuBmvm1HnUIXzrRXIHDED95yxBcDJVUx/ve0/4pxsGjB4iI
         /WiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758574041; x=1759178841;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PfSwXekC6IkZ+kGhNkKolv5g+HvkF8QkaHCWr3SNIrM=;
        b=dZEk1PpngahJxnOARgshMH6tmpnkiX1tA605i5g5hOBlys08Yeivpf2aEDzJd5CZt2
         VZJPpZLdMRQY4OxKVlMt1cibbUUWBCYPVznW2q5jzoJRfMQNfvFO9/6yocRuC6Re4dd2
         P7+t5Tdbpj91Gjcc+HKur4NMcws2EoRfHs5J1VkjQ8QGOL42jjPVm9aZhs9xAtfD8x/6
         9jexZ+40sdri/YIfqnFsapo7yhJScLwnrMxoKlR7vhGOk5tgwxAhkYL2J7robOnxGAPa
         0qd5FtgRbcbw9mHt0gUr1ua3tkP+XG5CvuzoqicCLs1IvXlGsFe4PCA6EEYVYGv0bdRA
         G1kw==
X-Forwarded-Encrypted: i=1; AJvYcCXQuryrlqOalEhXL07G/GcfoeALDbsTNryVsRVvJTdd7YiAy/9qkFwEDIDoQJGuKPLwKb48pLdxwQz1@vger.kernel.org
X-Gm-Message-State: AOJu0YyH1vVF4wuOiwnXhdq5NlMF0AWANXh2VeDi7MG2EI5N9p4Z2DNz
	NDOZpI3xc4AhwSLR+Hklky1s0EX6pSZeNQ1OpY1ACV795BZTEMwdNfIR
X-Gm-Gg: ASbGncuUplMctWbL7Y3vVVs1mMORC2jL0lCDFIQ0tWpTefyxhqIDUFFfrL38R0zqz0j
	1gik2ytbr/cA5g24SsoyItSnwmEK6McEf4PxPFsqW1CxWfK8kclHRZnk2/o0euQhw3gMaTgl92E
	VoqHgu7DfPHs0/m7kggu6sA8g6TqzmeORPdlbBDa9EwXbdaWJSkCg53st0jpHnN7ESmOwD206/D
	IazEFhyDlMggMa8V9OJ/p0xgxj2dbPSgbw4KQKakgl9rwfehrnoTlIbzbPgOpGUvjvzd2JDb+Tq
	bVKc2qy6S67CawCjGia/71ape9+TJYgK9Jd9yBoilxzQvzf0EMe/buHOUrzlbs2L1bTXTPf93DM
	9Gm5ehvdKeeS3YNbaW54P/DHhDTbz5hJdFna6A/XtMTpb7rQlUxDiq9CmPW1sl4CyEtgmm8Mvbn
	aBaOjB1g==
X-Google-Smtp-Source: AGHT+IECCjDDAx3uDMYDGlfUfhS/ShZ0dPDY5PytWnVtywH6kn+8b3I6KI51B2Q05ThPYpKMFrKCwA==
X-Received: by 2002:a05:600c:1390:b0:45d:e28c:875a with SMTP id 5b1f17b1804b1-46e1dac98d2mr2034855e9.31.1758574041182;
        Mon, 22 Sep 2025 13:47:21 -0700 (PDT)
Received: from Lord-Beerus (net-93-70-53-177.cust.vodafonedsl.it. [93.70.53.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46de4d67625sm39840395e9.16.2025.09.22.13.47.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 13:47:20 -0700 (PDT)
Date: Mon, 22 Sep 2025 22:47:19 +0200
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
To: Fabio Estevam <festevam@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	devicetree@vger.kernel.org, imx@lists.linux.dev
Subject: Re: [RFC] arm64: dts: freescale: imx93-var-som: Align dts adding
 missing components
Message-ID: <aNG110oUmn4Ap7c4@Lord-Beerus>
References: <aNF1KOCs0eHL1Njb@Lord-Beerus>
 <CAOMZO5Ay87qRmWoCELRqCkfZtK+28bAe=0Lvwhzn3RCRKyjX=g@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAOMZO5Ay87qRmWoCELRqCkfZtK+28bAe=0Lvwhzn3RCRKyjX=g@mail.gmail.com>

Hi Fabio,

On Mon, Sep 22, 2025 at 05:43:15PM -0300, Fabio Estevam wrote:
> Hi Stefano,
> 
> On Mon, Sep 22, 2025 at 1:11 PM Stefano Radaelli
> <stefano.radaelli21@gmail.com> wrote:
> 
> > Before preparing the patches, I would like to ask for your advice:
> > should I send one patch that performs the full DTS alignment (describing the
> > patch as an alignemnt of the dts with the actual hardware), or would
> > you prefer a patch series with one patch per peripheral (e.g. one for
> > codec, one for PMIC, one for WiFi/BT, etc.)?
> 
> Sending a patch series with one patch per peripheral is preferred.

Great, thank you so much for the info!

Best Regards,
Stefano

