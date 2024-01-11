Return-Path: <devicetree+bounces-31390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F0FD882B026
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 15:03:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5D346B20CAB
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 14:03:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9FA83AC10;
	Thu, 11 Jan 2024 14:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="dUKDcm1U"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50AC03C097
	for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 14:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1704981772;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=w2oiHnQxHwv2fW/BCjTbKgiDncxKv4ZkLpJzyQn0qCM=;
	b=dUKDcm1UmGMVe8eDb5zgi6nEdSfZc75jj/xpbZW4ahMQiXwFdOVTqFNp4wBp0gZx+nlGDn
	T204w87EePz9U022ovFc1Z7M+Uqf+XmkjJ++7v8H4SF3hUTyzCBvtCS+GbPnVPZjoXt3Co
	OBuo8SzKWm4YHkNwBAzLwTsKsTHCH3M=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-353-XW0QDgvRPkyV9cHSd_UwyA-1; Thu, 11 Jan 2024 09:02:46 -0500
X-MC-Unique: XW0QDgvRPkyV9cHSd_UwyA-1
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6800aa45af1so101346506d6.3
        for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 06:02:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704981764; x=1705586564;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w2oiHnQxHwv2fW/BCjTbKgiDncxKv4ZkLpJzyQn0qCM=;
        b=I9Vs/aVsJr4y9cc3R5vfq2xeI1xAIrCQMbhC2Z7pFl5IKF00EP/5QMOO4NH8vnuQbf
         hCun3p695mj6nQrmLDZk6blks0b1X/Yj4B+4fvccymGY03qMZ0Zor3gSG7LxgBmtqb7R
         jgRxLhFLAv26Rnq+v29fUy0JOYXXRT6Dxmpn60FwYHWxbc07RvY0bZ9TulD41InIMb+7
         lK9vaU5Q06mlzxgE2KUfB+CsUpkaw5ixdcxH3dEDh3mmgHNSKMSm58xilbBxdPud+yzR
         m3ZiV2N1YlqQV1zEsoMGwkwh/BghSXwrBpXDPI4yA9oH4WciJglByFIQ3LcRulyAV365
         6JZA==
X-Gm-Message-State: AOJu0Yw1cjljfhGKoljwcHSM3vKXrCEOT6v6ePlPgHpOTVukqXZlcNx9
	lAQ3b1T+kmIssfPyr6TQqH1OT/BQ8TEOkgZEqtierZMmEsVCQ/evPQD5y33EnHsFD1bK+QpbxPx
	MZqsccSEd2R7vtB9RRESw/m4UiwTi5jDQWKr15A==
X-Received: by 2002:ac8:5841:0:b0:428:318f:e484 with SMTP id h1-20020ac85841000000b00428318fe484mr719673qth.108.1704981764094;
        Thu, 11 Jan 2024 06:02:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEtflAELoemq0nV2Xk8B+wSndOSPvHCcElj4MrMOV9ESDLlKwYt2d36MOLJ5nZhJxTYASh33A==
X-Received: by 2002:ac8:5841:0:b0:428:318f:e484 with SMTP id h1-20020ac85841000000b00428318fe484mr719653qth.108.1704981763747;
        Thu, 11 Jan 2024 06:02:43 -0800 (PST)
Received: from x1 (c-24-2-114-156.hsd1.pa.comcast.net. [24.2.114.156])
        by smtp.gmail.com with ESMTPSA id cg5-20020a05622a408500b00429ab4df47csm451462qtb.17.2024.01.11.06.02.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jan 2024 06:02:42 -0800 (PST)
Date: Thu, 11 Jan 2024 09:02:41 -0500
From: Brian Masney <bmasney@redhat.com>
To: Lucas Karpinski <lkarpins@redhat.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: qcom: sa8540p-ride: disable pcie2a node
Message-ID: <ZZ_1ARhDxYNk7Gt2@x1>
References: <qcoqksikfvdqxk6stezbzc7l2br37ccgqswztzqejmhrkhbrwt@ta4npsm35mqk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <qcoqksikfvdqxk6stezbzc7l2br37ccgqswztzqejmhrkhbrwt@ta4npsm35mqk>
User-Agent: Mutt/2.2.10 (2023-03-25)

On Tue, Jan 09, 2024 at 10:20:50AM -0500, Lucas Karpinski wrote:
> pcie2a and pcie3a both cause interrupt storms to occur. However, when
> both are enabled simultaneously, the two combined interrupt storms will
> lead to rcu stalls. Red Hat is the only company still using this board
> and since we still need pcie3a, just disable pcie2a.
> 
> Signed-off-by: Lucas Karpinski <lkarpins@redhat.com>

Reviewed-by: Brian Masney <bmasney@redhat.com>

To elaborate further: Leaving both pcie2a and pcie3a enabled will lead
to rcu stalls and the board fails to boot when both are enabled. We
have the latest firmware that we've been able to get from QC.
Disabling one of the pcie nodes works around the boot issue. There's
nothing interesting on pcie2a on the development board, and pcie3a is
enabled because it has 10GB ethernet that works upstream.

The interrupt storm on pcie3a can still occur on this platform, however
that's a separate issue.

Brian


