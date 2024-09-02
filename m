Return-Path: <devicetree+bounces-99131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AE789968DD4
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 20:45:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ECDB8B21034
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 18:44:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7271E1C62D0;
	Mon,  2 Sep 2024 18:43:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ehoRiv3J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9D241A3AA6
	for <devicetree@vger.kernel.org>; Mon,  2 Sep 2024 18:43:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725302607; cv=none; b=t4+bDPvH64tMvx1NCpJtBSITJ61goSNKBNFEvepajjaV6y4VbBn7EhnwH8B650Oks+1NHSHzhtblMsSGlnuvnJXH3fn9eI62R5yyStdKEQ5mEea91zeAzTtLR98OE+v5VbiRUkzIqAQ3HMwTkVokF5tHN5V7wqSp5cHD/2VnukI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725302607; c=relaxed/simple;
	bh=XdOEyXO9L3nv85zdXcpB19Q1o7Pzj+23Oxcb5Kqq8lg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jG9tXAzpEB1ZoQp6prShrq6b2fKuIShZ78Xx6JVj4gM1Gk/wwzPPHPdjHQHm78ii89f8ROYdkZ0LmcJ42MS+BtaqOaG2RkjE1br5Npn+a633mwNQ2e8MI1LIOuEKHVkYDvH0jsPnr6xzcjwJXY1uRCm0GNcgbUt5cWUmJQyNON8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ehoRiv3J; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2f50ca18a13so54027181fa.1
        for <devicetree@vger.kernel.org>; Mon, 02 Sep 2024 11:43:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725302604; x=1725907404; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=KWGSkHtICBBVaT2Flb/MI9EECebDHAY5AhF2lbTqaJM=;
        b=ehoRiv3J9XE4BpqPR0PJ4yYztoD1G9Om5Qx+nhkw5MOMxEmeez4DFAfJuZivTIy8Kn
         jcNYmTq/Fy/n5y2y7ORcCPRa+fOxudxGxxq1+IMUzlws9wIlDjU/HEgvnDVdM1ZZvqqv
         gIlSCAS4RLWBSgc3TULuOj+He6hrxrRU5ZIa1OUdI6HCRrtdkOQFOqqhFkVHNuMa+oy9
         rGtbhadskA6eDrraC6Bm06MqW1Rp+jeQzMwrl/PMq8jfTjDCpyae2m99YR/KCbr5XLd5
         rtstZVYkaDh6vmbCnWOaRv40ErXRfnr5//aAlKfsIM4d8f8cguud+J7bOgFdxJt9zMdf
         EDOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725302604; x=1725907404;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KWGSkHtICBBVaT2Flb/MI9EECebDHAY5AhF2lbTqaJM=;
        b=CkzEOTZHSvKaoL1p5X7HA7NOP4LD1YLEflgVeikbjl7hNHGip8K4zMq33SiHZ9gBim
         YQPpIVvnj1CCuonyifareE/ENm2P13EzBoYfh5dKx3FrncVJS0SnsQk7oOlQRfGCp2Ed
         8FtiuBK6hFgruEIPfUyiX443tIk4auYFncQcH/3S5Jam3PJNDOpFI03bncWds/UOwSFk
         uM3mEMiPBpdMPLr/3JX/nOywE4NH3VD6SUDfIoIpKWB3R+W58hbD2m+sH2D1pDMKZjzl
         KGIvI6ja8Mb2PgZCPQ8afPvFJ4F8iQ0Ou03Q24RCPaVRXCZ9HBbOdbA35g+xhdKgVnpt
         F1rw==
X-Forwarded-Encrypted: i=1; AJvYcCWtfkSQSEg6/V9yG7ajYVnmFS47wZfZX+jm0hQjHAv886hL3P4dKE8rQj0HXVlg/NoGSR1IOeJz2WIC@vger.kernel.org
X-Gm-Message-State: AOJu0YyTEBQuGAvGqBlhl6Vb4ou7vhXrzcQwDMeRRujkN7HfCimX127h
	o2BbX5wig4o7wVXGuVc59nQ+IujTDqKZXqtX14LOJXYhKwFx49qP5o1EafvcZXw=
X-Google-Smtp-Source: AGHT+IE2qKw14EU6gHkFeSjAPuG80J10mNoHz3m5AoJJRsY4KlPHTH+CHXQLJ+aUaD7+wDLYH4cKCA==
X-Received: by 2002:a05:6512:b90:b0:52d:6663:5cbe with SMTP id 2adb3069b0e04-53546af500dmr7988306e87.12.1725302603385;
        Mon, 02 Sep 2024 11:43:23 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53540841651sm1738506e87.206.2024.09.02.11.43.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Sep 2024 11:43:22 -0700 (PDT)
Date: Mon, 2 Sep 2024 21:43:21 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marijn Suijten <marijn.suijten@somainline.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Konrad Dybcio <quic_kdybcio@quicinc.com>, 
	20240830-nxp-ptn3222-v2-0-4c6d8535cf6c@linaro.org
Subject: Re: [PATCH 1/2] arm64: dts: qcom: x1e80100-romulus: Add lid switch
Message-ID: <qqlodix7wfcgipzdk5bmjonatmzgvjueadmmzdvkcboifwtkiy@oryqzxctboou>
References: <20240902-topic-sl7_updates-v1-0-3ee667e6652d@quicinc.com>
 <20240902-topic-sl7_updates-v1-1-3ee667e6652d@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240902-topic-sl7_updates-v1-1-3ee667e6652d@quicinc.com>

On Mon, Sep 02, 2024 at 04:50:33PM GMT, Konrad Dybcio wrote:
> From: Konrad Dybcio <quic_kdybcio@quicinc.com>
> 
> One of the best parts of having a laptop is being able to close the lid
> and go on with your day. Enable this feature by defining the lid switch.
> 
> Signed-off-by: Konrad Dybcio <quic_kdybcio@quicinc.com>
> ---
>  .../boot/dts/qcom/x1e80100-microsoft-romulus.dtsi  | 23 ++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

