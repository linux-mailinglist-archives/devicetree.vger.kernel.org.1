Return-Path: <devicetree+bounces-273928-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0C5NO7MlsWnJrQIAu9opvQ
	(envelope-from <devicetree+bounces-273928-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 09:20:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 60DC825EF8F
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 09:20:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7AF5533CADE7
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 08:02:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 435DD3B636B;
	Wed, 11 Mar 2026 07:58:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fzBpTV2M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f44.google.com (mail-dl1-f44.google.com [74.125.82.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122B43B635A
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 07:57:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773215880; cv=pass; b=KQa+ZPAgqbUMRwNOUJh50NB+KvYYPCddcCFxFYjhKMDifHq7QeIcn6e/xFo56rxpIMdgsLVFlXQ74srVU7cfoqfPPwnXnwxUpo+HEmOrtk8cxwK7+KWOnQbmT6X6hl3W+KJMo0/ZDZ3fyd7HpDpKDsYHWSHNnPKMe3E57TbLZ30=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773215880; c=relaxed/simple;
	bh=KOemrfvGiBCiGgnJ8CfsltCzoFMPUgEW3U050UEVSRY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RFzI/5QRnjK0aDcTl2AktiGKAQmXg56PacA6pDtMZEJm99tupN2MQRiyY9zBowViJW9lXDurQCFwpljtLlFO3D1UHsmMbHR8+HQZnXVKIhFHC0ElP/UO5ygIu0s0zxcbwlndpD7n3m2Pk1/+GRADUoYkCCIeRj6OulhAlUCF+yw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fzBpTV2M; arc=pass smtp.client-ip=74.125.82.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f44.google.com with SMTP id a92af1059eb24-1273349c56bso17238588c88.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 00:57:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773215877; cv=none;
        d=google.com; s=arc-20240605;
        b=G0ZJGOcRUYWsUBtxtwVqOE7uecBvhtarftBlM9nyEqkXVgSRHmE9eAbHbo4Ui1vVWs
         DbtwhAMpQqQ4zDJDxq263yl5yeDq9K6nob1Ad1Og2E0AAs64fxNtBCKv4gFLKmRPE19A
         SaSxfPvIgHx/dUsQGCAGPQweUDX8/ZOCenV/C7c0vNsWIWZBil2yRazxQkaeCAVEsvOf
         vBKECEKgDlfgkTIFxX6fXWq9vyzdW1vBEnxNVrxeVgwfcA6yhxRFqmQHh19IKqu9cux2
         vIRlzWb3ZJACWgspacBKsywkd3v715iGmdfI6xXm2oMoX+WMSZwYMXOtSjhEIHH6vMs6
         WaoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=KOemrfvGiBCiGgnJ8CfsltCzoFMPUgEW3U050UEVSRY=;
        fh=QYJySirxFXj84AyRxEYWFwFcbWcDglS3ulFK5chyytc=;
        b=GM2MD1O00oKg3rqoVDPPISZDlBvpzYnNQPzkmVEsqckQCNmBEeSGz2bvzkoPUBmfJQ
         RmucMxkk9aCHCtdWKfH+tsQE4P4Jel7A0Oa46PxML4qYMA4pnGZU/RSz4NMY1ey4pz3B
         gwABLmjuilrfHmr/uV5oElX8TkIwEXEu1m9w2rQVBnP326MNM72DXXFEXflQ+uhMlr9n
         qEbzw9Pw/IKZNDpiqv/LRY+HP/kdXfsugkdvEnHUAMDK1Snee1ZVsNc1ifkTmeCOcSIF
         rKBTjjiKZgYnEq1j2aYY2LqUtPkMVHf3LTKORzx5ocsdBwrW7WnwYUuKNNoYdbqTM5vX
         kwDw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773215877; x=1773820677; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KOemrfvGiBCiGgnJ8CfsltCzoFMPUgEW3U050UEVSRY=;
        b=fzBpTV2MZNluj1rTh5kRuNEVVWLS6F/E2IR81iasXJYSRKgatEAj5/TWH/6qT2fast
         U9x8Iyip34KaOiqB9B9ITsIg9zYpyyToDe3qk75W25RFboMsbPU0KMU2QtOHRv565V4+
         hYWFgJOkZVELrNZi2yTQoP8J+woduzJH0ZfN/33TUrHR9z6FctMZhbiGiIQcE72kLVo8
         5cMupnFPAMcHAhPlEbdFYuFsfYyUcRw3/3Xs5HgE+8Kr+DSGOy1mDux9vRXmGaABaAVy
         T9E9r0/aJ9OWWtejngbR+EiZ/n8qkwQBTdtt8LAu75ZevFBxlCYNXyVbLjZSfE8m2Tsj
         jl1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773215877; x=1773820677;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KOemrfvGiBCiGgnJ8CfsltCzoFMPUgEW3U050UEVSRY=;
        b=Cx+NAV5/Lyeg3iiKGxtwBuX4oMbj9XyZaG+0onaPDilQuBAi9Omz0fcOn8CeAe7MCv
         7vQF4P2pgapzg2KfpQl81IL9owDmER2v4QxwAK20y233S+9V28vSao2Ig3+t5ruU/M3a
         GhYo4U0U/KD/98DMdv0/EAzBIBcCRi8e6vQ7PM7c8RZi+yiTVMRluiHTAsb/65tyGCv3
         3X0jvRTzk8ovL8CnjiEDg6rQIwqUMOrtB5gyfnXQ4vDGduCQGTZ+vOl5BfshrQ7GE8Bz
         P1gVJB6li0EfbzWUn+bd7pdDXtEv0LNj7r/mQekgsBVALOig/9+2jVYTclHV0yY8a9eI
         HpQw==
X-Forwarded-Encrypted: i=1; AJvYcCXtFjg1hjXmQBf3/DUm22EBPBuK/hmn5kFWM8ZbQvv9g7Z92dwxr/ZRK0qDMsXFHxVFfQRfolUgDG3b@vger.kernel.org
X-Gm-Message-State: AOJu0YxLR9ZKBNXxEjmIlAe9cRQiSMxeotZkVcat187FY8YCku3nY21t
	cQSI5Rt38MMIVlUlQ2inYkGDMphTSKh2IIDhFy9T99QDcWl3gm02AHxbZIG3zIXd/XYURCWHVMS
	xK7sU1TnZHWCbqaC5gfwoXaeNrTL+8A4=
X-Gm-Gg: ATEYQzyICWf9zYPiWqZBUORRDLMHwVc/A9EOe7/gFLZn68xc/bJ2XOgpYepC0ayXweN
	khVjyeKM5iZZa25uKfNfpiCve+DAY/rsxhoxcWK8aGal3nu4VlYhRHPlNIpPBPBxHt/YFHupRzK
	DKuZ1yWXp1KDGcRvue65xyi2v9G6QL9F5ny0loVFniQw/Qmb/F8C5VG9JOJs/5ht0Imav2iSp6o
	wvI5C2ySMIGfczSrqqk1YKFfuFNLvipTH5sqXHYIXkUA1wpYD0oFwaHxMe5vikZrV86U85qGrRl
	G/+QWPZF97sPqP4A45N+grhwopzlcJ1s48m9rBgA99oU7XQSXwoIR12uyhVkIe1RkVhbLCafkhW
	KvGAjUu/PaO1ASvNBfCZT7Q==
X-Received: by 2002:a05:7022:6a5:b0:11b:65e:f35 with SMTP id
 a92af1059eb24-128e779f429mr633648c88.7.1773215876789; Wed, 11 Mar 2026
 00:57:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260309181524.39423-1-egbostina@gmail.com>
In-Reply-To: <20260309181524.39423-1-egbostina@gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 11 Mar 2026 10:00:47 +0200
X-Gm-Features: AaiRm50JciUmzn7VGe0FizTaDHsgHdp0SKlfOQwmdsfLT8aVkL95VbuXbIkGlKU
Message-ID: <CAEnQRZDZ9Z9ZJhETyhNRK3fcxtdCKxTXuiToagWRFZOhtBWpOQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mp-dhcom-pdk3: Use symbolic macro for IOMUXC_SAI2_TXC__GPIO4_IO25
To: Eduard Bostina <egbostina@gmail.com>
Cc: daniel.baluta@nxp.com, simona.toaca@nxp.com, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Christoph Niedermaier <cniedermaier@dh-electronics.com>, Marek Vasut <marex@denx.de>, 
	Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org, 
	kernel@dh-electronics.com, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 60DC825EF8F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273928-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[danielbaluta@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[nxp.com,kernel.org,dh-electronics.com,denx.de,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mail.gmail.com:mid,nxp.com:email]
X-Rspamd-Action: no action

On Mon, Mar 9, 2026 at 8:20=E2=80=AFPM Eduard Bostina <egbostina@gmail.com>=
 wrote:
>
> Currently, in order to configure IOMUXC_SAI2_TXC__GPIO4_IO25 a magic
> raw value is written in this register. This makes the code not obvious
> to read and modify.
>
> Use the MX8MP_SION symbolic macro instead of the magic value to improve
> code readability.
>
> Signed-off-by: Eduard Bostina <egbostina@gmail.com>


Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

