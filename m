Return-Path: <devicetree+bounces-262433-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id HRTlMHyGgmnDVwMAu9opvQ
	(envelope-from <devicetree+bounces-262433-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 00:36:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E27BDFC6A
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 00:36:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9AFC630075CF
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 23:36:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DECE932AABC;
	Tue,  3 Feb 2026 23:36:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OVrc54hv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC19830FC32
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 23:36:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770161785; cv=none; b=FgGGlMS1CfHt66hPM4HWk1MPAfIz/WTVBFa/sy5EdFdzgo7y00mUxt//SkSyX/WCZS7Ck/RTVkzsTNt/QQc3BMLI2BvVmxGZZXdnBCooV8VPODrnMod9O0ulsHZ7RM3ZNLrWx/7IffjgQtcYNh9G2cjoPQ/OVrzbhGK9FhcGuHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770161785; c=relaxed/simple;
	bh=/DENgcYjGI73XTinEBOVeJktLir1+AMm2WJDLIBAhpA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=O3Ei6+biP37RgfuaJ/I4wLD/iDvmwTOEclFLymR+Iu8/m+9oAWphTBPumII/hRAPufSQwHJs+RgkDbp3WGuTNq1sq2WYcD1me3Od6TaFfJ/tnM+chOB5zIfl6J1gkEY88PjWAjxBO2pe32wTmT7ONReawyfoIDlr2ehhz4cqx/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OVrc54hv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55DE8C2BC86
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 23:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770161785;
	bh=/DENgcYjGI73XTinEBOVeJktLir1+AMm2WJDLIBAhpA=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=OVrc54hvba4bfrmvNvEP0IWzH/TthZjv/wJjV1w6CvmOAGW//gUxoTsQPGwVIwjYI
	 DWC/ZMETB8XcTT5oeVNZKkrvFO5gLsdq1zBpNB3csGZiJ+OKSoeySGrMYiBjk060c3
	 sxwpeItspeUccvjEqfYfMhZcGd2Ft4trCbjer7r6S0iaBLV2RZtJMIlgFrWgG0Ffm8
	 Ri2tV/h76rq+FaBsookH/O2jjWXHTsbmFT4u77fq0AqYH7eeTB3ONtWnZ+JfucgkL7
	 qnHW6r7o/5xCTvjshCeOvy967bntCwdgnE6P7Q+hsCWFTyBhc6t8hDcSlpRBEh7wRD
	 ZiXfrvK/KY/ew==
Received: by mail-yx1-f54.google.com with SMTP id 956f58d0204a3-649d4690174so1360271d50.3
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 15:36:25 -0800 (PST)
X-Gm-Message-State: AOJu0YxZwFytLq112hMnuThhT0NWPa0c6+Pg6T8s0RsjBZFtnBCsDQj6
	aUr4V10aA+joCITU3UJeV+W9GOJa1W01tJAIR2u1/wTBSrUbVbOl7j1uA3s0lKw+E75CuihRYiB
	v6PWmh8e6rl7hOdkHWe6IFxYZa6AgDVc=
X-Received: by 2002:a05:690e:1508:b0:644:6f3c:11fc with SMTP id
 956f58d0204a3-649db358cdcmr1142009d50.21.1770161784634; Tue, 03 Feb 2026
 15:36:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260203143946.301233-1-jerrysteve1101@gmail.com>
In-Reply-To: <20260203143946.301233-1-jerrysteve1101@gmail.com>
From: Linus Walleij <linusw@kernel.org>
Date: Wed, 4 Feb 2026 00:36:13 +0100
X-Gmail-Original-Message-ID: <CAD++jLkYBCWD4gXmYXSUYgmn76gCpi6=ZwFZZa4XhSCjxMzgRg@mail.gmail.com>
X-Gm-Features: AZwV_QiTjB2kvTFQj4pEB9ucXzUaaB3fCI7_XPTMEtaGL-7OAoGAxnnrcSlf6d8
Message-ID: <CAD++jLkYBCWD4gXmYXSUYgmn76gCpi6=ZwFZZa4XhSCjxMzgRg@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] iio: add support for Bosch BMX055 IMU
To: Jun Yan <jerrysteve1101@gmail.com>
Cc: devicetree@vger.kernel.org, linux-iio@vger.kernel.org, stephan@gerhold.net, 
	hns@goldelico.com, jic23@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262433-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 1E27BDFC6A
X-Rspamd-Action: no action

On Tue, Feb 3, 2026 at 3:40=E2=80=AFPM Jun Yan <jerrysteve1101@gmail.com> w=
rote:

> The BMX055[1] is a Bosch 9-axis IMU integrating a 3-axis accelerometer,
> gyroscope and geomagnetic sensor.
>
> It supports SPI/I=C2=B2C interfaces, and existing compatible drivers can
> be reused by simply adding the corresponding dt-bindings for fallback
> coompatibles as follows:
>
> - accelerometer: bmc150-accel
> - gyroscope: bmg160
> - magnetometer: bmc150_magn

The series:
Reviewed-by: Linus Walleij <linusw@kernel.org>

Yours,
Linus Walleij

