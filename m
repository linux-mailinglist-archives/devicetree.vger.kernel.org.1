Return-Path: <devicetree+bounces-60821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D288AA8EF
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 09:15:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2E7B5B2126D
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 07:15:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18BA53E49C;
	Fri, 19 Apr 2024 07:14:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VpaXPN+j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 983C12F5A
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 07:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713510896; cv=none; b=ZqI0zqV4+47nDKdcjj9UbpGkmBOke8QWvgzVDdG0V9lEn3jg3iqsK+QrNnvk/8xnc9xS4S36368aghr7MxDhs8B3kR71BjMN7MBv4G3QYRfM1qerHk0yzbapjgrEp/X30D7/s3o+LHRNQ7Lghf5PmHlk5Le3APtmQIKhp/jGtNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713510896; c=relaxed/simple;
	bh=EZwRuBKu4HxxbNeubieqwDvAk4cYLZBGNhSv/CphZBU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RvG0FgDIuqhspDaxDRLVfUWVtPpl2C7OxCJ85bqAH5/ggomeWrerZwfcFYWkLq5xXR81qjGtcBlJ7hP7Km9La+1Bh6/fx6QUR9SVkplgZfxm0glxhUJtHVSjm/6Rn0k6RQ9skcyW3aVoBQa23a+9dSgprLBjDXd43a4zgFuBBkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VpaXPN+j; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-6f07de6ab93so1723987b3a.2
        for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 00:14:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713510894; x=1714115694; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Vhc6CEa4yodPk95tSkHjVnxQry4y1AM9/vzU+jumnV8=;
        b=VpaXPN+jkFd3+93gV/P0bcxpq9hY1VMEJhmHXAvNKmEL1FbhxEK6U3oU5PyANUH4We
         CVQa0Vb7T9OP6+pZ3mVFdTj44QUwb0Va8VhbGwxZgjUBsVVdYpvczXYRSmfklaMmZ8ro
         xjTn/T85uIhAFH14i4pJgRYChUClPLduNe4Tt1xhGm1VwSCozjcJGPaZCXOuOSjXv4Ut
         6ZyoBxlZwdA0ywRxz3EoDtsqQaGev6v+vXvziSAJ6WFWNYMMZK6nidYlQzLK3sM9AGpt
         V6s99msQzNPVRToxgyZ06d0lXRSeywDk5efMVp584DXn68pFsiNhM9BxQDdNm4XUS99T
         763Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713510894; x=1714115694;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vhc6CEa4yodPk95tSkHjVnxQry4y1AM9/vzU+jumnV8=;
        b=ZAdy9AkU1GG3dQl/F8zupe+XnTxWvZRXT87kTMlrqWyb7sd7B5KPtee2fkCLevgSA7
         hd+Y6tnz7QO9zjE/72pEtStuV7yAB/BfrtePy3Mg/vZ+gGv5N3MTyWCuTh8fVPX1MfMj
         6du/QZwJCCXSJDiSYW6vbIAhxWBLT+Hffpl7g3GSfmbKaypf1S3YEVS/D/Nj4/VqiK2A
         AFEnl1MLwuciptkgStaPs7ZXTiUEygM85jWV0tFpKmM6dCoEwfFANeucx9Irg4mg5cCk
         jvY9BbaLZvUteS81qvd8jmMI8IMv1lr6/fOo0vMkivfVyyOPvX+39whOplOXFlFFt9Zf
         +IAQ==
X-Forwarded-Encrypted: i=1; AJvYcCUvaN7Io9bXzThepjcCK1EJlTFskBwvPaUVjyBjrzJGmUSj3armk6xEtqPTBby8YRZLbH+3wSewyRMom5yrhoDDFpcuc2Yo929SVA==
X-Gm-Message-State: AOJu0YwoyZYzEycBQz8UJRndUU/WizTHAoIYti0wM4MJYHWL1rPbt9fI
	tYObX8gAeQO7FE3Hn1Iva6maPEyKQxh8MC/vWIssJLLvmf5TeWxZhSWII89NCo4=
X-Google-Smtp-Source: AGHT+IHGlJ8scQEEw8KQoTd3yaIXAQBiHEVN0IdsvDfwSNRbMjqmNmjhmzpulIebiPmnvU8XHjhvQw==
X-Received: by 2002:a05:6a21:996:b0:1a1:878d:d3f6 with SMTP id li22-20020a056a21099600b001a1878dd3f6mr1196467pzb.26.1713510893725;
        Fri, 19 Apr 2024 00:14:53 -0700 (PDT)
Received: from localhost ([122.172.87.52])
        by smtp.gmail.com with ESMTPSA id g11-20020aa7818b000000b006ecfd0bf326sm1051144pfi.99.2024.04.19.00.14.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Apr 2024 00:14:53 -0700 (PDT)
Date: Fri, 19 Apr 2024 12:44:50 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Andre Przywara <andre.przywara@arm.com>
Cc: Yangtao Li <tiny.windzz@gmail.com>, Viresh Kumar <vireshk@kernel.org>,
	Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	"Rafael J . Wysocki" <rafael@kernel.org>, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	Brandon Cheo Fusi <fusibrandon13@gmail.com>,
	Martin Botka <martin.botka@somainline.org>,
	Martin Botka <martin.botka1@gmail.com>,
	Chris Morgan <macroalpha82@gmail.com>,
	Ryan Walklin <ryan@testtoast.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH v5 0/8]  cpufreq: sun50i: Add Allwinner H616 support
Message-ID: <20240419071450.7aiheeoyq35yjoo7@vireshk-i7>
References: <20240418154408.1740047-1-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240418154408.1740047-1-andre.przywara@arm.com>

On 18-04-24, 16:44, Andre Przywara wrote:
> This series adds cpufreq support to the Allwinner H616 SoC.
> v5 just removes the explicit H700 speedbin support, as this proved to be
> problematic/unstable in testing. The rest is the same as v4.
> This is based on Martin's original series from about half a year ago[1].
> Thanks for the comments on the list!
> See below for a changelog.

Applied. Thanks.

-- 
viresh

