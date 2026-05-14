Return-Path: <devicetree+bounces-297443-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qLTFCiqqBWrtZQIAu9opvQ
	(envelope-from <devicetree+bounces-297443-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 12:55:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 827F5540AA1
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 12:55:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 48AED30179EA
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 10:52:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD2243B19B1;
	Thu, 14 May 2026 10:52:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="I+4Q2R9C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC5E3B0AF8
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 10:52:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778755968; cv=none; b=FEqCpqPNcUM5QPqbJK6dLoL8oGOwCVVd62RoU22xnxRvH+FSKnZFHz8M5akcgaQsbR5KVsIsM+EkU8wb4fuDn+M/czqSqWm4qKmC7OajrqYFVBW/SlZ63wLfq6y6UuelhqqLaRMQS+vmKkU8qsTUQ6Qfo2zz5w8sWCYirHwyFtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778755968; c=relaxed/simple;
	bh=E2dGmHbxhnIfaZBx1KlkBaJDa7lLh0TDayepuvWKaYI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D4FrE7PHeMrFIxl+kyJbmP0KF52GF8ESHlafQp7EyTuvWbtmsCwUiQk/d9tnaOtbzB6SW1ArUi/WeW0g+aZCcX12jrBDUGd+i/mpVXT+DxjW827ZX+SsFrQ38M+QI+fzQqvZBMMnLiFndyo3lcmLbD2qFsi+sg3dp2AAO2iR5+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=I+4Q2R9C; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-45db6fd7dc3so78132f8f.1
        for <devicetree@vger.kernel.org>; Thu, 14 May 2026 03:52:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778755966; x=1779360766; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=H3xNx0DGWfnDiOAhTp4e3i+kPDvC+nvRiuRLvqIBtX0=;
        b=I+4Q2R9CH2Cb3ifdT9/6jSO1LQyugqaD2TMpj8AmI2jpRfsrFSP6r46rmFM86yGEBS
         XxaKqGkYv5Eeva7I6n2/nX0LxrFINv9jlvASqpGy9xp3y9U1uSFBck2bbZF7oB429qLH
         8OQAMNvnJ9tR5lphy+yjAhUrZFA1ntAfaJv3DRmMwOjwtgY5GDYY4rVnrLW0LA0Az1Rt
         vdNP9X1ia2VwxD5hY3AMZNPPqGHW3sljjoR5/bROMs+cpzzMTYKXhRriYdwxxWFzcmVX
         iUPrJFa8aJdSywlkSB0oizCy4UBO6mJyUfflHKfknPdTQwS3eubxlBmUt6V3MksAMVeu
         tfTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778755966; x=1779360766;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H3xNx0DGWfnDiOAhTp4e3i+kPDvC+nvRiuRLvqIBtX0=;
        b=HyPPf9K/fZIBR9DnV0cE/0MKCEp6pmyzyoio2JCKvSchOftcxOUKhPBuzL6Ru78p3/
         0bVCHvDkuaiGJcUB/YfuqDQPY8cTCtq1D2FKACUHgTlgRBbvKSRJDsVFtNsuRzzsI0hz
         kzv+xTm6GFdOZ2+eDPQDzmCapH0GsIivSoFTmKdd31XPxw7z1in+jtI4lkOBhziIMDdv
         WCFun4JJgvVg5K10oK4gJaBPl7gYU7aBtYfnQkAfYqxFlwvEWDfTHB7B9BqUkumH6ZBR
         km4K0Fs/s7Ig7RjLAjSwvMxgHFrSLdxcD6RYzsnJC9MAmG3+/1whfjMHT76QDyuYwo0h
         MrsQ==
X-Forwarded-Encrypted: i=1; AFNElJ/S4Ld7ACEcgIH+MNhL/04WPuYkEojf26MaAYgtQvQpONnaDat3RUbWLYElkzH+Cu3O85YXUfQDUFmq@vger.kernel.org
X-Gm-Message-State: AOJu0YyP7vKQy+cv24d1WTkGf4+I+hHSw/hJMA8LWn7eoIoh59eZqv1b
	LdefyoK7OLNzakzDCP41SD5cHSgpOMr0s97jWjQ/qvQV1qDHgUhxr1au
X-Gm-Gg: Acq92OEURZ2Mgi1IzjTwkrsUoci7rwa2kNb5go4KMY9bhLFmd6HAF06CX6ABfRvbySR
	h1CSCIMzvft0FwRcaKLnORgTCv608S4z9ph+bY+6C9PAITN/EefPBpy4aHiU11PHyELwYDpeCAN
	sT7LpI/zUvP3O98sgRZ1oY0y40EFBtpI5Ou54FT5GA03Wiz/zVOXp9sC0kviSgg68PlPhqTadFC
	4at1r1bsSViW/dppZkuMq+XlOVYRR/nzsJq2SbZZLGqdn0vidyhDPebXHmpB7pAwHyjfDZ6QvuR
	W0ciH0neX30273jJhECdlerdNNi8knNJLg3MfZRnS9F+KBuNzdf4Yv9hDbVsc6EzvkV1SDT4j/m
	unH4BSUkWdAFQEFSphXTUOyDQZEpvDY4r0mvM7dymoK6Q+l8wqtM7U8l55P2i6ajUqMOgLjtecg
	F7xkg5ZIRDIemVAieBSy+8dWk2GFrw4CNgEA==
X-Received: by 2002:a05:600c:1385:b0:48e:6db5:76e6 with SMTP id 5b1f17b1804b1-48fc99ede8emr49117735e9.2.1778755965596;
        Thu, 14 May 2026 03:52:45 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d003:300:6c81:7110:517:9a7e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45da0a19a0csm6075424f8f.20.2026.05.14.03.52.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 May 2026 03:52:44 -0700 (PDT)
Date: Thu, 14 May 2026 13:52:42 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Ioana Ciornei <ioana.ciornei@nxp.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, johan@kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH phy-next 0/2] phy: ti: add driver for TI DS125DF111
 Dual-Channel Retimer
