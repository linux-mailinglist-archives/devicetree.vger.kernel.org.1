Return-Path: <devicetree+bounces-73929-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A000B90160C
	for <lists+devicetree@lfdr.de>; Sun,  9 Jun 2024 14:03:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DA952B20A5F
	for <lists+devicetree@lfdr.de>; Sun,  9 Jun 2024 12:03:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A24723741;
	Sun,  9 Jun 2024 12:03:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2771AAC4;
	Sun,  9 Jun 2024 12:03:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717934595; cv=none; b=dMyYXhKVODpj6TKyaZOlAJNi9z9UVO1rdTXDVDyp7Rr+IlOt6CxECAN91VANg89gmjCZFHgGDf0RH43ehvSNKYZkoGCaWO3BT9NFgm3HNY+9Ew8sFsdTfpPpB96AEZxjpLTarWz2ZDB8GNKrDQKJ+XppUAp4deGarWsu+/kZTPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717934595; c=relaxed/simple;
	bh=FyDa45uldTQz6HYmd7boPFkC9fzN5ur85aNiRcUjOrs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=QovtRivkYfXPHG4deRm40Ynto3ZKsh162Z45tZPL2RDw7XxciRla4J04S8W6FrIkWkqFiglYYFBlLWMZ7K0Y4g+FXkd0OS33sBTZFn5VwuGcq1X4u9XgDxn4MiS1nBfQJ2qSDehOpeaUIH47z8r//Qn1uMuyzIQkYK10aqe5grA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i53875b65.versanet.de ([83.135.91.101] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sGHGB-0002XF-R8; Sun, 09 Jun 2024 14:02:55 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Dragan Simic <dsimic@manjaro.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-kernel@vger.kernel.org, alchark@gmail.com, didi.debian@cknow.org,
 jonas@kwiboo.se
Subject:
 Re: [PATCH] arm64: dts: rockchip: Prepare RK3588 SoC dtsi files for
 per-variant OPPs
Date: Sun, 09 Jun 2024 14:02:54 +0200
Message-ID: <2016518.zToM8qfIzz@diego>
In-Reply-To:
 <9ffedc0e2ca7f167d9d795b2a8f43cb9f56a653b.1717923308.git.dsimic@manjaro.org>
References:
 <9ffedc0e2ca7f167d9d795b2a8f43cb9f56a653b.1717923308.git.dsimic@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Sonntag, 9. Juni 2024, 10:58:19 CEST schrieb Dragan Simic:
