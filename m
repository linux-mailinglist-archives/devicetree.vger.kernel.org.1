Return-Path: <devicetree+bounces-273924-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0CfDK6AgsWmOqwIAu9opvQ
	(envelope-from <devicetree+bounces-273924-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 08:58:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EEE425E4B8
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 08:58:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7141230055A4
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 07:57:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CF7034C9AB;
	Wed, 11 Mar 2026 07:55:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZSZjfp5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D00FD3B388C
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 07:55:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773215720; cv=none; b=NpX+DUtNZ+EmfC2dPy6Al1MOet/mR7js3fmZY/QH3gz0XTRE12naByNnbycmu0GVtuyHAxdVs7EbW6xjHydAFhEj6hvBy4g/Jp3VVFKoZRl40gD/j85SE6f/FGjtIrk+JK4tUwuIGJLQW6dkxu+kXfTePllxz+xVVpc943d7LOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773215720; c=relaxed/simple;
	bh=3/KV6BN1Coprf65fKPqeCAuCthZOshQJIThWLRahsb8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QlaqmPt6b5atVs9buYd/ANz1CexCgP+fvf2FORSjqNgGlPQw9eFDUdf+jM2xbJC024w+zEFNoXSylIKqNXjgcPSXaK4yNS0UvfrVg97kjnCnTn+OWU2yapYN/3Q96OeR4+fjBYbAkqn9pTUokBHHGv9mihz1+i5RiPlRzDySfio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZSZjfp5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83A61C2BCB9
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 07:55:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773215720;
	bh=3/KV6BN1Coprf65fKPqeCAuCthZOshQJIThWLRahsb8=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=SZSZjfp5sINlFNkMzAKm3HL6yQnaxr6/cc3PDsKiAMj73T4RSN8pbzT6Iq0ZS+7rD
	 WumQhEOME+O8kveg1A6psuxcrp7pHZE0Y+jBmLle9trQLi4H/eUzT4mAgKM+Nhpni4
	 3VQLczcpP83P0qjJV+Q4t2eR7znx+YEWK2oGKHzJVoTWMSj64FnRXRmGYCFURYLRZW
	 nvaSrtV31xiG4mTFyCbvQZw0Zo8em8WfZG+gcyD/qn5SgSRV0XXgYuB9+u0Nzrx2jP
	 yphqVlUHxHBUkhL7JF0mxz23l7z3KOLIzl+sW1cJNzN2BnLeMJIoB2hgWZLKpWgfUj
	 m+JHB9kpQmOJw==
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-660dcafc85aso13318300a12.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 00:55:20 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWxDpPbDiyccyWMoM0sQ5suz7/0B1Drah5x0Qzjfk2MtVhAp/NZfLcd5mdGfnXGHSoczqYJKqx2tYdt@vger.kernel.org
X-Gm-Message-State: AOJu0YzZXKNDP7PsRpStTlHSOF7+df8y99l42qrYMh0OLvHoVBxYN8lk
	IuTIwnaTqZ7FggSqPENGEU4IWwDoRDXzUVTZFC3kVfDhYUHjCD22nvzexnx+W7DRhw4l/yfeXDS
	X4uWSqDlxqLYhEV5ifA+fy7iIMW9q4Uc=
X-Received: by 2002:a05:6402:13d2:b0:661:8aef:7cf2 with SMTP id
 4fb4d7f45d1cf-663196d81bcmr859875a12.13.1773215718873; Wed, 11 Mar 2026
 00:55:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1773107475.git.zhoubinbin@loongson.cn> <8fc0f9483b0ef0ff52ac5588f029f329098f45fc.1773107475.git.zhoubinbin@loongson.cn>
In-Reply-To: <8fc0f9483b0ef0ff52ac5588f029f329098f45fc.1773107475.git.zhoubinbin@loongson.cn>
From: Huacai Chen <chenhuacai@kernel.org>
Date: Wed, 11 Mar 2026 15:55:09 +0800
X-Gmail-Original-Message-ID: <CAAhV-H7D0oGeWYCGXwPJxUBBGibNQ27B_fAFThDYXZ-+Qr7RMA@mail.gmail.com>
X-Gm-Features: AaiRm51v6W5qQjmvocXDqwh-i2RsvlNl421YyDP4GM-m6YQdrKxjcqTye-AFkhU
Message-ID: <CAAhV-H7D0oGeWYCGXwPJxUBBGibNQ27B_fAFThDYXZ-+Qr7RMA@mail.gmail.com>
Subject: Re: [PATCH 2/6] ASoC: loongson: Combined regmap definitions
To: Binbin Zhou <zhoubinbin@loongson.cn>
Cc: Binbin Zhou <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Xuerui Wang <kernel@xen0n.name>, 
	loongarch@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-sound@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 4EEE425E4B8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273924-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,loongson.cn,kernel.org,perex.cz,suse.com,xen0n.name,lists.linux.dev,vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chenhuacai@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,loongson.cn:email]