Message-ID: <20260514105242.kzi4ttchz5puxk7r@skbuf>
References: <20260513185103.1371809-1-ioana.ciornei@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260513185103.1371809-1-ioana.ciornei@nxp.com>
X-Rspamd-Queue-Id: 827F5540AA1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-297443-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[olteanv@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ti.com:url]
X-Rspamd-Action: no action

On Wed, May 13, 2026 at 09:51:01PM +0300, Ioana Ciornei wrote:
> This patch set adds a generic PHY driver and the corresponding DT
> binding for the TI DS125DF111 Dual-Channel retimer. The datasheet on
> which this driver was based on can be found at -
> https://www.ti.com/lit/gpn/DS125DF111.
> 
> A separate generic PHY is registered for each of the two channels of the
> retimer, so consumers can drive each channel independently. This allows
> for independent control of the channels, which is especially important
> since each channel can be routed to different SerDes lanes and it is not
> guaranteed that the same retimer will do both directions of SerDes lane.
> 
> This was tested on a LS1088ARDB board with the Lynx10G SerDes PHY driver
> yet to be submitted.
> 
> Ioana Ciornei (2):
>   dt-bindings: phy: add PHY bindings for the TI DS125DF111 Retimer PHY
>   phy: ti: add PHY driver for TI DS125DF111 Dual-Channel Retimer
> 
>  .../bindings/phy/ti,ds125df111.yaml           |  46 ++++
>  drivers/phy/ti/Kconfig                        |  10 +
>  drivers/phy/ti/Makefile                       |   1 +
>  drivers/phy/ti/phy-ds125df111.c               | 245 ++++++++++++++++++
>  4 files changed, 302 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/ti,ds125df111.yaml
>  create mode 100644 drivers/phy/ti/phy-ds125df111.c
> 
> -- 
> 2.25.1

When you resend, please add a MAINTAINERS entry for this driver.

Thanks!

