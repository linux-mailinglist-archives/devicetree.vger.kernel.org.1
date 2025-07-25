Return-Path: <devicetree+bounces-199724-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4B1B11C9B
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 12:37:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 990077BCB89
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 10:35:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71CE72E4260;
	Fri, 25 Jul 2025 10:34:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="FzXxnfWQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com [209.85.217.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEFD72DECB1
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 10:34:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753439657; cv=none; b=kO2UTK1TJnxd40ILeiwt4qz35c1IQ0UWqaInB1Xl6Oy3xTIODHgFkz+QvVEonmdqfUxUdJuZOLKsMXFwDV4Bn9YwhRVxLisxB+2veZELLjuElDM5Zuhi9JW1F46AVrz3I5CPwb1unRJ3Lt4oWKxvmXsT7BRLskE8er/vBJ0puBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753439657; c=relaxed/simple;
	bh=yYEFudnuqhhtZ+sqQ+TFTlE2skKtiAAPYNG8FKAlAuU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QxnuNEsuWG3DQor14jdkd6L9iW51qhZqf4DuXbttdh5D0dJSXd61tjRVLpfIuJS9hdO9Rojs5w5aM8tti+bXazP/v/8D5apmCbkXtZAWVAhs1iroq5NllCIl2RGlpgmHfOj3j3I68k1HD2YFh2qTiMUXxu4o0ywTJ/UWT54NjFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=FzXxnfWQ; arc=none smtp.client-ip=209.85.217.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-4e9a109035bso1411690137.1
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 03:34:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753439654; x=1754044454; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=29HDb0CStjqCTbdMTaT8ki881uLabi0viRhzF0Cw5Io=;
        b=FzXxnfWQmrcrnzl2wVEnHwMDIGsJFF86UzbsoTWK2z0V61FS4G7tWsyz2lDY6Vk1fM
         3JEvuqSx8PlAVp+FIH0lDzStc3fBUVeCbowVswPSNMJHhnOcwuq+4fPtmPL8xWAe36iy
         bZOhzaR2E/B2de6MR3KctMBbs1OUsim77wvaU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753439654; x=1754044454;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=29HDb0CStjqCTbdMTaT8ki881uLabi0viRhzF0Cw5Io=;
        b=hmu+LFSWr4a0ZxpeyQXwB46gZlrAnrhQ3Y8YzPg/nbVI/6JzIFjm60Tx6Iy+0lG4rU
         Gxd0kS2mMc7g+Ytv+7tvssN8uMiB10tQvlkKGPrJGFt0V11XYdGDNxr9uOPQpRYEti0F
         1rgnr21hoiPH+QWA7ckqK996BATaJb4bW95CSMm6djzITTG5H0oAg/Fbu8961dWPobMz
         6fvciNfTskCW67tsF86bODmczhy5PJIP6qu6KkCLrSidDbIUf+x4/QKZgIpmTk/Pvv7c
         RgXa1MvPu6Re+mDb4rTaNIbmp+7oTjE6nMkWS65a6v5zAA+Gqu37fJtN9Aw4dNfESetN
         3wkQ==
X-Forwarded-Encrypted: i=1; AJvYcCWdAGRgfaDeYzgjOE7IiY2d9WZ91WuSk/urYh/hKDCezp0wOM/yMfhwMjNxqoCsf8UtHAKmiFuDP2ay@vger.kernel.org
X-Gm-Message-State: AOJu0YyQxkZ/9wONo7ArX5ujcjBUHRimlyGPGrsl9dIrpOeCH+RsPiIZ
	we7NaXI+4SKPUsy7wa+J9csyPSQcdub2C0Cd2JOV+iZ81qzpEpzBsKASyWopgNu15XC/un3s5WU
	vFazU+A==
X-Gm-Gg: ASbGncubEOneO1ud7+JmsgQD697rKtU3YE6KrOJJ2/j2R7rB/k86tfv9dloujc+FkrO
	/5jB87uEd7JJ6dF5GxzQ1XKov/v4M05jHAkT/Sd2O3qOFbXksVS+skCVB5c/6zjjbSYU5rPHjZY
	gRGB2cgxxYC9uT61DHvezxbKu8zZXXpjCSIb/AFxXhcF6lkMlafyutzZ+/20byqEb43QiHh8uwB
	bOkgGSWQQ4wgggpR4VM16WxORGZ0JXjLcyyzHfQifDKyeanhZbO9LWnm9JzFsRLXUeyClghG6Br
	GnX42/582gA7MF9dw7zq23iWKTTzU+PzB7co9vITNfZOVtmm7aBPUqRyYOVLfvKHjbEh815WHxU
	XzoO2n5CFHpL4GmtnJcv378NR/jX5nQNN5GxI7R9ZX9JOjUQsDpfzNLrpPA==