X-Rspamd-Action: no action

Hi, Binbin,

On Wed, Mar 11, 2026 at 2:37=E2=80=AFPM Binbin Zhou <zhoubinbin@loongson.cn=
> wrote:
>
> For Loongson I2S, the difference between i2s_plat and i2s_pci is more in
> the external interface, the internal registers are accessed in the same
> way, so the regmap definitions can be united to simplify the code.
>
> Also, the following warning for the i2s_plat driver will be eliminated:
>
> loongson-i2s-plat loongson-i2s: using zero-initialized flat cache, this m=
ay cause unexpected behavior.
>
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> ---
>  sound/soc/loongson/loongson_i2s.c      | 55 ++++++++++++++++++++++++++
>  sound/soc/loongson/loongson_i2s.h      |  1 +
>  sound/soc/loongson/loongson_i2s_pci.c  | 54 -------------------------
>  sound/soc/loongson/loongson_i2s_plat.c |  8 ----
>  4 files changed, 56 insertions(+), 62 deletions(-)
>
> diff --git a/sound/soc/loongson/loongson_i2s.c b/sound/soc/loongson/loong=
son_i2s.c
> index e336656e13eb..09ccab0c535e 100644
> --- a/sound/soc/loongson/loongson_i2s.c
> +++ b/sound/soc/loongson/loongson_i2s.c
> @@ -272,5 +272,60 @@ const struct dev_pm_ops loongson_i2s_pm =3D {
>  };
>  EXPORT_SYMBOL_GPL(loongson_i2s_pm);
>
> +static bool loongson_i2s_wr_reg(struct device *dev, unsigned int reg)
> +{
> +       switch (reg) {
> +       case LS_I2S_CFG:
> +       case LS_I2S_CTRL:
> +       case LS_I2S_RX_DATA:
> +       case LS_I2S_TX_DATA:
> +       case LS_I2S_CFG1:
> +               return true;
> +       default:
> +               return false;
> +       };
> +}
The 'write' function is usually after the 'read' function.