> Rename the Rockchip RK3588 SoC dtsi files and, consequently, adjust their
> contents appropriately, to prepare them for the ability to specify different
> CPU and GPU OPPs for each of the supported RK3588 SoC variants.
> 
> As already discussed, [1][2][3][4] some of the RK3588 SoC variants require
> different OPPs, and it makes more sense to have the OPPs already defined when
> a board dts(i) file includes one of the SoC variant dtsi files (rk3588.dtsi,
> rk3588j.dtsi or rk3588s.dtsi), rather than requiring the board dts(i) file
> to also include a separate rk3588*-opp.dtsi file.  The choice of the SoC
> variant is already made by the inclusion of the SoC dtsi file into the board
> dts(i) file, and it doesn't make much sense to, effectively, allow the board
> dts(i) file to include and use an incompatible set of OPPs for the already
> selected RK3588 SoC variant.
> 
> The new naming scheme for the RK3588 SoC dtsi files uses "-base" and "-extra"
> suffixes to denote the DT data shared between all RK5588 SoC variants, and
> the DT data shared between the unrestricted SoC variants, respectively.
> For example, the DT data for the RK3588 includes both rk3588-base.dtsi and
> rk3588-extra.dtsi, because it's an unrestricted SoC variant, while the DT
> data for the RK3588S variant includes rk3588-base.dtsi only, because it's
> a restricted SoC variant, feature- and interface-wise.  This achieves a more
> logical naming of the RK3588 SoC dtsi files, which reflects the way DT data
> for the SoC variants is built by "stacking" the SoC variant features made
> available through the "-base" and "-extra" SoC dtsi files.  Additionally,
> the SoC variant dtsi files (rk3588.dtsi, rk3588j.dtsi and rk3588s.dtsi) are
> no longer parents to any other SoC variant dtsi files, which should help with
> making the new "stacking" approach cleaner and easier to follow.
> 
> The RK3588 pinctrl dtsi files are also renamed in the same way, for the sake
> of consistency.  This also keeps the "-base" and "-extra" groups of the dtsi
> files together when looked at in a directory listing, which is helpful.
> 
> The per-SoC-variant OPPs should go directly into the SoC dtsi files, if no
> more than one SoC variant uses those OPPs, or be put into a separate "-opp"
> dtsi file that's shared between and included from two or more SoC variant
> dtsi files.  An example for the former is the non-shared OPP data that should
> go directly into the RK3588J SoC variant dtsi file (i.e. rk3588j.dtsi), and
> an example for the latter is the shared OPP data that should be put into
> rk3588-opp.dtsi and be included from the RK3588 and RK3588S SoC variant dtsi
> files (i.e. rk3588.dtsi and rk3588s.dtsi, respectively).  Consequently, if
> the OPPs for the RK3588 and RK3588S SoC variants are ever made different,
> the shared rk3588-opp.dtsi file should be deleted and the new OPPs should
> be put directly into rk3588.dtsi and rk3588s.dtsi. [4]
> 
> No functional changes are introduced, which was validated by decompiling and
> comparing all affected dtb files before and after these changes.
> 
> As a side note, due to the nature of introduced changes, this commit is best
> viewed using the --break-rewrites option for git-log(1).
> 
> [1] https://lore.kernel.org/linux-rockchip/646a33e0-5c1b-471c-8183-2c0df40ea51a@cherry.de/
> [2] https://lore.kernel.org/linux-rockchip/CABjd4Yxi=+3gkNnH3BysUzzYsji-=-yROtzEc8jM_g0roKB0-w@mail.gmail.com/
> [3] https://lore.kernel.org/linux-rockchip/035a274be262528012173d463e25b55f@manjaro.org/
> [4] https://lore.kernel.org/linux-rockchip/673dcf47596e7bc8ba065034e339bb1bbf9cdcb0.1716948159.git.dsimic@manjaro.org/T/#u
> 
> Signed-off-by: Dragan Simic <dsimic@manjaro.org>

Well that diff definitly is beautiful. Thanks for finding an option to make
it easily readable :-) .

On first glance looks great, but I'll let this simmer a bit to give others
the time to voice opinions.


Heiko


