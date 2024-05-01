Return-Path: <devicetree+bounces-64361-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 14BC58B9006
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 21:24:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A91111F22231
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 19:24:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF3E9161925;
	Wed,  1 May 2024 19:23:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="mwIsmi3F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D081EAF6
	for <devicetree@vger.kernel.org>; Wed,  1 May 2024 19:23:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714591424; cv=none; b=mkQW2iMzZJhqe3kqeesIa9xVtrB50TkwAIiPK4joOIHOGCpLRlTHZxMmshR3ETpFzqTn4ARLw3PtY4/ItSA1JKyUW+y7Ndg2SsnhbJgQnMrcqaEOe6Mt6N3njrNfSgrDRgsG2Y/Clxg9Jsd+Ys4tZ236lYb3cw79diSBz80hyYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714591424; c=relaxed/simple;
	bh=ZhyoVBBIHgstfRuGDnnjMiKeVhXKdonZKZf22uLclA0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=f7Zb4/ZVxChPP9cJw3JThJ0HdDqSzloe6mWNkfwCYoRCEczwWnbV3ICszBcOoEfg7QQ35WpkmaNT84i446zMAlAzYS4MIELi+QZCaqfUljoAhoqOkfMDsmESz9P2F5n+z9i7LGZJhRfC0qVGBkdkYcGRihg3CSDL9ne+zR0Dc3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=mwIsmi3F; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-6ece8991654so6516405b3a.3
        for <devicetree@vger.kernel.org>; Wed, 01 May 2024 12:23:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1714591422; x=1715196222; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hbubMcULTqXEpjOw1/tNxpjigRY/QT4JGEZ8U1qfXOo=;
        b=mwIsmi3FfwsjctIm3NtBsTzgbye/iF2xtJNcoW0PnRHK26vEaoBxZgkukVJQtunCf2
         kpS/9BBNO2elW8XlZPjFGho/UiVxqtPHnVZEYYameqwi81AEr+s1/pW6QbHD+mpXC5TK
         aOSW3AAsv+B9XI/u7cFwHZX+AWWCHGBjrEYJI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714591422; x=1715196222;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hbubMcULTqXEpjOw1/tNxpjigRY/QT4JGEZ8U1qfXOo=;
        b=Ssbezqj/ANGgkudFt3Yhhv/CpGN0DnIWtHEr7JgGC/x9mbuBQnN/LgBg6tQHA4Un+F
         QXDxg6l5JLhUq8TZcuBqVvX4Zp1BDvthoL1GF1Pc+NoL1oPdXlleMXGwuwJRCxQBNdwk
         6mc4qh1aUs524UFsJ5rpKx4FJ4kuIpQk88dyCA4Ga4IK7x8TMZxL+Guq7zw9lLdYAsxr
         VZ09a7BjueyHoTB72YqzaF4LZv5ul4oODqy+NubdI4WoANNYs6MQqjDElRBsCH1Nio/7
         krmyoXD75RE5Rh/6iux1oHhvJRaum2YPrN0tK1hLi+RGJZjtJyTux/TNvZurauSL+9TQ
         GhCw==
X-Forwarded-Encrypted: i=1; AJvYcCWuBvYR6Fsy76VAAWtGmgNTpv6bazjod5UlFTxDDIVXpgz9SNNXZ7pxry4yoRCxFBSwL6Fieg83Jfbpn49c3+shS9lTMhAW/qHsQQ==
X-Gm-Message-State: AOJu0YzS3+2COSURXR0AeljfbCgnu1sqVa7kVzBn5ElbwKFAQTTMd910
	ufhJ5D5D7Pz8H6k+QIf/kzfnzWdG/zO9hlnZk84paWfwPuEFXIGTvbA+gOaiUdC103E3bBbRwno
	=
X-Google-Smtp-Source: AGHT+IHg2tesO+vm/XD2xsQUN/0xUrDLc7keQbk40M7mfZeuxpR1rLigHcfdSvU1lyV29svOGk7CrA==
X-Received: by 2002:a05:6a00:1149:b0:6f4:1799:c714 with SMTP id b9-20020a056a00114900b006f41799c714mr4912909pfm.12.1714591422331;
        Wed, 01 May 2024 12:23:42 -0700 (PDT)
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com. [209.85.214.177])
        by smtp.gmail.com with ESMTPSA id o13-20020a056a001b4d00b006e6c733bde9sm22955766pfv.155.2024.05.01.12.23.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 May 2024 12:23:42 -0700 (PDT)
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-1eb1cb1a8f1so1695ad.0
        for <devicetree@vger.kernel.org>; Wed, 01 May 2024 12:23:41 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVzVJdb4HdldVaoEZWn4fB0X6O61uTKjRxW0y0N9jjdD06JrHflSO9hNifD1B8KWRFUDaHHHEfTHytgR/Doi2FFA5HvJQjKX/uDOg==
X-Received: by 2002:ac8:7f03:0:b0:43a:f821:5b17 with SMTP id
 f3-20020ac87f03000000b0043af8215b17mr33651qtk.3.1714591400761; Wed, 01 May
 2024 12:23:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240501-qcom-phy-fixes-v1-0-f1fd15c33fb3@linaro.org> <20240501-qcom-phy-fixes-v1-4-f1fd15c33fb3@linaro.org>
In-Reply-To: <20240501-qcom-phy-fixes-v1-4-f1fd15c33fb3@linaro.org>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 1 May 2024 12:23:05 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VYKELU-xBjMUqLSASC+m+eGCxHCgueCFjxwphxggNAww@mail.gmail.com>
Message-ID: <CAD=FV=VYKELU-xBjMUqLSASC+m+eGCxHCgueCFjxwphxggNAww@mail.gmail.com>
Subject: Re: [PATCH 04/13] arm64: dts: qcom: sc7180: drop extra UFS PHY compat
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Abel Vesa <abel.vesa@linaro.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	cros-qcom-dts-watchers@chromium.org, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, David Wronek <davidwronek@gmail.com>, 
	Andy Gross <andy.gross@linaro.org>, Evan Green <evgreen@chromium.org>, 
	Iskren Chernev <me@iskren.info>, Luca Weiss <luca.weiss@fairphone.com>, 
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, Yassine Oudjana <y.oudjana@protonmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@somainline.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, May 1, 2024 at 9:19=E2=80=AFAM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> The DT schema doesn't have a fallback compatible for
> qcom,sc7180-qmp-ufs-phy. Drop it from the dtsi too.
>
> Fixes: 858536d9dc94 ("arm64: dts: qcom: sc7180: Add UFS nodes")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/q=
com/sc7180.dtsi
> index 4774a859bd7e..52d074a4fbf3 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> @@ -1582,8 +1582,7 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>                 };
>
>                 ufs_mem_phy: phy@1d87000 {
> -                       compatible =3D "qcom,sc7180-qmp-ufs-phy",
> -                                    "qcom,sm7150-qmp-ufs-phy";
> +                       compatible =3D "qcom,sc7180-qmp-ufs-phy";

Seems OK to me. It looks like UFS support for sc7180 is new enough
that we're not breaking any sort of compatbility by changing this.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

