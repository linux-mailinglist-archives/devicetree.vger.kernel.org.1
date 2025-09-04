Return-Path: <devicetree+bounces-212821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7816AB43D14
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 15:25:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1371A5A1806
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 13:25:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5801302CDC;
	Thu,  4 Sep 2025 13:25:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b="O6DQxQeH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF0F5302769
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 13:25:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756992309; cv=none; b=nVBmM2EIvnZQD2oWVjKmrCWOcXZZGS3dD5dECoaaECghuh9P2jh0CZfgWUpRFgSAmAHTp0cAp9fCFVsLe1KVtEMabraGQUxqjmsy7Zzu7Cvnlaj1rkgZvnMt8g8z87rqj8k9zwFbmE5ifMdASkOYhjM1SfRrYObYki4ZrZhMP/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756992309; c=relaxed/simple;
	bh=mOQr+5LEx0ExgUegDIgONNOFCSyXgvZsVQ/+Sllt3tk=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=F//aPnORetNSfRoCO89ynKgXQHDoqOl1dgY+HAjmPWiOtV5m4xF1bh7KuJutccs8YUxTV1+N0fkfyx8RQ63Gle77ji5e9eFiEfO7GjuNI5xH049dlKkRqJbSeCT/PYW7YmK37kKhiBaSQjAGrtwwym1VD+uWAydq8mCgvlKKAbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca; spf=pass smtp.mailfrom=ndufresne.ca; dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b=O6DQxQeH; arc=none smtp.client-ip=209.85.222.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ndufresne.ca
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-807e414be94so101971885a.1
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 06:25:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1756992306; x=1757597106; darn=vger.kernel.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=mOQr+5LEx0ExgUegDIgONNOFCSyXgvZsVQ/+Sllt3tk=;
        b=O6DQxQeHheMZfg7M4YHj4uCNZlhDZxPvwE0Jrd1UDVzQk7U9cxHJkqF9JOSAYFteaa
         iqMBY1fjW77EXe+mbSw+dwti5R5yB2uStxXp2LP2dOE6v0K4+BFjkXho9n/CnsBawdyS
         ldTwgaG0u0ZKGOTY0cbUzqMEdC0QVGQW+d6sUF3gyuKKBVMsxSbG3kX4gY/B6VA3XGAk
         WIZ/xg4S2mmlQ1HDjRjJlH4rIPUXfN2TI7Ohjg/JsOHJe+/D8YOg9S2/i9wbShbnR5xP
         HneC7NmqFGytgOKqVuJfPJr5asQYQDMg4n1j47NAsm6VT7vIzkw08ctm/d1LYJIDGmqk
         TKAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756992306; x=1757597106;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mOQr+5LEx0ExgUegDIgONNOFCSyXgvZsVQ/+Sllt3tk=;
        b=rRIOVTlomhGH32LHJqUmvhao3UgEQA5rdU4jYI0KDn7UxhBc68SVsAi6H4TRw397u2
         5xUOoMekf3kcLpREq5XAVBFtgV73qEHWxa0Ej3booVzNk6jc93vdstqPHQ/+ZcL4rbra
         bZsjrU6aRqNjryn5Wtqp2Z7EU5hw9AafKbfe9q26VXjzyWJYqUp5bHRo2TQT+tlmdPUE
         mqORhaexnaZZ/oydsGONOkRn49OgKK8Gm+O69FYP18F8IsW2Somjqj7NB82Abm9BSoG5
         wYsDlMPP0BiBJ3y7GrxioGpDHTAGeCEb7AOFkN7V0ioEBzq3B+i6kZg7hpzV+lVU4S2o
         tVqg==
X-Forwarded-Encrypted: i=1; AJvYcCWL4YUMjMiIgn5wi/w1w803T9Fw34DR6739HLE5wuXq/+lkC61p5qYRs7OZYUJeC8NhJCh7dbgPcih8@vger.kernel.org
X-Gm-Message-State: AOJu0YzM72tPpHqeoEIuXDWmylxHjunP36sLVSwn+LGqu798ugy+xmUS
	CNboep1mFv4Rc8LAVvy3Up2oZB5PY+hZULJFYFLExZjC7etKGVKLf8YLgPgelnwrAbI=