> ---
> 
> Notes:
>     Changes since RFC:
>       - Improved the accuracy, formality and the level of detail in the patch
>         description, while also addressing all remarks from the RFC
>       - Moved on to using "-base" and "-extra" suffixes instead of "-common"
>         and "-fullfat" suffixes, respectively, as parts of the RK3588 SoC
>         variant dtsi filenames, for a bit better self-descriptiveness and
>         to follow a more formal naming approach
>       - Drastically reduced the size of the diff, using --break-rewrites
>         as an option for git-diff(1) and git-format-patch(1), [5] while also
>         adding a hopefully useful related note to the patch description
>     
>     Link to RFC: https://lore.kernel.org/linux-rockchip/673dcf47596e7bc8ba065034e339bb1bbf9cdcb0.1716948159.git.dsimic@manjaro.org/T/#u
>     
>     [5] https://git-scm.com/docs/git-diff#Documentation/git-diff.txt--Bltngtltmgt
> 
>  .../{rk3588s-pinctrl.dtsi => rk3588-base-pinctrl.dtsi}        | 0
>  .../boot/dts/rockchip/{rk3588s.dtsi => rk3588-base.dtsi}      | 2 +-
>  .../{rk3588-pinctrl.dtsi => rk3588-extra-pinctrl.dtsi}        | 0
>  .../boot/dts/rockchip/{rk3588.dtsi => rk3588-extra.dtsi}      | 4 ++--
>  arch/arm64/boot/dts/rockchip/{rk3588j.dtsi => rk3588.dtsi}    | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3588j.dtsi                     | 2 +-
>  arch/arm64/boot/dts/rockchip/{rk3588j.dtsi => rk3588s.dtsi}   | 2 +-
>  7 files changed, 6 insertions(+), 6 deletions(-)
>  rename arch/arm64/boot/dts/rockchip/{rk3588s-pinctrl.dtsi => rk3588-base-pinctrl.dtsi} (100%)
>  rename arch/arm64/boot/dts/rockchip/{rk3588s.dtsi => rk3588-base.dtsi} (99%)
>  rename arch/arm64/boot/dts/rockchip/{rk3588-pinctrl.dtsi => rk3588-extra-pinctrl.dtsi} (100%)
>  rename arch/arm64/boot/dts/rockchip/{rk3588.dtsi => rk3588-extra.dtsi} (99%)
>  copy arch/arm64/boot/dts/rockchip/{rk3588j.dtsi => rk3588.dtsi} (79%)
>  copy arch/arm64/boot/dts/rockchip/{rk3588j.dtsi => rk3588s.dtsi} (79%)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-pinctrl.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
> similarity index 100%
> rename from arch/arm64/boot/dts/rockchip/rk3588s-pinctrl.dtsi
> rename to arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> similarity index 99%
> rename from arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> rename to arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> index 6ac5ac8b48ab..629049f3dc16 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> @@ -2667,4 +2667,4 @@ gpio4: gpio@fec50000 {
>  	};
>  };
>  
> -#include "rk3588s-pinctrl.dtsi"
> +#include "rk3588-base-pinctrl.dtsi"
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-pinctrl.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-extra-pinctrl.dtsi
> similarity index 100%
> rename from arch/arm64/boot/dts/rockchip/rk3588-pinctrl.dtsi
> rename to arch/arm64/boot/dts/rockchip/rk3588-extra-pinctrl.dtsi
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
> similarity index 99%
> rename from arch/arm64/boot/dts/rockchip/rk3588.dtsi
> rename to arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
> index 5984016b5f96..37101768999b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
> @@ -3,8 +3,8 @@
>   * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
>   */
>  
> -#include "rk3588s.dtsi"
> -#include "rk3588-pinctrl.dtsi"
> +#include "rk3588-base.dtsi"
> +#include "rk3588-extra-pinctrl.dtsi"
>  
>  / {
>  	usb_host1_xhci: usb@fc400000 {
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588j.dtsi b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
> similarity index 79%
> copy from arch/arm64/boot/dts/rockchip/rk3588j.dtsi
> copy to arch/arm64/boot/dts/rockchip/rk3588.dtsi
> index 38b9dbf38a21..0bbeee399a63 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588j.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
> @@ -4,4 +4,4 @@
>   *
>   */
>  
> -#include "rk3588.dtsi"
> +#include "rk3588-extra.dtsi"
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588j.dtsi b/arch/arm64/boot/dts/rockchip/rk3588j.dtsi
> index 38b9dbf38a21..0bbeee399a63 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588j.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588j.dtsi
> @@ -4,4 +4,4 @@
>   *
>   */
>  
> -#include "rk3588.dtsi"
> +#include "rk3588-extra.dtsi"
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588j.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> similarity index 79%
> copy from arch/arm64/boot/dts/rockchip/rk3588j.dtsi
> copy to arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> index 38b9dbf38a21..a379269147c4 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588j.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> @@ -4,4 +4,4 @@
>   *
>   */
>  
> -#include "rk3588.dtsi"
> +#include "rk3588-base.dtsi"
> 





