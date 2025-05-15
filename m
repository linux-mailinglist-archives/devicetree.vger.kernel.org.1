Return-Path: <devicetree+bounces-177558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DADFAB80C1
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 10:33:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AF41B3AB63D
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 08:31:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E16AC297A47;
	Thu, 15 May 2025 08:28:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xUzfN+S0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C65E29713D
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 08:28:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747297719; cv=none; b=LU8+IRJpQ2oe8l982Ju8l9FEL5G3KU6JVxGjdyCCGb1f7N+Lc3H9c4JKMLTtzuqgjJ2ipP/ymk+MroEQP/hliSxcEECAxgjDidK9pOSrR1yIOfmlSe8khsqb5FsSq37HKhvehrZ0AUe2CDr8DB+QlzL6cWk7ZHpSbJHiYNY3WS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747297719; c=relaxed/simple;
	bh=cT4iuFjjNAzHKRST/qVKulD/JL0MVOawqN3JUX+mvNo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DEzuC5Bhosspqew31ocz3MTONVtkRJ3dkprNKrvcqOmTFGUj77luIuQC99n97wTphVCbZ/QqXkLZ2ChbSba9/bx4cbJ6ui9UcDkykNiZKVh/Nftc/UT2ZRR9RaS7gVQkYOqH1wstJ2F4wqAaARRhkQcgF606vCtQfxaBYGjgkG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xUzfN+S0; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43cfe63c592so6878985e9.2
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 01:28:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747297716; x=1747902516; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GG+n1BzxgNDC3GGn5Qn+IFR0CZW/PNnMV6w/wZx1HlM=;
        b=xUzfN+S09JuCw2SLBls7E5T2m4swi/ap/MNMhs39Cy15dfRiQot3jX7BcDJtz5/Foa
         PF5M0W3Hnmljqg8ckHteasgJPfrWTDh4XBzpjyNMyvQ15Pq5QQl90xybThyuBW1v43JB
         PM24djQEfhl9fStZIRiaatmOHC90ZX7UlGXY0zg4qEKgwbFw2b2u55JbmpOAfbyvjbrS
         n8kzbXMiMByoZntabIJH442OvZBDdwKRvsxT6QhwtMN7KVAhMY394zoE3goYb+MXlVAJ
         9PU+0uXZoxzncAyuu2zk/u9SE2e4KvF6RtOy0Vr1fOZAh5r5TeEF4mL8agZdK26Q/OVO
         nniA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747297716; x=1747902516;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GG+n1BzxgNDC3GGn5Qn+IFR0CZW/PNnMV6w/wZx1HlM=;
        b=LTzOdT4tiTSZ4e3lab8j8a/1YDk/ZkYvlh4dx5xHICfasmd5Gus2Sx9Y9sKeuuBpdP
         1mvvXaXT4neEN3dDxfDSAmTUq8c3cM5qK5U4OuZaOcwmYsSnpP02jLl8WlCHdC34TSyV
         +SgdhW4Xxs5vrL4OtU6s8OGXXWmez43r0QcUyhA/bXXECwy8/cxiewW/B7OQwJ2qv2ZA
         oCMIkDJFDHCQbw5iUfe/UgUd77IQa5Tg9WqGbqaXuWNef+K4j3/HarNQUgzn698Ngyvn
         RdWRKtL3EBAyiWjsxD+ZeVo2WvvVQ844FDqgpjVDG5Hoki6OgfZOqntKJtA1l2EC+Vha
         QO1g==
X-Forwarded-Encrypted: i=1; AJvYcCVVpgy+C5Bs9mFYIMTaCN/KEbrsN88k4ikxn45mty3Rg/FflZbfnBEOSP9e9GqvEY23cJAtK6qcvruT@vger.kernel.org
X-Gm-Message-State: AOJu0YyIOMr4E/ZClJuZXr9bCoWqQLzYOu/xPw1MelTyNLZV/Rghf1Ez
	ufkLuU47yTso5Yyi/ulgh56Hl4yw0U8kPGtVWC8HPI20f78AW1CbuWNBdDPzlyM=
X-Gm-Gg: ASbGncuIUgbkh+6FjPto9JU+ZS06Y71Zt1Xue+x6qCvt6lHN7W8cpK4xeWAzqM+K8PE
	4ev6lEmAyqFpnDKpJamRF2FkzaTTHar6kiS2FEi4lu7kIoC6hAcPyE+OpTn72JOGi+wlMiPKRrz
	uR2C0BXVum0v8xPeVEaz1q802mdmR3yQneT06/b8vvOO277zdDm6yuirDYtkD2bL4WKFoJW41WG
	8ySf6cRtYAZ7un10UOiNKkw5aW6M21hm7UuCOgnkHV6r37IQfsQOobuDdaUVXSkCRPLqeui6OwQ
	rgWoUCJF58vn/lsMtx7LcXk0GnaP7D/hnYMnJXGXUjru806t8F7HQpBbsWzGWgokv6WChIBe/2Z
	OZdGXI1zVunejZXkmpO0dPtK9
X-Google-Smtp-Source: AGHT+IEvgvNGsZd5pkJVuylqyGXRmkrORtMz2ILY3XBQ64vQ9UgNy/cWt8/sXaycGYgGtgM7ecdc3Q==
X-Received: by 2002:a5d:64c6:0:b0:3a0:b84c:52b4 with SMTP id ffacd0b85a97d-3a349695581mr5840356f8f.10.1747297716435;
        Thu, 15 May 2025 01:28:36 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f58f2a79sm21698415f8f.48.2025.05.15.01.28.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 May 2025 01:28:35 -0700 (PDT)
Date: Thu, 15 May 2025 10:28:33 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Taichi Sugaya <sugaya.taichi@socionext.com>,
	Takao Orito <orito.takao@socionext.com>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: timer: Convert socionext,milbeaut-timer to
 DT schema
Message-ID: <aCWlsfFFvcj10XPj@mai.linaro.org>
References: <20250506022322.2589193-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250506022322.2589193-1-robh@kernel.org>

On Mon, May 05, 2025 at 09:23:20PM -0500, Rob Herring wrote:
> Convert the Socionext Milbeaut Timer binding to DT schema format.
> It's a straight-forward conversion.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Applied, thanks

-- 

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

