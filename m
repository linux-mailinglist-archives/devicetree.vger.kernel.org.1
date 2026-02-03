Return-Path: <devicetree+bounces-261975-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iNJrFolBgWl6FAMAu9opvQ
	(envelope-from <devicetree+bounces-261975-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 01:30:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A1FE1D2FC4
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 01:30:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 64297301ABB7
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 00:26:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB1611A840A;
	Tue,  3 Feb 2026 00:26:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aoC94aeO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7BEA18D658
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 00:26:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770078404; cv=none; b=KMGbMn48BGCvdHVKCvTHBvocUhOp7o4g2jl35mGJK2J+EHIaMlJpalksAgXtOdb9bF1C2Hzh5kgohQDiDEcxGidbIoT1ja+R4EBCm4IPdfg0aj7j1w+bcmQzdLwDMhZq8iq0awEMUrPon6j+d9t8pdO9OuOR/OrNw6xHommchRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770078404; c=relaxed/simple;
	bh=oYhKi5mxsO5e/z0oz+DnDKp/rk+buFp2HSBmt3L08M4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aoXbF2Kk9EwWOdkT5KxyTXFtFCQaY3p7WEvNKJpI5UZt+6NVpRc+LPCsQ3yp8DYaer+JCrJxQjevzravfckUsQ6JINUSxDZRxPzAZ9Z6GWq/8Cxl3/rUmDH9jjATPJnyYVS888xsy3Mx8mGDOSGOowCL0+AgyZThUdm9dJmGSDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aoC94aeO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C456C116C6
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 00:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770078404;
	bh=oYhKi5mxsO5e/z0oz+DnDKp/rk+buFp2HSBmt3L08M4=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=aoC94aeOIqU7mnZzb7IGBWfd6meCMAXwyUxOLJIg87j3CSQhJpApXV6TRzadohc+Z
	 Yf+vH5lbKF3n5UWV/1Yq6nBnr6yGNuLbR2vfa3bZ1RNXxz1cJkz+1OLu9SMzn5CeU5
	 6bq389hA3hi/vYHY8ItrwCtbV0GKzz8O6ZyoxeN+CShT627RLFxnWyuJv9WVTn59wC
	 Ka+HF+R+4UmTh3OxW7MqNcml0tLy6eFLOyoln5RPSO5BSt5fcEJEUG336XtBMOAkrc
	 A0HA7/3KDY74uly+qZrZKJTzqywirQq4g7YXnQer5toxki4P0Pn51w1nEgxITFrGhG
	 vvwJXt77pRNRg==
Received: by mail-yx1-f44.google.com with SMTP id 956f58d0204a3-649ae700ba0so3011011d50.1
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 16:26:44 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXjFRR13HcBlSNnqHdOVjQp83B6ZB/NqLl1/9JHfAkmsVa9yT8Oc28Ro98Y2k27Img/2RlXRRbic/du@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1e/Hm3O5v7UQ6FrFXb7Zm8qAIudIFh9lJGzAg85Za9FmqJoFn
	/gMBmdyoY2C5XlPbWd4wo/fDv6DVwwB7HGI7GcyE21cmIjc+iSfEzTWI9tWU9DIBt1LMZpnoTSX
	NP4y+uOWvUt9woYG8dv44ISNmCYFlp2s=
X-Received: by 2002:a05:690c:708d:b0:794:c60d:5c9c with SMTP id
 00721157ae682-794c60d6fdcmr126737907b3.69.1770078403718; Mon, 02 Feb 2026
 16:26:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260202110304.236320-1-jerrysteve1101@gmail.com> <20260202110304.236320-3-jerrysteve1101@gmail.com>
In-Reply-To: <20260202110304.236320-3-jerrysteve1101@gmail.com>
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 3 Feb 2026 01:26:32 +0100
X-Gmail-Original-Message-ID: <CAD++jLkFpmpx3xLtha-t54RaWzqUmYsuEGe0HyOsV0kSik0fTQ@mail.gmail.com>
X-Gm-Features: AZwV_QgrGkv7NyUOXMd3__WW6hUWE4EhnAsyhpcaUFKFNu8hckNvHMDV9KXJ7Aw
Message-ID: <CAD++jLkFpmpx3xLtha-t54RaWzqUmYsuEGe0HyOsV0kSik0fTQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: iio: magnetometer: bosch,bmc150_magn:
 add bmx055 magnetometer binding
To: Jun Yan <jerrysteve1101@gmail.com>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>
Cc: linux-iio@vger.kernel.org, stephan@gerhold.net, hns@goldelico.com, 
	jic23@kernel.org
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
	TAGGED_FROM(0.00)[bounces-261975-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,vger.kernel.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sparkfun.com:url,mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A1FE1D2FC4
X-Rspamd-Action: no action

On Mon, Feb 2, 2026 at 12:03=E2=80=AFPM Jun Yan <jerrysteve1101@gmail.com> =
wrote:

> Add the device-tree binding for the bosch BMX055 IMU (magnetometer
> part), which is compatible with bmc150_magn.
>
> Datasheet: https://cdn.sparkfun.com/assets/b/9/1/f/4/bst-bmx055-ds000_dat=
asheet.pdf
> Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>

Also needs posting to devicetree@vger.kernel.org so resend the patch.

Other than that it looks fine!

Yours,
Linus Walleij

