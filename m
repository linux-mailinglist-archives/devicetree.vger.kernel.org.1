Return-Path: <devicetree+bounces-268192-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QH5pGc+wnmlxWwQAu9opvQ
	(envelope-from <devicetree+bounces-268192-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 09:20:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 939911941BF
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 09:20:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E59053025113
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 08:19:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1F7931197B;
	Wed, 25 Feb 2026 08:19:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nkoF+QGt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E84431196C
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 08:19:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772007582; cv=none; b=tUf/QwuPRh0VTMTeDaV4Ss1tuF3V8PzXl5pdIWKLeNlMvi7ostqbmemVpu2E339j5GaGUwduGRprFcgohzhlc9xnR/ONxl5ifTf+N5Yu8riDGPBdDbPcowlNuifHSWYTYWrR6F/DDKML6QsW226MRUdvYyOpMALgpoWR/vA0SoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772007582; c=relaxed/simple;
	bh=izXI3LMXbG6SsuVnD2N0XUXouX15pyDqNUn3MzXcNkg=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DkhzIpyqu23bhTsUY1B3ldbWTxaA+oSQ0vAtdztK9hyovcweocWPNM56jifPkPkXutvnLwAX9XycKCItGnMvlurd7EAwACB4ODNXB3CqPFvfZRCbblsy/EtxwyDxYIerQI9DY4cgnNOZF9eHRrNDXd97c/w+p4gPgmnb1SYTexY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nkoF+QGt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39D5EC2BCB2
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 08:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772007582;
	bh=izXI3LMXbG6SsuVnD2N0XUXouX15pyDqNUn3MzXcNkg=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc:From;
	b=nkoF+QGtHikINmdkO+WRITa7gjp5vxoaDZ28534DqKhZv7NtsLJqwRShUxCdnO3jk
	 udphkiXx0bZvUj0nmyHDG2dMr9POE3NeLvmBYsv8L+Uuuml8ssz8kpiHkrUmHakMAz
	 oSYAU+r8aAmb8tReB6AmGiIDGLDPL32tgjaRESAJpSSJryOXpEk3kephw4Kr2xyD2s
	 xvp5hN7pCNdZ9oMPYBU3AtSsVDWHdOpA3jO1TsWjElTex6cWKGuTEFn9VeYZVLJCam
	 TBFGQ8oxg1r17xZJJvkwp2nG3h/frmQfl8qDPEHdMrKpOOu4Ie9wBYgZjd2hShHHM1
	 VX6X+WPjsHjDA==
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-385d9fb297dso65991781fa.2
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 00:19:42 -0800 (PST)
X-Gm-Message-State: AOJu0YyTU41nneB4cKMfY93byIe6NqIceAkRBlFLNjz36KDcSv/eKi5z
	Gyh9p8p0ceborZIKxjWV3OcxjGbKZ+ra6HKjyLa1edzTPWgnR29yIKUNbolXYmSgzLEoNoFT7EQ
	FIO5Ufdj2i2iCkSUWA7FUTibEtW6GCXisDy5rOrZiBQ==
X-Received: by 2002:a2e:9a12:0:b0:37b:a955:d497 with SMTP id
 38308e7fff4ca-389a5cdd726mr40354431fa.17.1772007580872; Wed, 25 Feb 2026
 00:19:40 -0800 (PST)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 25 Feb 2026 00:19:39 -0800
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 25 Feb 2026 00:19:39 -0800
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260225072225.3345307-5-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260225072225.3345307-1-wenst@chromium.org> <20260225072225.3345307-5-wenst@chromium.org>
Date: Wed, 25 Feb 2026 00:19:39 -0800
X-Gmail-Original-Message-ID: <CAMRc=Mfti5FqPsC02zrvY_YnrHrXj68SLDA_tCc0q0qAzRQawQ@mail.gmail.com>
X-Gm-Features: AaiRm52KsedqHnZlertAD8iUGS0ywXhPRvuHDAYeVDvIELIFM7DO1igrITzeqTk
Message-ID: <CAMRc=Mfti5FqPsC02zrvY_YnrHrXj68SLDA_tCc0q0qAzRQawQ@mail.gmail.com>
Subject: Re: [PATCH 4/7] PCI: mediatek-gen3: Disable device if further setup fails
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Bartosz Golaszewski <brgl@bgdev.pl>, linux-pci@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Ryder Lee <ryder.lee@mediatek.com>, Jianjun Wang <jianjun.wang@mediatek.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268192-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,bgdev.pl,gmail.com,collabora.com,mediatek.com,kernel.org,google.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,chromium.org:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,mail.gmail.com:mid];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 939911941BF
X-Rspamd-Action: no action

On Wed, 25 Feb 2026 08:22:21 +0100, Chen-Yu Tsai <wenst@chromium.org> said:
> If further setup fails after the device is powered on and link training
> succeeds, we want to place the device back in a quiescence state to
> avoid unintended activity and save power. This also helps with power
> state tracking and balancing once pwrctrl API is integrated.
>
> Power down the device in the error paths of mtk_pcie_startup_port() and
> mtk_pcie_setup().
>
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> ---

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

