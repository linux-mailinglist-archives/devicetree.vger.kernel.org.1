Return-Path: <devicetree+bounces-267017-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KUL6LMZ8mGktJQMAu9opvQ
	(envelope-from <devicetree+bounces-267017-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 16:24:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA30168DE2
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 16:24:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D71113079F8E
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:24:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC6D02D2382;
	Fri, 20 Feb 2026 15:24:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jhb1r6Xg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A19C2C11C6
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 15:24:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771601055; cv=none; b=X4xs9XDegzpo5+k/D1XAYC6O/HvuZeEMgUQ4QYK+G/zXLxupFpCpebBiJyB14HLJgjEltaRkyA6HbUhceQlmvgUQWl1gVARqwDZR8svsCwJz5B42XeDG8N2eAeAsz5y1U2Ji6R6I9EOXs3c/GVa4kHr8thm+1lYGyaUzkW6Y87A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771601055; c=relaxed/simple;
	bh=qIvYrYW+rc8GuY9xW6YzE63wQF3sIs9QH4lNKLGbtzY=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=f7+yGK7/tS/HGOyP4x1Ms1gga6cCFZ4EMKiZD1m1iHX1D+PO+kZfL3bOyx1iJTSAB3hQrktIzhCSrcdRI97c7WPA5xrqkb3tRfsNfttzR2Svn3XgUH1DjJNbcmnvo1h70nXKiE5scbDopTG4V8PlKiwATqFjvnBwVSbmoQGAqHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jhb1r6Xg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C1B0C4AF10
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 15:24:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771601055;
	bh=qIvYrYW+rc8GuY9xW6YzE63wQF3sIs9QH4lNKLGbtzY=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc:From;
	b=jhb1r6XgjtlRNex9BBe5m7YvXmPbbINSaeB9w9YYYYrnDhRKc2SBaBM/hXQOGuSr2
	 RfgNViU1KJm7L52YxhXc6XHfyLf1Ju4UZm7Mj0eBmYWYTJ2L9IRMb/wqu7Vy9G1TqZ
	 jgXWAKFkNTmI3uvtv91FUsGExef4lilaDUAnXkicLsbcUuf4Zh0suAyKbsz901FZgn
	 YnWjTsu8sZ7RP4Et56vZpYeqtPSmNk0g9A8xbBo40Z9GlMKwEiSIMS1R1GrBEc4KLN
	 RSBUeYzedcioDAEB+oCcekviaXWC4/VDIoKSfUCdnwh7m5RzoezNDOPqDgJknjuoSo
	 pxZ6BLBd6A+xA==
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-3870902760cso19610221fa.3
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 07:24:15 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW0mqwgtx9zFZRHpSYUBiLoNSXmV0uJ101Ai9oF/fJhzG/JAGQG8gRwmoHyhYLSYqkhCCVflrzn3a+O@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2ARhpMYKBoKlBvd7fsr6DE/OFAUN+2/vUYvnvmBYFq7KPXen6
	GIoJsn/KifLacfKEWdHmoyx/MYQ2EMGmixJ8mbiDQ57RWlIl9s0XztBZS+A3i2N7zYlSYYvJDvH
	w5KZhbF6o1K89Nk87IoeGOwMzrReiY6D+NuzyDTbHLA==
X-Received: by 2002:a05:651c:e0a:b0:386:fd3e:bfee with SMTP id
 38308e7fff4ca-389a5bbcb3amr397501fa.22.1771601053946; Fri, 20 Feb 2026
 07:24:13 -0800 (PST)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 20 Feb 2026 07:24:12 -0800
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 20 Feb 2026 07:24:12 -0800
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260220-topic-sm8650-ayaneo-pocket-s2-base-v5-5-1ad79caa1efa@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260220-topic-sm8650-ayaneo-pocket-s2-base-v5-0-1ad79caa1efa@linaro.org>
 <20260220-topic-sm8650-ayaneo-pocket-s2-base-v5-5-1ad79caa1efa@linaro.org>
Date: Fri, 20 Feb 2026 07:24:12 -0800
X-Gmail-Original-Message-ID: <CAMRc=MeQ1z429Op7pBAzDVm=o3ESr9rorvVoRBnh6+yv6VWHHQ@mail.gmail.com>
X-Gm-Features: AaiRm528kM56Lb-rsCV2ZgK6S8evmsET0I6kE-_utCAK-NkAUbkBiGPKIsD0gus
Message-ID: <CAMRc=MeQ1z429Op7pBAzDVm=o3ESr9rorvVoRBnh6+yv6VWHHQ@mail.gmail.com>
Subject: Re: [PATCH v5 5/9] arm64: defconfig: enable pci-pwrctrl-generic as module
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Bartosz Golaszewski <brgl@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267017-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,linuxfoundation.org,kernel.org,glider.be,gmail.com,google.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,mail.gmail.com:mid,linaro.org:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5DA30168DE2
X-Rspamd-Action: no action

On Fri, 20 Feb 2026 16:04:44 +0100, Neil Armstrong
<neil.armstrong@linaro.org> said:
> Enable the generic power control driver module since it's required
> to power up the PCIe USB3 controller found on the Ayaneo Pocket S2
> gaming console.
>
> Acked-by: Manivannan Sadhasivam <mani@kernel.org>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index b67d5b1fc45b..0e8b62ffa7db 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -258,6 +258,7 @@ CONFIG_PCIE_LAYERSCAPE_GEN4=y
>  CONFIG_PCI_ENDPOINT=y
>  CONFIG_PCI_ENDPOINT_CONFIGFS=y
>  CONFIG_PCI_EPF_TEST=m
> +CONFIG_PCI_PWRCTRL_GENERIC=m
>  CONFIG_DEVTMPFS=y
>  CONFIG_DEVTMPFS_MOUNT=y
>  CONFIG_FW_LOADER_USER_HELPER=y
>
> --
> 2.34.1
>
>

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

