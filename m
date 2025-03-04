Return-Path: <devicetree+bounces-153632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 61729A4D55C
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 08:51:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C88503A837C
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 07:51:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E643E1F8916;
	Tue,  4 Mar 2025 07:51:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="X7jbZIFP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 123141F583F
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 07:51:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741074707; cv=none; b=smkxTNMa5gGr7IT8O7PCL+UtwGYUX/z+B24BBR0M9DliBIpM/cbd4xwJsDcBygnDCn5yN19pRFO8IrdwJTJcWGoTUesT7UNj4Xa6xQg9EEQU2rM/K+ukIL4pLbx/EX6K7cv1LySmxcOad/pBpsTnoDAVY6bfKsjs1HGRESybY+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741074707; c=relaxed/simple;
	bh=u9ZCYhaK23fUJUUt5s7FYrwFuoV7Wm409Bw5a49OPOk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LztfcEXDpUNajPYhwviVgKhDupeO7HEKWi4MDh0ZB02E2esWu6ETE4yfvYkzHqR34J4aULLAvQXF5KkM3oJXTfKGOCHkQEssGUxcFowGblLcwcMR1WbJSptHZGRb3PpnZNcLOsWJOfguQN/2swFBdsg1jwzK4wrOCADJU5FfRyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=X7jbZIFP; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-54943bb8006so5869723e87.0
        for <devicetree@vger.kernel.org>; Mon, 03 Mar 2025 23:51:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741074704; x=1741679504; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pA6zLWQ+dYJkLtBz+wtBiNsIVYV44LsyhmBHfgcYN+Y=;
        b=X7jbZIFPqI8JAVpRk1d6NEU3kZGfohQ8AM0VeK9OaPWz0+8GMUkLao79JE7gko/6eP
         fsDak7rS4FvpICROy2ti/qV+TZcoFkgFkDpVAuzQv5jFXHzVRfUuVwJ1gmA5m4HVw/B3
         q+gOrNsJCljeCco2lg4gRvgtZKBWWuIRWOeapL1i8sO16+m4kRjWozHN07k4uJ8pJHBz
         VWtQks94MRZwp1tZ5oUYMKQz+bhqh0kJlRyiG2E8J63qxGrb/pjfiYPZHpIfkdkiyepu
         WvoCICCvdZ7tHGUPGzj6bpPS4MRuHQOsUPIIsqLD2YiRflyVvddQ0qw9yxqsrcqs0Jsj
         gliQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741074704; x=1741679504;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pA6zLWQ+dYJkLtBz+wtBiNsIVYV44LsyhmBHfgcYN+Y=;
        b=xAkVOzMwGxamZhD+P8rOlDNUjDgyZNfWS9AdqLxbj2dNxBWsouZtWEE085f8bynJXB
         IOBAQJvHYDs/xQEOFbYxqKPy2Pn6u4b0uFfjlVd383u/NyjfKjXq00e4ONufu9TX0u3q
         hMjpxf6+OphxRrGgCUl58wSI/2aQUHvY1xmljp5kjTW5ChcVxBNG1wtlJQQXBltGhyI8
         YSrWpThZjhZxgO9P0n4GZv7XNSvtpmmomuKmH95ceH9ZE7pl2zgrUt62z7No4sCrvDiT
         QNDUQcLgwLH65BX39Uet262tx3DPCI0U9J1KeS+VpxycuSuwba0JiSsO98AFBGvynclM
         XVkA==
X-Forwarded-Encrypted: i=1; AJvYcCXdao232fddDx0aG1mJdBG7ak24vQoWzFoB3i6jVg+2/7wUgCUuoEqiGO4pKn1s6ik6IIOtufwk344R@vger.kernel.org
X-Gm-Message-State: AOJu0Yxk1tGGDq+YVHavfinqRKmLy2od5qdYaHj2beQhuZntf9mO/bUx
	DE2IS8Q8DJm0m/GUbfJEgyUEv7zpuQO+bhPJbwj/hKWNAZGSf2C55qKfj/Gs9CiuOn5mIJzy2XC
	fC4FVgApnKZYOZlbT1yyY6L7foe50IEEoLvcg7w==
X-Gm-Gg: ASbGncsG9ME8fS3Tyu/Yck1t6dcDRP5gZSFyMOQbOnGUOZWI23yeyAZGh3/xftfnOUG
	tY/EO0diB+deFt3EGCeO8sI5bC/rNtJnhrHsgKV+2r1mrf4tOlqZ5Uu9XnsDWSIbISlE+utAno8
	vUtx9C02aiczlREE0gvZbumMJ8Ug==
X-Google-Smtp-Source: AGHT+IF2HnTvgALEagtidtwMTknG9FoykhqBphkMLjIu+urEhq+snaAKQPbxfAEiEdOYOfpEU/z8RIcNqZf0RTZQZA0=
X-Received: by 2002:a05:6512:1292:b0:545:c9d:ef26 with SMTP id
 2adb3069b0e04-5494c34fcd9mr5744703e87.46.1741074704091; Mon, 03 Mar 2025
 23:51:44 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250228064024.3200000-1-jonas@kwiboo.se>
In-Reply-To: <20250228064024.3200000-1-jonas@kwiboo.se>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 4 Mar 2025 08:51:32 +0100
X-Gm-Features: AQ5f1Jqk33uHsY5UV1F0bE-LoNlIC6DrZiXxoZsYoJWU763-1spk-ecprSEFCuY
Message-ID: <CACRpkdaELuU6XDKacOLsWAF8ncbudJ9Tp0jykAyf-NXRLjoSdw@mail.gmail.com>
Subject: Re: [PATCH 0/7] rockchip: Add support for leds and user button on
 Radxa E20C
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Yao Zi <ziyao@disroot.org>, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jonas,

On Fri, Feb 28, 2025 at 7:40=E2=80=AFAM Jonas Karlman <jonas@kwiboo.se> wro=
te:

>   dt-bindings: pinctrl: Add pinctrl support for RK3528
>   pinctrl: rockchip: Add support for RK3528

These two patches applied to the pinctrl tree.

Please funnel the rest through the SoC tree, it seems
it should all be able to go in orthogonally.

Yours,
Linus Walleij

