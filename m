Return-Path: <devicetree+bounces-211732-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6060BB40600
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 16:04:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7B88A560A5F
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 13:58:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E68CB2DEA97;
	Tue,  2 Sep 2025 13:57:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691C033E1
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 13:57:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756821456; cv=none; b=rqYyb+39GSer8i74PW+x8UOtDNPEd1MR20hXx8w8grDLtjSuQbPTNW/t7inMIWnZ2oZpv5co0AIEAqGP6/wTvB+cmVTC5JnlHgfwSebuO7EdkDbfiG3utst6qxGEbvl4yHgbjGleXEOJbtAXT57JDcp8pKRTd39jLXs8MR0U0/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756821456; c=relaxed/simple;
	bh=Cl93kdhmnBADKGw6aGr/dRYOFWeEF8GZhY9dFSam0CE=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=HGGJ+Qdvb/VJqHdGeLeWCiYCLmHENqHlzb5xP5EAAjMo/FwwpsuX2zSHWuH6R4m9C6PvMRAly8tsRhsj/D2ViLtIK+b5n5lV4vOc1Ln472NVSzm2xAHuysmWx/ztkQI6YDKcvHQ+Z42MFerD/cFKlJb1OHvNsXTGRglXVjCc7Q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1utRVT-0007qZ-Fg; Tue, 02 Sep 2025 15:57:07 +0200
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1utRVT-003P1B-0s;
	Tue, 02 Sep 2025 15:57:07 +0200
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1utRVT-000Rgw-0a;
	Tue, 02 Sep 2025 15:57:07 +0200
Message-ID: <8de5763d7104a552f32196f04363d071548b7bba.camel@pengutronix.de>
Subject: Re: [PATCH 1/4] dt-bindings: reset: thead,th1520-reset: Add
 controllers for more subsys
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Yao Zi <ziyao@disroot.org>, Drew Fustini <fustini@kernel.org>, Guo Ren
 <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, Rob Herring
 <robh@kernel.org>,  Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, Palmer
 Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, Alexandre
 Ghiti <alex@ghiti.fr>, Michal Wilczynski <m.wilczynski@samsung.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Icenowy Zheng <uwu@icenowy.me>, Han Gao
	 <rabenda.cn@gmail.com>, Han Gao <gaohan@iscas.ac.cn>
Date: Tue, 02 Sep 2025 15:57:07 +0200
In-Reply-To: <20250901042320.22865-2-ziyao@disroot.org>
References: <20250901042320.22865-1-ziyao@disroot.org>
	 <20250901042320.22865-2-ziyao@disroot.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Mo, 2025-09-01 at 04:23 +0000, Yao Zi wrote:
> TH1520 SoC is divided into several subsystems, most of them have
> distinct reset controllers. Let's document reset controllers other than
> the one for VO subsystem and IDs for their reset signals.
>=20
> Signed-off-by: Yao Zi <ziyao@disroot.org>
> ---
>  .../bindings/reset/thead,th1520-reset.yaml    |   8 +-
>  .../dt-bindings/reset/thead,th1520-reset.h    | 219 +++++++++++++++++-
>  2 files changed, 223 insertions(+), 4 deletions(-)
>=20
[...]
> diff --git a/include/dt-bindings/reset/thead,th1520-reset.h b/include/dt-=
bindings/reset/thead,th1520-reset.h
> index ee799286c175..927e251edfab 100644
> --- a/include/dt-bindings/reset/thead,th1520-reset.h
> +++ b/include/dt-bindings/reset/thead,th1520-reset.h
> @@ -7,11 +7,186 @@
[...]
> +/* AP Subsystem */
[...]
> +#define TH1520_RESET_ID_C910_C0			5
> +#define TH1520_RESET_ID_C910_C1			5
> +#define TH1520_RESET_ID_C910_C2			5
> +#define TH1520_RESET_ID_C910_C3			5

As the kernel test robot already noticed, this doesn't seem right.

regards
Philipp

