Return-Path: <devicetree+bounces-268238-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wEv1KzzBnmnsXAQAu9opvQ
	(envelope-from <devicetree+bounces-268238-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 10:30:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A4A19501F
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 10:30:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 97C6B30131E0
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 09:30:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C7C838E131;
	Wed, 25 Feb 2026 09:30:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fowSnKKE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7910D33D6DF
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 09:30:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772011832; cv=none; b=q1JjELFL7gzuwFjTVbscxR5mw8JqEGN5le2BRY+bA1qaZ2ryYDTTTlv1bWG7x7mbBTDNCpsj7nkxTZ8y/VW8ib+W7hYwKuKLJkFMXJXk+8rZb7nqjzNmo8iYoHKL9SmUdocLUJptQRspuaZG4p1PEODgKXaXSk7WHgEwSAN/FuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772011832; c=relaxed/simple;
	bh=tgX2ufhVZCTAL1NTg8w1yhGJAh/USfVuKSM7DBjgMR8=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VJfL63WvY4nLhrmYDl86iGcduR1kaKCzRxv6sqwpt3748JUO9XWyUd+eKfcRQzX2agWFtPe7fXtytG9cX6OfU7EV5Vz0xaLg1Oxqa5cbkfbP8IdcsVKiN5JUB13vor1obmVMSm0KNv1zdB+60NYO1WEcc//gp2vyeXjNuWXvXL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fowSnKKE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32377C2BC86
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 09:30:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772011832;
	bh=tgX2ufhVZCTAL1NTg8w1yhGJAh/USfVuKSM7DBjgMR8=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc:From;
	b=fowSnKKEm4fHikNKB4BabbhKAzxeXI6LGz3TkD3gtKt4g/+3t4B7kQQZy7PHFe5j3
	 tnEk54CGQINMr++1x/Am1zO4PZKaopCaB+vXli98wvnmXItckoiqtfcYB2xazSPPPJ
	 ah9HgyBkiDZHXtPferiMEb9j0yP60q6x3W/UFfC3enjUAASJfsaRZR4cNkYbY86CFt
	 MhLWragdHiz/AqrDFwfk3jeuI3TJ7cFt84QsPnRNlqyOgdKxfpFVXaZ/Lh1qq+g7zn
	 9gDGM0ykTNMeUhBpN0M5HXIbGPjfVqom6BSI9dB8eQc8jjTGMRwZ8hmTrFHbouSFdD
	 amFbz3cT5Mdlg==
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-59e607a3824so7150647e87.1
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 01:30:32 -0800 (PST)
X-Gm-Message-State: AOJu0Yxd/wsCac97riU4PH9Qh+o2UGZxPBI2R7JHyUeq2Y4ULgdQZ/Ci
	4NBvEaWITVA8BgHXDHNMO8Yghw070xtrudkUHKM4SrDiaMNj8O4NqEWap1WUMuo9FniQb1lCCu2
	n2ojV55tHYSn2IKHf+QaSfNqg1g8u5ym9KjRO2LsQbw==
X-Received: by 2002:a05:6512:3182:b0:59e:465c:3b1e with SMTP id
 2adb3069b0e04-5a0ed9ba9bemr4936252e87.41.1772011830831; Wed, 25 Feb 2026
 01:30:30 -0800 (PST)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 25 Feb 2026 01:30:29 -0800
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 25 Feb 2026 01:30:29 -0800
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260225072225.3345307-6-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260225072225.3345307-1-wenst@chromium.org> <20260225072225.3345307-6-wenst@chromium.org>
Date: Wed, 25 Feb 2026 01:30:29 -0800
X-Gmail-Original-Message-ID: <CAMRc=MehRxdoip8++NfwU_WEJ+yYuC1=2BRv8Ry9VytU=YvR=Q@mail.gmail.com>
X-Gm-Features: AaiRm51bPAVR6-cFrrbBYu5wRc1Q4V_S6sKtepwE42bww4kXXIDbH_qqtlNCRK8
Message-ID: <CAMRc=MehRxdoip8++NfwU_WEJ+yYuC1=2BRv8Ry9VytU=YvR=Q@mail.gmail.com>
Subject: Re: [PATCH 5/7] PCI: mediatek-gen3: Integrate new pwrctrl API
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268238-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,bgdev.pl,gmail.com,collabora.com,mediatek.com,kernel.org,google.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 15A4A19501F
X-Rspamd-Action: no action

On Wed, 25 Feb 2026 08:22:22 +0100, Chen-Yu Tsai <wenst@chromium.org> said:
> With the new PCI pwrctrl API and PCI slot binding and power drivers, we
> now have a way to describe and power up WiFi/BT adapters connected
> through a PCIe or M.2 slot, or exploded onto the mainboard itself.
>
> Integrate the PCI pwrctrl API into the PCIe driver, so that power is
> properly enabled before PCIe link training is done, allowing the
> card to successfully be detected.
>
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> ---

Thanks, looks small and sweet.

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

