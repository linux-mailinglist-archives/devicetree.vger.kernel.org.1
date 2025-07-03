Return-Path: <devicetree+bounces-192723-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 08AA8AF7A86
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 17:14:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4B02F5400D4
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 15:09:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C93D52EF9CA;
	Thu,  3 Jul 2025 15:09:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="H0HNrWDT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED12D2EF9A4
	for <devicetree@vger.kernel.org>; Thu,  3 Jul 2025 15:09:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751555395; cv=none; b=aTYOx3mIURqFnrkpsp4tZgJaiGgk38kzGzea044gGZzCT7u5fAUGj06qhVuBAxnLjZo1zGSP86uOSkJq2IiJGLtyVzW7DFxRkb2VdX464GYTj6DN9/2mqTPwhvOm0+2Z3Q4boEkpErvynDpkaRAW5x1eHsJxU9h/S4cIKk98xnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751555395; c=relaxed/simple;
	bh=Wsw3m3WVgS2qsRwThMHxPLJn/WaYhLMQQfJFrjeEZQw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eXONxgyWrJlsq1pBIEEIe7iWZCsg7yOEGvkxWxZTmIGif+8bOtDL4n1cU3uJksKqYZvQPeUs7NdAcEl7dT9mdCx9wn8L1/zSr/GxXrffpYv0CsgV4RLt/QTrLkbtcCUULrky+zmzspEplEmRXCPh5oZtmkx8BsG3QXO66dttgM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=H0HNrWDT; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3a6e8b1fa37so4986322f8f.2
        for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 08:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751555391; x=1752160191; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=N4xswAcOCiDxtwue83ObsxfZ7pep/Cfzt8s7Ua/cbyI=;
        b=H0HNrWDTAvxJpZcod/ekeOsdb3y3KQH++bQlyxAOeb0/2gb0tacPilTW8Ml64bTE7Z
         dBwhndgBO0gJKNTiixNuroxEPLKJ0yjdz4ZFo3FjYI3MjLjoaKZfeXf3iltfFVCB+8p+
         F8rPpNmENNVQsV5MOTgB0yaPr2R9rDSIgB4sZxenBv5aMBG1qniJgiYqn+iucZRofq0P
         I5yRrpo+QKgbcD54oKNxcsUw8rusdjkK2Am0IQDcMjV4yGWD5+yXqon9okDIFzacN3GR
         z9TwYztMhikWhdt7t5xlHXM2NnxBofv/Os9jbBGHbjNM8w0w8fl9VpzdiegftE9yOTz5
         R59A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751555391; x=1752160191;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N4xswAcOCiDxtwue83ObsxfZ7pep/Cfzt8s7Ua/cbyI=;
        b=Naxf4VCMA3cb62f15vRGOp+RPhVhd8wVp6S62TbwGhlofq+xIcYsDelEd59b+EXIjR
         t27Np4DYt7SGjbIUbFFeQgrxDmrMUvbTJ+BIKJSn7tEe/vyJY3aeRzywnHCb1usIwkui
         qCVjQhWHobpUrkjIfhIxF9+nCtanoPR5fTMjpMVHZ98jlowwoLxEt4UG5sqHKDIHA9n8
         mTlEffWKAis/uFV8cdsh+BBFFddWe60UlyXDWJ9sdsq/f950ni9MGmBqm+dffp/jigZx
         8qznbPsYW32wa8V9YTTOE5y+HFJKeFGFpMji9f3V8eya7p2qaeqCWti0Q7yJ5ZU9KRqN
         mCVg==
X-Forwarded-Encrypted: i=1; AJvYcCXIj0qUpAYe1jUxrsRmlq+6fdu3YTKMtxaMlM2I7a/7jCoVmDjppRs/7tGzlnIPU1CyjTYgNZViZ8WX@vger.kernel.org
X-Gm-Message-State: AOJu0YwmnvACjwitQqnqvSvSlhTu57mZKnYMBjtkBipfeClVuhBlU5iW
	5Xbw8SMeKuJn0QVBM8dH7+BxrDZmRfkfuj9n1UORXI5wYdLX3D/SXHuA+irke1xq5yN7qABLIil
	o1/98
X-Gm-Gg: ASbGncuwRtwIyQoAqp8OhtNx9pmA/YB14mYrbTg4p/H49HiPvA6F4/JmiVGbVZnqBv9
	BFx++CdZxEfROMd1wh1ne3yCY4KUzwZd94MXipQt9ADyM+weeUr2SAz3Z36MeboL9lNr5/w3Ove
	cSmS/JR2i3aHUn4LIZY4xu/dlA7SpT19NotLnEKr2VqdbFizBOUhwSnoZ65fGTYCDnHCkOZoimm
	ZRk49hnRsdg4h7zn4/UNtw3hLGxb8xIuZ9Ypu43nDEskdO43P910UMs18p1kpr4WqVxkibsmk4g
	BfFXvIhQsJqA/hHebcP4MHBN9fN5mRGsKyQVIpFg1+6/T5fQiKd8iZwmSkE=
X-Google-Smtp-Source: AGHT+IEmRzbd+GUqMa9EtpxZkxLu0N77USju2BDfKfk5a8aVAGwl1ML9f6DqwUQeD0xjX4cStIATAQ==
X-Received: by 2002:a05:6000:23c9:b0:3a4:e7d3:bd9c with SMTP id ffacd0b85a97d-3b32bbd66bfmr2181064f8f.17.1751555391014;
        Thu, 03 Jul 2025 08:09:51 -0700 (PDT)
Received: from linaro.org ([82.79.186.23])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c8290d670sm10712164a12.30.2025.07.03.08.09.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Jul 2025 08:09:50 -0700 (PDT)
Date: Thu, 3 Jul 2025 18:09:47 +0300
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
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 5/5] arm64: dts: imx943: Add LVDS/DISPLAY CSR nodes
Message-ID: <aGadO/7e4ndjK2Wg@linaro.org>
References: <20250703-imx95-blk-ctl-7-1-v2-0-b378ad796330@nxp.com>
 <20250703-imx95-blk-ctl-7-1-v2-5-b378ad796330@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250703-imx95-blk-ctl-7-1-v2-5-b378ad796330@nxp.com>

On 25-07-03 11:40:24, Peng Fan wrote:
> Add nodes for LVDS/DISPLAY CSR.
> 
> Add clock-ldb-pll-div7 node which is used for clock source of DISPLAY CSR.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

