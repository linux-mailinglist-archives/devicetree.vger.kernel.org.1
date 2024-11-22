Return-Path: <devicetree+bounces-123702-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 591459D5BE9
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 10:26:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E952A1F232C1
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 09:26:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9D311CB305;
	Fri, 22 Nov 2024 09:26:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Am26H4Fd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74AB818B47B
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 09:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732267585; cv=none; b=e+YEI4+JsSD6w8TjdW5tVhA5CVIHCfY5GeL92mvKgFkPK3vvHT/fJacflFBYXC98lCBPUkyHHKNOLrMk6WQHznQsROX96fT1YZMwslC380nAIjrOcZ4n8xcw9unf7T1z9WeY8hfRHogsNI1yRDBJXnD+oJl1e/apJ5NfVaFFeT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732267585; c=relaxed/simple;
	bh=dCo5WcETBMcNS9Qzzve6l/My5/g1x7ep5vh7uZGOmFU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fwdO/1LB7fzjqcQ61x/RRd7RVSKYOw5Fw/Jcg3Pb6gppMwkdzCIgS9TjPxJeX4qQxr6hBeaB7vmFovRXyk1T+F5PkivBWLpur5lZCVP0ZOASh/GVEyw6v+eJ3wGu17nniu+k5mWjvZKV+E9ZhK7zXIBGFvPATuMxBTiso/mUE7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Am26H4Fd; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-53dd8eb55c4so135847e87.3
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 01:26:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732267582; x=1732872382; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FkQ5Ep9WmP3Y9BsrfbLwUHrvE7faiWZQ86IAEJDAzQs=;
        b=Am26H4FdOs0u4J6kJCtyhZeJDSflM7/VdzYJKykIy3Sx5MQsOVeEHuYfmvjl02QHlT
         b0POBXIsWoPKQMoqP5v7gcE51ZyBY+gp/mXLXjDiAOmfM20oCRJX6pXSfwOY9GIXOdoS
         1tZ4yjGzhdmrNdbJjYVr5capzQtpD8nXvS4PS/rWf03+W6nNKTAVjl+e178QD+isk/eY
         URTCjHhKr+kkEghkWPt3lzavFqHpSwns3wsVWiAtG9uaKYOBZ3AenChWVgPO8zj5UTcI
         f7iiIDdKfv5vW5r9CSmOBm7kZT21pDiVN7ZnKaMors3ZRGWUiCkHnUFuzzp5TT9PHJOs
         U/4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732267582; x=1732872382;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FkQ5Ep9WmP3Y9BsrfbLwUHrvE7faiWZQ86IAEJDAzQs=;
        b=vG81wdxmKAJ9V54x7QT9vkHCZr44UJ93N5a1b09Na6pmwsexsHOcSoyIj1g1lnZW/e
         xR1TwTgUAxDlMR1dDKwRW/4R+3FsaQUZ2x8o3oJy2U85F0n1+9S4yfJ41NehI4b+E8sS
         u9IfYWp/CsT6oDz8g3ZcVLMpeQAlgP8yd+XaQmS9G09fmdC8mzYRP+boIQQNWRk2xWtG
         NmrOhUrw0cDTdhT6VLC4c18MbvjZYyUwzh0+l///p5G/8qcQpJWkab4Ae3lMJez905Kw
         Wbll0W4RyHqtOpbTshGvCIwRjHgyjECYiO3qSyNmwhuhfF0zpyt7PNqOSoLjnR9Peylj
         WbZg==
X-Forwarded-Encrypted: i=1; AJvYcCVR9tfxegnHgc8IClh6vr3AjVmexXlH/Ob4VpayWD5W+2N16M1izSQI0sb+30oTVo4//27TyxqEznVS@vger.kernel.org
X-Gm-Message-State: AOJu0YzzvMAxLx6d5BmMxxMHFGmm2AAiySz9ZHyiYUM9JOUjK5Y8BEC8
	HEZ1FikQl/AXYzS0rNIf1AwpH7CTmjSn0LnBpX/G5EYvKNI1rj76n+ubnNhXS3w=
X-Gm-Gg: ASbGncuQEe6wjemJl8tBqB9O/dEe28m+6kPfTRc3YH3JqX3DYarhwlGC4zpgYpKbgdu
	+/50dQCnsUNbZlYTFkcQKnqhPs0UidyKUTSKCTlcUoEW7EzhzZjMM5BQq6QHunEx6Zl0GkcgARO
	NmtRe0xXPEeS52Sl5tPXH7T6rLU/XRZ9y1G95QzwCeyqJHtgbs8DdKnvPe8nMi2+ZELC36nY5VI
	cnMYPZ7FVSLM3PxYwAh/7XpNaZRRnxUjUvxgAZhoxMhZFG/xxW1NC2Wg0gg4Qi9M+3BrjfVhxD4
	+vzrQp8fN3EWHMvuMe0rJryhHyj9VA==
X-Google-Smtp-Source: AGHT+IGjOSOUXKHpIv4ORalMWAD+9J6EICd3dwbmza26pZuvNjV9lmhvE7Y1AsjhDuKglOVOtMxGNA==
X-Received: by 2002:a05:6512:3a8d:b0:539:8bc6:694a with SMTP id 2adb3069b0e04-53dd39b55a0mr908182e87.43.1732267581687;
        Fri, 22 Nov 2024 01:26:21 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd2489adfsm301413e87.185.2024.11.22.01.26.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Nov 2024 01:26:20 -0800 (PST)
Date: Fri, 22 Nov 2024 11:26:17 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marijn Suijten <marijn.suijten@somainline.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: x1e80100-romulus: Set up PS8830s
Message-ID: <yb6hq6cknqizlmtap5n6lnp7gvswuakay5wrateuqakzjxfy4y@5fqsezlwqbm3>
References: <20241122-topic-sl7_feat2-v1-0-33e616be879b@oss.qualcomm.com>
 <20241122-topic-sl7_feat2-v1-3-33e616be879b@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241122-topic-sl7_feat2-v1-3-33e616be879b@oss.qualcomm.com>

On Fri, Nov 22, 2024 at 03:14:12AM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> The Laptop 7 features two USB-C ports, each one sporting a PS8830 USB-C
> retimer/mux. Wire them up.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  .../boot/dts/qcom/x1e80100-microsoft-romulus.dtsi  | 282 ++++++++++++++++++++-
>  1 file changed, 276 insertions(+), 6 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

