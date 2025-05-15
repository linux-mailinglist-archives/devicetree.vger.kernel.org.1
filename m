Return-Path: <devicetree+bounces-177564-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8186EAB80F2
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 10:39:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D43501700C3
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 08:37:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3553028C852;
	Thu, 15 May 2025 08:35:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pyMAA+tf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 620D128C5AE
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 08:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747298124; cv=none; b=j0Y4vNpY/6NasKW4kOAmDR0nnU1IslZcNRCqldJLPY2TkAYFWXVfczsFZhvsrVkc8UJLcxVhMN1DALigLUOZoNzjMuivcL8cQn0rl+TvKDc5NMAy6OZ6sf5rMw1XRrsetpF8NoNIzG70sQsy9yuqryJb8EMK6KRqV2LMRxec81w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747298124; c=relaxed/simple;
	bh=9pbatmL7aL/vj8ZUFAV6MU/4LtyoSBW0BcKNN8jXnCM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oXbdpFUngCER8zkwu7pxkY830KoMZFJgdQT+W+oZSxFNqtJvFfaYQCZMkFXSpbojMO7+8PyBi7x2nEoXMX5Y9K916jRwM8IC2n4l7FmsFNfThhfxnlcrXK6xgvWpyLtfRR3xDphlZMzF4KOfu8cehhvbA2RKCKNxJI/5An86sxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pyMAA+tf; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-442ed8a275fso7229505e9.2
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 01:35:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747298120; x=1747902920; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=06fYRQosONYXgKhGU9k/rO3oNTjga5PPDQkysxE6Iro=;
        b=pyMAA+tf4Jfw/LMBzsN2hYO2y0UsNgxojDpw3cX2zyLNmBfDxe2HgHsRwE7iQDpo7c
         D66gx9GD3wIJgUhwR0so5EaQtNqVPo31cWLBRFzesrpKDQHqcEyDVttBATAkpuDPtEF1
         gO6cct/M44rOGONA9JKESjBEWzZyFRHNaKls7eKHaLjcPElGvsReCGQy+4OAj/V4K+Hb
         zd74JE6GhVc3Pz0xBjFQG9Y4x221kwo2dxkEZIE28v7GgteWvIdSf3wZrlLhHHnCqHU6
         CzRbrjQmpnWDlP7RQhSxJS45NqbwV9KQVn9jqNq6BBKtmj9JPkPXXq/gzQ1Kg01ORVKs
         awTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747298120; x=1747902920;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=06fYRQosONYXgKhGU9k/rO3oNTjga5PPDQkysxE6Iro=;
        b=pL5D9R0wUDpTLWSPQNPRJgWieC4RkIV3RtF+/qGzdGqquUQa5pi9P4+7PO1KQ4JHh0
         T0q1BVIlNausNcJSSLbBwkIjZx266rjF3eL5wSoSFojmbaUWgL8XIRharLJDmuThfdb+
         wF8FEtYfaj7CO7mBDdgZ16dQsTLLc2EqzZCHekZYoLwsJYYHsi9PXbQk83Y0IOI4Koqf
         82f06MutNBJ4djjuc0IEAb5El/+lhjpVKSvNLj3TBKr6MJPfy8s0B5TSVv8vS9eQYNO5
         3bVTjhh98Qug93SQn8FcHTckZD3TWPGbQYdkx+yt2LDHUZgOioL7bMsU6jjzN1YlqVWY
         UcgQ==
X-Forwarded-Encrypted: i=1; AJvYcCXOnPkcerChrPdYNGninTQKLs3XtP8iYk7jBEz9iNj1bHeKkddAurjmpHMsWrs+ODjr9jBPMmkbq9n0@vger.kernel.org
X-Gm-Message-State: AOJu0YzIDISUlt07ruHzJ8ZuxSAt0ERqrIZMkNlbeHZ+55UilQJICqEk
	eKRpxrnnEtQDEKMcZG9hoUij6Ve1+Vuxhj/EvDZ8Ir5NRksRVE5Nfx+BlD3k7S4=
X-Gm-Gg: ASbGncssJVk3WIGOhU7/MoQ8qWhGXKoVTbq0st3ICbCyTBmQQvycA2e3Wu4tQ5Uzh2u
	MJkwWoOgP3BCaHhKlLpGl8CxNa8YOwbot18AXdOSWk87XFSa/EPsqmgcx+nvJeU+O4DhKX6DnaN
	thnSV4L7wTwep2r4G2T2bJFexZYTSqmJqos24j21SSonhUeNvQMiL468sNUqgXHDPYrmucCaxMs
	8S0TDhki8O8WefSKn03j32mNDw/VpZb1slle/DJSVB07UR7QcqJRoVLNqF3kmiSz6po6FBjeK4s
	kuar99OABAynbnm37srhI+YRxAyfK6o8uRNViCTRr7B3cuCwD6sN1G5YIbEfl9urWzrMXk0nfNX
	53DPLMjS73+5VXg==
X-Google-Smtp-Source: AGHT+IHu2s9sa92qmesl5veI+oAS03nFjtQ47vH11ArCbrSF0HDjcyh6IGTJen7CR8wkKp03sRpn5g==
X-Received: by 2002:a05:600c:c0f:b0:43c:fbbf:7bf1 with SMTP id 5b1f17b1804b1-442f2179271mr73566765e9.30.1747298120445;
        Thu, 15 May 2025 01:35:20 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f5a2cf0esm22131999f8f.79.2025.05.15.01.35.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 May 2025 01:35:20 -0700 (PDT)
Date: Thu, 15 May 2025 10:35:18 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: timer: Convert marvell,armada-370-timer to
 DT schema
Message-ID: <aCWnRtoXHfDKqOSP@mai.linaro.org>
References: <20250506022301.2588282-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250506022301.2588282-1-robh@kernel.org>

On Mon, May 05, 2025 at 09:23:00PM -0500, Rob Herring wrote:
> Convert the Marvell Armada 37x/380/XP Timer binding to DT schema format.
> Update the compatible entries to match what is in use.
> "marvell,armada-380-timer" in particular was missing.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Applied, thanks

-- 

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

