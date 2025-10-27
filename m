Return-Path: <devicetree+bounces-231784-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DB2BEC1196D
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 22:57:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0ED731899CB4
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 21:57:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC4E431282F;
	Mon, 27 Oct 2025 21:57:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BlVpWzoo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE5892FE057
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 21:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761602231; cv=none; b=ZsD0N6VacxrNYOSsJnWPkwHGogKFbw8c6OP6U25YDUWt4zgAn+3MujemLdRUNndqpJsPafYOd78DewoYuRRgo5w5fWzoB6widySsL2gcW0b8iJDqrAgNSun4LiBvSWgdyOu4e2x2H3Bzh+cOl26TzPccNScTB5NMVhsc1HkLInM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761602231; c=relaxed/simple;
	bh=uzn59MLbFi/gXQcmwNKcLTbahfjA0CxJvaROiMoRzOo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kWdp5kj7VFrgMhhPPP3nw+RtrQ4cK13Y0M2DeOhk39GMggKPmxzIyQHObl1pqGKGPY0Th38RqJu8P/PDe9O/ncPxyMdMDsOGyOwjPJkyUCPrYUddV70gOX56h5pIfz+uJBl1vuNBoOM2RHe+Us9xwmNzn1ZykzxXRWAtc8O3S4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BlVpWzoo; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-3637d6e9923so50489111fa.3
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 14:57:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761602228; x=1762207028; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0HsbPG1hM4cDOntTcBmV/JBGBT4YKc3N+I+tTErEYG4=;
        b=BlVpWzoouqoZFjnFj9d0RFZNURDXt/jj+N38Tx92AD5sfPL6kPzMCNlPFwHVa4CceT
         PuwkIYX9jKb2+26YeKUxiG2D0AgsHvUVVknLZrp2ixiRxLj3p+zDhoZCEswRpUC3S91T
         7QbH05IwTFSYKl9UTn8zrsOW06Evf4yYurnPXESvn/t8oyZ0hR7TSDZbXWwThnJPz8Oi
         Fh4Iqs++cdQjm44dlwHAUIQRb2LYof6ENm+ZwrilwNhbxrRhjNvsqvJuJ50phiSAzB/T
         JYxBGW0HieRTXts3JY7z20kyUU4+661VVXdcVOQaU2AMzaRBABtOIGKjaI29IPs+mCVz
         7yow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761602228; x=1762207028;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0HsbPG1hM4cDOntTcBmV/JBGBT4YKc3N+I+tTErEYG4=;
        b=o9Ek05KZ6LFtT19mwKHCaNwOeQZMxkr8R0aW9X1dvsbss0f8ZC1g3UbXJ9e3u+J3+I
         2IVCquwAuOoKRkUg+2m6XXu2OZfnALbLibahi4iTpXoXTYn8IZoJH1NMfKg2ak3rxdC9
         t4QuvLMrJGVAfHLaJfVGYlckSd9k6JVh4IE0czzxX6GltO+SB9zG9Ay078hzJGZzD2Zg
         GrL68nEYAcpE/0vfttOROBtSSAXhCXGXLjEens6ooTYaA4KNEx74WQejBYva5UeEGS94
         Cs2jJy1MQZOKVlfL4Y+7ppdpmOJIK50d6GQjonRnE6cKAnTwwdD/2jVkCMA+Ztp72DoN
         vaIw==
X-Forwarded-Encrypted: i=1; AJvYcCW2HnzJ42sSRQmoE8dAJPoWixHPCWYLVRntllNkiesFdfx9VPqL2rDUAo/ORlWGOV/hKJ9r+Op54jI8@vger.kernel.org
X-Gm-Message-State: AOJu0YxxX8xgOU6ogYXFbLoDEjKyzMcA6pPrQS7iJbR8JAkh7T3c9EZh
	6Xz/L2UBt/zBk4WfrnKJWYMvutaRdIiABC771omACwU9ZfMtXTk8g8Q/nGOWGM4+LdjmJAIwnFz
	5hbhITklMnwEsMI4Huj/IU36ut8yxqHtKaK+2fSnTCA==
X-Gm-Gg: ASbGnculTPyqctnNxTBCniEU+Qj9/YaLG/alKpO+/giL0zttsuPr1hynY2Y8tErxVQL
	VOW2El5XUMGkET/yavQxOXhFBEHGjTn/EEOfrkkDV+5bN4pVcizcjkAwpWOoKq1MJvnzF39epLy
	TzQrDcclUDpvsH+WrREURGpIZMo8GeglOMlK3Nb/G7+5mUF11+kGoIW7LriDLG8az+GwhDYlUJR
	/2Fa4Ocs9m4Dc/sZy6dZeH4MSrtXwR+sr7qgDg7KnzgRmwVoEjug6+3kmJvOQbZNjr8YZo=
X-Google-Smtp-Source: AGHT+IEjLIfgc64R5us95+fFPO8BWmx3IOi8cmIKmJ8GeDaDyGf81wbf02WQ2hQUkaBk66OHmS0+B2OIi4naaYvPItc=
X-Received: by 2002:a05:651c:4356:10b0:36b:631e:2aee with SMTP id
 38308e7fff4ca-379076daf0cmr3058091fa.21.1761602227957; Mon, 27 Oct 2025
 14:57:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251021070410.3585997-1-gary.yang@cixtech.com>
In-Reply-To: <20251021070410.3585997-1-gary.yang@cixtech.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 27 Oct 2025 22:56:56 +0100
X-Gm-Features: AWmQ_bm-rkyY9e4T7v9WO6_vxIZ23JzEk1iQHKpy0OXLbJlzhTYiKf9B8Mvl6g8
Message-ID: <CACRpkdZAaEim0yJLkXNctJA0jBFj7LGyTGVvy7_mMf5G+vUWOQ@mail.gmail.com>
Subject: Re: [PATCH v5 0/3] Add pinctrl support for Sky1
To: Gary Yang <gary.yang@cixtech.com>, Peter Chen <peter.chen@cixtech.com>, 
	Fugang Duan <fugang.duan@cixtech.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	cix-kernel-upstream@cixtech.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Gary,

On Tue, Oct 21, 2025 at 9:04=E2=80=AFAM Gary Yang <gary.yang@cixtech.com> w=
rote:

> Gary Yang (3):
>   dt-bindings: pinctrl: Add cix,sky1-pinctrl
>   pinctrl: cix: Add pin-controller support for sky1

Patches 1 & 2 applied to the pin control tree for v6.19!

>   arm64: dts: cix: Add pinctrl nodes for sky1

This third patch should be applied to the SoC tree, Peter Chen or
Fugang Duan takes care of that I think? Not sure.

Good work with the pin controller, now is a good time to just
go on from here and fix the GPIO controllers using the pin
controller as back-end too :)

Yours,
Linus Walleij

