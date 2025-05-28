Return-Path: <devicetree+bounces-181085-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F9BAC6343
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 09:44:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7B36A3B5B8D
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 07:44:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 116492459E6;
	Wed, 28 May 2025 07:44:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="R3CA8d9E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5E5244678
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 07:44:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748418286; cv=none; b=ru+MihwMffu6ZVQ31X2z8FVGKB9QboaDhZdqBsfOc0V0OPiioCF5AGY7Ld1P0jO5S+8JFdq2Kb1G5Fi1H9dD9Gwyvkf4Tdl73HAG8IaXJY/pWNI8n3fp28/XcY4XiOGY0HIaLwD5OM5Coq1v4laqg0VwBWl7FbxL9u8TMAr/TbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748418286; c=relaxed/simple;
	bh=9n0cPJV+g+yarXV9zmLs6fR1CGDsXbBKFs5PKVOvzX8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tHOPA0+fnKeMlLKEtjtLXjOI0C5TUSDnDieTqhha+//jAuHNsICPx3SvP6XaMLERh83I5uiru2b4xnqfQ2DtJWBRGmQJR6h7+M/F0bJE1/ZmSZkXNp3Nixo9XG0uWHCHa9rm8NPbjIgXzbubdpdHWfSZRfvuvCX1+5PDu2rJeYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=R3CA8d9E; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-442f5b3c710so38921355e9.1
        for <devicetree@vger.kernel.org>; Wed, 28 May 2025 00:44:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748418281; x=1749023081; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NCAzjCL4Bl6CH02UvykJmrP16J+tWlFWZGvoCIzzt7U=;
        b=R3CA8d9EK0zyietaYcN++gt5HGPpzFv1JD5ABNjJk3oHFpjslnQXmxjpQQS6GjvHTW
         81H2MVjfNiXXZpZa4gMXwFxxPO3jCUr1QdNJIFWfNfGf5+AX7pd7XOWtAG2MSjfmCbvq
         lownUMvsWFu8h2NtbnVke4leOTgrlt/7RkB1QwdIO468S1xdz83OL6i5TKiHaCZH5MVT
         slTbFLsFDZSup7Tlp0tk6SQRwoRMqXXp/Yx3b4z1r+Aoa5m3kLGECKyf1TthW+MzF6JU
         G7knqzShOf4js/1jXwLWDF/hHfuWlf5Ij2wcZUq4PQnNqUUJqAWTpPMpzuKSMHvtsD57
         neyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748418281; x=1749023081;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NCAzjCL4Bl6CH02UvykJmrP16J+tWlFWZGvoCIzzt7U=;
        b=HYqA5A0SSp7aTHsu3SHLgaUSUnHnWiqJlVmvlGthdrjLEVwmwNYK3VpYz9YAnhQCiR
         82DznugBkj6nYdzdOv7NH+elvEGc9VAOb527MuaVCq6PArcT0YoepdY6bTC7g1Oy+Qm/
         3gZsZXVOxPbQz47u6aaN07WuxBVfciHGmEuOTnBKnC2a3Es+unmfV573sgulJ802boSF
         Tv9+OW/pPi6OTkPThFiV7NVLWFkH8v4KL10okOsxsbhS5N6aarZuFHFH+LQt8hwOI3SQ
         xFcOEgrY9iYMzPBRZf/AVP9ocWr95Nk/Ik49lA3DCaU2N4Y2kDoPPmtbYC4lsXc/Qhtp
         Wxcg==
X-Forwarded-Encrypted: i=1; AJvYcCWqeySuYoDTsxlbpgeuyzyyK7zrYDGFegPEK4KWLPyeApjWdMh3jQx6rVZdnMuY+jcKUonfe2SwIHGS@vger.kernel.org
X-Gm-Message-State: AOJu0YwrmY98mksz0Z4oTK9kAvpb9LN+dkjlk/rH1PjFn4eil8KfutWj
	q+ANtRa5Ue8vid0GwZqzOyf1yE1fxHnI/TAyFcR9wFQEX5HoCxpR5TZKcOOb9eNcgLc=
X-Gm-Gg: ASbGncsFD0m09I8bEHN3yLDGKXgVLYRkExFjNNg6CIDxsBhdVdOMDibeABgMZSkJ0q6
	NzmFnAw3nYLnb8HiEZSZxHcT1Pa7ge1SRvv/6mUe/gWavWQigMHCRiXhy2WZGclYIUeJGIHuk9x
	3ehVAL91b4Oh0L4PSpinQsXOfNW53X3WZsRJQomYBeYmCGcHQkqPqX4QEwXKOKCjnk+YpauCpWl
	aNE/FOXwykjy4LEIxWm22kb3oZ9PdNEsQUNG/20KPLKSeGligGEpHzU+fxpunowN2pJpiiX6152
	T9yEAOYPwMm8T+vm4ycAHkVwhIMRWq2CDV+Sumpkxhou9VIc
X-Google-Smtp-Source: AGHT+IE/iUqPKQrG7bwzgJBp3KKnYuDmJ/JAmKt65e94C4RB9c06whWy8YwNSu/XTnIj1izcf15HNw==
X-Received: by 2002:a05:600c:4e0a:b0:43c:f895:cb4e with SMTP id 5b1f17b1804b1-44c91dd158bmr145314685e9.17.1748418281526;
        Wed, 28 May 2025 00:44:41 -0700 (PDT)
Received: from linaro.org ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-450064a1246sm12549605e9.10.2025.05.28.00.44.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 May 2025 00:44:40 -0700 (PDT)
Date: Wed, 28 May 2025 10:44:39 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sibi Sankar <quic_sibis@quicinc.com>,
	Rajendra Nayak <quic_rjendra@quicinc.com>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100: Add interconnect to primary
 USB3 controller
Message-ID: <aDa+57zCFSOXyYY7@linaro.org>
References: <20250527-topic-x1e_usb_icc-v1-1-43b604cb0609@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250527-topic-x1e_usb_icc-v1-1-43b604cb0609@oss.qualcomm.com>

On 25-05-27 21:26:17, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> This seems to have been omitted during the initial bringup.
> 
> Fixes: 4af46b7bd66f ("arm64: dts: qcom: x1e80100: Add USB nodes")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

