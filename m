Return-Path: <devicetree+bounces-177549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 64AA4AB8042
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 10:22:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4E2B77B772A
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 08:20:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33C15242D61;
	Thu, 15 May 2025 08:22:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PXYIkhSd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596E3283FDE
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 08:22:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747297326; cv=none; b=UrFDbu+oNhs0kCnDMrstKgMjeza/EuVVfUI6cYHRQl6DAEu5l+5bX47jvfMfeEAd4KNQ4bwHsUtBeLyXQp6cO0yyM+DRuodmR5NWpkXXfmZ99TCgcF0PKPIBx9K4k9rqytqx3bhLgFwNPqNLgIkOtPYUJEyMWlEusw5pnM+HyFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747297326; c=relaxed/simple;
	bh=U6vP9JizHtN697yNxPJICqSQeiHA7c5NancUYDVDTkA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HtHuKz2Eulmr5LufUf2sWlNacb1xaufGmpO4omY/u0ZZnzdnpwE0hjDVNc6OsJRgq8yq6GtasLZ0FqGCV/3wWJsDpnUhw/wPwlXnmKJNu5RmzFjC3FtR359WjRB7MuLE7QWWMKIpi8UiUlx6oo6n1gEy3FzDv7isRun2sEO3uWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PXYIkhSd; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3a1d8c09683so364849f8f.0
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 01:22:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747297322; x=1747902122; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cwqUHHdTF91D3Vj/+GcN5929CF7RhLAulz2cfebEFLc=;
        b=PXYIkhSdYCdDpKxFXhbujo5m/7AoT8u+bfv/tpWalRCcUgC4znsKDTsRukgFvzwqQ1
         T01yMT8Olt/oyWZdycbz7KoPv3cZpZKMRWaVWjnVvDcT41or/BOL46sUpon0xR5V3Lh7
         RfHI+bsuO7iT8c53L0jwO5nk5suaENDzTwHI1PdMXiTxi9MNzPJo/fz0/AmlTNlvi8Wk
         n1/6rPmAqw7c+5rMXREPiUp1Lm+AOqz1pjpFyuVl9+FqGOCAmEcc/aS2Etc58q/pzmj9
         ZZaVQjNiwV33lS+HYIskxc2ZZGR5Xd9XD/Xim2FiPVmWo74K48gkFuCBXycmnIqQCzEY
         aOFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747297322; x=1747902122;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cwqUHHdTF91D3Vj/+GcN5929CF7RhLAulz2cfebEFLc=;
        b=XTsGV4MAeDzvcTTVtpQg1k3bhwJzvayZbp154A2ueXwQ0wMHRII4KwLbUkuio5QV3m
         mCyOypd4rJEv2Mho9IMf2Yg8jNK8pTVK+vresCEmL/R4U6nFutCkqxdrfknmyYopSeIv
         inD9AT0h+/wbHlY56SduBmzb8cwmpreTzY1e3DTmw64G4u0FmDbdkL0Nai3wYaRLSG6x
         TPphtfEd7cw4N4QDcGkR+vXwc3KAqhMBU1ftqorOJynhN1Iyq9Dnvt71COvV/zvltpKe
         wMcCYeEg3O42wmZhwJHXBxN6qkV+G0axmQrf0aJXP/0bA/0bmiYSixr0XGoy1z1zvTaI
         gNzA==
X-Forwarded-Encrypted: i=1; AJvYcCXHQFZ7HMlXz5GhwQKoO3CnDvqU0DDMbiHdojis799BELFHP2ryZybv6s9qwMF3VXHWRdxYgHoojF8n@vger.kernel.org
X-Gm-Message-State: AOJu0YyZbPg658sggm6xa7gsXs3G9C2OmdiE1ou5G3UE38UU1QgF2dvm
	mEWyPCyelLqF/zwUIUKzc7FTTO2P3X6lHyhj2KLeigWyA/i4DXE8aaoEL6W5GIs=
X-Gm-Gg: ASbGncsVmHhMvBYpGJJBOnDJLoDiMzTrpJkC6hjWLZia3/CXkDQ1Z65ghcMNM0ypmxy
	eMaqWHLBOg7tLQGrxQa33ddEu0GgSNgnGnw8pmpJ2vbeZ557TweqNhU/AuhIxxt7O4G9654am/7
	CWvFsIOcc7Myf8tdrkNNPt3/76GxJulUzyj1HZHY1v9wHvWVRKvFW9tYiqi0Pbj3ulshcIKuz3Y
	5J296IqRRHnM/QF6eULOfsOLea3vW19TFUr92UI+lOOCAYsl8OfzMsTsWFSiZ/NsFqbNbfU+t9o
	p2WACXtrFD4I2XHt/jDm+9pHRK5tU37tpxwVlG4PPfFJhOGrVcljo8ScMxKQhRe+hzGSrR5yKVc
	ZVTIRISdxULvRMLskVrnePaNd
X-Google-Smtp-Source: AGHT+IEvJfsPG0RbSxlh3qVywIhfEe0j7tWzjzYk0eTDxtJ6hIF/F55PmVsRP1w3DwDXesYgeUcG7w==
X-Received: by 2002:a5d:5f8a:0:b0:3a0:9dc2:5e0e with SMTP id ffacd0b85a97d-3a3496957efmr5669361f8f.11.1747297322537;
        Thu, 15 May 2025 01:22:02 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f57ddff6sm22256614f8f.12.2025.05.15.01.22.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 May 2025 01:22:02 -0700 (PDT)
Date: Thu, 15 May 2025 10:22:00 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Noam Camus <noamca@mellanox.com>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: timer: Convert ezchip,nps400-timer to DT
 schema
Message-ID: <aCWkKJladcEtGMwQ@mai.linaro.org>
References: <20250506022237.2587355-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250506022237.2587355-1-robh@kernel.org>

On Mon, May 05, 2025 at 09:22:35PM -0500, Rob Herring wrote:
> Convert the EZChip NPS400 Timer bindings to DT schema format. It's a
> straight-forward conversion. The 2 bindings only differ in compatible
> and one required property, so the schemas can be combined.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Applied, thanks

-- 

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

