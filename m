Return-Path: <devicetree+bounces-223462-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D09A8BB55EE
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 23:01:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AD5BC1922105
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 21:01:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 710F82E11C6;
	Thu,  2 Oct 2025 20:55:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="b6RroNDL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F16662D3EEE
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 20:55:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759438545; cv=none; b=tdu43NwrzAHG8OHZB0h94NVENfvMsvuFaBh0djSaqD5/RRuOc8gHcwKyWiNOwtVyNNeJejoiYulAnomm5gxNoi72CurKh9Yil3xOoCB98ZgO8FDDZY/yth15kgi/R86dIIaiqnNDq4TMm8DlryC2wQ+Iul7qJj9Nz9DwfJgrZko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759438545; c=relaxed/simple;
	bh=Z9iSGZ+S2wi6F1tMIvySWX/506OKQt3iTsYD6qsKENo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RB8bS0qkgldDztaE4GGgDLn0tttb9eDUbX3BYuEaNBFX7OGu0wbj0tqsaZ2/N1+6t+ZgNZLi+ODBD2OUvf26DTxs5GyzBpwHLfGNFDqFzRk5xUWFXTcw7VBRTtd5xOQxa8hRrUt8RPGSEKYAfsxBvi2jr12k0vhy6PRwqHJW0gI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=b6RroNDL; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2681660d604so14093155ad.0
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 13:55:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759438543; x=1760043343; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6nWNzw5rFvgp5+4E98Z8mggAdalCFOI1DScecBvxjnM=;
        b=b6RroNDLzLznnFNiaz7yXatY0jWMrfUxE6G4oZj97RRKJt3nNA/Uoej1GAKCEFdsvs
         gPcCTpedk+89YT2NI9m+xCepcN9tAzhroUcSOmxnS/KYxwlL1qAppLHLc3Awl7PJlAQu
         WrfubdDKUiNWZWFialB+7jVYioWbMsIH4+hTkvpsdd7M4DRGGe7+bprZkU02ksfZfKFe
         c4zir1AZZzZNGVPAGWfsEr63n8vf1L5A1J1UDHfRVhfNi7toMcZcDsExxz49GLDIZwwo
         uL28sDEuqh+cmU9Xc+9S8ImueUOnzcUscuO/5SG4CtoUKLxojCfbRoXseMj/T/DnTf6K
         E/EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759438543; x=1760043343;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6nWNzw5rFvgp5+4E98Z8mggAdalCFOI1DScecBvxjnM=;
        b=UFygMb54bLVleOcktbmS+IGYT04QOGeFm5XvKgHmM7tx977l6Tfcm03akwCdW8D9fq
         n+peCAIcV+L5ALTW8r3iFZHHxQ66PxKeMNRu9/90zOSpCcaIDABrRxlrhIAGIn+lXJBR
         PkomgPqHdCzPUnyBhIMUCjXehMcqpFFsRxiucUsysTufWG5hdc5ZDEc9Oh9m/gnz6+E2
         wihmDfQNmnopGrdutd2ZPGZ19ngMNQrhtIQ9zL3zC7x2AOSp/44woVnpwL/v3q2fPUQq
         WxEfwdTZkVBTEls0K+15kDiOR/5Jx/UqH8xwMizJlLwbXVuYvm5oMO/JY2TmYL0Lki0Z
         79ww==
X-Forwarded-Encrypted: i=1; AJvYcCXtDAsbilOzn53TFMnWKvgOB8KPT9vV0XfkDbkP2Vzr8kV0YP5HM8QWbdVvBKRCVPG4JTsPpfiRv1fP@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9+iaTFNgcKLDG+XLpNBPLyZM61DDsM3IhUWbHzXocaqq3kBMZ
	HrTwCfcXiyphBvYKAAx1jYJmo1f4m6xf2QOrBaW+76fFu6QLNJguuVzE
X-Gm-Gg: ASbGncuHzRazjTEIqBb+fkyjvgOTdNhBMyXPpBiGF6tH3EywaJnNVFVPQV5hJnL+OsA
	CZTXXGdHv88UEI30E+LIe0qxHutTpA17HgKET6gyCvE+Zg58xJKOfb3if00Wkttt0uAJnykFFWM
	6DhvOZrYER5npPjA8XPU7AoRTRCd+kRY3SJpc8zLyezQedNS4fosL/U5+Mxm9kVaB7yzcgPqJ8c
	HzOjbUwY2nk34IXtCxogrDKNBwpT/PkNFP5dPVobSAAvT7ohJuNatriCmhBPxx8ZfPnTWy8vSSM
	t9fgGA+xzq78UHu5Pp4r9ccBSNnkgP7Um1FRQg+qZy+eGmc1YntDTOZ3yrb/yKHF3Xl8Ubxo09l
	BTtSAG2gVQ9PMcMGdcoXAYVAGpHuZSFM2hEtIUecLZwT8gEqAqOtz9bxoIFk=
X-Google-Smtp-Source: AGHT+IGYss5qk3VXhh2R+ZWPGB8ZQYoyyFAiwZWm24n7JZhmlZdFeuaqBerfiJZ6THmQhp0n8lu8ag==
X-Received: by 2002:a17:902:c405:b0:24c:a9c6:d193 with SMTP id d9443c01a7336-28e9a54661cmr8418405ad.18.1759438543174;
        Thu, 02 Oct 2025 13:55:43 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d1d622dsm29757765ad.110.2025.10.02.13.55.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Oct 2025 13:55:42 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Thu, 2 Oct 2025 13:55:41 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Kim Seer Paller <kimseer.paller@analog.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>, linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org
Subject: Re: [PATCH 2/2] hwmon: (pmbus/max17616): add driver for max17616
Message-ID: <2731236d-e3a3-4fba-9938-ca6b10f975d5@roeck-us.net>
References: <20250930-upstream-max17616-v1-0-1525a85f126c@analog.com>
 <20250930-upstream-max17616-v1-2-1525a85f126c@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250930-upstream-max17616-v1-2-1525a85f126c@analog.com>

On Tue, Sep 30, 2025 at 01:02:21PM +0800, Kim Seer Paller wrote:
> Add support for MAX17616/MAX17616A current-limiter with
> overvoltage/surge, undervoltage, reverse polarity, loss of ground
> protection with PMBus interface. The PMBus interface allows monitoring
> of input/output voltages, output current and temperature.
> 
> Signed-off-by: Kim Seer Paller <kimseer.paller@analog.com>

Applied to hwmon-next.

Thanks,
Guenter

