Return-Path: <devicetree+bounces-56291-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 22BBF898571
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 12:52:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A4AADB212D7
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 10:52:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7655E7F7C8;
	Thu,  4 Apr 2024 10:52:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WU4Oh+NX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C15CD757F1
	for <devicetree@vger.kernel.org>; Thu,  4 Apr 2024 10:52:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712227966; cv=none; b=AceXWw/0Io0qC9RmX7WnSAeISz10ZrmLnfxM7dQH47vg8MhRMqhfu/vAgvfoPQ18LtiNadlfhkPfXrXMRE4n06yd655s9TwaLU0zKFP7qBuWuBOHPfgTK3iCVeeZLq6HeB0PfhWTsli9eOwS4VeAPw7kz8HljP6RGtzgicPhzyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712227966; c=relaxed/simple;
	bh=osai8LBswoCdT7m1JcEqxpuhQUuM7YZsFtxYcGhy9Rc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uJ032ZRIlgElZEk1fRNg8WoeK0avXi0R8ogHjKtv0t+PmtMPCgGCwhlIsRenYHaGVTwCSyT3heVyMt2ShpJASi1qyvM3ctn8GVmXuDPbYLplSQBjYkIJJdvttsWe5ZGpx+MI2rZNIC8H0r15EenXKCIq4np3RlVd7NB+SlMyM78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WU4Oh+NX; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-dcc80d6004bso975155276.0
        for <devicetree@vger.kernel.org>; Thu, 04 Apr 2024 03:52:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712227964; x=1712832764; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=osai8LBswoCdT7m1JcEqxpuhQUuM7YZsFtxYcGhy9Rc=;
        b=WU4Oh+NXgCDF5373JQOsbQar+/Sy0PUYxG2h1Lf4fdJdQT9ln2nBg0BJh1p4KAsFB9
         Jt7fZOz+e73aHmqtE9riqKlMXo93KYmrLelN+tOMRSEvW4Cv9WGdBYyQjQUzGwhFbwWq
         7Ny4WTBfswz7OdVIMddkd4z8iq/n+OfznKDU8R28U4J1upAg+wT33AlbeGay1NiFJqjV
         ydwfH9yIuhj+5Jf0Oz8itvzRe9mIHA+5WQ29aMejs4IA/oOcjvE8R6B88lPZDYdQ1Ysh
         8aUCJfOxS1kYQzg5XfkUe9q8LVw3FxOoAiYhrmo9aUAAk6+ObY1P698x1gOHevHibb14
         kH9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712227964; x=1712832764;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=osai8LBswoCdT7m1JcEqxpuhQUuM7YZsFtxYcGhy9Rc=;
        b=kuTdeIyExW7nAdrfXoMReSLQBJgGoDUE0vM5Ts8fXS0Zjk5ag4RUgCWtKsveXv3H5f
         2E1h6ZcwL/rD2tj922pJl3GLDzHdLZsahdUJokGQ5wdVAQjVbFxGhWu5LPzCj5XYGU5k
         u0kV6dgW6VAP+J6CbFIZ0sA2L4MKqYEvOrfjuoeqHO+nO8Xs2hcuyegYNkB2A/OjCTNp
         BCEvQBZbUQEbrHWpOEVJrx/RWwZpXu7vfbxiLgh5hdaI2Wd287RIPYmlJE+X59H3eXAZ
         Hdg3Sf7tPeWWF3RrkWUSpGTL5uQcGGutKye5QmLefnGGvbp/cXmLhkqGb6jQGtHi/ocW
         O0mw==
X-Forwarded-Encrypted: i=1; AJvYcCW5zsJFLsQF3EExQcyuOn8vk1JdDPCsfif6oF1CiHpHwWo92MWy+evBbXnZzSWCYK7Hb9Rp77pDYyheRwXA60u22erAA0OKtbcc0w==
X-Gm-Message-State: AOJu0YwVJvCkbtRMroP+/UpWeC+Lm/XOyQCn6bHGsw65s9gczv/xPbnL
	nWC9WNDr2rGTAJaQ7kPABIwNA2KvCl4DWsZZKfItzGyuCXwyrIO5TX9CORZsYtAikXYowYecWPc
	U47rL18cnr+srv23Pp9ekDcTKbua8NEthDSogAQ==
X-Google-Smtp-Source: AGHT+IEzdyHVPSicM4mGq55rtkcgY+4tfNUuiZYDK1iFItVJItbvKPQCO6EZVKkTuDkjrguAJFvGodvJUMHYARYddts=
X-Received: by 2002:a05:6902:4ca:b0:dcf:56c3:336e with SMTP id
 v10-20020a05690204ca00b00dcf56c3336emr1927225ybs.35.1712227963791; Thu, 04
 Apr 2024 03:52:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240403111106.1110940-1-ulf.hansson@linaro.org> <Zg1fP57mixbKTjJf@bogus>
In-Reply-To: <Zg1fP57mixbKTjJf@bogus>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 4 Apr 2024 12:52:08 +0200
Message-ID: <CAPDyKFpthS4eZKTTYJ=aoE=FbExD6kd_bcc_WRNLh=2BzNVHPw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: firmware: arm,scmi: Update examples for protocol@13
To: Sudeep Holla <sudeep.holla@arm.com>
Cc: Cristian Marussi <cristian.marussi@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 3 Apr 2024 at 15:53, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Wed, Apr 03, 2024 at 01:11:06PM +0200, Ulf Hansson wrote:
> > Recently we extended the binding for protocol@13 to allow it to be modelled
> > as a generic performance domain. In a way to promote using the new binding,
> > let's update the examples.
> >
>
> Does it make sense to keep one DVFS example with #clock-cells until we
> mark it as deprecated ? Otherwise it may be confusing as the binding still
> lists. Or leave some comment in the example or something, I am open for
> suggestions.

I am certainly fine with either way!

However, if we intend to make #clock-cells deprecated down the road,
maybe it's better to start avoiding the use of it already now. That
said, what do you think of following up $subject patch with an update
to Juno's dts(i) to move to #power-domains-cells too? That would mean
we get a nice reference for how to use this too.

>
> Other than that,
>
> Acked-by: Sudeep Holla <sudeep.holla@arm.com>

Are you picking this via your scmi tree, or which route is this going?

>
> --
> Regards,
> Sudeep

Kind regards
Uffe

