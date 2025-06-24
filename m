Return-Path: <devicetree+bounces-188867-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 373F2AE5D83
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 09:17:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BF3AD16D192
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 07:17:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 491D2239072;
	Tue, 24 Jun 2025 07:17:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="IZcRYgRA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B7E91F9F70
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 07:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750749445; cv=none; b=jdFBjEFm+UVRU/XLZqR3c+Ff1TIHcTFSX0xNccOkrWQN3LVvJAw/cfsrCxrbJQpMWVhnXJKCzpiTUy2soZ1Gj1zCKCG96HppvA698EBOXu7LoIicqm409L7UJXgeZLpjNEb69MCW8l1fqM7SFjyT/VT2DXZ4CvJUAc/i1eJ4zNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750749445; c=relaxed/simple;
	bh=TRc1zTyDT+fSz1+8EWkcifTl3VXwxxu/hq/2O257E7Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hJs6Ytvbiq/kQj+21N+Q2I3vHR6IFNIRaAO10hjcV0nfkoN16N5V2qe4O4RJWYpHxUKPWb9W5XI4lIvro+gOM7lRZ0SkAFXUDSxkVFGdHRXxNtgr/rdynvuEqfV0cMevtWeAhnm2K7fJuBWBb3YQM35HkQl/+Qm1gzwmNwkibtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=IZcRYgRA; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-60727e46168so211767a12.0
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 00:17:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1750749442; x=1751354242; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BFcrVzxUEB1S/HzKHEfngpEGCMqUhWHufb0plvtAAGA=;
        b=IZcRYgRAilaTPb4aweWLLj//GTFM+lonnQ1QdaBTPdEdkrUnUisVprXWWVqc1LOXJB
         Gv9zlijJQrpoxDfUlLAnuRIHGsUqWTt9IpvMLIbrkpxR+8/Vn9uLiqq3kEWEAwmhdhjv
         xs214xm3VjI0hSlJv2sVdGWUIlOzwxCtLWBOw4uV1RERaI5+znwXJianqrEJEJhmgi+t
         4KQdrWcgXTVgUnU95/vESOoqEXR8I16phnXkDD3DsThzTMdK016rx1Z1JxpkKsp+cdq+
         tAZo3ubJz2i6AwuMFcnkm3j0dQlcVWE3zLeRq0sbmEHOxIm9CCiq0vE8FRyF4XMGezli
         uYDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750749442; x=1751354242;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BFcrVzxUEB1S/HzKHEfngpEGCMqUhWHufb0plvtAAGA=;
        b=ellwYAmVFbxR67k/qgyXBAuXOBpeuLLj0AbP1tbeEZ8iJIzdY+9sThc+so5dJqXCK+
         +4NTBoUjljHQLbWFimAHi2htSTmueqGVjr2PD4RJ9FPH7muoR9aQ+r9hLzNN7w+Qtf3m
         WwW5/R5tGMJSxg04ptEm/cTdVe9mOtn3uizbOp3kkX4Cc/ybS4uv89D2//dNUNfl7HMY
         cgrYsWchqEWN5biHlYCtANMB7wDZN+TjdtFzupQL54oc29EKrATrEWBQfqS25XUA/QNJ
         x40ttuDzf0CWJrxTEv28Fn3fF3sm2xSeMZyxayuYUlnxDpoIo/Yx3R3f4az+6z/OrrHj
         iVlA==
X-Gm-Message-State: AOJu0YwwckrEGHqHuZF8ojCVCaaV4DwwWMw8/qXUc0QRXKlNvARiEZ3o
	aMFsi/+G8E1VhgvCjLoSQm4sahhCZVfsKCIfINLXeIlsKkA4tcrMmpNcIfj10KSt9GolY/N5MG8
	/D6cx
X-Gm-Gg: ASbGncts3H5VlBSJin3hEc6WPtLxKcaB7vUOvMEDoiGhEeUI6CfaW4Jtdkm1qJn4Thd
	2wYE3Hla/ZSTbSHDUaymoa4evUoSST6qQ/tFcNRFfB9MozZt+FH4BoWCrcEs0Tztfgs7qU0p62p
	Y8PTtnZqqhzkNwIURyCL+YhvQn5nLFKeI+4CfD+vQNbtlgZ72b2SVqvrncpYVTm1XqF0OyC/pve
	SmWIHbhs6YaTxkjIc+Sa4HsaYOxat4G+CFOd5lvKKjjK2ktVt8XtMmCqpzESYpg+gOWBxj+wwb6
	BJ4y0JP9aOQDEdknuYV+Zz8plq8K8GilWuo/MDlWAuzeghu68mkZz0zO+h6qOgeKvxnBpVdnmFC
	l7sXjSA==
X-Google-Smtp-Source: AGHT+IHDBqsRD74oW/38B1NadGOMpbn1e6oDld5G+sNW0edHiEBc7YbTzm1EOFJjzNfF+PtIsVilgA==
X-Received: by 2002:a05:6402:5215:b0:609:7e19:f12a with SMTP id 4fb4d7f45d1cf-60a1cd1ce00mr13959431a12.18.1750749441913;
        Tue, 24 Jun 2025 00:17:21 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.110])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c2f4a6307sm570954a12.74.2025.06.24.00.17.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jun 2025 00:17:21 -0700 (PDT)
Message-ID: <70547271-95d4-4da6-815e-1a140bf00859@tuxon.dev>
Date: Tue, 24 Jun 2025 10:17:20 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/3] AT91 SAMA7 SoC Clock Adjustments
To: Ryan.Wanner@microchip.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <cover.1750175453.git.Ryan.Wanner@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <cover.1750175453.git.Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 17.06.2025 19:08, Ryan.Wanner@microchip.com wrote:
> Ryan Wanner (3):
>   ARM: dts: microchip: sama7g5: Adjust clock xtal phandle
>   ARM: dts: microchip: sama7d65: Add clock name property
>   ARM: dts: microchip: sam9x7: Add clock name property

Applied to at91-dt, thanks!

