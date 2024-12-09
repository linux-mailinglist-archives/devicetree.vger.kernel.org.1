Return-Path: <devicetree+bounces-128582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A19A49E9108
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 11:56:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8EC96164663
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 10:56:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31E0421765E;
	Mon,  9 Dec 2024 10:56:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cJ3NfQyg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF6B21639E
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 10:56:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733741781; cv=none; b=sMJl3uOtT9sCAyvcs++UfOOs4SGt775ZLwqK9l0wri6jevQP2GD+wbkF18acrterKEESQti54h9y+uVG3bmsDuXeqy/IpvYkX5R5NW2Z7QmKPf4gCqzJRwpSFcw4ENiIlrJ9bQ/ENiB7Nta/nd25clD/g8gdenc0WatpULpQnno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733741781; c=relaxed/simple;
	bh=MvjEr+QmcBYSFD+4yOMfFy5J+y5/erO43wRjxGBp134=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=o9zN/F5AXRW+F+Hy8fnGCsxo+XwTk8U9l7IASCXQ+m0/jbdhQ9QrMkS2L3ntAv/6njshWb4PkuwqnSQgsGCazPdgIV7HVYV9P8pqgPMBrX41qNyUMk5/qg4RIbFssKC6IzHtrl4NKTDd+FQOrGm+TjCHDr5ZsqM4XDC0xpwxoqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cJ3NfQyg; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-53e3778bffdso2805450e87.0
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 02:56:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733741777; x=1734346577; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=s1LCGkepE9BNY41wwancZQPMjgbX9qpsMb1C/mBNuBo=;
        b=cJ3NfQygvrCnHUz1YhqypYJYiFuhT4uUwvhmpez3mjHDRzZZRMBdFD3aBlcQocSGVP
         QMi9lDv2NlEC9MDche/rEAOuJn0/+NKCZUQaM3JZvP/s0eavqk9x/oZQ4/8i0OwnNJ79
         y7OWe777vevFgqZ4gsWQJG1FpXm50ZYyihn5tOKOw6sqz/MX7fJW1/rQru9iQDUpLZc2
         gSgyqQQAM9ODTyP99A1dr+DRz2hUgN5NXcaPNJv7NREy0v+kAma9Zaj3qbG9AqFLpkC/
         yyrxMf5SSXNA24r+g0+leBQupql+B1aG1LhQANzOnk9wwS880CRLDnL/cUHnEhSPFNmX
         9w8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733741777; x=1734346577;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s1LCGkepE9BNY41wwancZQPMjgbX9qpsMb1C/mBNuBo=;
        b=F8+cazmoQ2l46aqYJ3DC6dYe2Jssxb6H70qQzNu1Lg0lzHi0mxZIIujshqReHiIVmZ
         MB/6vJmM+gEK7WbLY3wDVON1M/W5RO+va8Atmqybwk/PIwnoGesBtzw+0IY5kbJMNvw7
         WSXp/MBADHZv9N31YrrdFZHeIcxZfyoqzbVCWBi5Xf6B8Tgt/joRFveNx8Aqrgi0bXex
         Yed4YRhtHbLe5MY4ERizQEcEha9ldlwkaESNOv0B0Nf6Dj/k+Qf0xUx6RD2VpxsSZNkQ
         iu6jVrgC+FTfUq+wCwD8d71zTwzTorpaQTHZUfBPjvAcCOyQql4YA74iycIgzcHfIDt1
         QOqw==
X-Forwarded-Encrypted: i=1; AJvYcCWbJ41V8dKr4Qfd0u72qPUIAkHZyOZYA65PKe91W69Jj+eCBdAxS3ED7fdunlFkRjBulyt2v44jEThA@vger.kernel.org
X-Gm-Message-State: AOJu0YwRne+YXVLoeoe851bW7xJRX/hpSTFWs6Di0zDU57yUK32zlXlr
	0aCi78U52FJ2o126cfRZzhm1Re+uW0RwHAR6/tNaoI4FUBxJoN3uJ5oFqklD2mI=
X-Gm-Gg: ASbGncsOX/uTtfMF3Yik50Vmu+J8XtragtDefi04xwx+dJ2uUpSlmT0G1CqCyf5CzXj
	N+bNz/nMB4q8bSMdzLegPvR8nBdPDEZgok9igwdST1DcoNOHVdmTEM7FbNenyHmZkKGv2S/42WI
	a4LpmWPyp7sgvly+uC/yXGgyUUcQek8B2GGO7FRsR8madDagmyw9DxsThNt2a0tuu8WicamIp0F
	heCTkMGC3VpFuoW51Hm2i1Ks3RVe32HHRfwAxgM5VQoXM2BIJH9c0BWBARUp9Faym4ujAcLZ6g0
	R2fjkNZBKd1o0IsoOR8wfYekYyeCAw==
X-Google-Smtp-Source: AGHT+IHLQhW4yrOheTO3FKBH2BMc3+YO6hNqRhmWtxjdDrWhydjjQ8nuO7eWSOcahHRapkZ5ee4u3A==
X-Received: by 2002:a05:6512:3990:b0:53d:a321:db74 with SMTP id 2adb3069b0e04-5402411a69cmr1638e87.50.1733741777425;
        Mon, 09 Dec 2024 02:56:17 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53e3745b0bbsm930193e87.185.2024.12.09.02.56.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2024 02:56:17 -0800 (PST)
Date: Mon, 9 Dec 2024 12:56:15 +0200
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
Subject: Re: [PATCH v5 2/4] arm64: dts: qcom: qcs6490-rb3gen: add and enable
 BT node
Message-ID: <cros4yf4mwtu24xdpevpixlmtt5si6ywjzacezemhsmkfsomgx@gtjaznwqvjsm>
References: <20241209103455.9675-1-quic_janathot@quicinc.com>
 <20241209103455.9675-3-quic_janathot@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241209103455.9675-3-quic_janathot@quicinc.com>

On Mon, Dec 09, 2024 at 04:04:53PM +0530, Janaki Ramaiah Thota wrote:
> Add the PMU node for WCN6750 present on the qcs6490-rb3gen
> board and assign its power outputs to the Bluetooth module.
> 
> In WCN6750 module sw_ctrl and wifi-enable pins are handled
> in the wifi controller firmware. Therefore, it is not required
> to have those pins' entries in the PMU node.
> 
> Signed-off-by: Janaki Ramaiah Thota <quic_janathot@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 168 ++++++++++++++++++-
>  1 file changed, 167 insertions(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

