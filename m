Return-Path: <devicetree+bounces-276285-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cMAoBpIiuGk8ZgEAu9opvQ
	(envelope-from <devicetree+bounces-276285-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 16:32:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F397C29C6FC
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 16:32:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E6394302DA9F
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 15:28:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A5D93A2577;
	Mon, 16 Mar 2026 15:26:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b="u1VWQwa5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com [209.85.222.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1233AA1A3
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 15:26:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773674780; cv=none; b=OE2X5GdgwtmlAQgATfXYZ63aGQPtcsO2g2z4QcCdXHbpfQ+KNC5MRyMeOZGY3cExAjOX02Ttt0bhF2Kgi688b/103OB4TTFich+T2suNFjx2DuWAYiqwjm/DdIgYkd5gXFAHMcdzEbAwyJmuakXCU/CyhzfLYJg4brl99STrz3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773674780; c=relaxed/simple;
	bh=ChNwrvwut9AH8kQhXrPmezqcMvifV/XRrhrpWQpij9s=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Rf3o8CbNECwlv9sL86M44ylYypmV2/Zpu2phG6V2h4EbvQthivwBpj6p5qMPN0ljYT2b8hbVoFS9VrLKPLJ75WomcRIdTv/fY9/WQDPQ1N23enNJVygIW4zgYK4Nl7buWa41BV+fSgK4JEjmOmbdJBXLv3siVqzOWvnAcTYsDEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca; spf=pass smtp.mailfrom=ndufresne.ca; dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b=u1VWQwa5; arc=none smtp.client-ip=209.85.222.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ndufresne.ca
Received: by mail-qk1-f194.google.com with SMTP id af79cd13be357-8cd80bea5f3so295822985a.3
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 08:26:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1773674777; x=1774279577; darn=vger.kernel.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ChNwrvwut9AH8kQhXrPmezqcMvifV/XRrhrpWQpij9s=;
        b=u1VWQwa5ye9ZBXKUG6uLwhPpkJoxE/ivguem9y5a2s5fFljWwfgpRqGdGFVtdej8mm
         Sc61rUkgkaaovXoNyiKW1O9gRYoaCokdpJ3Po6Lz4/jJlrZLiDM9WgR0QC3MwpZhOsf8
         sejh8E7RrvsIB195GxxOotAa75Ws6uXHopvaclIm7NvzfjfVfC764YOEebrejH11Un2H
         cOCk6qTiwinH4T4FTCQzGIaG3w2mQQLA1YYlEnhr6dItWYcPKZxww+EFM6QqIFMB1PUV
         k7YfcMpiNVKwpfIGXhSj3xxY+nOxC4seSXRZeLwpIT0H5ggitqMRACu21yVCWQ75jIxI
         UhEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773674777; x=1774279577;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ChNwrvwut9AH8kQhXrPmezqcMvifV/XRrhrpWQpij9s=;
        b=g089swTP53Rseq34FZy+vJbAkF5XuHbByPLfeysJc3Pm9q7xG9xTMwGOaCanek1903
         lo1vY0fqfwy4fVfexNdK88zTndRVC+TRh2eq5buE2s842nAY39w1m/0q/B29bpS/mNwS
         v/FmnVsaBup+N24LTWYJ8gkE6FKzMnUlWz3foHeeNpWPyI4idz+1wBPVkyTz0SbyA0Tu
         5j/u0BaqQDLD9SED6Hly2OWyaYgMxZKTE175HVCmKG42+KbKXsycgaHczlH79StaS+ih
         VaHhNFlC6JjXw1GbUOY6o13VoaP/j8YdxYnP5T7oxs3DibMoI4QYqie2ybXt8Tk7ZqtU
         K3QQ==
X-Forwarded-Encrypted: i=1; AJvYcCUA7D25IieEjovr193Eynio58vl6aP0+DT1sznXFY7h0VDxO1tFS9AuLsRBtxql8hnkekfc8lHQy7LH@vger.kernel.org
X-Gm-Message-State: AOJu0YzIZCDnBrVy6fpuRQRYAKZYsSVOwme1YaX+ND1MMv+A7g9qzfWD
	xYf46M4aybn6idvI6/+nzHFrOexKoLAnc5cXR9CGpuAC3ZmJFNoIDKHxwmeK43vn8yI=
X-Gm-Gg: ATEYQzy8VQRQvJDOzyB8SycM8c8ZHnUiYzCqjzuM8FrpqlSX7KLxirz+RNhc9DXxWBq
	3yV4rHlCy9nwXRX6kG4Oo97u7TlNOzxd/X5pCAQ2hLydgkMquaBhlomjeiT+7xhc+sWH4mH+/yU
	jRWJhEabR4NGd7tGDHKojJa1Xg/OA5qZCJRHbXMi9jttaPC2dDbPo/K28THowPFiJanLEDOaUiR
	WWQf3Zz/RiBolt7gF1eNZ+6opgc1b4TV0h5xMkSU7c64fUDhZnYkiXBe9AAsgMRhECSoogl1V6U
	ZcN0FMG3zUtEou+F6e5NFffizHGBy0RpUrpX1MXo08tpZUA7Hd72diOIEYlo1wsLkeAF+X448eY
	TVOKghAUeBeJjZPT/vJ/elPku8+JRTO4GZlVRTBdPKw7mbh9mXqpY57aKserMyKPTuuO7ke4T6y
	aaK7nHnHtNv6xGKzqrhS3Te1lsaYQ/
X-Received: by 2002:a05:620a:170f:b0:8c9:e989:9d97 with SMTP id af79cd13be357-8cdb5b56e2fmr1651069785a.68.1773674776906;
        Mon, 16 Mar 2026 08:26:16 -0700 (PDT)
Received: from ?IPv6:2606:6d00:11:b76d::5ac? ([2606:6d00:11:b76d::5ac])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cda1fddfe8sm1228675185a.12.2026.03.16.08.26.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 08:26:15 -0700 (PDT)
Message-ID: <e559b822c5f4fc9167d40544172c6c450d88636a.camel@ndufresne.ca>
Subject: Re: [PATCH v4] media: verisilicon: Fix kernel panic due to
 __initconst misuse
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Francesco Dolcini <francesco@dolcini.it>, ming.qian@oss.nxp.com
Cc: linux-media@vger.kernel.org, mchehab@kernel.org,
 hverkuil-cisco@xs4all.nl, 	benjamin.gaignard@collabora.com,
 robh@kernel.org, krzk+dt@kernel.org, 	conor+dt@kernel.org,
 p.zabel@pengutronix.de, sebastian.fricke@collabora.com, 
	shawnguo@kernel.org, ulf.hansson@linaro.org, s.hauer@pengutronix.de, 
	kernel@pengutronix.de, festevam@gmail.com, m.felsch@pengutronix.de, 
	fra.schnyder@gmail.com, linux-imx@nxp.com, l.stach@pengutronix.de, 
	Frank.li@nxp.com, peng.fan@nxp.com, eagle.zhou@nxp.com,
 devicetree@vger.kernel.org, 	imx@lists.linux.dev, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, 	linux-arm-kernel@lists.infradead.org,
 regressions@lists.linux.dev
Date: Mon, 16 Mar 2026 11:25:53 -0400
In-Reply-To: <20260312173349.GA137045@francesco-nb>
References: <20260306031059.801-1-ming.qian@oss.nxp.com>
	 <20260312173349.GA137045@francesco-nb>
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
	protocol="application/pgp-signature"; boundary="=-6HvdHsM5JK0qWfzveRb3"
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[ndufresne.ca : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,xs4all.nl,collabora.com,pengutronix.de,linaro.org,gmail.com,nxp.com,lists.linux.dev,lists.infradead.org];
	DKIM_TRACE(0.00)[ndufresne-ca.20230601.gappssmtp.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276285-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nicolas@ndufresne.ca,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: F397C29C6FC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--=-6HvdHsM5JK0qWfzveRb3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le jeudi 12 mars 2026 =C3=A0 18:34 +0100, Francesco Dolcini a =C3=A9crit=C2=
=A0:
> Hello,
>=20
> On Fri, Mar 06, 2026 at 11:10:57AM +0800, ming.qian@oss.nxp.com=C2=A0wrot=
e:
> > From: Ming Qian <ming.qian@oss.nxp.com>
> >=20
> > Fix a kernel panic when probing the driver as a module:
> >=20
> > =C2=A0 Unable to handle kernel paging request at virtual address
> > =C2=A0 ffffd9c18eb05000
> > =C2=A0 of_find_matching_node_and_match+0x5c/0x1a0
> > =C2=A0 hantro_probe+0x2f4/0x7d0 [hantro_vpu]
> >=20
> > The imx8mq_vpu_shared_resources array is referenced by variant
> > structures through their shared_devices field. When built as a
> > module, __initconst causes this data to be freed after module
> > init, but it's later accessed during probe, causing a page fault.
> >=20
> > The imx8mq_vpu_shared_resources is referenced from non-init code,
> > so keeping __initconst or __initconst_or_module here is wrong.
> >=20
> > Drop the __initconst annotation and let it live in the normal .rodata
> > section.
> >=20
> > A bug of __initconst called from regular non-init probe code
> > leading to bugs during probe deferrals or during unbind-bind cycles.
> >=20
> > Reported-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> > Closes: https://lore.kernel.org/all/68ef934f-baa0-4bf6-93d8-834bbc441e6=
6@kernel.org/
> > Reported-by: Franz Schnyder <franz.schnyder@toradex.com>
> > Closes: https://lore.kernel.org/all/n3qmcb62tepxltoskpf7ws6yiirc2so62ia=
23b42rj3wlmpl67@rvkbuirx7kkp/
> > Fixes: e0203ddf9af7 ("media: verisilicon: Avoid G2 bus error while deco=
ding H.264 and HEVC")
> > Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com=
>
> > Suggested-by: Marco Felsch <m.felsch@pengutronix.de>
> > Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
> > Signed-off-by: Ming Qian <ming.qian@oss.nxp.com>
>=20
> What's the plan to merge this? It fixes a quite severe regression,
> a boot failure.

To be decided this week. The commit message does not say if it was released=
, or
came in RCs (and I didn't check myself yet). I'd say, if its the first one,=
 it
will go through next and backports, otherwise its is really tight to get th=
at
into the RC series, but serious enough. Please fill the gap if you have tim=
e,
and I'll handle it later, probably tomorrow.

Nicolas

--=-6HvdHsM5JK0qWfzveRb3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCabghAgAKCRDZQZRRKWBy
9NFwAP9sVkqCaBiBRpXCvZHE5Oa05+dzKFdWC5+h1oxIeJJ4dQD/VD/qrH1k6wW/
L9bxPFGmfGPNVwVSrJM7fk/6BwpNMg0=
=TFXY
-----END PGP SIGNATURE-----

--=-6HvdHsM5JK0qWfzveRb3--

