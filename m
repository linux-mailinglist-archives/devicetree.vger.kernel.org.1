Return-Path: <devicetree+bounces-138243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C6DA0C3C9
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 22:32:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ADACE1889015
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 21:33:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 558511D318B;
	Mon, 13 Jan 2025 21:32:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cz010awB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 853EB1C8FD4
	for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 21:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736803975; cv=none; b=ToL0kK1Tcq5x7IgBJ59OWytOpV6NfqKdSz/B0ihZN3LrN5Z0J6ewhBUpwupJeWljEtJGV+9IB3VdTt692+j5NdKf3t253mnC6JAxhO9h/2COj/0JUArvZr8GxM1V0MpesAjlSOJN5njlqHi9kbAsaKsIo/yeATWa3jPGfBD3688=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736803975; c=relaxed/simple;
	bh=g591DPYKopCq1dMWAJTx3VW3pkQl6WXRGIxhRkK/soo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l5irJZDUID3+TCN2WiwJe8dQzpGiUo5w0MX/W2ASZZrb2wb1OrpvrKI0WpWjxKT8c2VvlaHeiu4UreBfYI38tfXp915fU6fgQBcwxQBv7jN/WLKB6NhM10ATtdiCsnIvClzslJzB7AKR2EaFNaQHKQy5cIAVcTWPwx0JPs5+g6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cz010awB; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-53e3a37ae07so4804843e87.3
        for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 13:32:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736803972; x=1737408772; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZVgAsWOA6HjVMer1JSm9/DzX0hKgr6OTiUGNqroh7sU=;
        b=cz010awBcCIj23pJd3pp01w9YPGUAERZCRR5i1ZZQR9MJG/wOXMY4aKJfVvO6lo3Ue
         zhrU9917P32T+dWffqAAQ5kY9Gbvf3UM/IcSSvzewKprrjTgR4mNZP33FDgrhAwfUn9M
         2tlNyCNoaIWvQvVlEa0PyU9djAn/r6iqVP6fPKYqFpZWB+j9/3Jl2M23+Bw3roS9hTLC
         4bD3JYWr+sXYnG90uBLDn7SCA1Fc+f1QyQAwAK6Jg93i4aO8bF4JD8YpW9I3J17FVB2i
         DIfeVk+REWIZs5l4Xi14vQ7CwvcG2qpZGAruj1IoxhUbZf94op5diG09c7aciEilX3x3
         e5Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736803972; x=1737408772;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZVgAsWOA6HjVMer1JSm9/DzX0hKgr6OTiUGNqroh7sU=;
        b=xHj2cqhl+uzS8dWxy0RLbagcVhgUxVtaEZyF9vhRtuu194o78Ghd9Em5DfoAkU0k4A
         pKk9tLiSMBTjR6piYDhQ7BWlOw4PEbizVYoLvDoU/T0c77YGCuPfzTFPHeKPFBc98a5v
         vgUNYVW51bf+HqsaHc4g3zlDmj1RefQbcJc1V90PC2dz4ApToYf2WsNUVcAe3BD+6CMV
         q0Jz3VSO/8Lfx2M8KiDrJaQeikejMV9j/Aovzq1Yy48RzK+BYhfOqLYhjV0+NoZXU2It
         np1RdPuMYHYAMYJbvOy+p1p1R6jz9Zw+cEcBlz72ZkqCpL4pjggSrZgCnftuuIaR6u39
         6eSA==
X-Forwarded-Encrypted: i=1; AJvYcCUCtlQ/UcWiEJ0KpIoqklnfZfu4hK2IGx0uHqIIm28+AviZ3pIIsP/2n3S5NrdsUvXnaZW8QqCoE0I+@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2nAAzLE8XnxEc4TwMzUYg2GnPH/GCqAbEIGkbCW2dpDpCRtLV
	tM8oZY1rWWwykuBDyVz5RAmwErQe2GXk3smNxcsLMTNm+nel+pLLr3/YqsSQpP8=
