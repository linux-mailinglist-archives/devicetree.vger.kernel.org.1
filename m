Return-Path: <devicetree+bounces-131283-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C552F9F2BBC
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 09:26:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EA5FB1666B6
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 08:26:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6B8F1FF7D4;
	Mon, 16 Dec 2024 08:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wJwivIBa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1459B1FF7B3
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 08:26:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734337583; cv=none; b=Xh0aQEuVLq1DBGSyfxXJFLzNTvsGOnoG+yAn/gSqmSDJkp5w6qNRwMyt+jb3CwmYy0RzmNVLAIvjmjTmKyAm4YYh2tPMZljh0AjPP7/5Rya8zpyOJXlQxbcl3fEDNhy6eNKZNU/kkwK1+id2o6Pef93Esd/+Z/Pa5dHwp69EjMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734337583; c=relaxed/simple;
	bh=jtn6Pm5T3kv4l9SAFuqVXKL9jZb3vLGRYnCPnSPFP8w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EICNvS4rYDX0ezC1m3KS/I3d7tBG86u29ycjJqxorPu2x7xhNgBelzklu/a1LbgCZToY+5pGwD7+Heu1ESPukHSSxOBvzn83451URPVWQ0GQbjoZpoqRdDjieWb67F6nnRrUTjsikB3gpbeD+kySCLCdPzI9iOepYbbxXYv8cUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wJwivIBa; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-21644aca3a0so44030015ad.3
        for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 00:26:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734337581; x=1734942381; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UMxPAd8z2FmVKP4SzaClGo5hrcMgeeddGCLGfliuqKc=;
        b=wJwivIBaGuIsSmXVd4DY2UZjTuQTTdLuqXAXkwu4+95/cdAFZkqBoH8WZ7vLead/Sx
         3iIYkLCFBJVY/MuOC718z3a1OoR3AagtddROR7xU/unCM5OPW+9biM44beFra7TQh5HF
         Hg5Fm6fNa8EL5ULF7wNHCRQLav8/AO+oXrvW5KwhDDWEJNH/8HwEjvpn9e0hdqo2+mqQ
         mC6FHUR3dMoL8GPWCwZvDUXNpswrv/qBfXvnrQT3kJ0p6enm3W/MpDZ683qvnSlYOJ4K
         Y7ZMgY0FvVVMKpa9gQKYHh9N9zb8zT2i6m8eIqeX1qjugh81YZ+iUBePNIoEnbEXv+BG
         Jprg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734337581; x=1734942381;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UMxPAd8z2FmVKP4SzaClGo5hrcMgeeddGCLGfliuqKc=;
        b=vbGV3nUxnCXVsUhXKwYvm60G9JoZ9oRoZltQ++ksk7uf5LIzFAkvo+WSMsMQ9FU+Rp
         0e31XDQjFZ93lEz2Z7KLzheUP6h0/tmOatjRl9bwkN7Cz4J1uXixaJ6tHe38o4FX0l85
         75SWRlfb5nhGPxewYSMxox0YwrwdpXV2HbR+1fYOP816HcRPYy10ZTDdUuLUnorqJqK3
         NYEpUkiSOIdli6a1lZoWsu6HyjhqeOcskPbHeGzGryaF+JrdN68Eny64RKE3mhD3ZY9m
         SacHDgk/uJE9UzeShPxSdtEJcR17xElkrJiKmmSwDxTNZ0hCzd7uKb46nv8Szy4eS7Lf
         X5mA==
X-Forwarded-Encrypted: i=1; AJvYcCX/GuXUBFudzjM9OyH0K+7rZmpogzNVUZ43zSjGji5yXZdI/Hb0UQSSZ+Zxp6RDSzrDxHf9qRE2PGwy@vger.kernel.org
X-Gm-Message-State: AOJu0Yxsc0JK+CDtqOM4sjYN2+bvbJgKacS0DoLQcdYdmnKsxMVS5ETC
	lVAjsOT4X/TreOxgj0oX6S/wiKTHVekrxg3sUeF8gfVHh3wP4PiWUqsnmU/UzA==
X-Gm-Gg: ASbGncsgFvGMZQsvOJeuFynu3RJL/K5IdokHf7xCUycCbjA/xD0XdPq3rf9kzuR6z+0
	mmcsgffwJpX8Do0ARzIqccOD2nwLTLTRo7wbfrcQtr+8I/J97y7RqgE77KZSrhnXQtbNnW1GRuK
	v++aCyiY8BPtXEhCil8TpJ8wm9rPQwqyBXj7oOQcFwqzjn6eDR6YQlC0p7wusn5Q4uzD4yNbddA
	OMWzw+Q8NNr0ksjT664/WsqvmMdFR2l6lUa0AnEg8tdlxpHXFDuyD0hQ4PC09chvS4=
