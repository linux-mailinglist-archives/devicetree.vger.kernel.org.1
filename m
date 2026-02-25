Return-Path: <devicetree+bounces-268191-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yASDI62xnmlxWwQAu9opvQ
	(envelope-from <devicetree+bounces-268191-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 09:24:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D8EED194256
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 09:24:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E8BDE301E223
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 08:19:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54D66311952;
	Wed, 25 Feb 2026 08:19:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m3MnF8kg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31DBB19E97B
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 08:19:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772007554; cv=none; b=oPrY5Vu6yFNvBrQ9R8F5scN5iuiNHrAjwvQTCP5bTHlArTJPcf7ix3nEOupKEOR+W4aGcsICj+UhDjRBI+dgFOET4j7DWwvv6xxs3yiy6C6xr6NBXc92zh9J1Fs4qgXtgzi6sFmbbStKNTuzFy8vTwHgUJhKNqqn9W5gfHBMBYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772007554; c=relaxed/simple;
	bh=i767YM81rg16oZZHvqRpOQjd5YhsJg23jCgSi88ETAE=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=R5neqAln8t/BbNeTc6CXuT0tAOM2dHRVlhNXG1cszRBWBBdD+I2gSeMDpEygjl79CJF7DNPKuFkJ0g9e1tfP9zYa1uwylqzwzO85tFuNrBTvEffTttByNgIRsS8u3mEsg4xEQo9e++ypxVBsPfWyh7kZWJg0m2KpdGLiD0+VCNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m3MnF8kg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9DB4C116D0
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 08:19:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772007553;
	bh=i767YM81rg16oZZHvqRpOQjd5YhsJg23jCgSi88ETAE=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc:From;
	b=m3MnF8kg8EdpV9TU8qMVIyRtyy9/e4Sc7qdBSw7Kmbx1O/1IQVhMe62U56el3Q/1k
	 jAqYvJ5zQWcCSk+wSu5VRgVyrERgCYFo0yLzeFapQxOGWNY5i38UYyNfKPQKIn2MFO
	 TbcLMBptwcoK3QOFNuZShpI9rnqwr+XKTnBdR8LT+p73sHev4Yna30R8exUDG6Ki0q
	 UOUjUjheFSk0BXDERTF5jqlIlnsHwIOPgB3vu3e0cn6ofmiMyx86oPNZyFXzQEvexL
	 yEfI8mKfouLgxGH51mxfnY6ke55/jie2AOXfv21aQCN/djFyBsC8M30M3dwDJexryF
	 HNda32plqi0Qg==
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-59f850cdeafso6602848e87.2
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 00:19:13 -0800 (PST)
X-Gm-Message-State: AOJu0YyE5Kmac11U9yRQdzfOGG5S7I6dne20gMhPxtH4BhCDrX+HXUOq
	jP7LAX5+Y5MAw86sPXEsznxaS/FDj+a4Mj5xnRbmq+liabLQn7bPdYQne0sh3dY/ZFR8pQJEAA4
	bruSlRFSTkL4jbn71H+nE+GmWKvgdwUljl5xdxZXjmQ==
X-Received: by 2002:a05:6512:1252:b0:59f:8993:df7d with SMTP id
 2adb3069b0e04-5a0ed8a2429mr4956665e87.26.1772007552569; Wed, 25 Feb 2026
 00:19:12 -0800 (PST)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 25 Feb 2026 00:19:10 -0800
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 25 Feb 2026 00:19:10 -0800
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260225072225.3345307-3-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260225072225.3345307-1-wenst@chromium.org> <20260225072225.3345307-3-wenst@chromium.org>
Date: Wed, 25 Feb 2026 00:19:10 -0800
X-Gmail-Original-Message-ID: <CAMRc=MefvP2bxdGqhw+Sn_MDqVcA2fPefCBygP=ZdFLnkPcHUA@mail.gmail.com>
X-Gm-Features: AaiRm52W52XmwIgwxtOACerr-UA7gcczLgZWX36auM-UC97DyKrwy0k9pm1Y2nk
Message-ID: <CAMRc=MefvP2bxdGqhw+Sn_MDqVcA2fPefCBygP=ZdFLnkPcHUA@mail.gmail.com>
Subject: Re: [PATCH 2/7] PCI: mediatek-gen3: Add error path for probe and
 resume driver callbacks
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268191-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,bgdev.pl,gmail.com,collabora.com,mediatek.com,kernel.org,google.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,qualcomm.com:email,chromium.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D8EED194256
X-Rspamd-Action: no action

On Wed, 25 Feb 2026 08:22:19 +0100, Chen-Yu Tsai <wenst@chromium.org> said:
> The probe and resume callbacks currently do teardown in the conditional
> block directly. This is going to get ugly when the pwrctrl calls are
> added.
>
> Move the teardown to proper error cleanup paths.
>
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> ---

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