X-Google-Smtp-Source: AGHT+IGVLI3OEUlIfO3VNRPCV30uq9V3wx95huXgK6MVBOSFOE0vUZ5VeWjLeqDQuR4dpz84ZTONgA==
X-Received: by 2002:a05:6102:6897:b0:4e7:bc41:a9ab with SMTP id ada2fe7eead31-4fa3fda8ef5mr305379137.23.1753439653619;
        Fri, 25 Jul 2025 03:34:13 -0700 (PDT)
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com. [209.85.217.50])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-537bf605acbsm898769e0c.7.2025.07.25.03.34.12
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Jul 2025 03:34:13 -0700 (PDT)
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-4e9a109035bso1411656137.1
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 03:34:12 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXE3+oCTDJ6A89F1hz2LI+a/3Dt4yD+c5Hr9Zw8E3DjTSDJY0sqx3psPBJg2uu41RyX73Yt5plZv6j6@vger.kernel.org
X-Received: by 2002:a05:6102:5799:b0:4e5:ade7:eb7c with SMTP id
 ada2fe7eead31-4fa3fac29femr330925137.12.1753439652105; Fri, 25 Jul 2025
 03:34:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com> <20250724083914.61351-35-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250724083914.61351-35-angelogioacchino.delregno@collabora.com>
From: Fei Shao <fshao@chromium.org>
Date: Fri, 25 Jul 2025 18:33:36 +0800
X-Gmail-Original-Message-ID: <CAC=S1nhfg_qD044bO8EOV=MckoNVtJXQ47XBeDFMPwJ9goHg-A@mail.gmail.com>
X-Gm-Features: Ac12FXyYX3cOTb6n6096sUC59Z8DCV1ifB6_qbpW9gH46tmstAs2fiwwoJYhrGs
Message-ID: <CAC=S1nhfg_qD044bO8EOV=MckoNVtJXQ47XBeDFMPwJ9goHg-A@mail.gmail.com>
Subject: Re: [PATCH 34/38] arm64: dts: mediatek: mt8195: Fix ranges for jpeg
 enc/decoder nodes
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, robh@kernel.org, 
	daniel.lezcano@linaro.org, mwalle@kernel.org, devicetree@vger.kernel.org, 
	linus.walleij@linaro.org, linux-remoteproc@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	olivia.wen@mediatek.com, shane.chien@mediatek.com, linux-gpio@vger.kernel.org, 
	linux-phy@lists.infradead.org, airlied@gmail.com, simona@ffwll.ch, 
	herbert@gondor.apana.org.au, jassisinghbrar@gmail.com, jiaxin.yu@mediatek.com, 
	andy.teng@mediatek.com, chunfeng.yun@mediatek.com, jieyy.yang@mediatek.com, 
	chunkuang.hu@kernel.org, conor+dt@kernel.org, jitao.shi@mediatek.com, 
	p.zabel@pengutronix.de, arnd@arndb.de, kishon@kernel.org, 
	kyrie.wu@mediatek.corp-partner.google.com, maarten.lankhorst@linux.intel.com, 
	tinghan.shen@mediatek.com, mripard@kernel.org, ck.hu@mediatek.com, 
	broonie@kernel.org, eugen.hristev@linaro.org, houlong.wei@mediatek.com, 
	matthias.bgg@gmail.com, tglx@linutronix.de, mchehab@kernel.org, 
	linux-arm-kernel@lists.infradead.org, granquet@baylibre.com, 
	sam.shih@mediatek.com, mathieu.poirier@linaro.org, fparent@baylibre.com, 
	andersson@kernel.org, sean.wang@kernel.org, linux-sound@vger.kernel.org, 
	lgirdwood@gmail.com, vkoul@kernel.org, linux-crypto@vger.kernel.org, 
	tzimmermann@suse.de, atenart@kernel.org, krzk+dt@kernel.org, 
	linux-media@vger.kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 24, 2025 at 5:51=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> The jpeg decoder main node is under the soc bus but currently has
> no ranges or reg specified, while the children do, and this is
> wrong in multiple aspects.
>
> The very same is also valid for the jpeg encoder node.
>
> Rename the decoder and encoder nodes to "jpeg-decoder@1a040000"
> and to "jpeg-encoder@1a030000" respectively, and change their
> children to use the newly defined ranges.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>

Despite now jpeg-encoder isn't sorted in order, I guess we all agree
it's much easier to read in this way, so

Reviewed-by: Fei Shao <fshao@chromium.org>

