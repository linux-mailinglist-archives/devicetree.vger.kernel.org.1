Return-Path: <devicetree+bounces-209817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A42F3B3933B
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 07:46:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 868EA7B6CBD
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 05:45:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77E00277800;
	Thu, 28 Aug 2025 05:46:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mKpWF2Co"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFD672773C8
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 05:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756359985; cv=none; b=Ul6y0Y3eul+SGowvWSbrh6qU/tmBKoiI0O7JHbmjfodJjXprnO8qd6yjKclGfi5FLTzOvYasctFHnWPYXKe1mC5dn819FbiIADBZohKVH2MEUBSquVu8fFyMp+bnSMVOJRNYpTh9eeLiwbtWisrUhvyVl5juBGufof73lKsP3g4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756359985; c=relaxed/simple;
	bh=i6L+f3exnFOVhxuWsM4teMlEODpI+rzw0Jw85ZTvtIA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BX3LqLHj4liJ07Fx5PXl/PNymYzr/hHLKPygBW3aKZCFd4kdUfwjdhPwgfCTL9JthoJoGqXQf9IMdrTyc3tJG8NVid0FkJsJro3YMxNUd/GDLzvNGVul5X7qOq5HcEMyP9dPmbD5rhht0x7VPhEdDptq8PaUbPvxCr4fIYb7oVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mKpWF2Co; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-7704f3c4708so698278b3a.1
        for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 22:46:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756359983; x=1756964783; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JrIDBpuM+wIKseLTnowhk8eTE9B0XZjCQe+CxB8rd+o=;
        b=mKpWF2CoXnkI2N9uVobkgXcLZ6ic154Z3QmfTByv7XWYpphf6fVaSoIlTjyWJVZS9T
         VfCCCDuxpjVU9r6AiUEKvC3qmwYxLQg1hKNzvx1OoKxyaCAsUklTw+aPZYI9KFk9/zun
         XbGgPwWHYBAdlcD09D+l6HTZfzQuhQQPCLznywGU1Rj4KtTqC2heKld0oL0zz9RYm6lY
         ENAIqTmOZfljEin2ZnqgJtF8/L7pWtp9wHpEmjj4bAyj+EMRSRTKbRsVS1gS8gVZ/D/S
         NX/W0JCbdayE8hiLSNv9zXDnM5+M1SbKb6s7F94EvUTFv+MY8qVJoGndBnl8mKSD6FkF
         HHmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756359983; x=1756964783;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JrIDBpuM+wIKseLTnowhk8eTE9B0XZjCQe+CxB8rd+o=;
        b=uKYJ2/EwNkQMFBBVMdxB539PvLXR+n6n+6GE73MRDaluyLUAEYyD8jpKAJFR6y3JeW
         9DJl4U6hKOnsNpMqfF0jSY4vtChFTwAJ8JCckDM88AdZ/nZCZkajouWRYla8dF63wc4u
         Ij1JQXwfEKIb1669u0zGTBKEvYBrk2JyLAcDqTLTqfhODSipfNcT1LvvsgZRZDKnagiO
         IlsrfmJ5c3G9/wUc0hUC49WtibOnAUZs3ttwaIgv3VIX5I51hqeqoYpONLMJlXmbl8ww
         SAZ+Lqd+9rUuoP8A3btiYCc/4GdWCDw+oAUBBgE+DUK9s3sVLsaHWvvFNbvb2tyF5DDo
         ovQQ==
X-Forwarded-Encrypted: i=1; AJvYcCWPxPbypXKxpyTELuGycHMd968dMICgxZ5vQ/oI11+JKHMKsRz2P8iTsUY4Q8md1HPwqKSFO3EsZX8e@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1klLaV5RZmHunUQbgQW6gVvNroL1gHsSgkaOOkLLmaHfQwOQ7
	Zz7PHzZsD/9J8GZx7e8BGROrytVUKmcl0LJptmLZls1CgTLw25lI5AENkjdQNEX8WSA=
X-Gm-Gg: ASbGncsJlKVNVeJpTgW1Cim5Z6Mk8/qfpLfOi0MtBSWo3W5PcgAFA7urnFO0HvyQjBh
	IIsqx4BKTLbAyFY9m+LBVYy+6PNCQdsVawK1E58947BqVI9v4XhUehwkLmDNKaNldiBcWgE/D37
	fDEnVke3u3FkmFYuVPE3mij1BIl6cJjPbW6FE+rap5+pgFGhwORNty29s5j5MHxoGqyvyz347Ag
	5j0w40m6qm3qSTlh6E3HrFyWiCmZTUjCrhutyjN90cJXiK6VhsVKH3OHQCWeMpSg4MeYktaDPt5
	abHCjTew2eKUrfRxVklE/tMAG9ULCCl74Dq93jsARkwurwUm9ZtWa7Y6DQKIxKam5z8/06YjMP0
	r/MFAe9xhVvt45DXKoDZ6dRfD
X-Google-Smtp-Source: AGHT+IFfuu4OZWLK4Ect5V8qcKWdtQ9AvKTAwNSmE5IY/JmFZqua6II8FJDl1UVaUxNnVGH1wfuJAA==
X-Received: by 2002:a05:6a20:2448:b0:240:2421:b912 with SMTP id adf61e73a8af0-24340d17030mr33915391637.37.1756359982962;
        Wed, 27 Aug 2025 22:46:22 -0700 (PDT)
Received: from localhost ([122.172.87.165])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4c1b2f5a3csm8873232a12.4.2025.08.27.22.46.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Aug 2025 22:46:22 -0700 (PDT)
Date: Thu, 28 Aug 2025 11:16:20 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"open list:CPU FREQUENCY SCALING FRAMEWORK" <linux-pm@vger.kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>, imx@lists.linux.dev
Subject: Re: [PATCH 1/1] dt-bindings: cpufreq-dt: Remove redundant
 cpufreq-dt.txt
Message-ID: <20250828054620.u6gbjevidlnv32cl@vireshk-i7>
References: <20250827204401.87942-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250827204401.87942-1-Frank.Li@nxp.com>

On 27-08-25, 16:44, Frank Li wrote:
> The information is already documented in
> Documentation/devicetree/bindings/arm/cpus.yaml.
> Documentation/devicetree/bindings/opp/opp-v1.yaml

Even then, we can document what driver expects. So duplication isn't
an issue I think.

But this file is outdated and hasn't received an update in years.

> Remove the redundant file.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  .../bindings/cpufreq/cpufreq-dt.txt           | 61 -------------------
>  1 file changed, 61 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/cpufreq/cpufreq-dt.txt

Merged with this commit log instead.

commit b238cd833e3d62a76c53d540ed663b314ad179f0 (HEAD -> opp/linux-next)
Author: Frank Li <Frank.Li@nxp.com>
Date:   Wed Aug 27 16:44:01 2025 -0400

    dt-bindings: Remove outdated cpufreq-dt.txt

    The information present in this file is outdated and doesn't serve any
    purpose with the current design of the driver.

    Remove the outdated file.

    Signed-off-by: Frank Li <Frank.Li@nxp.com>
    [ Viresh: Rewrite commit log ]
    Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

