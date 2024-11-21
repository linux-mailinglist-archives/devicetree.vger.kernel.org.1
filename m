Return-Path: <devicetree+bounces-123593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D539D5598
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 23:44:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C4FAD1F2490C
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 22:44:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B6CD1DAC8E;
	Thu, 21 Nov 2024 22:44:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="g3rBFSj+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA0771BD4EB
	for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 22:44:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732229061; cv=none; b=S56wBTmnmhXpirRIk0PxHl3dwkC+fMPCwLwsUnujouHnawuPBAWelyajukzKw0FN6BZYfGUQUaVVb/Bx+2CZ+FPCd7hQ0Xt515lgxd1xkWaiDpYouag8sEixsr2GNg0tiA8Pq7WcwGnGYauGF82Ea82z50CnPKVcceXhN8pGh5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732229061; c=relaxed/simple;
	bh=UvqKl313UbCoQrV81fFTtqVbmffHswlTT+HQtjKyoJ0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SlnluL5ckzZ7B82wNYj1MUMOeRn0JlW3YPN8/Wge5zWj+bbI0WwhK2PdKm0YcO7x8JbkrnFaM0pCKmDHIw/4jYYFc1zNyZATnNnsIplozkL0n+VKr6pxss4TIeONFzCxwqa/NFXd01w6DxeiF5mF28LvRpGlWZcQYKKErPhy/JI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=g3rBFSj+; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2fb388e64b0so17911131fa.0
        for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 14:44:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732229058; x=1732833858; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=q/Nja2Bb51yLaelcKPmFVLsubQx3+cZP82+7JwtW4Xk=;
        b=g3rBFSj+cdb2AX+iX48C7PMjjZFTT9h1MTUkIcCOyk7kbfnHV0RQ98W6nG+aM+CHQi
         3+9kVmMUWjQ2G8aecV0N1XMwYRQPZklcZ9ygPLE2/Fl3j0MUK3MZB4f36NMCdzX0EnNT
         URfeh+mcVCEb8RdKF7Zl4xRAZUgDA6UTt5ateX3z3rmudcKaahZCy7GrUcODVke95y3h
         O5MkiBqtIvIdfqR86hk433wRxWZxPAVkcr7YoPzkd5et3/aG4YuvCzZYRpW+StKni7NL
         0RlVXsdrwTzq2P9UI6g3jzblCafTbRdWHLGlKTjheJjl5pcgfPyedBBD7CkWvSPCFQ2Q
         OZZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732229058; x=1732833858;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q/Nja2Bb51yLaelcKPmFVLsubQx3+cZP82+7JwtW4Xk=;
        b=g2q4va+yUV4ml+dGNYeqLgl4KwnI9dYnr68JDS2pjgI+sPPhc685BLcUxRC9oguaL6
         rVTDsxrGtxeCvlDAXnh3JMqW+ZsJtZDYNnuZlXpJmQvN5oSt1BhNh1/rzoHY5mWjUVyt
         pXhJfcPn6HDRkrTcnFapQSmYoAj/FvngLxrXJZ5/93cuOOEtMNKmqUiQmeWBA6z68L39
         PfTXezoMBwkw2WUa1Xi+Mx3TH9Iu8o+teX5TgHVRdmZmpIliy8EgX59XY51npYxO90Ow
         5FPhMhPUqPisVDL1N+EojR/k8x9f2G84UrnezU77+X04wIyB+MwBHgJ7UCf6+7We1IGP
         hllA==
X-Forwarded-Encrypted: i=1; AJvYcCUm6yo33BUxGK+HkznBZ/DZhzXT6urZGBQ4xSSMqWUdV/YMSX23LcQOf4IKLjYTgg6Nvb/hpqUtfJQh@vger.kernel.org
X-Gm-Message-State: AOJu0YxoG8qCOKPkLLFZ3Plx9CmjycnQ9Z6A6HDGB8/fGHh071ux7bYH
	UXAAhKZ6xIQjvhP1hrRHIc8a2LS3B7i8C/GAYny5MHbr7Yy0ecRVu5jS6rG3zJw=
X-Gm-Gg: ASbGnctHI0p5q5YmdZH9SbKcQ0gtOvYJNBNEpC/42EGMwblOc8StB/asoTuWaHmXtaz
	OUEDOV6NdqD6oYM8XaJ4NVJfi2/Pa8CGsBJnbDmmXvbctA6SCNO51f8MK4JhjoilrNgsjF9QF1V
	Xc5UAW6O4VOBal/D7ya/fygVeClS53blQIvstnSwZYZeeyiY553ZFlXfpHgDGdnNF23+rCX7gVJ
	GxQzJCfisDOXoZ5iE1t3DLI+WN1pCTSHVxuzQ9YjQ6t3vv0pCRtwQvA83/mydD/PWmU//EZiKfV
	l9QafUltxcNKl4cQPIoK/rDM8geFIg==
X-Google-Smtp-Source: AGHT+IGbReTR075Ouxz1EQlRJI//zuSXefAabMn1r5zxrv9eXDCoMRD5JejlOdypknkykXEjg8Eg3g==
X-Received: by 2002:a05:651c:221b:b0:2fb:5723:c9ea with SMTP id 38308e7fff4ca-2ffa716ce5fmr1747681fa.30.1732229057836;
        Thu, 21 Nov 2024 14:44:17 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ffa53769f2sm665281fa.77.2024.11.21.14.44.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2024 14:44:16 -0800 (PST)
Date: Fri, 22 Nov 2024 00:44:14 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Krishna chaitanya chundru <quic_krichai@quicinc.com>, 
	andersson@kernel.org, Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
	Jingoo Han <jingoohan1@gmail.com>, Bartosz Golaszewski <brgl@bgdev.pl>, quic_vbadigan@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/6] arm64: dts: qcom: qcs6490-rb3gen2: Add node for
 qps615
Message-ID: <berrvurtuyujkgy7q7hn3flx5lfusrskxh5bo7xvp374zojcro@v5mkoea2xkds>
References: <20241112-qps615_pwr-v3-0-29a1e98aa2b0@quicinc.com>
 <20241112-qps615_pwr-v3-2-29a1e98aa2b0@quicinc.com>
 <ngjwfsymvo2sucvzyoanhezjisjqgfgnlixrzjgxjzlfchni7y@lvgrfslpnqmo>
 <yjwk3gnxkxmhnw36mawwvnpsckm3eier2smishlo2bdqa23jzu@mexrtjul2qlk>
 <a4146b5a-a229-4441-b123-d13e72ab4472@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a4146b5a-a229-4441-b123-d13e72ab4472@kernel.org>

On Wed, Nov 20, 2024 at 02:28:29PM +0100, Krzysztof Kozlowski wrote:
> On 20/11/2024 12:03, Dmitry Baryshkov wrote:
> >>>  
> >>>  &apps_rsc {
> >>> @@ -684,6 +708,75 @@ &mdss_edp_phy {
> >>>  	status = "okay";
> >>>  };
> >>>  
> >>> +&pcie1_port {
> >>> +	pcie@0,0 {
> >>> +		compatible = "pci1179,0623";
> >>
> >> The switch is part of SoC or board? This is confusing, I thought QPS615
> >> is the SoC.
> > 
> > QCS615 is the SoC, QPS615 is a switch.
> OK, thanks for confirming. Just to be clear, I understand above as: it
> is only the switch, nothing else.

PCIe switch, networking interface, but not the SoC (and not a part of
the SoC).

> 
> Best regards,
> Krzysztof

-- 
With best wishes
Dmitry

