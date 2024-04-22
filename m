Return-Path: <devicetree+bounces-61362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C42008AC660
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 10:10:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6DDB71F218E5
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 08:10:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAAF15028F;
	Mon, 22 Apr 2024 08:09:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="rNa/imUB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247755027B
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 08:09:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713773366; cv=none; b=uaastsNEsJOrVwEisQSGD+gNdMwlNoW2SsqwKuTvo13xqqywQXA/EPL75cgXbTO1fJtsVCj1plL9c71QhDDgajxWzIFP+YPxAK+Yw7hJ2X2l9b1tI+2iDpsbWzefmJN38uG/e3kAntWcTLOsXLBRxhj1WVEqKKxq9PHop3fjPdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713773366; c=relaxed/simple;
	bh=YIO8cDM25qQNZ4cv/ubwGqUQhUGYfoqZi8Ig4uTr/Sk=;
	h=References:From:To:Cc:Subject:Date:In-reply-to:Message-ID:
	 MIME-Version:Content-Type; b=cOtWL9Aj3Fc0EKr2a3irQuJDLOQKRlFqdoIXmHa7PdBwf6s58C4iQ90+Ip7WnqJU+JGblZ0WQ2aCeudt0vtLxI8FQiifAvKnpy8++bUF36YvcnL0hxXkx3hlSN2nxEp7s1VpHe6TmvzbfNMK5226KtBT+VzSs67vVcIdupZjcwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=rNa/imUB; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-41a70466b77so2556605e9.0
        for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 01:09:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1713773363; x=1714378163; darn=vger.kernel.org;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=G8Z1W9cBwZwFr+xw5xhgBlfEeDfYZ9v69oNkjrxgbOY=;
        b=rNa/imUBVTrJ1RpiBMNOyDhyno+kdSij38C3WhN3YthESsBc7q1ejUCThwaSIyEA8M
         3jxxiiKSuHzbzLHrqIOJJWAY+GLZYruemAFPOpjojPSRZzliDUjTqOrWJLl14cPyHePk
         y0zxyyM1eq32qzYzgTXxTGfF2twiTDgwY68ri5ImEmreWgaT+FqnLfwRUBtQhFVoteLE
         PfsH33517L17ISJl/wFOZx34R/HuhIERhKKF2NZb2Kn3NmQnlo9ibqdVcQtqVObrLyqU
         RjkCJQ7RKfbUgNRsCvh2Jyn3xx0e7g8U8nQJzXTy7sNFmKOgbWWf6elrzMGf8PupZge/
         69Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713773363; x=1714378163;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G8Z1W9cBwZwFr+xw5xhgBlfEeDfYZ9v69oNkjrxgbOY=;
        b=R0iDAeFaDgcaBi0FQbJl9PXHk8k61mVoC7gMWWE14WLQOjQ7bjehZH7GxdX7QaGIrI
         Bj7Zn95liM24YDHFzXMfESMgPV6ZILV5e/0YH6nD/+0k/WHMc06xbxz1Rt0pwpsP9RHd
         fWAyOW0Fjv1PibwHVo3RNo6/dT1tO2waDn8nEfBpov39z5Q2IjNxrxjw+1bzerp757Xz
         DF5RLl5yZ9aeALgkeOEtjwRRW5aIXYWtX2H16+Pke9HYNKiWevZLqvV/sDY1GDiRjsKs
         XIF282jIus5f+OwsJ5ruqvzM0WClNVRw7pJAQ2yRPpKwbKpl9nwIQ+QcQKnKNMmsEeVy
         aWZw==
X-Forwarded-Encrypted: i=1; AJvYcCXHPhC/wrHfa8CXdA+GoN5gkiphrxut7+W9BJ9TOWo219SbkP/CPqTYyC+T7q7YfJxkNcuxIF6Y4F0d1clYJdtf/KmmRQYTAP9Vww==
X-Gm-Message-State: AOJu0YxXkFPfsOaBoZaEI5qLEk5saVJzOJN+/l9BgrfjggNYvrHOLIqG
	lQkX21HLxPSIQgpQzRTdlqPg3LKQmApUMzKZpb3SFmrWHAIcVL3yQRvYd7TaH3M=
