Return-Path: <devicetree+bounces-246366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F006CBC34F
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 02:47:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 94EF33006E01
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 01:47:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AA1E2E974D;
	Mon, 15 Dec 2025 01:47:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BJy+jQM9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78F8B20C461
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 01:47:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765763257; cv=none; b=JjHqNOvcoAXYpCoA/txMMk2J2vD5/DNET/iFeDSNESxlXNo/wcKGcEVDFe+sWfuI8LTcEoP12vUkyTxu4G8Rxg9dm75CbUBqmC8E5D9A0EgEH3ReEKVzVjxH0DPXrJO1lZqbv5SKHQtiz9W7p0v62fJuCrJKVY5BMJixhe+1amw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765763257; c=relaxed/simple;
	bh=w5/l1o2Ccs+wTV82X39IQALsl81dNOiZ/a1Oj+eEziE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gyM+P8+5/mIiR6TDRHyBo+S03MnSQAd4ZlktchRv9MPjK0WHTdpwt4KQkQDbax8ChD4OSeSobO1rTowRzVKautgMTl6vnqBXmhrhAapNacAFW2lCYgtYkwoZLs6HbkJuwZrrCq4cHR6WrbQEJph/6L2QhTNkbbU8f34OcoRFW58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BJy+jQM9; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-7b8e49d8b35so3292105b3a.3
        for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 17:47:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765763255; x=1766368055; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=60TiVQHwX+JgHVId/D5T9qrKNf/jEUK80ayznML9HB8=;
        b=BJy+jQM9x8l1Y8HUbXTwsi1cZhr+8dBykA6Yq3t8+qfgpK5krngT7AyXTbg0C3nK7W
         7HHsQAQRaCYRth+UIF/3WX/mHWldnWokKzv1FSEZPpguF+REhQ4SQqOjt6ub9kvCxo55
         x6EnHD5pKDUL0iFZsuoVUKcwI3VXu1Br3DpXBtFEVQbcXxYn8jT2ywWYggRuZE0wzXDG
         w0DO2KAoZgk4ymbV8yr4M8TbvvtyBaHH0FyV5dMGSw1T/1u3aK0GSzFN8Bjg6oOtbzis
         NIJwdris++CFbsXjroFZ/bdhS5vt8wJdCjqwT8uxFQWBmxw0VShEYC0axC8e7xPezvQb
         YD8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765763255; x=1766368055;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=60TiVQHwX+JgHVId/D5T9qrKNf/jEUK80ayznML9HB8=;
        b=b8ZIdyY3CujRo0yaCcXkkLdAxFJxzqweFAjIjhe9/5Eo4lhN7P4NQY2/cFA+WKkPGh
         KgbVJyNMOAQDKHnwXwJDHYpmrVaEGewyZ8uHJpB29b6ufhUs9pHSxkLptMc4OSuEtbiw
         FqgRw1GgHJeMZUnaTPW6aN2CraqosYBHx+FGc5S/ZYmn5S63qtiUJHYvT1q813/aq0cF
         mTfa9oL36T8CZRwsL5BPJl3NpvruDmkZDI6fOiXOUPflYTC4huI1NUnWwdbVHqq3EtLc
         2tpM2pGientMgxUrYs66mQlaIT342zjT9DHcKtZciQyvtfgImSCj1UkMdIjh7Wtk6LrI
         NF1Q==
X-Forwarded-Encrypted: i=1; AJvYcCWYmlAQk3AuJFh+D+hHrKSPtCjJNHjQjLVJ2wfTxY8n/l5RPzU5gXJf03HPXogaxA6gi8rkh9Ia7JJC@vger.kernel.org
X-Gm-Message-State: AOJu0YwxngSRbke58i9UeNQnkOLu03bembujRTCtQAmmMsxKnMKHp4q2
	RIis5v0bJ4P/mbZWyI/k9RfNZ337HD6KJAHl8exMpEAdSERkrFCt/NaeiBC7UHF/AVc=
