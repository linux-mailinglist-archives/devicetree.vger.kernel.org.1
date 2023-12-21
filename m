Return-Path: <devicetree+bounces-27549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E008F81AB91
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 01:11:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 80C1EB23F73
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 00:11:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FA824A19;
	Thu, 21 Dec 2023 00:11:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="hUPSVvmz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDC344685
	for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 00:11:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5534dcfdd61so433429a12.0
        for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 16:11:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1703117489; x=1703722289; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/mYEduXCSX53GxkPa+3HzLZx264zuWEFs+pArKbO8ws=;
        b=hUPSVvmzb1+/bAanusHAmMeqR7eIcpU7PL6u30fPIjIp4EvhwkE4j1yYxKcJ8f+MvZ
         qEOIzUCBJrMoa6/PHW8L/r0BvqFsCRC9nCh8ZwSxBiIyYsyPvjlysnEAOSnq3tDdZrXx
         AB5TXz4XfP9C8Pdzxe86BNe2ZHe4G2QHJkwnA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703117489; x=1703722289;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/mYEduXCSX53GxkPa+3HzLZx264zuWEFs+pArKbO8ws=;
        b=CSy7ou5800EwAuBMVhF1AmThs3Aa1PMa+c1NLTwOq7myCZebj9oQdKm5mrdpeydFC8
         1vzouXeR0aoykpK1FRvHhSPcCRmSc4pgA3k/3u6p8baP+W1Hwc/iaXWCEsK9CFwem1lE
         grMPtD1Fg1jCqItMFCxvcO2xSm8U7hTf30KZWJVIO1VlqF3YErcZH8ZpU5ds5vUaUlJg
         4gn+ppGcikWELUb0uX1oL+LQ81tFnWv0IQ3GaEC/eyDH5NlZ1nezqmhrz5YtpCoNgDe9
         nG970a1MpNIUss5F4UXJoMLK/0nJSp8O+fZGsktUfNYkmk3WNX0AfFdDyQe+TBLkmj4X
         fMQg==
X-Gm-Message-State: AOJu0Yw5Xk+PTq57xVmOw9ppbndRsYPLL7M0yXDjKyUsL5TK0Js6uD+Z
	dQ5MgkcnY/jlT4XTvQmdfETgAETaFTVI1sg+ud44T5UZ85YhToA=
X-Google-Smtp-Source: AGHT+IGt/d9ii3LbmWUhdoc59WWlCljLvryYfA+LiwhGXqg/v+TFDVawOGoK97aU97CMKBhK7sfpMg==
X-Received: by 2002:aa7:cb45:0:b0:553:894f:c88d with SMTP id w5-20020aa7cb45000000b00553894fc88dmr3438848edt.18.1703117489216;
        Wed, 20 Dec 2023 16:11:29 -0800 (PST)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com. [209.85.208.42])
        by smtp.gmail.com with ESMTPSA id p11-20020a05640243cb00b005519a444a6asm419114edc.71.2023.12.20.16.11.28
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Dec 2023 16:11:28 -0800 (PST)
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-548ae9a5eeaso1872a12.1
        for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 16:11:28 -0800 (PST)
X-Received: by 2002:a50:c316:0:b0:553:773b:b7b2 with SMTP id
 a22-20020a50c316000000b00553773bb7b2mr3837edb.6.1703117488506; Wed, 20 Dec
 2023 16:11:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231220235459.2965548-1-markhas@chromium.org> <20231220165423.v2.15.I870e2c3490e7fc27a8f6bc41dba23b3dfacd2d13@changeid>
In-Reply-To: <20231220165423.v2.15.I870e2c3490e7fc27a8f6bc41dba23b3dfacd2d13@changeid>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 20 Dec 2023 16:11:16 -0800
X-Gmail-Original-Message-ID: <CAD=FV=XwT62H+eBH-PRfQPH-X17_BmWQd5wrHTj6o8Zxkf72sQ@mail.gmail.com>
Message-ID: <CAD=FV=XwT62H+eBH-PRfQPH-X17_BmWQd5wrHTj6o8Zxkf72sQ@mail.gmail.com>
Subject: Re: [PATCH v2 15/22] arm64: dts: qcom: sdm845: Enable cros-ec-spi as
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
>  arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

