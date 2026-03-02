Return-Path: <devicetree+bounces-270009-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0J9/M/qLpWmoDgYAu9opvQ
	(envelope-from <devicetree+bounces-270009-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 14:09:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF681D9801
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 14:09:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DF022300335F
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 13:09:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0276D3E0C65;
	Mon,  2 Mar 2026 13:09:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b="I49+4W+A"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D238236E48F
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 13:09:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=185.125.188.123
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772456952; cv=pass; b=Kt36hkXiOZkOPFOB41icPxTY+cL5U+9ovRPvWz7/ZRG8WrmemsHF8hPu6mTVumrOJqCrJhHjkDp2/b9gnOnhHA0EAMpv+xssMbogojR+ijlHZrH/TeSuyc0SRooIq1Yeoo/y+VwCdos9WOg7s3B7pv86deperE3UETIFNvUFiZU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772456952; c=relaxed/simple;
	bh=AXkmsR7ZBoHxpbOwLmqOU+xWVUc36k5CuxoMdy/D9aw=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=u5DYgp8g7IKhs81FMLFJr97EAwp1pFPtsDoJh1Dh6MJyjWf0w6GkIo8oRo+fieO40D5lQiSH4PqciC2LMyIP54H8eM0cjzwux7UIc7qiDW0E6xrXxrSxuX+KJ0g0oYf3IC8GifAmvhnyCvyhq6qnH7NegcB/AjRfDaiRwDK4s6s=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b=I49+4W+A; arc=pass smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id C2AD840045
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 13:09:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20251003; t=1772456942;
	bh=/ECnSn+s6d8RzhavbIFJQEnGNDdcB3vQZ0KecCsizik=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=I49+4W+Ab2x+4ZdPUFs9STW9xcFgMw8YgZgl8zxAIbTWXOdvF0wfhvEZ/MxTdIzRg
	 K/md4a3aLpI/F9LYncSvlnHi2BUXprfB7g2B4+NbcQK8AWmDL7Wv1MdhZBDzx5+Bhd
	 KLn9tfiIg9BBHsWkqpIkQPGArAnE+sJRhA7/MhwMnbVPOpAuz9bBnl0AZcx0byDrRR
	 Nkfr6V5usv4p7KzItQvE1hKGHeu87zIW7tZG5rzvmYOvGZT7T1Icyz4m0fdexBS8wQ
	 /SEEB7Ppk42UUx0UxfgGZY+PVmP/35dkFuEa3QJmRuytNXSBArv74HQhYqHs+L/fdI
	 ZuIhidBmppOcMpK4cQvxqzRxtTUWgeHTe+RJLeyDw2XXlLLJEMTwBuXIlvEKhhSI7X
	 ifjtKO0v5ovCTkUKf/i5rx+umDz6aY4ytU4e0Rq2SYu4VUWC3/4RuZdRO+mDWRmza0
	 +OF9Rc7TwR9utGrIDSJSCG5Rf9bTOI1dv6BQmUxTgnvRw/radfJeLdM7nBEAlCApV5
	 YP9WYPUUAzRulEE0lrTOpDpZdV40JJSLgXrcIuNBhRO2mUFda1uUEGmiZP8etWrZ0u
	 Msp5OX0wCrHsRTPMe5vgC+UcvrfcPPpsA6pHGD4SzLygD1ja4k43i7G1j5HO07IOMR
	 jBNQpyPH0gNcGbH1I9v3M6Ac=
Received: by mail-ej1-f69.google.com with SMTP id a640c23a62f3a-b934e96af9dso541104966b.3
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 05:09:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772456942; cv=none;
        d=google.com; s=arc-20240605;
        b=APFsxNUNVV7Hhff1f1Bt0UFv7+s0uNnL6xZR0NcNwQlIo72QK2mx2NO7FimP32IhCY
         3upMAG9VBLfWfCsM828EJgEThnmtPIrcAirn85aqkh6IOcpM9MjFsJHB9Jce+aArpio0
         cD9WuUW3xFDw+2rk3OD8M+dG6coCHb38HUM1khmqaoCYDrBjSpthZ3guj5ph8GVOsFZi
         ZpbnvG7D59Bo30KzIKpiDw/y3jh1x2Oqb9fJB/+omNRAzb7uCl/PoDZ5FJKS7TzKCIQM
         MvS/Bb+m2KvaauB+vfr3lCQEliPdbn55G2+92Zjxl7A1lfYhqvBnRIIqzWvXnzKWwJnm
         k8bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version;
        bh=/ECnSn+s6d8RzhavbIFJQEnGNDdcB3vQZ0KecCsizik=;
        fh=H2D+z0khvd30j19UvVz1Ipd6DGNdke3d4lDEYK4TfcU=;
        b=gop5vulCYl5wPd6Q3Vg0q4NKIBRNAqnSv+cHmhzTvHNRBsOeP1ERDStFwlyz71Dg0r
         CUFdsiFP99NTB5TTAYb5N/xRFS+fy+/omKyFRUm9jQTbZFMhYhzDfn6KMe8OEwcSMxmq
         YrdpgTxzCO+ZDF6z6aGzTCQYZRb2p/GxB3NfkOrwVA+6PDETi9YHAGLhTILUGvCcgtVQ
         XC7ocb8Z9MsQCy+YIs6se/0+2wyldWh7v8qJ7ytQHxCC0gyISJr614R9f3EknP4rGQKf
         LAcCa3cT16loT3nK+z0o9WOP9PKXZ3JB53J7oetUz7shwslC/cdC3d5uG2tUp2oNesmH
         44XA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772456942; x=1773061742;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/ECnSn+s6d8RzhavbIFJQEnGNDdcB3vQZ0KecCsizik=;
        b=qK1+y5oyffssqLuoaAwg2lNMjNnkiSfn4rCWsbrn4kNUn2GgaOUlF53NxOL2y4Kc+K
         BU9GmDemZs/H5H8Cv88HFFBdJd8cvemQc+T/XKwrEeJlvKVdmV/gvN2UV/pc95lYCfvN
         e8DIJK5dq7NlpWn6zX633sp4iZpPHiU5uIXFhtLk8rf2/9+T9UlurMzApQ6udAdXoTQ1
         Bhqz0/aV/cOnueCLNQa5AWcLi4xbqd/OSof9JAle6P7U9LdLENDP6HlYu4KYxgedLzpb
         NddN6vhwOTcZnATnxT6OaqCb1F3cG59/wEkTu5L9atxxq7s8SRQInnUeaCmrTgkelZ64
         uaYA==
X-Forwarded-Encrypted: i=1; AJvYcCUJzat2WDolzKaf1dzZbYBC2SFWZxaiPSqXAVAT34923YrpMZqknceekxtNXVSZe8tY9eC6HYqdoWEM@vger.kernel.org
X-Gm-Message-State: AOJu0YxvXppFAfBSzsQRICmoKjn+m3mDeC0+HeC3tK5mYbNANpJziwvk
	jHlFZ7nGb6Ox9m+73HtgDdCJzTOLcHViCjLwytUcSQDrvFiWEaunrH2/wUnpl41oPGAqp3RKfsS
	4HuMQNkR5zq6OrP0NKRg3TN0l92hB5kC02wgdTp1J8S4MvIYtwFLCNKV1b8CU4FARLTSuAOVsXQ
	u+OiWF6EeKdyHzieDJ8n5mXrGRgrcJ7TvVRUIZMocMetH5c7w5VHrdaQ==
X-Gm-Gg: ATEYQzxOg4SyRLX6rPTlbEfq18UWycoBgrQhqUNgmgkNUoHAoeJk/DS1VpZvffQ3BeT
	qI35fj39KyrItD+HW61HT2RQKXKVGpE8B8OtfxlIKPTHm9GGkBhz2QraNzf7GYc+ak3HLEUDt64
	3nNj76tZI/6TEkJ9sI4IdBDvwpwiIkWib/SKhE/+uCqgYH5arR8drcfGeLWWpk7dtFI8N8+pX0R
	4a/
X-Received: by 2002:a17:906:9fc8:b0:b87:efa:8786 with SMTP id a640c23a62f3a-b937657d99fmr789094466b.55.1772456942093;
        Mon, 02 Mar 2026 05:09:02 -0800 (PST)
X-Received: by 2002:a17:906:9fc8:b0:b87:efa:8786 with SMTP id
 a640c23a62f3a-b937657d99fmr789091166b.55.1772456941578; Mon, 02 Mar 2026
 05:09:01 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 2 Mar 2026 08:08:59 -0500
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 2 Mar 2026 08:08:59 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20260227075718.2243818-1-inochiama@gmail.com>
References: <20260227075718.2243818-1-inochiama@gmail.com>
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
User-Agent: alot/0.0.0
Date: Mon, 2 Mar 2026 08:08:59 -0500
X-Gm-Features: AaiRm52b-jdW2UNX8CSDWuKrreJ-aGAWnKXn668LfKMnXa2Ks1b4qAF3c1WKw8E
Message-ID: <CAJM55Z_soPhC9P03edfq_A-GN07PbGqu31aHgE_5kKhkQwkMmQ@mail.gmail.com>
Subject: Re: [PATCH net-next v5 0/3] riscv: spacemit: Add ethernet support for K3
To: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Andrew Lunn <andrew+netdev@lunn.ch>, Boon Khai Ng <boon.khai.ng@altera.com>, 
	Chen-Yu Tsai <wens@kernel.org>, Choong Yong Liang <yong.liang.choong@linux.intel.com>, 
	Conor Dooley <conor+dt@kernel.org>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
	Inochi Amaoto <inochiama@gmail.com>, Jakub Kicinski <kuba@kernel.org>, Jose Abreu <joabreu@synopsys.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Paolo Abeni <pabeni@redhat.com>, Paul Walmsley <pjw@kernel.org>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Richard Cochran <richardcochran@gmail.com>, 
	Rob Herring <robh@kernel.org>, Shangjuan Wei <weishangjuan@eswincomputing.com>, 
	Yanteng Si <siyanteng@cqsoftware.com.cn>, Yao Zi <me@ziyao.cc>, Yixun Lan <dlan@kernel.org>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	spacemit@lists.linux.dev, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, Yixun Lan <dlan@gentoo.org>, 
	Longbin Li <looong.bin@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[canonical.com,reject];
	R_DKIM_ALLOW(-0.20)[canonical.com:s=20251003];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270009-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infradead.org:url,infradead.org:email,canonical.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid];
	FREEMAIL_TO(0.00)[armlinux.org.uk,eecs.berkeley.edu,ghiti.fr,foss.st.com,lunn.ch,altera.com,kernel.org,linux.intel.com,davemloft.net,google.com,st.com,gmail.com,synopsys.com,bp.renesas.com,bootlin.com,dabbelt.com,redhat.com,cherry.de,eswincomputing.com,cqsoftware.com.cn,ziyao.cc];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[38];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.linux.dev,st-md-mailman.stormreply.com,gentoo.org,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[emil.renner.berthing@canonical.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[canonical.com:+];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,kernel,netdev,dt];
	NEURAL_HAM(-0.00)[-0.996];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7CF681D9801
