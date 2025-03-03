Return-Path: <devicetree+bounces-153469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B58A4CA17
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 18:45:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5ADDE188ECF4
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 17:41:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FE97225408;
	Mon,  3 Mar 2025 17:33:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="so20Bmax"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBE2F2153E4
	for <devicetree@vger.kernel.org>; Mon,  3 Mar 2025 17:33:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741023218; cv=none; b=PsbKFBAG5+WAYqtWnWk7qohEo5/zTisRnBfxeoMy4qa3wZCJN6mbbFmF3ikjsdFUn4q4keMmh7w/hgorCR+Q4NeiJUHQDHrSO6dQsmiX2Ewn+V6YMFi7wNsPTUpibVLjlCscEszEtVUBogXpXAwv6Y4ZYZmzK3gq8FSUmXIJaNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741023218; c=relaxed/simple;
	bh=tsWu4EeOlFGbDPeji246ZamPqZJ7HH9+BLmwhTUya04=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=osp0UFP8dYWT1OZVp9ewyJj6xUz82uX4CREaa5zaQTerJkkAZq+YJkLPocDuvOlbiIHF8Ne+VvLx4ZV4bLZykvdx1EgxM+T4Vw0ANA3m9JsB5/nBOqHc8HSS32UuDHvkC/nMcfsyfnrtw1wAWUiTYcp6OWxd76mS2QNPoiNLgrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=so20Bmax; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5e4f88ea298so5726047a12.2
        for <devicetree@vger.kernel.org>; Mon, 03 Mar 2025 09:33:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741023215; x=1741628015; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OUhmolDFCbsRrygEyjdB/SNREOTYrW2sTqcKH1rfaVc=;
        b=so20BmaxS3R1WIVvSEV/e8XvADVcsNF6NJz4MyTVmbrdpefWCpMDotaMbQJFUwxfdj
         /Ymds56sieslKu+hweaCQRPpKSK99YFfwt345cQz2XGj6w0H2Fe0jbQ9m/uZNXqOQy9X
         dVJteso6CP8WbwabZxljwj8Ci4a0Eze5OG6iEfFgdJNJciKyFCnyRYRW2lF8QR2fj8lI
         SVU9C8Sb957ca9srKOEiN7Pa15mUgb9yuw372lsYB78uq8q2lJd1eUk0V7ad1yKaPLcp
         T2jpZn8IYDCkLUYn+Wp4YsnpQjRQrjkWEB89llgWy1NsXahGSK/h/Muht+TVsxJ4T187
         AIvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741023215; x=1741628015;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OUhmolDFCbsRrygEyjdB/SNREOTYrW2sTqcKH1rfaVc=;
        b=NmNUISRO1FP2JBBWfcdXJdyg5WiXOSfno1YCkTZo/E0St0WAPxMSSyPpMJP3SvzFEi
         ZJ8iLXTWEb5LIgdBc3X0B1SpK3igp9USLJP/wyyUt5N2xv2OI4cL1FxPYZzVntPpy7WK
         Ipq74DU7J1VpFda1RE74faWZkEcZn0F1TiWtmdmjmL92WNcQ5Kb/VRrD5hfJe3fyZEyU
         urYoxi1faI2buIAmMcDTWEi4J7t6Y/PmH1SA4LocMfDi9uiv+d+PrkZHMlUADP49AYcI
         q6A3HfoH7hOLYpHx7+3lvN2DTXL+qb9+fMleLKc0JMFjRWu99U9v5yYRLRIIndZOeVmo
         Oz7g==
X-Forwarded-Encrypted: i=1; AJvYcCW2KqwvK9jXewKfffrKQZXMU82C0+pantsmkUberoP3aIz72xGFpbh7HnAunjsJEntvrCWRHhcCV5Ic@vger.kernel.org
X-Gm-Message-State: AOJu0YyX3MEHzacw67HyOXxQ91hL/IpPBFfAm0XwWC6kVe6XC4Hl7t5p
	6C9zLN5eZLaBZ9thti8YkP6cKVI9Tq/77m+s8jhg6I6iZaBIrK8Bznoby78FssQ=
