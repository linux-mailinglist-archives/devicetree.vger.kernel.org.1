Return-Path: <devicetree+bounces-263971-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +DzAHlHYiWnlCQAAu9opvQ
	(envelope-from <devicetree+bounces-263971-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 13:51:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C6310F116
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 13:51:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C0673302BE3E
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 11:34:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1906436F434;
	Mon,  9 Feb 2026 11:34:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qwSCV79C"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA16E36F427
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 11:34:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770636876; cv=none; b=CHa0ydroBA+iV2UrONaIUFfH+re/nNzQlm4n/cvs0IkBQXE+fRL/LelYKlDH+asrCba/qE7OYsCfsJH+sJWE+XnzRgC23yJ5norhdwYqWfGO0YMvhLvumCQM2Ykf892/gcpnrhj83PVCMUhlY+87h2qrIU+kIFNKs6erD1Tt/3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770636876; c=relaxed/simple;
	bh=0svfkYq0Zu9GEiXUg4Oim2BN8XI+oxDVGNLEzCJcnGo=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Kn7SNmgYxdAUGii0KFlQ7Irhxi98lCBEHAoBPdcwFk53m2fJvIDUig+5fqFOeV3aJE3LH7uc3rW5yyE/6uvNdXqD5YWLAcjrTLdvFasdL5hXcZQdjvOdd4n1GGML5x3wcRtYcfcy+E0JM2rJ9Pg0GVpc0DKNx4VGB6j54lFmF2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qwSCV79C; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97C6FC116C6
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 11:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770636875;
	bh=0svfkYq0Zu9GEiXUg4Oim2BN8XI+oxDVGNLEzCJcnGo=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc:From;
	b=qwSCV79Cv3hUzwV3IRAzyju31VF3KYpqVyvyFdhLpMsw259EjNn0m0eeP6TJzIwF4
	 LQ5i+bKpON8T2HyuqJiapXF+oMDPWF8eLXAF9sV1Rgr8fEr6BVLvlbJ6doGfTbVo8F
	 8N5+YEOX3PG23FfeBLodvh380dl0G2X5ERK4nBqswr8wQnu3WtQbgetV+wwMlUAP3S
	 VRtrp/iZWBP+B5rqeDPUGuJbsO+IBCzIrnsPmgaPvNqPLroI8ca8aBY81pFXTXZDl2
	 /atVsYIABAnARwa2fMiQN20Mj9LHgvAmOY10KtJAxbzNoKhNNRsE03w9mdmRq9ORCD
	 BLKIURHDxah6w==
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-382fceabddfso35739401fa.1
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 03:34:35 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU81S7tU+XmtXHk4fybb70mflWF/a9zIRNufACqghdS9BJ7T71naC6qEMjxpWXrP4MZDknhHdZpj8X6@vger.kernel.org
X-Gm-Message-State: AOJu0YwNuzrgG8OerEnqBNnLGM1ezMUqOrE1H0yBGZo+KFOsXo2/OdFP
	b37oNvvCmOUhltZOxs5I5gJgo+OJPKzPHh2WW7f17lt/6VSLYR9PWcoDEbfWyHNJHhOIYt1EOXq
	EULPqaJzTzOCCuuydjm9ofBLjJuPC+WhuSOTDt7CkTA==
X-Received: by 2002:a2e:a9a3:0:b0:385:f547:184b with SMTP id
 38308e7fff4ca-386b50f88a3mr31521431fa.24.1770636874305; Mon, 09 Feb 2026
 03:34:34 -0800 (PST)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 9 Feb 2026 05:34:33 -0600
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 9 Feb 2026 05:34:33 -0600
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260209080613.217578-3-vivek.sahu@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260209080613.217578-1-vivek.sahu@oss.qualcomm.com> <20260209080613.217578-3-vivek.sahu@oss.qualcomm.com>
Date: Mon, 9 Feb 2026 05:34:33 -0600
X-Gmail-Original-Message-ID: <CAMRc=MfT7ourMH+ShJpnBAjv_uOb_ds0rxJOYaz_HsoT45dJYA@mail.gmail.com>
X-Gm-Features: AZwV_Qj0eNqA-uOUImUdwSnSiYzynfvlGGokLBE_AhA6KJWLRXr74D8NdOnlBmM
Message-ID: <CAMRc=MfT7ourMH+ShJpnBAjv_uOb_ds0rxJOYaz_HsoT45dJYA@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] Bluetooth: qca: add QCC2072 support
To: Vivek Sahu <vivek.sahu@oss.qualcomm.com>
Cc: quic_mohamull@quicinc.com, quic_hbandi@quicinc.com, 
	linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Marcel Holtmann <marcel@holtmann.org>, Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <brgl@kernel.org>, Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, 
	Rocky Liao <quic_rjliao@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263971-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[quicinc.com,vger.kernel.org,holtmann.org,gmail.com,kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,qualcomm.com:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 96C6310F116
X-Rspamd-Action: no action

On Mon, 9 Feb 2026 09:06:13 +0100, Vivek Sahu
<vivek.sahu@oss.qualcomm.com> said:
> QCC2072 is a family of WiFi/BT connectivity chip.
> It requires different firmware files and has different
> configurations , so add it as a separate SoC type.
>
> Correct the sorting of other chipsets for better readability.
>
> The firmware for these chips has been recently added to the
>     linux-firmware repository and will be a part of the upcoming
>     release.

Something is wrong with formatting here.

I would personally split the sorting and support for the new model into two
patches - without and with functional changes respectively - for easier review.

Bartosz

