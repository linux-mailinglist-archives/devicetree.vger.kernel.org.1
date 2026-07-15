Return-Path: <devicetree+bounces-326960-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9G0bJ8J9V2rbSQAAu9opvQ
	(envelope-from <devicetree+bounces-326960-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:32:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F04EC75E293
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:32:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=QKykeVV+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326960-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-326960-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 44AB530B4447
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 12:26:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B360B46AEEA;
	Wed, 15 Jul 2026 12:26:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69DB9448CEE
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 12:26:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784118408; cv=none; b=R2EZ/mwToSNnOV5TZMQfEccOm+acZPue3eaOCHdljIdHZTIuuAzmxfm+RlvYPiQ4IhOxVDSQVHSQRxOmYeSz8PSzg/mWEtcx40fEg58AiR9Tdt2J4OpWIoIbqlbTsn7YTR12/GsGSlGMB/0j7tG70atKTxp2coW4Yg8Ign0SatY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784118408; c=relaxed/simple;
	bh=TF12o4kxmUhjvdA6ouORMbeT1BJf7UjZuwxQoUAEn0g=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qnd3bhSZ9Y8TwEDUZcRb097Dqght2nOKRfvUmzw2tkElptSyr+8e1p6B1Yn+VrYFF0dvxIehD8uTBstfqdNViwqEQv2NdUvwCPRxMj+eC54CjKm2T+9R3PvkDqQKPTzALIXi3sa8I4/LLoJWGIFRVj/aXD1h/EJpQ0yizfbSrqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QKykeVV+; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FD431F01575
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 12:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784118406;
	bh=ufSU06HSFFf/HF9xxtT6zNddSL0W/3RadTy6uo0f3pw=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=QKykeVV+vjB0vBKkxzt1G8Vl5kKWhAKrI3T18ni2Hmw7Ye9vGMPmHsQOOafa6Rkz8
	 Ms0JYatvX30UIvmhmwHhmdX9yRaau4XM7UMuftPm2YrvDgVpRTT9y0EvcfS+iJMopa
	 wn5EvKEKra8RnO1k8aY6zl3W8kTP7P1IlnB4/LKGhKGxEg2xEMFyvVePT3Jcft61ug
	 gLoOZQLE17mfUgB/wOuZnmcyg2/bXhPTd+ObHBKZgp4ncS4UOBn+dwfyO9BIdDE/Ik
	 iVS87KexyX8aSDr2Cs39sUkAux0k+DNAdUQG8yS15R4tPMKJ4Ufu/ntoSvaqilpRBT
	 Qrj1mAGszI78g==
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-39ca0a30148so42691521fa.3
        for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 05:26:46 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RovVR2c4ipGZKGXfeGpmYjgUXSYTpwZIRD13sR7zzVDd9oMDgb7pM60XayqpheDbilfAMzjdECDlg5l@vger.kernel.org
X-Gm-Message-State: AOJu0YyHgN3IzHDfLGwhdH7q+VNqaRZv/5+BTRNQKGCrpbFwAwl/xgj9
	BrPwMQQOT3TdCs1O6tTHOtvAiCptz9N5NkPq0Jc6XVKJy70iArsz4C1hiv8LXSaHSOn/UVfjazK
	M2I/XWhTuVNU/G/hfa/MKYoHIO5ikrv0KzCQFH5AGnA==
X-Received: by 2002:a05:651c:23db:20b0:39c:6e2c:23c3 with SMTP id
 38308e7fff4ca-39db6ba5ea7mr4965071fa.5.1784118404814; Wed, 15 Jul 2026
 05:26:44 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 15 Jul 2026 05:26:43 -0700
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 15 Jul 2026 05:26:42 -0700
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260714-arm-psci-system_reset2-vendor-reboots-v23-2-e7453c548c21@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260714-arm-psci-system_reset2-vendor-reboots-v23-0-e7453c548c21@oss.qualcomm.com>
 <20260714-arm-psci-system_reset2-vendor-reboots-v23-2-e7453c548c21@oss.qualcomm.com>
Date: Wed, 15 Jul 2026 05:26:42 -0700
X-Gmail-Original-Message-ID: <CAMRc=McKp4WsOY-EQ21n2wbqCp5V0Lr1Cbub5geEhz-LZvVkZw@mail.gmail.com>
X-Gm-Features: AUfX_mylt-DYfwtCtULeZMicFYpxh50vEHg7XonNMSy71MZwRMycF3EtBgUVrSQ
Message-ID: <CAMRc=McKp4WsOY-EQ21n2wbqCp5V0Lr1Cbub5geEhz-LZvVkZw@mail.gmail.com>
Subject: Re: [PATCH v23 02/13] power: reset: reboot-mode: Support up to 3
 magic values per mode
To: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, Florian Fainelli <florian.fainelli@broadcom.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
	Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>, Andre Draszik <andre.draszik@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>, mfd@lists.linux.dev, 
	Srinivas Kandagatla <srini@kernel.org>, Sebastian Reichel <sre@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@kernel.org>, Christian Loehle <christian.loehle@arm.com>, 
	Ulf Hansson <ulfh@kernel.org>, Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Souvik Chakravarty <Souvik.Chakravarty@arm.com>, 
	Andy Yan <andy.yan@rock-chips.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
	John Stultz <john.stultz@linaro.org>, Moritz Fischer <moritz.fischer@ettus.com>, 
	Bartosz Golaszewski <brgl@kernel.org>, Sudeep Holla <sudeep.holla@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-326960-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:shivendra.pratap@oss.qualcomm.com,m:linux-pm@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:florian.fainelli@broadcom.com,m:krzk@kernel.org,m:dmitry.baryshkov@oss.qualcomm.com,m:mukesh.ojha@oss.qualcomm.com,m:andre.draszik@linaro.org,m:gregkh@linuxfoundation.org,m:kathiravan.thirumoorthy@oss.qualcomm.com,m:mfd@lists.linux.dev,m:srini@kernel.org,m:sre@kernel.org,m:mark.rutland@arm.com,m:lpieralisi@kernel.org,m:rafael@kernel.org,m:daniel.lezcano@kernel.org,m:christian.loehle@arm.com,m:ulfh@kernel.org,m:lee@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:arnd@arndb.de,m:Souvik.Chakravarty@arm.com,m:andy.yan@rock-chips.com,m:matthias.bgg@gmail.com,m:john.stultz@linaro.org,m:moritz.fischer@ettus.com,m:brgl@kernel.org,m:sudeep.holla@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:li
 sts@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[36];
	FORGED_SENDER(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,broadcom.com,kernel.org,oss.qualcomm.com,linaro.org,linuxfoundation.org,lists.linux.dev,arm.com,arndb.de,rock-chips.com,gmail.com,ettus.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F04EC75E293
X-Rspamd-Action: no action

On Tue, 14 Jul 2026 19:16:30 +0200, Shivendra Pratap
<shivendra.pratap@oss.qualcomm.com> said:
> ARM PSCI vendor-specific resets, require a 32-bit reset_type and a 64-bit
> cookie as arguments. This cannot be implemented via the reboot-mode
> framework, which supports a single 32-bit argument as magic value.
>
> Extend the reboot-mode framework to support up to three 32-bit arguments
> as magic, per reboot-mode.
>
> Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
> ---
>  drivers/power/reset/nvmem-reboot-mode.c  | 10 ++++----
>  drivers/power/reset/qcom-pon.c           |  8 ++++---
>  drivers/power/reset/reboot-mode.c        | 41 +++++++++++++++++++++-----------
>  drivers/power/reset/syscon-reboot-mode.c |  8 ++++---
>  include/linux/reboot-mode.h              |  4 +++-

Could we avoid having to modify multiple files here by just providing a new
function:

    nvmem_reboot_mode_write_full()

with the prototype you proposed and making the existing
nvmem_reboot_mode_write() a thin wrapper around it?

Bart

