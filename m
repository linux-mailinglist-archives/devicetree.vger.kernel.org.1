Return-Path: <devicetree+bounces-126357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 458699E1399
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 07:57:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C606D2827DF
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 06:57:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 752E218871D;
	Tue,  3 Dec 2024 06:57:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="z2AaZCMF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0A3A126C13
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 06:57:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733209064; cv=none; b=aEppdTxZBYqxLa4WXNTqSHVXkd2Ag15KLlKeYu3jroRhAeIAp8s1oAyILA3NQEAIyeSQ8jibwBH+PVkaOX9iSK30ItmakDIlMMTA0W0sCE9Cwy3uQuWbrugO314RcXc28Rjp+xke29za501bzixsJc2MVFfgeLjRS7uQhmtnG8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733209064; c=relaxed/simple;
	bh=eVFLB+6OBC9CZT606g/sbUfLAfNYRu7/+f5lWtBw8fY=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=LyI4/GgLP+x+WSGToDTNT7kxKjA8kbhxG+Vhov7Wbe+2MAs1wV5rsnmBXWYUhX9dNLDSpKAWcA7Lc3a7OVNuoM0Q29YuD0dwa/ZJ9sFTi9i8VThIVokunc8r02/oBzRVnFOVbGA5Kb+fQ8Fnb5D4bRjEKZsC3MDTvzHBup6sa7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=z2AaZCMF; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-434aa472617so43767805e9.3
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 22:57:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733209061; x=1733813861; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=eVFLB+6OBC9CZT606g/sbUfLAfNYRu7/+f5lWtBw8fY=;
        b=z2AaZCMFOpm1sERIubzv4dZxQM7d8dJN2yZ0s+uAFPaLYZXvOi23yIfCHG5LN5DD1T
         y51mLbzztaDq0+d1/H94neNYD8DENlgO+tVvf8OkfsMzdes5oz//HXsBTVUqAqGvSY9R
         mYnJ84U6K8zuXydViIqveCvJTeojDNMpJl/xO7UpgJsIiygKZ08AXe+By5RcsFtmnV79
         gDR1FIZbwVXtCZQzGFtkTuOd3SQNkXLDpKXLZFu+6oG8Ypzd/8hvubRf2CIh8C+una/u
         oS7XWjBn5PZgaWnmFpMC2xSSwDzFg46m6J+WLm7gK1pRV5GtIFDmz99LImfigTvM2vg6
         ZrAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733209061; x=1733813861;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eVFLB+6OBC9CZT606g/sbUfLAfNYRu7/+f5lWtBw8fY=;
        b=a/EW8/gwHOzeirj3BY4Rd2c7jBt+FG+7LovC4P/d3Izo5DusMKKiyxB9ANFB8dSQPh
         Z7zEjzgmAboTr3DxFN/dV3at4YFboqCRwPfxCQONddGijWXPEI+PtUi0zrN7c9MBx+O8
         AxnNTkfi2lpc+yt8sIjoqUNFB8UjW1kJl/vO8cdrMlV6jr5s/yP5VfzS246Gjqa/gltV
         BdvF1Nmg0drMA97i/OOvdCjkzRk0MFJIgc2tTZH1MuIWStULK8l1Wk+kB9Yj2HPhtaBo
         b5rec/rZ5rWps/HTrHvhw1sIPfyw2WimWH91R41Tlfm2AMpJiApeJyobX1aUj35PVZ6o
         Tljw==
X-Forwarded-Encrypted: i=1; AJvYcCVayIi8VZtc1awctFxdSGHoTASqA739Lwe2vW7gQa5OQjW4oOxJufNgv2genR3bzMigigQ3R4cX+81F@vger.kernel.org
X-Gm-Message-State: AOJu0Ywbd0u8YoPNawwgFSepIG5txddVXXwdAMAsW9y07gvWdyfW5XWW
	vQK+OleZGkdu78VofSCkckkZfX/78ieC8q0VpAFfwNy54zDS3DjS8MXO4scV1o4=
X-Gm-Gg: ASbGncvNY831FZCzojKs3ZDEAvITAY0i/VcPa5RK4D4xLOij9LZSahLhVldrb0bxYdx
	fWB3+B0569tWFoiUfdZKWeIHwkqjDocK4XMEjJEFJH6a1K3HVpFVQUp5Z97hSM2/XRtjJ9eYJad
	jiUxgGAudAveL2UfOOCLV7PofQNPo6dxIEe8rWcGfpbhE4CJ/GuEUwSgl3k7yWB3lKX7WcZ5tcY
	C61/WuM+2kyRyLXMHmyoF0Mr9aLDrp++VqnmDMqRDTWmig249alqHs=
X-Google-Smtp-Source: AGHT+IHBAYAD3b2nuutPCc6vz21mpmvr9yIOVo8l4J3kzBSf1gujYTEow9QfmlkAK91qibZX9uKohw==
X-Received: by 2002:a5d:598b:0:b0:385:ec6e:e899 with SMTP id ffacd0b85a97d-385fd42a804mr907858f8f.59.1733209061057;
        Mon, 02 Dec 2024 22:57:41 -0800 (PST)
Received: from [10.1.1.109] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-385ee60549dsm6267059f8f.34.2024.12.02.22.57.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Dec 2024 22:57:40 -0800 (PST)
Message-ID: <fe254a002000f2bbfbe51d074cf28f7427a27f9a.camel@linaro.org>
Subject: Re: [PATCH 2/4] dt-bindings: power: supply: add max77759-fg flavor
 and don't require nvme address
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: t.antoine@uclouvain.be, Sebastian Reichel <sre@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Dimitri Fedrau <dima.fedrau@gmail.com>, Catalin
 Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Peter
 Griffin <peter.griffin@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
Date: Tue, 03 Dec 2024 06:57:39 +0000
In-Reply-To: <20241202-b4-gs101_max77759_fg-v1-2-98d2fa7bfe30@uclouvain.be>
References: <20241202-b4-gs101_max77759_fg-v1-0-98d2fa7bfe30@uclouvain.be>
	 <20241202-b4-gs101_max77759_fg-v1-2-98d2fa7bfe30@uclouvain.be>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.1-4 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Mon, 2024-12-02 at 14:07 +0100, Thomas Antoine via B4 Relay wrote:
> From: Thomas Antoine <t.antoine@uclouvain.be>
>=20
> As the Maxim max77759 fuel gauge has no non-volatile memory slave address=
,
> make it non-obligatory. Except for this, the max77759 seems to behave the
> same as the max1720x.

It also needs an interrupt line, and the previously mentioned shunt-
resistor-micro-ohms, and probably a power supply.

Cheers,
Andre'


