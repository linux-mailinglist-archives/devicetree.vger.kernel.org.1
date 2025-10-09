Return-Path: <devicetree+bounces-224692-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B2CF6BC721F
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 03:58:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 61A6F3BA0F6
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 01:58:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01ED11A0BFA;
	Thu,  9 Oct 2025 01:58:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ld7sps4V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97AA419F12D
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 01:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759975104; cv=none; b=A0a/IBeyv36UX18BcDRJRFm1bV62Wt5nnqtclTvHuer0KNTlnFZBHvbwESdLL9ug30huq+tOF/slMEgKvDcoGVXlW999XYlg3k/BJNKQ50Jy6BTudH2nHDiYM8BoILRKRCbjAL+3QoJTIGF6fCP2UYTpL1nWErg507MMDNCBaPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759975104; c=relaxed/simple;
	bh=Tzv03VmmUGs+LjG3lHQExvBJa815vjqsuRExASSQwn8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NKMa0Ggl9WfqVBz8uXVTgd9zUy7bMyYg93QZcCJIZ+3782WnoKxcJRTE5V59OIKhv5Zal33IUJuGv7s9NxTyM8D82asbWMqOdFVnZi5jAK1RLrAilTXehCDzLlIdLoW2CQmpoVK9gxUHJoXTpbIbo0iSviEoXOztakxqzaaUJig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ld7sps4V; arc=none smtp.client-ip=209.85.222.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-8582a34639aso26271985a.3
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 18:58:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759975101; x=1760579901; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Tzv03VmmUGs+LjG3lHQExvBJa815vjqsuRExASSQwn8=;
        b=ld7sps4VB6ORPNiJ1woPpF3DyHouY2+3tYuP9buodLYGiN/6B0OcArdOrOy1VNMMKW
         Bg8gWzEPF4x7TrVdNbpEDfbU6I+s0yWciBX0h/MTHGMFqVSmBFyFU7sLzLm7gEjfEAPQ
         iWUwbZA5mYyEAlsfZukwizqHrL75YuleASEh8KeJ/iz/Ajzfhpl0HFyfM/auNvsgVQPu
         6x/nd6uW0RrXu2SZ4Pc++hsgZHgMZAc05R2VdAK3V1Z2HRBvW9B6T42eUGX8xVXAydDu
         ooyOKw6x27fCpmpjaClOTaFdIz114O1VJe8OAfsd6zRhY3o8tPNu1EobEBiBgm1Sm2kZ
         9S1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759975101; x=1760579901;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tzv03VmmUGs+LjG3lHQExvBJa815vjqsuRExASSQwn8=;
        b=uFy6xiD5BWwan/SDSVieakyFc7D4ai0Jo5kp/Z6fkJiCNodhrz5kdNz+Foc+DYsoJy
         O7pQN+tRNGLzuvMt4h2BLjOvlyOtTapTkHb1XOdmJ2OayAWPwCNdjMep7vqzm4kLtZ03
         PT0/URJ31HxOecjZwGCrftcAypgJuGNzilWr9b0stI35ZVKkV5UVKE3vJxvw5DYv3I+L
         dlqECHvDT5r3URkCqnQtMIM63Zaa40cp2GBTWvYui7XyrChKPqKVT64eLNuFf+hu7hV6
         VIcwaYRAuD58lB1aS2JeOhzk1bJHde4UY1fNaSZGghG8U1Mu9Ak+0mxUq/S3n6pSAc2Z
         s/nw==
X-Forwarded-Encrypted: i=1; AJvYcCWeEer88GOSftPu/fu9P6OmLbA/0MN4TUDjfn+oWqP9Ya/X+fD9D6jl1q389ehwM57O3VzexIgtxKcf@vger.kernel.org
X-Gm-Message-State: AOJu0YyoMqKOtqDTSsJrTJs+BzFvGveTL3/FXURPexi7xgE0cz8wQt0j
	0sRyTnJkNgs4GzJakbElIIyVYPVR1JlYu0OOqpSwFE0YffuOGxRXOIfE
X-Gm-Gg: ASbGncsP2fjQJejxLh0AVqUKsVAOWtIBe2o304SnAIePBq3kOG1+Ud4ZFhf+iaNk6b2
	U0n2M+NZd+gBV3scu7oOMo4OGWXeUCLXejBjvgvQ8R7o5o9gk2CZqZR5P8G10jf+GrCUwltaucq
	VdoJDeTGnR46yRnJ4xa8xQQkgYEzU9KjQ1b36p5wY6DUa5f0OiOy0UtMOshwKXR1HeO30RMrx6g
	rhl1KDa8FHEbdgY0inBFcvG+y42RQGLqLYjcwbmevKmQnvh5nAWSpxa4Ue7lFEx1iEFwzZ27rrW
	MJP5niyc+S2PtW46NGKHyOt3A+sAGmParEBSo6cwodHfoJSbJDz9Wu63Iya65aKJ2bnHJTSR/+U
	iRepdPsgJG6l5NP0y4taWb8j6myyP8wHfp4Dig8WLog3U+JYqkhKg41TgxYntk84Ar1Rr5OFN3I
	CxSpdO
X-Google-Smtp-Source: AGHT+IG9RnsX45FbvrTJKGSgGRCj53q6iXUyoJNX4P1rwx54YsAmMMd8fwCV/l8tJGcj8EG+HSGqZw==
X-Received: by 2002:a05:620a:28c9:b0:803:7023:36b0 with SMTP id af79cd13be357-883570ce908mr678554585a.74.1759975100966;
        Wed, 08 Oct 2025 18:58:20 -0700 (PDT)
Received: from sleek (d-23-244-200-70.nh.cpe.atlanticbb.net. [23.244.200.70])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-884a2273bfbsm105377185a.43.2025.10.08.18.58.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 18:58:20 -0700 (PDT)
Date: Wed, 8 Oct 2025 21:58:19 -0400
From: Joshua Milas <josh.milas@gmail.com>
To: Inochi Amaoto <inochiama@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	unicorn_wang@outlook.com, alexander.sverdlin@gmail.com,
	rabenda.cn@gmail.com, thomas.bonnefille@bootlin.com,
	chao.wei@sophgo.com, devicetree@vger.kernel.org,
	sophgo@lists.linux.dev
Subject: Re: [PATCH 2/2] arm64: dts: sophgo: add initial Milk-V Duo S board
 support
Message-ID: <aOcWu-yvqwoqcTk3@sleek>
References: <20250927173619.89768-1-josh.milas@gmail.com>
 <20250927173619.89768-3-josh.milas@gmail.com>
 <nkzpfylhxyqf5u3bjlokhe4udgcxohbaanhwuofjzatan3iwio@45ljfquf5sui>
 <aN8isoQpdENTrxNJ@sleek>
 <oxke5yy22pb7nqzlbjsvhcq32xz77pmmxkcrnxr3lxqvhe6cxp@n43f2yngnfcc>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <oxke5yy22pb7nqzlbjsvhcq32xz77pmmxkcrnxr3lxqvhe6cxp@n43f2yngnfcc>

Inochi,

> Weird, I don't see it in riscv build. Can you post your dts here?

It ended up being a driver selection issue on my part. I got the
ARM64 and RICV both woring without the pinctrl config in the dts.
I was also able to get Ethernet working so V2 is hopefully a
maximal config.

Thanks,
- Joshua Milas

