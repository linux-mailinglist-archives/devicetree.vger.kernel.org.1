Return-Path: <devicetree+bounces-37114-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF63D843B96
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 11:00:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E16FCB29E4F
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 10:00:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74F4C6995B;
	Wed, 31 Jan 2024 10:00:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D51H5Cg3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D06AA69D09
	for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 10:00:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706695210; cv=none; b=qC1YxkNt2tzwg7hFDhiYD4yZpKGhXPeUggWsGLrpBOI534fX1MxPx1keNciB0QDzl0sG3f46cOxWDltwjiX8lqHiq3EJOycLvG3JCGfI024ytHxteEyYfjBi7VEKBqPiLu0Ft7UzYqVNs6fpau2UI9lUI3N0vsTDwiVhZxpKy4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706695210; c=relaxed/simple;
	bh=EwuXbJl0WAVRXL0rgaIH6Wpsbj6Zid+vX6fkUwJxkqA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OC7xDu7VilqeoSuXDY04IMbeSP57pztHcYytYJvTuzBDwnk9byAesQv4DFGtdhkRSpDBn0TdQRoPOoToOlq2HJM9D1+CoUf6cMfR/jMl1mNcuuOcCcyWu0GIsrmKEVVNFcILi1WV6XIWH3TncaEaNNGR6WJ4A2TGMYKFJROC2k0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=D51H5Cg3; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-295dfad4e56so318209a91.0
        for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 02:00:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706695208; x=1707300008; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7FrCT1wwwtLx5u30OBBWaUcf3AdEwyHikp9zVCTIvjo=;
        b=D51H5Cg3RmWbhBDQ0cJyaL1UI2b8lZP91YFn6BRcOCKsQ8hg7AMPlHGX+2hEsRptKQ
         +ZAX6yz0lTZe6Kmo9HNVJAcZBmNhXyK3vgkZwRfRJHPHVO5ky+EpP249B0DnVz7tGf8s
         qiaMJLU9LsTzM0yQZIq7w0dXPUYwLzxUX8+XVWpTkPaD5IKZw8FGIgfyk47gUwDXHnH9
         gHexHuq2hxj9eJZ7/Z5QAOWv+47phSdHTA8MQSbt/8sEkV7jjRUIyZUlZBFJ6L8SBO7t
         pmHOnemcYzIAygSAMXkaYhaIORDbaOdX3nWoc/xHZOvAzLVgdEvB3gsnGSRka3eVDsbd
         SIYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706695208; x=1707300008;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7FrCT1wwwtLx5u30OBBWaUcf3AdEwyHikp9zVCTIvjo=;
        b=fkX/8kMkTDKGcuj8VAee8k/g9OlnslE+9iQg4OKw1z8SvJ1xpwtqf5pvPih9sOicuk
         xAiGiS/jtSD3yfBUguPhFzRqAiMQbhY08oy6ZwxcgeDjHUtsq6cEi9SbRGhQcTu8o7x4
         fWtvd8xwg8beb1TnPSv+jqQbzVOCkZhwBvIkx+/wyFbYkdVoVInlyMgmImKvInGMGQb0
         +GtT81W29f1Kd9+SiJmV3kxDK7xFFzAA9B3qB8TCx+luLqRZrMgZlN+IkPI3zS5Oco9B
         abJDpBsdzLAeBcocHDE2d4dVgJ5p0enE0CUjpAid7Zs3MPHEmJ+lcnaywRadjyi/Qyvx
         dYyQ==
X-Gm-Message-State: AOJu0YzTO+uGC0CgjSeSUe5+joc8ScJBkChYyFNmJgANhkA45leUqTOp
	OfWKaVLU75u8erDiw9NDFq4y8+g3SRgwBi3ckHo2xqkEL2Hl1gbJjrRm8FNwXOk=
X-Google-Smtp-Source: AGHT+IFPdnmawxrZjR32Kwpt4olxY8wSnNGp0lJYF+asxnz9nLuKsb5bQwlNp9TpbU3kBKTw8BYYNQ==
X-Received: by 2002:a17:90a:e50e:b0:290:6895:aff6 with SMTP id t14-20020a17090ae50e00b002906895aff6mr997001pjy.48.1706695207700;
        Wed, 31 Jan 2024 02:00:07 -0800 (PST)
Received: from localhost ([122.172.83.95])
        by smtp.gmail.com with ESMTPSA id dj15-20020a17090ad2cf00b00295e041baf5sm1051645pjb.2.2024.01.31.02.00.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jan 2024 02:00:07 -0800 (PST)
Date: Wed, 31 Jan 2024 15:30:04 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Krishna chaitanya chundru <quic_krichai@quicinc.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Brian Masney <bmasney@redhat.com>,
	Georgi Djakov <djakov@kernel.org>, linux-arm-msm@vger.kernel.org,
	vireshk@kernel.org, quic_vbadigan@quicinc.com,
	quic_skananth@quicinc.com, quic_nitegupt@quicinc.com,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 5/6] arm64: dts: qcom: sm8450: Add opp table support
 to PCIe
Message-ID: <20240131100004.uqx6vaucojqo4kyg@vireshk-i7>
References: <20240112-opp_support-v6-5-77bbf7d0cc37@quicinc.com>
 <20240129160420.GA27739@thinkpad>
 <20240130061111.eeo2fzaltpbh35sj@vireshk-i7>
 <20240130071449.GG32821@thinkpad>
 <20240130083619.lqbj47fl7aa5j3k5@vireshk-i7>
 <20240130094804.GD83288@thinkpad>
 <20240130095508.zgufudflizrpxqhy@vireshk-i7>
 <20240130131625.GA2554@thinkpad>
 <20240131052335.6nqpmccgr64voque@vireshk-i7>
 <20240131084645.GA3481@thinkpad>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240131084645.GA3481@thinkpad>

On 31-01-24, 14:16, Manivannan Sadhasivam wrote:
> Most of the hits are from CPU nodes... For some reasons, peripheral drivers are
> sticking to hardcoded values.

I guess the reason for this is that the OPP core wasn't used for non-CPU devices
until recently. And we are in a transition phase where few of the drivers will
migrate to using it and so will have DT based bw values.

-- 
viresh