X-Gm-Gg: ASbGncs/qI3eNJNis4BVU53I/eDKzYabkxFIKCKBjdaE8ma4jVVSApaUAqaP2uH970c
	r+4Tp+R7OF4g2WZmyX3SqE159QlTwY5KF7eN1fKR68m0XtHSzNJ+LkPAzrKZCqcaWZUGoh2fdrj
	vhSdsm4FCWRA9su2uSheuQl5SeQulRfakPF/z5fvaFjZA0tV4+0IV/5Ez9hEKZqsOinz1S9IHeE
	1yj5r+8HEOxR2ONW3MqmujW5VMwf5m65FHg0ps9D91KEU+aASr9B86lx4CzemhE4cHuVRr7xjE/
	Y5GZ9xKbpvBTIGndomIxqc+MDKs8xs8OQSkiq/Un6Q==
X-Google-Smtp-Source: AGHT+IEfd6FqNltMqV3tCjIrZsZmfb/5XycRyRy8vJsW4t7vzj04maxfZbsm1bvOwLU1xzzl3b3NTQ==
X-Received: by 2002:a05:6402:350e:b0:5de:db0e:311f with SMTP id 4fb4d7f45d1cf-5e4d6ac4393mr14943743a12.4.1741023215104;
        Mon, 03 Mar 2025 09:33:35 -0800 (PST)
Received: from linaro.org ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e50751c496sm5104649a12.67.2025.03.03.09.33.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Mar 2025 09:33:34 -0800 (PST)
Date: Mon, 3 Mar 2025 19:33:33 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Abel Vesa <abelvesa@kernel.org>, Peng Fan <peng.fan@nxp.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>, Marek Vasut <marex@denx.de>,
	Stephen Boyd <sboyd@kernel.org>,
	Shengjiu Wang <shengjiu.wang@nxp.com>,
	Adam Ford <aford173@gmail.com>,
	Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
	linux-clk@vger.kernel.org, imx@lists.linux.dev,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/4] clk: imx8mp: fix parents of AUDIOMIX DSP/OCRAM_A
Message-ID: <Z8Xn7f6vXg0aM4zx@linaro.org>
References: <20250226164513.33822-1-laurentiumihalcea111@gmail.com>
 <174102305899.2928950.8837177294161174759.b4-ty@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <174102305899.2928950.8837177294161174759.b4-ty@linaro.org>

On 25-03-03 19:30:58, Abel Vesa wrote:
> 
> On Wed, 26 Feb 2025 11:45:09 -0500, Laurentiu Mihalcea wrote:
> > Correct the parent of the AUDIOMIX DSP and OCRAM_A clock gates by setting
> > it to AUDIO_AXI_CLK_ROOT, instead of AUDIO_AHB_CLK_ROOT. Additionally, set
> > the frequency of AUDIO_AXI_CLK_ROOT to 800MHz instead of the current
> > 400MHz.
> > 
> 
> Applied, thanks!
> 
> [1/4] dt-bindings: clock: imx8mp: add axi clock
>       commit: 2471a101938b0d1835b1983df08daeb98eef1205
> [2/4] clk: clk-imx8mp-audiomix: fix dsp/ocram_a clock parents
>       commit: 91be7d27099dedf813b80702e4ca117d1fb38ce6
> [3/4] arm64: dts: imx8mp: add AUDIO_AXI_CLK_ROOT to AUDIOMIX block
>       (no commit info)
> [4/4] arm64: dts: imx8mp: change AUDIO_AXI_CLK_ROOT freq. to 800MHz
>       (no commit info)

Applied only patches 1 and 2.

My b4 setup messed up. Sorry.

> 
> Best regards,
> -- 
> Abel Vesa <abel.vesa@linaro.org>
> 

