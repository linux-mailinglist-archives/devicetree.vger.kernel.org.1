Return-Path: <devicetree+bounces-176763-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C4BAB571E
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 16:28:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DBDB0189259D
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 14:28:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86B762BDC38;
	Tue, 13 May 2025 14:28:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wF8jWugQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0764269D1B
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 14:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747146515; cv=none; b=Pz/ffoqy0Wl4wlLqnTnVGlK6n4FsXDSWZiRvF+YVmx5jk6F5jTmzAosh5L/9dEkzm0j324pig6gB/mApbpEbJJVBeYCHqI571y12eEew8MdjYCLhNkWkEn2gsk7USKsb6JRB8EKw5QsM5l1JzUM7g/03v1WnapH31og9oqWF1GQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747146515; c=relaxed/simple;
	bh=FPGcOwlz+SQQyXaiG99CmmwqOtDZlk4i0e/TjrhK74c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cefgRSN6f8NirXzMugy8IUdYOp6Zwr5sRVWR0YugeIJZELAJ1sDpkvmJjbUjNTg89Tq9TCy0ATK6cMGEVrPfk9jDEihy1QUkR/ZgC99YdOsSsdqTTGgZHSFjZo7g5x3qaRKxUYwxAL/B9ZUDNBpmQP1o8gFMzLSknvX5aMaM6Is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wF8jWugQ; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3a0be50048eso4348081f8f.0
        for <devicetree@vger.kernel.org>; Tue, 13 May 2025 07:28:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747146512; x=1747751312; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=An+gHx9DxdOFWYezZARE0iblS7iu3MVu0hRYoQkisQ8=;
        b=wF8jWugQ0GePPyf/B6+vsV8BL6n5RMiCZLruKuBZZezeSSk83ATG6WImHb/SvN6Aic
         I1DSge7XdhXUDvk5lB/pX1NAn1p05Z6xxEvcmCWw9nEKKoqfmtrDCfRombnmo2ziANWN
         iUxjjuXJNKQrwWDOp0ai5ailr//hT8EoxTurvTBfqhL9zUoavwoNj3zwXcXCskgmmzKG
         G/cC9wdk+PWgZlXGMGcVNxtFubFLo/So+5bxPPcUsPZd7Fq8T37h3qR8wKAlZJySBArT
         WLQQeYFwDy1kG39LEo2YZcy9tWPRR7FEjmX1lATvQd2BWXy2VX1MEWB5R31dqCSVa7jc
         Q1ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747146512; x=1747751312;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=An+gHx9DxdOFWYezZARE0iblS7iu3MVu0hRYoQkisQ8=;
        b=rxDOGX/Mx/PbSwr7WcKG9P+ilI/KFBaOjaFUMtegZ8f3T3A6BTVjlELxAMQ6W3uXwX
         HCVWc9nqC49kxsDxI5W0OUIZV31hiTQ3YH8yS+jcLkPVlmXbW59C8gdcUa5euupvW+7/
         XIELZ7n3KIrQvnG+37VvuiqpANcg8fSghMO1O+w4dXS/yDyjtL2VSBC8D7vIxyEf+zy7
         iR5lOvUhNZ0hy2/ffyOppzrHq10x+ssYBn4SUtkw86GUUPXE3OVwir9BNQ+TQcCHFFRw
         ROLr77q0M1EJNEFd+mkadGWInH1FPFplw3Aof3+IvrrJWaJJG9GW38cblh4kSo05rJzf
         ijOw==
X-Forwarded-Encrypted: i=1; AJvYcCVeS9gwzmU3akNixqsUns+HL5tasF8Afw8F2WKryHomna3t4iyt2wbzHYf3lpBJYtEl9EzC9mjQQCJQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwKdH54QP89B80zcxEgi40qTqCgvQhp9rImp0ycmnhR59GEnTS0
	EUtHBLi7hbDHuS9qb6r15vvbuSLKLI0YfBM73z6VNDY3uv+Sj9bte0sSVaarYmM=
X-Gm-Gg: ASbGncsCQ+wRWqFT4tNMBvkCrjSPI4COUjGdd1JHTnk3+GbMtYfex0p8U4SktSnYFLL
	fHwivqAqf2XggZ4VexLmer6oTcIRNkax2lzkqT70IkVwqqqERzr+40vnZQyKRlBEBfezPf62OYz
	TX5JTnXbh5ixpun0vGmmp3nbMCGopuMLFaVU7klget1PwLSltx9nc0mtypNDjlGNlMJRtSJW9xn
	2+UTGTNAawHdWTNLCenZvqt1st/X/Mt084aSDgYkaHddJ18dSkmMuXRpf5O78pSDYaw4qkvHWsl
	D5EAj58R21Kpss5pYq8iaQ6wgbVV3/6TYgTNLuGRvEjDIDUWzg3Bz9gdVF49837A37BkxCVacFh
	02pi6cj+ktaLpOA==
X-Google-Smtp-Source: AGHT+IG9d9Erev/kaz542q256qo4Zv5SBlOSuXgHIZpq9zVY7VQbS5IOFnwYMh2iGSxQ0nUaJtNt0g==
X-Received: by 2002:a05:6000:3102:b0:39c:cd5:4bc0 with SMTP id ffacd0b85a97d-3a1f64ae7bamr15129851f8f.52.1747146512164;
        Tue, 13 May 2025 07:28:32 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f5a4c5c5sm16693029f8f.96.2025.05.13.07.28.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 May 2025 07:28:31 -0700 (PDT)
Date: Tue, 13 May 2025 16:28:29 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Guo Ren <guoren@kernel.org>,
	Flavio Suligoi <f.suligoi@asem.it>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-csky@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: timer: Convert csky,mptimer to DT schema
Message-ID: <aCNXDTmv5nuSEiYj@mai.linaro.org>
References: <20250506022228.2587029-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250506022228.2587029-1-robh@kernel.org>

On Mon, May 05, 2025 at 09:22:27PM -0500, Rob Herring wrote:
> Convert the C-SKY Multi-processor timer binding to DT schema format.
> It's a straight-forward conversion.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Applied, thanks!

-- 

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

