Return-Path: <devicetree+bounces-177552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 662CAAB809C
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 10:29:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A115F3B7BF8
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 08:29:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 888C32874F6;
	Thu, 15 May 2025 08:24:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lgxvaevS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EDC4283FDE
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 08:24:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747297485; cv=none; b=ousnvLI9WlhFk9A7atUEBT0DwcnP146jwWgLvIQsWH/wYly7xrLtqiDUw0IWlkaVo0/II36qKIk2o81M7cVFFZis1Fd7jaKKJBRoFgrW57X1T7KVKb17p0rO3ZZBXTGArNUZ0Q9I1cS2mS+7j2bXSwjHwA2EV+FzwM5JcEe42Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747297485; c=relaxed/simple;
	bh=KgUR9atHD9EoC+AHKgpYJFQF6nUcaQ47eqj3r7hDCaU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aAfjHmuNR6RAkbhu5cwaP8TUT4ITDF8wBgl5TTUbOP+0l6BJudCFBZiqrvTEvWYGMWgwM7p6tQlWR84NlK2hym32NHLeAY12Uwd3Zhtluchsn3OR25FDA9Oy72SxjcarJ9hh1gJ9y6TjQmNmtve3G9XFbHsd31ir7pzg5oYd+2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lgxvaevS; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3a0be50048eso555943f8f.0
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 01:24:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747297480; x=1747902280; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=H9TOXFbxB4gXS6rSRvpDw06Fiq0FaaZGd0rOHK4RajQ=;
        b=lgxvaevSbO8a+jmYMY/f481htzUFwdPfY/iW/Tye5ns16CEPcGwDYbqKq+SpFNHux2
         q2GT414+mhFvqTPUVFLkcLyk3lKT8iKTwSrqwDt/Jry1EgCDxH6vON/ioohL/S0jSl/9
         kcs/sitSYv7hH0nYCu0++ws6eZmnN4O7iMwZu19nBJZtiDK/oUo2XcMluEZy8ED8Tt8C
         HCyVU0DppMjSdlHswT06qeZnuemfkKTpc5ZMCQOx6psVH35KHm98MylRhV+2/gfBoW/7
         Nbcqh4gPRvD6IURTc0XP7nhtf2SmpkiIcSwxeip1dDb1RZSFedW5g4LtIRJ2uHIxB8MB
         GvPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747297480; x=1747902280;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H9TOXFbxB4gXS6rSRvpDw06Fiq0FaaZGd0rOHK4RajQ=;
        b=PnAfkJzZhfIuTApthonBIyguK5EMPSL78lKRjVwXbJoWy/OD2JcQTR5lagPCs8zKFj
         CZ9ZJ0bzVw99o8NkB2QzWY9UYw0dGXdJxhDAxjzNzcvlj3Vmb+HOaaCyVudBR2pC82JC
         fgw+Yj0+vhQUeMf4QTHEALoZZukOKzIRxj4ydl4ayRYz87hYqLpNDCO+KqImM6hfrKp9
         5dvCJDe2W/SmthnzgxYuXQ2Tp0pioHFwnIs4XS1g0ks63Sk9aD/ZCl+rNPoa4neqgV2O
         xupT6d8ckU9uTr7HlMft4n+RqabRa7B/8n4Zjid9+Se1bqv8wOQLtviCngJ4CSfAnPgJ
         +uCQ==
X-Forwarded-Encrypted: i=1; AJvYcCVIfqrt55wDJUOxa/WQYojjG8qnLvYjXqx4s3ZLaSuXICDvtd76sST3SkbiRTrY96uhEQpcucNb9d0V@vger.kernel.org
X-Gm-Message-State: AOJu0YyaTEmaGpCsz1hVw4JagnIrzaJxtEAXVr4N6lk1nn9CbC23wnDn
	ODyYSgtiCS/ruU0owaCu0mP7ubLi999GF9DKuPmdDNO3mNZf3LIU09JD56kAFqoU4JB3eWQVL+S
	Su6FX4A==
X-Gm-Gg: ASbGnctRoUVpA1mXXbblAdCSgPKS58jquIlaqjnmud+3ADEB5Nx7NmHd8o7UfIuOe6b
	+JDHu/QnhqB/kkFstkUSQ23Q3oMbifVXN9s/pY7BG10AM+G/UZlIfX2iUJK9EKMxLZTDdQVKSrA
	l7N4kd1rgvbHEp8fQFXyzYxdIEr96kRNOnaDDoh5Uw4SGR9QMoMw1sFvWrlJ8PwWAuWmVPRREID
	5y4HTKeqHvu7zBAz3IpB/lU4Xpzn9VZZIRzdfyNlGv8bl1mFvjvA6efKq2jSEKZNhTf+T1XrPnR
	Gc/UMB9+XCZSfs4m2LN6H0Dd1zKIisvMQfKVYAutZOalEjFtHnqzrKxsyHC7RjbIAK9myEqCbh1
	rrJNOjg70RZf7Zw==
X-Google-Smtp-Source: AGHT+IFtajYBnPkcPBFn3hdS78WYd5S34uRjgYSaYCBwBb2RfYh87GsI2wHpA2J2uqz82C0rmzts+A==
X-Received: by 2002:a05:6000:184d:b0:3a3:5ae4:6e9e with SMTP id ffacd0b85a97d-3a35ae47003mr163747f8f.1.1747297480573;
        Thu, 15 May 2025 01:24:40 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a358316ba7sm627280f8f.51.2025.05.15.01.24.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 May 2025 01:24:40 -0700 (PDT)
Date: Thu, 15 May 2025 10:24:38 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Rich Felker <dalias@libc.org>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: timer: Convert jcore,pit to DT schema
Message-ID: <aCWkxokrJJo5bvLk@mai.linaro.org>
References: <20250506022253.2587999-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250506022253.2587999-1-robh@kernel.org>

On Mon, May 05, 2025 at 09:22:52PM -0500, Rob Herring wrote:
> Convert the J-Core PIT Timer binding to DT schema format. It's a
> straight-forward conversion.
> 
> Since the 'reg' entries are based on number of cores, we can't put
> constraints on it.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Applied, thanks

-- 

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