X-Gm-Gg: ASbGncvv2Qppp0s5GWaZoW6hlQgerpBlJ0ZP0vn8PB/OPQuMRFAVbsarqL4u5jTFVe6
	ZD8J2SMJVUH83C0iQ9EBxDchsMKqjsxlqfw8KlNhnHNuccHsfunjfWF+CmREFAyVcfpTGmC6Vfo
	xx5P9gtK6z+VslmsB/nMMIgUVwG7WSxlWH+DuBnwgm8jZdT7VTA54T36RVS80XrjiV9k1QzioOi
	ZRb5NauF8Rb3hhZgiFKjLyULplWrzAj+WBZdCtNwA0F6py8Q69lXk2av1QoA7dNCfkDS1TKl3a4
	jt93CAgPGQ0BrCiHkDUYpoHmf5nEZL8veizUVs+zvXQ/NV1HZyfRq5EwXksz7c97ns+YYXiCkPt
	wd3OjH6i+fs4eW5bV9cOFDw9Jgvxavdu11uAa3A==
X-Google-Smtp-Source: AGHT+IGi3AWfg748ENYo8vIlANq8HcVXtJHELC+/xkekcOqjHRS1egP49zyDkpVCeqaePBrXUnTpnA==
X-Received: by 2002:a05:620a:19a7:b0:7e6:8f41:2047 with SMTP id af79cd13be357-7ff26eab696mr2205539685a.6.1756992305020;
        Thu, 04 Sep 2025 06:25:05 -0700 (PDT)
Received: from ?IPv6:2606:6d00:11:5a76::5ac? ([2606:6d00:11:5a76::5ac])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-80aab789f9asm276800285a.47.2025.09.04.06.25.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 06:25:04 -0700 (PDT)
Message-ID: <fcfa00b5ae102d76b02ce1667d27822e6d2c3c81.camel@ndufresne.ca>
Subject: Re: [PATCH v2 0/8] Add support for Wave6 video codec driver
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Marek Vasut <marek.vasut@mailbox.org>, Nas Chung
 <nas.chung@chipsnmedia.com>, 	mchehab@kernel.org, hverkuil@xs4all.nl,
 sebastian.fricke@collabora.com, 	robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 jackson.lee@chipsnmedia.com, 	lafley.kim@chipsnmedia.com
Date: Thu, 04 Sep 2025 09:25:03 -0400
In-Reply-To: <f03d0ae0-d28b-4b06-8f63-9d06f15c0522@mailbox.org>
References: <20250422093119.595-1-nas.chung@chipsnmedia.com>
	 <f03d0ae0-d28b-4b06-8f63-9d06f15c0522@mailbox.org>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual;
 keydata=mDMEaCN2ixYJKwYBBAHaRw8BAQdAM0EHepTful3JOIzcPv6ekHOenE1u0vDG1gdHFrChD
 /e0J05pY29sYXMgRHVmcmVzbmUgPG5pY29sYXNAbmR1ZnJlc25lLmNhPoicBBMWCgBEAhsDBQsJCA
 cCAiICBhUKCQgLAgQWAgMBAh4HAheABQkJZfd1FiEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrjo
 CGQEACgkQ2UGUUSlgcvQlQwD/RjpU1SZYcKG6pnfnQ8ivgtTkGDRUJ8gP3fK7+XUjRNIA/iXfhXMN
 abIWxO2oCXKf3TdD7aQ4070KO6zSxIcxgNQFtDFOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1Z
 nJlc25lQGNvbGxhYm9yYS5jb20+iJkEExYKAEECGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4
 AWIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaCyyxgUJCWX3dQAKCRDZQZRRKWBy9ARJAP96pFmLffZ
 smBUpkyVBfFAf+zq6BJt769R0al3kHvUKdgD9G7KAHuioxD2v6SX7idpIazjzx8b8rfzwTWyOQWHC
 AAS0LU5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAZ21haWwuY29tPoiZBBMWCgBBF
 iEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrGYCGwMFCQll93UFCwkIBwICIgIGFQoJCAsCBBYCAw
 ECHgcCF4AACgkQ2UGUUSlgcvRObgD/YnQjfi4+L8f4fI7p1pPMTwRTcaRdy6aqkKEmKsCArzQBAK8
 bRLv9QjuqsE6oQZra/RB4widZPvphs78H0P6NmpIJ
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-N8OT1sYIOdbRnL+PZAc4"
User-Agent: Evolution 3.56.2 (3.56.2-1.fc42) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0


