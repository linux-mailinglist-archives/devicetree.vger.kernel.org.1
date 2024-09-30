Return-Path: <devicetree+bounces-106536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B3A98A9A1
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 18:20:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EC0F31C232B4
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 16:20:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F24F192B99;
	Mon, 30 Sep 2024 16:19:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from benson.vs.mythic-beasts.com (benson.vs.mythic-beasts.com [46.235.224.207])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 014A93BB24
	for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 16:19:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.224.207
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727713193; cv=none; b=hsU2Cs6kprOmCVgTRb6TFj4TAyFX78YgoWpOLOsf8cymQvKA1WZn32pGaeNE3yGT80OVEP5Z3oEUh8rzvFeoeUIV3AKUb/fUMSUYF+j7NRUZLjcUnb3HdrWOI0U04CD2Q+Givjyt9YpKMQMHrueqEFvIcU2DE3GEFWKRn9pEaZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727713193; c=relaxed/simple;
	bh=JwgyS1/8EuLcaGV8MbX7Bolp1+FxZ9jBIGjX3JhohjY=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=ZTMjS1p/Hgy71UuOovpMWNIppCFkYk2XV/EZmjhjxlsSKuNyhMJdP2NPlr6yFffWXhmTv2HOAfQgyI66oKljsZwhL+H5VclGxH/Lk1iR+9XwyQNfNji9tYGlBPXftAaNzJuBXPTKIEwmsS7NvRW/f2PNFHADc1KmuxLj/EMnWFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hellion.org.uk; spf=pass smtp.mailfrom=hellion.org.uk; arc=none smtp.client-ip=46.235.224.207
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hellion.org.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hellion.org.uk
Received: from cmbg-18-b2-v4wan-169768-cust68.vm17.cable.virginm.net ([81.101.144.69] helo=dagon.hellion.org.uk)
	by benson.vs.mythic-beasts.com with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ijc@hellion.org.uk>)
	id 1svISG-00Adyt-23;
	Mon, 30 Sep 2024 15:36:56 +0000
Message-ID: <1d3780b6017ac15a9f0c42085a18647df02a1958.camel@hellion.org.uk>
Subject: Re: [PATCH devicetree-rebasing] Add support for overlays
From: Ian Campbell <ijc@hellion.org.uk>
To: Jan Kiszka <jan.kiszka@siemens.com>, devicetree
 <devicetree@vger.kernel.org>
Date: Mon, 30 Sep 2024 16:36:56 +0100
In-Reply-To: <034401d8-cc96-455f-9d2d-780fb917d5d5@siemens.com>
References: <034401d8-cc96-455f-9d2d-780fb917d5d5@siemens.com>
Autocrypt: addr=ijc@hellion.org.uk; prefer-encrypt=mutual;
 keydata=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
 7EkE=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Thanks, I've pushed this.

Ian.

On Mon, 2024-09-30 at 07:41 +0200, Jan Kiszka wrote:
> From: Jan Kiszka <jan.kiszka@siemens.com>
>=20
> Make sure that upstream overlays can also be built and, thus,
> checked.
>=20
> Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
> ---
> =A0Makefile | 24 +++++++++++++++++++-----
> =A01 file changed, 19 insertions(+), 5 deletions(-)
>=20
> diff --git a/Makefile b/Makefile
> index fb51acef7c..210830c688 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -100,25 +100,29 @@ clean_%:
> =A0ifeq ($(ARCH),)
> =A0
> =A0ALL_DTS		:=3D $(shell find src/* -name \*.dts)
> +ALL_DTSO	:=3D $(shell find src/* -name \*.dtso)
> =A0
> =A0ALL_DTB		:=3D $(patsubst %.dts,%.dtb,$(ALL_DTS))
> +ALL_DTBO	:=3D $(patsubst %.dtso,%.dtbo,$(ALL_DTSO))
> =A0
> -$(ALL_DTB): ARCH=3D$(word 2,$(subst /, ,$@))
> -$(ALL_DTB): FORCE
> +$(ALL_DTB) $(ALL_DTBO): ARCH=3D$(word 2,$(subst /, ,$@))
> +$(ALL_DTB) $(ALL_DTBO): FORCE
> =A0	$(Q)$(MAKE) ARCH=3D$(ARCH) $@
> =A0
> =A0else
> =A0
> =A0ARCH_DTS	:=3D $(shell find src/$(ARCH) -name \*.dts)
> +ARCH_DTSO	:=3D $(shell find src/$(ARCH) -name \*.dtso)
> =A0
> =A0ARCH_DTB	:=3D $(patsubst %.dts,%.dtb,$(ARCH_DTS))
> +ARCH_DTBO	:=3D $(patsubst %.dtso,%.dtbo,$(ARCH_DTSO))
> =A0
> =A0src	:=3D src/$(ARCH)
> =A0obj	:=3D src/$(ARCH)
> =A0
> =A0include scripts/Kbuild.include
> =A0
> -cmd_files :=3D $(wildcard $(foreach f,$(ARCH_DTB),$(dir $(f)).$(notdir
> $(f)).cmd))
> +cmd_files :=3D $(wildcard $(foreach f,$(ARCH_DTB) $(ARCH_DTBO),$(dir
> $(f)).$(notdir $(f)).cmd))
> =A0
> =A0ifneq ($(cmd_files),)
> =A0=A0 include $(cmd_files)
> @@ -143,15 +147,25 @@ cmd_dtc =3D $(CPP) $(dtc_cpp_flags) -x assembler-
> with-cpp -o $(dtc-tmp) $< ; \
> =A0$(obj)/%.dtb: $(src)/%.dts FORCE
> =A0	$(call if_changed_dep,dtc)
> =A0
> +quiet_cmd_dtco =3D DTCO=A0=A0=A0 $@
> +cmd_dtco =3D $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-
> tmp) $< ; \
> +=A0=A0=A0=A0=A0=A0=A0 $(DTC) -@ -O dtb -o $@ -b 0 \
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 -i $(src) $(DTC_FLAGS) \
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 -d $(depfile).dtc.tmp $(dt=
c-tmp) ; \
> +=A0=A0=A0=A0=A0=A0=A0 cat $(depfile).pre.tmp $(depfile).dtc.tmp > $(depf=
ile)
> +
> +$(obj)/%.dtbo: $(src)/%.dtso FORCE
> +	$(call if_changed_dep,dtco)
> +
> =A0PHONY +=3D all_arch
> -all_arch: $(ARCH_DTB)
> +all_arch: $(ARCH_DTB) $(ARCH_DTBO)
> =A0	@:
> =A0
> =A0RCS_FIND_IGNORE :=3D \( -name SCCS -o -name BitKeeper -o -name .svn -o
> -name CVS \
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 -o -name .pc -o=
 -name .hg -o -name .git \) -prune
> -o
> =A0
> =A0PHONY +=3D clean_arch
> -clean_arch: __clean-files =3D $(ARCH_DTB)
> +clean_arch: __clean-files =3D $(ARCH_DTB) $(ARCH_DTBO)
> =A0clean_arch: FORCE
> =A0	$(call cmd,clean)
> =A0	@find . $(RCS_FIND_IGNORE) \


