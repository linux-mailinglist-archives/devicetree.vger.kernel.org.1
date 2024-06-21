Return-Path: <devicetree+bounces-78631-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CC60D912F19
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 23:02:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 67E30B22C42
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 21:02:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 789F216DED0;
	Fri, 21 Jun 2024 21:02:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IOuwP1Dh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE3216631B
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 21:02:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719003726; cv=none; b=FNtWKjm+dJp8xNfwZAtYerhDq1YwrbFSH/LyvLHVRmJ0h/vDZbMamwVjVaVF+ytJA3vWtkJvkfsSLvibXgs7AeTco8VENh0NYTxKgKM3viIqK/UPMoYaHHBcEl6ahLE5bHGSS6cnenDH83O0QiVi89JaJ2Ew2i5NUyO4qzrRvgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719003726; c=relaxed/simple;
	bh=SIn46AlZrvPMNaN1mv87TjU0Fs6J3JAzxJ2rAf+4bvM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GoyOySZvL0qdyvz6NOQ4AmY8NeOF80xI1+ng4XIDzby5wp96eGeQzucZAkB+JneLrDjtEyfrIk2SDcTxzjXYQaI4EqGNfEKA7uqaueXGwbdZBnwjUuptsFRgGkC+d3E0MY9rV/CQLsxIpys0Ay6+PMtyI4KougNWcTdQAg3+dso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IOuwP1Dh; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2ec52fbb50aso6064361fa.3
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 14:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719003722; x=1719608522; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LQaUecEobjZqzwLUd9GWjgt4QLJ9UfoOW6siZZKNEAw=;
        b=IOuwP1DhY9A/+LeI4hpgSfRp1/IqIw8TGbhn9M9dAKIbgCf4NJgxy7mFmmBPtyD/Nz
         KsCyLluxgvyBw+z9TmsccgM2rpaTCEa7eNuCd7D2YP0bHryd0ySqfoJ9YDKVxWvocX8O
         yJlrJghc5ojXkXd0b+EZ41irLEQNkWpK3ZqLXt4FdeZiiD/CrvXuHVcwv3qwcWbSNP0H
         HlNHlxBR8hd9G3U35zRlNg4GPsbXhxj5UGoBq+mdPHfBtimeIY51Jj3a9yHXK8Py4HjA
         HhCYMS71u2V0o/oSnh0Y3pRJFEkjMH0/sRb88JvZ7JR5eoCz2yYGx4brwJRlZuTjiHgX
         IT4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719003722; x=1719608522;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LQaUecEobjZqzwLUd9GWjgt4QLJ9UfoOW6siZZKNEAw=;
        b=r7wBNXoM/G4eMKXWwN/8fkWI8ECoC8SFQ5LyzztulK0yLER+DvkQznBxVW2BxHZu0p
         RuHsn97zWIrjm80PtiVE2AN78entJpmixPVeLAAraBGlKt7H3L9xlez90g2zYq5hWEIM
         xpLwrUU+N3oQr3KZHppbQRr6++w2GQEOGjEFLr1HucWACbRnb8L7jWuAer0KsN8RFcfw
         Uwq/Aj9QXUcbzNyy9EoKZrhO1usrgBM1yl7NJ6yt356kEJW8qEjd5tKcS1kfXJ9dftk/
         NJiarkFxqaZybqPfi9lEHwYtTF+2Rzt2mXRjJfjJRBFHcBOV8p5lFYplBAkG0qn53Yc3
         OPWA==
X-Forwarded-Encrypted: i=1; AJvYcCVB1Bgw4L3YuOXhykfAUbJoP8vWGPsIFJPzaF9umpPGb3NJ4ATAaJQ/OXeECpV1Wb107VT/VCL8RBOh+RScB3K/sI1sV34WxKEhYw==
X-Gm-Message-State: AOJu0YysA5bnE3l/czpnSHgi9YnFPGXrxhkBQkt3dAVDtKQPvflrUoXS
	hEh16MV9DPpxRKZLgIthhlEsia2B3EDH4A414btjDhwwQYai8Be8jRLR8otBGNI=
X-Google-Smtp-Source: AGHT+IGAV6WldJ9dS5FxJhQ056SRdKm6+iAz5aBUPSV5QDpaX0C+WSe/0dUyReDqDGBqVFs2s3BreA==
X-Received: by 2002:a05:6512:68e:b0:52b:9c8a:734f with SMTP id 2adb3069b0e04-52ccaa53e1dmr8767018e87.50.1719003722411;
        Fri, 21 Jun 2024 14:02:02 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52cdcdb981esm89295e87.122.2024.06.21.14.02.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 14:02:02 -0700 (PDT)
Date: Sat, 22 Jun 2024 00:02:00 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sm7225-fairphone-fp4: Configure
 PM8008 regulators
Message-ID: <u3hldruxjqlelinhbitgvt3wtclgskjss2slpoj6kck7mgrm3b@skeezbyy5yj4>
References: <20240621-fp4-fp5-pm8008-v1-0-dbedcd6f00f1@fairphone.com>
 <20240621-fp4-fp5-pm8008-v1-1-dbedcd6f00f1@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240621-fp4-fp5-pm8008-v1-1-dbedcd6f00f1@fairphone.com>

On Fri, Jun 21, 2024 at 10:42:30AM GMT, Luca Weiss wrote:
> PM8008 regulators are used for the cameras found on FP4. Configure the
> chip and its voltages.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts | 109 +++++++++++++++++++++-
>  1 file changed, 108 insertions(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

