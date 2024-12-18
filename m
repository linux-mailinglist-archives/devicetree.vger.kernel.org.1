Return-Path: <devicetree+bounces-132254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F8819F6456
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 12:09:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 441CF1891B56
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 11:10:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A941B17C219;
	Wed, 18 Dec 2024 11:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S9S3VUrD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F994192B94
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 11:09:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734520194; cv=none; b=BTXkC89VR5MVzvQB43nuljqSo8Ep3g/NCmTcNYPIUlMx4cq5u7SbPeuFcYgqm4iJ0jXZjiKKUDTte2WPurLhoe1vJ44wTaqqkSvCEIJqCX7wvDmoYsO9cqtIwzTCxiYq/CJepqyttN6dUfgL1tDgJgyQN/Bu7Spkdk0WBC80QGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734520194; c=relaxed/simple;
	bh=9kgCYAPxYpAMRx9QsazTQfcEmFpIR6tF9E+jVSWI+ys=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fQI7pbuY7xnbhpspwr1GxhUihZAAoPEDWN28mTVaMfUYolfucK6eJazZV/XIvNWNcyDbf25rt+B/XkT+m1qrUMZ9ItrOmabJgmjT7CyY0xzuqd8p7UueK3Rt8doPV99GoORgg+G5EYUHAgF/Mle17IjprgahEZAMvRnGSK5C+pE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=S9S3VUrD; arc=none smtp.client-ip=209.85.215.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-7fd4c0220bbso5950636a12.0
        for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 03:09:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734520192; x=1735124992; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cysivQMCAup5VX6VRdjk63p3UWGwFhZcVxFfx15JYQQ=;
        b=S9S3VUrD67QypJQ2cTI1sO/9pV28sPhP4fE3pzbkuA7sOjV3w8rFpd0zWwRsmGrQMI
         kzLLclyNw7iJn5JwxKBsXVRmxVuLWahgWimdOua4olAcc8b/eJUxaIzODVQhV8Q5vuZl
         t4UncVCm0QQcsjbwXG7G/Y30ya7U0AX2ZoCzUtkwaYmXRIfyQbjLM9Rq+U57poQvotqs
         2p1t4vmniyfjmCUGEg86sawWbZGN0i8x5ENzRYZyjnm1zTF1B7hcjG6w3cIPQw9cVVTd
         LvAvUD1nAHpGZQnz05SjuA4kK9QMnIB38tmfzoF+08KfKEIovdonDa6sH1fzBe04Z5cr
         j5eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734520192; x=1735124992;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cysivQMCAup5VX6VRdjk63p3UWGwFhZcVxFfx15JYQQ=;
        b=jdSvKX0YtczmJp+s47j73/ZKAzI4ipZ6Qie+PgYUNQd6BSu2KQbLCn6JPdzfwKdLVX
         RKBXFqVwmlBcOXOBnKaFfPTe8CGcALv3hnVyJ5c+XY5Yt1ii5ZeI4LevR58RWXx1a7rM
         M4njp3gjnUPyOuRw8SYzCd4K5IDT9nDAG2KRgHx4vtI+9fqnuljn4ZiezL/IGnosVZ8L
         f3qPRZJ1YRrb07L4GD0RzzXyAGoxqC+mgs14m0Jf1ZemtYOy23QFBFFb30L+zIpLDMrm
         WfHyPSIzAilWEIC50Ha9GzmoYhi95OLmReHm6funlTJVz4coca5DTHG1TsWi55GYvs1x
         ur4g==
X-Forwarded-Encrypted: i=1; AJvYcCVr1tYvPAwfhIfa/5sri7AkSPIRnYCulYcjZSfs+MIAwKFru7f9QlaS+DvTgqpD6VNgbpmH+mgcbozj@vger.kernel.org
X-Gm-Message-State: AOJu0YykxHf/lKTVVtmM7xr3Miv9ZjyOWhHmG7FicMiVOB2GrrljWy/6
	5Tng1zJf2nFeJyZjpQmfFu8/Mg9z3oyA55EXBBxhFEDsxzsQBr9f48hgYmdwvQT2HiYUaEOtTV2
	pxgXM9QU+SmNppXhmp7UZhjoHtZa+qrDVY6Ns1Q==
X-Gm-Gg: ASbGnctjmpp57WwniFZknyagb+GpXa193URZWjRJxSOxTgltQTiW7U1lh2hbMG0Nvgi
	MdgH5GlCQ2tjg0xy1LWfLjpVGkDE7Dlr9LL4UMak=
X-Google-Smtp-Source: AGHT+IEz+SwthpfmpijWHlgsc9by0AenGHkniwWORMm8lFz8mYBsn+oM1BmwW233q1MPW5LUjOnDSoaOOI/dEW+oQtw=
X-Received: by 2002:a17:90b:2642:b0:2ee:b26c:10a0 with SMTP id
 98e67ed59e1d1-2f2e9339c2amr3609913a91.24.1734520192464; Wed, 18 Dec 2024
 03:09:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241217063324.33781-1-quic_jinlmao@quicinc.com>
 <20241217063324.33781-2-quic_jinlmao@quicinc.com> <tida22chffj2znikeotmo52aqnzvmedn3aa7a2coarz2dwjc7w@duw5fby4hexk>
In-Reply-To: <tida22chffj2znikeotmo52aqnzvmedn3aa7a2coarz2dwjc7w@duw5fby4hexk>
From: Mike Leach <mike.leach@linaro.org>
Date: Wed, 18 Dec 2024 11:09:41 +0000
Message-ID: <CAJ9a7VhR5AX9QD3fHiT_aU5yHShcZFaHLEDDcBJbu2xcRbWGVA@mail.gmail.com>
Subject: Re: [PATCH v6 1/2] dt-bindings: arm: Add label in the coresight components
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Mao Jinlong <quic_jinlmao@quicinc.com>, Suzuki K Poulose <suzuki.poulose@arm.com>, 
	James Clark <james.clark@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Mathieu Poirier <mathieu.poirier@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, coresight@lists.linaro.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 18 Dec 2024 at 09:21, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Tue, Dec 17, 2024 at 02:33:23PM +0800, Mao Jinlong wrote:
> > Current name of coresight component's folder consists of prefix of
> > the device and the id in the device list. When run 'ls' command,
> > we can get the register address of the device. Take CTI for example,
> > if we want to set the config for modem CTI, but we can't know which
> > CTI is modem CTI from all current information.
> >
> > cti_sys0 -> ../../../devices/platform/soc@0/138f0000.cti/cti_sys0
> > cti_sys1 -> ../../../devices/platform/soc@0/13900000.cti/cti_sys1
> >
> > Add label to show hardware context information of each coresight
> > device. There will be a sysfs node label in each device folder.
> >
> > cat /sys/bus/coresight/devices/cti_sys0/label
> >
> > Signed-off-by: Mao Jinlong <quic_jinlmao@quicinc.com>
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
> Best regards,
> Krzysztof
>

Reviewed-by: Mike Leach <mike.leach@linaro.org>

-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

