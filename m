Return-Path: <devicetree+bounces-74280-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 538B0902881
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 20:19:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6F4871C22D0D
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 18:19:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B94AC137747;
	Mon, 10 Jun 2024 18:19:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BJNWFhCB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E26D218E20
	for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 18:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718043583; cv=none; b=lzvgeDktGmDqbXyCGfPlaq7O3A1SYZeokaK3dN9eV+mR3cA4vaJ6p4pOqGqKkrPV/2MAt3AazJjdy3HHXVOuV59jtz6+Q8nU7u8x+DXUMIxSnZZGtCZX2PwJhmui80AAyH8fOcsEm/qbHjGq8R5ElDJYHeubLxx+OtjesIsKgBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718043583; c=relaxed/simple;
	bh=47BCQF8Rh+QGgFZLQo6+hqRSv3uSm3xpwFzwGTdHyHY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qqWpNI/6RCMnCoXGB8F1EKpP0TQzeYOwggI2dY2i1wdk8nNgXALDrO6q8VXwXuFpMXuDZUUxOthxckdO0ykZpjjLSVJ9lFKCswRoShsKUTfm7S5P4uOZ4L5rfS6F5Qdf3VnsyBHbOEbGt4AGpSuErIq/f1DGMvM7ny2y3L4tArI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BJNWFhCB; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-52c8342af5eso1806070e87.3
        for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 11:19:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718043580; x=1718648380; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=21LE+HbTdC+wLsWIIw1FKWiQ20yLnLoT2yGU1mgzcko=;
        b=BJNWFhCBFRAvxIpOv3VRsX8GDS23Qk1ZpfCcwvPImSLygxZd4YeHNPYryWYXukaOEj
         DCr9qhQ38Jp+bduEyLC8GmC3nGToujYX+h7SVBxmLQEOM0Q6X+8HK4QSB4oXSG3BRh6a
         S3sBqjeYHFCNKX/T7Xug1wiFhOrh9hjNCODrwDtauxEaWfhIoes23eXcEO9LEVgDhZ71
         Pmyg+0/yU8DFpQ06I8JOvjC9W3K4Fm6ynlps9UsIw23tuCIjTF9RTG9Uk0SSTW3zuSp2
         gU241sJg5BDBy/z60EBuADYFfwtqicuKnemz5qPUCG3fOyvZaKidtxHD7Mhh86wY+CZy
         5zkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718043580; x=1718648380;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=21LE+HbTdC+wLsWIIw1FKWiQ20yLnLoT2yGU1mgzcko=;
        b=NdDgeoGT+hYh86qNKaCJs0b5GFfsuXAkLAkpN9pTSfUgK0133Ry3k9QnY/GtL7L9i/
         mmOh+qxUjR8X3cZ5LEOgEXBfszdqZXkAAsEEgeqMM0gM5rHnBpIkJZZKxFnsn4Jeyw4r
         SO3iJM/SqN2gsvqYINf4QWyQZK3ShY5F8/NpJGaCBsccByezwmgOGJGQPekIp4NP2iW/
         apR/zZKdFbgTrmVxa8BZ6nFSq0DtdB2sByow3YpFKstFblVrFq4hLGP+z4xdOOUHu/YC
         PS53xExlUMg/eXkCiH/wQN2NL3FEIXmcNWYueF539MDzQzWCSHrD7WEqxMY9Fg4x/vJM
         5ubg==
X-Forwarded-Encrypted: i=1; AJvYcCWFM98d7D7w992eNPriW1URygt3TjLvfLId1pkcymWQ0x5d+mEs3ZrYd5a5mY7aPoOg4EA9iRH3Y47xE+6Z+8SUakEv1QACdnzQwA==
X-Gm-Message-State: AOJu0Yz3ghWu0VAK33Wr4i1WocLGEAGUfM1CrQShhY/W3KDxOymwqNdx
	uealHOdFiLqt5+c3Xk7WT5TMyhmmzPlAwAtEYiw7YVZfZwHOsmt/zB5r+qfuo24=
