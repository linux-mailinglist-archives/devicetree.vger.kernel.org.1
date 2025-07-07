Return-Path: <devicetree+bounces-193614-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 025CFAFB068
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 11:54:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5DE4316CB4B
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 09:54:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 489B128935C;
	Mon,  7 Jul 2025 09:54:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AfUibJVB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 798961DF27D
	for <devicetree@vger.kernel.org>; Mon,  7 Jul 2025 09:54:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751882067; cv=none; b=kGZ2NjaBeT9b9DLzsK2h6jlMTdO5sstjc66OzPFqkuOnfXvfZGgGJegiTR1xUYtWtabIXLmK3B6dM7sZiFxDeQN3vzxPRKcJZFT7eIGbQoX2latLQpWAt4Y/N911y8pY3e5hMygzZ3G3vs1TRt9rubc/fXfkN5BkXzffyP6PurY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751882067; c=relaxed/simple;
	bh=PMctWqdSUwyJh+vgKsEE3Z5HNCwNGQH1LRJi+dlS/aE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ag1Ct/VmcbhJ/pp6pIUn9XdKzjXwsM4X2ttKurKueIC5F9UyMM8xFu1Ln/AOoBFwdBT6Hj5hMl7SWqlSPbh/0wWjEI1EXlE3OeQHYPRl7G/J83rdPVPfRmXbNtSrex26Hmk8utt79YU5EYiXtAxS9TQgvq45fKCa3jueKKuiuVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AfUibJVB; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4537fdec33bso17427195e9.1
        for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 02:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751882063; x=1752486863; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WCkV6gDGOoOMF8igB/5H1As4Qg7c4viJIZ8RBw36e10=;
        b=AfUibJVBFIalQoFvAY+0wZdvcNMIJ6yijMzrnKhoO7uWtfTm4X+aIo8mzrUXN0dtnZ
         FPZxweitmEr7ZOUxnFEcu6Z/eK0ycSs8/MrluOjNRp3l8Bn+WzfRPwFotVIAonMpkdIb
         MrcJ8dLcv15/p9VsYjLoSup24sdxKFMPkw1NMPHtMxYXSJswRuWnNer8LHcyrijdHEcl
         ha6qCgJ0xHkuClyib65oy0SOQjg5rFySXfQyimPsvS/PWxvZMpsXIr8ZxBY+oZ5YAWEn
         paFUyhr8cqKTdTQOYHf45onAIfnGbtq+zfdCcz3yxRPI4oh0zDBlSy9z+Vo82v+7wU4i
         CU/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751882063; x=1752486863;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WCkV6gDGOoOMF8igB/5H1As4Qg7c4viJIZ8RBw36e10=;
        b=nK9nFdqK83kVJBdAA7ocouINIdfIPGwSQ6iXzbQRdEc52r0fFyMabuzwkdhp64mcFy
         XlkgIa/OGGL3wa//or4Hk/0RpbNcHuIQX1wtLL5x+EcjWjC4PxD+4XFY/LbkfhsYV2G5
         zO3/++UcUDWZuVUVuPh8V+kbmdhi4Ij0urfUX+kycY8XMr90hsuU+UcKF61C4PgIwIHQ
         fBy4zpR7i78CMRdxsR5rJRSOc5aeVgbQg13v9WNFe4wm1EPVoF2Nltus48i1JESUiRpC
         zsb2D9hQPvP2Nyb7Uye9GThmuqxkMSQoOyZLnAwFuxaJqzb9xc1u2onl5lUEZvDrB2Et
         J0xA==
X-Forwarded-Encrypted: i=1; AJvYcCVahTEusQhw8OJth4mYrFZMkGTFL0gLGt1Pd5dszWNUUHlOARxGlzRGztBJ8sPkf5p4hQDs1rt2kO1n@vger.kernel.org
X-Gm-Message-State: AOJu0YzNBLlt/qf7A9CKCfLEVPynpohO7qfuo1JwN3cXbAIb70m3vLFt
	pJkTAWsXGCtk17JzTcmI4nQCFpruA2dGT8VukFuxWVByncEvhNgC5xhWWCUiqg+k9ps=
X-Gm-Gg: ASbGnct6xClVdZHhHqM5Ozp/mQE62Fcrx2nJs7/HGcP1z6b+Lu9MkntR8W8FkVGeagF
	M8BW7Y1spboqgMd/1xwXntfGZv2PZ9dLVQ4gRyGl2D5RxpMsYadE5nho6m1YY1TyiPR3KUaN6eL
	cqsbGsu5izfxOA4uB7+ZO5fauD12yJ1rrNaARWOU8upyrhDJz23X7nO4ReXbLfMhgsUps7HOrG+
	FqUR2lKJIpXo7hEEW2C/1D/Ipui5IXV4cFa6CMgKrn+McgMrUfxFO+Xc6dVdlRXP0XaAbuqtSR3
	Blo6m6kmWHWAtbWXMrM5ruy39sCaL43gaXlYkLgorHWAFGLw6L9su2zy0+8XzADr9BOij2AKTDd
	0XMvJHshmPYlp/shuWuVt/7Yr
X-Google-Smtp-Source: AGHT+IGNA0zQonP2czf5X1Jge+pwADtgl7Io7cV8JOwQeqN86Oye2fUbW6LvrQW+jILiqb5VBqE7Pg==
X-Received: by 2002:a05:600c:45cf:b0:43d:47b7:b32d with SMTP id 5b1f17b1804b1-454b4eb7f3bmr96048435e9.25.1751882062707;
        Mon, 07 Jul 2025 02:54:22 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-454a1705ed5sm89436555e9.2.2025.07.07.02.54.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jul 2025 02:54:22 -0700 (PDT)
Date: Mon, 7 Jul 2025 11:54:20 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: wctrl@proton.me
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Sean Wang <sean.wang@mediatek.com>,
	Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-watchdog@vger.kernel.org
Subject: Re: [PATCH v4 03/11] dt-bindings: timer: mediatek: add MT6572
Message-ID: <aGuZTIP3vo9q7MMV@mai.linaro.org>
References: <20250702-mt6572-v4-0-bde75b7ed445@proton.me>
 <20250702-mt6572-v4-3-bde75b7ed445@proton.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250702-mt6572-v4-3-bde75b7ed445@proton.me>

On Wed, Jul 02, 2025 at 01:50:40PM +0300, Max Shevchenko via B4 Relay wrote:
> From: Max Shevchenko <wctrl@proton.me>
> 
> Add a compatible string for timer on the MT6572 SoC.
> 
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Max Shevchenko <wctrl@proton.me>
> ---

Applied, thanks

-- 

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

