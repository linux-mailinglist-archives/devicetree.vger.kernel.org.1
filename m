Return-Path: <devicetree+bounces-216311-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 72712B5456A
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 10:31:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0C5D37A2068
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 08:29:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBED526AA93;
	Fri, 12 Sep 2025 08:31:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CK7g8QAB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com [209.85.218.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 088F0238142
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 08:31:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757665889; cv=none; b=HYXKNZNkvyP+14gYZwC0PhnaYqQBXVdeqk4NEvsbmm/g2M6JaGMkqFBqO3hqeaY5WJP0gs3thfWbyqdIDVPXBYHEAZA9YOX69S3v/O91FJG18f5mWWUhHgV6yV2Wl3NbP72jYoTV8KJesGt2FTafNdjjco6MqMgWU989ksvFM9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757665889; c=relaxed/simple;
	bh=qxDPXfu0D2buR+RRbIJYhumpNTYZbGUZbNv5xeDdGtU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IHct6yZzT9YODCieViKk0ar7ab5UImL6+qVdfV8VNLjQYR++Kmssu1t1OV5LeQaZ0HYvVIZgY4sBJLBAECBCczxrQSdi/IsaDh0zor5WrVYsgF8RTy3JPlQ6QCsDG08YCyYv93mQnjc9liy8MPGy1UVZ+tzv/1Cf8MYWLpI3iVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CK7g8QAB; arc=none smtp.client-ip=209.85.218.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f67.google.com with SMTP id a640c23a62f3a-b07c38680b3so87748366b.1
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 01:31:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757665886; x=1758270686; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ppyqoh+Iw0PqJAwUNY4Ho0HDTTkAPt60vzkSPtE9aMY=;
        b=CK7g8QABQj2cvFfH+iBCciCe6r77uFwU/Ta/PYwD0y0dFTYaAio6PDdAAsve5zjkWq
         hwlTvm2RgPmK1BrcSHJCPV7JCadzMwtYGLhrrSf4bFI14MGAL6kUIk2Wt5Qtx6FgtOJN
         algt32Q4GwwvdUqCIn0tzIcC+Ch6v1Pm7txApJjnaLfb7nmryGgRzpGwHOondEIy06sf
         gm6HTpkgWVVKbceJvEH56LOYZZknT8xgeUn2U5L0yYjur/UrhMfGpESFH8fJ3eflwZmb
         XIqi2z5uOCUiFq8NGxJLU8jkHuy1eLunaVc+vc8y2+oMgu6xOXYynC5XZkT8bDQW0pQP
         7pwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757665886; x=1758270686;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ppyqoh+Iw0PqJAwUNY4Ho0HDTTkAPt60vzkSPtE9aMY=;
        b=tvRvVrDjWXwunGZM7GpjUR5nGO6xKdO6D2AL09llROLq4yDWym3B740BYWvIF61fBx
         7gwpkB+c9I/ymUZ0GoYNwsao9WejYnsn/Hp9m2DLWHFKYgIKmbiL/lDh/MzJp+XhlBVD
         Cd04Uu89t/KdQ4lpx5KQFf29yziq6WT9OYEtB+eaY/8nIAlSB/49Ia9uC7428RR+MFHC
         G3l3cyxjhK8gh8lm5v9pm8zkkCvkxe9PxZhp75/gwg+JqDG2Yuth9LFhdibySkORBz3j
         TT/9AUn1F63lTmjOVS5HekpBHcInjZr91VJ8nn2LwkXDg9gHX5vBJtNFQlwHGn5kjzfV
         fnnQ==
X-Forwarded-Encrypted: i=1; AJvYcCUmEWUCmjnNGRpeyzqm78JJrDEe8MeVEMYZAPTTLrUa7GPHU+2xygUe0fY+A7KWqYR9d6Y6ZQZCwFAU@vger.kernel.org
X-Gm-Message-State: AOJu0YyKFQgTz9pHRvaMXzpQbVNFPAfPg1RaaiggmofuHXeGNw0WedjF
	MzEeAvqEKOmZ4VOt0qdqoG933/TcEOmGcfbyl0XAypMXDQ9lNs615hFlt3WV5+cKX9k=
X-Gm-Gg: ASbGncuaSeC0ZflbNj+YvgSVgSyt+dY+AUG2qhNhsLJ6743eyJXb2Sc6h4D7g2dUX2y
	pDEUO91lfkxHaXxnbndG8fLBCC8BlBXETFuOhMbuv6NVG9VvWYiM6LlEaxbwwrrgXrvXGnTO+xD
	4n1lKcA57cfN2GKrSLaMS0QIuf43yGC9Yst0ixIL6vAik0sA8DD0SIgMBAptvqGnaDecmjW2lQO
	0b2+48Pv7vEb6xZocjCDbTEVL1ZUohPViAJ6QAEka34rSCWrLd5LlXnmOlz7mRUXnhg/oz8qnoJ
	0EsW9hLMZomQ8cPiU2tfeQJCp3Wsgmf/P/MTAWR9XZzCxnNveHSZixJUOaN32NGaaewNze9HbuR
	bJAv/NHwscApHxF9vUtWNYVEzBTLbZZ5pD2Zb/79Rv5g=
X-Google-Smtp-Source: AGHT+IGK4F+WV3rm3atyzmeXXAtBgSxVX6KmGkgnNVbx+PqUaJlvPMOJRphX7MOVOAdtjlZGKPWKlw==
X-Received: by 2002:a17:906:9f84:b0:b04:ba4:8610 with SMTP id a640c23a62f3a-b07c3ab96damr205770166b.62.1757665886221;
        Fri, 12 Sep 2025 01:31:26 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff21:30:5fc2:ee41:2050:2d49])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b32f20dcsm318941966b.90.2025.09.12.01.31.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 01:31:25 -0700 (PDT)
