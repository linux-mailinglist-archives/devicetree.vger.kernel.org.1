Return-Path: <devicetree+bounces-76486-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC09B90AA5E
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 11:57:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5284528265A
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 09:57:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6711194C8E;
	Mon, 17 Jun 2024 09:53:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="wp1ZL5bJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371C6194093
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 09:53:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718618021; cv=none; b=u7kPl1tMYhCw3416U2CnsJuPyyPWr6mVqs38eciK9cVCVWN502Xer+1gAgZLwDvRhfZYzIpAOXUafiHBGGbZIK28TW1vviqVjJV4lHBvnInOYNjsJeMGQU7bmLw7TUsGgbrurbxBoF09CQ4qNCFsDzet86+wEbDoFXxza50NXzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718618021; c=relaxed/simple;
	bh=EwVLuVeHp2g3G1fblt/MpM+4+1Yf8xjMAvh3KYBPdkA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hjjPKbPEZ7W/5A+LsjkXKZnNDARiNsEJAjgwe1WMv9cOdqB8FP/4XyMWA5crp3dlM+e5fJhIYwOcUrTHWlEuWNPBif/Xhk3v02K3Ez3jwBJ46qdmAmzhPhXDEtOVk36CIC1/47IwKx8yUxGbadKYPO1chVqGkEHl1cGTj+M7PjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=wp1ZL5bJ; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-52c82101407so6983595e87.3
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 02:53:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1718618018; x=1719222818; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ow/bdqViiq77vsNYuMh0FoiQ44/aFS2ozFtxuSsTOHw=;
        b=wp1ZL5bJrsLei/Pnp2GfaICtok3bK8z9Tqn+GodXcLOIV4oHwV8IYVhB7Du47oPYXI
         E2WCWdC+E+ttcPdSwjpeSgzqEHiiiw5nWWn2qRt5OIt/EjCdFJTR0lzVYFj2w8QKfNF/
         2LgT9rdP37eUZo6GhmLgQTtzz8FPeeLXli5iwa+52ert/0vNLkMK9pSaCmiRYHnVQd/G
         kvTHfnL9KbTm9azu+AjCM0Lsi8sQ5JVy8DcS2mWD1r9JORL7iY21DQHmrkQt2U1Ms7kY
         ZZXBGA1aiS5n4mmmh365Y64XwK8YD/xt0Ep6zK8kRNihUEo8D/tpnAbHVvuCdZ2h5a+b
         hvCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718618018; x=1719222818;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ow/bdqViiq77vsNYuMh0FoiQ44/aFS2ozFtxuSsTOHw=;
        b=X7pg/Al4fahKGFYFWqILMtAatFuhzTyUEdkEvuj9GerQCT0+bQrejHK8Tl8Ak6q/n1
         zHo1UElOpqUklSH6VoqHs+tAMEXyDk5PtOu+2xLM3PGcpYUlMqAGxqQNGAGPoGpFPryX
         1fnh27EWe1hGNqW8DJVQxD4vwKECD+D7JhGkZkMwTvRzpQdDBXOMQPYT3otyzFMW8Bor
         OyQd2E6AePZrdb8DSxqJzpGeql9vbAc9ELwHDRYTlDhP5qg2+CiHg/w5JYzWJTD5VNdJ
         8XRdAu/rn9LqDjlkQHeoXkgUVSd4PqgjcrgGpnN/3wNF7PpetFwA2SnukwwdJqWl0z65
         ecFA==
X-Forwarded-Encrypted: i=1; AJvYcCVyDsKeodRma4mj/iFttbfmDTAIxYmT45NODmhBn+PxehHpKMu2XfH3oKek0yW/GNzkWzDGXdm5DOkhgNdm92vrIeovWGZEVjiJuQ==
X-Gm-Message-State: AOJu0YwttDuIeT/4k2GOT4JVaWXdJMLdSevvNb6SL/xypQoGnvt56LKT
	vEoY5kmWVXfCN+7Gd8JFKw7tWLyYvywqmMr1aXymbVvLS2htZE+7onwPwLbvJUDGowGvTRNdtVC
	raWhlGsrDhNBA1TxNPoqvCJdra7WlHO0kqdulDFUgyXRIgqgJ
X-Google-Smtp-Source: AGHT+IFTgY07RrDts8kCSgZpcdeNkbbio2oxZYTF1W4ol0ipTL0MLFFayU3iO9ZhdfbwSWYFxpptD8C1Ao9fcwSlw5k=
X-Received: by 2002:ac2:420a:0:b0:52b:bf92:bcd with SMTP id
 2adb3069b0e04-52ca6e67674mr6832479e87.22.1718618018212; Mon, 17 Jun 2024
 02:53:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240605122729.24283-1-brgl@bgdev.pl> <20240605122729.24283-2-brgl@bgdev.pl>
 <m2ocalmjfiitgr2ziqtegll4gzs5l5hykgx57fzz2n7u45szje@faa2xxfmksm4>
In-Reply-To: <m2ocalmjfiitgr2ziqtegll4gzs5l5hykgx57fzz2n7u45szje@faa2xxfmksm4>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 17 Jun 2024 11:53:27 +0200
Message-ID: <CAMRc=MchOAwNR0i-_x13Y60gXGJHtnmVvmCet17u+TKUgrZ33A@mail.gmail.com>
Subject: Re: [PATCH v9 1/4] arm64: dts: qcom: sm8550-qrd: add the Wifi node
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Amit Pundir <amit.pundir@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 17, 2024 at 11:32=E2=80=AFAM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Wed, Jun 05, 2024 at 02:27:26PM GMT, Bartosz Golaszewski wrote:
> > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >
> > Describe the ath12k WLAN on-board the WCN7850 module present on the
> > board.
> >
> > [Neil: authored the initial version of the change]
> >
> > Co-developed-by: Neil Armstrong <neil.armstrong@linaro.org>
> > Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> > Tested-by: Amit Pundir <amit.pundir@linaro.org>
> > Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8550-QRD
> > Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> > ---
> >  arch/arm64/boot/dts/qcom/sm8550-qrd.dts | 97 +++++++++++++++++++++++++
> >  arch/arm64/boot/dts/qcom/sm8550.dtsi    |  2 +-
> >  2 files changed, 98 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts=
/qcom/sm8550.dtsi
> > index c55a818af935..c9d3c0549ab5 100644
> > --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> > @@ -1784,7 +1784,7 @@ pcie0: pcie@1c00000 {
> >
> >                       status =3D "disabled";
> >
> > -                     pcie@0 {
> > +                     pcieport0: pcie@0 {
>
> Ideally this should come as a separate commit, with proper Fixes tag,
> changing all pcie ports at once.
>

Why? this is not a bug, we didn't need this label until now.

Bart

> >                               device_type =3D "pci";
> >                               reg =3D <0x0 0x0 0x0 0x0 0x0>;
> >                               bus-range =3D <0x01 0xff>;
> > --
> > 2.40.1
> >
>
> --
> With best wishes
> Dmitry

