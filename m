Return-Path: <devicetree+bounces-251162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC48CEFB75
	for <lists+devicetree@lfdr.de>; Sat, 03 Jan 2026 06:55:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A2BF630161A5
	for <lists+devicetree@lfdr.de>; Sat,  3 Jan 2026 05:55:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95CFB27057D;
	Sat,  3 Jan 2026 05:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="J+kqM7Vu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5454729408
	for <devicetree@vger.kernel.org>; Sat,  3 Jan 2026 05:55:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767419734; cv=none; b=j4eLykNyqi0O11nM0c2+i/SeyGKZad19YAmVCbMItVZ8pRmQbG3Ju1iskWXvVNIVHXeJbWis84/0gqcLvpJ39thisYdYDsiN6FldmlNVSvy56AwphqB0ZZBezk4tp4uBiG9OCIPMeM7hiZaEt2iZgrrVHdFO5joUP+XK6Nt821Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767419734; c=relaxed/simple;
	bh=3073OMvs0/LjEg4wr9mG+ncYvQgejlGvftaRsNqKdQs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GCkFai0CH5QXQpGALjq5aNQf/99H2jCgLiRHpd7chE86bBfaAbxz2haBysmFjzfBIouoOPUUsRrbx96WqQuiUtMldGGZMWUeGmtl3MJ97eMuITWY9wi4S/bP7axgjRE42eJgvcM91wDPZr4CAko4wycXWpMeRb1Zr91QcLt8HSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=J+kqM7Vu; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-47d493a9b96so27910405e9.1
        for <devicetree@vger.kernel.org>; Fri, 02 Jan 2026 21:55:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767419730; x=1768024530; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3073OMvs0/LjEg4wr9mG+ncYvQgejlGvftaRsNqKdQs=;
        b=J+kqM7VuDohgXrxd7lR0e+wM8kyPNyNEaGS5Lz4WeHSirtVEiESBLdKpTjlSRn+YnW
         m9DjtzH/UrfWqt7je+tew61V71iFTpoy8wveUlhAOgQb7uP6dHkt+khvseylqwhHICrp
         mmp6at4TYAATsexL0XC23eTaZyEIJIUZFKWeTLNC6jeR6FDAjTBAMla111MfvCzz8dUD
         k73S2RHTBRluZ5YzqhduAdrX8BjksTWS64oxr5zMkJpVq+kGroF7I76Xl5zekIwG/93o
         O17lUOqaw5i1kNbMBye78zxE4VHUHFQtPG2NGHTFbOhnC6kiQoOvkZ7g80RAog6pgYpz
         In5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767419730; x=1768024530;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3073OMvs0/LjEg4wr9mG+ncYvQgejlGvftaRsNqKdQs=;
        b=IPif8bzPcqPxZyUFpeyCjMGmSeCXup8kkVCRp1+PBnmZqmFD5c71BcwbqOvaE/RPls
         LNxStmdOTDhG2TrpnJ3Fo5opYZvAnPHlASftKR3yW4vMyhY0+HBsZofp5txTtiJ4m7b6
         bqKp6UGRie/b83+dpCD3oEEuVxs9YIP0l8P91SAnOb+xyfdgAc06yNJRzQSfQ4hQRwfH
         r4KG+srUvwJbGFpwSRQtFZ0caM13JhsP0IO5BZCQnlfB9fkGX9hqekb6NS6MlACHNL/H
         Sa6qGABIu8VXO+yuxdmRyvZ+QmV6K9qeTFvJI+qZ47RowqLj2lggMT30Uc1AoxbhBYn4
         fhDg==
X-Forwarded-Encrypted: i=1; AJvYcCXL4z/WXd2bpe68uX3dno1cWXj0QGbzMYsyAnUBh+RuPnllArOTpYwDRHxOUKSg220Lu0FLjE31kHwe@vger.kernel.org
X-Gm-Message-State: AOJu0YwIpllZIKccmnA+8LdJfW9+lUVUj4JWsi2sQn/EPl6oWKxs5/Nj
	qDQpBmWYnpiObAlO9+MAeyLjxf2LzH4HocBDCVD66nw5YtLmLSVGa96L
X-Gm-Gg: AY/fxX4kSddftBsm1LEHSzulVHFYhRdQShZtJLWBDtlwM/JfQldPcoWpi9sf5ASzC5d
	h9WeDRfZVXXI4clSAsZ0Iw/khdgw8yQYRbIGL2/qK2GzvyrgfX9ynkdyCtYmDO7Rtx1PKESPjBA
	qaYOk6SnDSG7NeRSqjbxrHiEDWb/LqZxJC3zj+IvrlBdTIcBQ4x/7ikZrEdDrxBD9oEeO5nIxt9
	V6Dxsi599Pd/DRPFFtptBC+WlaN5DHMBBJQzNRwVMyAuulOzNfOVHit8KisBibf5SrlaIrSiwsj
	+/3HPRZVmooe6rol8+miWbmrxGUJndDm1iygqiAI+PGljRy2vDv6GePaEwKDCm08LSOzO1qov45
	dzajH+JPQZavp9nFr1WKP4zOl0W7BvRxQ5K6ewCGsuKpwRLxuGUiWk8gPcu67Lh9DeBBnltyh6q
	qm+ccaDWK9xGFcFgB5lKK4KH6SDF4q/uWD7Et7+kGAoKgI9ljGQDZb4ryeTSUSeHTo
X-Google-Smtp-Source: AGHT+IFDlUycpHh35Bxl9zkKufMif2HIaPtEr71It/NuTPMJMkB/txx1IFoOyyH3seAcSTAkGZqUKg==
X-Received: by 2002:a05:600c:3b07:b0:47a:814c:eea1 with SMTP id 5b1f17b1804b1-47d195917d2mr509496085e9.35.1767419729438;
        Fri, 02 Jan 2026 21:55:29 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d6be5a555sm10532405e9.4.2026.01.02.21.55.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jan 2026 21:55:28 -0800 (PST)
Date: Sat, 3 Jan 2026 05:55:27 +0000
From: Stafford Horne <shorne@gmail.com>
To: Conor Dooley <conor@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>,
	Linux OpenRISC <linux-openrisc@vger.kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/5] dt-bindings: Add compatible string opencores,gpio
 to gpio-mmio
Message-ID: <aVivT0ruGpwdBO7L@antec>
References: <20251217080843.70621-1-shorne@gmail.com>
 <20251217080843.70621-2-shorne@gmail.com>
 <20251218-muzzle-diploma-25832f4af271@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251218-muzzle-diploma-25832f4af271@spud>

On Thu, Dec 18, 2025 at 12:55:07AM +0000, Conor Dooley wrote:
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> pw-bot: not-applicable

Thanks,

 -Stafford

