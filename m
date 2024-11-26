Return-Path: <devicetree+bounces-124622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B8E39D9678
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 12:49:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 441D6166D79
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 11:49:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A91781CEE9A;
	Tue, 26 Nov 2024 11:49:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TKBV0blt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E67C8195985
	for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 11:49:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732621773; cv=none; b=nFkbFJ0tRFFwrneJ8DJ9GIAn0fIcU3A4T8dN4AWjyBM8wtvZoeJJ+WtuEjsJwIx97HtegVTgTX+ICn91LWHjPWGQU+NRZ4TpXCSwkcC3JC84VnfJrIIR5rYX0t1PIGCYYE1HJg6SqrPyFVklZJ2DQMrnPt3Z1+5lrfo/3i8NP3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732621773; c=relaxed/simple;
	bh=DWw67zE2lJp2DCEzhU+vtzbe6cSTq0sENaYdnpP0uZo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PbYGetaYzXhCGzWX6P1VpWZQoRNUlso7xZZY7NH1VT3pOveI1SpC6/RpdbSCT0PB3M5dZ+bkrWn2TLDaOu9FppQrVFL7EntRPPkfJCw1TVtHc/oFiNtUhZCSOL75Wp09i7QWipiMDo8CYsBnu6sLeQQDoqwnQMLdF/KW9Q+gowY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TKBV0blt; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2ffc7a2c5d5so18924971fa.1
        for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 03:49:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732621769; x=1733226569; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=J0808uU3LOgHtR0xR0Opk5zAIVpmbB5OAomrT6pxSII=;
        b=TKBV0bltDmspAG7iSS+w1kD5wxJgo/T5eqP1+o0DirQ4d+PtiBVJ23fu5RT6+Q+ZtK
         qob4kY8VWuAPkFvSBL7Xmbfj4mBN+amw+IturHQgPDbp2keJzN8LQazsucF5DOsAo3Jh
         3OnzuSoISo/USTyrnXfz/TR7m10c7y/zXPht4nx4ZT6bICj3xOJ7hDF0fOlmbjedh9X0
         YXhkhjBpvzpqnmOL+DPk9LI9g9WP1yJBuU0wEsvO6HBX4TPtbF2tTu4td1tV0IAtYZNZ
         7yDKrL1nNiqjdbyBh8NvvRTAtkhB7YQrSwzXYrplOz7fOcvCB8VFIpAqwy7KdZPq7LGm
         1Kng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732621769; x=1733226569;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J0808uU3LOgHtR0xR0Opk5zAIVpmbB5OAomrT6pxSII=;
        b=wnXsxmZjLp/KMzJ9cihQBh44TsGZCu2ijX/aQ7AWgsME8NTb0rEIpmVvmUdv9BhZBn
         gnNKFtpT4Eqpqhn+NMT1quADN4x8EV2jc7GarKq9QPOQuGbjdaxcqv3aX347vX+NLWaa
         YnaxeSBlYiKiwPwl9QZrV0JxW+0hiadPrj+8iLUoxx9xH3jgDUFfqzWmyktc2dwmZwJR
         REgP4RpKbng6AZ2JH6e5/nQ0knZWMtQBmtA0ucBc9DN3poPoFiJT/L+RcoMDkhVKbB4q
         BO8U0WdIpFfC2AsIKqZx33/2ktAi9Dij4yQ9bZ3IG9SnHDjfQB5VzeWKwmysCQxYgD39
         ZANA==
X-Forwarded-Encrypted: i=1; AJvYcCUs2ukDtuvOGN6+onRjsiaS6qqbPUZPvI+UrVo5qiDW5i56/nhypD+9R3jv9HZ+FofQ3IsBwLTblQFI@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1QtfrWGlrgqOBnf5vC3WcrhRew2jg+wu35Oqku3onsNXy7k+c
	gNc4zftaK15ISP7tE7TfH6YLll0Hk0joOD35yYf4MeyaoWwvyhnQ8tut0p0hfQY=
X-Gm-Gg: ASbGncsWtBjczchNDbvfdp/xKC6jAZhKiThFYp6I4I/zQ5skABEBCw7dFJb9t/S72+U
	koouUVsOUHkhaW8UEgdqX4T+M8InuGI41vR3rVhnfHy0eoAPLHDDoWdZKyJqRS73x5KEFHsgAeK
	PWTyEsdjQIT5dBvFgkquc4++QF2q5Mm7I7b3rXUcQgkdYItqCSvII5OjxF2x+2f/TC9Kl9Ve1XD
	zRYxZJsSfNICmoza/BWqbdi83jBg2x18Y+pLCr6jkJtIs0TqNVaalWE9mHdmQgqFVOIp+JDVDk9
	W3BtLxyJxCn9N5c0HAOuzUtEqngx2w==
X-Google-Smtp-Source: AGHT+IEU7idZYH7tdB8+JrK/IxXdtauSD0OGplAdnzOdck3dh+fzMnfl7OJHmYrF/am6b8KRWcNcwg==
X-Received: by 2002:a05:651c:984:b0:2ff:c6cb:60ba with SMTP id 38308e7fff4ca-2ffc6cb62c8mr38677691fa.34.1732621769421;
        Tue, 26 Nov 2024 03:49:29 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ffa4d16f9bsm19527931fa.19.2024.11.26.03.49.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2024 03:49:28 -0800 (PST)
Date: Tue, 26 Nov 2024 13:49:26 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sm8550: Add 'global' interrupt to
 the PCIe RC nodes
Message-ID: <f2tmdxywunlvyzr22f4uxh7yzha4i7azls6ssw6s3x32w37svl@f6pxwi55y7tt>
References: <20241126-topic-sm8x50-pcie-global-irq-v1-0-4049cfccd073@linaro.org>
 <20241126-topic-sm8x50-pcie-global-irq-v1-2-4049cfccd073@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241126-topic-sm8x50-pcie-global-irq-v1-2-4049cfccd073@linaro.org>

On Tue, Nov 26, 2024 at 11:22:50AM +0100, Neil Armstrong wrote:
> Qcom PCIe RC controllers are capable of generating 'global' SPI interrupt
> to the host CPUs. This interrupt can be used by the device driver to
> identify events such as PCIe link specific events, safety events, etc...
> 
> Hence, add it to the PCIe RC node along with the existing MSI interrupts.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8550.dtsi | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

