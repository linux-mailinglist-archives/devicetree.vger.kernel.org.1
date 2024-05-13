Return-Path: <devicetree+bounces-66759-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CEDA78C47D4
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 21:48:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0BE6C1C2325B
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 19:48:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3ED497B3E5;
	Mon, 13 May 2024 19:47:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Qw+C8GQZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1523076C61
	for <devicetree@vger.kernel.org>; Mon, 13 May 2024 19:47:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715629672; cv=none; b=F674Kqr5tScQgIaZ3KVweyi+0I1xN8JmPac7itu0ikyNZfMlJVahHYgD9/AnPWvF8Xf0mb+hlTjHAg/idq4iEc+VfmA1lZ57HZSI0tRissvdhQWiIXzJXPjwhAqgn02JEjSUCvCkJwd5NaQfkESO5hGpICV+nwr8TY8pI0x4iF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715629672; c=relaxed/simple;
	bh=z8Twj3N13mhdW7sEoJ5gZMRJ0MxEOmkRN+36+9pgaRE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Hu4ZAWD9sOD/u2NJErO/GbBucuzFqQP43d1D8B+fZMW6Tk/A6Sy6ss6C+I1FydE8AMxSH42ohDYzgbJGMrBOQNDTiHe/cAhH2m+MwOp8hKHjfTbCjNOYsM9h41nxdLhyoURWlXJ7A5BivDQR5eVoZgGjFVWaB3TMWSmFfsRp3OI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Qw+C8GQZ; arc=none smtp.client-ip=209.85.219.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-dee9943a293so851921276.0
        for <devicetree@vger.kernel.org>; Mon, 13 May 2024 12:47:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715629669; x=1716234469; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DUknfNXk78tNoNSV/FKbuOTqBHWDprugew7p/EYSaSg=;
        b=Qw+C8GQZR1kRCheFb/tzuinNqtjxndae1jJV2IlZxLZpGFwyByfWdboBhSfjd0+oHO
         ikkCEN5sol2iEij/ZR6hBQeVdAx0x/jp/M6MZtw/aopXSUHclN3VOgTa/1mHYPyX46IB
         XfXwoCSFNdn5HYEAht3xnYEzDVYG6iFvNt9t0doukTC+Je6uX2G0FyJD7MJoS+iVxpXA
         HueoN2BJMXtuwUjarm/049cypgeZDEDWwgunNoqv0uu+IdTS1gK8L1h7ODnV7Mx1qL92
         AQ941Fwebiia9A7Kt8nYVTfVYTDYA+l5NDsE2r96fVpPURxOph0qDDoBP2g6W7Ts3XXn
         HAmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715629669; x=1716234469;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DUknfNXk78tNoNSV/FKbuOTqBHWDprugew7p/EYSaSg=;
        b=saqv1vu6bld0IwJyL1iWrROZj7TnA22QeraN+zwcGikeG/hGEr8GngtP9jmoBdFXfU
         WYja5Pxleoafx4aW+FyGojFP4YB1d2EiuvdAwu/nBN5Bu8JQw7WjvPuUA2aK7dGqLjr7
         SnUY9n7WGC/MwkuGduXlCY2inTQaG4iYJOUB4ik8b8v6cw8p6an+Ehew86hsEo4Yo3O7
         Q61dx+xOMuLaeMMrlC9ubUiOlrbrBpBdux0qEMuy7s2JYQZmXpnpuA6mc/CPDSSAdoeM
         ZYuOPj0BP+DqyLXVo6A0msC8ZuqkAiLyEGc8RjQ2gzP6AVVXaj2TyejkrrNqXUyx6DOW
         9XoQ==
X-Forwarded-Encrypted: i=1; AJvYcCU797+hUgh2AaXhMcQAnbefD0ZktIHpBRKOziex20eeYOE+cEfUPaqJUkJlqdjBhXSbKl+ZBtQKRsJzVdRpZeaDeOixyF3+aRsdNw==
X-Gm-Message-State: AOJu0Yyg8iiIGW0TvDcd4LMsbdNRqdpI5ZmcS5rUUPrUq9uEiBjTyLOa
	qYche/2sdKOLRiDjGoKxlXX33wlfjtRNiCQv62FiPB6AW2D5tvoEbImliFEDt2m4Xcu9F2jCJLh
	lLrzKe/SojIVUK1eYrh1iLC+ZfaZ6K4abzRymFg==
X-Google-Smtp-Source: AGHT+IGnYYmt0EOnAPY00AN8x9tLJNXpR+W6Srvl1WDn62aWdwxJ3ONetwGbkGS/UdOHkoVbG62q60/rx6bF8LH6+Ns=
X-Received: by 2002:a25:f90e:0:b0:dc6:ff32:aae2 with SMTP id
 3f1490d57ef6-dee4f3356e2mr8656703276.63.1715629669087; Mon, 13 May 2024
 12:47:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240509-dt-bindings-dsi-panel-reg-v1-0-8b2443705be0@linaro.org> <20240509-dt-bindings-dsi-panel-reg-v1-3-8b2443705be0@linaro.org>
In-Reply-To: <20240509-dt-bindings-dsi-panel-reg-v1-3-8b2443705be0@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 13 May 2024 21:47:38 +0200
Message-ID: <CACRpkdaE0tMQ5=pSofT9pGVcSBLp=dm_7WedpO2EnkbP1w+08A@mail.gmail.com>
Subject: Re: [PATCH 3/3] dt-bindings: display: panel: constrain 'reg' in DSI panels
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Sam Ravnborg <sam@ravnborg.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chris Morgan <macromorgan@hotmail.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Konrad Dybcio <konradybcio@gmail.com>, 
	Del Regno <angelogioacchino.delregno@somainline.org>, Heiko Stuebner <heiko@sntech.de>, 
	Luca Weiss <luca.weiss@fairphone.com>, Dmitry Baryskov <dmitry.baryshkov@linaro.org>, 
	Shawn Guo <shawn.guo@linaro.org>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 9, 2024 at 11:43=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> DSI-attached devices could respond to more than one virtual channel
> number, thus their bindings are supposed to constrain the 'reg' property
> to match hardware.  Add missing 'reg' constrain for DSI-attached display
> panels, based on DTS sources in Linux kernel (assume all devices take
> only one channel number).
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Looks right to me.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

