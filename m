Return-Path: <devicetree+bounces-223468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3EEBB57AB
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 23:34:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9F6DC4E74B0
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 21:34:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 563112512D7;
	Thu,  2 Oct 2025 21:34:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lfcQQzeR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B69921E4AB
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 21:34:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759440858; cv=none; b=iVkMNJlSxIXlGGvOhx8mMk33rMteyQHq4Gp9nNSlxNfP2RejARzShrQ/BxgnytXZt8ZnsexQVrsGlwHVLM7BWsULFEDNO44MsWAneuU+Zyj0tE8Py8fEtjVK139wxt1FB4jx6kmngNKDxTm4HnmWwTIwgkHmHIcws8t7Buavp8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759440858; c=relaxed/simple;
	bh=7iSxhUwFdayMNkBWqhX/46UeqkWg3MxAUcCsOEZ/TwI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nFZRXiPPQfkf6ETmH4o0M1vQHQLvqF2/onFRJ6uyVL1zCDamoY7Ede92JWINMlWVZw6c8VZ7ovH51VWpUdxJAPudetgxzVqdNWMko56qem85bzvgyrbm8eUnhcMRZtCDknux9pVI87TOPQYpx2Lp/RwRkgZ27kL3VE4/e7Ad24U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lfcQQzeR; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-781206cce18so1367508b3a.0
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 14:34:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759440855; x=1760045655; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z1PrJRpi1vH5GxKwZlWbhM3YXHmClyIGjsFkroyXTL4=;
        b=lfcQQzeRu9CjFTaBbxpvB2eeRykW50cBni0HeRqgq+J8HSKgDX03wzcv4IsarnycsE
         whmNkCvsEVA317ilzRdgwvOXrq0YhLzxV0joclNiQY707arzlnA11ilIJZKt9/4p3v/K
         VrHLWT26LpVTKC9j132SSYYacvpQqNN7Cukx7M3dG/LchHdcEJo/OtZneRbQJPDBS3E1
         2KCOJnU3Jg1HkwpWb835Ort4Qx9v/jFSmMwylEBEeIW9TnX7Yb4Kz7PY6pLGho6mnP1m
         YXdisIX7KARxsVHSUnSSLRlfvOCqGRgPK2VKJOS0cIyMOUVPEtzA1NrDJVSgT7DJYWTL
         OHDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759440855; x=1760045655;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z1PrJRpi1vH5GxKwZlWbhM3YXHmClyIGjsFkroyXTL4=;
        b=ez+HeLgkWfimHc5mjDYXxEf54Ml26oA+cu8Xvq+LOr5zVRMqTCvP9iWJOiQJhknVlu
         eiIetYr8znaiXszUP9ohEO1LCyIfVgUnwa9MFLmP5ZyXohm7HIaEG5ZwRN5QI0wl/0Sk
         JW9f8sJpRLjTUidNq46fNe4oNQa8tepweci3WY1U4dbBGVq7F9065oiFFG1uJDMr/abs
         OH7vmc4kqYUdA1cvR/ZJ3P9SCe3z+Z9fL6XOUEFIsSKiQZ9z65ER6pi8Wqwpll2icdE6
         RDOwP0uQsSBN8S8ZH1UFPPgX9v4QOGMvwtjxj+eUO2U0RDPqYiPuXXOLY783fmS2cXtj
         h7lw==
X-Forwarded-Encrypted: i=1; AJvYcCVHjNyCwmxMZjfjU//aovwhVU049qG2TeqnujndMC9YwZpF61KhIgUlw/yu3yQ1h0lcvGJDhf+M+lER@vger.kernel.org
X-Gm-Message-State: AOJu0YxuU0xrWHp66CQdq7Pnw3zioiXX7rmF+NUjmPXLfaFtx21r0G0I
	R2pvD/6+zTYfiLb/OGU8nXSpgODi/0EJSAAqgv7h4hLzN5Mm/sMGP3mPvrdiDMWM
X-Gm-Gg: ASbGncsV3DfE6+NHi7ddjBsdvsCJVLKeNwyDQ3BHzTdIeplgrO1CBU0MQKYbcKtWEUl
	oA/4ohuIMTh4/cTdHASK2udJa7A0TMNhH//w9GLeiMh8+HZjEF6eY7vJtUQPG+CZVEX9yn2bZv5
	NmQavpW6SLgYts5mcEafDHzYUw6U7ZQHHSRHjpCU1toD9jhEMa5g3k+47dFXDiRm/WMUnEhu2ji
	ZQ5MYLBBhoDr/cSjfeB3a5CQxtjp7AGcK9Yy5s9d5XkLa16MFHy4B4vJFoiUXK96VVfRI5NH1Mu
	9uIa8jc2e60hP1w3jkawHLYvUBU/ojQxQ2PqaWG672E6NBICEUJDMd4YfCrTjR4DxkcLYfmyD57
	dJxEvsaDavhTMAiI4z63IgifinbJRougMBBYlbCj/3alyk3SVGmMDnCU1LLA=
X-Google-Smtp-Source: AGHT+IEeOUf9stYiH4A1VxaI8NkZFOnx8BChpkifOeNgOd1G+kYcSz65i3l+MHbiV/bwjRo4Ir5TvA==
X-Received: by 2002:a05:6a20:72a6:b0:327:957:f915 with SMTP id adf61e73a8af0-32b61d9daa6mr932098637.24.1759440854923;
        Thu, 02 Oct 2025 14:34:14 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78b01f9daffsm2947915b3a.17.2025.10.02.14.34.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Oct 2025 14:34:14 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Thu, 2 Oct 2025 14:34:08 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Jean Delvare <jdelvare@suse.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: hwmon: ntc-thermistor: Add Murata
 ncp18wm474 NTC
Message-ID: <f33219df-2b2c-4edb-bcb6-bad189c25348@roeck-us.net>
References: <20251001-ntc-thermistor-ncp18wm474-v1-0-2c64b9b509ff@pengutronix.de>
 <20251001-ntc-thermistor-ncp18wm474-v1-2-2c64b9b509ff@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251001-ntc-thermistor-ncp18wm474-v1-2-2c64b9b509ff@pengutronix.de>

On Wed, Oct 01, 2025 at 01:45:28PM +0200, Sascha Hauer wrote:
> Add Murata ncp18wm474 [1] NTC to the ntc-thermistor binding.
> 
> [1] https://www.murata.com/en-eu/api/pdfdownloadapi?cate=&partno=NCP18WM474E03RB
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Applied to hwmon-next.

Thanks,
Guenter