X-Google-Smtp-Source: AGHT+IENA5UYsb1sfFGlrjJqHLC9gUwTByUIMXg+G63HTX6mypdVpLxeXK41K0rJQNY6hQLTWIpi6w==
X-Received: by 2002:a17:902:ce01:b0:215:50fb:ae4a with SMTP id d9443c01a7336-218928bc06bmr188269365ad.0.1734337581219;
        Mon, 16 Dec 2024 00:26:21 -0800 (PST)
Received: from thinkpad ([120.60.56.176])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-218a1e5cae5sm37350505ad.191.2024.12.16.00.26.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2024 00:26:20 -0800 (PST)
Date: Mon, 16 Dec 2024 13:56:06 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: Lukas Wunner <lukas@wunner.de>, Bjorn Helgaas <bhelgaas@google.com>,
	Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH 0/4] PCI/pwrctrl: Rework pwrctrl driver integration and
 add driver for PCI slot
Message-ID: <20241216082606.zuczo34ugysc2vdc@thinkpad>
References: <20241210-pci-pwrctrl-slot-v1-0-eae45e488040@linaro.org>
 <c5c9b7fc-a484-438a-aa97-35785f25d576@quicinc.com>
 <Z18SkkuPbVgTYD8k@wunner.de>
 <20241216052107.tyhwzh4g3tmnp5ll@thinkpad>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241216052107.tyhwzh4g3tmnp5ll@thinkpad>

On Mon, Dec 16, 2024 at 10:51:18AM +0530, Manivannan Sadhasivam wrote:
> On Sun, Dec 15, 2024 at 06:32:02PM +0100, Lukas Wunner wrote:
> > On Wed, Dec 11, 2024 at 05:55:48PM +0800, Qiang Yu wrote:
> > > PCIe3 is able to link up after applying your patch. Slot power is turned on
> > > correctly.
> > > But see "NULL pointer dereference" when I try to remove device.
> > 
> > There's a WARN splat occurring before the NULL pointer deref.
> > Was this happening before or is it new?  Probably makes sense
> > to debug that first before looking into the NULL pointer deref,
> > which could be a result of it.
> > 
> 
> Precisely.
> 
> > 
> > > [   38.757726] WARNING: CPU: 1 PID: 816 at drivers/regulator/core.c:5857
> > > regulator_unregister+0x13c/0x160
> > > [   38.767288] Modules linked in: phy_qcom_qmp_combo aux_bridge
> > > drm_kms_helper drm nvme backlight pinctrl_sm8550_lpass_lpi pci_pwrctl_slot
> > > pci_pwrctrl_core nvme_core phy_qcom_edp phy_qcom_eusb2_repeater
> > > dispcc_x1e80100 pinctrl_lpass_lpi phy_qcom_snps_eusb2 lpasscc_sc8280xp typec
> > > gpucc_x1e80100 phy_qcom_qmp_pcie
> > > [   38.795279] CPU: 1 UID: 0 PID: 816 Comm: bash Not tainted
> > > 6.12.0-next-20241128-00005-g6178bf6ce3c2-dirty #50
> > > [   38.805359] Hardware name: Qualcomm IDP, BIOS
> > > 6.0.240607.BOOT.MXF.2.4-00348.1-HAMOA-1.67705.7 06/ 7/2024
> > > [   38.815088] pstate: 61400005 (nZCv daif +PAN -UAO -TCO +DIT -SSBS
> > > BTYPE=--)
> > > [   38.822239] pc : regulator_unregister+0x13c/0x160
> > > [   38.827081] lr : regulator_unregister+0xc0/0x160
> > 
> > The WARN splat seems to be caused by:
> > 
> > 	WARN_ON(rdev->open_count);
> > 
> > So the regulator is unregistered although it's still in use.
> > Is there maybe a multifunction PCIe device in your system
> > so that multiple devices are using the same regulator?
> > 
> 
> Maybe the regulator is shared with other peripherals (not just PCIe) in the
> system.
> 
> @Qiang: I referred your patch [1] that added the slot regulators, but they were
> not used by any peripherals other than PCIe. Could you please post the list of
> consumers of the 3 slot regulators?
>

Just looked briefly into regulator_unregister() and I can see that it will get
called only when the regulator driver is unbound from the regulator device. Your
previous DT reference suggests that you were probably using fixed regulator for
all 3 slot regulators. In that case, this splat can occur when the regulator
driver is unbound (module unload?) with still one of the consumers holding
reference.

So somehow regulator_put() is never called for that consumer but the regulator
is removed. This looks like a bug somewhere.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

