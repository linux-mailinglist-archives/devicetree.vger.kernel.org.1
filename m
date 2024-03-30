Return-Path: <devicetree+bounces-54844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D23FB892C1B
	for <lists+devicetree@lfdr.de>; Sat, 30 Mar 2024 18:03:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 70E81282165
	for <lists+devicetree@lfdr.de>; Sat, 30 Mar 2024 17:03:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C1B71DFC5;
	Sat, 30 Mar 2024 17:03:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="E/M5V2al"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C807E39870
	for <devicetree@vger.kernel.org>; Sat, 30 Mar 2024 17:03:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711818219; cv=none; b=j/44+jEYBxjQzEjSxt5tQ38SrL6BKKqNfNg4/PiqMGCmS+YOcT3rShUDTOkFhcpW6LiBSXgNnU9msweXhE2HiqQ/zIGLk5xL0ZCFIgXNzW6m6Zw+DPTisAn6kYBI+kRBq9XA9GYbf0ytwjw0lVkZmC+uxdUzAr8r3uSs0wOMf0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711818219; c=relaxed/simple;
	bh=dlNLMHjgKsUj625j+jFaWWWWiUKiOw29QPF6O3ZOFDU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Y0Z9I0O3YvEmk0FWxYl2Qkz3+X21nyMk4wfFvvRHHLT1Z48C/E7732oTUzkVKvOupG5oNtlcAQnJ8lZr3XwxG2Wv4EVijBzv0/QjLiKHF19642zZp1/rPHfFXzKsmpKYdOR1tS59ZKL/opXQJCM9SHxFsnKngBNOX3u5fpX3+EM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=E/M5V2al; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-6e6ca65edc9so871905b3a.0
        for <devicetree@vger.kernel.org>; Sat, 30 Mar 2024 10:03:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711818216; x=1712423016; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dlNLMHjgKsUj625j+jFaWWWWiUKiOw29QPF6O3ZOFDU=;
        b=E/M5V2alvHc9pv0AM5Kv4UJPzyJVOBCn2FXo77+vdIvKsh6MKAQ4wTXE10d0942bBe
         qQUSKrRd/NdVCpx3lIGhDXa0OcK8m6wjxv3IEFzsJQMO5q72y8KKjXNXNUZ7dHvYEZdC
         0YwbpiHQZzzTC4YopLp0jOE7KwZgsBced5WaUjUJTnjC4yruxMYbm7TqLrdAmztbCZPF
         JprhsF3SgBTH+S8sEtAK8aAdHpsJ41jEmBdjR2Qe2z8Hdzt7ma775t66BiX5aTRf/dzi
         PUxmigSv+b8s35i0pPLIg6W0Hx75jjmL9JHz54zDYZdyZ/2yKYJ0KH+I10vw09CcUOI7
         jYrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711818216; x=1712423016;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dlNLMHjgKsUj625j+jFaWWWWiUKiOw29QPF6O3ZOFDU=;
        b=bElGgiM04cDvwr9UjkrQFOGeUnZPmzlXayzZor1cDMTImU9mxcIyJ2neKmYxkRnusb
         mHzd5UmDoTNQhjdf5YLtxbUAsiC+Lv1KcpKm5umfkvNZlRc1Nax11BYanso6AmT2AJIx
         P2NRbOynVjvpSm4eE4BgAUVmcjpMaxpX0xT1sDCHw+2LTfq6P3th8Z96NeWf7VjKhdhE
         mR6LxVCXjByxUkzPAcAZvblKw2F7/5T+8lQsO1eOjiJPkfkaWsYo/YwXo+BGYO4XQCE4
         DcwM/Zhx9lBnZ9INHUDv8F0GKo6sd6zh/7iwYnyQ35+SPITXPyC44ztQBklw6p2fI/TK
         RHAQ==
X-Gm-Message-State: AOJu0YzislnAFeolzn12+5v3xkvY0taLsG20V1Gj+4BzqG78hZvN5gbI
	2Fa3WJtHXsYp2IkufNMMZhebQrQZQLrmmSTrcyLuEZyKTl0TmZr3viIQGi3f7KJLpzBVev06bU1
	E9N9UDN0CeEmlN+CLFHNM7h9qLsY=
X-Google-Smtp-Source: AGHT+IGk9eE/LU4ikIwv/kY/RqcJgdHqn4HFXVhkHeSI0VkFJAbbmxAia24RYH0R4yyHXIe0TunIrh3F1mhI7Ek6AeE=
X-Received: by 2002:a05:6a20:7f92:b0:1a7:c66:121d with SMTP id
 d18-20020a056a207f9200b001a70c66121dmr2261069pzj.3.1711818216087; Sat, 30 Mar
 2024 10:03:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240330133410.41408-1-gilles.talis@gmail.com> <20240330133410.41408-4-gilles.talis@gmail.com>
In-Reply-To: <20240330133410.41408-4-gilles.talis@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Sat, 30 Mar 2024 14:03:25 -0300
Message-ID: <CAOMZO5AWTf++_129KOsxDXBxe29egPFfVF==GMY+Hse7Q6tm4w@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: freescale: Add device tree for Emcraft
 Systems NavQ+ Kit
To: Gilles Talis <gilles.talis@gmail.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, robh@kernel.org, shawnguo@kernel.org, 
	alex@voxelbotics.com, andrew@lunn.ch
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Gilles,

On Sat, Mar 30, 2024 at 10:34=E2=80=AFAM Gilles Talis <gilles.talis@gmail.c=
om> wrote:
>
> The Emcraft Systems NavQ+ kit is a mobile robotics platform
> based on NXP i.MX8 MPlus SoC.
>
> The following interfaces and devices are enabled:
> - eMMC
> - Gigabit Ethernet
> - RTC
> - SD-Card
> - UART console
>
> Signed-off-by: Gilles Talis <gilles.talis@gmail.com>

Reviewed-by: Fabio Estevam <festevam@gmail.com>

