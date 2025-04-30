Return-Path: <devicetree+bounces-172549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C6758AA529C
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 19:29:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5EED81BC72D8
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 17:29:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01EDB25F7AE;
	Wed, 30 Apr 2025 17:29:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="C3hf7HrS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C751465B4
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 17:29:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746034181; cv=none; b=rvFZHN6ieX6bKbaiiAcCRDewmcpNGWQy2MA/QbY+BM7kD43iSX+Nu1aciu6p/w3n/fClVuXgq3jVmfk7j/+0Pf0VENgcHuHY+9JLBqd9LKxYrupntytoUUkayncjnnt3XH3nw42vwubMAj5/PI0KIQyyJmTZMcXEADf6glk2yqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746034181; c=relaxed/simple;
	bh=8b7Bqu3LD7foyjvQRHymGo1eOumlODvyLsmaXgPy/SY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=T6d+5Nlji8snROXVR1NgjorPcZWC2aoG4KRenLnov0CWaWnkPVWOfGamh0/t3aqRuw+QH7EJv6i1eV1c9mGEQmBR5fJ8MHAtzPvLqhpYR24KErsRans2RI3+yTSQ5tO5E2fA8LV0SPXG2ypSooPhflq+YrDX6b4xJK7Ja2TNO/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=C3hf7HrS; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-39ee623fe64so31916f8f.1
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 10:29:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746034178; x=1746638978; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/d2mdUEZU0W5ewPmxWru9I72D9hiUx6jBl16Iw4eyIQ=;
        b=C3hf7HrSl01pAGdMjtNzH5AWCTfg9iy6g89rp7fNTxsYFHqgP6zeZnMYeO/b5ben/C
         QlI+0vPWXNgFgcIRbJ9sAmqU0Ac6H4RUbkHQV0I1sPwVtTRZrDvrDVIDj7mX57H2x+im
         7aPxmcdE3yN8RZzIXjzlTVQ8pGTDydDGABzV4kp7w2uqBg9YcqKjjmSgxr7twDIDkCXI
         lFBjrUg7Mr2X/WMi9gyLCKzWKcdw81vFkNj0RyrfvfTJHLVlSBk+u0IZijBCSTJcinCW
         Pmue+mlRrXfpaEkuxtt7EVM1THgKWyZfzkmOAQECI30bf2kD7Og/+2qjxy2DFaKIsO3M
         K1dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746034178; x=1746638978;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/d2mdUEZU0W5ewPmxWru9I72D9hiUx6jBl16Iw4eyIQ=;
        b=byYxrrIW+fAzzj0eKVEg/ex9CkwQG6ZINtAZRlksMA8bDULZC5RaiSi0lDJnXzg0fj
         UL6luEzkTseQo6UO7OYMQ3yx4oqAguIa9foJONHvqWXhqKA/DIhovJWpSDaCEyi7pFrX
         3Obu1+hqw47QlJR2nyEdJ44qUontHQCeh05cKBaQ4TlP7fnPHBZtQq65/k/taNUCGwX3
         Ac3ZgvL/spAzCYBbSmf4CucmFjp91mXKCuciy9chx/7IoxD3feB09octk8SS1Wo7ifvY
         nnq3Gi4M7KBm8xl+zjXzkJ53NjeMmNfGhp0PpNkiYUtH+X6qI5Le+aS5F/TEs7SVSbLo
         wpTQ==
X-Forwarded-Encrypted: i=1; AJvYcCUMazVH/9eZBH4gsIDaISD8hepeO1JAxNexxSHrUqH5oMHKdsPeymTrN7n4+XNzhBSgp5BZK+jq9+om@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5uhClDHxBYqZzYKhYKdC5nUrs1qs8aJF0QRUmIv32SFQWQbLa
	mQuKdLH3hSxnR7tviEwrVWq2O6A5awKtKD97wHBg4LJ6d2pF+XO9JhZDQxh2Jow=
X-Gm-Gg: ASbGncvB5Z8g1MFISb8IBPM3eSDRGZzkClAFTr7p21ovAvGAgXlNDlWYslnSREyVMmF
	YlNi2TjP5XZHIopSEu+eCkypygKVmh5as8KyfDNiM22RJcMizTaxyxigjHohRUYfDxj7tFyJr4a
	VgTyV8KqO8B1Cn8TjxDkwim1pBTnU8AD2k2c0ORd1trOfudjUoDUt/JOgMmra4PykRtGTR+sCh9
	pDbW+xEW0TFYjnTM80nDcrrKS90thkNz4k1Dn/ofMb/s9x4KaI5nb5Z7NIrXCVU051pHrQPbxXS
	ux54OzY7UA6snDhZJ8KDOblMa0mOgy/3blF1xL4VAvizMjLPSYZBu8MuTo7BcqVa+sZf2S8E5YL
	0E7I=
X-Google-Smtp-Source: AGHT+IGs1c8sYMZsyj9z2U0RULcNOGnmtGihhFGKINWCPv7w8C/Dxte7jQvye5V9MA1ApwGcschH3w==
X-Received: by 2002:adf:fbc4:0:b0:3a0:7fd4:2848 with SMTP id ffacd0b85a97d-3a08f7a4abamr2974046f8f.52.1746034178446;
        Wed, 30 Apr 2025 10:29:38 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a073cbeda3sm17724596f8f.50.2025.04.30.10.29.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Apr 2025 10:29:37 -0700 (PDT)
Date: Wed, 30 Apr 2025 19:29:36 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Bai Ping <ping.bai@nxp.com>,
	"open list:CLOCKSOURCE, CLOCKEVENT DRIVERS" <linux-kernel@vger.kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	imx@lists.linux.dev
Subject: Re: [PATCH] dt-bindings: timer: nxp,sysctr-timer: Add i.MX94 support
Message-ID: <aBJeAFb0dBYAMTqA@mai.linaro.org>
References: <20250306170902.241057-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250306170902.241057-1-Frank.Li@nxp.com>

On Thu, Mar 06, 2025 at 12:09:02PM -0500, Frank Li wrote:
> Add compatible string "nxp,imx94-sysctr-timer" for the i.MX94 chip, which
> is backward compatible with i.MX95. Set it to fall back to
> "nxp,imx95-sysctr-timer".
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---

Applied, thanks

-- 

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

