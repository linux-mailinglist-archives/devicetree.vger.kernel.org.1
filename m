Return-Path: <devicetree+bounces-214230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B19CB48757
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 10:37:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3E513188495C
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 08:37:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18F72299920;
	Mon,  8 Sep 2025 08:37:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yfi6tqBs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484381F8EEC
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 08:37:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757320624; cv=none; b=p/cXqqDyIoIXEoFx4QLKg3gEUqNjuh12dl3zRILCFAXtvi4G5qLS4mL40l1m9cT1m7mkmCT6Yam8cHZXnTvyHXM7enQhMn9AcBsL8GngyNJyrpmXoOUkcqOt28ZiRnvUXM9XV5fPqp88d5rjwpe6gjOXGnM+D7IE+VI1UdW3sXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757320624; c=relaxed/simple;
	bh=NXnb+PUluiL2AhSnB1IAsaQbX54JUl7zDPq2/38XIo0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bxrzz8iR2c5ZZvOW6SvPtpoL47/cst+80wIcPiDisaYI2IMHCA9KsL3kH+HuPK/rxZszJyz2gNrPic1Dvfh5lcJZx0UbNXMRfz4aULBRsWnblZgA9lDFTQZQDP194d0vnF07dZfY6j2WogsXuWOXUWMcD7xwEQ+MUTls2OotwIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yfi6tqBs; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b00a9989633so778185466b.0
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 01:37:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757320620; x=1757925420; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1XH0JCQWRm8WTHxpKfgo5DMbnz5sypzW+t0+NXBLukE=;
        b=yfi6tqBsED38RP6WSV6B/vsZgWb3lTpkVDkhlkHtY3/Aukzy9aiJfNQZQYnXyHGWwX
         B3B8zwuMVePwtp083ErHO2y8MB/67OTBZJw5yfvge7XGw822vOzfq1Ey1d3Wgby6d01e
         1dfI22+DM6hAvxnrm9D8/rFfy18z1JNLuTDoVKq3AZAa9BF/kCsxQqYstTy0PSRIYQUy
         gzTSC2JuJvAyGsztx+/bQ2nyauQdl2+gQ6iAIkM3ew03ooWnHa9V3hlK2K1x+2mEaUj8
         lSs1EjIBXZJFH2HcNTfaFCtl7F/fQOdWbV7EG/H4PF2kQD2WcBbTg2IMjqov5kzfSwWq
         nsOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757320621; x=1757925421;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1XH0JCQWRm8WTHxpKfgo5DMbnz5sypzW+t0+NXBLukE=;
        b=B0Z1f0MaMqZ+GKcNZn7QWA34bTB4nbRRjpb04C+2qRdTsTb3wN6aMnsaQfNr0Wm5lm
         Lv3UVXSYbddxCkKYtOHGFj28SPQjGTDJ8fsgoh/5/GE4f2zIqKKVYb2KL+H9HybsdXYm
         BAl+E+vrAOIteXjh2iOmOuj68VSQXo+LrSfKLzQ1X13XfVu2JEd03EhFE6zrEW4J9jQv
         gx3N3Dy9papX7/wy1kqLaifAdyjWU4YiYl/MBqBeTSWziv782QlcsUJMsiks4rg8apno
         gIp2TA01ZtmSG99P89wOY/kxBwxsdrZ3Yw9MjgTTT8A0rtW1AuyqO7PqbM2kyN7uXLMg
         QiEA==
X-Forwarded-Encrypted: i=1; AJvYcCWCf+Lj665uNd6egZrAmZLd1Oy2NZduVumB+1GtWZrGN0KiPZJsv2+ZG5/p1bRv9luYqjCF6A5PYN1D@vger.kernel.org
X-Gm-Message-State: AOJu0YwjDo2VHvO0acZaGFNRcc6L3pHrBhjH03+2x+7I4fcZFDLT/Arl
	XNWNxQEvfM7HxvGJD3Wcj7egALz24U6DN5wkm+4mMPI+a8WYZDbASjvXPSAH8NNP5N8=
X-Gm-Gg: ASbGncvS2PrIafM2Yos2DtofQUcPyWwFfk5osB7cFNQpVXrdlIQuJEHQh4B8C/5dgfQ
	vZZTebHjdQp3lESj53grGnQGIiwCvYU6S2YIAenqH59S64ORseJOUb1JY6+jcT0ZeQo3hlEgn27
	qRstbxsGqRrdClKz7lN29E5r6FmxlGluNZromd+CDQMssQ3RzS5Csc7iro+7fxWSdyJgCkTGAnq
	ojcRbBkE5bLK1BGWps81Yjb/bcpZ4fk6fNstP8RPs9/TA7vk5hm0ogpE6OqlvUxU/hj3gX94+Q6
	c6uYARPiY3PqFHFHaw/mXI1qcI+dx8jlH9GKNygeL7/Y3a/8N2dBjn90cVz49RVpur1XC1rWzeC
	rTqQ1JUGFy9cmVl6Ea1aDbAV3I0ltV55x
X-Google-Smtp-Source: AGHT+IECPDhPNh/BGrjoNwZ3MFMyy/CdulLWdnO4Gww80R4odqdHGExKH03tYQgvNoDXudzRKyAP2w==
X-Received: by 2002:a17:907:9691:b0:afe:ed05:2e68 with SMTP id a640c23a62f3a-b04930ac043mr1180321166b.11.1757320620463;
        Mon, 08 Sep 2025 01:37:00 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff21:30:1f60:42e1:1e1b:d240])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61cfc52ae40sm21501622a12.44.2025.09.08.01.36.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 01:37:00 -0700 (PDT)
Date: Mon, 8 Sep 2025 10:36:55 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Loic Poulain <loic.poulain@oss.qualcomm.com>,
	Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 4/5] i2c: qcom-cci: Add OPP table support and enforce
 FAST_PLUS requirements
Message-ID: <aL6Vp-3er71AJPJd@linaro.org>
References: <20250904-topic-cci_updates-v1-0-d38559692703@oss.qualcomm.com>
 <20250904-topic-cci_updates-v1-4-d38559692703@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250904-topic-cci_updates-v1-4-d38559692703@oss.qualcomm.com>

On Thu, Sep 04, 2025 at 04:31:23PM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> The CCI clock has voltage requirements, which need to be described
> through an OPP table.
> 
> The 1 MHz FAST_PLUS mode requires the CCI core clock runs at 37,5 MHz
> (which is a value common across all SoCs), since it's not possible to
> reach the required timings with the default 19.2 MHz rate.
> 
> Address both issues by introducing an OPP table and using it to vote
> for the faster rate.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Using an OPP table for a single static rate that remains the same over
the whole lifetime of the driver feels like overkill to me. Couldn't you
just put the "required-opps" directly into the device node so that it is
automatically applied when the device goes in/out of runtime suspend?

And since you need to make DT additions anyway, couldn't you just use
"assigned-clock-rates" to avoid the need for a driver patch entirely? We
use that for e.g. USB clocks as well.

Thanks,
Stephan

