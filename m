Return-Path: <devicetree+bounces-80281-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 561D5918504
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 16:57:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BDBE7B22146
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 14:53:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51925181CF3;
	Wed, 26 Jun 2024 14:53:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="cTSGVcDo"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2C3F1755A
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 14:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719413606; cv=none; b=g0NnZPjgOVm6KmDQimTz+vDV4jbykP+aWViPEpoa5jdEn4ll58/ugNFCjRTqiLT+gxBDVLwvwhr5Y/Svx58uY5Hy+YeluFam6TWzQDnEgynQR5PBV5JGEfDjOFTyzj6MpLwFaC+iAKrTjUxBhDwB0T5MTKENT8lUgLbTiIeJMBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719413606; c=relaxed/simple;
	bh=hyNxaFzPXWFBRg+/6WUFhFSPBWdIIx4INvH/NCiLLHo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Fk9A2KQfUkPsREB5k7gavfUzRtYVgkHR8CUv1MspuWN0HT1gR31WlDG6Qx/o+qp6Jvy1VHbcS+VoIUTAHLs/VBlsgDTJOcyeAesKvGv0HPm32tW9eOXETfa3nNNYsBZS9bksTeEyVm8HSCmaFBi/+ddmGeMubgpx93f3G3xtLmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=cTSGVcDo; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1719413602;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=YrKnBGUsXzxltAg01s3o4kyy9jXBJCa6pgwUhoUuJvY=;
	b=cTSGVcDodSCMAccboGHIlvqPYL6DVyPZFkLRgCF5OWUr8oUcTV9+vRElREwl/JIXtZMJYn
	zdYxgo3bZmWLiitOjLKxRgnjj7lwJDCag220EjT/hU1dM1q0wqTbd13DukARV36gah0aTn
	DfhINmRyIJF+PdB1zCBcKFqkW6Bknlw=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-553-Bz2vMWPtMFKUZR5jdfZ5wg-1; Wed, 26 Jun 2024 10:53:21 -0400
X-MC-Unique: Bz2vMWPtMFKUZR5jdfZ5wg-1
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-79d5509f112so83824285a.3
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 07:53:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719413600; x=1720018400;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YrKnBGUsXzxltAg01s3o4kyy9jXBJCa6pgwUhoUuJvY=;
        b=aQw20VdxC629jrTSKKh2KLJBlbzBQvvqCQ9E+HMo/j6okO4DU+s0Y+uJmXLUkU4MOm
         J9Neo04h9UdBWScfRs7KZE+nhM6s8xVYEWaMrn39Lvjfx//qL0blQr+GggAVWouXeTOS
         A+ivmFDpR/K0YhLhEGhQmwVh/QY1IBIzQa7CxYvckMmF9dU/T/IHuOkcWdihGOHywMY9
         5V7c+c44vquziWjSIf/xcAJs0L1Q8y+bKw1Ru8NX1VEH/KqrxgT6nDsbvj/vHKqRLTwH
         v8p/xiL85I8auVAQa5vSamiop3fVTc4XfAA8454RiSlOqjv5qE+FnONHN3RjWL1x1xHI
         3ELw==
X-Forwarded-Encrypted: i=1; AJvYcCUJFN/RMlegqwGQbBh8kz5uxbLuuYd673FzBdVcfl9dh57yhCqM858o7DAxQwQ6zHQCI8+vnEGP6vGw1qIVxO1zzYSubgwekD35WQ==
X-Gm-Message-State: AOJu0YxIDd21e0VetS8r9yY5Tur+yV/7U0JUFlXHn7f311ljg5bd3xII
	dL3CYT2PBDirLDXdL8vdEO8r6YMNS7VK8I5U5AwLLW3/zdyQ7vpvW38LXhKRlRk057146yUlsjk
	/7xUHwtclrItns5PtvX3BFwlLG+qI5wK3ipnPZT6Fxg0pJ+k5//R4lZP/xlA=
X-Received: by 2002:a05:620a:1998:b0:79d:5414:68d2 with SMTP id af79cd13be357-79d54146b12mr159312285a.44.1719413599695;
        Wed, 26 Jun 2024 07:53:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE7rWL9/p+Lnv9AbO8zaoMmKP9NuiF/Sz5Kmi1mA7Vt5rgp/9627GpolyqUJFKWM3RKg3m/gg==
X-Received: by 2002:a05:620a:1998:b0:79d:5414:68d2 with SMTP id af79cd13be357-79d54146b12mr159308585a.44.1719413599165;
        Wed, 26 Jun 2024 07:53:19 -0700 (PDT)
Received: from x1gen2nano ([2600:1700:1ff0:d0e0::f])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-79bce89a5d5sm505133885a.19.2024.06.26.07.53.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 07:53:18 -0700 (PDT)
Date: Wed, 26 Jun 2024 09:53:16 -0500
From: Andrew Halaney <ahalaney@redhat.com>
To: Sagar Cheluvegowda <quic_scheluve@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Jose Abreu <joabreu@synopsys.com>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bhupesh Sharma <bhupesh.sharma@linaro.org>, kernel@quicinc.com, 
	Andrew Lunn <andrew@lunn.ch>, linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: net: qcom: ethernet: Add
 interconnect properties
Message-ID: <q2ou73goc2pgrmx7xul4z7zrqo4zylh3nd2ldxw5vnz2z4fnkf@axbse4awc6lf>
References: <20240625-icc_bw_voting_from_ethqos-v2-0-eaa7cf9060f0@quicinc.com>
 <20240625-icc_bw_voting_from_ethqos-v2-1-eaa7cf9060f0@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240625-icc_bw_voting_from_ethqos-v2-1-eaa7cf9060f0@quicinc.com>

On Tue, Jun 25, 2024 at 04:49:28PM GMT, Sagar Cheluvegowda wrote:
> Add documentation for the interconnect and interconnect-names
> properties required when voting for AHB and AXI buses.
> 
> Suggested-by: Andrew Halaney <ahalaney@redhat.com>
> Signed-off-by: Sagar Cheluvegowda <quic_scheluve@quicinc.com>
> ---
>  Documentation/devicetree/bindings/net/qcom,ethqos.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/net/qcom,ethqos.yaml b/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
> index 6672327358bc..b7e2644bfb18 100644
> --- a/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
> +++ b/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
> @@ -63,6 +63,14 @@ properties:
>  

Does it make sense to make these changes in snps,dwmac.yaml since you're
trying to do this generically for stmmac? I don't poke bindings super
often so might be a silly question, the inheritance of snps,dwmac.yaml
into the various platform specific bindings (qcom,ethqos.yaml) would
then let you define it once in the snps,dwmac.yaml right?

>    dma-coherent: true
>  
> +  interconnects:
> +    maxItems: 2
> +
> +  interconnect-names:
> +    items:
> +      - const: axi
> +      - const: ahb

Sorry to bikeshed, and with Krzysztof's review on this already its
probably unnecessary, but would names like cpu-mac and mac-mem be
more generic / appropriate? I see that sort of convention a lot in the
other bindings, and to me those read really well and are understandable.