X-Gm-Gg: ASbGncu8HN0TrRJujDA/c1MehLxyawvQqq6w5TUErNEN8N43fqy7ZcLooQ6mswfh6fT
	mhTL1kJn+OmJy3FjLso5Kzb/FztREmlJLEGxKs9ughPP4PXhIAyQ4P8DGCSHvivaxTk61SPAfm+
	j52rWc5m+NSL/CQftTpo3UXveSjV5L9BNyr6v47PljLhqYRdUfBZ00FG5XcDKrH82gc9t2s/7kT
	uo/YtgbQVBMY/MM2794G5Kis8LdEaaqTcmTjcgg2Hif86OnD+RB2FqIYk8wZtCFfH0duUumdlRd
	3ZBuE6ontWhG6RuSvQkNdLP3I3hQqmZ0OjOi
X-Google-Smtp-Source: AGHT+IF2qEXZCUr70iTwMnlwbJZPP11ezGTgEtdZTWC6niIH3IOmRhQ/2XsDXeWXWwYyVTx0ngbwqQ==
X-Received: by 2002:a05:6512:159b:b0:541:3587:9d45 with SMTP id 2adb3069b0e04-542845b1b7dmr5727211e87.4.1736803971682;
        Mon, 13 Jan 2025 13:32:51 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428bec20b8sm1477967e87.216.2025.01.13.13.32.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2025 13:32:50 -0800 (PST)
Date: Mon, 13 Jan 2025 23:32:47 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Pratyush Brahma <quic_pbrahma@quicinc.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: qcs9100: Update memory map
Message-ID: <ekynzvlwtoolitvuhkyulx5et5dqms6hsl4kcw3ed4ffjgwk7h@eeyiu7fg2eqr>
References: <20250113-sa8775p-iot-memory-map-v2-0-aa2bb544706e@quicinc.com>
 <20250113-sa8775p-iot-memory-map-v2-2-aa2bb544706e@quicinc.com>
 <5cd4e2aa-be24-4298-a23d-352e82e9c1e1@kernel.org>
 <d7d68648-6356-43da-b13a-1a6b2cf976de@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d7d68648-6356-43da-b13a-1a6b2cf976de@quicinc.com>

On Mon, Jan 13, 2025 at 06:08:26PM +0530, Pratyush Brahma wrote:
> 
> On 1/13/2025 5:50 PM, Krzysztof Kozlowski wrote:
> > On 13/01/2025 13:13, Pratyush Brahma wrote:
> > > Update the iot specific memory map for qcs9100* boards.
> > Why?
> > 
> > Every single time. Don't say what, we see it easily. Say why.
> I assumed incorrectly it would be perhaps enough to have mentioned
> this in patch 1 of this series and the cover letter, so didn't mention here.

You wrote it in the patch 1, so it covered SA8775P-Ride boards. This
patch concerns QCS9100 boards. So it is a completely separate topic.

> Can you please review the memory map changes in patch 1 as well?
> Once the strategy for the dts changes are baked in internally with the

Please. Please. s/internally/externally/. Start discussing things on the
MLs rather than baking the solution internally and then being surprised
when the bakery isn't being accepted by the community.

> current reviews, I will send out another series incorporating the comments
> with the memory map changes.
> > > Signed-off-by: Pratyush Brahma <quic_pbrahma@quicinc.com>
> > > ---
> > >   arch/arm64/boot/dts/qcom/qcs9100-ride-r3.dts | 2 ++
> > >   arch/arm64/boot/dts/qcom/qcs9100-ride.dts    | 2 ++
> > >   2 files changed, 4 insertions(+)
> > > 
> > Best regards,
> > Krzysztof
> 
> -- 
> Thanks and Regards
> Pratyush Brahma
> 

-- 
With best wishes
Dmitry

