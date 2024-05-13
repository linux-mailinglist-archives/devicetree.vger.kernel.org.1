Return-Path: <devicetree+bounces-66762-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D578C4843
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 22:35:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A98F12842D6
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 20:35:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A863E7FBA1;
	Mon, 13 May 2024 20:35:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J3dIIK78"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13CD67FBA0
	for <devicetree@vger.kernel.org>; Mon, 13 May 2024 20:35:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715632514; cv=none; b=CvuF+GtHjDHqNG6jt3LZ7FCoM/UoWaAlsmaH6t3SInPPZr27JqJ9QvfGAF2Rmy3/cgn1Gp/VKI3v+tBi29gynyLEGvtFxl9N7zlWi3/d7iRXCc7hFEv44Rj57y3aTW1EvXs/k7hbtMl6wHo5jzGth+5M17b8At08jTC73CU4Ydw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715632514; c=relaxed/simple;
	bh=pTEzGIDxoUNXBmZiuvepDPcIKsUrMofBXWSemmO6LLA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mpwmTI1hz4QNJZAgYEZMz4q5kSxdXHCzSrS2CWhUMCqx7Y7mQLXqxsgtNvEXmd9KCEVifUYK2NNJNnBR4xBEKvCdVOaHio+vAdkPvvTjBpGNZLiF4Sd0Nm6IZYBJ84KJxaftEY0qWHr/vzGlz74shKOyI7m4wVFWI7P21mJlXTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=J3dIIK78; arc=none smtp.client-ip=209.85.128.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-61e04fcf813so54801957b3.3
        for <devicetree@vger.kernel.org>; Mon, 13 May 2024 13:35:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715632512; x=1716237312; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pTEzGIDxoUNXBmZiuvepDPcIKsUrMofBXWSemmO6LLA=;
        b=J3dIIK78u+pd/E929L3CJd9gnBPhFLpfsCBeuYZpEvkW7eWvTHcIODU0KUOk64PTgd
         5KPUjoQD6J3LwcD0pdh5x9P2XbXIESmJu5XflQszmDEVpOIRTVVfgQwHO6vrIYu9qTYj
         bYt0BYZssrtLjh8sj6mqOXJ9GTBKlIJBKe97mf8UosSMizy8j1G82ZRv+yR4vIknxgn3
         TyhfRRSa2x+KWqhxLDb0nlchsuPIu2yEzDaEv7rjuOewbAqwdeeOEKlRShKJMye1nK6G
         RlXeyNUkeeozBNbMzhu2BZpT1JcxtcuntQQDLUbZubIFbpQ9ZeGwZE/yoe6cA8EB3+Lj
         1/Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715632512; x=1716237312;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pTEzGIDxoUNXBmZiuvepDPcIKsUrMofBXWSemmO6LLA=;
        b=fdKtbOx4iEsHfJxcR5iv4Sjgo9MvTQbtm4d1U6OovqVyeT8MSLJTAuqgfV2LDP+1wh
         URFMfpZImLf5Q2GrNfTMIgUxiZH9VIRNkqyOY6y4XL8A7UxUf/Ekj1y1kZmJrNoqQsqA
         jIM+NNjeDrwsWG6o2Jo1ZWBNgnwh0BTbZ2sqCTr3LfMSDzrW7MQBdl/6r0dJ99wiCso8
         dIPgFci0klhD3OR5Y4nLkmLiMEmVbBjygjwTSERfF0GbkN1BmiCyF3yV8L2ezuZQGoel
         WMPFvVhhVsaX7jiCnJ6Wv7fm3stHeXgwjmZxkbMZkSgatmSOxzcy63buZWMnSLnWJGhr
         rdRA==
X-Forwarded-Encrypted: i=1; AJvYcCWx0MObUqdVdCjkC8wC+WVcOWCIs+0YVSncTyV0li7HZOZrRlb7VdTawmVeOSIPFnOOK2pPxDJ0d6WtpdkWJ2+AqiXwoqREJvarGg==
X-Gm-Message-State: AOJu0YzB6H1sxCfMtKaPd+SSXrRWg7JkDdx6p4UJMM+CVMLouRWWKFWp
	IqHpNI3y++Ay5WVAHjihavnunMbIgayqF0Nus0jgSAqxjk2xkW2HkCzWsFX4lgWCQ/K67dTtmB3
	9lEcHPK693zhub3zELMwPElH/Dk6idwx9iA5mjQ==
X-Google-Smtp-Source: AGHT+IGmJyPMVsbnq4yfAa6HqzPJ3VX1xQsgoe90edGz5HOQOSfJzFbjTDY3qBrnK5tvkbNi7jtaibG1icr0I8RbCiw=
X-Received: by 2002:a81:4305:0:b0:61b:349c:811 with SMTP id
 00721157ae682-622affc51e7mr108109127b3.10.1715632511805; Mon, 13 May 2024
 13:35:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240511021326.288728-1-yangcong5@huaqin.corp-partner.google.com> <20240511021326.288728-6-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20240511021326.288728-6-yangcong5@huaqin.corp-partner.google.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 13 May 2024 22:35:00 +0200
Message-ID: <CACRpkdZAwPH6J0FwCc8VfGvz6pn4_ZryMRhZG5QvdLavjvciOw@mail.gmail.com>
Subject: Re: [PATCH v6 5/7] drm/panel: himax-hx83102: Support for BOE
 nv110wum-l60 MIPI-DSI panel
To: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	dianders@chromium.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, 
	conor+dt@kernel.org, airlied@gmail.com, dmitry.baryshkov@linaro.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, xuxinxiong@huaqin.corp-partner.google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, May 11, 2024 at 4:13=E2=80=AFAM Cong Yang
<yangcong5@huaqin.corp-partner.google.com> wrote:

> The BOE nv110wum-l60 is a 11.0" WUXGA TFT LCD panel, use hx83102 controll=
er
> which fits in nicely with the existing panel-himax-hx83102 driver. Hence,
> we add a new compatible with panel specific config.
>
> Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

