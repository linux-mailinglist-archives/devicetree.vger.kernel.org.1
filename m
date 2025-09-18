Return-Path: <devicetree+bounces-219065-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D39FB87249
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 23:29:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 135D74E1127
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 21:29:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A06D72F9DAE;
	Thu, 18 Sep 2025 21:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WFUsDaaY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 569D82F6166
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 21:29:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758230961; cv=none; b=g3TSm1Rc9kYtquROAPxAs0vAx2k6KiS1Lw7AWUCpfOD/eCZsdwahbAa9UdJ2rl6bJD+sHzIa4XlI6eFwh+/Je+lhL8PF777bXc7MlDyuGE2JxWBULQcfLFnvaTEPL7JeUPRt4w9Sd3y+Db2wpApBwtQErYwAW9axhFEnKwm4zas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758230961; c=relaxed/simple;
	bh=HhwvCvZmySup6P/KoBzvo8skgfYCyXTfkBl8Xon7+cA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OiPJ6/bCYp4J/M8pzE1YelGsEVRXiQOfjszzyv8vqAUlpYH/1MyDaKAtaGPllSDc2QKju6nJcw7HbRYujEuQwRy44g2/XsOzgeTyu7e46x586fJoynW+vhQ24uHo1+TsEtmGq8oC7fb81zpYiByzJBwp2vnM2pEUt7PIc5XlVeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WFUsDaaY; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-b550eff972eso610590a12.3
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 14:29:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758230959; x=1758835759; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=t5FfQ8fE9EyrFTigYn4OGWQVM7XEzur4GFkeN8+xurY=;
        b=WFUsDaaYKlacvEN4srcm7tRJNN/WwomU/K5jYTGNAjcJ71NxGHfoLYsUg9eIsfiQ7o
         ErQkrdTgdylUVqdQqPBhALFlNC87At3+57hcmSLvcMiOpIpdjzg3w8kKSIANQ4Y1X9+b
         YrTFmxpBYWFRSCp2CyKYEyzz75AwA/1b8ZWCN8xroZhBSnitEnuIBY6TBWEzWhuVVE5o
         TAE5hwKVDFQ6rJqV7TWy7NfyFSzuW6jvjd04Up8bu16QOjvFfNpCFmu2bkM9dNuoMCOM
         GEUUx7bj4JDPqoBCc0CjUvLBfl9j9iOR2bbcrohboZuMkJgMvceNSEs+OyEr89iM7FC3
         oc+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758230959; x=1758835759;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t5FfQ8fE9EyrFTigYn4OGWQVM7XEzur4GFkeN8+xurY=;
        b=R2FoeHtJyte7bghdkIW3TD+KbOXDO9G/+3g7DKasNbD8G49v/kOIbR7MJu26zmV6BI
         MIaPrEEfzJw3puIVB3xuiicgDPu3xpZ2Z51G2CCh+3tR17kwoY3Vh16RBzCAf6MXfcOz
         +fRCJ7XoGHsYhkH0P04sLTCe3FRV+GY9A/sVdW7HQHMTUm0MICfEwBbhk7UD4aJOEbzr
         FoQ5YaHFaNBnNFTekx8eXJZHI/8xj1vYq/XGKMl831VcoSoJcg268EdoL7j4gD49cqcl
         lzsXwDDXgQLg4mO801yV6OW3YsBwWrQRmCCeRdZFthc+Xbmkn/JG9fTBe4B/Gg35j/Cx
         x5UQ==
X-Forwarded-Encrypted: i=1; AJvYcCVlHnhfm6H7Yc0bZIoaS+LJEkW7Tp5qicoicyIw3DNRLsxFjblY4G6otvl9LGIWINhgVK9O6thLOCph@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1j2DwPXaNv8qn9z8reLtuBoKGXUpptP0S2ixwgOfGRgva39j1
	5n8Bbm2cm2II6r3vGNU34V9gq5gvJtp6nPVBW9Bcpiad2RqLhcpTsyJ/
X-Gm-Gg: ASbGncsofTIyr7b7Ti7iRS5NE0ZND5Q+ZLk6QU3+hmejjj8PwXYLaNLzQULUe9y3fdH
	unrsIGcZN/Ykb6iyVY9UrK+8TH/QeNU+E+KlFC5yuqY4JlFu7sc/w42EOyOl48DUAN6iBNWfckn
	tTvvOY1/4BEmvToDXDBLIHubaMW72zi8Xvw43zJWslIuVXoEfhujdcMbVBAxybg/2pzbId/eFfX
	zaLqT0IQd/cn5TCIfPp8MWU6vX55w2vxoZldS6lzmk8A60F4CR1mDvS0C8WenkMnAdqFDG3L/E4
	i2lVrZhNJsyYDHJWu89u20nXIGLCITItANAOD9nV++UgOwC6vfbFQXvFr+MeTnvoYB+oXEVJY4N
	KoW4lf7cdfcQ4zgQyp2JTBaRw49A4wixC3CK+EPh51w==
X-Google-Smtp-Source: AGHT+IEbft4paW40MvQeDZQuD9dWp8aiBG6nFm7xbVwWQWYmFP/VGjbbe2yfvPhDG9/lnQoov1z1VA==
X-Received: by 2002:a17:902:f691:b0:24a:f79e:e5dd with SMTP id d9443c01a7336-269ba5081ccmr12875835ad.37.1758230958575;
        Thu, 18 Sep 2025 14:29:18 -0700 (PDT)
Received: from google.com ([2620:15c:9d:2:8e3e:e1c9:1151:50c3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-269802de5e9sm34246905ad.72.2025.09.18.14.29.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Sep 2025 14:29:17 -0700 (PDT)
Date: Thu, 18 Sep 2025 14:29:15 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Cc: linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-input@vger.kernel.org
Subject: Re: [PATCH v4 1/5] dt-bindings: touchscreen: convert bu21013
 bindings to json schema
Message-ID: <na323mzpk72zkrxqmqpbubacj4f2iylkggcen65hcvsafcb7ys@ez5jot73iyqn>
References: <20250918153630.2535208-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250918153630.2535208-1-dario.binacchi@amarulasolutions.com>

On Thu, Sep 18, 2025 at 05:36:06PM +0200, Dario Binacchi wrote:
> Convert Rohm BU21013 I2C touchscreen controller device tree binding to
> json-schema.
> 
> Additional changes:
> - Replace <supply_name>-supply with avdd-supply to match example and
>   existing DTS.
> - Add reset-gpios in the example because it is required.
> 
> Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 

Applied, thank you.

-- 
Dmitry

