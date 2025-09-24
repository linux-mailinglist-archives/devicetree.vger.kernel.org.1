Return-Path: <devicetree+bounces-220773-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C7CB9A49E
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 16:38:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DEB2D7B5254
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 14:36:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D72FC307AFB;
	Wed, 24 Sep 2025 14:38:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OUBiMUp8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 578CF307ACD
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 14:38:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758724699; cv=none; b=DFBeeACnMkQbluInd1Z6NPeRniV7caamC7ddR0/itbSHUap9yFGXoYfmdmBLrZ6tRCpxML4ZQGcGSqok7V23sW3+x6mpTF1+13/zrwTZK2dSgfJAaq3E87dae/Wb0EzZtbzFf7DsIP/zHMF/68xf2boagIMfRMX/NPWhlFtBWyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758724699; c=relaxed/simple;
	bh=z4kOzNKrt1YHasVRJGOjxknq262Dt5Qz+bhd7P3hKW0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tudnWVMQtdv/Glf7S/zlX3fboaqNK1KaR11EspZyfj7LW4d+Puved8YAbWgTYm6cXE3HMgzG5npLYSgeIv/GaRPcrCtTDpnrdTjy+SBf83N+e+AghXybdn0u4NLp8x/h/YLD2X87/MAI1Jalx0TfsLjD/KKRNMv8T27YaBM64cI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OUBiMUp8; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-b5241e51764so5393790a12.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 07:38:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758724697; x=1759329497; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7FKs+A770otT1hMK/+muE0W9EUNGUj8tGucYnsoqh3w=;
        b=OUBiMUp8eU8cP4tTldTSDz8HaBnzEjFkVN5VM6444aVpCHpyGZ8K0NEsDoRY3vW41R
         HnqXg4OMxuhYwta0IvDhMvA6cBXPoiFp75dEbby26G/m4ipXoBytvbs7WtyxkP0bPQDG
         l+CSmjNQ+co03g1SPLU5moDmqgdNVXiRuSbRxMOxlMosgvBgkJ6Yo24TQnE1C4EClAdY
         CLanv925t+TqJdyfMMQqoe7YHcAX2ZpaDx/aekzRgSMyY3OH01d+MmfhEzpzGpiWosCN
         i+lSzciJF1iESeY9shTKM+7CuDkT0w0ZiNwJmqu7aYv47AXiwUA9skGh6zVgE5jEqyu3
         PVkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758724697; x=1759329497;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7FKs+A770otT1hMK/+muE0W9EUNGUj8tGucYnsoqh3w=;
        b=sr1EDU/i3JUQbKsXzbegVVP5IZn1lnfCEHhzguZj/fKXbyaAfqfk2mjmcSjeF7/rsf
         BJ+vLzY5a/sV3v6bteHz1O8MyzJi16sLfk8FFG+YaUtIIGrrvMC81KBU/KtmpHPZKPhR
         bLzGeUTTXMe7IdbDjHfBlplLsTKDRguYXSkDZ0Tm6XD8uhRGSHLLnidzRL2kTPiDyA1/
         PKHWCMgNYNddGbIap0bfDEwpe25xzdoh2/QoD5e9t6wueCDR/pRvQL4lpZbtJokNmkaT
         alFZcxZA7NC8XUKSuxVX2hNUlP02jfDWKLZBrChLbf6pIgHpIPV3gOMeqUVstf3HTVpB
         Zx8w==
X-Forwarded-Encrypted: i=1; AJvYcCVQdBJJqR6T1YirUKpPp2q8UtnVwD6yIXDha/jT0Furf9Yk5HQlsTdPxc/7rFDKHmqP5hdYeuIvK7vY@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5/kl/xEBjFam/1712H/KJVz3vTj63ar22z11I1U4ViGEavNNF
	XrxiEK7YjD8PPT7CygmuXltGQWJZZoO06fmXXzrnNTmubyeF7s/hgLlX
X-Gm-Gg: ASbGncs1B/lrJWTtpYNhWJp1yStwWveKZjQ5KNIZz70pb54JvuJoZwCNEOVVoNCokg2
	lHFCfYsO/iOy6xYcieUVK4ByriAuaYlpSPWCgrMtRUaLs8FEziVPZcnycqhtQWUakl8pO/xN1n2
	34iWIPaQ3SlGZeVzv/k+2DxyH/5YTlZq4PG2ulRyDgkCqHtdhr6nmcTu4yXpZCPAzHrunkPmp/C
	aXhPdMcfdlHy6S/JiVwG4XlbbsGu8DevGLX0TkC6cCNu6l2EAc/NsdcHXBMKm1qZJnL7rksVVf4
	Kz+uZQvIZG68RTtCc4zo7b9aRTXUMUb7tueAM2Rg6Pxjf+HEspFrDhJTqJ3WJc3Apja8oMEYf3a
	bvZAaawc3ipJAH6b99o8KnPK3Vc41T23z9XU=
X-Google-Smtp-Source: AGHT+IFnWLOdHL6EKD5bcnYki0oGZdxMqsJkwwvFoAddBVqOFVNBl9Ak/lLPOlpJgM6fEJ+dHVv4Pg==
X-Received: by 2002:a17:902:f549:b0:24b:62ef:9d38 with SMTP id d9443c01a7336-27cc34502b6mr74638195ad.19.1758724697443;
        Wed, 24 Sep 2025 07:38:17 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-269800531a0sm194313035ad.16.2025.09.24.07.38.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 07:38:16 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Wed, 24 Sep 2025 07:38:16 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Cosmo Chou <chou.cosmo@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	jdelvare@suse.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
	linux-doc@vger.kernel.org, corbet@lwn.net, cosmo.chou@quantatw.com
Subject: Re: [PATCH 2/2] hwmon: (pmbus/mp5990) add support for MP5998
Message-ID: <a3658e9c-6039-4591-9ccf-c429bd900803@roeck-us.net>
References: <20250916095026.800164-1-chou.cosmo@gmail.com>
 <20250916095026.800164-2-chou.cosmo@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250916095026.800164-2-chou.cosmo@gmail.com>

On Tue, Sep 16, 2025 at 05:50:26PM +0800, Cosmo Chou wrote:
> Add support for the MPS MP5998 hot-swap controller. Like MP5990, MP5998
> uses EFUSE_CFG (0xC4) bit 9 to indicate linear/direct data format.
> 
> Signed-off-by: Cosmo Chou <chou.cosmo@gmail.com>

Applied.

Guenter