> +
> +static bool loongson_i2s_rd_reg(struct device *dev, unsigned int reg)
> +{
> +       switch (reg) {
> +       case LS_I2S_VER:
> +       case LS_I2S_CFG:
> +       case LS_I2S_CTRL:
> +       case LS_I2S_RX_DATA:
> +       case LS_I2S_TX_DATA:
> +       case LS_I2S_CFG1:
> +               return true;
> +       default:
> +               return false;
> +       };
> +}
> +
> +static bool loongson_i2s_volatile_reg(struct device *dev, unsigned int r=
eg)
> +{
> +       switch (reg) {
> +       case LS_I2S_CFG:
> +       case LS_I2S_CTRL:
> +       case LS_I2S_RX_DATA:
> +       case LS_I2S_TX_DATA:
> +       case LS_I2S_CFG1:
> +               return true;
> +       default:
> +               return false;
> +       };
> +}
> +
> +const struct regmap_config loongson_i2s_regmap_config =3D {
> +       .reg_bits =3D 32,
> +       .reg_stride =3D 4,
> +       .val_bits =3D 32,
> +       .max_register =3D LS_I2S_CFG1,
> +       .writeable_reg =3D loongson_i2s_wr_reg,
> +       .readable_reg =3D loongson_i2s_rd_reg,
> +       .volatile_reg =3D loongson_i2s_volatile_reg,
> +       .cache_type =3D REGCACHE_FLAT,
> +};
> +EXPORT_SYMBOL_GPL(loongson_i2s_regmap_config);
> +
>  MODULE_LICENSE("GPL");
>  MODULE_DESCRIPTION("Common functions for loongson I2S controller driver"=
);
> diff --git a/sound/soc/loongson/loongson_i2s.h b/sound/soc/loongson/loong=
son_i2s.h
> index c8052a762c1b..e73ffa954ec9 100644
> --- a/sound/soc/loongson/loongson_i2s.h
> +++ b/sound/soc/loongson/loongson_i2s.h
> @@ -65,6 +65,7 @@ struct loongson_i2s {
>         u32 sysclk;
>  };
>
> +extern const struct regmap_config loongson_i2s_regmap_config;
>  extern const struct dev_pm_ops loongson_i2s_pm;
>  extern struct snd_soc_dai_driver loongson_i2s_dai;
>
> diff --git a/sound/soc/loongson/loongson_i2s_pci.c b/sound/soc/loongson/l=
oongson_i2s_pci.c
> index 1ea5501a97f8..dea1e4ebee29 100644
> --- a/sound/soc/loongson/loongson_i2s_pci.c
> +++ b/sound/soc/loongson/loongson_i2s_pci.c
> @@ -18,60 +18,6 @@
>
>  #define DRIVER_NAME "loongson-i2s-pci"
>
> -static bool loongson_i2s_wr_reg(struct device *dev, unsigned int reg)
> -{
> -       switch (reg) {
> -       case LS_I2S_CFG:
> -       case LS_I2S_CTRL:
> -       case LS_I2S_RX_DATA:
> -       case LS_I2S_TX_DATA:
> -       case LS_I2S_CFG1:
> -               return true;
> -       default:
> -               return false;
> -       };
> -}
> -
> -static bool loongson_i2s_rd_reg(struct device *dev, unsigned int reg)
> -{
> -       switch (reg) {
> -       case LS_I2S_VER:
> -       case LS_I2S_CFG:
> -       case LS_I2S_CTRL:
> -       case LS_I2S_RX_DATA:
> -       case LS_I2S_TX_DATA:
> -       case LS_I2S_CFG1:
> -               return true;
> -       default:
> -               return false;
> -       };
> -}
> -
> -static bool loongson_i2s_volatile_reg(struct device *dev, unsigned int r=
eg)
> -{
> -       switch (reg) {
> -       case LS_I2S_CFG:
> -       case LS_I2S_CTRL:
> -       case LS_I2S_RX_DATA:
> -       case LS_I2S_TX_DATA:
> -       case LS_I2S_CFG1:
> -               return true;
> -       default:
> -               return false;
> -       };
> -}
> -
> -static const struct regmap_config loongson_i2s_regmap_config =3D {
> -       .reg_bits =3D 32,
> -       .reg_stride =3D 4,
> -       .val_bits =3D 32,
> -       .max_register =3D LS_I2S_CFG1,
> -       .writeable_reg =3D loongson_i2s_wr_reg,
The same.

Huacai

> -       .readable_reg =3D loongson_i2s_rd_reg,
> -       .volatile_reg =3D loongson_i2s_volatile_reg,
> -       .cache_type =3D REGCACHE_FLAT,
> -};
> -
>  static int loongson_i2s_pci_probe(struct pci_dev *pdev,
>                                   const struct pci_device_id *pid)
>  {
> diff --git a/sound/soc/loongson/loongson_i2s_plat.c b/sound/soc/loongson/=
loongson_i2s_plat.c
> index fa2e450ff618..f8d7aca8b903 100644
> --- a/sound/soc/loongson/loongson_i2s_plat.c
> +++ b/sound/soc/loongson/loongson_i2s_plat.c
> @@ -85,14 +85,6 @@ static const struct snd_soc_component_driver loongson_=
i2s_component_driver =3D {
>         .open   =3D loongson_pcm_open,
>  };
>
> -static const struct regmap_config loongson_i2s_regmap_config =3D {
> -       .reg_bits =3D 32,
> -       .reg_stride =3D 4,
> -       .val_bits =3D 32,
> -       .max_register =3D 0x14,
> -       .cache_type =3D REGCACHE_FLAT,
> -};
> -
>  static int loongson_i2s_apbdma_config(struct platform_device *pdev)
>  {
>         int val;
> --
> 2.52.0
>
>

