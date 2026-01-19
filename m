Return-Path: <devicetree+bounces-256620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7438ED39CA3
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 03:59:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id F0AF130010CB
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 02:59:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86E0F2222CB;
	Mon, 19 Jan 2026 02:59:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fVnmHo+R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E177A13A
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 02:59:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768791575; cv=none; b=oqQs4xe373weIPeajpk1cuxjLoMrwzbO3okM0+N5LCYoPefxn2SkTQxjFn/RFoyUiRtzlmH7jy1ApXxU4ujRucnEFCP5W4ijVO94i5ZoTKoJ3oW4Fonj+zQz9GBv8cVhZSGvAt552cjm1YhPRDcsDo0d7369TaT/Mu7Y5SFlJV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768791575; c=relaxed/simple;
	bh=UNKOgPvehEkP1wi6jd+WK6UCQP2QxlNiE28jlJ9jfxs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=I7WV2pMK27kywfVtPpxXxTxELzNrCIjO28yMLJxNoBGut+FbuXi56wm94/FhKFwTRZRwNkXgDFNBTAcCuBnm0swM6eCwH9YTwVYd+KeEHnHefHBCK5T7GNcVyJY77xsQgTeKmY7V2qTQfclpTP/mDaloVc4Nooe8N1BoL8XWGWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fVnmHo+R; arc=none smtp.client-ip=209.85.128.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-78f89501423so47195997b3.1
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 18:59:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768791573; x=1769396373; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+D2po2z6gByCghSst22XgeV3+HipZnkvEmXg8nU+pB8=;
        b=fVnmHo+R8/XmJJykuiJ3vTWAocDtctc9XGmQws0KuRKKb4PH2kqmL+65OHVZ9ckqO0
         u7HzRqivLr5aBsvAkwemzDzxI5U4PtwwxMXOSd1QzyRdkeL7SeD+Lab7zeXjFnVnAeuz
         CoEOaZ7knrU7XPg259ZXCMtL1B5QOLcJHtT4hUtKm1mVPqWY+NGwNLE3I8UJVHWwhEAS
         zAbMRQt3aZ6LM7+irIJ81mKB46QLisXRv3c5nYFPboUKs4oZ5H5drKxxobcytgMxBSpw
         AYLb5C5GhVE3amF498gE1A7T67RnbZpbrYVxs3MRoqwyZwakL+oMmTawUuqbe47APcpB
         z0SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768791573; x=1769396373;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+D2po2z6gByCghSst22XgeV3+HipZnkvEmXg8nU+pB8=;
        b=T1afkx6yZQm69QVvzuoYHiX/gJK5RgAaTulchOYN9/bb3iEHXLJKliSV9xCLoUJxwY
         iRxYytK6hp5e6EdLDd5WQDB2QtlMYKTqQgAWU6wanW3nSahJ8TXTOxavUQ69+3KMw4GZ
         Kkuv8sNGjPsZ1xVHx48R6aYXM/gLd1la2XLUyFCowMvlKi7RSdWtB9Ii31Eu9eIE5Lu/
         B1rtDWIhfIdD0AzaFeBGA3z7FbsnUb19JUeBddX8jLiKZnKy9MAU3N1FBpgXflNa2Avh
         CPzcY+6qZG3YmERgstOPg4M7eHO6yRNArl3huJK9rQqBR4Fp1PjaCzws41Wk1EnckorJ
         ZBAA==
X-Forwarded-Encrypted: i=1; AJvYcCVKI0mj/gz7nG0cMg3JNS1/g+QSQw9aTGzIhPHSgPGsjwDOs3cI/MeiO1pMxgjIDFHqZvZ3pvzJ3ASS@vger.kernel.org
X-Gm-Message-State: AOJu0YyQnHiQ6fiw1ljvsgPov8XuLd0HDpFDXP9w6S5r2qzlNLtXXtCE
	8U44ngVGIyTiQ1jQSYEGQAB+5Fqitup3iCiN9LExxBjcue+mTDiegEdowE3bGZpQ+Jqc8cK9fG9
	/VfvSOV6JkfjVm8QoesI1v2raFlodcjk=
X-Gm-Gg: AZuq6aIyPKAmUiWSuU4GOXcW+fPCRZqsLsMJpWdkFlbKb9DRPIEhfVrZc9Q/c8lZV+t
	6j5nc5Ea448wmw5MpA6MeLegotH4AS0pEEPQwjqx+z/BwiIua0ILw2TKzHuQnr84EfZRDsw+6YE
	UQRLZKHHnDTHDrX+ap/VGJhlSP4fwywkVJ4UYLNCaHFcaMYeF17o8Un7XZ1rXIUXiyrBOkxtxzr
	Mlnduv/aJ9qxiWuJU+jRDqunrb8e3fuQEAMJ4qt+l5hdX527oD5YeT2TxncMn7bAZ+cS92YYbzV
	JMTI1qMz
