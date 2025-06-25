Return-Path: <devicetree+bounces-189524-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 96949AE81B6
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 13:42:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 18157169A52
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:41:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2C8D25D1FB;
	Wed, 25 Jun 2025 11:40:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Dr1Y25Xh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 916151E1C3F
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 11:40:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750851630; cv=none; b=FkjOQwPyOx/HiOiBoEQRy2u7nhOX2vvPPr8Lwpu7l9oqGFgweBWM7CE/JrCKpxufaw2TQjYuuk9vvJ0YY+egRgKdk3AkHAh1NXAKDRgqCPi5hNqeogihEA6NzXAGEIAVCYlKerl7JO9bJ5R6soVg202ljKoXVjg+0VwC/mbGln0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750851630; c=relaxed/simple;
	bh=DDsaWEyFeHz75TetdwbTXXC5BNl+pjLGrj08BQxMqQ4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jHmt9rXqNYHcYuAJdqP2ViRJDleFaohuSFzLD4qzSEve1R2uCgXpKSvtdJ5/v5lW4DM8pdqQ3gzQowrFNNWQemNdD5MnwajlwHZAfSyVQPOSjdPPdp/Y8jXmW5UhIcL4f36okpxZ3anun7FYVUJY+iiyhRaIUzUn0dc0ev8XK8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Dr1Y25Xh; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-ae0a420431bso372669066b.2
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 04:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750851626; x=1751456426; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5Ta2U+QcnogTft9XpE1aWdMlfFtTXMxtf8HD/ZE2i+8=;
        b=Dr1Y25Xh4kLGK9GU252HU3sBWF0eoR3UAXOGdTVYkh8TW/Wa358NEui8zxYj6wheqO
         j2coi9sUpACavpZe8+/uiwLo/fcKhrQ4rqO1UGuuWjgbBCFRphPRHXnQHA/+IsiAUhBt
         XNZe1LgqGjqxUP7Klt8iX3hk0vanKnRTx9C+aGF4LeOpmNHBpSfNIR1oAW6JRrytomUW
         xPyd8GdOiu0wW/03891BW6rvMy9b+wTKooK1xXvcO8uSru02IrAYlsZ+fedjlPubixK6
         75r/hx39rvcP7bSPy3lPu3GINvcB3m1EZni7hOMm7JsMXAdChAkiDKeIdibfZNHVzHtE
         3tjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750851626; x=1751456426;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5Ta2U+QcnogTft9XpE1aWdMlfFtTXMxtf8HD/ZE2i+8=;
        b=gzzyNJHaUXqGjCpPdWTDfsNmekFEnSe15d9hmmH+di+geeyNFkwEgMhQBU1NXOTapD
         spVpttjV5M9JCGTwvVaycpIRHPwbbiZ1DeYn72ND8pqdTlH1VULzLBUFi30RLyWyeGh7
         4BEcIAeEWl/JVCzGCrBwi6eCl3A96osszrNr1y7fJ4gne3KYcKO7Y8ORC9dlaKiCGTHs
         r0GSkW8tjDQldJdRQsUtkM+AGdrW7LIIMLWnZmugvIC/pB9LrshzWOIgMm7hD6jUj2Re
         yZseirEYzuyb7685k6VXRo195L2l5M84t5jhroD9Horj6hWxE07LWENv8x2YRplxDynE
         dfPw==
X-Forwarded-Encrypted: i=1; AJvYcCXJX/96X+zgiukh7MDgwDlJCWZUBAEVXGpGDj2I8b2IxOindRLKSI3HkmwrzToDIRvmcU7mGllUNkxu@vger.kernel.org
X-Gm-Message-State: AOJu0YxAESXyxglzZK7tHTdRlWBGb8K5wr07k5iPdeegNvgh5Fu76He4
	olmrTUEgZQ/oPMi7vy4fmzAgaC1UtPkBV9JWDLCbskycJ8cuN1Oc72pStV8+wKakVvk=
X-Gm-Gg: ASbGncuhtoOgduLGzwSQPfYcZCTlqTVEjmkJX9S9D2QO0DJj12D3HWmunm2aSijr0Wg
	sQ2+3pUY6CivMGYvV0aQw+HuRpv9KcloEjn8Stl8m6saUqISSpyJllT+zr1eVchdQlMGVPQq/4F
	o0gRgSXGt4mFiorf11PuP2WoIG1dmjS9h2u2we3BHmxVqzOnymi3M5gDrlvfL0aiuQmESAAp4Dt
	VaL0CpXLZwRP9UW6C/+qzifiSXXYCpco+3gKVMuV5awdUsc0lF0NBC/tzySNb427xuNGIIyumiI
	+ZIPZxBH64VkzPgUa9Xke2wvfNffTF20SBb4j+a+zzr3t357mhvD9oKS2uBWESviN3lUlQ==
X-Google-Smtp-Source: AGHT+IGymkDJa2PepqWKYweFBWWgXgdsKbBJ6SsAwFL8JIz/ma8KQ3iqRebiC+IPQmWTbUJCcGFyWA==
X-Received: by 2002:a17:907:9482:b0:ada:4b3c:ea81 with SMTP id a640c23a62f3a-ae0bef1b3f1mr265885666b.39.1750851625821;
        Wed, 25 Jun 2025 04:40:25 -0700 (PDT)
Received: from linaro.org ([82.79.186.23])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0b1b1ba3bsm235787566b.93.2025.06.25.04.40.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 04:40:25 -0700 (PDT)
Date: Wed, 25 Jun 2025 14:40:23 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/4] phy: qualcomm: phy-qcom-eusb2-repeater: Add support
 for PMIV0104
Message-ID: <aFvgJ9euu1RwHXl+@linaro.org>
References: <20250625-sm7635-eusb-repeater-v1-0-19d85541eb4c@fairphone.com>
 <20250625-sm7635-eusb-repeater-v1-4-19d85541eb4c@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250625-sm7635-eusb-repeater-v1-4-19d85541eb4c@fairphone.com>

On 25-06-25 11:14:59, Luca Weiss wrote:
> Add support for the eUSB2 repeater found on the PMIV0104. There is no
> default init table for this PMIC, just the board-specific tuning
> parameters are used on top of the default tuning values.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

