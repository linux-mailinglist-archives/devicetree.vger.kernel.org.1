Return-Path: <devicetree+bounces-237797-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D37D3C545D9
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 21:10:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 0B6EC349C52
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 20:08:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EF782857FA;
	Wed, 12 Nov 2025 20:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Qtu3eSCZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82AE127FD43
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 20:08:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762978133; cv=none; b=pHAkwEbaXusmVYLSrr5TtqNGnjxtN+eT0O505ll7L7dSiYut39sgb6PHc8dl6Z4PXWQO61JlH1iBNOAql86P0KxwLxYr+123Yi5w0FWCpUZm2itZTtjEEwbpovV+jNlZlHDZS/DlJ0TT+8NDQNRBmRmvZhBoGJoWGAlZdLWkonY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762978133; c=relaxed/simple;
	bh=0B2xRy3DtiRYJVW5uqqFoE1hZORZpikyOoZj3dabAHE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I+xdmsdXbcfiz9iPivN0APY/M2Cp5gc6+820cbRpeyci4ANPeIiqPGHb3t8VFth9YhNCoRELhL9GSHkpSA4EuXidQhaMG8HXBug6nqfldcsOFV2H6ktD4xsuIVsXnNUtoQU1S3UcKWFrh7RSj6XzIddJDxQwfOSCpjtNWujNriw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Qtu3eSCZ; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-7acd9a03ba9so17188b3a.1
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 12:08:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762978131; x=1763582931; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=arO3innaom8XEOzV6JBZdbg+gJkC7Ox3enKZEFIeZyE=;
        b=Qtu3eSCZFvMZUPvjYh13A8XhukWrwkl7R3hac9VkdsG4kawSlPYlcnBfSDD+cvDUdY
         8V1Gk0akSAFa1yV5OOP4TpTX8Ycmk4BgKVYzn3tEr9iq7fpCQXdOGJOiH2EP8qkrIgOw
         bgaJ4Q6XD6A6epeFBaZiWL2qSXeNjf+jtUdk4JEpUEOYk3+F3nBOP153kRl+QraXGT1X
         L7mMvVv9F+mRHqbPHNXIHi5uEjQOPqwbXQphprcXM/I+GdzYCdqCpTEO5MbDpL3CXVua
         SmOAMYQpq4uwW21jKs0uurTmvJfMp58knfaZRan1A6Zb8MIk+DJhdeen1TitCwfE0q/4
         O8lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762978131; x=1763582931;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=arO3innaom8XEOzV6JBZdbg+gJkC7Ox3enKZEFIeZyE=;
        b=uhud//Q36SWjnPBOb7llTP3Auu6WB+juTeQippssvfSaHpzB531PKGRzRy5BQofiZv
         EWhNbtL5IPloQ2eMp6+Y1VCVb819VKYzPz1mmOCd+tIWSKKxujRIBVQQpUoT9RMSG6WX
         sbiIlIWXmD9WrM1GCIZMy4F8/EOao5tdIJi/VT9kX7P13+GkRB9LXGbvCh8dR3fQH6iH
         WgrfhPxMuP3pyh+YzQ2tTTJ+RBdKJYYKCbRT25mvZ71aPfyVnaRFRt0cfaR0Mq2iWorK
         gbP+PXgs/zKgMWrDMHwmGXXqMLDtsIpZtn2bgr7TJjEeXdoDOWT3x28tdStXsm2K83Ew
         nutA==
X-Forwarded-Encrypted: i=1; AJvYcCWr8Lwjub1fOVVf4CuUrlT+DdOvSmDYjupF0Mb7NbXI/AanY5FVBGj8jOQtWZOCNqhvt3EQyBJGA+on@vger.kernel.org
X-Gm-Message-State: AOJu0Ywo0uwznIkqsRyhwYa3KwIdeDrWaxDTQ9fX7ZhjsGGKwVo8vp+t
	vYzhfsFwfEaesR0lAezNj9DtxlHxCfWWflv7NqjA9Rvq5+57kZMRJ9ZU
X-Gm-Gg: ASbGncv7A8Q3GhWo5kI2mPEYcI1dsPvnMDM04PwWn0ba55UCWAv0+WQeOeGYe1ls9tE
	l7uNBuLzvDqzz8YXcKIbsUf5EFX6Ib67bkLe229dAsRgT/TbgUGyquEfU7DMHGQNZoNNwns7Os0
	VnT2DdfrI5Fik154+ARJK5cVcvwXBM6JzrA9o2rnpvosSf1HFkXLY6gZoP9oe4SE7jTek/oSGG/
	vSO1W8orphR7GD0ksIJPwlqvEUn8dPZVeSxgTfX4rydX2NT8ZWN9qfEBksSH+wd5tumr3IU0BCJ
	Ij77bLj8KugGNVLIho/9xg/SE73EdJ91qSwBwxFHN6vYxP0xzmj4pWMeuIrVsKd9KR4JRwb/LDS
	EaxvgWRZ6+RGRcveBLbQyDAEaiKFQEK2SqhjofPFvUO+69wAvVnrAb2ym+SpgaYJTdp7ZkQes1X
	oFHsutKa7DnVZ9
X-Google-Smtp-Source: AGHT+IHXkVLeQmU+R1RNhYpyxag5ZVsaYVozFw1cdOfqrqm8uZqqgBlwBnx8aFYxTtDQsPwukjdAfQ==
X-Received: by 2002:a05:6a20:7288:b0:34a:f63:59dd with SMTP id adf61e73a8af0-3590b826447mr6333583637.51.1762978130558;
        Wed, 12 Nov 2025 12:08:50 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bc326f3e8d6sm115288a12.25.2025.11.12.12.08.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 12:08:49 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Wed, 12 Nov 2025 12:08:49 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Igor Reznichenko <igor@reznichenko.net>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	corbet@lwn.net, david.hunter.linux@gmail.com,
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org,
	skhan@linuxfoundation.org
Subject: Re: [PATCH v4 1/2] dt-bindings: hwmon: ST TSC1641 power monitor
Message-ID: <1dae4ff3-1b51-4e30-b874-83cb9289efad@roeck-us.net>
References: <20251105201406.1210856-1-igor@reznichenko.net>
 <20251105201406.1210856-2-igor@reznichenko.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251105201406.1210856-2-igor@reznichenko.net>

On Wed, Nov 05, 2025 at 12:14:05PM -0800, Igor Reznichenko wrote:
> Add binding for the TSC1641 I2C power monitor.
> 
> Signed-off-by: Igor Reznichenko <igor@reznichenko.net>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Applied.

Thanks,
Guenter

