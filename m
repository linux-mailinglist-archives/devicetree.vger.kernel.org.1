Return-Path: <devicetree+bounces-177555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3FEAB80A3
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 10:30:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ABE2116778B
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 08:30:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 273FC28C5B5;
	Thu, 15 May 2025 08:27:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O+JlG2oC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65DA628850A
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 08:27:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747297626; cv=none; b=Q4F65cleIxXqQLRxjTZlTdKyypz/UIZHwcWCfUgyyKWH28dacioiYaqzLb1ktp0XNyosV2FlkCqPmfbx9iJ/a4IxZKs09ZlPsDK8DoC4oR/UbY/5FwF69Yo5CBE1+UXh4QD+kJFAs8RBU2p0TqJsRBnJK6DYKCPxFcWZZFvB4bY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747297626; c=relaxed/simple;
	bh=LsHDZiCuPmOtAdvCx0U068D1yrTVcVa5YOtbVk4xezA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uFXtF1k4JqAaTn87DIE2GXumAUaWEwEzN7QmO6hHaelTgY4nNUV5+UPF1t1CSJoYRBMN82kDlda0e/UvWFiNC4QUJ8k/SqDnWB5E4lGcyvRf8rnrAH2KHaEthb6YabVc2QDOpjRqMlVUoJ2DubNVmBhZN54TX/8JZjGMtPelldY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=O+JlG2oC; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43cf680d351so10553855e9.0
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 01:27:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747297623; x=1747902423; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZP2kpXxaLJqJWX9jqWJnHzn7SyGIvOj3YHIWmjE3IsY=;
        b=O+JlG2oCKN3jHCLPQcCuFfYujszOE1pKagj496idyTksbaJxuO2mQOvK0W3XBvBC5S
         itUvBBQUuZeP0jMF1mZovnuLWjMVWa5Dy40fVdAeeAexmhdBN0Vi5mD6CE7oqs6Ky+/7
         t0ntzVUn1EpiMxkblC0fwJNQCajXPaTEa6QgRmRqSplUasdUEAAj5nZ32LYHtua7lUt7
         vMZusb7bNMvI3EpKcLIE8eO5Q6CJYlyfif/Kk9Clz9VbjmN7phfnit1693SW/wkJsxYF
         YwW2VhlCrvyHSMEaJ+K90URzjxVj4w1h+1T4WDdPBE4HAjfTwV1S5/t6qzxtb9RDUQ/n
         gyAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747297623; x=1747902423;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZP2kpXxaLJqJWX9jqWJnHzn7SyGIvOj3YHIWmjE3IsY=;
        b=hbOTcdUC5GUAe+ZUTR96c8wdMx/FI6nThwhxwEZWnXj3sUvcNlP/GvY/JbQKSl0ZOr
         WrpEe3WdIIGeD85bXxc0IVZDQOpt5VN6TmN4+RHVBR/5IfaTziDZpLCrF03BsSBOFuU1
         R90ODSluh4pcqKcTvY+RILg+9pw0agZRHsTZMFKCdVXy8nRE63NbOPSSer3rSdLASJHT
         nIruepsnzuuRJ/NWogKBmajf5zXBKaKUSDtPcReAnNtSmEdEh88BRLsCEyDZ9Lc6HPon
         g+kvvEOSrbF+Lly9tVwGs/cJGfCsMKBTjqkL/GMZgPoccxSjQ1dpdt295Owcjydt96nW
         9rbg==
X-Forwarded-Encrypted: i=1; AJvYcCVsDuM/4djR8UPojTKOwcTui5yGsV5bhHbVC/sPZrnrmnhti76NPyfsKuE4zN5MymiBQWPx9ljGe8Km@vger.kernel.org
X-Gm-Message-State: AOJu0Yzto74yPLH5CxiehPXMWvdG919/qwOw+gUtSMHkbAkGeD9wnp4E
	REC4CigOfXxaHweQF20NXltZe7i17DfwWkzA/CumoLN2EHPAjdy1U2dhA2VZBTU=
X-Gm-Gg: ASbGncuE5pgFlqjSbLB+r9Kn62A1LaYQx7vAKeZcOrKui9X4PBABh2S3OvWmahN2f3s
	E9oWZBWZQzG7TKYaa1KimEWnyVHOh4vFPxZXWBxk8VPcEplZXP6dEYzTRYD/Nx3fXD3AA12eTuM
	mkWzyz5AMSa6AwxjojXMHkHifZDfOEUd+PdBTNluLNqZGmsUvJStF1Bubo/rqODeYMvMis3u0eg
	sE4DfIuJhzDRr6LoWwmnmIBWsprT0PeGRySmtbNd82i4nB9lZvTwpz4nJNBzPW5M/A2+NYVGtf3
	7snWwQuGl/l5lqPBtE79K8ZRbvswKkXROyzxBjESMwibtCMatPyYTwlnIe35z4WaXpYijcya6YE
	p4NmETfL2vkwEkXxzDWhUCJIs
X-Google-Smtp-Source: AGHT+IFOnpARCWL0++dH6WUPgietCDNzTOox11Ti1tq0iHtelLBxkr8d2sfx33fOCaP/5Otj6lud0w==
X-Received: by 2002:adf:e582:0:b0:3a0:b84d:816f with SMTP id ffacd0b85a97d-3a3511e145fmr1575380f8f.14.1747297622627;
        Thu, 15 May 2025 01:27:02 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f58ecb46sm22235800f8f.30.2025.05.15.01.27.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 May 2025 01:27:02 -0700 (PDT)
Date: Thu, 15 May 2025 10:27:00 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vineet Gupta <vgupta@synopsys.com>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: timer: Convert snps,archs-rtc to DT schema
Message-ID: <aCWlVD7yFSQ2mUFT@mai.linaro.org>
References: <20250506022313.2588796-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250506022313.2588796-1-robh@kernel.org>

On Mon, May 05, 2025 at 09:23:12PM -0500, Rob Herring wrote:
> Convert the Synopsys ARC HS RTC Timer binding to DT schema format.
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

