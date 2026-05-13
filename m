Return-Path: <devicetree+bounces-296973-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SHAIF2unBGogMQIAu9opvQ
	(envelope-from <devicetree+bounces-296973-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 18:31:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB305371AC
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 18:31:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CBD4A302C167
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 15:46:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2E6D4A1384;
	Wed, 13 May 2026 15:46:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VCDAk4kW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99BD9496902
	for <devicetree@vger.kernel.org>; Wed, 13 May 2026 15:46:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778687172; cv=none; b=jiMU8KbsWjOxhLZUz2/lL/HEfXNszIjgivK9REMc/U45oJ8Bwdp2ToU+Wie3pV4XJylbLR2eUsRtRbUa2eDzWZZIrtFzEH8tclKucFpIUYzvVE78n0fXDOk47gEpfQnGQi+o4VUSHOi/MErh+PGNaZbEbCUw+WKDw9WuJFDUrYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778687172; c=relaxed/simple;
	bh=p2W69PE9zLk6/TftqU6evLE//ajOPXC8lwspmoMpV2U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=S++hY/sem41TQUyrL8ckV9izTdQp18y0TfReVOTbsap3VUx4DwNnnTcq1Lu6yghITsuofRVKtoMUcFl12ACesFs+p22qRa7JEdNuoppS5Rx+REHY8qKASMp4ULGXMXusUdRoC5hZGJjCY2NFNaMBZ6215lKYY+ytQ0GuHxWy7hE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VCDAk4kW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37AE8C2BCC9
	for <devicetree@vger.kernel.org>; Wed, 13 May 2026 15:46:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778687172;
	bh=p2W69PE9zLk6/TftqU6evLE//ajOPXC8lwspmoMpV2U=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=VCDAk4kWr5lROkgbCxaPTBOyKdlmtM4JSybJX+IYJ0Kh81Nn6dR4c7R71AzsnMfLP
	 PG2zZ44k9bCDNldJWeWIfk9PURVmrz98PCF3b+uJsR05mcXhG5ZXetZXWaNp8k7AbH
	 8iYzWa1Rrnl57agdmejuydhYAuJEMN8DIFoqa1Zp6128rFfmvTm9v44NYWbpkhouXv
	 3hxSIPRgfg/6Eav0rV6eWn+wAWl59+pspWR0w8hzlJXB6GPiza1Z0IH9jfXwL3gkWx
	 aUyK70w9rMajj5Z6ilUvJmePzWOZqvCpkCBt2yWv+7lPyDgn3lQaIJUs+8SinaYhcC
	 E6T4X13M1M06w==
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-393c93a01abso59094181fa.1
        for <devicetree@vger.kernel.org>; Wed, 13 May 2026 08:46:12 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ/RPYNbnEwGqqkRISXoYT1RBm7n+CU9/5QyxPmlz+KZ+tiglJ0y4oqoijMirIEnApD4mDrd8LCGfoHL@vger.kernel.org
X-Gm-Message-State: AOJu0Yxu0SPMLNnuimjqBvbwaONHB9aCEusaqRh9++JCUw1hvdKN+2VU
	q2HgeBx53YSDaaotga9mVP55QDCg4E/N4L/VSlYXHT02IzRId5wFc4CUpNm9GgbR+ON9V5gZ/43
	kWUaN+Ny0LD0rx3IwQBGn6EVnjy7v9QgrViWrcxoebQ==
X-Received: by 2002:a2e:8a9c:0:b0:393:b365:6e28 with SMTP id
 38308e7fff4ca-3944b7719b5mr14546711fa.31.1778687170744; Wed, 13 May 2026
 08:46:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260513-nord-clk-usb2-phy-v1-0-8eafcb2d5129@oss.qualcomm.com> <20260513-nord-clk-usb2-phy-v1-2-8eafcb2d5129@oss.qualcomm.com>
In-Reply-To: <20260513-nord-clk-usb2-phy-v1-2-8eafcb2d5129@oss.qualcomm.com>
From: Bartosz Golaszewski <brgl@kernel.org>
Date: Wed, 13 May 2026 17:45:58 +0200
X-Gmail-Original-Message-ID: <CAMRc=Mcps9GrfbP+FMJ-9uLe+G+w_Sp8PHXvywEGbv4ydSzsLw@mail.gmail.com>
X-Gm-Features: AVHnY4JvEog9uAQ6uXxYQi6na6RQSKr-R3zFzCCe566_QBpOOC2Suio_Kny8Dcw
Message-ID: <CAMRc=Mcps9GrfbP+FMJ-9uLe+G+w_Sp8PHXvywEGbv4ydSzsLw@mail.gmail.com>
Subject: Re: [PATCH 2/2] clk: qcom: nord: negcc: add missing definition for
 the USB2 PHY reset
To: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Taniya Das <taniya.das@oss.qualcomm.com>, Shawn Guo <shengchao.guo@oss.qualcomm.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: ACB305371AC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-296973-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Wed, May 13, 2026 at 5:35=E2=80=AFPM Bartosz Golaszewski
<bartosz.golaszewski@oss.qualcomm.com> wrote:
>
> The USB2 PHY reset definition is missing from the negcc clock driver and
> its bindings. Provide it in order to enable adding the USB nodes in DTS.
>
> Fixes: a4f780cd5c7a ("clk: qcom: gcc: Add multiple global clock controlle=
r driver for Nord SoC")
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/negcc-nord.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/clk/qcom/negcc-nord.c b/drivers/clk/qcom/negcc-nord.=
c
> index 1aa24e2784e536e6b6e76f488abd0e2fcc435380..31442d39924a6f79bf39962eb=
b0de8d5c65fa0b0 100644
> --- a/drivers/clk/qcom/negcc-nord.c
> +++ b/drivers/clk/qcom/negcc-nord.c
> @@ -1918,6 +1918,7 @@ static const struct qcom_reset_map ne_gcc_nord_rese=
ts[] =3D {
>         [NE_GCC_USB3_PHY_SEC_BCR] =3D { 0x2d000 },
>         [NE_GCC_USB3PHY_PHY_PRIM_BCR] =3D { 0x2b004 },
>         [NE_GCC_USB3PHY_PHY_SEC_BCR] =3D { 0x2d004 },
> +       [NE_GCC_QUSB3PHY_PRIM_BCR] =3D { 0x2e000 },
>  };
>
>  static const struct clk_rcg_dfs_data ne_gcc_nord_dfs_clocks[] =3D {
>
> --
> 2.47.3
>

Please disregard this, the address is correct but it was supposed to
be called NE_GCC_QUSB2PHY_PRIM_BCR instead. I'll send a v2 on Monday.

Bart

