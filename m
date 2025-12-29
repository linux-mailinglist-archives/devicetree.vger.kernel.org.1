Return-Path: <devicetree+bounces-250302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 72FF4CE82E8
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 21:59:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D38D23000B50
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 20:59:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 171D72E62DC;
	Mon, 29 Dec 2025 20:59:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="geKKiV3O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B97B2D249A
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 20:59:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767041945; cv=none; b=OJNtId5eg4N09k5xM74jmHX+cQrJPSutjcoU96l+U9Pjw7cdlXg2q1zMYH8MpSP0VldHk7B8WfaPNhEjmqprQoVZMAUfkfzhbmA4ot5r6eYDkttrABDC8GxNMXSEzyleqNiZWhnhi/Tentchi82yBbUmmD3rjC7PnYAxBc5yG20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767041945; c=relaxed/simple;
	bh=GSEUxsESE1/8GTMWfz0hBGHd90EMa8Seyja17ObPhrs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kQVxwRpt85xFSFIekIM2sVPBN7qJp0RvmPsTod1H2yq8B2t2/3bG6ecqvvQjBzVcVaokWOW073Neb7Bv/4W9a5VVrTWtp4EarfnLJ+TKiZL7VlSFVSbIkFojJPbXK9tY5HlTN3QyrK+pCr+X/Q1K2lxVcACxrvZt5PxqiTGsPt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=geKKiV3O; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-42fbc3056afso5060488f8f.2
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 12:59:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767041942; x=1767646742; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mT72sLXnNV3V/jTjLvqc6CW9rW/yO+T8uURGolooNUk=;
        b=geKKiV3OiteLGo1VBCspIlWgfU4HC/ji5zLTiEc/FnE6Y39F6USRVJnQ60LYssrRSN
         eFQD6/ro3l/QY7bIIEs6tNL9fZcMk7NkBarogNL8VUNAfm4hOeHQkAH7q8T48qP9qPoR
         BmjfWr0yugNWwDS4tF+lAtXcEdNIWfPr5ASneOppG46X/kJGwh621Nd2e2IBChYfuaci
         zBeFiNL+pIxJOjE+JquPqzKJvOQ4RIvd5UXJda4Q8zpbNQykkQndkao/d4yR1xz/+EIE
         ERW4OJvH7ESoMsWyyxt63+XUmiyuqVBzbFfHWiEJt7Qyqkvc5JH1uCpftMUHowbJHGLD
         0Ctw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767041942; x=1767646742;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mT72sLXnNV3V/jTjLvqc6CW9rW/yO+T8uURGolooNUk=;
        b=oK15127SSGmDseEm5L7B7Vhxfb0WsmGfMLrtXMT3hE77yzMjG5VRJHWnuHDO3QSk5y
         SOnggVFnDU2HBjCQOfzX5VWhT5zlElK6DXbyNSu8c20o2LWpzTdTrTKQi6f6+3l765gk
         bmBINs6baWry6Zs4uDkrqRTPL1vGJ/dPeRK6l/X/go0zFgrNuuP0qqZ2x+rAH1UfqLfJ
         gUT4Q9Zn8LJ+ZoXA2gFyLD5NY/q8biAsH2mUoqMvJjU7vsjGxxFigOBDepz2sdnwcPmY
         0GPVNVFdmBnsIU8U6WQuOPFy9XX485vt68ou2zLUFgjgKrVjFS4VBzssFkGf90B6p0nF
         i0Kg==
X-Gm-Message-State: AOJu0Yw52F5xYCb1CZDKDy0qo0Ip7+MMrikq9GNMt6boo5cCBoZLTBSr
	nhWTiWo6gb7KcEX8FjgKJNyv/WfzctQXjmZYqiURiRZsjZV+4wgi9W2l
X-Gm-Gg: AY/fxX4UuYaIVQ8f8EHv5qdkYvmuJgDoquWULpTQx36VBIjDhksbVdxc3W6pjfpj9dX
	TxNEZP0kDFJxhXzBSPAvoWkjMaQXkRCvfR7Ihmv4xzgLTNjKrMdlPpj4EwjBOGJ3SI/K36Y+cnj
	nH4AMEKt59a+D77n07MhkYazCSWD1WQYS9MJrCCCww0tf7+zOoDU2ApMUG4xFIZaWbdCgET44MM
	fce2TZw9dWl8gQaAo4DNR25b/F8msN9p/OCqh8DRnvfIYSemwkFENIp5OonH3wd6n7k6P5HzOkr
	rspWN6lqO5yBK57leo249FvfO1+zU3Z+YqsL2dXW2aF2vetSnAeREktdjztbEwpSP8rFxJJeqNH
	uEFBJw7usYOtEjCsvnBe5svnRgFqsRfE92E4uvZ9JaOguLap/+rr0xdoxVa6xLcf3ANWovJNpzr
	eZube9TLeSbMX6aHgUJWL/hHcnRNvggkBZwQVbm4TmVdqTslx6CIZpbvflcVxcIAm28hl1cKqYE
	qFT3BkkU398WS9PtooFfJ0GnaM=
X-Google-Smtp-Source: AGHT+IF+6dfGz8jAW2jy8V3d7wl/tvhBrzoFF1KjAPTCU32EzmQO5hO9Wctj+4CVYLo8hx4OP+5hSg==
X-Received: by 2002:a05:6000:186e:b0:432:4c01:db00 with SMTP id ffacd0b85a97d-4324e4cff0dmr41189328f8f.27.1767041941354;
        Mon, 29 Dec 2025 12:59:01 -0800 (PST)
Received: from Lord-Beerus.station (net-5-94-28-220.cust.vodafonedsl.it. [5.94.28.220])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432613f7e6esm53784810f8f.21.2025.12.29.12.59.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 12:59:00 -0800 (PST)
Date: Mon, 29 Dec 2025 21:58:58 +0100
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Primoz Fiser <primoz.fiser@norik.com>,
	Yannic Moog <y.moog@phytec.de>,
	Markus Niebel <Markus.Niebel@tq-group.com>,
	Josua Mayer <josua@solid-run.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v1 3/3] arm64: dts: imx95-var-dart: Add support for
 Variscite Sonata board
Message-ID: <aVLrkqgjrsX7jfYw@Lord-Beerus.station>
References: <20251229150421.57616-1-stefano.r@variscite.com>
 <20251229150421.57616-4-stefano.r@variscite.com>
 <0afc0945-af65-410d-8556-1d09792981cb@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0afc0945-af65-410d-8556-1d09792981cb@lunn.ch>

On Mon, Dec 29, 2025 at 07:24:50PM +0100, Andrew Lunn wrote:
> 
> What is this ethernet connected to? In the commit message you mention
> an SFP? So i would expect a phandle pointing to the SFP cage node,
> which follows:
> 
> Documentation/devicetree/bindings/net/sff,sfp.yam
> 
> 	Andrew

Hi Andrew,

You're absolutely right, thanks for pointing that out!

I mistakenly thought fixed-link alone was sufficient, but after reading
the sff,sfp.yaml binding I understand the sfp node is needed to properly
handle the SFP+ cage and transceiver module detection via I2C.

I've updated the patch to include the sfp node with i2c-bus and
los-gpios properties.

Sending v2 shortly.

Thanks,
Stefano

