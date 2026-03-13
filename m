Return-Path: <devicetree+bounces-275557-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CHgdCD6BtGlTpAAAu9opvQ
	(envelope-from <devicetree+bounces-275557-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 22:27:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2238428A202
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 22:27:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 12630300B8E5
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 21:27:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C195382F2F;
	Fri, 13 Mar 2026 21:27:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kuwMu3FP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C00F214A64
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 21:27:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773437241; cv=pass; b=Rlf3+wixdy9ZFjuShtp6ndmtEdhfDIiZLyLs4FpsDrwI1T8NoCdLyzWIqxvkkECVUdZTz25Narbtdj8rjrWPJ1HgYuFwCI/6hDRyiQmzJnnxQpA0or/7CGHwa2hA3QUxoNo2Hi/8ireTBkeuUk5B771gYXGfYlwJdVlv8kdyYdI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773437241; c=relaxed/simple;
	bh=Mu4QL9itUMaZvCAaMREMIWEtSf4+H1iYSm9D5SGGewA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=k89XCH+zNQ6qS8BvE1reT4WiZelaGUF8HoQmlwUpilw3kQwyHC/UCT1I78vUi4kHQCM9J7aVahTbiPXtdvw6jM1bgxzS4KbnbWQOc2WnTXxC7JHE88Qz7xVrKVjsKpcfdkaaC9niqSOXZTRX1pUxHFGXwJjJUBvr+3Bz37nBHuY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kuwMu3FP; arc=pass smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-439aeed8a5bso2739874f8f.3
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 14:27:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773437238; cv=none;
        d=google.com; s=arc-20240605;
        b=cTfE3njyDsUB/v2I5SgtD9h2ve+1R4j7J4QSYYyoYK5DhYmMYjxTHdfIs7CaIepXWZ
         PGaTzqtpubPA+6xt1lakKNXwgMbHOiTDGX43COHlZXUn3ko+VPKrC8+5JI/UYsAdmP2U
         0z+LaYHF6M/A55xcZTujSCZVI5fg8KZqM7cGL41SVugbtGyeR5Y6cvR8TBbrnHKtKydN
         k4lzy0J1JNQvCscWgRUITkU0BqVE5n+uLP3mk6VseU1ls2gyKToAvvbqxq06L8p2SAjB
         gBcXcHZjWOIdnXqjwHZA7iStH4ISkk3f+gi/3fTG5sY5Hwq7g5RSFjAQamggWa0Zy/Zr
         wN4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=hNqPR9afYYngIxPOY+LyXKakGBy9VYA9o61Z936t+Eg=;
        fh=Sgxj0n1AdIOS+YELHj+QmelJ7sJeMkNT16P/ryv6jnw=;
        b=hnH13OaFlaHJGwuBFE5cS9oiveXQcUW75Siev9NWaiU/GxHZsmOQBpr2KheskDPrUL
         ZbdRK0s+f4ghnCf86LEWJDF7wAT+f8wX684vGFZ/5Ol6BxPPO8yV271dMwSPRf0jzaSi
         dQz48G/lc97aBBEKC/OBn/fuWcP/fCw+kgZ9hgUYwcZElHFRyZmxlJAZXkHbAxHrT8Fp
         fEgynu8Y8b37YtSJ8ZkDBU00YrzNF/fncaQKb3OFU1Q0B9hVJ7rOnF4Y1Vc4pHQrEw/F
         Kh9+KJEX5gQxghoig3NLX2ruVsRs5KGROpQ4unSbKcppgzGIO2N7kWJJgAxAWSWsLMTg
         VFoQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773437238; x=1774042038; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hNqPR9afYYngIxPOY+LyXKakGBy9VYA9o61Z936t+Eg=;
        b=kuwMu3FPO8JSmWw/74HWuUhdC1Gx0l/ZR/UpDGNhiZmHQF4agS5JnPCllWz+cgXzNq
         fDyW5hl21QGrTPA0zTVMrJ/r8CcZ/Z853rQbbYk/2dUgj035H8/5FO8JXGCxKzJuRsYv
         7UzVP/pZji5oKpOMAhSL8mK2gs3vNmnUJZzlvjxL6hpDvGMQb6gQgien5RPG5owbFPbr
         apCT4hBirQgFXxAcybVMB7ZiK5WWI4OwncsWXhKrG/CpqC63yybHc81M5mVNKIPe1ikk
         QRhz3gj95VJU5XTBmpFSixNYnkd/69o+1Y5g8gaoLJte/6EwzdHH+hYechNR0Peq0TL/
         jKlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773437238; x=1774042038;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hNqPR9afYYngIxPOY+LyXKakGBy9VYA9o61Z936t+Eg=;
        b=hwMIvFto8Tuqp9i4AXbY2akgNeek0azgKnZlz8IHSHMHAZPrvyAa1QIDezW3e1+zx7
         ek9NIB2BGajqXzmmT+g9N7ihiDLY8m5242futtsv66vZjFbkbZ/dJYyKieRohctoC399
         wJDRizE0ZsBwsZxUn4j+EDfepwE6IPYnCZCnrlQojBWMLXwgivlkkNAJZJTs5uvHvGbO
         2gFzBKhbk/Fi3EC1OqKxq/fLmS6iC1IoEVv8uaOSDQU+tpUZALavVrsoWooue0SMHfum
         1aIR5xv1etbs5XRRVPbqo7jKhvjuO70mGMm6NiQfLMOoVN/P8gCFwu4eiRfn/CaUgLh1
         Gs/w==
X-Forwarded-Encrypted: i=1; AJvYcCUIkRgUpVlKmlD0P60TKSp3HnHM8Ng0eW3aKBW85MK28ow9PYLPy5Yhe9VkebUOE31p1L+fA4W5qLkd@vger.kernel.org
X-Gm-Message-State: AOJu0YyI4Kpo3mhKM1QKXi1cGfqNfbB3XhQiqD0w6Bfv1A8CFuylolOX
	GOkdO8zlY1rktZU2+Mddu/wrErlSwub4YEGJei0HbIhYheyEiTVvJlc4X6Eafejtlcl4ygrrwvi
	dWThtsO9+u+rDunUzFYgC7VMCdXT6icI=
X-Gm-Gg: ATEYQzx/MxNcY93r9xmL2agiyVpy/NjR4x0NAp8elnEkbaq2gCOKkgXw1GMrdmV+Ri7
	Qy0P3caKxO5/uX8TOLN9abUCWck1Zudbii/6Zfb6b3VGIolDbn4+hP0t/HsRwp2kmnmuaI+zFiD
	tOxAKuojrL6dXIqEwY3DLLW9LoYeoinpTOd5w2GP7yuO6sQ+HjyUXxlWvyTT7xiS3DnrBIEyMT6
	nbOFZiE3+GrWxBNfR760689QHKM9QEyWj9wEvtHuw1mbeu6ven5lq9ZVpQcw/MkumC3dq4dP8Zn
	dLJPm3p1K83wKvuBrHkOMIiJzSGA5qfvwuQ4zoZZqkhmQYp+yKwb5qWVk3CvdxtUr/Q=
X-Received: by 2002:a05:6000:2313:b0:439:b4dc:1e1e with SMTP id
 ffacd0b85a97d-43a04dbbc58mr9731055f8f.29.1773437237509; Fri, 13 Mar 2026
 14:27:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260306143423.19562-1-john.madieu.xa@bp.renesas.com>
In-Reply-To: <20260306143423.19562-1-john.madieu.xa@bp.renesas.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Fri, 13 Mar 2026 21:26:51 +0000
X-Gm-Features: AaiRm53lSqA4pk2gaI4MFbWILgOkrFUHAgNT-jqSkUe6YSU_FdaR66nqQD4N-HY
Message-ID: <CA+V-a8veHDk_y_eq8CDHXENffpKshvT-XU9SiCYA_fYDf53yfQ@mail.gmail.com>
Subject: Re: [PATCH v8 00/15] PCI: renesas: Add RZ/G3E PCIe controller support
To: John Madieu <john.madieu.xa@bp.renesas.com>
Cc: claudiu.beznea.uj@bp.renesas.com, lpieralisi@kernel.org, 
	kwilczynski@kernel.org, mani@kernel.org, geert+renesas@glider.be, 
	krzk+dt@kernel.org, robh@kernel.org, bhelgaas@google.com, conor+dt@kernel.org, 
	magnus.damm@gmail.com, biju.das.jz@bp.renesas.com, linux-pci@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org, john.madieu@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275557-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[bp.renesas.com,kernel.org,glider.be,google.com,gmail.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,mail.gmail.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2238428A202
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi John,

On Fri, Mar 6, 2026 at 2:39=E2=80=AFPM John Madieu
<john.madieu.xa@bp.renesas.com> wrote:
>
> The Renesas RZ/G3E SoC features a PCIe controller that shares similaritie=
s with
> the existing RZ/G3S PCIe controller, but with several key differences.
> This series adds support for the RZ/G3E PCIe controller by extending the =
existing
> RZ/G3S driver and device tree bindings.
>
> Key differences between RZ/G3E and RZ/G3S PCIe controllers:
>
> Link Speed Support:
>  - RZ/G3E: Supports PCIe Gen3 (8.0 GT/s) alongside Gen2 (5.0 GT/s)
>  - RZ/G3S: Supports PCIe Gen2 (5.0 GT/s) only
>
> Reset Control:
>  - RZ/G3E: Uses register-based reset control mechanism
>  - RZ/G3S: Uses exclusively external reset control signals
>
> Inbound Window Configuration:
>  - RZ/G3E: Requires precise power-of-2 window coverage with strict addres=
s
>    alignment constraints. Non-power-of-2 memory regions must be split int=
o
>    multiple windows to avoid over-mapping, ensuring proper hardware addre=
ss
>    decoding for DMA operations.
>  - RZ/G3S: Uses a simpler approach that rounds up to the next power-of-2,
>    creating single larger windows. The hardware tolerates over-mapped reg=
ions.
>
> Class/Revision IDs:
>  - RZ/G3E: Requires explicit setting of class/revision values
>  - RZ/G3S: Has default values in hardware
>
> Clock Naming:
>  - RZ/G3E: Uses "clkpmu" clock for power management
>  - RZ/G3S: Uses "clkl1pm" PM control clock while CLKREQ_B is deasserting
>
> Phy Settings:
>  - RZ/G3E: Does not need PHY settings as it works with default hw values
>  - RZ/G3S: Requires explicit PHY settings
>
> This series extends the existing driver to detect the SoC type from the d=
evice
> tree compatible string and configure the controller appropriately. The up=
dates
> are minimal and focused on the hardware-specific differences while keepin=
g the
> common code paths unified.
>
> Changes:
>
> v8:
>  - Collected additional Rb tags on remaining code patches
>  - Fixed typos in patch descriptions
>  - Fixed checkpatch warnings
>
> v7:
>  - Removed former patch [04/16] adding support for init[off|asserted] clo=
cks
>    and resets as these steps are not required anymore
>  - Renamed RZG3E_PCI_RESET* register defines to RZG3S_PCI_RESET* for
>    consistency, as upcoming SoCs (RZ/V2H, RZ/T2N, RZ/N2H) share these
>    registers
>  - Dropped some useless comments and reduced verbose descriptions to
>    concise forms
>  - Unified function naming: rzg3s_pcie_config_{post_init,deinit}() and
>    rzg3e_pcie_config_{pre_init,post_init,deinit}()
>  - Used local mask variables in rzg3e_pcie_config_{pre_init,post_init}()
>    for compactness within 80-char line limit
>  - Fixed resume_noirq: reordered MODE before RST_RSM_B to match probe
>    sequence, fixing error path handling
>  - Fixed checkpatch commit message line length warnings
>
> v6:
>  - Replaced rzg3s_sysc_config() with enum-based rzg3s_sysc_config_func()
>    as suggested by Claudiu, dropping the -1 skip pattern
>  - Introduced enum rzg3s_sysc_func_id and array-based SYSC function
>    descriptors in patch 08
>  - Used regmap_update_bits() consistently for all SYSC accesses
>  - Fixed config_reinit error path in suspend_noirq: call config_pre_init
>    before config_post_init as spotted by Claudiu
>  - Fixed double config_deinit in rzg3s_pcie_host_init() error path by
>    separating config_deinit_post into a non-fall-through path
>  - Shortened comments as per Claudiu's suggestions
>  - Reordered patchset, moving v5's patch 09/16 to 02/16 and added Fixes t=
ag
>
> v5:
>  - Introduced new patch to reorder reset handling
>  - Introduced rzg3s_sysc_config() helper to handle SYS config
>  - Collected Tags on documentation
>
> v4:
>  - Collected Ab tag
>  - Fixed binding clock name constraint
>
> v3:
>  - Removed extra MaxItems in binding causing warnings
>  - Fix potential crash for non-initialized rcdev in CPG driver
>  - Fix binding contraints replacing 'description' with 'const' as per
>    Geert and Rob's comment
>
> v2:
>  - Address Bjorn typo comments
>  - Address Claidiu's comment on stylish
>  - Use single inbound-window-configuration function for both G3E/G3S
>  - Refactor goto laballing as per Claudiu's comments
>  - Update bindings and reused G3S's interrupt ordering
>    * This involves reordering interrupts in dt
>  - Remove Board-specific PCIe dma-range.
>
>
> John Madieu (15):
>   PCI: rzg3s-host: Fix reset handling in probe error path
>   PCI: rzg3s-host: Reorder reset assertion during suspend
>   PCI: rzg3s-host: Rework inbound window algorithm for multi-SoC support
>   clk: renesas: r9a09g047: Add PCIe clocks and reset
>   dt-bindings: PCI: renesas,r9a08g045s33-pcie: Fix naming properties
>   dt-bindings: PCI: renesas,r9a08g045s33-pcie: Document RZ/G3E SoC
>   PCI: rzg3s-host: Make SYSC register offsets SoC-specific
>   PCI: rzg3s-host: Make configuration reset lines optional
>   PCI: rzg3s-host: Add SoC-specific configuration and initialization
>     callbacks
>   PCI: rzg3s-host: Explicitly set class code for RZ/G3E compatibility
>   PCI: rzg3s-host: Add PCIe Gen3 (8.0 GT/s) link speed support
>   PCI: rzg3s-host: Add support for RZ/G3E PCIe controller
>   arm64: dts: renesas: r9a09g047: Add PCIe node
>   arm64: dts: renesas: r9a09g047e57-smarc-som: Add PCIe reference clock
>   arm64: dts: renesas: r9a09g047e57-smarc: Enable PCIe
>
Thank you for the patches, Ive tested them on RZ/V2N EVK where PCIe IP
is identical to RZ/G3E.

Tested-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com> # RZ/V2N=
 EVK

Cheers,
Prabhakar

>  .../bindings/pci/renesas,r9a08g045-pcie.yaml  | 121 ++++--
>  arch/arm64/boot/dts/renesas/r9a09g047.dtsi    |  69 ++++
>  .../boot/dts/renesas/r9a09g047e57-smarc.dts   |  16 +
>  .../boot/dts/renesas/renesas-smarc2.dtsi      |   4 +
>  .../boot/dts/renesas/rzg3e-smarc-som.dtsi     |  11 +
>  drivers/clk/renesas/r9a09g047-cpg.c           |   5 +
>  drivers/pci/controller/pcie-rzg3s-host.c      | 362 ++++++++++++++----
>  7 files changed, 478 insertions(+), 110 deletions(-)
>
> --
> 2.25.1
>
>