X-Google-Smtp-Source: AGHT+IEe5zLTeXfSDypsVj9LEt2etqwojlWcPSamBIXz+Vf+eBN7/kP7SDke+LFUyzxpMMPpNRUQ9Q==
X-Received: by 2002:a19:ca5e:0:b0:52c:322f:a8f9 with SMTP id 2adb3069b0e04-52c323eeca9mr3933999e87.27.1718043580007;
        Mon, 10 Jun 2024 11:19:40 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52c7f2f8f41sm1185412e87.148.2024.06.10.11.19.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Jun 2024 11:19:39 -0700 (PDT)
Date: Mon, 10 Jun 2024 21:19:37 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Taniya Das <quic_tdas@quicinc.com>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Bjorn Andersson <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, quic_jkona@quicinc.com, 
	quic_imrashai@quicinc.com, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/4] clk: qcom: lpassaudiocc-sc7280: Add support for
 LPASS resets for QCM6490
Message-ID: <iqmmhqg7huczocozodymwshc4kvt7qrxmok6iyrq32eyg3fmgx@yqrojfiha6ir>
References: <20240531102252.26061-1-quic_tdas@quicinc.com>
 <20240531102252.26061-3-quic_tdas@quicinc.com>
 <6aad6a71-dd2f-4682-91ea-835357342ba1@linaro.org>
 <2800ce74-44ea-444b-b00f-e07bbfdd4415@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2800ce74-44ea-444b-b00f-e07bbfdd4415@quicinc.com>

On Mon, Jun 10, 2024 at 03:49:18PM +0530, Taniya Das wrote:
> 
> 
> On 6/7/2024 3:00 PM, Konrad Dybcio wrote:
> > On 31.05.2024 12:22 PM, Taniya Das wrote:
> > > On the QCM6490 boards the LPASS firmware controls the complete clock
> > > controller functionalities. But the LPASS resets are required to be
> > > controlled from the high level OS. The Audio SW driver should be able to
> > > assert/deassert the audio resets as required. Thus in clock driver add
> > > support for the same.
> > > 
> > > Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> > > ---
> > 
> > Please stop ignoring my comments without responding.
> > 
> > https://lore.kernel.org/all/c1d07eff-4832-47d9-8598-aa6709b465ff@linaro.org/
> > 
> 
> Sorry about that, it was not intentional. I had posted the v2 and decided to
> split as it was delaying the other changes in the older series which had
> more functional fixes.
> 
> 
> Picking your comments from the old series.

I think it would have been better to respond to the original email
rather than c&psting the question. It drops the context of the
discussion.

> 
> ------------------------
> > +		/* PLL settings */
> > +		regmap_write(regmap, 0x4, 0x3b);
> > +		regmap_write(regmap, 0x8, 0xff05);
> 
> Model these properly and use the abstracted clock (re)configuration
> functions.
> Add the unreachable clocks to `protected-clocks = <>` and make sure that the
> aforementioned configure calls check if the PLL was really registered.
> ---------------------------
> 
> These were made for alignment of code, but existing approach was not
> touched.

So, first patch to fix the old code, second patch to shuffle it around,
please.

> 
> ---------------------
> 
> > +	lpass_audio_cc_sc7280_regmap_config.name = "lpassaudio_cc_reset";
> 
> Ugh.. are these really not contiguous, or were the register ranges
> misrepresented from
> the start?
> 
> > +	lpass_audio_cc_sc7280_regmap_config.max_register = 0xc8;
> 
> Provide the real size of the block in .max_register instead, unconditionally
> -----------------
> 
> This had a little history behind this approach. During the driver
> development the ask was to avoid duplicating same descriptors and update
> runtime what is possible. That is the reason to update it runtime. The max
> register size is 0xC8 for resets functionality usage for High level OS.
> 
> Hope I was able to clarify your queries.


-- 
With best wishes
Dmitry

