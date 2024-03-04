Return-Path: <devicetree+bounces-48057-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1693C86FE0D
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 10:53:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B42A01F22576
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 09:53:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22A82364A3;
	Mon,  4 Mar 2024 09:51:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gcFtWw/Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74CC92C696
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 09:51:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709545901; cv=none; b=aqvsC7imKgFviE7xSt0zhOeWFmRl3aLIq0FfB6pal08osDF34Aw0qEFDizeD0zX2iKnE5+RZjZaTeXRxYquteopYhQc1/Blj11nhsrRzgGMlWSq4IntBEZc4NXADvCgUpSWSU4uWXRRERdCGDzSwmnEMJkv98H/YTkyeR5cuwlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709545901; c=relaxed/simple;
	bh=MGhgkMD/cjVPR3a+kB0C5eJxM17tMh3NQiA6g1OtcLE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hXDuDXujZjBU9sK5iQ+VBAIrv4sQJDTykI9BT3VtUhnrnn4SJHhe5cJdNrlZrZ+PhTEEN3THiCDIX7D174NVeY8JoEoxu5kNs6Y37YaV0vft6FZPX7fxqYperXY6yeMaKuO7Y7UMoqp03nhY+dOVNSfLTDnzVUbTfQ6Bvy/4h8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gcFtWw/Q; arc=none smtp.client-ip=209.85.219.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-d9b9adaf291so3663806276.1
        for <devicetree@vger.kernel.org>; Mon, 04 Mar 2024 01:51:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709545898; x=1710150698; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VnfOrWMwZoAPt5p92Jsbbn3jE/DBv9zEluClEUvIFsg=;
        b=gcFtWw/QeaQjEXNYOTtj4u72+Is6EmgIgtyA1dlOU3dGoq7fI+QQSW34vaejLIs6qM
         4kTKSF7E1QgLS1XcJ6HA/RldDR1NSeVWIMJdP5kw8BvgklYLIvULNzQREb/VHOq94m9R
         29RDXeEZxYFOFWf5ydbuMjiwJDdiWioA2jK6NQuTUwQKvo544KWsuvx0gGZF7KXnqq57
         nOsZZEQFQxxO7lj1kbTzM0NxDGlzjAQMEjg5k/YCvtLg3Dan5zmDs1znvENDbOlXCmat
         qeHrSdPjY0UuQD5nkiCM/J34D/sHK1tR0zIs3ZuiMtAVHw33U5l8LWizlYK6qL/xN431
         RfhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709545898; x=1710150698;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VnfOrWMwZoAPt5p92Jsbbn3jE/DBv9zEluClEUvIFsg=;
        b=dta9hMgKOjd/QH6RsXh3NrcUd4/M+8+9sxIO2+Da6Y2rZQDE+ANpmiBfiMNFXy9EZZ
         JsrR05MMEJ3paqGpdGYlNTb2q1QUJH4HAbtWlbxzGyp5AZE+8+hP4jzV3NQwmolZezS2
         3sl7y+FiR5hlUWFYCVyqiiQF7gwQfu+XAHQerWiy7asyKfl5fcEveHAlJuGofXqynA5u
         CGMDLVlZIOtzwea/7uoCdnTOwi5xxa1eTj4rCBrrgXFHCequbSz+DCgAgNDG/ZViPWGE
         2F33fqkuM9JoijOxkMNWRym+6liavmjfsWUXKcaYQQfvG1qwEhF6a050IEXzQki8HJu9
         7E+A==
X-Forwarded-Encrypted: i=1; AJvYcCXCIuN/sPfuL7LTZE+XuyAWvW5w3zpiK6Nxeg+XoCI1zfolenfsv07ZKuwWs23z+uks/SSg5Am5nY6idSQFOoa9pcnSqrdPwq/Mhg==
X-Gm-Message-State: AOJu0YwTAbghN3OwTP22IdClGdVrulEbku9Ma+soVhmStLZPLO61pNXV
	RhUXORQMCU580rN3UBZy/8ClwD7r/BSPKyvxXb0YuZMTFgDARIth2iyuAwAWsEvzO4a3P9iM3Xm
	LxkLly4RtEHbSH5zswuBb6Z6RMr9ageJo19Yf9w==
X-Google-Smtp-Source: AGHT+IHGpMgW4Nq+tUL0EpMm0iZyBEZIKD85dk+O+VJWc2BEPOdiuo1YLXxxsOZBGB5cYTCYqXHAmyECwavkhIzy2VA=
X-Received: by 2002:a25:ec05:0:b0:dcb:f7a0:b031 with SMTP id
 j5-20020a25ec05000000b00dcbf7a0b031mr5234974ybh.50.1709545898337; Mon, 04 Mar
 2024 01:51:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240304-pm4125-typec-v4-0-f3601a16f9ea@linaro.org> <2024030414-stark-service-ce78@gregkh>
In-Reply-To: <2024030414-stark-service-ce78@gregkh>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 4 Mar 2024 11:51:27 +0200
Message-ID: <CAA8EJpoCm+jqMsd6=pnpd+cCtqLYnMWLmrNQgjiyhi7ugeUjvA@mail.gmail.com>
Subject: Re: [PATCH v4 0/2] arm64: dts: qcom: qrb2210-rb1: enable Type-C support
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-usb@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, 4 Mar 2024 at 11:49, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Mon, Mar 04, 2024 at 11:26:09AM +0200, Dmitry Baryshkov wrote:
> > Reuse Type-C support implemented for the PMI632 PMIC (found on Qualcomm
> > Robotics RB2 platform) and implement Type-C handling for the Qualcomm
> > Robotics RB1 platform.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>
> Patch 1 added, 2 did not apply to my tree :(

Thank you!
Yes, patch 2 should go through arm-soc.


-- 
With best wishes
Dmitry

