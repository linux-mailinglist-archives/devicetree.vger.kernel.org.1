Return-Path: <devicetree+bounces-302120-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QIG0AhxtEWpLlwYAu9opvQ
	(envelope-from <devicetree+bounces-302120-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 23 May 2026 11:02:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 706715BE157
	for <lists+devicetree@lfdr.de>; Sat, 23 May 2026 11:02:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C6464301DE26
	for <lists+devicetree@lfdr.de>; Sat, 23 May 2026 08:59:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73F8D37FF57;
	Sat, 23 May 2026 08:59:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sh97Pd4r"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590F137F8D0
	for <devicetree@vger.kernel.org>; Sat, 23 May 2026 08:59:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779526791; cv=none; b=OjqEa/hwS20fYBPMdUrD11VLLZh0pNipe4CPm6qfihxHPNMSVoY99N/HeRFfgbUpQoiTt2hdFcZ0/74SBms0lmFjSGRZWLJUrDgaHtgoM0dHd7XL84W07vQmEseJ+U55CRF2xN5lJSEyeChu526KhIpcusw2dRnUPtBb5DUJT38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779526791; c=relaxed/simple;
	bh=qbX/u0YvILlswAD20c2Nb16wHxkRKuf6rWkIOztP9mg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fnk1Y5zRMMbSsqgoGcvoUrtm2lnsPaH08/uJNvgJ2Xydmhv8VIYHnG5h5PEuMoWEQuCyeAc4yotvSvj9fyVvgqHckMrp7MUlKVo0LxWSH04ef1aIneNtPm2M0YKBPmiSCbSfVk09Nc250TChIrO81f518LmRQP/iNI5iuycH0G8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sh97Pd4r; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0EBE21F00A3A
	for <devicetree@vger.kernel.org>; Sat, 23 May 2026 08:59:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779526790;
	bh=qbX/u0YvILlswAD20c2Nb16wHxkRKuf6rWkIOztP9mg=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=Sh97Pd4rC9Iw7hEt+aYcJxtxh3NCQBnvhR2MNf3CpOy+/pYI4LijnchZCBTUaGlEA
	 t10izqgfqkncdc+rUWlHo8gaM98FryM/Uh3CgCpeR4+RymfjXRr3xlJzdndLG4cpCH
	 3KECiAVgoq/PQcUmBMo0tYpoGq3wGSfjplf27AkrJ5kEXgcbBAOjt7uvI0+vvKUPbo
	 XBuBbtc0Y4R1kv6BJ5eEnaq1qAcRxIDk5hGEUQrq4L+TfcIut9oxX/GbEn8s3hWVr9
	 mIzyPN7yNmOXU8ZCGKiyWc5Lmn5/bkd30L4KBk2YgcffzgbiPAZuCfaxHNmaYRNd0U
	 iDiiXyja5GkkQ==
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-5a884815606so9075176e87.0
        for <devicetree@vger.kernel.org>; Sat, 23 May 2026 01:59:49 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ/fBe9OCo2hEInQ0n+8Ts9FlnMNKfL+rJsGaOXERlzWRN2N0KX0/gWaQ6eLMb+hAXHW6who/TNRZ9Vl@vger.kernel.org
X-Gm-Message-State: AOJu0YxD49rhdaZkbLHO4d4Gj12fYZwdt9paxfODZeiKZwW5/GvgPviD
	CXa9ZBiXVTdEunTXTplwrhUcH+LisoyDJoY4+xLYKUNs2ktdJyfXCQ6e2uzRs8Rr5/92gcHO9PZ
	tbXsa7qkI0uyCdHe81LTB67PGEUi9Pz0=
X-Received: by 2002:a05:6512:10c5:b0:5a8:9756:f6b8 with SMTP id
 2adb3069b0e04-5aa323cd97emr2082906e87.35.1779526788895; Sat, 23 May 2026
 01:59:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260512060917.2096456-1-shubhrajyoti.datta@amd.com> <20260512060917.2096456-4-shubhrajyoti.datta@amd.com>
In-Reply-To: <20260512060917.2096456-4-shubhrajyoti.datta@amd.com>
From: Linus Walleij <linusw@kernel.org>
Date: Sat, 23 May 2026 10:59:36 +0200
X-Gmail-Original-Message-ID: <CAD++jL=iCJpKirfc0GqUuKjrLjeEyWMvcmDx26+hTFtcYz0uPw@mail.gmail.com>
X-Gm-Features: AVHnY4JF7lnezv7m1tQlOKAjlmVpjnjJD07jbsl29OKRAreK5EuKH4xjhiad3wk
Message-ID: <CAD++jL=iCJpKirfc0GqUuKjrLjeEyWMvcmDx26+hTFtcYz0uPw@mail.gmail.com>
Subject: Re: [PATCH v4 3/3] gpio: zynq: Add eio gpio support
To: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
Cc: linux-kernel@vger.kernel.org, git@amd.com, shubhrajyoti.datta@gmail.com, 
	Srinivas Neeli <srinivas.neeli@amd.com>, Michal Simek <michal.simek@amd.com>, 
	Bartosz Golaszewski <brgl@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-302120-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,amd.com,gmail.com,kernel.org,lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid]
X-Rspamd-Queue-Id: 706715BE157
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, May 12, 2026 at 8:09=E2=80=AFAM Shubhrajyoti Datta
<shubhrajyoti.datta@amd.com> wrote:

> Add support for the EIO GPIO controller found on
> xa2ve3288 silicon.
>
> The EIO GPIO block provides access to multiplexed I/O pins exposed
> through the EIO interface. Only bank 0 and bank 1 are connected to
> external MIO pins, with 26 GPIOs per bank (52 GPIOs total). This
> change extends the Zynq GPIO driver to support the EIO GPIO
> variant.
>
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>

Reviewed-by: Linus Walleij <linusw@kernel.org>

Yours,
Linus Walleij

