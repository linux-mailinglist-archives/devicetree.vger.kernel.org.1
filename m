Return-Path: <devicetree+bounces-36304-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0ED840735
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 14:39:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6CD461C20849
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 13:39:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56DBB651B4;
	Mon, 29 Jan 2024 13:39:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="Mq/rZv4g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (www.zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB11651AC
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 13:39:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706535576; cv=none; b=nUSYVwR0Wr2leFEkxMAPM6M5Kt1GcuTf6jIaSWavnDInRQYUGZBH4S2zeEzzmYGFhxFwgWLSts16JMASi/g8XaUtFUYT7ZIzlJWYTfj/qnd2N0s6oHfR/DqCCpm9cqBYepFJYTeouf6D4IRYdsP6TUI8SRf+Iy/ISjrfM6ixQsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706535576; c=relaxed/simple;
	bh=DZLG/eaOFFdhgnpZbe7dOvuKH3LsocoZcT6b84kQCRU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=M1FWWt0OhLX/C/3ck6KYIp+4juxpPPs4VKxamt1Db7cnCrODY7P9FFZMfyZAkd8dQb1L7xwsEtWHkTIld9hDaH7Wf0XgSyzx3hA5jAqh5C6Vgvp7CGXUtCDUyUr36lBT0fXH781wC6Ycb7EPSR9pERLOYz66A2LFgH84zpuWryU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=Mq/rZv4g; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=DZLG
	/eaOFFdhgnpZbe7dOvuKH3LsocoZcT6b84kQCRU=; b=Mq/rZv4guvldS3IWM2Ag
	LwXdXmI/RnxvHNR/0tEUAbnWEXNfgA2RrQggsPjmuSkwuH5GU+5c7ReNkhYvnJVW
	Ovj04jF4YuG0vkrG7EYLKNNEHaA74C16T/pCrrOLv240lUMNB4BINpGpg3Ss0kkt
	bpd6Ex8ZKeJvq5Oqinh/FkX506nQU+En+Kv3G25//V8md8SHK2sVUIVR+/6h0JrJ
	XLIQ/HVh3JklNJcIT8K5Cki2QRLhIZRPs/GIMpb8NOlvIXJaopQkIYDOXNWu0mEx
	qoyqix4n4RrjBFq2aSfTA9362eT8o2Vy6LqlXhRqYxLp5GIJ4GIrsPQtGLGDyQDv
	Tw==
Received: (qmail 2495069 invoked from network); 29 Jan 2024 14:39:28 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 29 Jan 2024 14:39:28 +0100
X-UD-Smtp-Session: l3s3148p1@5x5axhUQtJRehhtJ
Date: Mon, 29 Jan 2024 14:39:27 +0100
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH v3 2/2] arm64: dts: renesas: ulcb-kf: add node for
 GNSS
Message-ID: <Zbeqj9c49GXIOWAs@ninjato>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	linux-renesas-soc@vger.kernel.org,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
References: <20240117131807.24997-1-wsa+renesas@sang-engineering.com>
 <20240117131807.24997-3-wsa+renesas@sang-engineering.com>
 <CAMuHMdX7Z8w0JykKuboP__ZE4x+LeKSQAGdyrUezERxysPUCKA@mail.gmail.com>
 <ZbPKPGB7DIHhZ3GJ@ninjato>
 <CAMuHMdW6KV0Gh-JA8x2Z_vj2n5QPDLLFFZRNLUg2rdc3wFqChg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Ylaf6ZwSg+ufLk5J"
Content-Disposition: inline
In-Reply-To: <CAMuHMdW6KV0Gh-JA8x2Z_vj2n5QPDLLFFZRNLUg2rdc3wFqChg@mail.gmail.com>


--Ylaf6ZwSg+ufLk5J
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> Indeed, drivers/gnss/ seems to have no support for I2C yet.

Neither does GPSD. But looking again, I found a I2C->virtualSerial
script to do it: https://github.com/MaffooClock/gpsd-i2c

Everything exists! :)


--Ylaf6ZwSg+ufLk5J
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmW3qowACgkQFA3kzBSg
KbaquQ//T/MwgHTKgIBWLbsnEsH4+wBZgWBfHs8cJfO6pOKm6OTcSVx6+2ULqbAp
/QMDgt6S5DMzisMTbkTHP+iA1sj11HgPP2CO3cQjRSRbdLZAPnIXvofdVLw6Fiw5
oM0O/gW/itXtwHhmdL/jQDyJ1eRVwRyQuYmWczdbZ4ShbCem6PXJfq9bP0WEt/8Q
KUf+sMIHgRZPeRWhRNwaLri1pzq8wZ42e/HYYYHGY9a2UWCauKriITOtbEKK4jjU
rXPE5ShNlkhBIQuPtjc7xdAh0SJQQXt71FyN6Cv83kbHgiESJ1kj2tnHqpuFhVqp
C3Vxop1bmXvW0y0zPDNJjVzhiFu9KcXaAUEshYulO5Ysidsu4Oz0buHJEWI9YqYv
ks/DMCp5YCAiMFeb4duByPy7vh8e7ps01KRaX/TLpxxlWfIKtkRE7dzjhGNrGMd5
qoE6a38lzb16AFd4/lTBfmzb8vqHd1qDSWVwSdl4t/v03SpPUjAnX3RIT5DAt98e
QqQdygdjCG4dNJx5TAbJ8eKstePK6PKGNQRxcT+3afqgCgZya0M82Tr+i2M1JSy7
Oo7LKL/n7L+XdA2FxFWNWOzvRQTknFxKoxa/lTylULtH6n2NQWnudiHPJptgCe+N
ZBQWL6pzji2hJmtGSNDxm/fq4LPU8NTD2qjEZdfVH+6ix+AVGQY=
=LQru
-----END PGP SIGNATURE-----

--Ylaf6ZwSg+ufLk5J--

