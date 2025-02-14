Return-Path: <devicetree+bounces-146668-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7B5A35C95
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 12:31:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D39201891F91
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 11:31:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08E09263C61;
	Fri, 14 Feb 2025 11:31:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sFNnp2sq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98096204086
	for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 11:31:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739532690; cv=none; b=BMiGocU7PsNU+c9g/uzwqZLBddXac0X9XJrF/2ffxQkcW4wbq9lBbVB9wqHWJo7nf+UBYpIa0G86yZ9zqEEt3AoRS8xxXSw1kLpM3zU3/GeHOUN/iqd+nV76DtuOACFPKo4it7j4Q35q87wOyB6xR7i/B7aHMujYFg692ThQxeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739532690; c=relaxed/simple;
	bh=2U0g1+m0tosU4qQlWPu1j9YKUDgGDzukDvuljJcEnVU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Mq3nMCmiC9fFMZ4ZSMQEeUyeja9BKFqLb9x6jt4bLNqvp/1YnMToZiBn5/Ipuqpdod/957uBr7XdhpTdZfI0WOgpkY066D6mFXlSatRF4DaFfE/VgK6OABBjaVuqtqPMAWtgTbhdkqrAg4cSSdl07Lb1V9AjROCFw27thSf1o2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sFNnp2sq; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5452c1daabeso308518e87.1
        for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 03:31:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739532687; x=1740137487; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZQrrMIIcsdepuAUZtYMG2ibPJAIlpej8VrcFVh4LEgA=;
        b=sFNnp2sqD7mjLqfNrs/1f501u+5IytNpwB0hTBLpq5dLCrIpxV0Z59e7XHuoC3lB0p
         J+Gz9sNGFhGZMPLJ5ZwW7VifwETi80zCLQZ6lPKoPKblO3Cqiq5eoll7E96QTMpbOyyV
         tcEUO9Sq/IjlkO8imriCpyG746jvnAtieoCz2IHWxsz27QoA1lU6QMZ9ciqrQAOZMfhb
         14c/oGsfRph0UWKGO5r0Dm+dIhzBWWqf99EDujoUMnmKUB0kJwlRPzQZOK2CiJ3XsC+o
         1iH/S+Tx6tnJ+ez29pe1Qj6hlEpR2FRfHnAvODb2WtBtHzR4xVkkziJbzkqMU8tV9YDW
         SNQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739532687; x=1740137487;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZQrrMIIcsdepuAUZtYMG2ibPJAIlpej8VrcFVh4LEgA=;
        b=Rwn3COskjHOMjQOloI8kRdglZwAJ0zZ0KEHIRQe/URyAgZ0RDvdTI4rXOFK7kONcZa
         kvNnwmeYhSMMNE9oEVyOTVWbO8vpvnocCnUB0V97uhODCuz8qhrHiQWV+nnT99u5Q7Yk
         WboocWA60a+JXsdwngDzgX1uvBlqe3NxE+1Nr3AcCabmFry7zjlEOAP5arub+55t1WWc
         G7ipyMSLUY8TyFxR9oK1ZWQc626q9gl3qTsR1sOhBRRKp9rVD5jjpj+h5DZqxCyzLVHq
         feCja+44oT9P1qJTlxv2ybSiTMAuEJIjG65wGEuwdjm43n8TUHhlDrCjd1MYnhGXKDL0
         F0kA==
X-Forwarded-Encrypted: i=1; AJvYcCXRQSitrg9tcwj8ctaGn+e5VQpbeRCLedu+TFzMlpBQNHLnIz+4bErSGzI0VYW6++g7MuWEuJR5p6Tr@vger.kernel.org
X-Gm-Message-State: AOJu0YyN0TZp6C4yDD2vmCkFqVQPXvYwwMb3ml7DteE1JncgUeN9jq1/
	FTlaV1oUUXALddvQuRAxZYmJ4e7Vi10L8R0mw4e3fVIkbeeHKAWL3IOCTAp7JtA=
X-Gm-Gg: ASbGnctL8Jts5Q0uFt+A/cb4ntr3CXZhx7kHiy1dQtrP8+paWdO/dsrFExwWfDk3lZi
	zGNsjmHXM6uCJVhRqzgsraefPgSOXH4hEmr513ahXpMv0LadDlDCX23e8tACUKc4DDCn+DrKYV5
	eL0OI3ibN/hAipAjRb3LGiFW/+44JtJqwAXtaQpsZrgojoNQumUebXyRo5wOJvgW361dNhn+y7n
	lAH0p0LD0JRFEKTimBkUdnYc4dHyLObPntDoVX+E+a2y26qGgm5g2PpVOjghiRBwsBFcDWIonpw
	DOPd5VJ5emnXPF8jE6615QNKUmwT9HeEyX5kqtl1DQJTDOcqtat5nfu7kymorAHmvsGySqI=
X-Google-Smtp-Source: AGHT+IGjs9yMg+iCQr3IF2oWlxeySoJlOZkKJgyEb8x4vfVkiQxa9wP3j61Oy3tVPMRng/3g23DMxw==
X-Received: by 2002:a05:6512:2216:b0:545:62c:4b13 with SMTP id 2adb3069b0e04-545184a2e51mr2906212e87.40.1739532686682;
        Fri, 14 Feb 2025 03:31:26 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5451f083593sm487198e87.18.2025.02.14.03.31.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Feb 2025 03:31:25 -0800 (PST)
Date: Fri, 14 Feb 2025 13:31:22 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Krishna Manikandan <quic_mkrishn@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: display/msm/dsi-phy: Add header with
 exposed clock IDs
Message-ID: <cpem2v3z5slkihza4h4kaocxitpmdpnkrnl3iksevbewsqo5tb@zugjn5ng6oci>
References: <20250127132105.107138-1-krzysztof.kozlowski@linaro.org>
 <b4d07c0a-5b09-4a89-84b0-e8508ae12ba5@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b4d07c0a-5b09-4a89-84b0-e8508ae12ba5@linaro.org>

On Fri, Feb 14, 2025 at 11:50:14AM +0100, Krzysztof Kozlowski wrote:
> On 27/01/2025 14:21, Krzysztof Kozlowski wrote:
> > DSI phys, from earliest (28 nm) up to newest (3 nm) generation, provide
> > two clocks.  The respective clock ID is used by drivers and DTS, so it
> > should be documented as explicit ABI.
> > 
> > Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > 
> > ---
> > 
> > Patch for Display tree, although with Ack from clock.
> 
> 
> Any more comments from DRM side? Can it be merged?

Yes, it can.

-- 
With best wishes
Dmitry

