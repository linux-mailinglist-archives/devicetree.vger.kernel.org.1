Return-Path: <devicetree+bounces-123150-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3534C9D389C
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 11:45:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EF742281808
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 10:45:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D3B319E7E3;
	Wed, 20 Nov 2024 10:45:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yf5ob8iv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8788199E94
	for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 10:44:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732099500; cv=none; b=kqOAKvk+N7lRE4iGc9hhoo4KzlTDY+tcnEPSpjXuFNjDQVDBJcEhKGChAKSw5FivXTwdGaFhlbh0uRkaF/dRGJZztAg9JaBEmj4RtfMUASPfIK0IPPbzr4T9H4WVh9f/2lgSbWt55hbYYeoF03Q2cTgLad7Z7w3EsJjkTx1jm5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732099500; c=relaxed/simple;
	bh=t8rtOOyR1Sic/wfPMOnwbUSHPAhTaCWsScrHIcpxbPY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GDEJc99Eu/j6IUX6qv6otgYfk5+nFSq1xjh7/v43L1Gb8HffloSvx6LCKUOe0gN69ss2rgjX8q/P9YH4W8XkCuHtqxwDGPP4BO02ZS+aJvzq9ZulNUNWS7amQTYALu3bKM6sHFFV67j/qCuDrDviv5ozGUgUTK8aAwCtnRzx9K4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yf5ob8iv; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-53b13ea6b78so7273750e87.2
        for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 02:44:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732099497; x=1732704297; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Pi4AS2bqiAYTBYeemIAg6pMq2Y+iu6UwlnPqINFrgpM=;
        b=yf5ob8iva+5KQakqk/fttVKDvVkKSrF3Un2TW2zyY7X4QzP4Uj40/v/H2Gs7JTVZzL
         cHcXzZjDJGOz/WAC4iOq70o/Eekas5AJ9XM15xIL1iP5I44NyJe6o2V34XaNiS97lo5Q
         SwXa03q8x/OdWpXI5cIasqtgi5/9+F7dLedRA3peNJl/PX1N3IA9YdQVNOPwIOnhxGha
         EnIit227vuOc23ZkwipJjK2Lse3waNhg3QhmkwIjPyu5bD/H4WyLzgrAH/MGbqorxomh
         7kUX0rjc3FJLZlqqH4roY1pL7GBGki+++nd7P/+ZwpYnzHMPh33vCWsd/jCWI3JuUDlc
         WO+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732099497; x=1732704297;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pi4AS2bqiAYTBYeemIAg6pMq2Y+iu6UwlnPqINFrgpM=;
        b=PStgAUEMqkgpThx2iqKCb49CNGY+0PKXNxTz2AkIELth3dvWV6jS3VOYdjNIUPBZwV
         U0d1mHJ8teK3v5jjTJNJrWotTqqy6AI6CpeEjPfil6GLCBcooH2e/OqYbZ/Fnxj9s8mD
         wr4LCUEKGlast5Qh3QIKRIkNf6RwiQeAmL4+yJYKsovpjqE2ojxLLZnWZyzfGCEE3NyE
         bFjFZhw7wYtr8B00GdDPevC3J4FJDiJ1DJsJ/+DSs6lRujY0Bms6T2yF68sm6j3A5kcZ
         AaZQ55eGN22rKelR/qbxae42irzF3Fu+WfLLdnJqXajdWcKzuxO8HbffTrE5MW/TiUyy
         Wsvg==
X-Forwarded-Encrypted: i=1; AJvYcCUp1ajXvOe3y0VIRbs0GsO4m2R7GoqSuq2LZuEVDVJo7aMMOAjRn6AJzMYlG3/seT9q0YpqyePQ+5U7@vger.kernel.org
X-Gm-Message-State: AOJu0Ywp3IVPG4E0hDyVH9JglaGyIOXcZtEIsMA6CjjWw3bnx7bQ8umz
	3MDQGaxMAdyCUDV8SYruCEXtvfSERrskoMdZ1POlJE95UczwP1Ko8uau0OsGl7g=
X-Google-Smtp-Source: AGHT+IEoIfnJUDG/LMRTAC0O1sjcvijpB24W9ioyTCFzP31CzNbBxr8VZVPDrctyH9REII3PGnOH+A==
X-Received: by 2002:a05:6512:3d21:b0:533:483f:9562 with SMTP id 2adb3069b0e04-53dc1363763mr1368979e87.42.1732099496907;
        Wed, 20 Nov 2024 02:44:56 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dc4906408sm40174e87.201.2024.11.20.02.44.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Nov 2024 02:44:55 -0800 (PST)
Date: Wed, 20 Nov 2024 12:44:53 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Cheng Jiang <quic_chejiang@quicinc.com>
Cc: Marcel Holtmann <marcel@holtmann.org>, 
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, Rocky Liao <quic_rjliao@quicinc.com>, quic_zijuhu@quicinc.com, 
	linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, quic_mohamull@quicinc.com
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: sa8775p-ride: update BT nodes
Message-ID: <syvnrytilr4fm3zxh5i5trddqkdxgciqfh75srg4uug2qbbkyv@3ndtkit6ldhl>
References: <20241120095428.1122935-1-quic_chejiang@quicinc.com>
 <20241120095428.1122935-4-quic_chejiang@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241120095428.1122935-4-quic_chejiang@quicinc.com>

On Wed, Nov 20, 2024 at 05:54:27PM +0800, Cheng Jiang wrote:
> Add product-variant property to specify the IoT product line.
> Update the chip soc type, SA8775P-ride platform uses the QCA6698
> chip, which is compatible with the WCN6855. It's necessary to use this
> new SoC type to distinguish it from projects using WCN chips.

Why?

> 
> Signed-off-by: Cheng Jiang <quic_chejiang@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi b/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
> index 3fc62e123689..da52f425c676 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
> @@ -856,7 +856,8 @@ &uart17 {
>  	status = "okay";
>  
>  	bluetooth {
> -		compatible = "qcom,wcn6855-bt";
> +		compatible = "qcom,qca6698-bt";
> +		qcom,product-variant = <0x20000>;
>  
>  		vddrfacmn-supply = <&vreg_pmu_rfa_cmn>;
>  		vddaon-supply = <&vreg_pmu_aon_0p59>;
> -- 
> 2.25.1
> 

-- 
With best wishes
Dmitry

