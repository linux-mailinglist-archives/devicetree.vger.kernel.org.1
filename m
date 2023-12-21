Return-Path: <devicetree+bounces-27548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B0C81AB8E
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 01:11:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 95C081C23B14
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 00:11:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 795544416;
	Thu, 21 Dec 2023 00:11:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="mbHutCbJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9AFD441A
	for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 00:11:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a235eb41251so22972366b.3
        for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 16:11:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1703117475; x=1703722275; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZAV5X+k1qQI1nOHUSW7EkdUMeMAYS/98mQ/cpqxd4GY=;
        b=mbHutCbJBQk9C31fjx8f1kawwpza1qWNyJotzgM4rfndNm6As9Wn066HJnNoGI+vor
         CGs37gl69StoEnf5K1oMErg+XGY/KPyxSIh1jsuhNDkxXFO9g2PvtOTWanLtRhs9Tl3p
         q0ycDgZOuoBpXl/PzGPNM2B5KgEFsYHUCaEns=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703117475; x=1703722275;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZAV5X+k1qQI1nOHUSW7EkdUMeMAYS/98mQ/cpqxd4GY=;
        b=mj2DpmHKEaQgRzLVPgFkAsE/qN9CfADjvU99tPuL4Ke7AGjozGzLYSmQANE+Axq6jZ
         ZZUdkZB8ywP4DHqLs+Y4BY8zlP+MAPxPI3t7AhkrxFXR2t+3B3PD/tBiBEqSQ6ZiXCXk
         GAMIDhD0P/TWz91Ve56DfhuaxpxMz5W51y8NJwMFzhwYnHx/TuERh3UoxyggSr0Qi5vl
         /dyLjo2eX6xdLaO2XEWt/kq8W/B6RNX33drd/I7eZRzEd9LjWWQsYmPVkLG+N6hOGgO3
         DNOy4uD1FGd6YVuVwfI+frvwxS5RXJyLZ2oijTUPfwUW1Rr+bJS/ejEKzV2PB1Rs+DH7
         WRWQ==
X-Gm-Message-State: AOJu0YxE7j4OJ8nxZGxY4y4ul+wra0VDd+jJcpR9OQd5hNeDoRFwjk0I
	z8MPt8DYgquuVzx5voRbE8yK5Qb1O7MvhpMeKI4rIpAF
X-Google-Smtp-Source: AGHT+IHej76UEs2TKwfIBkhWVW9B8rsU65IlFQRcleFBGGH3c4y7UYtuddbeh39ED/NOAQfoTp3IvQ==
X-Received: by 2002:a17:906:59:b0:a23:4c8f:f134 with SMTP id 25-20020a170906005900b00a234c8ff134mr2173688ejg.36.1703117475233;
        Wed, 20 Dec 2023 16:11:15 -0800 (PST)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com. [209.85.208.54])
        by smtp.gmail.com with ESMTPSA id zr15-20020a170907710f00b00a23359868b1sm346359ejb.76.2023.12.20.16.11.14
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Dec 2023 16:11:14 -0800 (PST)
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-553e36acfbaso5683a12.0
        for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 16:11:14 -0800 (PST)
X-Received: by 2002:a50:f60d:0:b0:553:6de7:43d7 with SMTP id
 c13-20020a50f60d000000b005536de743d7mr3379edn.6.1703117474444; Wed, 20 Dec
 2023 16:11:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231220235459.2965548-1-markhas@chromium.org> <20231220165423.v2.14.I7ea3f53272c9b7cd77633adfd18058ba443eed96@changeid>
In-Reply-To: <20231220165423.v2.14.I7ea3f53272c9b7cd77633adfd18058ba443eed96@changeid>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 20 Dec 2023 16:10:56 -0800
X-Gmail-Original-Message-ID: <CAD=FV=WE=HhcBQVVtbm7ev3-MQzeaXuoaRL7WYr0c7-Uhv_v3w@mail.gmail.com>
Message-ID: <CAD=FV=WE=HhcBQVVtbm7ev3-MQzeaXuoaRL7WYr0c7-Uhv_v3w@mail.gmail.com>
Subject: Re: [PATCH v2 14/22] arm64: dts: qcom: sc7280: Enable cros-ec-spi as
 wake source
To: Mark Hasemeyer <markhas@chromium.org>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Tzung-Bi Shih <tzungbi@kernel.org>, 
	Raul Rangel <rrangel@chromium.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Andy Shevchenko <andriy.shevchenko@intel.com>, Rob Herring <robh@kernel.org>, 
	Sudeep Holla <sudeep.holla@arm.com>, Bjorn Andersson <andersson@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	cros-qcom-dts-watchers@chromium.org, devicetree@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Dec 20, 2023 at 3:55=E2=80=AFPM Mark Hasemeyer <markhas@chromium.or=
g> wrote:
>
> The cros_ec driver currently assumes that cros-ec-spi compatible device
> nodes are a wakeup-source even though the wakeup-source property is not
> defined.
>
> Add the wakeup-source property to all cros-ec-spi compatible device
> nodes to match expected behavior.
>
> Signed-off-by: Mark Hasemeyer <markhas@chromium.org>
> ---
>
> Changes in v2:
> -Split by arch/soc
>
>  arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi | 1 +
>  arch/arm64/boot/dts/qcom/sc7280-idp-ec-h1.dtsi | 1 +
>  2 files changed, 2 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