Date: Fri, 12 Sep 2025 10:31:21 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
	Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 1/4] arm64: dts: qcom: x1e80100: Add IRIS video codec
Message-ID: <aMPaWSN8EXCEOuoz@linaro.org>
References: <20250911-x1e-iris-dt-v1-0-63caf0fd202c@linaro.org>
 <20250911-x1e-iris-dt-v1-1-63caf0fd202c@linaro.org>
 <1beb1e15-cafd-408a-96bf-7f749b3499fd@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1beb1e15-cafd-408a-96bf-7f749b3499fd@kernel.org>

On Fri, Sep 12, 2025 at 09:23:45AM +0200, Krzysztof Kozlowski wrote:
> On 11/09/2025 20:38, Stephan Gerhold wrote:
> > Add the IRIS video codec to accelerate video decoding/encoding. Copied
> > mostly from sm8550.dtsi, only the opp-table is slightly different for X1E.
> > For opp-240000000, we need to vote for a higher OPP on one of the power
> > domains, because the voltage requirements for the PLL and the derived
> > clocks differ (sm8550.dtsi has the same).
> > 
> > Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> > ---
> >  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 87 ++++++++++++++++++++++++++++++++++
> >  1 file changed, 87 insertions(+)
> 
> Feels like duplicating this:
> 
> https://lore.kernel.org/all/20250910-hamoa_initial-v11-2-38ed7f2015f7@oss.qualcomm.com/
> 

Oh, yeah you're right. I haven't looked at that patch series for a while
because it went through so many revisions. Wouldn't have expected to
find that patch in there, especially without an indication in the cover
title...

But we can keep this short: The opp-table in that patch is wrong, they
don't have the correct required-opps for opp-240000000 like I described
in the commit message above. They could have easily known that if they
had asked the video team internally for review, because we had a pretty
long discussion with them if this is also needed for X1E. :-(

I'll comment there.

Thanks,
Stephan

