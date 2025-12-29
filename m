Return-Path: <devicetree+bounces-250303-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 49552CE8304
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 22:05:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AEA233017F18
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 21:05:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 922952E6CAB;
	Mon, 29 Dec 2025 21:05:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="D1Bg+L78"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F0A27FD48
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 21:05:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767042312; cv=none; b=I9iOG+iAzhL2eAdeOAb3s5LOW02jGSrG94ZGC+A1Yc92tObjLPMxLZHDCXLPWpkE7/mgw+FvDmx1fWLRnsrb4dj7QlT+Dxgn7zDGPZqjTwUHxR6MFBrSd/kVJNDaUjpa/nNc5jJHwdMx0OSybB04TFN/Aj80mxPlPgNjTvUnh04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767042312; c=relaxed/simple;
	bh=9nN6GCiW9qt7GM/1iJFw2vm+gtsFm5SDxDT0h7BmAzc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ObZ8rUpMM8qEPnild1yOKc3eiiASi1cSxAxBiqm3zSAbtNjQUEVEFuscU7zJVGhode0idmEu5pxQ8pSA2JrKEPeANB3WrTdWT0EYqGdMFrEOhOqLGnyyaZGeMa9CCf5w0QmaWs5G4ZNNlJn7J8DbgFAGSc55eq1WQj3h8LitIdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=D1Bg+L78; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-29f1bc40b35so161055885ad.2
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 13:05:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767042310; x=1767647110; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1wyqnBkAIe6wvEbKA0v5Rnr8yIh02S6Gm0JAY26jKGE=;
        b=D1Bg+L787GvwOhqolfQbKkTagyNw9v/JBzyX4Q1MLdZ1kfRB8AYEIZKWaWha1MC9F/
         fUTyNKkT3fPWR82E9WIr9zv3ek/GsX401Vlm0jq1Y9bKM3SVkDrO/RpDXg6Dcn8X+RK8
         jBLvYsNmgUz0Cmnh2LHsdJdLtqLuNFu+nqMdIv0l+24dRwlcS2TX+gBFWGN9Xfk27ZZB
         o/MsqSuFSgjQ0AXSoKLoelka3QllXpI5Add7hTl5NelEwxHH2iCIVh2psVSQw893Vvlf
         azly+4vh+74zRwJboRjY9BLZ5CVNHdpN9fklUs9LxVzvJ8QQEm1peBYaA5NGUxEYqBOL
         7kjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767042310; x=1767647110;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1wyqnBkAIe6wvEbKA0v5Rnr8yIh02S6Gm0JAY26jKGE=;
        b=wOlbdF49Uxm5RYFPq9tjj5xZ/g4txTsVoVhxdikZtUvzEbGRbwaW5BnTwdow9XcHwZ
         vgyL21TjKsSa+sNFl33ShIJZhLb76iScXrXOo2k592rDyYNFNiZlQrUmui9uJVETn+Bx
         6MTruqbekTqSeEm0GTr1KE9mK/Zt07gZKY1UHzOQDDMyYSMWTOmtr5Ad79TKbpz7OUxk
         P/sJ7S6igDJCSHvqyv/Et7jZdXrAeZtAIK91kJhNj1jBSV5oDxlABIEu+2/AJWnusUea
         oTs5g7+hRjp8+tk+Tl4zdn0dLCeCTVFQ7he5GN8H7eR2S6Cak8tPZHg1DB3QJ0tXfPgI
         D4uA==
X-Forwarded-Encrypted: i=1; AJvYcCWjbNvpSb1Vsmj2RnjL8H1pRTe5SUKV1uowl3va80f7aNFwVFxtH3ABvg3WxQ6ulU1fvjH3HfgT1/a2@vger.kernel.org
X-Gm-Message-State: AOJu0YydwUthxS/obXCbsrd82gsKqHhh+33fkYLXXgPLAwcNYcNswGkk
	qSC8zCX7B7IvnUlebrjNeiXGm83ps7YIjlZv/hNy1BrORJPvNr/q8NCM
X-Gm-Gg: AY/fxX7CfglYVY7C5JoywuGM0/FxCCY4KnziWRPz1Mjz40js3JFPITVQpjhWwcHpxzj
	ihvfr4Ykz0ruY67PjL1pXsnnPEQG8EU6RwYjG0dyx5ndhuOb0p2RklV7/HKfhQUZrRYcyidhZUU
	7HwyUKHO8v2DrBTp8I5I4spWgmxcO+DpV5Ig0DtPUXjWoMhOcbT6iO7ts7+POzIrtfX7RisOBcK
	owTQJV2Ra5hmIgktaTESrTuH+WKjediPAS7cQATxQZBi3sc9YYYfvT6sf2qgsSRVhCV4+pbEqJZ
	3vHM1lT3XJZIC4CMP1mspZO4Y0uaJJHzvFAVbUUM9AAxNNgV1u+W+KMN+LvF2ESoQDXYujj6MZo
	rSfGlS51C7QpIGBBZJ8ZSkISRVZjwi1SdBbJE51iy39jZ9Ow6CBCvWBYWFtJow4AswMZdpdskBX
	noBaJBU+WpSNLKeExUgFBz05SSJ5AeROgjzSU=
X-Google-Smtp-Source: AGHT+IHRcmWYJ2ZmVGVRweAC85UIeX3VMn3HZKv/o6kcebcf+iSW78gTx+5hOPFMA49Y0d0yJQ4zCw==
X-Received: by 2002:a05:7022:248a:b0:11b:869f:742a with SMTP id a92af1059eb24-121722a763cmr30452665c88.1.1767042310095;
        Mon, 29 Dec 2025 13:05:10 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1217243bbe3sm125650542c88.0.2025.12.29.13.05.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 13:05:09 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Mon, 29 Dec 2025 13:05:08 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Charles Hsu <hsu.yungteng@gmail.com>
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 1/2] dt-bindings: hwmon: add STEF48H28
Message-ID: <e714157a-ce8a-4b1a-9882-ca437d772fec@roeck-us.net>
References: <20251229103956.120184-1-hsu.yungteng@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251229103956.120184-1-hsu.yungteng@gmail.com>

On Mon, Dec 29, 2025 at 06:39:55PM +0800, Charles Hsu wrote:
> Add device tree bindings for the hot-swap controller STEF48H28.
> 
> Changes in v5:
> - Move the change list into the commit message.
> 
> Changes in v4:
> - Fix an incorrect datasheet URL and update it to the correct reference.
> 
> Changes in v3:
> - Move the STEF48H28 Device Tree binding from
>   trivial-devices.yaml to pmbus/stef48h28.yaml.
> 
> Changes in v2:
> - Fix the entry in trivial-devices.yaml by correcting the comment
>   and compatible string ordering.
> 
> Signed-off-by: Charles Hsu <hsu.yungteng@gmail.com>
> ---

First there are no change logs, than this ... change log goes here,
after "---".

Nowadays it seems that 80+ % of my time is taken up with such
trivialities, distracting from the actual code reviews.

I really need to set up AI code reviews to handle that :-(.

Guenter

