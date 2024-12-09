Return-Path: <devicetree+bounces-128583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5469E910D
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 11:57:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 954CD16181C
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 10:57:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 310D621766B;
	Mon,  9 Dec 2024 10:56:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="o9sTKXLi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4679B216E24
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 10:56:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733741819; cv=none; b=keZr+2bCud0CiOGmq2EETwmn0hU3VlnqwcbyhXv+5fdOnpLQYw8O15ruehbaaA3oe4HTUABSginhA2SD9YCrS+INy3CbXJVvNExZzVBH8QSI1PIIo0vhfzkeuCslKh/GjpKt+3p0+Fb81YMWq+FzLtgzzDum84baBefZ4yBIwqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733741819; c=relaxed/simple;
	bh=+hIqe/S4QmDOQhbBqmZWXMgHf/K5HX6ZKx4rNqDaI+c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tCBvAA3CTQSdTCqlzOK95X6QBuiLyXD/hT47TsSUUHlkjnc9Jjy2AEg6+ylV6FLr54k8ZTnnVFYEtLcwf8BpfxsavHHAe+TGpXvS85DHipvUVF4oRo09Uy6lzmrVvpCqA1SGIXTBv1MfI8UbaiIKbsabAx1BRTWq54vU+5i/r+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=o9sTKXLi; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-3003c82c95cso17914451fa.3
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 02:56:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733741815; x=1734346615; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ujaAnVbj3AWarK9qtUD67P4FOEUURSL/PjGWuchpTYY=;
        b=o9sTKXLiYAY9D6gd+tBUC/DKVB1LSXHY77IFItaRz3YQACOwIi8PWrunjfnC4ZzISG
         baEpaAf7xWvTWqvKrCL3FNgDrrKuhKDBfqP+6QGy159jkX0qMSGuZ+pWWrCNhIYytPPA
         0inDWB6cDBbCv3gtF4nMXuE43+ZExKoWfY/h+vNJr64y0nv/4qm1ufJyT3T4tfE8Miac
         AaJ/YCvR2BJDPfibUmjlEt22horOEswtwINrJJCoWkmyHRcH2ioA8Gfhwx/AWjJbAk+h
         kJlCU4Kn2opYnLVqs8pQK4mljVLLHcGigNgdFQgp/nP5S5woZRkYW1T0r60HvymGWo0I
         EqZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733741815; x=1734346615;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ujaAnVbj3AWarK9qtUD67P4FOEUURSL/PjGWuchpTYY=;
        b=apxEG/njQDdrvzk4mYQUhnklvxh8oNRfDNciIf8Yr9bmvPGLUybbqotgtYUuz6SHZV
         Oj3Aq30wB2PsEsTGSZHZ7RFsOiOYo11lCgAHaDF/M63AFf8qiJzODJOWeqXnhgRw6qrt
         LfOKw8DBgZ5Fkd5CDpFTtEMUgPlps6F0qDZ5CwmSd7l4PhubsBuwh9IpkxueyQ9pQO36
         3kvWtLdtGPE383Sb0ZvCcyW7W2P8eHCr7+3ycfyb26WJkcSn16Li01BKpiWpRHPMtHQk
         CeFRbVP1K7r0A/H3/CR3FwEeVvvR1k5m/1/YFD8DW3yWDbC56/orMVdGZvMFabX3qXRV
         dtDA==
X-Forwarded-Encrypted: i=1; AJvYcCWeFv0MG1A36Oy3GCK7erCn0W7aFLDGtVRYWQCESI2HYNjf07vzPTcr88QpWXH6WvrjW9T2CmdtxSLD@vger.kernel.org
X-Gm-Message-State: AOJu0YwirGjJEj87t7hb6sMOTLHJQL6unHs/KR9ttWqPGI8NQkAEYqHm
	rCK11zYDeY4dLPLb8Z+EC8IybSFFD4e12mN4Era/mqQ82gGvhryrLb4AltVip7c=
X-Gm-Gg: ASbGncsbZGcZ1p9Gt68KUzptT+ge5yqHslzNhk85NrZ24xzsKVsee3oJ9zyp+9htC/j
	tZAiVgnQMqvlHaZSf+YlO+MCMexFMGcWI+b4kqd7Di6XAZvxqYA4HXy+Kyc5lD97F+0Nzrz/Wai
	58MGwfcQMAfJCPqzGexWQbetHI86hmzyOHm7DCN3qt+Ak5QlxHii9quFSBSlypvAQ6aezVkgcXr
	f4rrQHIYXyPY5N3IU0ksHf0nkOxASoGRP4N+ZRsZR97hhwUu8snlgGy5dDHna5HTbRJigugH0zR
	w+cXh5RYN1uvUPf7zmatgnZ1hUwJNQ==
X-Google-Smtp-Source: AGHT+IEe3E3bVz43C381ijw4BD9zV4cmUVA4lOxfc676Po+XiC+s2QUjs8LbA4yvZYwgljPHeTSG/A==
X-Received: by 2002:a05:6512:b15:b0:540:1ca7:4fe9 with SMTP id 2adb3069b0e04-540240c97b4mr13875e87.22.1733741814988;
        Mon, 09 Dec 2024 02:56:54 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54020269fdasm214549e87.182.2024.12.09.02.56.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2024 02:56:53 -0800 (PST)
Date: Mon, 9 Dec 2024 12:56:52 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Janaki Ramaiah Thota <quic_janathot@quicinc.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Marcel Holtmann <marcel@holtmann.org>, 
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>, Bartosz Golaszewski <brgl@bgdev.pl>, quic_mohamull@quicinc.com, 
	quic_hbandi@quicinc.com, quic_anubhavg@quicinc.com, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-bluetooth@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH v5 3/4] Bluetooth: hci_qca: use the power sequencer for
 wcn6750
Message-ID: <heyjpkzb4cxomosg4v5rzco3gi5d32vyecuyfgu2au22p5utat@2db4a3mxtblg>
References: <20241209103455.9675-1-quic_janathot@quicinc.com>
 <20241209103455.9675-4-quic_janathot@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241209103455.9675-4-quic_janathot@quicinc.com>

On Mon, Dec 09, 2024 at 04:04:54PM +0530, Janaki Ramaiah Thota wrote:
> Older boards are having entry "enable-gpios" in dts, we can safely assume
> latest boards which are supporting PMU node enrty will support power
> sequencer.
> 
> Signed-off-by: Janaki Ramaiah Thota <quic_janathot@quicinc.com>
> ---
>  drivers/bluetooth/hci_qca.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

