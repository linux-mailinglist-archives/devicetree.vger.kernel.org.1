Return-Path: <devicetree+bounces-268243-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8CUTE+/CnmnsXAQAu9opvQ
	(envelope-from <devicetree+bounces-268243-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 10:37:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C631951DD
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 10:37:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0FB76301FA45
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 09:37:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F29238E5E4;
	Wed, 25 Feb 2026 09:37:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Chhl3YH9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C175385520
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 09:37:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772012267; cv=none; b=gmuVzkymx3bbElWDRLn34pA/zFouHc+90+Y8qgoXyOmBFIE6iVRlsNrFK9s1rv3Qe5Xwhzrk7TIPnunVvb4OXMbV7oakrCeMIFAgy8msHayHrdE7M1b9NvOnA65j5axTwq3vcIaeeCx9K0dJGIkG1oElmw0AxrsoEPlbpmJQkgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772012267; c=relaxed/simple;
	bh=vxNxps+OuZ2xANrOCzteDxtEt2BxFwhyI1Ya+QPBeRo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=j86EZ8s9Un6dIZKOgjDtnHJvN+MOlFTQJOj3xvxKpq2dE8+JuLqs+Tl7lbwko66DqYeQIS8cnw+c1IJBElW1o8tkvV7xgx5Md8SJovhEtIqswtTaQ5y+wFDR2Dw2/dohrJLJwVDkNfzCjEm/eoWFrCZ0ewBpD51uYmh9HyBsbmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Chhl3YH9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9984C2BCB2
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 09:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772012266;
	bh=vxNxps+OuZ2xANrOCzteDxtEt2BxFwhyI1Ya+QPBeRo=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=Chhl3YH9kOiN/ftbHTBwHqPLakN+mnq3Wz8u/Ew7YxHGj+Rk1ZIWR2K89ecE8iAUP
	 K5Z9l2eymGUDOsoBt5T2/q/AJBWXINcjtLCSlgWwoS5TjGxU1Ufbd1D1ht0efSX6mT
	 LAAoRmLRjjte/GNPaUq1jJS1telxI+uZd2c6Y00MwjFBJTAL/UXWflBYdVrg49LpCK
	 07p+ZmNBwwuHjYnZiOdKL5FHketp0aA0aMNWvD6FnXz9flIHK0Of4t10/rniRRl1gY
	 w4DTkhtcZ05G55SFy/LP4rU3BQbvOBLayIkFTw3Xi5dcaG2450y8R4p55t83Sjc0vW
	 JUMOeoTa/BTNQ==
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-3870d178a9aso52665251fa.0
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 01:37:46 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUr18212mHShcSffmEjHbmknc8d6moV83tY9qWfcmUNbtraCEQRBKMMoAoc8yBlS7jb9vM1VEEBJmE4@vger.kernel.org
X-Gm-Message-State: AOJu0Ywvl6lX8Xnj0vhK3epf7wtorjSO3zFbwdOBQGGFGn6HR8RnVHVl
	ZBPjgO/yfbK9Xyny4LqWvW+eUAStBVNWGQZ3ln0bnGGh6e7+TpwLrV+Y12VOj3mciIEFgzbhTBk
	aoDIRolE71DmeX857/GM6RhOlXjojxGo=
X-Received: by 2002:a05:651c:2104:b0:37f:c5ca:a6d4 with SMTP id
 38308e7fff4ca-389a5c9276fmr48586841fa.6.1772012265107; Wed, 25 Feb 2026
 01:37:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260225072225.3345307-1-wenst@chromium.org> <20260225072225.3345307-6-wenst@chromium.org>
 <CAMRc=MehRxdoip8++NfwU_WEJ+yYuC1=2BRv8Ry9VytU=YvR=Q@mail.gmail.com>
In-Reply-To: <CAMRc=MehRxdoip8++NfwU_WEJ+yYuC1=2BRv8Ry9VytU=YvR=Q@mail.gmail.com>
Reply-To: wens@kernel.org
From: Chen-Yu Tsai <wens@kernel.org>
Date: Wed, 25 Feb 2026 17:37:31 +0800
X-Gmail-Original-Message-ID: <CAGb2v67MwbOA3oQp4NCDEzzsLP6-zzTTyXi_uENJVDbJi6RpCA@mail.gmail.com>
X-Gm-Features: AaiRm50YXFDVbK-wg2pjz5zqS_wWe0Q4kSUl0929RdQ8XNtoQPy9JMLS28sbKio
Message-ID: <CAGb2v67MwbOA3oQp4NCDEzzsLP6-zzTTyXi_uENJVDbJi6RpCA@mail.gmail.com>
Subject: Re: [PATCH 5/7] PCI: mediatek-gen3: Integrate new pwrctrl API
To: Bartosz Golaszewski <brgl@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Bartosz Golaszewski <brgl@bgdev.pl>, 
	linux-pci@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Ryder Lee <ryder.lee@mediatek.com>, Jianjun Wang <jianjun.wang@mediatek.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	URIBL_MULTI_FAIL(0.00)[qualcomm.com:server fail,chromium.org:server fail,sea.lore.kernel.org:server fail,mail.gmail.com:server fail];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268243-lists,devicetree=lfdr.de];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[chromium.org,vger.kernel.org,lists.infradead.org,bgdev.pl,gmail.com,collabora.com,mediatek.com,kernel.org,google.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[wens@kernel.org];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wens@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,qualcomm.com:email,chromium.org:email]
X-Rspamd-Queue-Id: A5C631951DD
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 5:30=E2=80=AFPM Bartosz Golaszewski <brgl@kernel.or=
g> wrote:
>
> On Wed, 25 Feb 2026 08:22:22 +0100, Chen-Yu Tsai <wenst@chromium.org> sai=
d:
> > With the new PCI pwrctrl API and PCI slot binding and power drivers, we
> > now have a way to describe and power up WiFi/BT adapters connected
> > through a PCIe or M.2 slot, or exploded onto the mainboard itself.
> >
> > Integrate the PCI pwrctrl API into the PCIe driver, so that power is
> > properly enabled before PCIe link training is done, allowing the
> > card to successfully be detected.
> >
> > Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> > ---
>
> Thanks, looks small and sweet.

Thanks! I originally had one large patch that was kind of ugly. I managed
to dissect it into this series.

> Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
>

