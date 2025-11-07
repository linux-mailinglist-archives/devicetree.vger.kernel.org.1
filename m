Return-Path: <devicetree+bounces-236174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 097A0C40D7E
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 17:20:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CBC0C3AE1FA
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 16:17:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A384B261595;
	Fri,  7 Nov 2025 16:16:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lBAuiat4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01F84258CE7
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 16:16:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762532216; cv=none; b=M985IImGraHNII6eReJ7aQJWHFC4LhLAF093eW3zKsyem4E1NMYfq0Ym7YydN/x5Z5fkVoO7eXPlLoKhWzwVcak/xmOXzz/3tiMh07AxUdfuGMDIP0J0n6RH+TFv3ayVh7lqyhSZYYflzY5p2wlfuxTfbd6ePSidDJhLKUddv5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762532216; c=relaxed/simple;
	bh=m6h5md15vl7XA18igPsSaXDaZbae5jLpA/oiBVEflwY=;
	h=Message-ID:Date:From:To:Subject:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oU9V/qbkT8TmTuJKXgRzxnEj/ZpK1zFtH60/eYDrKh51f/Hp50Nv9QgRb6YhwWm7q53IGtBMWTYi/nDI4zdEOFdF8NE9RsBNrpFT5FBMt+27feIHWD4sVXQ1fBFP51VFjDRy57YCyG09jki70o1rTyEJ8SJcudrBsA1biw1qNmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lBAuiat4; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-429bf011e6cso930544f8f.1
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 08:16:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762532212; x=1763137012; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:to
         :from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Rq+cWEKtg2ZUTyxd/Vz8Kc9fcT1gEAUEGw1yp5hm07k=;
        b=lBAuiat4NMzoJBjXdGf6qV7UglfWMm+nvXHO3L2Qt2rnXJ+qJG5BJEwl5MFGAaccCn
         trEVCZTD8Vp4BKGuOOereI4JMkCdUQJXcC83WhEN+K6VnsZTeQA7RVicoGjWNk3LrU6Y
         J5CNW3PTG/9RPOQnn9w8KZXDrCza8rlPA+GWrUdmJxrYI69XQuXhJPiaMEy5t2WrGZl7
         JqZda9N09B23SRzFW9SEU7/0C65qQe4NGDf67EMXiac5wcZhzXMel+cXsw7Gy/xDSQ5I
         7UzaHhqZgntXBo80wTCKt7UxHTRFPR18gAvDzPcVS8oKs1uBzTicON7OPR+s8FE4zWzb
         U+JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762532212; x=1763137012;
        h=in-reply-to:content-disposition:mime-version:references:subject:to
         :from:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Rq+cWEKtg2ZUTyxd/Vz8Kc9fcT1gEAUEGw1yp5hm07k=;
        b=xUkettMrXA7hyWE2rKwidPPgewJGcoM/McXStUFULd0mhr4/ckxBCJsgN+ToYTDrx8
         TljPX9TATg27Qw1fTZJvqVYEhWvcysQ6onwkhBjWQdmpnyj7ZqbQM1MdO2/sznLnUur0
         o3TYMGw271NBYd8gcUv4eGs9tWWzfbImfhGZlE/9di0+xNRgKXbqiLm5MhzcOVgwLSaF
         UH8K2+/ePBMYwqwbJ+fkFKSiQATC3xfL6OWilQ7BGo5KhRYRkk8pALvyagw+5AIAr/+i
         HIU/l6jxRFhihwfL/tRIhb3Ex07MwSFReA5uKNU5hf5Kz4kF4+1Z1saFFzSt3EdoFSAt
         OQTQ==
X-Forwarded-Encrypted: i=1; AJvYcCWa1+3VEeuqG+5x1IQKhA/zsJ1j8tNO9/Y3iN+q5k1tbXTs0L/Wx2QbHZIQrRFdj5zGTRS84flgctXq@vger.kernel.org
X-Gm-Message-State: AOJu0Yxqpl1K4bfyPCjVyF86aEmcmiBA9b6MIvOSjEV/49kyu1eICmCZ
	+aykFRjE1LgiX39DHbXRBnNE/p8ikyoriLmN4FEN49BnQje7gbe2n2Rd
