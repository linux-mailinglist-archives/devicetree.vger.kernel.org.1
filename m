Return-Path: <devicetree+bounces-226653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA2ABDA4B6
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 17:19:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 237A0188983D
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 15:17:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19A8A30146B;
	Tue, 14 Oct 2025 15:15:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CsdQu+M0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 904F03009FF
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 15:15:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760454931; cv=none; b=Mq9NOGld1LMn6tGb1nNr/8AMjXGLzKk+a88g5G50Wds6jvaFHc5lzn3kmzKoSP8BDBX+jNU3mL1nR4SHJBfrSGdq1VNdKAS5fhypyesUWJJt7mI7iBxNrBprY1rgTKu1UikdxY80w5oov96qQR0ufJB18pGSun7pTZgt0HXvRdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760454931; c=relaxed/simple;
	bh=O4un/WoNhEAplHVosH+Aiv2Xzjf927LVhRMRZoUS6hs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eItAyVyAcyCL95n+2WGhzh+jaCZH+vpSU7MXRgdwp+qYpuD6wTobxLpfVJub89WCc/vxM+9PTPY/z9DodxzICF1YlKwmI3Ft/+dnu4BnukGaw8PGGZhHa6zz+8biI3R8WaAPuWP2ICHrrORzE8eYLxMEO0iOlYoEmOiiunTEvBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CsdQu+M0; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-782023ca359so5588414b3a.2
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 08:15:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760454929; x=1761059729; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eiOXvz3p0iDVrGhzRlMs5DQgf7JeJiwBe95U5RWF0Dg=;
        b=CsdQu+M0CwjN9qg8/L8I08lcBBnKJc2FbbwgpePadFlqLBYwt83q2SnX0tHN7lKxYO
         AMW0C/Z3pagC5lmoaB+8qzE9rDx7UkaviSFrNN9iXnY1y955QRx++aQmGlzf9GQJGbAy
         tq7fgi/hKLB7jprkanLbGLe1oKS1yTmR26eYzcx8M6hXtLWbhzTl2rt3mq+BZBxaeDgU
         55fZ77ipyqYRTIm4gjtLa/sgE1MmcGXS79LGKfQ5ajhqF6nf04jtKBMDFYNdtK3TTTS6
         iKipjHwIzqPuqmWhiX6tqrNN1W3wn2FEod8+TrKbU5dTwYkuCB2t4X2hVJCcJrvpJ8co
         QjJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760454929; x=1761059729;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eiOXvz3p0iDVrGhzRlMs5DQgf7JeJiwBe95U5RWF0Dg=;
        b=rWR89Im1iVyOw+nnwqOwUmetr5gIK2kn1ROXW+sQ3sTsswl2hI86bgm7YuknunEqQT
         0GXfeJwSasKoiWUyl5PlvUSGnDxKIbD3q9Vfrbo3CTQ1vurEVcof2+n7T/i7oUOUikvf
         lDBcqEL3YH6ohAdu+KuEhZ357LBGhJGOjEZ17mAoc/Y+ScXveg0VvzBDhZOrsWZ3ztWq
         cIzhQE1k2PJ4FmDqa2BIoHGfrEtLlZK0CzngxdzsMO1LW4Lr11Egy0LzYIMjvz7RJrsX
         3BwRl2BsbTqnuPwYxRrS4RnRe7EbsUyqtz5Vwq2sYeMuAhtk88xUWbZq9oD/JkmfwqOo
         f6oQ==
X-Forwarded-Encrypted: i=1; AJvYcCWCMZjE8oQDyxfj0bKzYAHWerDbs0Oj6jTS5+1wTISzmyELOWAtk71M+9XrZ3GqJzn26Y0j9FaMsK+4@vger.kernel.org
X-Gm-Message-State: AOJu0YzXPOoSv1+HRhV4M8b585l7Q8mXvjpckHtyPV64QjG9BKKOFBwJ
	8fRwa3QCYJ9LHIklSFV1s3Xd3kyKcJia4c/KQs2doZERSBwLQMFsvVms
X-Gm-Gg: ASbGnctkvlMV+sjMmKm0A1rpJgSsACh8Jn2WJo3bvfzAu9ySTwoqqH1v6LW+S3a/ekj
	tb5ysyAQ6PH70AB0Gqn2jSqaXSHf4meSjX/f13yDEHNB17YvN1xhmsd37z3Ij9zWLm0x2sRWabT
	cpA9F5PTXyL46qRFLRQSBn8DAJueVkaQ17lnUGdX4sPfsYeKxy2o6R4AxzXZTwRxhlmE/73VfNK
	etsIEWCuptXSyABH3cdpCNxuM7Y/ZqJ9CylKsB8zWtDRI/0j1QAgTaLbs33gh68wqZbsDpFfPmH
	yadKm5bvCmpC9n1U/aYbMuzPB+v/P4FdV4KAnaSfsyP0V1i1ZbBlfbIX2Lj5DZGvatiFepawwAL
	7EsMlMxe5ijQ8ccg/KNTS4vBzQCYUQZH8+xRMwfe9gAFQus+slMwzhuSAw6MvRxJp
X-Google-Smtp-Source: AGHT+IEI0BVlTm9byP6/HRgTG7Oom2uwO7sMtrezChPyLSYd7pcFGMnXeS6UjCq7pllo5lsSGFSN9A==
X-Received: by 2002:a05:6a20:7351:b0:251:c33d:2783 with SMTP id adf61e73a8af0-32da813ce42mr33664357637.23.1760454928710;
        Tue, 14 Oct 2025 08:15:28 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b7411fcf0sm10258315a91.4.2025.10.14.08.15.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 08:15:28 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Tue, 14 Oct 2025 08:15:27 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Khuong Dinh <khuong@os.amperecomputing.com>,
	linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: hwmon: Convert apm,xgene-slimpro-hwmon to
 DT schema
Message-ID: <afaddcb5-09dd-4a34-85b0-3c9ea8dacdc8@roeck-us.net>
References: <20251013213127.692373-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251013213127.692373-1-robh@kernel.org>

On Mon, Oct 13, 2025 at 04:31:26PM -0500, Rob Herring (Arm) wrote:
> Convert APM X-Gene slimpro-hwmon binding to DT schema format. It's a
> straight-forward conversion.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Applied.

Thanks,
Guenter

