Return-Path: <devicetree+bounces-27303-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F54A819DB0
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 12:11:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF7172879E5
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 11:11:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BBC920DFD;
	Wed, 20 Dec 2023 11:11:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ztbIV5hF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25285210F8
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 11:11:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-5cece20f006so47820257b3.3
        for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 03:11:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703070679; x=1703675479; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OC0Fdua32eZv3DDdt+XA+tYrT9hZGxZ1eT3C0tS9/JQ=;
        b=ztbIV5hFJdvNqU6KUC3VjUNelqUmNKttbzGBeAuGlbt4n9rNn7wxy5xgfJMRYEEPMf
         qHWEiB8n0nd9Wn5P8KfE+o+K6FUnTOfIaBPhP3dKTGrOXKHJcn8KS+7Kdm+ELX4Uff8F
         IpNDDDUUr0QmZqwCk2dLtbo1bwFVenh+uIh0C5uOstz4/GTNUMwR7oGIPxYi2iTFnc7l
         aROvGDLNoKNKGok7s26eLNy4p27puthVVdgw1QHgB9m7c9JFJwpXg6Y/7HxGIDx66GAD
         5s6p78q+AcVhMNZChXkqJGc8wV6z+6O081w+n/zRs367KCHtuSTIwmi6zNSVHWxyF8+2
         QeCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703070679; x=1703675479;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OC0Fdua32eZv3DDdt+XA+tYrT9hZGxZ1eT3C0tS9/JQ=;
        b=Rf68ZxHVkAU+kmLTtyKnwVG6jf0mQmldHhoOrOi/agM+ZOTgrmmUn1VUdpIbPu5zNP
         J6d/FEyRCabRSu8IAqfSKFk7BbK6GDCSIB45aDc+1WOYxPyHazvZkNTtrfWdPmr5++Hf
         pOK9RZlN/Jv2r6wPHRCgzRHhidgaNV+mncR3A5LNg2pS6Mrgpb6VzXSLRdSQlOktvviW
         681KK85XqgnADMMBnFPTiRQRqK9xtSCtGWOA1+8PSjqK1g0Jg/LBx/WCAv4sbwGpphaP
         Tx1lcmbJtcAkQn9YxgvyppbqeT7yfiulR1tQ/mcgTOuxyAU5LpqarPfMzYsAHulz0keX
         OThQ==
X-Gm-Message-State: AOJu0YzNOeSLtwX6duqFfX54vrRm5pe0fzJ5r9pX+VU15B1D1BAuoYTv
	D1tPiQlp2XwCqn40Egjk4rBUS3VWpWwMgW/2wmfwFg==
X-Google-Smtp-Source: AGHT+IFyHOS0SWDC341i54WvH4OGbBWxmT/t0jrZLPJP7QTSPED7GAI71vzjhOg7i9GQM5G2J2x9z6cJ07zZD19qOiQ=
X-Received: by 2002:a81:6555:0:b0:5cb:6131:280a with SMTP id
 z82-20020a816555000000b005cb6131280amr15802049ywb.0.1703070678908; Wed, 20
 Dec 2023 03:11:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231208215534.195854-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20231208215534.195854-1-krzysztof.kozlowski@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 20 Dec 2023 12:11:07 +0100
Message-ID: <CACRpkdamx51DeuoqZrbhqXZmu3r71xTdRawCL_X5PeB5N0Yx8w@mail.gmail.com>
Subject: Re: [PATCH 01/10] dt-bindings: pinctrl: qcom: create common LPASS LPI schema
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Stephan Gerhold <stephan@gerhold.net>, 
	Shawn Guo <shawn.guo@linaro.org>, Melody Olvera <quic_molvera@quicinc.com>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Richard Acayan <mailingradian@gmail.com>, 
	Vinod Koul <vkoul@kernel.org>, krishna Lanka <quic_vamslank@quicinc.com>, 
	Rohit Agarwal <quic_rohiagar@quicinc.com>, Iskren Chernev <me@iskren.info>, 
	Martin Botka <martin.botka@somainline.org>, Danila Tikhonov <danila@jiaxyga.com>, 
	Abel Vesa <abel.vesa@linaro.org>, Rajendra Nayak <quic_rjendra@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 8, 2023 at 10:55=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> Just like regular TLMM pin controllers in Qualcomm SoCs, the Low Power
> Audio SubSystem (LPASS) Low Power Island (LPI) TLMM blocks share a lot
> of properties, so common part can be moved to separate schema to reduce
> code duplication and make reviewing easier.
>
> Except the move of common part, this introduces effective changes:
> 1. To all LPASS LPI bindings: Reference pinmux-node.yaml in each pin
>    muxing and configuration node, to bring definition of "function" and
>    "pins" properties.
>
> 2. qcom,sc7280-lpass-lpi-pinctrl: Reference pinctrl.yaml in top leve.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Patch 9/10 was missing from my inbox (and presumably Rob's too since
he didn't ACK it) but there is absolutely nothing wrong with it so I just
grabbed the whole series with b4 and applied it.

Yours,
Linus Walleij

