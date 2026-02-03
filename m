Return-Path: <devicetree+bounces-261976-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yOwcC5JBgWl6FAMAu9opvQ
	(envelope-from <devicetree+bounces-261976-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 01:30:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D620D2FD2
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 01:30:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 39195301BC38
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 00:27:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBF341A9FA8;
	Tue,  3 Feb 2026 00:27:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HfHPJtjq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A99EE19B5B1
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 00:27:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770078449; cv=none; b=MW/p6T0Lq+KzCCVaH73WX/YQNFBci+mzTY8R8N098ZnntYVBaZJ/v7jKz3NxYM0N8cfI3riQeXra/oj/rYsnnH+4yCq+c4pto1uMGaGob9HcLtGojoECMt1OvSH4fWoUbPz8c8RcWvlocA5Q8WGcmY0v4VZLzfcReR0xBLQvmvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770078449; c=relaxed/simple;
	bh=X1dKeOc/P6I8oUv7+a1KPUZSaAiGr8VMKbdizFMZGjg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Pxtvl6wX25J0YoYn3ijI7OYOT0Mb6niIoe8JWJMe2Fc1UEWYZ3SmzCra4tLIDKuEaS9jE0aakYv9JKnVknDV1C53xO3QbeUzxoZkU1CmbFrTn5KbhQqYr0JTpdh0sDHz4KIcQkomhCIuDcgJoHGrYZ9ogRvJ4iUAPAnptxhp8OQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HfHPJtjq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D555C4AF09
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 00:27:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770078449;
	bh=X1dKeOc/P6I8oUv7+a1KPUZSaAiGr8VMKbdizFMZGjg=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=HfHPJtjq9EBXemCJ0NiQ87EkcaNo7owb5eh0Wg0pQpohNtwf/Jc1dT6Em02ZF5WId
	 zx6v7ycU3VOmXT1IyRQ4Z+5CX0TsCpiq44YwfNPK9Zp8zH5rxtKooMrLdpWLHsSh5Q
	 OQpR85vfFO7HMA8u25zBxXGEKE1+h6rnVCjnXfTGz9GWp5ay/woje3mhjSdJ8eV0gp
	 Bc/U6ExenCI9pwfuGtIfl6BjGqEUvtOQMeq40dgu5rFvIn/PuCnGIEYja2tEPAzzmv
	 E64dTUoOmW1/9pdm/w0aTe32zxb0bk7jT/6uVPNlJeUqhxLPPN6LO1Of0lOIgRF4SD
	 +RQSYYW5wNhmw==
Received: by mail-yx1-f45.google.com with SMTP id 956f58d0204a3-649bb5a0ba1so2235012d50.1
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 16:27:29 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVMcoe1B/hXPWpAIMsmYSZzK+baWA+J5OPjZccRehW3FKWoWjpkuvJDDczTwl75l/t5Abv7Wtfxsw8l@vger.kernel.org
X-Gm-Message-State: AOJu0YzSpnAhq+Dc51dM51Hgccz2gk0RJMWwHInzmwXlBu23yYRnCfgR
	0wJcCSL5GVwVPKg6sg0OwHFZvgHvlWAujVWlW4v9GkoxJ4t88DQcEz4/0Y3c8H/Rv9po8yZFa9Y
	JB0kRh9KYsCWFW5aPgizybqraX11frEs=
X-Received: by 2002:a53:ef06:0:b0:649:55f6:75c9 with SMTP id
 956f58d0204a3-649a84b96cemr8220578d50.58.1770078448972; Mon, 02 Feb 2026
 16:27:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260202110304.236320-1-jerrysteve1101@gmail.com> <20260202110304.236320-4-jerrysteve1101@gmail.com>
In-Reply-To: <20260202110304.236320-4-jerrysteve1101@gmail.com>
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 3 Feb 2026 01:27:18 +0100
X-Gmail-Original-Message-ID: <CAD++jLk=TxX-zMOudMTniydopMFcvWONBMahSFhmA-7CD4-xKQ@mail.gmail.com>
X-Gm-Features: AZwV_QhOz72IXajNn806oefglpTpz4rdxYpe3f6YGHPcLGcouAU2fnPFNQ-6dFg
Message-ID: <CAD++jLk=TxX-zMOudMTniydopMFcvWONBMahSFhmA-7CD4-xKQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] dt-bindings: iio: gyroscope: bosch,bmg160: add
 bmx055 gyroscope binding
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261976-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sparkfun.com:url]
X-Rspamd-Queue-Id: 7D620D2FD2
X-Rspamd-Action: no action

On Mon, Feb 2, 2026 at 12:03=E2=80=AFPM Jun Yan <jerrysteve1101@gmail.com> =
wrote:

> Add the device-tree binding for the bosch BMX055 IMU (gyroscope part),
> which is compatible with bmg160.
>
> Datasheet: https://cdn.sparkfun.com/assets/b/9/1/f/4/bst-bmx055-ds000_dat=
asheet.pdf
> Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>

Same story, post to devicetree list.

Otherwise looks fine!

Yours,
Linus Walleij

