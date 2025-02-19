Return-Path: <devicetree+bounces-148404-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC5DA3BE52
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 13:40:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 62F171894C0C
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 12:40:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABC4A1DEFE1;
	Wed, 19 Feb 2025 12:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="j8fPzGd3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 036071C8618
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 12:40:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739968818; cv=none; b=KqNSSID1FGA7GaijM1QQo4w1hKhsR1XGUraPTLnJ+AUMDI7kYFWoTpvFvIAsY4N23PFM+lR549fj5TUaPyyg2BypxK1B9LkaOGYo2Oah7Olt7quhz/SUhr3XY7fBOUGYMOAoG/ShJD70Sa6Lb1wUjDOh3aigRj4FjoqQuppwCWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739968818; c=relaxed/simple;
	bh=NhQhj1c3gRWwOUJHeLmg2V70Y2oTFaMlvauJibjC3uU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kCmjx91EPR8Pbe2JI/KkA3uLBJ9Yuddx+/C4sNHNu9kbXFt2FHreKeltsq7ApNhmTq3bMOSS8Hm/hxFpDQanANpi2KV4NwpZ7YfTQHBp3qhhe5RgMmCqOcmsInSJ/OtFR8bgzkncHLXpcHEQfEhpj+3AfOHR4Y2wfuSYiFcz3Wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=j8fPzGd3; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-30797730cbdso69677281fa.3
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 04:40:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739968814; x=1740573614; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NhQhj1c3gRWwOUJHeLmg2V70Y2oTFaMlvauJibjC3uU=;
        b=j8fPzGd3OBfA//Ecs2mDxWvcT0kh1k7pZIpZNKHaD8gxfLSlBECsJv8ceRQpGGbcld
         NVWNsA0mixzKxnB6e2quVNlhTF6AkCvr44FMeiOjk7V8FqwlmT4/C6kVvBBInjpsi7zG
         R7hDqRNUOyib7VIctS2G5URBhzpB+P3c5OKw7B4pQOXYA7OyxbZFt6IbX8Q5ngATiIqb
         w2VsWUDjuP2sW7GehrHXLIU/XdY1TxzEzm6OY95qW53idyjxwBdvAOVSSMuJkCIQ2O8f
         JBQj9KiaEfmKFJFnvoEQqOzZPnpT6OB3H+FC6piox7bIAg8bmEKfuPL4FpwIWFXtdOdr
         vpuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739968814; x=1740573614;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NhQhj1c3gRWwOUJHeLmg2V70Y2oTFaMlvauJibjC3uU=;
        b=UqiA5krwp/PLrBFM/8kEiGVtL/9AcebHaNRoWmF9Yud3Y/CH5ijzuwvpwvTmPlAcsu
         /oQ/wpBRvU7HjambuzuD8Ba5AeVQ8qDNUoJ5IkpmAqpCG8qD95Vo9N4mwIMhZZsOPBq4
         N+q4FQpcrm8X9D/FTuwpUVJTxDUAdW6t8ciuxLC/7vM3K5ibLGmAcjLPiVL/yA4Bygfq
         0rhyZopFwEX+uYUEPWvhWokSGpj70DCLK/j6+WMZQrBTB+wxyXeGUQksQ83vXFT1JqAc
         ZWdJ8xAHYBUmLubArAc/yiF1+BHY0m5rj4xbHTehJMI2yPznH/6kM6gVfru7JbjcbBnY
         3w+g==
X-Gm-Message-State: AOJu0Yzws6C4I/1ai4Np12AmbHRhpq43WMB9D6yNzNBzzgZVW3gPhH0N
	oSmoDsQIz7+/6x9zEvXciatgCGsCpSbeEt6ITrPQenvQuQ6E0xl2CGShE13JyJfmkEEVKN0fdwR
	drQ0dCd8n4X0EUtDaofkfEeRP+s8=
X-Gm-Gg: ASbGnct5FA32jabIUpeIx6IXSOLy+menMtKuKf1GgNCfa0Vu+ZLO3ou+WHeQwnTlUG9
	My0MBTDgr0jwwmY03OTCL9jK76vQXYns212x4T9huOPKeP8P+yRhu6mb+Cf0pXr/Bo9Y0RD1LE+
	wpTrWVeX9y+ZZA2Ken824JgYUvbOg=
X-Google-Smtp-Source: AGHT+IFiEAAmOQeNiwKM9pYHoGOeRxDwt6aWpRp0aHFkiqJ/scb58wtITAVUYzMW7vzAfCPPDIj0kMB/lDvHjfDXQ/E=
X-Received: by 2002:a2e:8810:0:b0:308:e8d3:756d with SMTP id
 38308e7fff4ca-30a44ed1da9mr12054681fa.19.1739968813787; Wed, 19 Feb 2025
 04:40:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241101135406.47836-1-festevam@gmail.com> <173073495749.210192.9138587910771237679.robh@kernel.org>
 <CAOMZO5BVLpQecZH4vvmRi=KfZ=MvCgUQ_tUKjvUzMGO=wTU-MA@mail.gmail.com>
In-Reply-To: <CAOMZO5BVLpQecZH4vvmRi=KfZ=MvCgUQ_tUKjvUzMGO=wTU-MA@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 19 Feb 2025 09:40:01 -0300
X-Gm-Features: AWEUYZkvUCi3PRNaZjpqQ7zkYqcKxcjgv_RBbFS6LFh_ywtWOQiG9QgEhk9Prp0
Message-ID: <CAOMZO5BJy2B0Jy-ehz44ZkrzUpGqrAs_GjE-Nh1P9K8uDXVmyw@mail.gmail.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: lcdif: Document a imx6sx-lcdif fallback
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org, shawnguo@kernel.org, imx@lists.linux.dev, 
	conor+dt@kernel.org, Fabio Estevam <festevam@denx.de>, 
	linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de, 
	krzk+dt@kernel.org, a.fatoum@pengutronix.de, dri-devel@lists.freedesktop.org, 
	andreas@kemnade.info, marex@denx.de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Rob,

On Tue, Dec 17, 2024 at 10:20=E2=80=AFAM Fabio Estevam <festevam@gmail.com>=
 wrote:

> > Acked-by: Rob Herring (Arm) <robh@kernel.org>
>
> Can you apply 1/3 and 2/3?

Gentle ping.

