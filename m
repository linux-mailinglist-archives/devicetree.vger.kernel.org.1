Return-Path: <devicetree+bounces-245974-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 89C8ECB7726
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 01:23:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1FB40301636D
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 00:23:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F187420468E;
	Fri, 12 Dec 2025 00:23:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YK22BrbX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CD8F1F12F8
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 00:23:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765498991; cv=none; b=WOKKwP1EuXxRwdIhVsfy4oivXqL1/oKtAiLkwbUkL9sslVT9vhg+uVQco7/YJSa5kIooMHo26p7bqEDwAfpwRH1m9cPSmFMrCp4IcIQeP9f3OnvET+zWf1Ddq2oIQWi1M11SbW+Ba3mGBeQnQyogqTnPU7DTgGlFiviG1LjUMEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765498991; c=relaxed/simple;
	bh=VJs0HdDUTreYqiEPWEYMgLI1QKUAgzDJ9UQWKudR/pE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=n/eBbEtnogbrX+azGNMwqoHbeb0zqC82DRH9KIzf0D0JROBvnS/6/FwwP9/j+w3OqLja60f8gCSbpF7IPUN9VZaSqs3+dJdCdervfwIa4VjP3nzCRip+OSTnecsmG/x7IH6ESLcBLoSndwTGSN1fok1w+pnRiYmHWqQChCV1q44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YK22BrbX; arc=none smtp.client-ip=209.85.219.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-8845498be17so8942226d6.3
        for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 16:23:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765498989; x=1766103789; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ekAwpn4hrC8FLTzr9F7/ywbCXH3vu/SZcsviAIsYxIc=;
        b=YK22BrbXV5FHxPeIt23zE5zrZcTEt2AnaIRgDN22h+OOV//u+pj6H08XpvQ1i1ph4+
         hJO/0jveAc4JH6mTHMN0MKywrEvVa7f1WZaS0t+bBH9Qlj1lkZKrhqcJtSivrcGIO2Jb
         iccIMbASuXSws/a+XVouHcEPAmbO0Y/vURpZo7JXGLs+PZQbQIa7MD89khQ7d7ZrJEnj
         UfP5PE8B9EEfB7mB1W5Tu2z8UKan+37Z6p+8dRldg/dJWimBYxIIQ4AUkWw8/jqd0aUV
         FQPYXyOTgdlTeX4Ei8xvBaVGPLM7ocrGKfR8EKledy7G2+s0NzlXpdmHcRmK4IGjk8bd
         Y8fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765498989; x=1766103789;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ekAwpn4hrC8FLTzr9F7/ywbCXH3vu/SZcsviAIsYxIc=;
        b=KwymglWwh4SpMmp2FGcaZ0pTvh3YEPSoO8xm3J52kLI2O7DP/bsaoFec7iX9IR1jsT
         baVZTFIKG6twVHzP43tBja2QyuV1NdnbHWSRMm0iKEnYQ/y94dnfWkQHkpKlRa0TFneo
         Ngb3FYhNDodrRRu2gZKU7QoWwPjXEu2Lu5oct9gu97FcpZMVyCQ9V1cOndi+DU5dltfI
         B8+VpL/3XMwAiBatYNOvOFyvUWCdOLsQpvog4wD0Mq0PTi0mDYyHJhEKh0oK6cgNrCNP
         eV3fkjxFy51SEjNYhqgLOvtVyufB8w+JJBGTFSkp2t/H3unAqmjoWKhtY1NcU6y8V11X
         5/ig==
X-Forwarded-Encrypted: i=1; AJvYcCVIf9De1z8//rMsJskC7PQjjxVQcVlK3s9JIC8PEBndVrDbvnuSw08DGbE0GOXMgnQfR+zeX7XRdtmW@vger.kernel.org
X-Gm-Message-State: AOJu0YzPL34xWUaLyfuwg4y5Oc/3sw74xasmMX8NkuJBr6d+khznPyO2
	O3k5CTf5s+mIyLhVOD/1ZZWvRZbXCsiRVo8oJ9lkhYT86rFXMtsAndv5
X-Gm-Gg: AY/fxX6dlr71w1F1JYSARNqmr3cgclAriUzGvbm7WPfRr0bHZ1xt+c9+XRJE+zA1kNm
	vwuCCkwMn3EVOp9eFTLLBkQRmd+3koXobka9zFsmjdVwwTqwi/OAQEWhVp/H820mGLoeVDE/qvD
	YsWE08HIl31cgHb/n2PGTfbUMvuZbVWSQF0oLaSNL9JIlQUy33t1M/yZbk/65SeIeWccxGdVkpg
	Q5Q00pnaC4+kEZdqFeQzOL3zGsukswiKAtL2Bc/AVekx4AmSJCelZVykrFKIGNnx7M+mzrPtIQK
	fD1Eo+Lc2CvaZtr7yPAb1oXNFW8w8oQbLJNqIYr1m5Xip2fdhZJBlRYIzdBoddBDtnX7jVGk6VK
	Qg5gvZc15bzI4CjS7Ak8mbN48JFgZzYUKmDq66UQtg2Bj1soUD7J1Gt/p3WTb2oCdV7Xn0Y00JY
	wf8sgeEU/UOEBGww==
X-Google-Smtp-Source: AGHT+IEKDNtd1pW2MAhHOKkF8+slYPOoo67H1JhA1doiQXfU/rc0lm22DiXFt1BHYTZJO8wln/CpTA==
X-Received: by 2002:a05:6214:400a:b0:882:4b1f:a812 with SMTP id 6a1803df08f44-8887e12cacdmr8674496d6.51.1765498989224;
        Thu, 11 Dec 2025 16:23:09 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8886ef30a2asm34637666d6.50.2025.12.11.16.23.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 16:23:08 -0800 (PST)
Date: Thu, 11 Dec 2025 19:23:22 -0500
From: Richard Acayan <mailingradian@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Tianshu Qiu <tian.shu.qiu@intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-media@vger.kernel.org,
	Robert Mader <robert.mader@collabora.com>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Subject: Re: [PATCH v4 1/5] dt-bindings: media: i2c: Add Sony IMX355
Message-ID: <aTtgetS9Hx5MeBzY@rdacayan>
References: <20251211014846.16602-1-mailingradian@gmail.com>
 <20251211014846.16602-2-mailingradian@gmail.com>
 <bc831622-8cbb-4bc6-b96c-9b87fb414725@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bc831622-8cbb-4bc6-b96c-9b87fb414725@kernel.org>

On Thu, Dec 11, 2025 at 06:02:51AM +0100, Krzysztof Kozlowski wrote:
> On 11/12/2025 02:48, Richard Acayan wrote:
> > +
> > +    properties:
> > +      endpoint:
> > +        $ref: /schemas/media/video-interfaces.yaml
> > +        unevaluatedProperties: false
> > +
> 
> Ah, here, this obviously was not ever tested. Heh, please do not use the
> community as a testing service. Missing props...

Just a rookie mistake, I forgot to test on my smartphone which has the
dtschema validation.