X-Google-Smtp-Source: AGHT+IFcBHuQrYYsaNLbUg30qmwUhwRzvle0l0p4jwsnHIaO8PpRDz4ckky8oOJr2gRpkpQzb3NY4A==
X-Received: by 2002:a05:600c:3587:b0:419:5c4:b430 with SMTP id p7-20020a05600c358700b0041905c4b430mr8846265wmq.14.1713773363290;
        Mon, 22 Apr 2024 01:09:23 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:a619:ccb0:5f40:262c])
        by smtp.gmail.com with ESMTPSA id d5-20020a5d6445000000b0034659d971a6sm11274074wrw.26.2024.04.22.01.09.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Apr 2024 01:09:22 -0700 (PDT)
References: <20240419125812.983409-1-jan.dakinevich@salutedevices.com>
 <20240419125812.983409-4-jan.dakinevich@salutedevices.com>
User-agent: mu4e 1.10.8; emacs 29.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Jan Dakinevich <jan.dakinevich@salutedevices.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jerome Brunet
 <jbrunet@baylibre.com>, Michael  Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob  Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor  Dooley <conor+dt@kernel.org>, Kevin
 Hilman <khilman@baylibre.com>, Martin  Blumenstingl
 <martin.blumenstingl@googlemail.com>, Philipp Zabel
 <p.zabel@pengutronix.de>, Jiucheng Xu <jiucheng.xu@amlogic.com>,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [RFC PATCH v3 3/6] clk: meson: axg: introduce AUD_MUX_TABLE()
 helper macro
Date: Mon, 22 Apr 2024 10:09:04 +0200
In-reply-to: <20240419125812.983409-4-jan.dakinevich@salutedevices.com>
Message-ID: <1jv849akel.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain


On Fri 19 Apr 2024 at 15:58, Jan Dakinevich <jan.dakinevich@salutedevices.com> wrote:

> This macro takes into account ->table property of
> 'struct clk_regmap_mux_data'.

Useless if the interface of controller is fixed.

>
> Signed-off-by: Jan Dakinevich <jan.dakinevich@salutedevices.com>
> ---
>  drivers/clk/meson/meson-audio.h | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/clk/meson/meson-audio.h b/drivers/clk/meson/meson-audio.h
> index cbcdbd487d4a..1947c6cbf233 100644
> --- a/drivers/clk/meson/meson-audio.h
> +++ b/drivers/clk/meson/meson-audio.h
> @@ -17,9 +17,11 @@
>  	},								\
>  }
>  
> -#define AUD_MUX(_name, _reg, _mask, _shift, _dflags, _pdata, _iflags) {	\
> +#define AUD_MUX_TABLE(_name, _reg, _table, _mask, _shift, _dflags,	\
> +		      _pdata, _iflags) {				\
>  	.data = &(struct clk_regmap_mux_data){				\
>  		.offset = (_reg),					\
> +		.table = (_table),					\
>  		.mask = (_mask),					\
>  		.shift = (_shift),					\
>  		.flags = (_dflags),					\
> @@ -33,6 +35,10 @@
>  	},								\
>  }
>  
> +#define AUD_MUX(_name, _reg, _mask, _shift, _dflags, _pdata, _iflags)	\
> +	AUD_MUX_TABLE(_name, (_reg), NULL, (_mask), (_shift),		\
> +		      (_dflags), (_pdata), (_iflags))
> +
>  #define AUD_DIV(_name, _reg, _shift, _width, _dflags, _pname, _iflags) { \
>  	.data = &(struct clk_regmap_div_data){				\
>  		.offset = (_reg),					\


-- 
Jerome