X-Received: by 2002:a05:690e:1892:b0:640:d647:ddb7 with SMTP id
 956f58d0204a3-6490a5ef488mr10205631d50.4.1768791572657; Sun, 18 Jan 2026
 18:59:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251218110626.605558-1-festevam@gmail.com> <20251218110626.605558-2-festevam@gmail.com>
In-Reply-To: <20251218110626.605558-2-festevam@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Sun, 18 Jan 2026 23:59:20 -0300
X-Gm-Features: AZwV_QjD9lh3dtgtuijwpaawW-FIPFJp5knpl9NAIWc1iAD8YrR9m6lMfTOF1EI
Message-ID: <CAOMZO5CaXVqfUYoHgZssb_5zBWc=YbRDO27HCE6UnN_rG7aajQ@mail.gmail.com>
Subject: Re: [PATCH RESEND v2 2/2] drm/bridge: fsl-ldb: Allow the termination
 resistor to be enabled
To: victor.liu@nxp.com, Frank Li <frank.li@nxp.com>
Cc: marek.vasut@mailbox.org, neil.armstrong@linaro.org, 
	dri-devel@lists.freedesktop.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Liu and Frank,

On Thu, Dec 18, 2025 at 8:06=E2=80=AFAM Fabio Estevam <festevam@gmail.com> =
wrote:
>
> The LVDS Control Register (LVDS_CTRL) register has an HS_EN bit that allo=
ws
> the 100 Ohm termination resistor in the chip to be enabled.
>
> Add support to setting the HS_EN bit when the optional property
> "nxp,enable-termination-resistor" is present.
>
> The motivation for introducing this property was a custom i.MX8MP board
> that was showing visual artifacts. After enabling the 100 Ohm termination
> resistor the LVDS signal quality improved causing the artifacts to
> disappear.
>
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> ---
> Changes since v1:
> - Change the property name to nxp,enable-termination-resistor (Frank).

Could you please help review this patch?

Thanks

>
>  drivers/gpu/drm/bridge/fsl-ldb.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/drivers/gpu/drm/bridge/fsl-ldb.c b/drivers/gpu/drm/bridge/fs=
l-ldb.c
> index 5c3cf37200bc..b4b9130de32c 100644
> --- a/drivers/gpu/drm/bridge/fsl-ldb.c
> +++ b/drivers/gpu/drm/bridge/fsl-ldb.c
> @@ -92,6 +92,7 @@ struct fsl_ldb {
>         const struct fsl_ldb_devdata *devdata;
>         bool ch0_enabled;
>         bool ch1_enabled;
> +       bool termination_resistor;
>  };
>
>  static bool fsl_ldb_is_dual(const struct fsl_ldb *fsl_ldb)
> @@ -212,6 +213,10 @@ static void fsl_ldb_atomic_enable(struct drm_bridge =
*bridge,
>         /* Program LVDS_CTRL */
>         reg =3D LVDS_CTRL_CC_ADJ(2) | LVDS_CTRL_PRE_EMPH_EN |
>               LVDS_CTRL_PRE_EMPH_ADJ(3) | LVDS_CTRL_VBG_EN;
> +
> +       reg &=3D ~LVDS_CTRL_HS_EN;
> +       if (fsl_ldb->termination_resistor)
> +               reg |=3D LVDS_CTRL_HS_EN;
>         regmap_write(fsl_ldb->regmap, fsl_ldb->devdata->lvds_ctrl, reg);
>
>         /* Wait for VBG to stabilize. */
> @@ -292,6 +297,7 @@ static const struct drm_bridge_funcs funcs =3D {
>  static int fsl_ldb_probe(struct platform_device *pdev)
>  {
>         struct device *dev =3D &pdev->dev;
> +       struct device_node *np =3D dev->of_node;
>         struct device_node *panel_node;
>         struct device_node *remote1, *remote2;
>         struct drm_panel *panel;
> @@ -340,6 +346,9 @@ static int fsl_ldb_probe(struct platform_device *pdev=
)
>         if (IS_ERR(panel))
>                 return PTR_ERR(panel);
>
> +       if (of_property_present(np, "nxp,enable-termination-resistor"))
> +               fsl_ldb->termination_resistor =3D true;
> +
>         fsl_ldb->panel_bridge =3D devm_drm_panel_bridge_add(dev, panel);
>         if (IS_ERR(fsl_ldb->panel_bridge))
>                 return PTR_ERR(fsl_ldb->panel_bridge);
> --
> 2.34.1
>

