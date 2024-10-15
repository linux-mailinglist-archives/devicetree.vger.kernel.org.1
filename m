Return-Path: <devicetree+bounces-111447-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D8099EDAD
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 15:33:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 90C22B230CC
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 13:33:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5D8F74C14;
	Tue, 15 Oct 2024 13:33:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XD8NOGWH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6DBE1386D1
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 13:33:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728999198; cv=none; b=sDDdLlxABwMtD7mzrKYSSNbceCA9CRe/53YgkrAnJZV84S6xGhx3+XGeg6fFlKdNcWFYp3ucS9oTskm8WhOkLo9djLSovPpqgUZhxMA6PDlMxzW252/mT9HXVlI0kZtTM6/9lD0fZFCoueDUQcR+SWN6sfXDCW3XfWXVpjk3FZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728999198; c=relaxed/simple;
	bh=fqVIDi6e3Pi70KY1AuVHU+nl+Y7/64vheBPcEyNObZ8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=G8S0RLd5eTpDf2BOYC/gAQGMRzGVi7OQcO8/GCBULTnMAsnEVKLE6A0iA95DeKI55IJag8Qn6eeCcF10GCxZwZaQaAMlhQ75QzN1TtJUhq59+MiHGzEzPfwaTeI70pVJJNcZ0ZjGLbhx9REQqbLPd6HOtVUIQ0mkOEKJh7DqhlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XD8NOGWH; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2fb57f97d75so16317801fa.2
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 06:33:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728999195; x=1729603995; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8dvw0BVQzEB9X8CFHtRp0QZ8vrqFpv2fHeUKrcBo1TY=;
        b=XD8NOGWHBjy/qQf+WZlvVRCf3a45wfNnoPpMRd5UO1g8d2XTQXD6gpu8evwuUG9cDM
         O6l1RVL2pARf1Zq4OlG2adJIwwkI9TNqbKNj+DbiqztqaXras/W3MZEPgbyHt87wQcih
         qwHMNGMpfxeC2aTfpaXkAWzAr/0IP5yCe595m7KD2ZiCpaMeu8ZjKpyFjJvjbG5BC2fy
         AOLvWgnMSFAHuotYsnFEKSm+igex/4Z2xNPWRS7vdgEhOurkLetgmsGxX7S2Fqdk32cx
         GGRzwnTICUq7+80QV68q4o/iKQwvCNaj0mXssLZrbpPcDxBPTpXqPYa0GwPv6SKkWx9T
         JEAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728999195; x=1729603995;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8dvw0BVQzEB9X8CFHtRp0QZ8vrqFpv2fHeUKrcBo1TY=;
        b=j2Jrb/6q2Xa6Gz3fZHKJGKTGtXaRkE5TeOhpEEY1E/aojFFHxvOnX7zYCZzqzNtdS5
         6TxHEXz+HYYF7iLli/qEeETrTQddFuQXpl9Am4KflqfH7oMsfVSGc3/HPhVqEPyWFC23
         pl5nIlDmVSlvQWMO3n8+DXchv1ppSP+qH4T0BCNCeXjfFlqZankV//H8ygCTwlI/YR2T
         iN+kGX7T2nWXsN4v8+/ZO+o7RsiMe8C5n5cNrHTuiKE3JQksGXDrJbiwHlMhd1ZPQzQ0
         i/8pkxbyt1x9gq3CrtPTz9+xlp4zIVF3LOn8ryPOS0TZ05Wel4MaoFXGhd+Td26xtVO8
         f0RA==
X-Forwarded-Encrypted: i=1; AJvYcCVZ5u/HDMe+EDKpMTZCHdqg1ZZGHC4f4kqqVhKeaJSkmjfPVhe6pYHYbWI9HZpluIOM1vFmkJQOX7T4@vger.kernel.org
X-Gm-Message-State: AOJu0Ywlaqrrsp9cPJB5fUATEj0JlBbv8oR7ZK9ywQdMReTehbhF+86D
	yiYkQ5a+B9MKMcFy9+M/XqNX/FduVBgxQvofvaf6a/MlcbfWWU8nhC5OMJkAb+o=
X-Google-Smtp-Source: AGHT+IFK/Bdt+DSfI3J7VfTsOap19LZdteNeX/8IXzgcY2WkwjwnNPkEkYbIBoLD/sv9TK8hsUwKnA==
X-Received: by 2002:a2e:d01:0:b0:2fb:45cf:5eef with SMTP id 38308e7fff4ca-2fb61bacbf3mr2872721fa.30.1728999194974;
        Tue, 15 Oct 2024 06:33:14 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fb6288f34csm55761fa.126.2024.10.15.06.33.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 06:33:14 -0700 (PDT)
Date: Tue, 15 Oct 2024 16:33:11 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rakesh Kota <quic_kotarake@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, quic_kamalw@quicinc.com, 
	quic_jprakash@quicinc.com
Subject: Re: [PATCH V2] arm64: dts: qcom: qcm6490-idp: Allow UFS regulators
 load/mode setting
Message-ID: <fqznmc3airujuxyepg6mv3wbwissvd7xdirr3elrhvwis7qnuw@n2m4e4lrnvvi>
References: <20241015132049.2037500-1-quic_kotarake@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241015132049.2037500-1-quic_kotarake@quicinc.com>

On Tue, Oct 15, 2024 at 06:50:49PM +0530, Rakesh Kota wrote:
> The UFS driver expects to be able to set load (and by extension, mode)
> on its supply regulators. Add the necessary properties to make that
> possible.
> 
> Signed-off-by: Rakesh Kota <quic_kotarake@quicinc.com>
> ---
> Changes V2:
>  - Dropped the removing Min and Max Voltage change as suggusted by the Dmitry
>  - Link to v1: https://lore.kernel.org/all/20241004080110.4150476-1-quic_kotarake@quicinc.com
> --- 
>  arch/arm64/boot/dts/qcom/qcm6490-idp.dts | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

