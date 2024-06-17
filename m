Return-Path: <devicetree+bounces-76490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2449790AA7A
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 11:59:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B355528DF35
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 09:59:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA4E51940A1;
	Mon, 17 Jun 2024 09:58:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xDfvt/bi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CDED194A6D
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 09:58:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718618339; cv=none; b=JfodYlSI2q8KGmrf3/g6vVx6LrD8Epafos/HbmgwhBdgOzD81aJa5R9kKF6uW8FvNROmgLX1qYDSVUTY6gQqVZHYFnb+H4pk5UxDok0IP1BPCZDYoX5x2pKMHlY+iAtj/PVUw+RKtd4uXQxcmXb0lvltFebDJi0BXGS1r0N4iMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718618339; c=relaxed/simple;
	bh=6DeoBATRz+sRNdEAraKJhgJcEuP9qvhe61nCz7zb4yw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ryhLWnWG07UlGOKNn6dUXjG8t8XD3fWe0LGq9y0cFNsQHZCcLUbwh3+7K+3kJISdyaTQHWSJalvLItVixX3o8/n60fKxbY0kYUgJ9pSUxPs8jAqLMeHFs03APWlAh1maKJZ/lsAI0sd/npY8JwgvN1eYYj2jIma7ZLVnGeyxbIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xDfvt/bi; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2ebec2f11b7so40945031fa.2
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 02:58:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718618336; x=1719223136; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Go2agfDIBq2xSgfWmJcN9bkmoZergV3qWa8jfl+m24U=;
        b=xDfvt/binYalwZ+Amt0Y8nr4vsTWwo9de7KKx+05ynb2ByliFgxEG1CGGIHXSpbzux
         pvhbhAiJCpAEZiH3GTVhMpQqkr/DxaVsy8AVY0+oAK+2jiuvC21DKTOHWwTFZEUDjzv4
         oNZIwj48sKtKlG0qJ1rsprFCZX+a8H7Ywjf/M+q8OXAQqtpo0LJGsVhm5TZWDKIA91fa
         6zmDl1jCNnTAQxsehxs3igI6rAcSC5Mt9t/VzdGcdfr5Q17FFsRHBnSXQ4W0u7IBxnFS
         2P//TFxDxPyvVIBvwc1U1s2QU2+G4o5pKrKxeMFbxxdd7dpVZt2ODkLbAYG42mbE/Yky
         YYwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718618336; x=1719223136;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Go2agfDIBq2xSgfWmJcN9bkmoZergV3qWa8jfl+m24U=;
        b=vIjRVp6DnlDytXnWhqdubL3BGE2Xa41e9HujmsXc8LLlkyIR1BJDY+QeJz9cazR6Ye
         BNmNICPAY/POvRPIYou1D2pgEzTd0UCR7nCE6PYXkxnpqnEho/iTKubHQLCTvRFhOWBs
         arpN4bdUE63pBJ4NUKn45+xM6gZTqCgeKQWWqynmDyYC0rMHiYMnENjGSpegg/2NeWbO
         QiUGeHU431WO9peHInUPr2K/OVRzxah3DXgBLvrhtsEUiRMYOkfG79GKYoZhS+7G2mJR
         SdqB8yGVVhOl7ivaE+ee++1MChCqRgm/Sdh2NtV8bMiP/+npupUvaUCnSlsURhBW+ktx
         OGeQ==
X-Forwarded-Encrypted: i=1; AJvYcCWNcwQnO8W/mhpM05x6Ho7Z8ElrcczDY9+aTEu3kDEQpXURnbGT/7I+h5y6Ig5ecmliI7N9oKRIlSquKylK8/QKaWKgSG2IOKQcsA==
X-Gm-Message-State: AOJu0Yym6hhfO0Y2lVXvN76WAbfhP7OaS6EEACGQpYtcBMc3WU7NovZb
	M11yoGSpqtIKwNK4Kwroo26Hv3EH2arCc2Y3qGifN6fvtqKSBr0rzkWkGqoHGTEQNos3N4y5jHZ
	MC/s=
X-Google-Smtp-Source: AGHT+IHn1QvVmniqMsgQ5YEbbsJNDrlNQrexOVuNFQyDehD3a6PDaHxig2xGul9h2+FgIDXlZ9Lhxg==
X-Received: by 2002:a2e:3304:0:b0:2eb:e312:5af1 with SMTP id 38308e7fff4ca-2ec0e5c6e65mr63988941fa.22.1718618336162;
        Mon, 17 Jun 2024 02:58:56 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec05c17d72sm12891131fa.68.2024.06.17.02.58.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 02:58:55 -0700 (PDT)
Date: Mon, 17 Jun 2024 12:58:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Amit Pundir <amit.pundir@linaro.org>
Subject: Re: [PATCH v9 1/4] arm64: dts: qcom: sm8550-qrd: add the Wifi node
Message-ID: <gaqlffxmax777iptimspviznwsmxq4h6c6dvh3zbtoeja4ewfp@ld3t3tchucxl>
References: <20240605122729.24283-1-brgl@bgdev.pl>
 <20240605122729.24283-2-brgl@bgdev.pl>
 <m2ocalmjfiitgr2ziqtegll4gzs5l5hykgx57fzz2n7u45szje@faa2xxfmksm4>
 <CAMRc=MchOAwNR0i-_x13Y60gXGJHtnmVvmCet17u+TKUgrZ33A@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMRc=MchOAwNR0i-_x13Y60gXGJHtnmVvmCet17u+TKUgrZ33A@mail.gmail.com>

On Mon, Jun 17, 2024 at 11:53:27AM GMT, Bartosz Golaszewski wrote:
> On Mon, Jun 17, 2024 at 11:32 AM Dmitry Baryshkov
> <dmitry.baryshkov@linaro.org> wrote:
> >
> > On Wed, Jun 05, 2024 at 02:27:26PM GMT, Bartosz Golaszewski wrote:
> > > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> > >
> > > Describe the ath12k WLAN on-board the WCN7850 module present on the
> > > board.
> > >
> > > [Neil: authored the initial version of the change]
> > >
> > > Co-developed-by: Neil Armstrong <neil.armstrong@linaro.org>
> > > Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> > > Tested-by: Amit Pundir <amit.pundir@linaro.org>
> > > Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8550-QRD
> > > Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> > > ---
> > >  arch/arm64/boot/dts/qcom/sm8550-qrd.dts | 97 +++++++++++++++++++++++++
> > >  arch/arm64/boot/dts/qcom/sm8550.dtsi    |  2 +-
> > >  2 files changed, 98 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> > > index c55a818af935..c9d3c0549ab5 100644
> > > --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> > > @@ -1784,7 +1784,7 @@ pcie0: pcie@1c00000 {
> > >
> > >                       status = "disabled";
> > >
> > > -                     pcie@0 {
> > > +                     pcieport0: pcie@0 {
> >
> > Ideally this should come as a separate commit, with proper Fixes tag,
> > changing all pcie ports at once.
> >
> 
> Why? this is not a bug, we didn't need this label until now.

Oh, I'm blind. Plese excuse me. I've read it as if you wre changing the
node name.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> 
> Bart
> 
> > >                               device_type = "pci";
> > >                               reg = <0x0 0x0 0x0 0x0 0x0>;
> > >                               bus-range = <0x01 0xff>;
> > > --
> > > 2.40.1
> > >
> >
> > --
> > With best wishes
> > Dmitry

-- 
With best wishes
Dmitry