--=-N8OT1sYIOdbRnL+PZAc4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Le mercredi 03 septembre 2025 =C3=A0 23:47 +0200, Marek Vasut a =C3=A9crit=
=C2=A0:
> On 4/22/25 11:31 AM, Nas Chung wrote:
> > This patch series introduces support for the Chips&Media Wave6 video
> > codec IP, a completely different hardware architecture compared to Wave=
5.
> >=20
> > The wave6 driver is a M2M stateful encoder/decoder driver.
> > It supports various video formats, including H.264 and H.265,
> > for both encoding and decoding.
> > While other versions of the Wave6 IP may support VP9 decoding and
> > AV1 decoding and encoding those formats are not implemented or validate=
d
> > in this driver at this time.
> >=20
> > On NXP i.MX SoCs, the Wave6 IP functionality is split between two regio=
ns:
> > VPU Control region, Manages shared resources such as firmware memory.
> > VPU Core region, Provides encoding and decoding capabilities.
> > The VPU core cannot operate independently without the VPU control regio=
n.
> >=20
> > This driver has been tested with GStreamer on:
> > - NXP i.MX95 board
> > - pre-silicon FPGA environment
> >=20
> > Test results for decoder fluster:
> > - JVT-AVC_V1, Ran 77/135 tests successfully=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 in 35.519 secs
> > - JVT-FR-EXT, Ran 25/69 tests successfully=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 in 17.725 secs
> > - JCT-VC-HEVC_V1, Ran 132/147 tests successfully=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 in 81.549 secs
> > - All failures are due to unsupported hardware features:
> > -- 10bit, Resolutions higher than 4K, FMO, MBAFF
> > -- Extended profile, Field encoding and High422 sreams.
> >=20
> > Test results for v4l2-compliance:
> > v4l2-compliance 1.29.0-5359, 64 bits, 64-bit time_t
> > v4l2-compliance SHA: 2a91a869eb8a 2025-04-12 11:35:53
> >=20
> > Compliance test for wave6-dec device /dev/video0:
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 fail: ../utils/v4l2-compliance/v4l2-test-contro=
ls.cpp(1180): !have_source_change || !have_eos
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 test VIDIOC_(UN)SUBSCR=
IBE_EVENT/DQEVENT: FAIL
> > Total for wave6-dec device /dev/video0: 48, Succeeded: 47, Failed: 1, W=
arnings: 0
> >=20
> > Compliance test for wave6-enc device /dev/video1:
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 fail: ../utils/v4l2-compliance/v4l2-test-contro=
ls.cpp(1169): node->codec_mask & STATEFUL_ENCODER
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 test VIDIOC_(UN)SUBSCR=
IBE_EVENT/DQEVENT: FAIL
> > Total for wave6-enc device /dev/video1: 48, Succeeded: 47, Failed: 1, W=
arnings: 0
> >=20
> > Note: the failures are all related with the eos event.
>=20
> For what its worth, the whole series:
>=20
> Tested-by: Marek Vasut <marek.vasut@mailbox.org> # NXP i.MX95 rev. A0

Do you mind sharing what tests you have done ? Are you confirming the same
fluster and compliance results, have you done more ? Since this is largely
inspired on Wave5, I'd like to see people testing real-world playback, with
seeks, dynamic resolution changes, data lost. On Wave5, latest performance
patches leads to crash or hangs.

Nicolas

--=-N8OT1sYIOdbRnL+PZAc4
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaLmTLwAKCRDZQZRRKWBy
9CJ9APkBYE6lgxbTidGKmQRg5uiMIAXHNH43y00P/DQomgvWBAEAj0Y/qQnRztdC
nn+qennSm56gSH9KiusSuvS6ipCNPAY=
=0v5T
-----END PGP SIGNATURE-----

--=-N8OT1sYIOdbRnL+PZAc4--