X-Gm-Gg: ASbGncs4R9VpQYHtvJ3iCV3QLvd12nODpxLN7y+hy0qwyOs3I7J+Hvf+f1t66UJ81FD
	v1XgJv+8NcD8aFd+JNtZf2UOFzHRzKYmig4UUgjy2doG/mLHb43Sx2LokiKNPOimsPCdc7PxTst
	tPwE6uW6IjaElo3BN6b8ZCs2c5jMms23a+HljMUe0vfohFfbGDTMuS43SGI7Vh6bmOq6uITmt/Z
	hW3VRYSZhH25V+c/bQURkaHcqdrAYMNBpogkHsflfxIbv/5pPjLO0BcSGjD0wEuNQD3RMz6nu1g
	W7cCZCxqvegpa2KaWFSn+G5hIpS6ak2NaSXObpUNtnbT92uH7BrSNQT6qSfOcBn0ooHe6e9hK1D
	JGIg2qXU38U1Zana23SuoUN8jXxvZsYpMIKVnMxYVY25nMAW2eeuQj5VY+DVnjUXuglGuJJySLN
	NYI6S/CAUk/Lxah4Vvqqa2FojnoScF
X-Google-Smtp-Source: AGHT+IGBls4w5DXj4dsI+iVzj/lD1T2JS8LC5CnrQ6tP++E+okDJx9McJEWsKb0hTWxZy1/eytT3yA==
X-Received: by 2002:a05:6000:26c9:b0:429:cf03:8b1a with SMTP id ffacd0b85a97d-42ae5ae9995mr3350125f8f.45.1762532212275;
        Fri, 07 Nov 2025 08:16:52 -0800 (PST)
Received: from Ansuel-XPS. (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42abe63e131sm6344445f8f.20.2025.11.07.08.16.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 08:16:51 -0800 (PST)
Message-ID: <690e1b73.df0a0220.312af7.18e3@mx.google.com>
X-Google-Original-Message-ID: <aQ4bcJDWhgQINJry@Ansuel-XPS.>
Date: Fri, 7 Nov 2025 17:16:48 +0100
From: Christian Marangi <ansuelsmth@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Felix Fietkau <nbd@nbd.name>, John Crispin <john@phrozen.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-crypto@vger.kernel.org, linux-watchdog@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: Re: [PATCH v4 0/4] arm64: Add AN7583 DTSI
References: <20250929114917.5501-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250929114917.5501-1-ansuelsmth@gmail.com>

On Mon, Sep 29, 2025 at 01:49:11PM +0200, Christian Marangi wrote:
> Simple series to add initial AN7583 DTSI. More node will be
> included as they will be supported.
> 
> Changes v4:
> - Add review tag
> - Fix alphabetical order in Makefile
> - Move PSCI node after CPU node
> Changes v3:
> - Fix typo EN7583 -> AN7583
> - Add specific compatible for watchdog and crypto engine
> Changes v2:
> - Fix DTB BOT warning (fix crypto compatible and OPP node name)
> 
> Christian Marangi (4):
>   dt-bindings: crypto: Add support for Airoha AN7583 SoC
>   dt-bindings: watchdog: airoha: Add support for Airoha AN7583 SoC
>   dt-bindings: arm64: dts: airoha: Add AN7583 compatible
>   arm64: dts: Add Airoha AN7583 SoC and AN7583 Evaluation Board
> 
>  .../devicetree/bindings/arm/airoha.yaml       |   4 +
>  .../crypto/inside-secure,safexcel-eip93.yaml  |   4 +
>  .../bindings/watchdog/airoha,en7581-wdt.yaml  |   6 +-
>  arch/arm64/boot/dts/airoha/Makefile           |   1 +
>  arch/arm64/boot/dts/airoha/an7583-evb.dts     |  22 ++
>  arch/arm64/boot/dts/airoha/an7583.dtsi        | 283 ++++++++++++++++++
>  6 files changed, 319 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm64/boot/dts/airoha/an7583-evb.dts
>  create mode 100644 arch/arm64/boot/dts/airoha/an7583.dtsi
> 

Any chance this can be picked? All the patch got a review tag I assume.

-- 
	Ansuel

