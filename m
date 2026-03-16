Return-Path: <devicetree+bounces-276355-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CA0SM/hEuGmLbAEAu9opvQ
	(envelope-from <devicetree+bounces-276355-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 18:59:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DAF229EAD9
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 18:59:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C38A23017DD0
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 17:59:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B994F33C1B2;
	Mon, 16 Mar 2026 17:59:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b="xzRdNsBi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com [209.85.222.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360DF33B6E8
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 17:59:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773683957; cv=none; b=pk2eEX2xMySIUP7A5VP+pqf7CWr8xVIVkiHSMy9INJJrUuRZiQoJpXyUBL5qm5O13k4i37oysb/T7/9vUxuMqIVBeotWh8r/NuIn8gMz0G5m763/CEStyoGjbon7AI7wgPhsRp5DTR758w3blbqQ7qLQZxYDLbLN1UI2kKsjB/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773683957; c=relaxed/simple;
	bh=y5avfKnjh41/JWQRZgxs/uL4wWWciPPQDolHRgDT7YE=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=pyzf5HV9Aj1Fw6x0q5/4/y/KwBwaM/61c5lIosQbgQpGfZqJbmyrYK7zh/aEHyIliHhfjk+Q01OvseNtqwSx9+TSoStaUGrcfdDYWJzZ4o45Np7kv4N6tlRMdUBDz0Y9ta6KKhVXrBlUqyqBX20S+oOx+NInVsMROkyGOLQ6icI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca; spf=pass smtp.mailfrom=ndufresne.ca; dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b=xzRdNsBi; arc=none smtp.client-ip=209.85.222.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ndufresne.ca
Received: by mail-qk1-f194.google.com with SMTP id af79cd13be357-8cbb6d5f780so475000585a.1
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:59:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1773683955; x=1774288755; darn=vger.kernel.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=y5avfKnjh41/JWQRZgxs/uL4wWWciPPQDolHRgDT7YE=;
        b=xzRdNsBiFegG+d1BrpQ142gBqmVPVv+2cnSRyXjM06xenDt67P3eop9W4kDZBvYHSF
         TjmbpiVxD/OfH/WR3tahzJHmbNusqQu2Y/1SRhYgaZKghsn8XS8RBG//T0zK71PDcLhp
         rlLQH1emp0IJElc4wJWXKDcaCJlQQAMqjVUI7l5MgmXhz6CCYkC2E0cSG9c+gNS/S4PV
         IXYPv4B8zJOJyRFDXo6QEph5h7sSLHu1oui5erGfAU7XrWcR2svweMyPlWmZ0Yhs0C+X
         LZyfUV2oo8fvQHfVY0TA1+uRtnAimySl2JgrlhAz/V2CU/p2MDldlx7vW9kXrJnZ0JLh
         vdmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773683955; x=1774288755;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y5avfKnjh41/JWQRZgxs/uL4wWWciPPQDolHRgDT7YE=;
        b=GywWp1qHSVKwxnZYX+21S7REhVckuaQMzBq/2h9GEaJiZqCBYTPhCtIvVSCi7NW6S2
         Jr+hP+l01C84TbY1lfhsEMK5DBYwoDCPUG2FcQ2XezHuNYT79aabfBsiMXlLRxVsQw0j
         uPKVDDDHDGOYCNqgNoW82Rv0lPgx0ep0Xozk9pZ7eJDr39jdwgnO2FXxv2UagVyrM6pn
         N7BEWwo8jo0iwnOKqZCw6czIo0bV9Fb/oB7a9M9UvSNZC9CWE0YJf8CWzTyqkbv+jGru
         xXWaUXgEs+3tVzbBbA1Zi6/Xdct5oxQkgBkY82+9A5JK0dFDaCqf4Qw6Lb8BYbueud5s
         y3fQ==
X-Forwarded-Encrypted: i=1; AJvYcCWnFJUhshL4NABhHCHkqzwvF+DoxYp2UvGzTKGoeT3r2DNY6r68/lst/RZNbiTV+FVaU/HeA56WYUjn@vger.kernel.org
X-Gm-Message-State: AOJu0YwO9c7UAJ2ZuMPnwgyWI4bzxZ5crIbFZdbojTyZ/ogeJO7VjjsW
	WjaBwQWP9zNkf5FgL5H+b0VkwfQT8poFLYKztEU2osWgn9SS+LxgHoEfKc49irQ+LSc=
X-Gm-Gg: ATEYQzyyswNqsWaL7Qp21Nf9Ho4NodmAt1ihGv5C/JL+8mpmwrU96qgu8n4sds8Mo2C
	lM2v2a264XDQoKI/cSAN2LKEP6zN9u9+Ao7rCHtElMm4ILAqV5pIBsbCNKBSApeK0sZDaZTNZms
	xmtzIws8kVW0ovNejPgOlAsu+U4tRehMKi44w2kqaF/ZKrp8pU6ceWVGKmVrxa3NNp1I4ivfhIP
	qOguYNt/WQRgTUGAh1DZonlnzGnPCoKIjZ8gW0CTp5qcj5jiCJk92iBWLR2TfK6MVNb7jiRFxxs
	XMP4MJUOPa+ZHbmUvlK4k9FZ4Vp7QinF1l9Fc13uRlgwqdk8PVWLahAaLx8nWGgooW9lIdLlOUq
	uflA3TQUQvmwW7Z4Ma4JMW0oog+Hyb4TnpKfyZ8G46HrSDa2r5MpGt9JUCc8WeeX0ls1ctftZmL
	IVhb32o6dJnqcjYF+um/81yunC1maN
X-Received: by 2002:a05:620a:4713:b0:8cd:9aba:f5fb with SMTP id af79cd13be357-8cdb5aa56famr1781220785a.30.1773683954881;
        Mon, 16 Mar 2026 10:59:14 -0700 (PDT)
Received: from ?IPv6:2606:6d00:11:b76d::5ac? ([2606:6d00:11:b76d::5ac])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cda21484casm1257452685a.40.2026.03.16.10.59.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 10:59:14 -0700 (PDT)
Message-ID: <56de4e9b3478a576475e0d246904b20da417c69a.camel@ndufresne.ca>
Subject: Re: [PATCH v4] media: verisilicon: Fix kernel panic due to
 __initconst misuse
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Francesco Dolcini <francesco@dolcini.it>
Cc: ming.qian@oss.nxp.com, linux-media@vger.kernel.org, mchehab@kernel.org, 
	hverkuil-cisco@xs4all.nl, benjamin.gaignard@collabora.com, robh@kernel.org,
 	krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de, 
	shawnguo@kernel.org, ulf.hansson@linaro.org, s.hauer@pengutronix.de, 
	kernel@pengutronix.de, festevam@gmail.com, m.felsch@pengutronix.de, 
	fra.schnyder@gmail.com, linux-imx@nxp.com, l.stach@pengutronix.de, 
	Frank.li@nxp.com, peng.fan@nxp.com, eagle.zhou@nxp.com,
 devicetree@vger.kernel.org, 	imx@lists.linux.dev, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, 	linux-arm-kernel@lists.infradead.org,
 regressions@lists.linux.dev
Date: Mon, 16 Mar 2026 13:59:12 -0400
In-Reply-To: <20260316155727.GA43134@francesco-nb>
References: <20260306031059.801-1-ming.qian@oss.nxp.com>
	 <20260312173349.GA137045@francesco-nb>
	 <e559b822c5f4fc9167d40544172c6c450d88636a.camel@ndufresne.ca>
	 <20260316155727.GA43134@francesco-nb>
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
	protocol="application/pgp-signature"; boundary="=-hJdAk5mQN9OAKDcOs1p8"
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Spamd-Result: default: False [-2.16 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[ndufresne-ca.20230601.gappssmtp.com:s=20230601];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[ndufresne.ca : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276355-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[28];
	FREEMAIL_CC(0.00)[oss.nxp.com,vger.kernel.org,kernel.org,xs4all.nl,collabora.com,pengutronix.de,linaro.org,gmail.com,nxp.com,lists.linux.dev,lists.infradead.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ndufresne-ca.20230601.gappssmtp.com:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nicolas@ndufresne.ca,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,ndufresne-ca.20230601.gappssmtp.com:dkim,qualcomm.com:email,nxp.com:email,pengutronix.de:email,ndufresne.ca:mid]
X-Rspamd-Queue-Id: 6DAF229EAD9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--=-hJdAk5mQN9OAKDcOs1p8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le lundi 16 mars 2026 =C3=A0 16:57 +0100, Francesco Dolcini a =C3=A9crit=C2=
=A0:
> On Mon, Mar 16, 2026 at 11:25:53AM -0400, Nicolas Dufresne wrote:
> > Le jeudi 12 mars 2026 =C3=A0 18:34 +0100, Francesco Dolcini a =C3=A9cri=
t=C2=A0:
> > > Hello,
> > >=20
> > > On Fri, Mar 06, 2026 at 11:10:57AM +0800, ming.qian@oss.nxp.com=C2=A0=
wrote:
> > > > From: Ming Qian <ming.qian@oss.nxp.com>
> > > >=20
> > > > Fix a kernel panic when probing the driver as a module:
> > > >=20
> > > > =C2=A0 Unable to handle kernel paging request at virtual address
> > > > =C2=A0 ffffd9c18eb05000
> > > > =C2=A0 of_find_matching_node_and_match+0x5c/0x1a0
> > > > =C2=A0 hantro_probe+0x2f4/0x7d0 [hantro_vpu]
> > > >=20
> > > > The imx8mq_vpu_shared_resources array is referenced by variant
> > > > structures through their shared_devices field. When built as a
> > > > module, __initconst causes this data to be freed after module
> > > > init, but it's later accessed during probe, causing a page fault.
> > > >=20
> > > > The imx8mq_vpu_shared_resources is referenced from non-init code,
> > > > so keeping __initconst or __initconst_or_module here is wrong.
> > > >=20
> > > > Drop the __initconst annotation and let it live in the normal .roda=
ta
> > > > section.
> > > >=20
> > > > A bug of __initconst called from regular non-init probe code
> > > > leading to bugs during probe deferrals or during unbind-bind cycles=
.
> > > >=20
> > > > Reported-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.=
com>
> > > > Closes: https://lore.kernel.org/all/68ef934f-baa0-4bf6-93d8-834bbc4=
41e66@kernel.org/
> > > > Reported-by: Franz Schnyder <franz.schnyder@toradex.com>
> > > > Closes: https://lore.kernel.org/all/n3qmcb62tepxltoskpf7ws6yiirc2so=
62ia23b42rj3wlmpl67@rvkbuirx7kkp/
> > > > Fixes: e0203ddf9af7 ("media: verisilicon: Avoid G2 bus error while =
decoding H.264 and HEVC")
> > > > Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm=
.com>
> > > > Suggested-by: Marco Felsch <m.felsch@pengutronix.de>
> > > > Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
> > > > Signed-off-by: Ming Qian <ming.qian@oss.nxp.com>
> > >=20
> > > What's the plan to merge this? It fixes a quite severe regression,
> > > a boot failure.
> >=20
> > To be decided this week. The commit message does not say if it was rele=
ased, or
> > came in RCs (and I didn't check myself yet). I'd say, if its the first =
one, it
> > will go through next and backports, otherwise its is really tight to ge=
t that
> > into the RC series, but serious enough. Please fill the gap if you have=
 time,
> > and I'll handle it later, probably tomorrow.
>=20
> This fixes commit e0203ddf9af7 ("media: verisilicon: Avoid G2 bus error
> while decoding H.264 and HEVC"), that was merged in 7.0-rc1.
>=20
> As of now, because of that, 7.0-rc is not booting on affected platforms
> (i.MX8MP), to me this needs to get merged before 7.0 is released.

Thanks for the info (thanks Thorsten too, pointing out it got picked for
backport into 6.19). This saves me a bit of time, I was away all week last =
week.

So this will be picked for RC, I should have it sent to Mauro by tomorrow.

regards,
Nicolas

--=-hJdAk5mQN9OAKDcOs1p8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCabhE8AAKCRDZQZRRKWBy
9AjoAQC6Fq8nqFrDJHKmYMEmzqQfCe3plFtnxVAGHFpFY/s7owD/TGsDX0oH8gNo
OmK1Jt0VdfCP+LlxOL41kFaZW/vHqQU=
=61za
-----END PGP SIGNATURE-----

--=-hJdAk5mQN9OAKDcOs1p8--

