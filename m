Return-Path: <devicetree+bounces-150421-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BA698A421CA
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 14:48:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DD4D23B0D02
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 13:42:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0524D23BCE4;
	Mon, 24 Feb 2025 13:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V2CNkdl/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CD63FBB3
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 13:42:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740404573; cv=none; b=uj4pxAIJhsgjec84JQnB2yCnSc/yVZDY/I9e6xjNtV9CggI27BYD6IjF2k1GSpJGEJdt3zhsHzMho4Ki0mxx35jtvMo/BB4IzKGje8tkovos3B9dkUpoCXuKAk5LrjUssYvDrhUyEbn7Ag4wKrg19gc34Rd/n8+L1rSgABuu/xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740404573; c=relaxed/simple;
	bh=5mhBn5JOZq/Sr6VtMa/3D4upNLR32dDMAVUAlYfycnc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Wv4klxK3csjEKwKiSzbY+utCX4XGyc/gw/j2Eby7NvHjPPJGuNX/VQ8IlyTIoe6by09qoFztORbRqHhSbOpcItM7wnzrqM62mrIUE3Bxpl+pNGYRIvW25yqHKiCUBZol5VP8LlimZgVhfoF7r1OCOKwJmwlOLTT5kZvbhJY5kTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V2CNkdl/; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-3098088c630so41057671fa.1
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 05:42:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740404570; x=1741009370; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=t7IyqSXfcAB07mb16t4JzcS21JNbeSpMHrVwyOTk5Cs=;
        b=V2CNkdl/JDPnhDZQ8jGtzdi8enIFoqaC5Jrlcj3awSqFVzAYaMROtONmV5o+sH+GHw
         mSIjYw01nDxCeRy/LHf0CJBZBkpMPqqL27DqAmwlxCkkU4NATIc62F+UMnAH3giisNPo
         1yhs/r/V5qg8hTvFovRBmDNdYqpy496IMP+9wRI2uhXwnVb6UqSetqBQXv77fBvD0VCI
         g7YPDKggblcOXM+B1Oau0+SqIcuscffqHk5GtCN9SK8+/gW+vWWQngRPXRDGG/fG6aUb
         l0lN7iuo9AQNqcvwSPzMy0QgP0e1elnS8PJvn4x5NANSNuhnLA0eSP79ixtksgNw30S9
         vGXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740404570; x=1741009370;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t7IyqSXfcAB07mb16t4JzcS21JNbeSpMHrVwyOTk5Cs=;
        b=KmLjgKWssPzbgFW2YMusxaw+qlRsbm/T8sZe4qU+vv3/mwtJNygDenHP0KV5Zvh+Ky
         fuAs4RsOtmPdiVT+wCzbpKZdLHh9D9zP1e74h56wbys9ZIE6V8fxpkQI6mirWxKSqjXw
         jpLYYXS/Wr3KjdR90YIGG1Lx3EhCtV7ARxm2GhKfSzkda2YJJq8wpAUb4Bg6W3+PS0TJ
         AR39d7kx+SJOfZHqrDugs53QGySz33ZlS2fDE9ff9erg8Cu+xKAW46lW/KfM0Va2SsBd
         /QkVl9WaHItCW+p2+6CWJ1uQWArv/1Mous5bb0x+mfeaTf9yqoB9nntnX9ZsPyiUx0K4
         pSRw==
X-Forwarded-Encrypted: i=1; AJvYcCXfNvZOwLEP17mOsiJj0q6Hp8JGXtiDdEC/KGDAR0NW7BQabmC6SJJlL5yrwFKmQ+8zVs6uOn6wroti@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/NCuo9C93Xrfbq/KvS4ge76IErW7OAq3w+LbksH/KOmFEOc3z
	v/JT6kPQ/JIaUB1/ssSeLmNWs+1xJD4YO6Jvr8cI0tfEt28dnbuo2KRtva9W2J8=
X-Gm-Gg: ASbGncs0IlJvtX1tRplpJJ3bLauxLYmYTT96uY/pq7Wufn+n4Mv12o2ODe7bVnbVkkR
	Pb2Nc6rmXTQue1VSVttP7WQtUt+LabG05Oc5TGEozKQg0J1WteC3pazVHTI+r9bBRrARhrAruG9
	eT75ZXXVMoJkkdEtqd8xydUsYHupSs+85YGgL1iOI4IOe4D/CRmZ5IL2yGuSFmJ+bxs4JBjzSWD
	eIlABnYp8FJ5l+AceppaU0pRoW4oZk9VB/ghnwW3doltrOd+oQxf+aVyX/E6u9Qv6mgmHvtyiHA
	TzQJdbpSjVi2mB7gAnGYJpzp5R5ItHY3bxrKU2SGbENJ4IrqsSTN9yFNCIpMtvo2nD9W+Qv8HqK
	h4/P/5Q==
X-Google-Smtp-Source: AGHT+IE48juDZvdR8qHX9mBe7zZT7U1to+JJITpRs1tHbAe0HEtUtfoc3mNnWKiU+vjpJzPigmS6FQ==
X-Received: by 2002:a2e:9f4f:0:b0:302:1c90:58de with SMTP id 38308e7fff4ca-30a59993eb2mr42883071fa.33.1740404570264;
        Mon, 24 Feb 2025 05:42:50 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3091029b75esm36566981fa.103.2025.02.24.05.42.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2025 05:42:49 -0800 (PST)
Date: Mon, 24 Feb 2025 15:42:47 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: George Moussalem <george.moussalem@outlook.com>, 
	linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	amitk@kernel.org, thara.gopinath@gmail.com, robh@kernel.org, krzk+dt@kernel.org, 
	quic_srichara@quicinc.com, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v6 1/5] dt-bindings: nvmem: Add compatible for IPQ5018
Message-ID: <zygiknq3pldkcdonekzamn2uprnjyc5dip57i75p7uahftekxr@2lqgo3wa6zhf>
References: <20250224061224.3342-1-george.moussalem@outlook.com>
 <DS7PR19MB8883591F0D2E21E62025D2D69DC02@DS7PR19MB8883.namprd19.prod.outlook.com>
 <2fcb52a3-7ef2-465f-b460-2f7b565a188e@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2fcb52a3-7ef2-465f-b460-2f7b565a188e@kernel.org>

On Mon, Feb 24, 2025 at 10:19:35AM +0100, Krzysztof Kozlowski wrote:
> On 24/02/2025 07:12, George Moussalem wrote:
> > From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> > 
> > Document the QFPROM block found on IPQ5018
> > 
> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> > Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> 
> You can send the patches to yourself and see whether they are properly
> threaded.

I don't think outlook world understands the concept of threading.

-- 
With best wishes
Dmitry

