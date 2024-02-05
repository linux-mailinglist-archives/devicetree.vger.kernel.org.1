Return-Path: <devicetree+bounces-38530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA2784962C
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 10:16:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DDCA0281CD0
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 09:16:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3257C125B6;
	Mon,  5 Feb 2024 09:16:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cYccV1Q7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0266125A4
	for <devicetree@vger.kernel.org>; Mon,  5 Feb 2024 09:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707124584; cv=none; b=HWg5ptAEse/zaoET+6kFMn9quRl+X6P9fefXvZ2rvPqbm+9J8rboqudn47Yv7tZ1p9g8VzAK8AbDuEluTZpUVK0zm8iXXiB6zBBsK6aXegu5OKwh2Mq7UbWLArBH6h0nbn4ylxbQgzaXsdod2mD+MJUnFP5RfytKcES1sdk4c3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707124584; c=relaxed/simple;
	bh=ccOIJyW+UqECakUavq42sVHjwRu3LvVECYTtFWgQ6+s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TqP3+EBysa6pOCHw2HFL095iLLJBbBZDbsqkr1KONfuMWRyx/le4I2AsX+66wJK0HtZIi4N1gzsCivbBqyyLIlFwYaT+LHxci/sbi93bWPAej8SATbfM/YE/KjkSctu6kjvA+DJxJFy+j7oQoevMjQy48A+t8ZqkulxAHQh8ixw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cYccV1Q7; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-295f3bf41d5so1991278a91.0
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 01:16:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707124582; x=1707729382; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OVKyR6fj6byPHapQbBvZk5FovYxGlYmrKS37BOm50PU=;
        b=cYccV1Q7w7m1huvEMRl7wVR3j2Ck/IWv8ttIsnxH7htYCGybtAbufmIYHKBI0PyzO+
         1mttLNMfMVTP9z9NXDcnm0Jly9UjW+g1V2icueCIkCCc4SV4ATCBmt+7RwKDU/O/r05S
         64aOaaYwZ7ujLXtYb9ihpAeSSFRF4VIMj1o9b9ECf3ZdmFLebMLWa1bQ/RTA8RUiutmU
         hRWPdHxQm70D45LA5t9dpce5pZujKcvYVpSV+AkT1KVRFvXnyBslOIixjay2qtlGsZ0O
         DxLbYM2hrMqzCigK0ubXuVj7bUv7tjZl4wzon+r12mRX0Kwe17BEo7KvhKQ5g8Q0kM7s
         2jkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707124582; x=1707729382;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OVKyR6fj6byPHapQbBvZk5FovYxGlYmrKS37BOm50PU=;
        b=uObZCIOziGDcMJWUXBVLCRqv5IGrXJYfXt6sqF6xxRBiGrIXuANVa7C00WhISX5AxA
         U47D34sBlqG/Fh/1zL5NQ9C1I5BkrwU1DjvaaCbgzcuXizLcrGCMILym3BVO3fxwko8t
         AIhDyhWNCJyfhpSAoBh9eFNA7VOMdjvruq4SgSt8bKP++jPxZ2VQKLzZWUt+71knaKvc
         H8tWstUW/TVMyq7OFROrbF+iZbIvIPUNNlu+HXWI0sFgZtnRkUqmNIRCwrLb9HSnYVfE
         XWrPlRnSUMld2PbBHIT4Elvw0b8EAx3qLAIJEjo+4Cd2vF7Czu/EhKLObZ9TdQ5tW7Qb
         pG/g==
X-Forwarded-Encrypted: i=1; AJvYcCUeENsMTtbPBoBDYCdNBLyG1b0NpyIXq62wigamadn+mqybswlOSzkdMWYssmfvxsEc+pqHh7td0Qskq6loPW/1WgKEDxuiJijL+Q==
X-Gm-Message-State: AOJu0Yz0/bPziQ2QGYIjK3mLtmDAaIPO4G4g8bmDYE6/yph0zpcaUxjn
	epYtIpnx0HQJyHCBdj02hGkLgrKVqXrReIyyShcjD1iB0ntn57I6
X-Google-Smtp-Source: AGHT+IHLJake6BnNl6paJ4Jaju1x84v1mJdzqiLGgyzLazM/Klg0gUC5ji3iVzKWm5thi3GLMhnCQw==
X-Received: by 2002:a17:90a:6b47:b0:290:28f8:f5a7 with SMTP id x7-20020a17090a6b4700b0029028f8f5a7mr7674183pjl.12.1707124581930;
        Mon, 05 Feb 2024 01:16:21 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCW4H2A8kVE8PTWxQc0RrKa7Xdm8YMWb8MxM8l8cXPGmFo7l3kh28PyrpjBIV1WwrVv+LfAq8g71dWkaU07CSF65PkZepjQ2DZLXuSVQ6GLSeD65wigYVy1j/c/UW6watWdMStMom8yP1vN4EH+0EX2v7uiryMtjJnJocv8Vvx5d+t7knD7MeS13euDtBbBH1aePMeWMQhl+DUlhciuguawjgkIm37m2GPQx+doiMSoDzIb/q83pNVeampvcbYVnqNN9R76EP9vEIlLLhEkFMOIbf40QT1y3FY9PJO2HQUpuBr+wg8zJG39BXCuA3xnUo+5rGbnnLf1YJU0IZq2ZCohU4TazBsNx8UgOCwJAmD7aH242m/UkQyFf+d0f9fgYATjYVWreFucdtU2Z
Received: from t480 (89.208.247.201.16clouds.com. [89.208.247.201])
        by smtp.gmail.com with ESMTPSA id v5-20020a17090a898500b00295fac343cfsm4759490pjn.8.2024.02.05.01.16.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Feb 2024 01:16:21 -0800 (PST)
Date: Mon, 5 Feb 2024 17:16:17 +0800
From: Shawn Guo <shawn.gsc@gmail.com>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>, linux@ew.tq-group.com,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: tqma8mpql: fix audio codec iov-supply
Message-ID: <ZcCnYd6mLr3uH1fF@t480>
References: <20240110090849.463270-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240110090849.463270-1-alexander.stein@ew.tq-group.com>

On Wed, Jan 10, 2024 at 10:08:49AM +0100, Alexander Stein wrote:
> IOVDD is supplied by 1.8V, fix the referenced regulator.
> 
> Fixes: d8f9d8126582d ("arm64: dts: imx8mp: Add analog audio output on i.MX8MP TQMa8MPxL/MBa8MPxL")
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!

