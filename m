Return-Path: <devicetree+bounces-143438-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D516A29E27
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 02:00:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 04D4E167E37
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 01:00:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B812E1EB2A;
	Thu,  6 Feb 2025 01:00:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uay2lbrI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8D2518052
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 01:00:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738803630; cv=none; b=lrz0ryiSe0zY0q+vQdsNJMo7GBQHvTSZJ2xgBQBaFRcD+nHN/O+Zpo2Yuq3ImLjSE+YLrmUeyN2NNNmzSyDUsYpF85GbND4rwRw9jK55XWjgmLp2+x+/MuxH8QifOs1GFCxTe0LqPpG2d7R7iTOOqSuMs1h1E2NFiCDVocmHshM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738803630; c=relaxed/simple;
	bh=YA9beyVyNV2UIf6sOTfOynJf8z+PiAQR/WP4EysO5Rg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c2iC3SLhVgvBXJa1WNhP+e1aj+a0B3rauNKCrW3UoC8hoO8q3NURfuEdbLQkt75dFbKUMOVKW/TjVvqHB3gtk3Wt6M/wg73i8bPNdkFZZT4h+RqiYeAybHf8u0z8Fen8CN2q0lRDlO/mXBmrFlEL2VMIXH2RB1jvhw0iil/NQ5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uay2lbrI; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-53e3c47434eso382115e87.3
        for <devicetree@vger.kernel.org>; Wed, 05 Feb 2025 17:00:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738803627; x=1739408427; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=64EGE0H9PZ2lu5z080wv8hkP5sMcDd9LMSd8Y5hei2c=;
        b=uay2lbrIphuPFUCcLrqYtEIK6aI2VGKjw0uGP9Euye9HH/J1XQY5a0mLt10tTd31PT
         4bfcNax+FhnkvznleBp5mGNp3gmuCziVgJNX69vAxh828AaeqRnfB4QHixvJEv4gwy8T
         TES3F+MPpoxJy9dMSCr7PZ4x1wPdSbVlecmdcigDJQ+RhPp8aVij5lYLrhP/ctV5FGtK
         na2Zkf0Gxc3aBq1iNJVxnjkSGMYUsxmKc+mnAGcCL+jOjCRfs/qk40d588O3HdLBjANk
         q/RO3x0dWz0/kSU0j/R05aIMMp+tZWih1+YLiSqUA6dATahrX2I08Nk/QmwHTLcZTS1g
         FMtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738803627; x=1739408427;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=64EGE0H9PZ2lu5z080wv8hkP5sMcDd9LMSd8Y5hei2c=;
        b=cTiss2oClb0w9II05SQHRBUyEOe86KVUr6VNLgE/Lw1CkjsJuCojrXVeUrTOAKw/TS
         HlwxQdQDIYzCKejGObO7AuAJx+qcHAONrdEZHGO3VrqUicZMLhCnY0w4JJquV4EIEyp4
         JXYEThqp5AMKNuwbY2C6pFZjvq3hzEVlsXOfJYErCbim/V+02VCZ7hTRHSEvfz/nYuop
         28ElSVCswb06d0to1j6xEeI1x3qwC89Z5lFEKJHMuWvb35Ho8Pp6iJV7OLgpWhCOhALI
         fKJjcZYusATH1ZX7taY0hTMyu+8Zrb+L1H3K2Ve6v15DltrPyy4xeLfujVezbL7qzUFk
         aFiA==
X-Forwarded-Encrypted: i=1; AJvYcCXuURLqsbKgeZ1jV4K+6JdXs+x0MFLnDEkJPXtBDB43gCsd3wdGGN3PsHWTsLrf4rbn4kxXm8U6hgJu@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9hda167nB0u2YhVoLGyaSwsMFvKCf4r5Ug5rXijSjaQJgQF3/
	jsh0hsNh+t16J/UD4sU8aJzm2v5rkx4fVd7jYb8EAW16fuxfNSO/tR/a0pFlLUg=
X-Gm-Gg: ASbGncuoFyyn8GZlPzu03DM+vtEY0+FMVfJ1+xrrceCmgPokq7njc2vzsSVYG1cwbIx
	k8NxWJd7t18pS5N5WMj2xTCLFTPNlEE8L47kIXAm8ALiNQxZKSYdsuxtluTBZMhwle/UoXBtS5d
	c5zLVcbzr1QsxW76/uqmRGTLSOEv8GeqfQ+RFrpta1yrkMYibpoM07b9R/su+B/81llL3+vMqmc
	J9uNU75Yim6HpFqo2r1WoW94c10oKaS7MYyzXc/tkpDPYgwLKii4pKb+fHinMDpivQBiim6yoEf
	MIgvAGWJPdWdPfExHuI1sqkhI2ujIpHVAtciUm2lippsjSjTsCToKY9Z0cr1ZMsrmtLOPNk=
X-Google-Smtp-Source: AGHT+IHnLGYjiexVyjpyM2PLfRR2Axnq7Xdo6KWRYUCGpLamUudjFaOtVpU/Aplwgvu0XsO0JkhcgA==
X-Received: by 2002:ac2:4e04:0:b0:540:353a:df90 with SMTP id 2adb3069b0e04-54405a6912emr1688393e87.43.1738803626872;
        Wed, 05 Feb 2025 17:00:26 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-544105bfc8esm2878e87.127.2025.02.05.17.00.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2025 17:00:25 -0800 (PST)
Date: Thu, 6 Feb 2025 03:00:23 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Odelu Kukatla <quic_okukatla@quicinc.com>, Mike Tipton <quic_mdtipton@quicinc.com>, 
	Jeff Johnson <quic_jjohnson@quicinc.com>, Andrew Halaney <ahalaney@redhat.com>, 
	Sibi Sankar <quic_sibis@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V8 5/7] interconnect: qcom: sa8775p: Add dynamic icc node
 id support
Message-ID: <ujsy5e4u7inz5mzdh5m672zkfcrd6igoypgkak2assfpvlcrve@mmjlabr6rh5a>
References: <20250205182743.915-1-quic_rlaggysh@quicinc.com>
 <20250205182743.915-6-quic_rlaggysh@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250205182743.915-6-quic_rlaggysh@quicinc.com>

On Wed, Feb 05, 2025 at 06:27:41PM +0000, Raviteja Laggyshetty wrote:
> Discard the static IDs from node data and set the default node ID
> to -1 to indicate the for dynamic ID allocation.
> Update the topology to use node pointers for links instead of static
> IDs, and rearrange the node definitions to avoid undefined references.

I think it might be better to forward-declare all node entries at the
top and then keep currently defined nodes in place. Otherwise the diff
is pretty unreadable.

> 
> Signed-off-by: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
> ---
>  drivers/interconnect/qcom/sa8775p.c | 2194 ++++++++++++---------------
>  1 file changed, 962 insertions(+), 1232 deletions(-)
> 

-- 
With best wishes
Dmitry