X-Gm-Gg: AY/fxX7dyGkj3NFabf4N2YVtYJfj1O93AmLyYGnfNaWH7NU+5S19cgxH5q6j4Wj7WnN
	Xk+NH63FeXDWvwDmLjyVTh6ndQCTjlqVlcLFzttoeFIpo03dS1+FuGJxh4fOojzeMXxZItC6SuY
	EdvO0/MqXZ1KdoDqA2ZhIeZqyi4DjX4x7k+qsHNBisCDAIO44WVeIsv1Gx1vq8ht1BtrXwR7+XW
	Q/XADgRlSsikkrqFC9OuNXc1MdJbV27RtSJiUgkfIS7axedED+tRER/HTZy5Y9L8Df6o0Wyzj86
	cWOK6Lb4iYH8h/l/ehbaLZXCFg35MrUtMCtjf8mW3d22U5y1RVb6ehq5wiaiQYnO2aFotFfuqz0
	VlC+pLDMCFoy5XlxXgUDef0Z6BPgflvyiu0ulKAVM4r7yAs12hZjtfFw0RS9G0VV3nmWGe1thsj
	zdopb6uNs+g3uiuiJecSGPM0NrlK4KnQSL6bLXS/1qIA==
X-Google-Smtp-Source: AGHT+IE7DB5VswrYSIey9vxa12pLuiwAgC9x+4syu1vaVA6PK12DnwXwjcCkNymmFng9LlbdJgerXA==
X-Received: by 2002:a05:6300:210c:b0:366:14ac:e1ea with SMTP id adf61e73a8af0-369b05bfa3dmr8389889637.80.1765763254691;
        Sun, 14 Dec 2025 17:47:34 -0800 (PST)
Received: from p14s (p7838222-ipoefx.ipoe.ocn.ne.jp. [123.225.39.221])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c0c2589d4f7sm10903627a12.3.2025.12.14.17.47.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Dec 2025 17:47:34 -0800 (PST)
Date: Sun, 14 Dec 2025 18:47:29 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Soham Metha <sohammetha01@gmail.com>
Cc: linux-kernel-mentees@lists.linuxfoundation.org, shuah@kernel.org,
	skhan@linuxfoundation.org, linux-kernel@vger.kernel.org,
	Bjorn Andersson <andersson@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: remoteproc: Fix dead link to Keystone
 DSP GPIO binding
Message-ID: <aT9oseym8VmDGxzy@p14s>
References: <20251203180337.50831-1-sohammetha01@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251203180337.50831-1-sohammetha01@gmail.com>

On Wed, Dec 03, 2025 at 11:33:37PM +0530, Soham Metha wrote:
> The old text binding 'gpio-dsp-keystone.txt' was replaced by a DT schema in
> commit aff0a1701b020c8e6b172f28828fd4f3e6eed41a
> ("dt-bindings: gpio: Convert ti,keystone-dsp-gpio to DT schema").
> 
> Update the reference to point to the new file.
> 
> Signed-off-by: Soham Metha <sohammetha01@gmail.com>
> ---
>  .../devicetree/bindings/remoteproc/ti,keystone-rproc.txt        | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>

Applied.

Thanks,
Mathieu
 
> diff --git a/Documentation/devicetree/bindings/remoteproc/ti,keystone-rproc.txt b/Documentation/devicetree/bindings/remoteproc/ti,keystone-rproc.txt
> index 463a97c11eff..91f0a3b0c0b2 100644
> --- a/Documentation/devicetree/bindings/remoteproc/ti,keystone-rproc.txt
> +++ b/Documentation/devicetree/bindings/remoteproc/ti,keystone-rproc.txt
> @@ -66,7 +66,7 @@ The following are the mandatory properties:
>  - kick-gpios: 		Should specify the gpio device needed for the virtio IPC
>  			stack. This will be used to interrupt the remote processor.
>  			The gpio device to be used is as per the bindings in,
> -			Documentation/devicetree/bindings/gpio/gpio-dsp-keystone.txt
> +			Documentation/devicetree/bindings/gpio/ti,keystone-dsp-gpio.yaml
>  
>  SoC-specific Required properties:
>  ---------------------------------
> -- 
> 2.34.1
> 