X-Rspamd-Action: no action

Quoting Inochi Amaoto (2026-02-27 08:57:14)
> Add initial support for ethernet controller of the Spacemit K3 SoC.
> This ethernet controller is almost a standard Synopsys DesignWare
> MAC (version 5.40a). This controller require a syscon device to
> configure some basic features, like interface type and internal delay.

I don't know how we can accept this when it can't be tested since it still
doesn't come with the device tree nodes. If you don't want it to be part of the
series, just share a tree where this code is working. There are plenty of free
public git hosting sites available.

/Emil

>
> Change from v4:
> - https://lore.kernel.org/netdev/20260130022705.1059214-1-inochiama@gmail.com
> patch 1:
> 1 Apply Rob's tag.
> 2 Adjust clock description according to Russell's suggestion.
> patch 3:
> 1. Add set_phy_intf_sel() and get_interfaces() hook, suggested by Russell.
>
> Change from v3:
> - https://lore.kernel.org/netdev/20260128072931.875041-1-inochiama@gmail.com
> patch 1:
> 1. fix the uncorrect compatible string postion
> patch 3:
> 1. add "CTRL_" prefix to all ctrl register definition
> 2. only use delay config 0 to calculate delay code.
> 3. fix typo in the comment
>
> Change from v2:
> - https://lore.kernel.org/netdev/20260121071315.940130-1-inochiama@gmail.com
> patch 1:
> 1. remove not needed compatible for select
> 2. drop empty line in "spacemit,apmu" properties
> 3. add spacemit,apmu properties to required.
> patch 3:
> 1. remove misused phy_fix_phy_mode_for_mac_delays.
> 2. use local tx clock instead of the clk_tx_i in the dwmac.
>
> Change from v1:
> - https://lore.kernel.org/netdev/20260120043609.910302-1-inochiama@gmail.com
> patch 1:
> 1. remove phy clock
> patch 3:
> 1. improve comment and include something special about Spacmit K3 dwmac
> 2. reorder the included file
> 3. fix wrong delay macro used in spacemit_dwmac_set_delay.
> 4. add check for maximum supported delay.
> 5. use DIV_ROUND_CLOSEST to calculate best delay configuration.
> 6. use assign for the ctrl register initial value.
> 7. fix input when calling of_property_read_u32().
>
> Inochi Amaoto (3):
>   dt-bindings: net: Add support for Spacemit K3 dwmac
>   net: stmmac: platform: Add snps,dwmac-5.40a IP compatible string
>   net: stmmac: Add glue layer for Spacemit K3 SoC
>
>  .../devicetree/bindings/net/snps,dwmac.yaml   |   2 +
>  .../bindings/net/spacemit,k3-dwmac.yaml       | 103 ++++++++
>  drivers/net/ethernet/stmicro/stmmac/Kconfig   |  12 +
>  drivers/net/ethernet/stmicro/stmmac/Makefile  |   1 +
>  .../ethernet/stmicro/stmmac/dwmac-spacemit.c  | 226 ++++++++++++++++++
>  .../ethernet/stmicro/stmmac/stmmac_platform.c |   1 +
>  6 files changed, 345 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/spacemit,k3-dwmac.yaml
>  create mode 100644 drivers/net/ethernet/stmicro/stmmac/dwmac-spacemit.c
>
> --
> 2.53.0
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

