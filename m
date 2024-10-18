Return-Path: <devicetree+bounces-112823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 526AA9A3976
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 11:08:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 818F11C22986
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 09:08:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B6E818FC99;
	Fri, 18 Oct 2024 09:08:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NQYVm8mw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90FB918FDB2
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 09:08:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729242532; cv=none; b=aV0bPZVMtTfTK8FD9YwmH4QxsdpPfZoEFIf3PxUPEsLPoxo8FujduWWaKl2f5ZUseIc5nLiKh+fUL//Ko8ROMwAQL2SMdMidyy+iE75Uasqe5PmWYs7jAg87vcAc4vgpKVUicZOOrreNhv4NkHLt6pEDW0A5SXnpA/hXGquZ9OA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729242532; c=relaxed/simple;
	bh=P0QykGa6mmB3sO44cxFxtnrHxJzaPQAcbu4GIyK/+Zo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MGD3GazBCDY/ijNMkBq/vgtTDBOKBzzz25mhg/11iqfMoV7SFy2gwFEzLxVKOP+uXotT0dE35/e0Od0rGZekUAQlKECfjcoQRbc4CXBQ11AfjWQi0hZieX/41fKmsPO3WO2VoYBhhe3rdNygKPvA8Ubc6xoikXqgOrFq8wVkg/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NQYVm8mw; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-53a007743e7so2363303e87.1
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 02:08:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729242529; x=1729847329; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cxSM6qT+OeQgeWi7041bNluFuXTRIeAOrig+KBLZb4w=;
        b=NQYVm8mw0+CjTYZZ5HYHTbBH5UoPWGdr4pXCsrFZoVIu+FPi0WfRQ219BJ6sADfeWP
         dmx6WmsP2sbqccb7IRO+S4VI7BaVny5VyUnI7o/nvjEgpsNiilLm5mv3EtmONSueZtfd
         sDPZ/Ct5lAo3aHGvTTRAhRcDY4mxmIZki7pB/zs0t7KfZDFc1NQx9Hfx++LFRUsTx/Xj
         TZ5aZ4XgGsT1LOvU0ectC8gzhf2C5lXlU+GUqEyA7pFESnnfSpnQe+LbtdQTHNTZRTwB
         pE2J1kNfY/60rNyaUp9mo3BkybCT/teNoRkM+lyo1d1R972tvx4aHP7Ay4fH+5XRlCJe
         +ECg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729242529; x=1729847329;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cxSM6qT+OeQgeWi7041bNluFuXTRIeAOrig+KBLZb4w=;
        b=HsUSdSlYzPOtztf+R835Ga2lsSRpPtYEwYesDbkRZYtqqQ2Kvj3IKNF1oftjPUCpUC
         ugNZTGX/fbcbtGvRFzCCNTNpu/5wD33sTmO7QfoaxLhi1s24fdbHXNLDIdBLJgeZvwaM
         BYHSqNzb0pT0u1YMgUOHZWda4FVK8tvIm4onrb+yONkL5WHZg5Ts5d9MBW1YztfRSLcc
         6AsBYtXu3rFte3avtzp9fJrRoCBS+Z3ucpJvGl13ZPqHSSZxZTd4r4hKXaVmzcXQlpKt
         eO1sJuL8ge59jkybFqVaKZrSHtOQ++o8vk/LObrM3agrEbh2dwAKref+5LCPzTeaiHom
         xGlw==
X-Forwarded-Encrypted: i=1; AJvYcCW89pImhYV6BmQpk4TWzBKdlGqbz5H7NlxP1Ep78NnSTC1CZnIb9zpiWiJXuWTpqwttlE/bm9MN6W4F@vger.kernel.org
X-Gm-Message-State: AOJu0YxV8Si66UVNYtO6syFqBImqB9F3B991Q9F2CQa0TLlz6J6LW7gF
	h2SNu3/8iAvWs0GSh0yBsd/G4k2XnM8Jx8IgdMPRLqm0pX0LTIRPyaL1ksQSgRs=
X-Google-Smtp-Source: AGHT+IFoBABKezjNfDMwz8vy4TQ/qoKjudYMh40y6pmF7qzx8SUfzOO/4EPFP4GNYoeU5aVB7IDSKA==
X-Received: by 2002:a05:6512:4009:b0:536:9f72:c427 with SMTP id 2adb3069b0e04-53a154a93a0mr944874e87.28.1729242528547;
        Fri, 18 Oct 2024 02:08:48 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a152044a2sm165741e87.227.2024.10.18.02.08.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 02:08:47 -0700 (PDT)
Date: Fri, 18 Oct 2024 12:08:45 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Alexey Klimov <alexey.klimov@linaro.org>
Cc: linux-sound@vger.kernel.org, srinivas.kandagatla@linaro.org, 
	broonie@kernel.org, lgirdwood@gmail.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org, perex@perex.cz, 
	tiwai@suse.com, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	krzysztof.kozlowski@linaro.org, caleb.connolly@linaro.org, linux-kernel@vger.kernel.org, 
	a39.skl@gmail.com
Subject: Re: [PATCH v3 4/5] arm64: dts: qcom: sm4250: add LPASS LPI pin
 controller
Message-ID: <tg3el4x6hxwizy7oxyw74oeme4siore7l3ko2uofbnssb7roey@lrwmo5x6euc6>
References: <20241018025452.1362293-1-alexey.klimov@linaro.org>
 <20241018025452.1362293-5-alexey.klimov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241018025452.1362293-5-alexey.klimov@linaro.org>

On Fri, Oct 18, 2024 at 03:54:50AM +0100, Alexey Klimov wrote:
> Add the Low Power Audio SubSystem Low Power Island (LPASS LPI) pin
> controller device node required for audio subsystem on Qualcomm
> QRB4210 RB2. QRB4210 is based on sm4250 which has a slightly different
> lpass pin controller comparing to sm6115.
> 
> While at this, also add description of lpi_i2s2 pins (active state)
> required for audio playback via HDMI.
> 
> Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm4250.dtsi | 39 ++++++++++++++++++++++++++++
>  1 file changed, 39 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

