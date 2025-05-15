Return-Path: <devicetree+bounces-177546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C56EAB8032
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 10:20:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DA59B1BA4352
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 08:20:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEE5E27E1A7;
	Thu, 15 May 2025 08:20:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QKQPbD8C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 063DC202F67
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 08:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747297225; cv=none; b=WuM6MXoWG3yjyLKtEQRNr3O3bOWuOZpXL+XA8LHJ91whlenFU4mifSLW5IXF9Hd1p9950qUB/PvXVb1CZUijPpd8srCFjNguHOJeOUKk6t2/f/I1vMeVhAQme+1oocXv7bFNYylVtHPIJTQkDK9jcKyVFuyDBL4CsysHo8m4iVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747297225; c=relaxed/simple;
	bh=FIaTKX7b4nzW2qlX9kj69WF5Z2/Wk9ZzHbCQJtLHzog=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ru7hrbI9qzJJQrNgL0f7JRLNqMyjdb+FIZMlQGA/wqmD2e50UGbTjy5VIg5tb9WELvqlffa/wQiL8uvJVtVSEPClm0Rid2mdiRclm+YFt6yBm3CwZQvfQZUwDhlnMbBdPTXDaj9HXMYIlO8L/YV0J+r9jNVvHwSmMG9C7wXnDz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QKQPbD8C; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3a0af41faa5so294092f8f.2
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 01:20:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747297222; x=1747902022; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=g3sxhMO5RpeGc8vdDtyGXyj7URCP6ZAr4eRmvlXBLrc=;
        b=QKQPbD8C5euGPIjYCE0UhSQjLerneuvpGLcMzKRL9uQOlnk5nSC0kpOaO/AdgXjz8D
         QhuxCGGpKGZd7ArgdGVeKsfFQEDKZrFLb/eN3qTg9EDj9ylxbr4d6W64nOOyPT+4IS/m
         ZwD8G2Z7O2uCFOSMfky06l5zURp/PVbyORZFvIQBpMpbZksTEwbZSu8+kfiIf7dlllz/
         KzXgND/YOBCdT76JlctgwriMxLXAb4vtVmoT6a76R+7K/fvAkZroLX7Y1S0UCoBrDfbh
         Zx9+72gzK0qtwPkPXZrhyKWN5lg15q949Gr5FzOyL+scujBDSXtKMoqsWSxpwgPDapyN
         pvdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747297222; x=1747902022;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g3sxhMO5RpeGc8vdDtyGXyj7URCP6ZAr4eRmvlXBLrc=;
        b=sImCjtTES5eZE6TWgC/eaSfAkbx+fEX6fX3l2iBbqlC91M/V/WCh9Mz0wIWWzfP0TF
         LtTQISVL1GTDj9DM7dUHBFiYBtTUtpJbpIO0GYDY6pTiXEP8rDX/Bj8q5VIMClgWhX3I
         qJGST9wJ1o0yIHQbPNhD+ZE/NEZzQ7o+OnWCC/JpPnt14zN6NZjxWDUVy58l8V/zpu4E
         BFrVC8bzGLsT1WdKx8T96wPFwreHpZ94gyh+c7ZlKiRHFYLcchWW214bK0wkrLh9ddxe
         O7XJpR72fLBb/rlbYNTKi0VPLWZOkbnnGaQys+zQckyyP94zLFqnyt1dlfBCdjslwiNL
         dC7g==
X-Forwarded-Encrypted: i=1; AJvYcCXCxR+aXLumbWX2K3OASknXoNSwQzbkMhv+gsxpfrG2+/FCgeuZD8TnZJLJTSwsgzHU1HHDmASHgGwN@vger.kernel.org
X-Gm-Message-State: AOJu0YxyixldHvI7eDMzcoP4CLuI9gpq3ewL2UfzF8qITYP+btLEti8h
	uwRzxOHEWB3+zHnl3imFbjFzOE/e63eqBvoglt/G2Y9eVCxl8LrR7q/BCynjNIQ=
X-Gm-Gg: ASbGnctqog3Umxds5ssZJpt/WLy9WM97h09hZcM+dVj5fNfPBmtmkeqT+xQ6TOLa/Fz
	aV0C1P7a6Ws6YrmGd6ejD8SlLDN7idh2Zg9M+5MpwFazuCj0ynmzgvNt+oBoBRzIG2tmzDF5RYy
	TotGFmyz4Pts8c1paHGBNMMq6yJoe8fxBbMCHGc0G3e5DVWLU75mrV/yRFiCI4kt2IRJBVMV2KC
	UU31h8BsZybYOlJ/4iVIUBDpe8t2hOH9cpu5z+k6eL+hDO7k4awgAyQStcFdSeiQLi0nnV5Dh+r
	5r+gftTyutKDQoQwBg9SvosRS4fFjsigZFOTNNUc9pEBpX1nfikz95tsOcm3BFY6QmXPBowxEtn
	Tr3R1dNbCYRpwIw==
X-Google-Smtp-Source: AGHT+IEa1+58d1+6BJSAIo2TzY5wWJOuVJ0+Z2TtfkoH5bi1jAgj51GkhbBm4Ay68skIHC+1J/fe1w==
X-Received: by 2002:a05:6000:2484:b0:3a1:fffe:6b6c with SMTP id ffacd0b85a97d-3a353749125mr1354915f8f.34.1747297222207;
        Thu, 15 May 2025 01:20:22 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442f39517f7sm58550155e9.20.2025.05.15.01.20.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 May 2025 01:20:21 -0700 (PDT)
Date: Thu, 15 May 2025 10:20:19 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dinh Nguyen <dinguyen@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: timer: Convert altr,timer-1.0 to DT schema
Message-ID: <aCWjwwE1mDzAubNi@mai.linaro.org>
References: <20250506022202.2586157-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250506022202.2586157-1-robh@kernel.org>

On Mon, May 05, 2025 at 09:22:01PM -0500, Rob Herring wrote:
> Convert the Altera Timer binding to DT schema format. It's a
> straight-forward conversion.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Applied, thanks

-- 

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

