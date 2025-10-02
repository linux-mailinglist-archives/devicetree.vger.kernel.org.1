Return-Path: <devicetree+bounces-223458-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 33CF2BB549B
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 22:56:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8AC3D3B085A
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 20:55:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08319254B1B;
	Thu,  2 Oct 2025 20:52:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VjnxI9Fs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205A025B662
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 20:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759438349; cv=none; b=F8uP9uxwc7tOflFCrWm5da+gEk3MBhc32c9ebHApDF15d3Vq7YG50njoMvYhgoedIrpmdqGCaK9Thdqz62yxgdbChKKxCZkfLGsvF2O9uGlW3abaxvmQvrmU17x3Py/Vf8NDHPhLctSDFvHpsSK57KoNKRoAGNI39JFAo/CO2O4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759438349; c=relaxed/simple;
	bh=DvKZeJuc8q1pMCcveAAdBLsuoO3iYHiqN7Yxh8CK/bc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KXi9S5P7KIM4eblJIZJFbnWkDIPENzWLuVnQulok74/Hao4XT7YzlN8Ie12Uu0KLfM6FgC/Jz9gbfiK0EO8EdIDr4dkSnQYzBoh60J1hHQtUDRR+khusMqO7ABQaJC2NJtCLZtjL8CqEUxmm9eajThzacRUTDn+jDMxvOxIaj6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VjnxI9Fs; arc=none smtp.client-ip=209.85.216.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-33082aed31dso1747271a91.3
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 13:52:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759438347; x=1760043147; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Wt8+KJKLTvjnTsuEvXC7oAoHF1RulS1QZOqpF4RenyQ=;
        b=VjnxI9FsS0LtdoezIfJ650dPiD8s7Qdm80G57wvuC7AZs0vPjHFRa69WFn+P0AWUcT
         HT0Wfq44xLZD3jUpHHr3kREbXlx09js7vVtFUgil0tPOcxv0JFYT4tgXC2O4jjPMoLf+
         VeKO+Htwevi6g/ZNPNrEwfh/YiLOKzGYaXSKqJRx5Hhd1lcbDbyWzElr6JiC+biTOIrw
         6bVn/8terpx3pJFrCNKPNdIJgV1edcmgbnFFrgJyKo+vYUaXEa6c7dk886HXuNX3ev6t
         +lw9dxTFiC48EWxg4QgpIOijgVNFzfxTmb7AZbjiGRX4ttXiNod1PI/M0PJWCDLpR3W1
         fxog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759438347; x=1760043147;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wt8+KJKLTvjnTsuEvXC7oAoHF1RulS1QZOqpF4RenyQ=;
        b=jpvnilH863520qobizAOfnmwDGf6zMtYeWZZcFBf2bTU6OnGXaCcPDiCF4S6U6HhAD
         5Py9YP9OAXRdJmhjnacDF2Is7vhN9lAci934w0WW22K7wqRKh2Q8ULdhO7+gW1J+F88k
         CBu6wm5cFKRv7YPs6puOQkGcwLOFsvhf5dwNsEz/eStFZGWP6ymTYMlSKcQMyY7WHhL6
         OasTwitDvZQt5wZRaFXt1q7/AeQ0Oe/rrkVSHCbRpIvt2RYvnatmg2SwjgsUmVbuZa/e
         JHXkmF7UgisyC+Oquzg+aXl7/3k6QgZRjGJ291Ei7Nxga18SrO5BbwrBmRQyfcHqTq8d
         //uA==
X-Forwarded-Encrypted: i=1; AJvYcCUg+6g7j7Kc7bpwOyXTLv4MMfzLvPvvmS1UytvdX47u89EIZphOokJq695OIOs6iHZAjxOhFhN4CS4B@vger.kernel.org
X-Gm-Message-State: AOJu0YwN/bWznxekgXmjbTZxPXUuA90eVpo1nkAtoElXeAnljzkv980K
	lYKndytAERpVli+HQZ4pKfHhgFw7JhLwrq7hT1JPoaXJNTx1MCplslH9WYbUuYfL
X-Gm-Gg: ASbGnctcSWxpykTNKsTlw2fD4zNvFO93TG2RcoNdlnolgEhpAYWNo36664fHNtFtZbu
	U73wBsIe3EeyIauPfU+59OUfBXFXx5oODUeZ03UGD85xO+9f8AtRoeS5UA7aMH+aE8IowqyrghI
	CXQ6DXX0lbomCkv8hanoCErbI3IM6zQd7CKWAMco2abolixZsCt2XCQTJft2n8ESu+jgAeHdX+X
	LOEB4dEmTweNOpuGE5qZwLQfGd58PNIy2HHrmMmQhsEVMQQ36DCdsop+R/0C56AJDjRUG5/cv+3
	qBS2jnijgIRJHhXAxjEcPFoTJUea22LWJsXy02rApPe9W/u3RyMD0rxTV8P9hG7vyNCldL9AmPx
	19+tI697XLBmLZMOj9CbyT805G5pm7cWPPxG55Rv/VIYvxE7SGontgnpjIh5WVKVX2gvDzg==
X-Google-Smtp-Source: AGHT+IGUkkG0M/4u6akYKC5LQ5MwjiuQ21TfsswJrB9jKVK8JMKVo01HtMK12v0tDjHeG8d4+1MNuQ==
X-Received: by 2002:a17:90b:4d0e:b0:334:e020:2f16 with SMTP id 98e67ed59e1d1-339c2720714mr717648a91.11.1759438347329;
        Thu, 02 Oct 2025 13:52:27 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-339a701bf31sm5792124a91.19.2025.10.02.13.52.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Oct 2025 13:52:26 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Thu, 2 Oct 2025 13:52:25 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: wenswang@yeah.net
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	jdelvare@suse.com, corbet@lwn.net, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
	linux-doc@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: hwmon: Add MPS mp2925 and mp2929
Message-ID: <7c751da9-e480-4c20-85e8-5ceaaefa1027@roeck-us.net>
References: <20250928092655.1394429-1-wenswang@yeah.net>
 <20250928092845.1394718-1-wenswang@yeah.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250928092845.1394718-1-wenswang@yeah.net>

On Sun, Sep 28, 2025 at 05:28:44PM +0800, wenswang@yeah.net wrote:
> From: Wensheng Wang <wenswang@yeah.net>
> 
> Add support for MPS mp2925 and mp2929 controller.
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Wensheng Wang <wenswang@yeah.net>

Applied to hwmon-next.

Thanks,
Guenter

