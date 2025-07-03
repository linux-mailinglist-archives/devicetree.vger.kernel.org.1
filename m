Return-Path: <devicetree+bounces-192725-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C8FC1AF7AD4
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 17:18:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4606B189D84A
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 15:12:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03BC32F003A;
	Thu,  3 Jul 2025 15:11:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Bjq3PSD2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278E32F0034
	for <devicetree@vger.kernel.org>; Thu,  3 Jul 2025 15:11:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751555469; cv=none; b=TD43nZgP19n3jHt/aw/iHuPMAU4jlzzhcUWmBqMcot4QGxM4ksQHhsYsu/xtH5Jrro6GW8FiajG60ubAAfz16bKWlKi/CsLmvtoApZnKtiJtmnZ7ijoW2NkLx/dWv/fHRA2V70f876VkcX7NVQOXVbRtbvCZqfa5Ew2RLVhoHdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751555469; c=relaxed/simple;
	bh=QGSsl/5Ibq08H1mWTYhreoVrbh0mx1K0v5BCTNTA59s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OXauEKveO5A7p6C/lYhsS+kPatc9T9mxidnBKuvPwnyCs5HMp3edqNbj0N7eQfnGziV73Zz7Dx9aUMQo1qXKB9CBprjRgMgAA8XmR71XUno0VqBzOKzMTPqXeI1BfQ7yWAx08zyShsE5aPQ7kAbjJsQV1FdeYut10gRNPkiKt+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Bjq3PSD2; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-60dffae17f3so8592051a12.1
        for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 08:11:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751555466; x=1752160266; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AmKfwzTfOhC2oXAq+cEF+jaaYpcNa1VuxJKcbwQc1W0=;
        b=Bjq3PSD2a7xMxFiM94OzmodQ/ejrh4n8rcnVYdMtSe53e9RMXBKKOASjrQoBN7+dx2
         Fd4WDw81Ec+6F3KrQjQEwDdvcmNKmyAg0Ds2iQyL9kcqhxaY8x5UaWuh1jqcAb7Bp39k
         8tn/piKtp/e6HoQemoGc7Jyhu8OuHZrsGzC/vr0IITkGJDHDKDyUjDm8J8W5QsLm5bOa
         8pXQgL5C4x68veywqBp2QpOCi3KjMQ9XBokwkm6dDMh0ZEfaAR+FS8iSyCzgLufKfpCd
         gfMC2ktz3S7YJLPF7+s01nUa2IPijmd5dljtg4xZFnZjfik27+5Es425KnAh4jHagi4d
         oHzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751555466; x=1752160266;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AmKfwzTfOhC2oXAq+cEF+jaaYpcNa1VuxJKcbwQc1W0=;
        b=rwhxBlauH5S1EoEHQiogLs7OVwfUrTYCkzwqMX8FfqxBuz7L3TfyrsQRuchLkr02Rf
         rPl894WyZnwa8nA1KamkhUJ9bpBbwjyKUD+BvQZrzJKLxJbUr6OFU4hezBDqTwWinVZ6
         HLkhJf9T9DJEYKEqz8OArt6r/ItnV00IDlIXSsW9xtetTkrrh0bhUv+7sYE3GmwbeOnC
         G9eiiQLTE8/cKdWx7evZYRI505cOvJ9kQ7Tm00Cl8IeVZAkuc2nvjwIiJ5ITtFBxukN/
         0JWTw34saJ19f9cul6k/ZJUc95iVkHG7TulHkUFQNrRxo8dZ6HPSzfu4L0DXHtCmLsQZ
         T5JA==
X-Forwarded-Encrypted: i=1; AJvYcCWR490NVZcrT6ySL9LByd3rTjn8sFd2x22wrBVdB0Smq0w/OOb+2irnn2vr09sj0kw/N0mKUg586gyx@vger.kernel.org
X-Gm-Message-State: AOJu0YxtNTLuWNB3UgYcTxV3MfOweC28qyTsL87SHs2TiMUmWIRyevaS
	s5uT1WMdUZJK9QBT3JYjekIsBbZma9QGmti9EfLywkWd+8ZgWLbFqeRk/mmTRIWcakg=
X-Gm-Gg: ASbGncsKLkZMKuRA4vcbMFWlTNfC15AZ7olHpapsW4u/XY+0bHwLGSYzZKG+9azmI9C
	GsqiferU1PLsb+w8oPYuMbJsgUi0CRWA5u7ImkQuLhsIPm+dcz+LA89FONmxFBf1J3zqA5qUB9x
	mcHYrdXuTrOJsjR9qYQ6mTAsMWwyst50MTFbTgSGNkzSXQnySCAfdzvkhAliZZkr7zvOP5J6Sen
	cJ+wrTmnH0NmnvcIOOW3BGnm0xdK1wfOHSyBRjkrcHy2/8a0FGIVHsRTlVO92eN4Umak/rGgCrh
	iOZf+WjIz7v2EHWRbAYVGj9NYv+YOKes2DPNTwK2xcJyIwVTisaWvcaLz4I=
X-Google-Smtp-Source: AGHT+IHzpMVd5ZdMJKAden1BEk7leNnkWoWJcBZRiZrrIpoemL5vbs9A7FF6CC6wG99E12R7ltKp/Q==
X-Received: by 2002:a50:a412:0:b0:604:bbd2:7c88 with SMTP id 4fb4d7f45d1cf-60e5350025emr5522209a12.26.1751555466332;
        Thu, 03 Jul 2025 08:11:06 -0700 (PDT)
Received: from linaro.org ([82.79.186.23])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60fbf791d06sm258603a12.2.2025.07.03.08.11.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Jul 2025 08:11:05 -0700 (PDT)
Date: Thu, 3 Jul 2025 18:11:04 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Peng Fan <peng.fan@nxp.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Abel Vesa <abelvesa@kernel.org>,
	Frank Li <frank.li@nxp.com>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Sandor Yu <Sandor.yu@nxp.com>,
	Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>
Subject: Re: [PATCH v2 3/5] clk: imx95-blk-ctl: Rename lvds and displaymix
 csr blk
Message-ID: <aGadiPWIKbqDVek9@linaro.org>
References: <20250703-imx95-blk-ctl-7-1-v2-0-b378ad796330@nxp.com>
 <20250703-imx95-blk-ctl-7-1-v2-3-b378ad796330@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250703-imx95-blk-ctl-7-1-v2-3-b378ad796330@nxp.com>

On 25-07-03 11:40:22, Peng Fan wrote:
> From: Sandor Yu <Sandor.yu@nxp.com>
> 
> Rename i.MX95 lvds and displaymix csr blk drvdata in order to add
> support for i.MX943.
> 
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> Signed-off-by: Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

