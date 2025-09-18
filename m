Return-Path: <devicetree+bounces-218665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8172FB82F3B
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 07:10:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4A98058329B
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 05:10:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8869C246335;
	Thu, 18 Sep 2025 05:09:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UahEEE5o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD45C26B0B3
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 05:09:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758172197; cv=none; b=D71piptoGwTrCLteapNYYlEINdr1BMgHkkMmGKWKQbUNpulXwDLn7rZUAjvFiNeRKUaK34s+69s3fd3QKOsyJo5wxpa3FsGYFQ8bS9Xmt/WRXiiyLHplhJVOWn3ycZKRUoJpPfhiypj1ZiiFx/zgtUpfBJg/Q3JINiUGwbBpy4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758172197; c=relaxed/simple;
	bh=cSJ4eUM0DsaOhlcWfrSZ2S7GNwrJAdc8Rw5tLu8gtJA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r+gu5Xu/toNqR9gd2xgp0ErwzWieuHmwEYhtB2+u7PxTeXspvhdab81yI2+2wQ6XsyBnFoh+KQL70UmbaeDc9FTsAkhfvWnBoVRgULRO7v1TeaCZGpc6HcBX7ujnUYSx4dZ0Eda+HOGkTkDTNf9rNP/J3DAb7TWKnE/IN8sujzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UahEEE5o; arc=none smtp.client-ip=209.85.216.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-327f87275d4so529498a91.1
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 22:09:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758172195; x=1758776995; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JzO5J5b/DpAoS9q36wSTyxp4bWMYntWCRlnNr1Ul6mw=;
        b=UahEEE5ofyyXoY047oataLzWhTWmrdVjWxR5DajFp+OW/RVx96mNne9PEwYgxIbr01
         sgobGqqdmp2eERbWq8df6OZLLXGMAyJgQMKKyG2suLXyo6NIaoOV+BGwOSE22NjicMel
         NoqPDcPuPDxfug2zTgMlZhWlJW84LhJ8PlfdzTMXmwai6XBmuWBLsH4U6az6OMtipAZ9
         3dm/yo5REjUVgpyrCuAeDnmsF75hdWp7jJNBewYHlT/ylEf7W9XFTV0jTb0/7SpxQ3Zg
         GNZe8podHYoL0RGhGMbozcaL1cICuAplq+K/b/RfqegoxOKsmA4xuNnWGmaFT61da3Je
         /Nkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758172195; x=1758776995;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JzO5J5b/DpAoS9q36wSTyxp4bWMYntWCRlnNr1Ul6mw=;
        b=eyFcWzBeS8Y3CRIPiEwsNguSPQ839RMNeAwQ5BbkxkeWxClNvbnri9J2RqMlE+LYK6
         GJngLZj6e4XnRdN15HT18AmoKWfPhsVXt9Za2wn8XEMyg6TJXT0079AyaW84eoSBSgvX
         eQgqMn5Y7cj0quEZvC5j7ffIj4S2I2ahWpr2TuvSNeUytaw89FBo9zXIp97w7f4Tq7DQ
         R2xlzazjefJJ57SVqvntrxWrDned1CLi4mIC6Ie+tt9LjL4ZrFjgvSOdr2YmHt7wuy2E
         WfjeYyfZ0UXyECEo/LtAiQ3D9E2PfiY2pdzBTkBVh5YDOCIVzJejefr/maiL/xVk/DLq
         cW+Q==
X-Forwarded-Encrypted: i=1; AJvYcCWES5EpLTNuYT9jyeiSqW4IgSnhko+M6ZNVhL5deQD2mXrf56q+bqyXrYRAc+yrlyAtuoETUmTce/oF@vger.kernel.org
X-Gm-Message-State: AOJu0YwbBGFZk9ImgxMPEM4e6OttECtnv9UJBFmjF6SrAl7HoK2dDPWg
	DJytoWivs3RiClkAd9wWhzGNPFXl6rUs7BTx+9VUZso6jgPoxCSZz6v9
X-Gm-Gg: ASbGncupJPL7OjHqrWOLDFRyKbhZvl4xz/rG0+gVQeZLoc4ugfxr7tz9dWoWxzYRQWi
	Ehk3Hd6It12NQSnh6IL1WlGvYILHwz1M0DGF4LLvkCw8tD6dRk7NG4DPFmLmvOnEQCj6FCGd+fk
	dJiGx54FRihuArg631rc1LCoWorvfb8iJbLMMi1Snx1glIot0e/m60eH/nu1F1y+TRZXN2hPwGb
	QbaQkmh2B5twFZ00VEHOhP8djDfjTUT70YOtttSu6udKdzTlh+CKO1pG0tZ71c6omlTmJVQvnDv
	YOA4op40jWWm6kPr0TnR5ZxQD67siNgFKLeaANkttTcavJvmkAocXyKeIZcuo758494hw/iUfAn
	TsoJm8/tomFiUSwNLdRfHtIqFCKVSvy1Oc/+uI2Kj37yibPs6MKGG
X-Google-Smtp-Source: AGHT+IEoyQwkdhcbO2KKAnocbbWtxOraH4oEPJ9rZeaTPzEToqLKVmqvC+7go7FKKDfNLNeEHp+khA==
X-Received: by 2002:a17:90a:e7c9:b0:32e:329d:3062 with SMTP id 98e67ed59e1d1-32ee3f7431fmr6979916a91.19.1758172195070;
        Wed, 17 Sep 2025 22:09:55 -0700 (PDT)
Received: from google.com ([2620:15c:9d:2:194b:8358:5c91:3d3d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32ed278b065sm4122687a91.29.2025.09.17.22.09.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 22:09:54 -0700 (PDT)
Date: Wed, 17 Sep 2025 22:09:52 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Frank Li <Frank.Li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"open list:INPUT (KEYBOARD, MOUSE, JOYSTICK, TOUCHSCREEN)..." <linux-input@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, imx@lists.linux.dev
Subject: Re: [PATCH v2 1/1] dt-bindings: input: convert tca8418_keypad.txt to
 yaml format
Message-ID: <htwupxwox3c5fjvjr3nxc5qtotgnlesit2jnswg3g37a5tku7t@npyzyv7mtwr3>
References: <20250916171327.3773620-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250916171327.3773620-1-Frank.Li@nxp.com>

On Tue, Sep 16, 2025 at 01:13:26PM -0400, Frank Li wrote:
> Convert tca8418_keypad.txt to yaml format.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Applied, thank you.

-- 
Dmitry

