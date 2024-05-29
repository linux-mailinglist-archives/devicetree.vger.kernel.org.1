Return-Path: <devicetree+bounces-70243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7548A8D2EF0
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 09:51:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1FA91285C9B
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 07:51:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAC53167D9E;
	Wed, 29 May 2024 07:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WYWIY9BK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE801D68F
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 07:51:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716969113; cv=none; b=kwmXWndeUSuVdaMWkSShHQsm4LTuN0BfAmX4Gq3oE+ISFY0VP1r/HIz4LYNIKW6Gp7v4UZGqhF1okmDiRS4HrhxdF0CmjYjwF6lXSZkRKGLUpzcs4I2NFB9RNCqOAfj9rWKgVxLs+Tv4ElwukHnYXFgvMjNXFk3RZXXSh4VntCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716969113; c=relaxed/simple;
	bh=bBwx0BaHSsVNEUnMsd9n1ay0u8zPb5a85x6U4JpebKU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YDqSUzQbarOhILf+2RIkNdLtORd3Fd4GAKx/z+VFkslxuf2tTzPUtYsuYNNl06+LXG6HmcBl8+llYf5dnOExRmni54e0VD7tkFhdacibCrvt1aQR7chYxYCH8DO7ISDFRwxCtEwdj2f49h624yEzW81Ryhkow7JEbZpglzdvadw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WYWIY9BK; arc=none smtp.client-ip=209.85.219.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-df7c1a7d745so519820276.1
        for <devicetree@vger.kernel.org>; Wed, 29 May 2024 00:51:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716969111; x=1717573911; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bBwx0BaHSsVNEUnMsd9n1ay0u8zPb5a85x6U4JpebKU=;
        b=WYWIY9BKYcIwwFCqC3SGcqwfnrEJ5fj9kvW9Xl522qPGaJSp3rtnxVkBcABG0ta3wq
         kh4lYZu7qTZa6xFr8LTx4k1iFx+jWODim/5SZvP21d6+j8IQ55GgG26RSKZL3JVY0EG8
         GUWBiabA7+nEuNgVPJZcNNsq2PIyJyW0UR9UrCvixOExs+jeJi4vk5q4IUpK+DQq/QQQ
         R7OzpnZNK52v9Mh08MeBEec+hnk+4lSdbR8irAML2u6xDmoOBrU+U6g7Qp8GIfib93iq
         qhDNtFGA7k/bkKU3WBNvEqtYKVJG10e7hJRndgosXTxdx2g2AR74L1PGwyxAN0w4MZAL
         Ox3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716969111; x=1717573911;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bBwx0BaHSsVNEUnMsd9n1ay0u8zPb5a85x6U4JpebKU=;
        b=SFjCZCdjAVEDaSBKiY8xwCbFjDwIzeRsdZEWmzQvED5/0Q3PAfrjpWMmXTX72GzOwF
         4a4ctFDOpSY0AJRmZjFG4OvRRWfKAevfMSIDPjA1xcMoy9LVRuj6oHKEcvKl80KFnALT
         OqCBaxzeP/1UINgg8NSrNER5IKXMVSDXS2LmqkVnFlVYsauN/yvt+KEemq0UOvWJbxmF
         l5kcG2quaiP46seIMkilYJPc/cWWTEscvMgpZts+gXjFfI592DgksWZz28Mz6fsKEiyD
         2L4CcysYNSzssIjCZO0gLx32kp9fv+hrOAFVTsF4c1zahq2zqj84eGMzCJwljs/8nDCw
         6h4Q==
X-Forwarded-Encrypted: i=1; AJvYcCUVhiQseHwUAbQMyUW08Qjj4v8dCcZGo/tyPEqz7ZjvQN0sR1kdrGcA/YtnNL9nSxv39hp0He2afgXr7/rVBQ59z5FCu+HcMFxeVQ==
X-Gm-Message-State: AOJu0Yy985MESnDJuKlvkdXgeUAMKqXjD29IfgGUl/3Y4Lc3307u0KC2
	0Farn2jkM9YeV2Cneb0eWlntCb3tnA9Lpk1m+3B4Wd+KuMuTd2EZCa1OQ2sKAVaDu5R/e1KpSRG
	0y9+1oLR6kFd3pshC+JVZsWxrv1CRkRxRmrWMfg==
X-Google-Smtp-Source: AGHT+IEdZVMS/LUVMN/7x2vVzkEALKqMfrjPKeS0kPwmIxnN+yi7ZZ35SOE+hRMN2bsbin3xxgQTYy3/oasEFiDvJ0M=
X-Received: by 2002:a25:900f:0:b0:df4:e089:d182 with SMTP id
 3f1490d57ef6-dfa464946c8mr913477276.19.1716969111210; Wed, 29 May 2024
 00:51:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240527115933.7396-1-zajec5@gmail.com> <20240527115933.7396-3-zajec5@gmail.com>
 <f3930034-0cc1-4bb5-894a-72c809211233@collabora.com>
In-Reply-To: <f3930034-0cc1-4bb5-894a-72c809211233@collabora.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 29 May 2024 09:51:40 +0200
Message-ID: <CACRpkdbh+5CMAD6_gxrMspJ+uFCs7R0HPe_SAWNvfvyxyA=U2A@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: arm64: dts: mediatek: Add OpenWrt One
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen-Yu Tsai <wenst@chromium.org>, Hsin-Yi Wang <hsinyi@chromium.org>, 
	=?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= <nfraprado@collabora.com>, 
	Macpaul Lin <macpaul.lin@mediatek.com>, Heiko Stuebner <heiko.stuebner@cherry.de>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Chris Morgan <macromorgan@hotmail.com>, 
	Sebastian Reichel <sre@kernel.org>, Sean Wang <sean.wang@mediatek.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	openwrt-devel@lists.openwrt.org, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 28, 2024 at 12:32=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:

> Isn't the OpenWRT One made by BananaPi?
> In that case this would be bananapi,openwrt-one I guess?
>
> Is there any OpenWRT contact that can please help clarifying this?

Both Rafal and me are members of the OpenWrt project.

The legal responsibility and trademark of this product is handled
by OpenWrt, so they are legally the entity producing this board,
I think that is what matters for vendor strings.

Yours,
Linus Walleij