> ---
>  arch/arm64/boot/dts/mediatek/mt8195.dtsi | 30 +++++++++++++-----------
>  1 file changed, 16 insertions(+), 14 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/boot/d=
ts/mediatek/mt8195.dtsi
> index dd065b1bf94a..35b10082bb89 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> @@ -3014,7 +3014,7 @@ venc: video-codec@1a020000 {
>                         #size-cells =3D <2>;
>                 };
>
> -               jpgdec-master {
> +               jpeg-decoder@1a040000 {
>                         compatible =3D "mediatek,mt8195-jpgdec";
>                         power-domains =3D <&spm MT8195_POWER_DOMAIN_VDEC1=
>;
>                         iommus =3D <&iommu_vdo M4U_PORT_L19_JPGDEC_WDMA0>=
,
> @@ -3025,11 +3025,12 @@ jpgdec-master {
>                                  <&iommu_vdo M4U_PORT_L19_JPGDEC_BUFF_OFF=
SET0>;
>                         #address-cells =3D <2>;
>                         #size-cells =3D <2>;
> -                       ranges;
> +                       ranges =3D <0 0 0 0x1a040000 0 0x20000>,
> +                                <1 0 0 0x1b040000 0 0x10000>;
>
> -                       jpgdec@1a040000 {
> +                       jpgdec@0,0 {
>                                 compatible =3D "mediatek,mt8195-jpgdec-hw=
";
> -                               reg =3D <0 0x1a040000 0 0x10000>;/* JPGDE=
C_C0 */
> +                               reg =3D <0 0 0 0x10000>;/* JPGDEC_C0 */
>                                 iommus =3D <&iommu_vdo M4U_PORT_L19_JPGDE=
C_WDMA0>,
>                                          <&iommu_vdo M4U_PORT_L19_JPGDEC_=
BSDMA0>,
>                                          <&iommu_vdo M4U_PORT_L19_JPGDEC_=
WDMA1>,
> @@ -3042,9 +3043,9 @@ jpgdec@1a040000 {
>                                 power-domains =3D <&spm MT8195_POWER_DOMA=
IN_VDEC0>;
>                         };
>
> -                       jpgdec@1a050000 {
> +                       jpgdec@0,10000 {
>                                 compatible =3D "mediatek,mt8195-jpgdec-hw=
";
> -                               reg =3D <0 0x1a050000 0 0x10000>;/* JPGDE=
C_C1 */
> +                               reg =3D <0 0 0x10000 0x10000>;/* JPGDEC_C=
1 */
>                                 iommus =3D <&iommu_vdo M4U_PORT_L19_JPGDE=
C_WDMA0>,
>                                          <&iommu_vdo M4U_PORT_L19_JPGDEC_=
BSDMA0>,
>                                          <&iommu_vdo M4U_PORT_L19_JPGDEC_=
WDMA1>,
> @@ -3057,9 +3058,9 @@ jpgdec@1a050000 {
>                                 power-domains =3D <&spm MT8195_POWER_DOMA=
IN_VDEC1>;
>                         };
>
> -                       jpgdec@1b040000 {
> +                       jpgdec@1,0 {
>                                 compatible =3D "mediatek,mt8195-jpgdec-hw=
";
> -                               reg =3D <0 0x1b040000 0 0x10000>;/* JPGDE=
C_C2 */
> +                               reg =3D <1 0 0 0x10000>;/* JPGDEC_C2 */
>                                 iommus =3D <&iommu_vpp M4U_PORT_L20_JPGDE=
C_WDMA0>,
>                                          <&iommu_vpp M4U_PORT_L20_JPGDEC_=
BSDMA0>,
>                                          <&iommu_vpp M4U_PORT_L20_JPGDEC_=
WDMA1>,
> @@ -3088,7 +3089,7 @@ vdosys0: syscon@1c01a000 {
>                 };
>
>
> -               jpgenc-master {
> +               jpeg-encoder@1a030000 {
>                         compatible =3D "mediatek,mt8195-jpgenc";
>                         power-domains =3D <&spm MT8195_POWER_DOMAIN_VENC_=
CORE1>;
>                         iommus =3D <&iommu_vpp M4U_PORT_L20_JPGENC_Y_RDMA=
>,
> @@ -3097,11 +3098,12 @@ jpgenc-master {
>                                         <&iommu_vpp M4U_PORT_L20_JPGENC_B=
SDMA>;
>                         #address-cells =3D <2>;
>                         #size-cells =3D <2>;
> -                       ranges;
> +                       ranges =3D <0 0 0 0x1a030000 0 0x10000>,
> +                                <1 0 0 0x1b030000 0 0x10000>;
>
> -                       jpgenc@1a030000 {
> +                       jpgenc@0,0 {
>                                 compatible =3D "mediatek,mt8195-jpgenc-hw=
";
> -                               reg =3D <0 0x1a030000 0 0x10000>;
> +                               reg =3D <0 0 0 0x10000>;
>                                 iommus =3D <&iommu_vdo M4U_PORT_L19_JPGEN=
C_Y_RDMA>,
>                                                 <&iommu_vdo M4U_PORT_L19_=
JPGENC_C_RDMA>,
>                                                 <&iommu_vdo M4U_PORT_L19_=
JPGENC_Q_TABLE>,
> @@ -3112,9 +3114,9 @@ jpgenc@1a030000 {
>                                 power-domains =3D <&spm MT8195_POWER_DOMA=
IN_VENC>;
>                         };
>
> -                       jpgenc@1b030000 {
> +                       jpgenc@1,0 {
>                                 compatible =3D "mediatek,mt8195-jpgenc-hw=
";
> -                               reg =3D <0 0x1b030000 0 0x10000>;
> +                               reg =3D <1 0 0 0x10000>;
>                                 iommus =3D <&iommu_vpp M4U_PORT_L20_JPGEN=
C_Y_RDMA>,
>                                                 <&iommu_vpp M4U_PORT_L20_=
JPGENC_C_RDMA>,
>                                                 <&iommu_vpp M4U_PORT_L20_=
JPGENC_Q_TABLE>,
> --
> 2.50.1
>
>

