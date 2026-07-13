Return-Path: <devicetree+bounces-325366-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4wenCve3VGoPqAMAu9opvQ
	(envelope-from <devicetree+bounces-325366-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 12:03:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA6474999E
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 12:03:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=raspberrypi.com header.s=google header.b=sZALA06J;
	dmarc=pass (policy=reject) header.from=raspberrypi.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325366-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-325366-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 942F7303DABD
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 10:02:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 614993E63BF;
	Mon, 13 Jul 2026 10:02:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3A1B3C8700
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 10:02:29 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783936956; cv=pass; b=SNSJk/zHZNVW2smkqeihHgPL8Y2tfwOgYFpPOXnam0VSmVgV8vudJ5gSCdbMEEgLbJRdAwJnjjUTNmt2/GeBY11tyZR3J3kUY8r2gChl6kYOxUFZtpcIiZqvXdHLLUxB47qix18VfGkGG4bWMtugHJ9ifcH/6T0AvsQm12zFxTI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783936956; c=relaxed/simple;
	bh=ljYjSOU2rttv7S0DEe0C0TY92PtkIx5fBTSkNK4qXpY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IgNBZJFNscwOKHkH3b15qpiRF56FmgZaeGYTGNnb9ceataeclhRcgf/mxCZt0sIq+fppJqGPIBgoVzwTf5lwthIH9hlAaDzeaR1TGePCWe3XTQiDhpbsg/vjt4r9XK2HTrkY7p2VN7+sX9Nz2mf4kMl0XOpeFxXazDcDrKsoU+4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=sZALA06J; arc=pass smtp.client-ip=209.85.210.41
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-7e6b554044fso2663497a34.0
        for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 03:02:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783936947; cv=none;
        d=google.com; s=arc-20260327;
        b=i8Pp/nWU3WDf6e4EdTfFnziMPvxS9PdHWitblnp9DEz9zm6O99lO+gr/+qBkZfYPQB
         7f5DnToH/GqnsgtgXmK55su5OdUxiF8HWqX1WEwbUMH8H69KJgy8Yvg0ckWi4L21PbgK
         PQlQNAKmjqWUQWkPaDWPSlEgD78AYNqoVciGXG8Md9icNLqmMdaLRF0pKrxiF2C78QN1
         8iyPe7K0w5d0x2a0G3LBaZ3g68af5HYS4ObQawa01a1ybu2hu+nKnqQeZ8Iz5C1x6WgL
         39fysEoL0TLLHDSWHN0j5BcLQVkOaHyxmtG8OGbV9n3ioChhhE/hTJgrQ6/hNd2ej+f3
         Wnpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2P0GCpX7xQ5SgWYiQkKz/UKhv5/hqMLczhsTlA66oGk=;
        fh=Phee678hjeupVPJdekj8TpgN4IiLWe3hgUNoxpgkC9M=;
        b=pYDwxC7tf8yEjisGjmzmOsqaLn03bC3nNLMNqzut4+ufcQuyeMbwrTB0w7+hSgDB0m
         nMdIGu3WCdMnlHO4wwHsWFaCuHhqHawu0SB4/hkzvEXoaBepUtSPpW3P5eMzPLRrZpW6
         cgzzudwG8hdYKpPoTPtBD5PrGqz2wTyb1XNmr0FarslyMbc8TTdoj5Pb5miAYvQD9C8J
         4gCgT3knqlyujF8QCm3BdkS42+oys6z7YAUPaxUo1iLxTAs5tW08Ao8VQMWDVd12xHb1
         5K31PiwIZac9dfm7IW5H6yVLvrQXR6Sp7ssMxJ9CBPSVJFzuzGpvzLm6dDZl7hIbJDxF
         QdfQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1783936947; x=1784541747; darn=vger.kernel.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=2P0GCpX7xQ5SgWYiQkKz/UKhv5/hqMLczhsTlA66oGk=;
        b=sZALA06JvrRviYVmACxH396RefNYhgIooG7oypeWDbq40jbvp0RW/Kw89BZl71uttl
         +ebHSo0Uyz35Cs2jr3D6bn9PXopDVLppHrBSJZcCbx1oZoQywiilx5TdDR9nNUFyXIwr
         2QY00e0vCJHM9JuN2Lakx2UwX32iKIxZKOzs3hWLFAsid9h3ibi8d+QEKFIHVbl2MZ2X
         9osDSFpo+Rw9w17sCNpkMuPEHXqjKmTTYzh0ZR3gK66LYMq5L2fXtxvTDJKXPKlPc3tf
         I2OdAd9etKXbyZuJvP4Y0F4+caRsb/D53XyiWl8putsDwMWUNFTa0xkWweXWZPjEhg7R
         +rlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783936947; x=1784541747;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=2P0GCpX7xQ5SgWYiQkKz/UKhv5/hqMLczhsTlA66oGk=;
        b=hAi5tO+eG+gmSLrqW5/HrPNxr8qQm6OsQ9/lShv06PG1BigN6g/GCwTVyTkjgk0Uz8
         RV5eiZ2tmFomtDr2U/oG9Y8Mg+WzfkOx2rfNWrjze7iYPQME3GonLDZn6RQoKEzqL/iU
         frPXIUeDa2mgYA9AfNwJGsUQpL6d2RAaHAuFYP0+3um/dFaRukPhfH+VzGpwIgV/sgsr
         pvKjx0kAq3Jq/pCkNTXkI4vWaAq8w9RTSBdpQEVpZv3J4/0gGAsiKh83nwwPi0ySuF2o
         EWZUBVrazm/6qJwuMpuYFBR5Uu1VFUxAG9/YWqpHo+093HIr4/1CYhsmvjJO3xVhqMSK
         lgLA==
X-Forwarded-Encrypted: i=1; AFNElJ/S5x/wtnVuiYfl9MVHrYAwV3/LL/YxJNer8fr/8hPvvqW2FwN6s5I3oJRMfT0h9mYweKSk8UAIyhuM@vger.kernel.org
X-Gm-Message-State: AOJu0Yyz0Aud9cTZyfGj8NFtOerwzU2rFck+wCDtsEpjG9G3bTorXJia
	Jf3BGLRBFv29ErRmROWFZusEUfaCAQxd0oj2xrDUNi1rz+/FcGXZX4/zZg4VlGAk3qS7eCdx1HU
	mqmHK5JPm3WR8u8fpw5T9NuL1FcudzoDqCfkReFfwhg==
X-Gm-Gg: AfdE7clpY0Ml6ukx1xVtbDJmW03c33/Ytk8Cr8q4wnJS9l7VfN7J0N3kedDFEUKeDPJ
	RGcJHWBaU6omi6ml0Azmq814+h0/UFB9yxMkJB3K2JL1uyWgvmV/YzUrRUTd+uUOvCO5AK00ts1
	K5OsJHCVsJ9s9p4ZTGZ4054iVzW2fQfld5Af41Oje0LhVL87SJpFlD6lnsrdagQvPo4rAlspW0l
	Tw/Ozmz347i3t96cyNZ4cmgen5WsO5ZEX+RgZJSdniXEod6ouBVj1fc95Ai1z+hSILpuosj5ijh
	E6c8+EKCJ8OHdI5DPhtxw35Gf/Ts
X-Received: by 2002:a05:6808:1b99:b0:489:f199:42bb with SMTP id
 5614622812f47-4a42ac1bf5fmr6284861b6e.8.1783936946808; Mon, 13 Jul 2026
 03:02:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260712-bcm2712-iommu-submit-v1-0-80e10cdde2ea@reactivated.net> <20260712-bcm2712-iommu-submit-v1-4-80e10cdde2ea@reactivated.net>
In-Reply-To: <20260712-bcm2712-iommu-submit-v1-4-80e10cdde2ea@reactivated.net>
From: Nick Hollinghurst <nick.hollinghurst@raspberrypi.com>
Date: Mon, 13 Jul 2026 11:02:15 +0100
X-Gm-Features: AVVi8Cf4LGOVn8UuEl-XzGEtPWPky3oSnqvul0wqNroMw9il-m2qt1JpocyTw0U
Message-ID: <CAPhyPA5CqCzsDZg1_Sfr=EP5G6uLnnvDmdd_REZPX_VpwS=VJA@mail.gmail.com>
Subject: Re: [PATCH 4/6] iommu/generic_pt: Add Broadcom BCM2712 page table format
To: Daniel Drake <dan@reactivated.net>
Cc: "Joerg Roedel (AMD)" <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, iommu@lists.linux.dev, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	Jason Gunthorpe <jgg@ziepe.ca>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[raspberrypi.com,reject];
	R_DKIM_ALLOW(-0.20)[raspberrypi.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:dan@reactivated.net,m:joro@8bytes.org,m:will@kernel.org,m:robin.murphy@arm.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:florian.fainelli@broadcom.com,m:bcm-kernel-feedback-list@broadcom.com,m:iommu@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-rpi-kernel@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:jgg@ziepe.ca,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-325366-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[nick.hollinghurst@raspberrypi.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nick.hollinghurst@raspberrypi.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[raspberrypi.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,reactivated.net:email,mail.gmail.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3BA6474999E

Hi Daniel,

On Sun, 12 Jul 2026 at 22:19, Daniel Drake <dan@reactivated.net> wrote:
>
> The BCM2712 IOMMU implements a 2-level page table format. It is relatively
> simple, with one unusual aspect: leaf entries can only be installed at
> Level 0.

I should admit that a single-level huge page mapping is possible, but
I was too lazy to implement it (and haven't much tested it).

It can be done by setting bits 31, 30 and 28 of the top-level entry
(all other combinations of bits 31, 30 will point to a  next-level
table). The page number is in 4K units but must be 4MB aligned.

Regards,

 Nick

