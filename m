Return-Path: <devicetree+bounces-69198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F1CB98CF155
	for <lists+devicetree@lfdr.de>; Sat, 25 May 2024 22:17:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ABBCD281A3D
	for <lists+devicetree@lfdr.de>; Sat, 25 May 2024 20:17:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08DC7127B50;
	Sat, 25 May 2024 20:17:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rJ3DRrX1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74CCD127B75
	for <devicetree@vger.kernel.org>; Sat, 25 May 2024 20:17:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716668236; cv=none; b=P0Nqj/MZ9OhHgbH4EDcWWbOWgImSFOcckuYtIvkxYEQBDXTYkYZtvRbCOeA1SlYwbipUVBNaTJuQmSbevkG7oJOpcO51yZSm5FHbR4gBZpQcbymTl235h5ZVtrEymy+FKegbTdGBkVwMR0k5ea3CaJhbfeePOm9EwlTFuONuUbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716668236; c=relaxed/simple;
	bh=e4iB2hmWqGkryypMY5WGSupumWJitVR9QfeEQAmfbtk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JXM0uTRL0Ui3asjYz/B/uQ0cbDnKh3Or4IWhM1ZsnRNon3spsAyVnTSn4ZhjYNl623d2FouIMtXDW/fB2fMnq8P/2Bs1pW3fAPw6frUP0IhGRVzm8h6qeLS0sBwF3Z1hGWIyTDtb5uTRfLIwJIUjx/LGqEdQRjPm9R9m3q8f4yY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rJ3DRrX1; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2e96f298fbdso3178231fa.1
        for <devicetree@vger.kernel.org>; Sat, 25 May 2024 13:17:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716668234; x=1717273034; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SELA5GlB1npzSiGqvDyKxGuHXX9mh3K2r4rEuPeskoo=;
        b=rJ3DRrX10SlSS5JfjJWD6JaKCzua20jwy8AySs1cchQ+2p3z5FAgexB0EUVrJ8k7LN
         q09W2arvl5w8KO6hE3kBJuoYKLh92w/WezDwXNHxnj0cboxvuEcWM/pQ69W7+UEkGoNP
         6cxTBDlZOpPht8qVSTr2NWnhPxsJ4WpRRXrxnUCea2TNSQXfNnjTE02HRL3UVpQoJxx2
         VayNXJMf1PWVVqZofDIOP+prtjo/CBMkAidKEma5xWxrzTm3xNSejCrF8YNv6cPjGJBE
         QerFyMhsKxVDmAMHMVYNf3cFrweUpvDjf1+gHf/RVR9VLqPMJ3fHY2Xn6jdq3ZbeXcvX
         qEWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716668234; x=1717273034;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SELA5GlB1npzSiGqvDyKxGuHXX9mh3K2r4rEuPeskoo=;
        b=XkIHhM7+2QYHZeh/DvkTVfx7jDPee+igyEF7hKM+YpeJVKptE8fgnpHu0xbekgkis+
         9EeK3SY/OKWTZ+I46FpoNSz20y0Ial2Ls751SdBXoCCLFU6tqK/qxRPlqnyGfii8Ai+X
         ZOJrik+VDGvUWqMOiV8wqOngoFmO8CLICtYzROHXR4WA7nAcScYHEs2NTLCiMUbHpkUy
         pNinkIhHwVbHr6z8ae8XZNXIMAg3xJZphjXfCN/qJSU0PeIcVDdBg25NqQAx9Tti4wqo
         mwhXjRfoJGGJLD0nhNo3USEMRcnKkaLzHqaNrhyvglJTeh1H9eP7Y2oCL8yfwA1OTsyM
         rbaw==
X-Forwarded-Encrypted: i=1; AJvYcCX7+33lhlgQR2gI2HWMZg25iqFp0ODEGYzB6sQP4xiDxMjN96x5A5b2vSxLlFxRtgHfBEznW/we6JlkDeT5f0dMC1aX322ZbWdMAQ==
X-Gm-Message-State: AOJu0YxtkGUnYSxSMgPSAkGkNPm3UgmNQrcoXipEw7NqckEd5rovItl0
	LNFd93K4BuvJZpikFcoVyqACE9LFzFhrRR7fXct+0oMMRkmJ49GRlBJ81uh9CaY=
X-Google-Smtp-Source: AGHT+IHxaWWgdxxG5Pc00Dajc8BYwzofGEJRg7u/AinnLu/2v1c6MdUcnFcvyu+PBrOQC+NZG4bt1Q==
X-Received: by 2002:a2e:a556:0:b0:2e6:fd20:2982 with SMTP id 38308e7fff4ca-2e95b0946cdmr40028101fa.3.1716668233787;
        Sat, 25 May 2024 13:17:13 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e95bdcd234sm8791121fa.99.2024.05.25.13.17.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 May 2024 13:17:13 -0700 (PDT)
Date: Sat, 25 May 2024 23:17:12 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Bjorn Andersson <quic_bjorande@quicinc.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc8180x: Drop ipa-virt interconnect
Message-ID: <5ck2cusj3tbhoo3h3awgyi7oigh3kk53rzlu7n3ltczp246ff4@mqmvgkq4yoi4>
References: <20240525-sc8180x-drop-ipa-icc-v1-1-84ac4cf08fe3@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240525-sc8180x-drop-ipa-icc-v1-1-84ac4cf08fe3@quicinc.com>

On Sat, May 25, 2024 at 11:07:05AM -0700, Bjorn Andersson wrote:
> From: Bjorn Andersson <quic_bjorande@quicinc.com>
> 
> The IPA BCM is already exposed by clk-rpmh, remove the interconnect
> node for the same.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc8180x.dtsi | 7 -------
>  1 file changed, 7 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

