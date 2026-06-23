Return-Path: <devicetree+bounces-314709-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CRNhNh1FOmpJ5AcAu9opvQ
	(envelope-from <devicetree+bounces-314709-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 10:34:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 759CD6B54D5
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 10:34:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Kt2HkJH4;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314709-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314709-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E3C8F30254B3
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 08:34:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 794053CE083;
	Tue, 23 Jun 2026 08:34:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B526A374197
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 08:34:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782203675; cv=none; b=jsidbUQRqPBvThYkvtSh2vLkvcxKBCZ3Yjq13JnF6q9R5n1PHbJUm83OJAjo94qc9+5NpFzJkI5R/ZgmJIYBoMu9VvUtcqdCzEEQ34LkUC2Eohucbyo3IbbrRl5kyGSOQ9BSUHxpT3Xe7qgoJAxCJdTGuarsHN3NtXNRN7LUwXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782203675; c=relaxed/simple;
	bh=Y0a7WddgUQ/5f5obr2F/RzKsHSRjgorUSTkuUO5qnKs=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IgiLU1KYCcjXO09otFBIRznZLLWKwaa/AYJduvv1Dfph05osGMEzMvfQl0f37qmoh2JYe0+4hURXsIrgXq5/kdkgtruGVlMBsMs7Vy6ZLMVrZB2UHzDMT6UJxWFz35xRay4uYp0/665wZoZhJoKGBE75S9Y4u2sO8t4SSTpMPR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kt2HkJH4; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66A4E1F00A3D
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 08:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782203673;
	bh=Y0a7WddgUQ/5f5obr2F/RzKsHSRjgorUSTkuUO5qnKs=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=Kt2HkJH49eUMpNp44hmnOsa/cj6zhemVuoKImAOY34KH6f9vjiJzR4lc64xOMI395
	 pROr+wwCuXnTUxcAUy96A3/+dC8P5yx/s1evQTV0qPDP47yl1XE+oTBdKF4+v6kJdD
	 x91TxytHaTJPncL654CBHV/3vxCbzT0KwOic99hwZ2ys+w++j9Zg+H2rwzYT8Torku
	 1dNDaZoDAMYqiCvp0U2xdynE0G4rqJnfeUBtJBBoFbQx5CTs2VhtWrK0hx/DUz6hDI
	 j6+KqqA7WF4tuITdQAiyAMzgZu2/0RAzFvojQakjwCzfGglcDjEqb+ULCi9n5SbeZg
	 5TdZbr0BUDOrQ==
Received: by mail-dl1-f46.google.com with SMTP id a92af1059eb24-139aff562e1so3084244c88.1
        for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 01:34:33 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ8RXlMgfxwVoq314Y0aDfPS8y0l+R06eEXqfxqjM7d3SuJ6QorCQ7ogdLJZZfgzHsX/OXyozKKxhGJK@vger.kernel.org
X-Gm-Message-State: AOJu0Yzj3o7E7Kkhd8c0cQvrgOZxv8a3hmDvmqKdTqIzSVRyEn5PhXg8
	m/jYNVJ40NbH1gtsAPQTf6frHR/dKmyhhrOA+en48tW64hYiQEJdpRAt3UY0//qyXlzTl9wzyUH
	jnwGFG9nFBXVgIHER/lPP/wD+dwYiK4RgjaqlLwrRaA==
X-Received: by 2002:a05:7022:439d:b0:139:90ab:36c8 with SMTP id
 a92af1059eb24-139c6ebeb63mr1076352c88.1.1782203672876; Tue, 23 Jun 2026
 01:34:32 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 23 Jun 2026 01:34:28 -0700
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 23 Jun 2026 01:34:28 -0700
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260623030736.1421537-4-sherry.sun@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260623030736.1421537-1-sherry.sun@oss.nxp.com> <20260623030736.1421537-4-sherry.sun@oss.nxp.com>
Date: Tue, 23 Jun 2026 01:34:28 -0700
X-Gmail-Original-Message-ID: <CAMRc=McH-x5Td=60pMNUOmT-rZ3Xz4PvvKFK=8CMwESMOm4iag@mail.gmail.com>
X-Gm-Features: AVVi8CdbY5Iy4YQ3Oz-eyh9mfYSh4JWVxu6-pYJlwg1EFWjmAS3iyrKv35O8gr4
Message-ID: <CAMRc=McH-x5Td=60pMNUOmT-rZ3Xz4PvvKFK=8CMwESMOm4iag@mail.gmail.com>
Subject: Re: [PATCH V2 3/8] Bluetooth: btnxpuart: Add M.2 Bluetooth device
 support using pwrseq
To: "Sherry Sun (OSS)" <sherry.sun@oss.nxp.com>
Cc: imx@lists.linux.dev, linux-pci@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org, 
	linux-pm@vger.kernel.org, sherry.sun@nxp.com, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, Frank.Li@nxp.com, 
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, 
	amitkumar.karwar@nxp.com, neeraj.sanjaykale@nxp.com, marcel@holtmann.org, 
	luiz.dentz@gmail.com, hongxing.zhu@nxp.com, l.stach@pengutronix.de, 
	lpieralisi@kernel.org, kwilczynski@kernel.org, mani@kernel.org, 
	bhelgaas@google.com, brgl@kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[27];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-314709-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sherry.sun@oss.nxp.com,m:imx@lists.linux.dev,m:linux-pci@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-bluetooth@vger.kernel.org,m:linux-pm@vger.kernel.org,m:sherry.sun@nxp.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:amitkumar.karwar@nxp.com,m:neeraj.sanjaykale@nxp.com,m:marcel@holtmann.org,m:luiz.dentz@gmail.com,m:hongxing.zhu@nxp.com,m:l.stach@pengutronix.de,m:lpieralisi@kernel.org,m:kwilczynski@kernel.org,m:mani@kernel.org,m:bhelgaas@google.com,m:brgl@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:luizdentz@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[lists.linux.dev,vger.kernel.org,lists.infradead.org,nxp.com,kernel.org,pengutronix.de,gmail.com,holtmann.org,google.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,mail.gmail.com:mid,nxp.com:email,qualcomm.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 759CD6B54D5

On Tue, 23 Jun 2026 05:07:30 +0200, "Sherry Sun (OSS)"
<sherry.sun@oss.nxp.com> said:
> From: Sherry Sun <sherry.sun@nxp.com>
>
> Power supply to the M.2 Bluetooth device attached to the host using M.2
> connector is controlled using the 'uart' pwrseq device. So add support for
> getting the pwrseq device if the OF graph link is present. Once obtained,
> pwrseq_power_on() is called to power up the M.2 Bluetooth card. The power
> sequencer descriptor is obtained via devm_pwrseq_get(), so the power-off
> and cleanup are handled automatically when the device is unbound.
>
> Signed-off-by: Sherry Sun <sherry.sun@nxp.com>
> ---

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

