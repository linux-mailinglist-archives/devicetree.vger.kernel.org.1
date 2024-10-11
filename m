Return-Path: <devicetree+bounces-110399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D171B99A557
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 15:46:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7015DB22F23
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 13:46:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1CD1218D81;
	Fri, 11 Oct 2024 13:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="E5J6Rrf6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F37E11E501C
	for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 13:46:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728654382; cv=none; b=Y8CrErkxWRP1YiOuITAoM9xMo8I/k64Qq4++xxCM+rKm8bN//wl8qZAwyhh8wxQYnb4jr3XBBn0Oah5WbHi45jFBkLdiPXja8Qf5vcxJLDU2YOOd+thpktcW1qeKY3PpoB0JtaRcuz84OcXtvlx2enfqnD0D8DnkvY5v197B6CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728654382; c=relaxed/simple;
	bh=VJaPpp4TLczwzhXW3P2gtWgzrHXuPSe9IErTBJ2SXSI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y1deBRzZY353vh9jAAhA83s+J48vqMYrREvgaYdtT7wankMXnc5zc8Czlo2KiNJB64woD5iVHKjSFfQo29lbs8pxDvGVs25VojzHsNMb613iigVyLzm/Eb6nzJYifnRNTyHCnJ4ZsjknNC6qrSF2ok34eYiks8gwFbFbYFYzLV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=E5J6Rrf6; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2fac787f39fso23120061fa.2
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 06:46:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728654379; x=1729259179; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=r7SEOWo2TItqUv0ycD+sGD/yn3hMJOF7PM7SskMyyO4=;
        b=E5J6Rrf6OksJ1WSo9h+JiW7ZqmUEWyPOI+s0M9MxwQKFUu4ACFqZ2BCAw/Pvliq2A3
         6iEWrsGx8D3FmYxq7A/CN9DhDNZoCTElASNPWGt9LmV+jbrV1fOKP8dhBGm0LQGvf7xf
         NkppM8TdukQ2jcIrCSz6abERjTkiB2xazgpfr6lB/dgmtmloMGDDT3wEFXqeeIS0PiSZ
         qgsJc256iwdX7thdWdYZfJcSG8UFk9RjAZ8N2FmPgOc9fLY7F+Xfn0Nu/IgxjSIxjByQ
         MqlzSEVIpV5ppgpcykL3kfTC2IUZOkUzJ5ITt6gagMQq8da0CjRzJaM/j617jrQsMGpH
         7luA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728654379; x=1729259179;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r7SEOWo2TItqUv0ycD+sGD/yn3hMJOF7PM7SskMyyO4=;
        b=iLQnNP+OlYkBT+8pkkBzO2UN9P+ZrBwrvhFQ+oHp4SNX6IIQMgh/dXaV62s4+YviCX
         kjVicdeiciXXB9RNuqu8re8oKiYJrfYXG2HcoMQFjq1Sryz1sIuc1Xho6fBPR7wP5MxG
         lLFlEk6FzCXU2mtdxlomxZ+UarI5MXjlNiAtHno0zxNoiQE59O1MWpTD/sbCqAlIDr70
         RgUGaeWkOJhDiB8CcF7Yq5vdwB55TiHC53UUmf1MvRt7WqIWXX/vtwsuHQF9kEzynX9Z
         bgvs88Umc/3lVTRZ3ULKzPUg9tDdOHmmi2Rw4D/YN7jmczlKK7pRKLzaTQ3C2hHyNHAz
         ekdQ==
X-Forwarded-Encrypted: i=1; AJvYcCUdXu9huEVVWXkm6OviAQSZ9R9iP0k7B8x30VBkhlY4fk6QOEG6jEOQsAMbFX31nOKAMPmK9+iO1S+H@vger.kernel.org
X-Gm-Message-State: AOJu0YzntbfDwNBzaP2hC17cbT2SmMIRSExTzgPSoCyDkXsN8keWux77
	cVkpjYt/e3ML1lHIKe6Pe48QMG4wqHrpu7weFJjJCSqRUlaBrddVxvCCGTKo5pg=
X-Google-Smtp-Source: AGHT+IG0BjU/TLr2o6JJJ2hysZ+nJgvyqDtiTBfydl6C/4djbRMDY5pNlzeGH3tNFx9ay8FMRX171w==
X-Received: by 2002:a05:651c:512:b0:2fa:c5e5:629d with SMTP id 38308e7fff4ca-2fb326f7418mr16195141fa.3.1728654379037;
        Fri, 11 Oct 2024 06:46:19 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fb2474bdbbsm4938051fa.103.2024.10.11.06.46.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2024 06:46:17 -0700 (PDT)
Date: Fri, 11 Oct 2024 16:46:14 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Kalle Valo <kvalo@kernel.org>
Cc: Jianhua Lu <lujianhua000@gmail.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jeff Johnson <jjohnson@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	ath11k@lists.infradead.org
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: sm8250-xiaomi-elish: Add wifi
 node
Message-ID: <p4j7i6fbr7htsh44vumlsziuhbl4phqok4zxnubdvyrjo2cllt@cez4iynfjayt>
References: <20241010072243.10227-1-lujianhua000@gmail.com>
 <20241010072243.10227-2-lujianhua000@gmail.com>
 <pbsooimr6l65hgyxezyp6ha3zqibgdlphmeb7vtghgy2wti66b@fsmptbss2zvi>
 <87h69i7v8c.fsf@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87h69i7v8c.fsf@kernel.org>

On Fri, Oct 11, 2024 at 02:08:19PM +0300, Kalle Valo wrote:
> Dmitry Baryshkov <dmitry.baryshkov@linaro.org> writes:
> 
> >> --- a/arch/arm64/boot/dts/qcom/sm8250-xiaomi-elish-common.dtsi
> >> +++ b/arch/arm64/boot/dts/qcom/sm8250-xiaomi-elish-common.dtsi
> >> @@ -680,6 +680,25 @@ &pcie0_phy {
> >>  	status = "okay";
> >>  };
> >>  
> >> +&pcieport0 {
> >> +	wifi@0 {
> >> +		compatible = "pci17cb,1101";
> >> +		reg = <0x10000 0x0 0x0 0x0 0x0>;
> >> +
> >> +		vddrfacmn-supply = <&vreg_pmu_rfa_cmn>;
> >> +		vddaon-supply = <&vreg_pmu_aon_0p59>;
> >> +		vddwlcx-supply = <&vreg_pmu_wlcx_0p8>;
> >> +		vddwlmx-supply = <&vreg_pmu_wlmx_0p85>;
> >> +		vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
> >> +		vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
> >> +		vddrfa1p7-supply = <&vreg_pmu_rfa_1p7>;
> >> +		vddpcie0p9-supply = <&vreg_pmu_pcie_0p9>;
> >> +		vddpcie1p8-supply = <&vreg_pmu_pcie_1p8>;
> >> +
> >> +		qcom,ath11k-calibration-variant = "Xiaomi_Pad_5Pro";
> >
> > Let's wait for Kalle's response.
> 
> Sorry, I don't know what you refer to here. I have been extremly busy
> with MLO patches so drowning with mail right now :/

Just an ack for the calibration variant name. Jianhua has also sent the
BDF file, [1]

[1] https://lore.kernel.org/ath11k/ZwR1hu-B0bGe4zG7@localhost.localdomain/

-- 
With best wishes
Dmitry

