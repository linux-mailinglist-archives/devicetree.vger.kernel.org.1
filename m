Return-Path: <devicetree+bounces-243466-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 16220C97DBD
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 15:32:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8C8013A39D7
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 14:31:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 327E531A049;
	Mon,  1 Dec 2025 14:31:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pFU59lxE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EFA5316190
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 14:31:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764599508; cv=none; b=O7KW/nQX9EktPJwYRx6suo2f4iDYVDK9b6U0wT9Kli/CYRs1NXM5CLBCvyOepVEDY/QPX32Rt+QLlZn0xp0h5zaOID1vKLjXhFvciu4BdS1Vi1CMSkad/awxXHYMolYyt58G54NGjeIWL1EtYCGBcibsjfWlqIt5d/ltMMSaZvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764599508; c=relaxed/simple;
	bh=iSzXnkL6CZ7clNjmcPJzJQEgcd8lgXcvAiTHRowiIsA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qDr4gb1gAc98nEtKomterWimroK2PgPVDDU3NYjNMaVmFxhfs+e2bpN5qL0dakooMCavPDlEnPuwa0QNp4wuquJUrIIZn2IDVli+gTMp9VhXd2dTZ9JXwFF5zpLfRTn/MZf621l4ZL6qoFwOpJsvmnXTDqxPyX3XebPFGfpoYY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pFU59lxE; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4779d47be12so34409725e9.2
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 06:31:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764599504; x=1765204304; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=P3Udye7A+1mJEIOEFZOxhVuAe/sJ9GEaxJR6U/sqIe4=;
        b=pFU59lxErcDBwDqOjO49K8/irivP5aAkyCDo0uSmltDPIm/fC0dYk+e2T2tMJafIfB
         nrr87ztMVEftj1yTscjflIAGLtAXGVpI2OcMXlgWgaQz9zSqwJSlguUd3Q//9WrG8tii
         vnD/JGbY+qrRDdsyI0meLaGoUXl+CX3P0/vq3LgM3SWkyJAq7ZPuk60zrxnTVk1Gq7Yf
         Mb7M1rLnLWqRLMp34kZdy7ttohhXAlO9T8AjwocipVGhhJMD7iIT2doDOg6XWqZV6c8A
         sA5RQOmrEurGDTpJxrbcavugG/NRv+vccBsfapNWuo7gTPj+1tdQTMfkvlVoOMvDDPyN
         2WfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764599504; x=1765204304;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P3Udye7A+1mJEIOEFZOxhVuAe/sJ9GEaxJR6U/sqIe4=;
        b=koCTDyn3T8/2EEZeyBQfbLfCTezqEbdizTG3igoQh5dM+R97iyY1SvKdRc0lOHCUAi
         30leFtQ9Uulc2u13qUGRrDt5ZBA8mywW4tpZlz4LxYir1m+vc0bhKTjO908mVUn4og3L
         lr+O6Kf4LDWlZGnIKRn/RQg9tX+AGe2p7SS19lv7fjsWWuutYiDfyXwqoS4oegitD99f
         6M0O0Sy4D8l2wUwhObZ6pqGNBzmoMX5OkUwET9rGX1k9N6qvbzfxZk4EFumUZepTem6j
         XNp5KfyxZshvCUGPAXSxqA3/yVaxNHPGU+KkLhyu/w+gwytdxHewSfsTzsXyiyJXxi0Z
         I9BQ==
X-Forwarded-Encrypted: i=1; AJvYcCXzQcaMSaU9Z0tY4LsrGbdhvjM0x81RXzeZekl5OxqlCNTNL3F0cTL25m1NT4eOKgSXhfxCdJOE1jwM@vger.kernel.org
X-Gm-Message-State: AOJu0YyBjxG3/iEgN3xrdnW9W4uou4bjsY35d/PrrD1fzUwJfzrJPDY9
	3HGQinfwUinWBwvDGL7/KUEgKWlO664a2/5wuxPH2+Ljy/jXrekzWnsATkMYiMZkmN8=
X-Gm-Gg: ASbGncvwzvN3rDSHykzlM57XIt2FFMmuSI3Lh3Zp9V65PV9eYVJTAq4Z/WSoeboYW8w
	w+it36rrD2l0sjZpPpYUuqYnnN6NBm33e9Ir7+zy7QBY0iEJ7X96Rq+DKZXR+9jlU1MBKYtsNKb
	he843cMitv5tty1/Y9eGiy1Pxnwsys7iBc8KlYit5Wo1yksn4cWT/f0OuIXkGFyEftw46cGkCQJ
	0K4v/xU7swk6YMu5Z65y0Z6oyvQulsWGLDLWZVjVzhKCt/o5ijXLrOrHVOhtbQnwsxF7WJeLD7c
	z5KYXihFEHt9pxU9W3lTDihw2p9nt5DxzwYcQyZHttP+4fnZbMCGa76d5CtJCqlqc+y40NflXRW
	dyzo2j3ArEAgjd6FzRtIw1MQURP1DqPIefG32WYZO5CwnbN1Jv+ZJREU46sH2SdRb/FgdbgoyED
	NE2+ypO01JJSONyKcF
X-Google-Smtp-Source: AGHT+IH6A6FJXGfT8Zsjwa2/f7hPiOGak401pIC2WoSIqlHjuQJJxsh60eESxFQX7d8Tr6L3Wxf8Ig==
X-Received: by 2002:a05:600c:1f8f:b0:46e:1fb7:a1b3 with SMTP id 5b1f17b1804b1-477c01ee3camr380965655e9.23.1764599504416;
        Mon, 01 Dec 2025 06:31:44 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-479052cf8d9sm154964375e9.9.2025.12.01.06.31.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 06:31:43 -0800 (PST)
Date: Mon, 1 Dec 2025 17:31:38 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Chester Lin <chester62515@gmail.com>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	Conor Dooley <conor+dt@kernel.org>,
	"David S. Miller" <davem@davemloft.net>, devicetree@vger.kernel.org,
	Eric Dumazet <edumazet@google.com>,
	Fabio Estevam <festevam@gmail.com>,
	Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>,
	imx@lists.linux.dev, Jakub Kicinski <kuba@kernel.org>,
	Jan Petrous <jan.petrous@oss.nxp.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Lee Jones <lee@kernel.org>, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Matthias Brugger <mbrugger@suse.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, netdev@vger.kernel.org,
	NXP S32 Linux Team <s32@nxp.com>, Paolo Abeni <pabeni@redhat.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>, linaro-s32@linaro.org
Subject: Re: [PATCH 0/4] s32g: Use a syscon for GPR
Message-ID: <aS2myhp8asABFyLt@stanley.mountain>
References: <cover.1764592300.git.dan.carpenter@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1764592300.git.dan.carpenter@linaro.org>

On Mon, Dec 01, 2025 at 04:08:14PM +0300, Dan Carpenter wrote:
> *** BLURB HERE ***
> 

Sorry, I obviously meant to write a message here.

The s32g devices have a GPR register region which could be accessed
via a syscon.  Currently only the stmmac/dwmac-s32.c uses anything
from there and we just add a line to the device tree to access
that GMAC_0_CTRL_STS register:

			reg = <0x4033c000 0x2000>, /* gmac IP */
			      <0x4007c004 0x4>;    /* GMAC_0_CTRL_STS */

But it would be better to have a syscon instead of adding each
register to the device tree like this.

We still have to maintain backwards compatibility to this format,
of course.

regards,
dan carpenter


