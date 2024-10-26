Return-Path: <devicetree+bounces-115983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4669B192E
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2024 17:35:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D719D1F22039
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2024 15:35:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD93413B5A9;
	Sat, 26 Oct 2024 15:35:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NwCpPHRx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7361269959
	for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 15:35:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729956918; cv=none; b=WEZRbmMS3bYZTGbwn2jJjxs/Nm/JngR9/XBFOmaRkz6xfcI7VDST7rL2t9CayfMAlU1HahrqITw3eEOqSugmjUROu7gAMt3pfCyJKvxzI3/R4q+44aFzTzOCDIWwz6fzkJkG724Fi/JFDyJLPBoTNESdCOIZF+Rb6l5sgeLMRQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729956918; c=relaxed/simple;
	bh=Llx+XPRJNrysBhF1LvN8whfiHHKOOZIgjA6bxQ7XJKc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PUpzEWX6T8YFQRScwgXBpx0DnCIl7mabGIGLRpZzhsdNmsjBAC15InZf2d+VOVBL4dBWZBvRT2qbUYzoNG1dl/QheF7QSmlUk5OpNBB8eTWrJIZNZINuLxLIIzIMrgIkAe3Cd+nGWcVZ+fB5hotLfvpa6w0rDVAGNaLLfB14Aj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NwCpPHRx; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-539f2b95775so3399587e87.1
        for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 08:35:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729956914; x=1730561714; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rt/tYXWIIxsry9kkJRH0JYnpXHyALFWOiwFr/jSdDb0=;
        b=NwCpPHRxEeVZKoVB5Vu/AS9iDztr0i4hl5tbmEOIoBtPw8GuZL8evHWjHNrCSCYeQl
         D34knSwnNJkyHA5oQPPIEbJvCp4hBlaBdWAJBjM0Y/nuD+Z3jo/gPySfhLntPVeAGdRK
         k+UDad4pQ31RTtf3KAbCo2kzRN/pxyLrHnW/s9LQt4A2AfiXthWTaFYskJWWBStxGf2x
         CsMrc+872BQeLlkjxs8beRwPOtjQtkjtDQt9QDR7e+TWUwfwICnj3PkgjRDalsz7Wma0
         ZTUX8n+MPerfR6tdEsmkKSiLJJCPLBiD5LC+PYDzKaRkiZTAc2JRKisERqcpk0iW6hPX
         djqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729956914; x=1730561714;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rt/tYXWIIxsry9kkJRH0JYnpXHyALFWOiwFr/jSdDb0=;
        b=J5gIzFfp5CuJpEkVnR+sq7V95LwanVlXmPmTNgHIYBzADYnyYpT4SJjm8703NW6x6c
         Xrwt33A7KrMEwn2eaZgioG4BB6AUqYIL9GMPcg3oU5Q7imCgOTBp8kInEphTOAm8tu+s
         eEkxpLItk2pcE3a7Swsj6HE3N1PKcwIxFO4/CfChbbAJT1c70ksbDwyM8SDEiAWswbAb
         zFUB+MjXCyzAXhzoNTHsBsKT3wHV/TxEsqiwFuL1mTbJncqENepmF5fEH5HuQFGZjm3k
         MrRtGMEvEWMlUoBS/gD5Yx11doD3dpp8iiES1OE8MuZJc7qmQF4vYecdkuydjEiE8UXi
         3fXg==
X-Forwarded-Encrypted: i=1; AJvYcCX5uhNTTeylFmCQdacyBmBMn12cwtYGwNyLgHdtxYoHKCJusuw+bcGpKwZduWCDY5uSr/A0ua4BCxh0@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2PinoMmtLDhmqSOiwUOmRfADBQGPTVBJDiIRmI9ehsb4LtL48
	sdxsSo/cw+Wjd9Xups9DAE10ELYJBJLp4BhfGrqW6bfScFtQ960FxraLGHVQiok=
X-Google-Smtp-Source: AGHT+IFG/neLAN94me4zADqziHHaojntKbMA0mWRCGaXwd03yz3ZtNdTkjXVSu3Tu/T9HlUdHdP88Q==
X-Received: by 2002:a05:6512:1108:b0:53b:1f59:dc59 with SMTP id 2adb3069b0e04-53b348bac0cmr2442766e87.6.1729956914370;
        Sat, 26 Oct 2024 08:35:14 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53b2e10a700sm534883e87.10.2024.10.26.08.35.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Oct 2024 08:35:13 -0700 (PDT)
Date: Sat, 26 Oct 2024 18:35:12 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Sibi Sankar <quic_sibis@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V2 3/3] interconnect: qcom: Add EPSS L3 support on SA8775P
Message-ID: <bhnh2xcptccepv2sdyowmre6tm26klnfk5gunmy4lvc76pcfr6@lt7myqju77d6>
References: <20241026123058.28258-1-quic_rlaggysh@quicinc.com>
 <20241026123058.28258-4-quic_rlaggysh@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241026123058.28258-4-quic_rlaggysh@quicinc.com>

On Sat, Oct 26, 2024 at 12:30:58PM +0000, Raviteja Laggyshetty wrote:
> Add Epoch Subsystem (EPSS) L3 interconnect provider support on
> SA8775P SoCs.

Please describe the reason for your changes. In its current form the
patch doesn't provide enough details.

Moreover I don't think it's a correct solution. Using a single ID space
for an interconnects doesn't really scale. In the longer term we should
follow CCF approach and switch to using the icc_node pointers when they
are known.

> 
> Signed-off-by: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
> ---
>  drivers/interconnect/qcom/osm-l3.c | 86 ++++++++++++++++++++++--------
>  1 file changed, 64 insertions(+), 22 deletions(-)
> 

-- 
With best wishes
Dmitry

