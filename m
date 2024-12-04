Return-Path: <devicetree+bounces-127133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D24D29E481D
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 23:48:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 69B1518801B2
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 22:48:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DE201F540E;
	Wed,  4 Dec 2024 22:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="bpx0+3Nf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89E7D23918D
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 22:48:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733352528; cv=none; b=uKbuTZeiG+DbHq1yApVzzFJVyuhshV7smMYtvoAdigbsoJ/0a6hmAZa6sH0+p0HlShcvHDEQqS9JLySUxD/cMEjXr8+oLdbSuV4Cd2jUGioOg8IT9vOfgWNN4w7283Ibq/Fo5PGUvO2CGOWIlVPu8znD3naa2z3hqn+PIy3TyEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733352528; c=relaxed/simple;
	bh=TSj4StKekoMWof/0a9RDpcEaVlkxhZJJcFqRiqpRSp0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NPXYB40cU4BFfiOlXz0vgjmbVawfWsC6jZ2+fjzqM/n/N8C0XBbaVaAI9JvMonf2BmI/cHfoP8nCwYLBLJJ+tpIC2Xd5cKmMPNAicy0ZyWBRcaXj61SYIOVextXgJTUfcQSRbOF+QaeHWIT9TBt93/KgHWnCX7zqLPYqHSWwQuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=bpx0+3Nf; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2ffc7a2c5d5so2176071fa.1
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 14:48:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1733352522; x=1733957322; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eS5St45eHSe24ISFP3PYGVU7STuxo7md32QjNE7kdII=;
        b=bpx0+3NfH+BVsFaHBysVF2jTb6AAfmhizNf5GlbfhzmbXs5pyr6RXNWonHoIsmQ2L7
         NIXwD16YOez7ZONazkB9Vk/UpnVmoNPvDHLTEK+h3ESHuQirK6Cz3Y1f3SUbRSEIkY+U
         Bx63eZuJ55+OoNicJCB697BsTemypEh7MpQ9I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733352522; x=1733957322;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eS5St45eHSe24ISFP3PYGVU7STuxo7md32QjNE7kdII=;
        b=Zc0JBjsCvoZdTj/91lZ0Ce+Ql2Y+TTcLLMTyjjIm0D2l8S9NUueHCqq/qtnHL8NdAg
         5m9YckSuuBXnoqckTlw5Y4vEMCZV/oMUYGNmtstBcDLTnpdjl//0wMAgjQXpBlUcSyfR
         fj+TyY6MbfR9mxXaPcDSaLtgCM0nJSofDch5wCf8f55ySv2P/X6Uqbg7pNEGeXl8KXSp
         cgpBAZqTqswY921DPq1HvRrZDc9W6jLpTAbkLdmCPB5XZ2B4a3IPyrRK/A+R65ZC8aCO
         6xGoAuxzwq+jqRK8/kVuizfopxOwtTGv1DUOylHbeS73mRs3CMntAbhmaKMwA6ySiW9Q
         xg/g==
X-Forwarded-Encrypted: i=1; AJvYcCWwr2FfaX7stRLA7RgJlzjyPu/xa4Ly5w/J6A/ZlYrYhSyPJRT8rpxPL9xkeez+fOgkbEJMR4KVlyyv@vger.kernel.org
X-Gm-Message-State: AOJu0YzBmzyBg0vEjheA67fIoQy4LHuFW+w94Gwo94B34cdGa5RHiUMj
	sKgmteTDwnpjuR/ciaZDrQIURglBp+yRVathq4faAX6xWUiEEjOnNgZkcJd0t5qcZx+olxL12Ln
	8WkKi
X-Gm-Gg: ASbGncvB7QNmzpOzUfm9ejQUwC7HaA03RFnfBVa4Ybh37d4R2YESjzLmma0Lg+Natmo
	i9MEF3OoBu9spp/yV+qYIFdTKwLOlZWeXv0T+IuglqwzAr+4S25V0HjtSwCLmliXp+oyn324YHE
	p3k51U3/lTtMqVrxcy9IvG2PUm9jOY3Khp8sc3+cIMkW8jia9m73V4er7Xnioj3l0XjRDoiCEuQ
	3xuR8WRwaeoMUMevYO5tWFiFTwQ5TWxGI5VVfV0L8i8ehL3dLS4tiKBuK9r6jeWF9R2qlnJhLzz
	YDbYqWZcduJ38w==
X-Google-Smtp-Source: AGHT+IEGFUPG7Xl/hvZW47rIhTr7ezOO2XSe69b1HD9WKQIrCU28NEZPNUEB/N7WkjJk8QdFphjceQ==
X-Received: by 2002:a05:6512:4028:b0:53d:d41e:c51b with SMTP id 2adb3069b0e04-53e1b882fbdmr1878132e87.19.1733352522564;
        Wed, 04 Dec 2024 14:48:42 -0800 (PST)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com. [209.85.167.52])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53e229ca282sm24811e87.241.2024.12.04.14.48.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Dec 2024 14:48:41 -0800 (PST)
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-53e1f673ca8so350122e87.3
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 14:48:41 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVowU8tUjvmB+lKcaxBpcUDQ2SOchBH52CXUBsJa0hqn+mFBgZpXqc+nZHtKOAIoSgTkmI9yiFtXMkt@vger.kernel.org
X-Received: by 2002:a05:6512:3087:b0:53d:ed89:d78d with SMTP id
 2adb3069b0e04-53e1b8785eamr2316814e87.5.1733352520879; Wed, 04 Dec 2024
 14:48:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241204-topic-misc-dt-fixes-v1-0-6d320b6454e6@linaro.org> <20241204-topic-misc-dt-fixes-v1-4-6d320b6454e6@linaro.org>
In-Reply-To: <20241204-topic-misc-dt-fixes-v1-4-6d320b6454e6@linaro.org>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 4 Dec 2024 14:48:29 -0800
X-Gmail-Original-Message-ID: <CAD=FV=WMm5j60+jn9JFYkTDgm73NOHU5SAxbWvXOicEFbDySxQ@mail.gmail.com>
Message-ID: <CAD=FV=WMm5j60+jn9JFYkTDgm73NOHU5SAxbWvXOicEFbDySxQ@mail.gmail.com>
Subject: Re: [PATCH 4/5] arm64: dts: qcom: sc7180-trogdor-pompom: rename
 5v-choke thermal zone
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Dec 4, 2024 at 2:57=E2=80=AFAM Neil Armstrong <neil.armstrong@linar=
o.org> wrote:
>
> Rename the 5v-choke thermal zone to satisfy the bindings.
>
> This fixes:
> sc7180-trogdor-pompom-r2-lte.dts: thermal-zones: '5v-choke-thermal' does =
not match any of the regexes: '^[a-zA-Z][a-zA-Z0-9\\-]{1,10}-thermal$', 'pi=
nctrl-[0-9]+'
>         from schema $id: http://devicetree.org/schemas/thermal/thermal-zo=
nes.yaml#
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

