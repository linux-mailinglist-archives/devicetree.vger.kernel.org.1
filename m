Return-Path: <devicetree+bounces-147907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 18561A39C6B
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 13:45:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 09DC63A2BCF
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 12:45:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 348E924818D;
	Tue, 18 Feb 2025 12:45:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jCx3GQmV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21CD11ABEDF;
	Tue, 18 Feb 2025 12:45:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739882736; cv=none; b=bPTlHnYn5NGP+pumDpfAKfFkChjCi/Wt7TRIDmP7BcGCQ/uQ/oZ4krZ1bW6nmWVY49fkdBAKZN9YmSV5ggQH6iEqu8n0y6S2AuLV2oRGHEFeBp8N7C0bKwwLE5+33IYSrZWCmqzdfohvRgWdtIx1CWC8JBQj1RXpsnvHiJK9n8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739882736; c=relaxed/simple;
	bh=weBW3LgnRdLjR3zz1PSQNvKpOqyg8ymYz6BdPAWQJPw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QFPXiXFjhG4ekMLpwP51qZhWx5ay4WtEt6Us0fatMw7t+GMtrEEl5dZtk4tZxbYGHbQAt8UXBqsjEoqCYOjvDMiEJlGNmY4yxrljHCgha2gdWcYjVKVLlTTs+UJjhMFle+7HfTKL2IoE6thJUowMIko0B2MVVjTBwiMXODaEOJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jCx3GQmV; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-38a8b17d7a7so3030454f8f.2;
        Tue, 18 Feb 2025 04:45:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739882731; x=1740487531; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d2Qfbn+CiwIfWjtlVCbC/gHXlWi8DU+n08AseDhkGGM=;
        b=jCx3GQmV6iD49XURH2XttveCoEH2u959RGBrNJLAntHLpqQBkVXSDT1mB9MoKoRe4K
         zw8oRZsK49cFGBVYMCtLuPb5ZT9EpViEyGRuWz2ATJO0dvICWVUgAZJkb7Hk6VvlMIox
         3ZmAzB8EAwtyxjdNBWn7gZ+5W/63VGvd934E1lnfjNSXUNOanTYZT+yZtTEcgm13CZz1
         JuE4rW5B5TPlusKDJJ2mZsKTrJRBx3a0/OXKAlrQxMRJBbXw30NrHc0E2pO9PQqiLtFu
         EGNCQ6LDS/eRu++Tn+otyWiMQ+HafB0lz6q0j9nEQCdDy/e35R7ftgrv83UENV/exKzL
         NcIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739882731; x=1740487531;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d2Qfbn+CiwIfWjtlVCbC/gHXlWi8DU+n08AseDhkGGM=;
        b=wJPyiHHecFInvTAU01VzZ+StPJBiyxKo3IRgNZJe7/dX5wALU6SO41553WGyLku+aC
         fJP1BaNN9KuLpBPXPdWq49ZEPE51dJG0+IWs+pGzOzoAhx/OSckws5hUir+xe1hs6AYA
         h2zYk0VtCFggUnhKvJ+SocnxbI4QRvJn/tXzuH2rlbW7M/RYFR2dW3ptQtIr85rQx8w+
         mGrxQdBzyiUFJdXJMysKSgswno5P8/zgFihfPjMxjxjtvhqsS9NL5tjd5bVc420r4Xz8
         /+SjJIgKkHsnUvAvZSruAYY+/eJ2DNNcBl+HAk5ik5qkpleQUQfJch1bfqNyybCFTt5S
         UpjA==
X-Forwarded-Encrypted: i=1; AJvYcCUUYkQZLvdw09WJOMKrb4J0c2k4l2Y5fyamjmLHoVv5IKNZO3IdeO3/It4o4Qlk6nJ+hOz2ytMPqGt6@vger.kernel.org, AJvYcCX3G1jGR3ltX8QFbm/Mtcbgw2Oaz9sad4EY9bI5bfVzcAIDxal7vjMXS/82Zz8vEu3UU0Ow9QRXYg4Fgdk+@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8Hh/gnzX9ZswdvqeiUv8flMhRgZvq99W+00rF8cKd3DUOMefc
	gutEZvDevxOZRyrQnViyK6yNkzQBvncVJkUzh/XPABVzxcd/9XHz3Sk0E7R8a42eNZhDSQ9ueOv
	OyrpuqBRS64zGMu8f8f6KEoCgv70=
X-Gm-Gg: ASbGncuGhaiu7tDo/W1LxyZVipqfUvTEt2TzeFK7i9FtjCS3V7NfBLlGX9zLSkmcGxB
	0VUBm8Pz+tMb7TezrTP2tbm9Dz41gR6UB6NZUcbL++NV3Sny1V9a8YgQb4Yy6HD2nkYFmOK7QBA
	==
X-Google-Smtp-Source: AGHT+IFf8G/fzke3oihOKNIe2hQvpsHbfaykZG07A2oiWY0PQj1cI81Sa+6FGsZDJ/p+eIcwIswl1lWbcClsfywY6qc=
X-Received: by 2002:a5d:47c3:0:b0:38f:3c8a:4c0a with SMTP id
 ffacd0b85a97d-38f3c8a4eb2mr6432385f8f.7.1739882730902; Tue, 18 Feb 2025
 04:45:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250217140910.108175-1-clamor95@gmail.com> <20250217140910.108175-3-clamor95@gmail.com>
 <zmwn3dnnmwhms2qxqwb6ksshx27fcq2i4wujz5utuldaiqs6oz@idvy3dirrmuo>
In-Reply-To: <zmwn3dnnmwhms2qxqwb6ksshx27fcq2i4wujz5utuldaiqs6oz@idvy3dirrmuo>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Tue, 18 Feb 2025 14:45:19 +0200
X-Gm-Features: AWEUYZkUxWsJ4G1VAZ10U-SjjrKn1BHtMSg_HbEjBL4ykKNsCkzEUEp0cYN8c7A
Message-ID: <CAPVz0n3bqLhuC0gxXD-=L0ETMmhOv1Ku0PrWUb_Yn09v3UNuOA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] drm: bridge: Add support for Solomon SSD2825
 RGB/DSI bridge
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=D0=B2=D1=82, 18 =D0=BB=D1=8E=D1=82. 2025=E2=80=AF=D1=80. =D0=BE 14:31 Dmit=
ry Baryshkov <dmitry.baryshkov@linaro.org> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On Mon, Feb 17, 2025 at 04:09:10PM +0200, Svyatoslav Ryhel wrote:
> > SSD2825 is a cost-effective MIPI Bridge Chip solution targeting mainly
> > smartphones. It can convert 24bit RGB interface into 4-lane MIPI-DSI
> > interface to drive display modules of up to 800 x 1366, while supportin=
g
> > AMOLED, a-si LCD or LTPS panel technologies for smartphone applications=
.
> >
> > Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > ---
> >  drivers/gpu/drm/bridge/Kconfig   |  14 +
> >  drivers/gpu/drm/bridge/Makefile  |   1 +
> >  drivers/gpu/drm/bridge/ssd2825.c | 824 +++++++++++++++++++++++++++++++
> >  3 files changed, 839 insertions(+)
> >  create mode 100644 drivers/gpu/drm/bridge/ssd2825.c
> >
> > diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kc=
onfig
> > index 6b4664d91faa..a6eca3aef258 100644
> > --- a/drivers/gpu/drm/bridge/Kconfig
> > +++ b/drivers/gpu/drm/bridge/Kconfig
> > @@ -306,6 +306,20 @@ config DRM_SIMPLE_BRIDGE
> >         Support for non-programmable DRM bridges, such as ADI ADV7123, =
TI
> >         THS8134 and THS8135 or passive resistor ladder DACs.
> >
> > +config DRM_SOLOMON_SSD2825
> > +     tristate "SSD2825 RGB/DSI bridge"
> > +     depends on SPI_MASTER && OF
> > +     select DRM_MIPI_DSI
> > +     select DRM_KMS_HELPER
> > +     select DRM_PANEL
> > +     select VIDEOMODE_HELPERS
> > +     help
> > +       Say Y here if you want support for the Solomon SSD2825 RGB/DSI
> > +       SPI bridge driver.
> > +
> > +       Say M here if you want to support this hardware as a module.
> > +       The module will be named "solomon-ssd2825".
> > +
> >  config DRM_THINE_THC63LVD1024
> >       tristate "Thine THC63LVD1024 LVDS decoder bridge"
> >       depends on OF
> > diff --git a/drivers/gpu/drm/bridge/Makefile b/drivers/gpu/drm/bridge/M=
akefile
> > index 97304b429a53..c621ab3fa3a9 100644
> > --- a/drivers/gpu/drm/bridge/Makefile
> > +++ b/drivers/gpu/drm/bridge/Makefile
> > @@ -23,6 +23,7 @@ obj-$(CONFIG_DRM_SIL_SII8620) +=3D sil-sii8620.o
> >  obj-$(CONFIG_DRM_SII902X) +=3D sii902x.o
> >  obj-$(CONFIG_DRM_SII9234) +=3D sii9234.o
> >  obj-$(CONFIG_DRM_SIMPLE_BRIDGE) +=3D simple-bridge.o
> > +obj-$(CONFIG_DRM_SOLOMON_SSD2825) +=3D ssd2825.o
> >  obj-$(CONFIG_DRM_THINE_THC63LVD1024) +=3D thc63lvd1024.o
> >  obj-$(CONFIG_DRM_TOSHIBA_TC358762) +=3D tc358762.o
> >  obj-$(CONFIG_DRM_TOSHIBA_TC358764) +=3D tc358764.o
> > diff --git a/drivers/gpu/drm/bridge/ssd2825.c b/drivers/gpu/drm/bridge/=
ssd2825.c
> > new file mode 100644
> > index 000000000000..cc6f5d480812
> > --- /dev/null
> > +++ b/drivers/gpu/drm/bridge/ssd2825.c
> > @@ -0,0 +1,824 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +#include <linux/clk.h>
> > +#include <linux/delay.h>
> > +#include <linux/device.h>
> > +#include <linux/err.h>
> > +#include <linux/kernel.h>
> > +#include <linux/module.h>
> > +#include <linux/mod_devicetable.h>
> > +#include <linux/mutex.h>
> > +#include <linux/of.h>
> > +#include <linux/regulator/consumer.h>
> > +#include <linux/spi/spi.h>
> > +
> > +#include <drm/drm_atomic_helper.h>
> > +#include <drm/drm_bridge.h>
> > +#include <drm/drm_drv.h>
> > +#include <drm/drm_mipi_dsi.h>
> > +#include <drm/drm_of.h>
> > +#include <drm/drm_panel.h>
> > +#include <video/mipi_display.h>
> > +#include <video/videomode.h>
> > +
> > +#define SSD2825_DEVICE_ID_REG                        0xb0
> > +#define SSD2825_RGB_INTERFACE_CTRL_REG_1     0xb1
> > +#define SSD2825_RGB_INTERFACE_CTRL_REG_2     0xb2
> > +#define SSD2825_RGB_INTERFACE_CTRL_REG_3     0xb3
> > +#define SSD2825_RGB_INTERFACE_CTRL_REG_4     0xb4
> > +#define SSD2825_RGB_INTERFACE_CTRL_REG_5     0xb5
> > +#define SSD2825_RGB_INTERFACE_CTRL_REG_6     0xb6
> > +#define   SSD2825_NON_BURST_EV                       BIT(2)
> > +#define   SSD2825_BURST                              BIT(3)
> > +#define   SSD2825_PCKL_HIGH                  BIT(13)
> > +#define   SSD2825_HSYNC_HIGH                 BIT(14)
> > +#define   SSD2825_VSYNC_HIGH                 BIT(15)
> > +#define SSD2825_CONFIGURATION_REG            0xb7
> > +#define   SSD2825_CONF_REG_HS                        BIT(0)
> > +#define   SSD2825_CONF_REG_CKE                       BIT(1)
> > +#define   SSD2825_CONF_REG_SLP                       BIT(2)
> > +#define   SSD2825_CONF_REG_VEN                       BIT(3)
> > +#define   SSD2825_CONF_REG_HCLK                      BIT(4)
> > +#define   SSD2825_CONF_REG_CSS                       BIT(5)
> > +#define   SSD2825_CONF_REG_DCS                       BIT(6)
> > +#define   SSD2825_CONF_REG_REN                       BIT(7)
> > +#define   SSD2825_CONF_REG_ECD                       BIT(8)
> > +#define   SSD2825_CONF_REG_EOT                       BIT(9)
> > +#define   SSD2825_CONF_REG_LPE                       BIT(10)
> > +#define SSD2825_VC_CTRL_REG                  0xb8
> > +#define SSD2825_PLL_CTRL_REG                 0xb9
> > +#define SSD2825_PLL_CONFIGURATION_REG                0xba
> > +#define SSD2825_CLOCK_CTRL_REG                       0xbb
> > +#define SSD2825_PACKET_SIZE_CTRL_REG_1               0xbc
> > +#define SSD2825_PACKET_SIZE_CTRL_REG_2               0xbd
> > +#define SSD2825_PACKET_SIZE_CTRL_REG_3               0xbe
> > +#define SSD2825_PACKET_DROP_REG                      0xbf
> > +#define SSD2825_OPERATION_CTRL_REG           0xc0
> > +#define SSD2825_MAX_RETURN_SIZE_REG          0xc1
> > +#define SSD2825_RETURN_DATA_COUNT_REG                0xc2
> > +#define SSD2825_ACK_RESPONSE_REG             0xc3
> > +#define SSD2825_LINE_CTRL_REG                        0xc4
> > +#define SSD2825_INTERRUPT_CTRL_REG           0xc5
> > +#define SSD2825_INTERRUPT_STATUS_REG         0xc6
> > +#define SSD2825_ERROR_STATUS_REG             0xc7
> > +#define SSD2825_DATA_FORMAT_REG                      0xc8
> > +#define SSD2825_DELAY_ADJ_REG_1                      0xc9
> > +#define SSD2825_DELAY_ADJ_REG_2                      0xca
> > +#define SSD2825_DELAY_ADJ_REG_3                      0xcb
> > +#define SSD2825_DELAY_ADJ_REG_4                      0xcc
> > +#define SSD2825_DELAY_ADJ_REG_5                      0xcd
> > +#define SSD2825_DELAY_ADJ_REG_6                      0xce
> > +#define SSD2825_HS_TX_TIMER_REG_1            0xcf
> > +#define SSD2825_HS_TX_TIMER_REG_2            0xd0
> > +#define SSD2825_LP_RX_TIMER_REG_1            0xd1
> > +#define SSD2825_LP_RX_TIMER_REG_2            0xd2
> > +#define SSD2825_TE_STATUS_REG                        0xd3
> > +#define SSD2825_SPI_READ_REG                 0xd4
> > +#define   SSD2825_SPI_READ_REG_RESET         0xfa
> > +#define SSD2825_PLL_LOCK_REG                 0xd5
> > +#define SSD2825_TEST_REG                     0xd6
> > +#define SSD2825_TE_COUNT_REG                 0xd7
> > +#define SSD2825_ANALOG_CTRL_REG_1            0xd8
> > +#define SSD2825_ANALOG_CTRL_REG_2            0xd9
> > +#define SSD2825_ANALOG_CTRL_REG_3            0xda
> > +#define SSD2825_ANALOG_CTRL_REG_4            0xdb
> > +#define SSD2825_INTERRUPT_OUT_CTRL_REG               0xdc
> > +#define SSD2825_RGB_INTERFACE_CTRL_REG_7     0xdd
> > +#define SSD2825_LANE_CONFIGURATION_REG               0xde
> > +#define SSD2825_DELAY_ADJ_REG_7                      0xdf
> > +#define SSD2825_INPUT_PIN_CTRL_REG_1         0xe0
> > +#define SSD2825_INPUT_PIN_CTRL_REG_2         0xe1
> > +#define SSD2825_BIDIR_PIN_CTRL_REG_1         0xe2
> > +#define SSD2825_BIDIR_PIN_CTRL_REG_2         0xe3
> > +#define SSD2825_BIDIR_PIN_CTRL_REG_3         0xe4
> > +#define SSD2825_BIDIR_PIN_CTRL_REG_4         0xe5
> > +#define SSD2825_BIDIR_PIN_CTRL_REG_5         0xe6
> > +#define SSD2825_BIDIR_PIN_CTRL_REG_6         0xe7
> > +#define SSD2825_BIDIR_PIN_CTRL_REG_7         0xe8
> > +#define SSD2825_CABC_BRIGHTNESS_CTRL_REG_1   0xe9
> > +#define SSD2825_CABC_BRIGHTNESS_CTRL_REG_2   0xea
> > +#define SSD2825_CABC_BRIGHTNESS_STATUS_REG   0xeb
> > +#define SSD2825_READ_REG                     0xff
> > +
> > +#define SSD2825_COM_BYTE                     0x00
> > +#define SSD2825_DAT_BYTE                     0x01
> > +
> > +#define      SSD2828_LP_CLOCK_DIVIDER(n)             (((n) - 1) & 0x3f=
)
> > +#define SSD2825_LP_MIN_CLK                   5000 /* KHz */
> > +#define SSD2825_REF_MIN_CLK                  2000 /* KHz */
> > +
> > +static const struct regulator_bulk_data ssd2825_supplies[] =3D {
> > +     { .supply =3D "dvdd" },
> > +     { .supply =3D "avdd" },
> > +     { .supply =3D "vddio" },
> > +};
> > +
> > +struct ssd2825_dsi_output {
> > +     struct mipi_dsi_device *dev;
> > +     struct drm_panel *panel;
> > +     struct drm_bridge *bridge;
> > +};
> > +
> > +struct ssd2825_priv {
> > +     struct spi_device *spi;
> > +     struct device *dev;
> > +
> > +     struct gpio_desc *reset_gpio;
> > +     struct regulator_bulk_data *supplies;
> > +
> > +     struct clk *tx_clk;
> > +
> > +     int enabled;
> > +
> > +     struct mipi_dsi_host dsi_host;
> > +     struct drm_bridge bridge;
> > +     struct ssd2825_dsi_output output;
> > +
> > +     struct mutex mlock;     /* for host transfer operations */
> > +
> > +     u32 pd_lines;           /* number of Parallel Port Input Data Lin=
es */
> > +     u32 dsi_lanes;          /* number of DSI Lanes */
> > +
> > +     /* Parameters for PLL programming */
> > +     u32 pll_freq_kbps;      /* PLL in kbps */
> > +     u32 nibble_freq_khz;    /* PLL div by 4 */
> > +
> > +     u32 hzd;                /* HS Zero Delay in ns*/
> > +     u32 hpd;                /* HS Prepare Delay is ns */
> > +};
> > +
> > +static inline struct ssd2825_priv *dsi_host_to_ssd2825(struct mipi_dsi=
_host
> > +                                                      *host)
> > +{
> > +     return container_of(host, struct ssd2825_priv, dsi_host);
> > +}
> > +
> > +static inline struct ssd2825_priv *bridge_to_ssd2825(struct drm_bridge
> > +                                                  *bridge)
> > +{
> > +     return container_of(bridge, struct ssd2825_priv, bridge);
> > +}
> > +
> > +static int ssd2825_write_raw(struct ssd2825_priv *priv, u8 high_byte, =
u8 low_byte)
> > +{
> > +     struct spi_device *spi =3D priv->spi;
> > +     u8 tx_buf[2];
> > +
> > +     /*
> > +      * Low byte is the value, high byte defines type of
> > +      * write cycle, 0 for command and 1 for data.
> > +      */
> > +     tx_buf[0] =3D low_byte;
> > +     tx_buf[1] =3D high_byte;
> > +
> > +     return spi_write(spi, tx_buf, 2);
> > +}
> > +
> > +static int ssd2825_write_reg(struct ssd2825_priv *priv, u8 reg, u16 co=
mmand)
> > +{
> > +     u8 datal =3D (command & 0x00FF);
> > +     u8 datah =3D (command & 0xFF00) >> 8;
> > +     int ret;
> > +
> > +     /* Command write cycle */
> > +     ret =3D ssd2825_write_raw(priv, SSD2825_COM_BYTE, reg);
> > +     if (ret)
> > +             return ret;
> > +
> > +     /* Data write cycle bits 7-0 */
> > +     ret =3D ssd2825_write_raw(priv, SSD2825_DAT_BYTE, datal);
> > +     if (ret)
> > +             return ret;
> > +
> > +     /* Data write cycle bits 15-8 */
> > +     ret =3D ssd2825_write_raw(priv, SSD2825_DAT_BYTE, datah);
> > +     if (ret)
> > +             return ret;
> > +
> > +     return 0;
> > +}
> > +
> > +static int ssd2825_write_dsi(struct ssd2825_priv *priv, const u8 *comm=
and, int len)
> > +{
> > +     int ret, i;
> > +
> > +     ret =3D ssd2825_write_reg(priv, SSD2825_PACKET_SIZE_CTRL_REG_1, l=
en);
> > +     if (ret)
> > +             return ret;
> > +
> > +     ret =3D ssd2825_write_raw(priv, SSD2825_COM_BYTE, SSD2825_PACKET_=
DROP_REG);
> > +     if (ret)
> > +             return ret;
> > +
> > +     for (i =3D 0; i < len; i++) {
> > +             ret =3D ssd2825_write_raw(priv, SSD2825_DAT_BYTE, command=
[i]);
> > +             if (ret)
> > +                     return ret;
> > +     }
> > +
> > +     return 0;
> > +}
> > +
> > +static int ssd2825_read_raw(struct ssd2825_priv *priv, u8 cmd, u16 *da=
ta)
> > +{
> > +     struct spi_device *spi =3D priv->spi;
> > +     struct spi_message msg;
> > +     struct spi_transfer xfer[2];
> > +     u8 tx_buf[2];
> > +     u8 rx_buf[2];
> > +     int ret;
> > +
> > +     memset(&xfer, 0, sizeof(xfer));
> > +
> > +     tx_buf[1] =3D (cmd & 0xFF00) >> 8;
> > +     tx_buf[0] =3D (cmd & 0x00FF);
> > +
> > +     xfer[0].tx_buf =3D tx_buf;
> > +     xfer[0].bits_per_word =3D 9;
> > +     xfer[0].len =3D 2;
> > +
> > +     xfer[1].rx_buf =3D rx_buf;
> > +     xfer[1].bits_per_word =3D 16;
> > +     xfer[1].len =3D 2;
> > +
> > +     spi_message_init(&msg);
> > +     spi_message_add_tail(&xfer[0], &msg);
> > +     spi_message_add_tail(&xfer[1], &msg);
> > +
> > +     ret =3D spi_sync(spi, &msg);
> > +     if (ret)
> > +             dev_err(&spi->dev, "spi_sync_read failed %d\n", ret);
> > +
> > +     *data =3D rx_buf[1] | (rx_buf[0] << 8);
> > +
> > +     return 0;
> > +}
> > +
> > +static int ssd2825_read_reg(struct ssd2825_priv *priv, u8 reg, u16 *da=
ta)
> > +{
> > +     int ret;
> > +
> > +     /* Reset the read register */
> > +     ret =3D ssd2825_write_reg(priv, SSD2825_SPI_READ_REG, SSD2825_SPI=
_READ_REG_RESET);
> > +     if (ret)
> > +             return ret;
> > +
> > +     /* Push the address to read */
> > +     ret =3D ssd2825_write_raw(priv, SSD2825_COM_BYTE, reg);
> > +     if (ret)
> > +             return ret;
> > +
> > +     /* Perform a reading cycle */
> > +     ret =3D ssd2825_read_raw(priv, SSD2825_SPI_READ_REG_RESET, data);
> > +     if (ret)
> > +             return ret;
> > +
> > +     return 0;
> > +}
> > +
> > +static int ssd2825_dsi_host_attach(struct mipi_dsi_host *host,
> > +                                struct mipi_dsi_device *dev)
> > +{
> > +     struct ssd2825_priv *priv =3D dsi_host_to_ssd2825(host);
> > +     struct drm_bridge *bridge;
> > +     struct drm_panel *panel;
> > +     struct device_node *ep;
> > +     int ret;
> > +
> > +     if (dev->lanes > 4) {
> > +             dev_err(priv->dev, "unsupported number of data lanes(%u)\=
n",
> > +                     dev->lanes);
> > +             return -EINVAL;
> > +     }
> > +
> > +     /*
> > +      * ssd2825 supports both Video and Pulse mode, but the driver onl=
y
> > +      * implements Video (event) mode currently
> > +      */
> > +     if (!(dev->mode_flags & MIPI_DSI_MODE_VIDEO)) {
> > +             dev_err(priv->dev, "Only MIPI_DSI_MODE_VIDEO is supported=
\n");
> > +             return -EOPNOTSUPP;
> > +     }
> > +
> > +     ret =3D drm_of_find_panel_or_bridge(host->dev->of_node, 1, 0, &pa=
nel,
> > +                                       &bridge);
> > +     if (ret)
> > +             return ret;
> > +
> > +     if (panel) {
> > +             bridge =3D drm_panel_bridge_add_typed(panel,
> > +                                                 DRM_MODE_CONNECTOR_DS=
I);
> > +             if (IS_ERR(bridge))
> > +                     return PTR_ERR(bridge);
> > +     }
> > +
> > +     priv->output.dev =3D dev;
> > +     priv->output.bridge =3D bridge;
> > +     priv->output.panel =3D panel;
> > +
> > +     priv->dsi_lanes =3D dev->lanes;
> > +
> > +     /* get input ep (port0/endpoint0) */
> > +     ret =3D -EINVAL;
> > +     ep =3D of_graph_get_endpoint_by_regs(host->dev->of_node, 0, 0);
> > +     if (ep) {
> > +             ret =3D of_property_read_u32(ep, "bus-width", &priv->pd_l=
ines);
> > +
> > +             of_node_put(ep);
> > +     }
> > +
> > +     if (ret)
> > +             priv->pd_lines =3D mipi_dsi_pixel_format_to_bpp(dev->form=
at);
> > +
> > +     drm_bridge_add(&priv->bridge);
> > +
> > +     return 0;
> > +}
> > +
> > +static int ssd2825_dsi_host_detach(struct mipi_dsi_host *host,
> > +                                struct mipi_dsi_device *dev)
> > +{
> > +     struct ssd2825_priv *priv =3D dsi_host_to_ssd2825(host);
> > +
> > +     drm_bridge_remove(&priv->bridge);
> > +     if (priv->output.panel)
> > +             drm_panel_bridge_remove(priv->output.bridge);
> > +
> > +     return 0;
> > +}
> > +
> > +static ssize_t ssd2825_dsi_host_transfer(struct mipi_dsi_host *host,
> > +                                      const struct mipi_dsi_msg *msg)
> > +{
> > +     struct ssd2825_priv *priv =3D dsi_host_to_ssd2825(host);
> > +     u8 buf =3D *(u8 *)msg->tx_buf;
> > +     u16 config;
> > +     int ret;
> > +
> > +     if (!priv->enabled) {
> > +             dev_err(priv->dev, "Bridge is not enabled\n");
> > +             return -ENODEV;
> > +     }
>
> Same comment as v1:
>
> No. See include/drm/drm_mipi_dsi.h:
>
>  * Also note that those callbacks can be called no matter the state the
>  * host is in. Drivers that need the underlying device to be powered to
>  * perform these operations will first need to make sure it's been
>  * properly enabled.
>

Yes, I am checking if bridge id enabled. How to check it more? Please
explain in detail, I do not quite understand this place. Thank you.

> > +
> > +     if (msg->rx_len) {
> > +             dev_warn(priv->dev, "MIPI rx is not supported\n");
> > +             return -EOPNOTSUPP;
> > +     }
> > +
> > +     mutex_lock(&priv->mlock);
>
> guard(mutex)(&priv->mlock); would simplify the code here.
>

Fair

> > +
> > +     ret =3D ssd2825_read_reg(priv, SSD2825_CONFIGURATION_REG, &config=
);
> > +     if (ret)
> > +             goto out_unlock;
> > +
> > +     switch (msg->type) {
> > +     case MIPI_DSI_DCS_SHORT_WRITE:
> > +     case MIPI_DSI_DCS_SHORT_WRITE_PARAM:
> > +     case MIPI_DSI_DCS_LONG_WRITE:
> > +             config |=3D SSD2825_CONF_REG_DCS;
> > +             break;
> > +     case MIPI_DSI_GENERIC_SHORT_WRITE_0_PARAM:
> > +     case MIPI_DSI_GENERIC_SHORT_WRITE_1_PARAM:
> > +     case MIPI_DSI_GENERIC_SHORT_WRITE_2_PARAM:
> > +     case MIPI_DSI_GENERIC_LONG_WRITE:
> > +             config &=3D ~SSD2825_CONF_REG_DCS;
> > +             break;
> > +     case MIPI_DSI_DCS_READ:
> > +     case MIPI_DSI_GENERIC_READ_REQUEST_0_PARAM:
> > +     case MIPI_DSI_GENERIC_READ_REQUEST_1_PARAM:
> > +     case MIPI_DSI_GENERIC_READ_REQUEST_2_PARAM:
> > +     default:
> > +             goto out_unlock;
> > +     }
> > +
> > +     ret =3D ssd2825_write_reg(priv, SSD2825_CONFIGURATION_REG, config=
);
> > +     if (ret)
> > +             goto out_unlock;
> > +
> > +     ret =3D ssd2825_write_reg(priv, SSD2825_VC_CTRL_REG, 0x0000);
> > +     if (ret)
> > +             goto out_unlock;
> > +
> > +     ret =3D ssd2825_write_dsi(priv, msg->tx_buf, msg->tx_len);
> > +     if (ret)
> > +             goto out_unlock;
> > +
> > +     if (buf =3D=3D MIPI_DCS_SET_DISPLAY_ON) {
> > +             ssd2825_write_reg(priv, SSD2825_CONFIGURATION_REG,
> > +                               SSD2825_CONF_REG_HS | SSD2825_CONF_REG_=
VEN |
> > +                               SSD2825_CONF_REG_DCS | SSD2825_CONF_REG=
_ECD |
> > +                               SSD2825_CONF_REG_EOT);
>
> From v1:
>
> Most of these flags should be set depending on the
> mipi_dsi_device.mode_flags.
>
> > +             ssd2825_write_reg(priv, SSD2825_PLL_CTRL_REG, 0x0001);
> > +             ssd2825_write_reg(priv, SSD2825_VC_CTRL_REG, 0x0000);
>
> Why? Why do you need this special handling for the
> MIPI_DCS_SET_DISPLAY_ON? Why can't it just go to .atomic_enable()?
>

This has to be called after panel init dsi sequence completes, is
atomic_enable called after panel init dsi seq is completed? Maybe you
can suggest where to place it.

> > +     }
> > +
> > +out_unlock:
> > +     mutex_unlock(&priv->mlock);
> > +
> > +     return 0;
> > +}
> > +
> > +static const struct mipi_dsi_host_ops ssd2825_dsi_host_ops =3D {
> > +     .attach =3D ssd2825_dsi_host_attach,
> > +     .detach =3D ssd2825_dsi_host_detach,
> > +     .transfer =3D ssd2825_dsi_host_transfer,
> > +};
> > +
> > +static void ssd2825_hw_reset(struct ssd2825_priv *priv)
> > +{
> > +     gpiod_set_value_cansleep(priv->reset_gpio, 1);
> > +     usleep_range(5000, 6000);
> > +     gpiod_set_value_cansleep(priv->reset_gpio, 0);
> > +     usleep_range(5000, 6000);
> > +}
> > +
> > +/*
> > + * PLL configuration register settings.
> > + *
> > + * See the "PLL Configuration Register Description" in the SSD2825 dat=
asheet.
> > + */
> > +static u16 construct_pll_config(struct ssd2825_priv *priv,
> > +                             u32 desired_pll_freq_kbps, u32 reference_=
freq_khz)
> > +{
> > +     u32 div_factor =3D 1, mul_factor, fr =3D 0;
> > +
> > +     while (reference_freq_khz / (div_factor + 1) >=3D SSD2825_REF_MIN=
_CLK)
> > +             div_factor++;
> > +     if (div_factor > 31)
> > +             div_factor =3D 31;
> > +
> > +     mul_factor =3D DIV_ROUND_UP(desired_pll_freq_kbps * div_factor,
> > +                               reference_freq_khz);
> > +
> > +     priv->pll_freq_kbps =3D reference_freq_khz * mul_factor / div_fac=
tor;
> > +     priv->nibble_freq_khz =3D priv->pll_freq_kbps / 4;
> > +
> > +     if (priv->pll_freq_kbps >=3D 501000)
> > +             fr =3D 3;
> > +     else if (priv->pll_freq_kbps >=3D 251000)
> > +             fr =3D 2;
> > +     else if (priv->pll_freq_kbps >=3D 126000)
> > +             fr =3D 1;
> > +
> > +     return (fr << 14) | (div_factor << 8) | mul_factor;
> > +}
> > +
> > +static u32 ssd2825_to_ns(u32 khz)
> > +{
> > +     return (1000 * 1000 / khz);
> > +}
> > +
> > +static int ssd2825_setup_pll(struct ssd2825_priv *priv,
> > +                          const struct drm_display_mode *mode)
> > +{
> > +     u16 pll_config, lp_div;
> > +     u32 nibble_delay, pclk_mult, tx_freq_khz;
> > +     u8 hzd, hpd;
> > +
> > +     tx_freq_khz =3D clk_get_rate(priv->tx_clk) / 1000;
> > +     if (!tx_freq_khz)
> > +             tx_freq_khz =3D SSD2825_REF_MIN_CLK;
> > +
> > +     pclk_mult =3D priv->pd_lines / priv->dsi_lanes + 1;
> > +     pll_config =3D construct_pll_config(priv, pclk_mult * mode->clock=
,
> > +                                       tx_freq_khz);
> > +
> > +     lp_div =3D priv->pll_freq_kbps / (SSD2825_LP_MIN_CLK * 8);
> > +
> > +     nibble_delay =3D ssd2825_to_ns(priv->nibble_freq_khz);
> > +
> > +     hzd =3D priv->hzd / nibble_delay;
> > +     hpd =3D (priv->hpd - 4 * nibble_delay) / nibble_delay;
> > +
> > +     /* Disable PLL */
> > +     ssd2825_write_reg(priv, SSD2825_PLL_CTRL_REG, 0x0000);
> > +     ssd2825_write_reg(priv, SSD2825_LINE_CTRL_REG, 0x0001);
> > +
> > +     /* Set delays */
> > +     dev_dbg(priv->dev, "SSD2825_DELAY_ADJ_REG_1 0x%x\n", (hzd << 8) |=
 hpd);
>
> From v1:
>
> drm_dbg_driver() ?
>

Not sure if drm_dbg_driver is needed, dev_dbg is not enough?

>
> > +     ssd2825_write_reg(priv, SSD2825_DELAY_ADJ_REG_1, (hzd << 8) | hpd=
);
> > +
> > +     /* Set PLL coeficients */
> > +     dev_dbg(priv->dev, "SSD2825_PLL_CONFIGURATION_REG 0x%x\n", pll_co=
nfig);
> > +     ssd2825_write_reg(priv, SSD2825_PLL_CONFIGURATION_REG, pll_config=
);
> > +
> > +     /* Clock Control Register */
> > +     dev_dbg(priv->dev, "SSD2825_CLOCK_CTRL_REG 0x%x\n",
> > +             SSD2828_LP_CLOCK_DIVIDER(lp_div));
> > +     ssd2825_write_reg(priv, SSD2825_CLOCK_CTRL_REG,
> > +                       SSD2828_LP_CLOCK_DIVIDER(lp_div));
> > +
> > +     /* Enable PLL */
> > +     ssd2825_write_reg(priv, SSD2825_PLL_CTRL_REG, 0x0001);
> > +     ssd2825_write_reg(priv, SSD2825_VC_CTRL_REG, 0);
> > +
> > +     return 0;
> > +}
> > +
> > +static void ssd2825_bridge_atomic_pre_enable(struct drm_bridge *bridge=
,
> > +                                          struct drm_bridge_state *old=
_bridge_state)
> > +{
> > +     struct ssd2825_priv *priv =3D bridge_to_ssd2825(bridge);
> > +     int ret;
> > +
> > +     if (priv->enabled)
> > +             return;
> > +
> > +     /* Power Sequence */
> > +     ret =3D clk_prepare_enable(priv->tx_clk);
> > +     if (ret < 0)
> > +             dev_err(priv->dev, "error enabling tx_clk (%d)\n", ret);
> > +
> > +     ret =3D regulator_bulk_enable(ARRAY_SIZE(ssd2825_supplies), priv-=
>supplies);
> > +     if (ret < 0)
> > +             dev_err(priv->dev, "error enabling regulators (%d)\n", re=
t);
> > +
> > +     usleep_range(1000, 2000);
> > +
> > +     ssd2825_hw_reset(priv);
> > +
> > +     priv->enabled =3D true;
> > +}
> > +
> > +static void ssd2825_bridge_atomic_enable(struct drm_bridge *bridge,
> > +                                      struct drm_bridge_state *old_bri=
dge_state)
> > +{
> > +     struct ssd2825_priv *priv =3D bridge_to_ssd2825(bridge);
> > +     struct device *dev =3D priv->dev;
> > +     struct mipi_dsi_device *dsi_dev =3D priv->output.dev;
> > +     struct drm_atomic_state *state =3D old_bridge_state->base.state;
> > +     const struct drm_crtc_state *crtc_state;
> > +     const struct drm_display_mode *mode;
> > +     struct drm_connector *connector;
> > +     struct drm_crtc *crtc;
> > +     u32 input_bus_flags =3D bridge->timings->input_bus_flags;
> > +     u16 flags =3D 0;
> > +     u8 pixel_format;
> > +
> > +     /* Filter unimplemeted modes before RGB control registers configu=
ration */
> > +     if (dsi_dev->mode_flags & MIPI_DSI_CLOCK_NON_CONTINUOUS) {
> > +             dev_warn_once(dev,
> > +                           "Non-continuous mode unimplemented, falling=
 back to continuous\n");
> > +             dsi_dev->mode_flags &=3D ~MIPI_DSI_CLOCK_NON_CONTINUOUS;
> > +     }
> > +
> > +     if (dsi_dev->mode_flags & MIPI_DSI_MODE_VIDEO_BURST) {
> > +             dev_warn_once(dev,
> > +                           "Burst mode unimplemented, falling back to =
simple\n");
> > +             dsi_dev->mode_flags &=3D ~MIPI_DSI_MODE_VIDEO_BURST;
> > +     }
>
>
> But you have implemented it already, several lines below.
>

Fair

> Also such checks should really go to .atomic_check() or
> ssd2825_dsi_host_attach().
>

Fair, but RGB control registers configuration is done in this function
and there is a need to know DSI video mode for correct configuration.

> > +
> > +     /* Perform SW reset */
> > +     ssd2825_write_reg(priv, SSD2825_OPERATION_CTRL_REG, 0x0100);
> > +
> > +     /* Set pixel format */
> > +     switch (dsi_dev->format) {
> > +     case MIPI_DSI_FMT_RGB565:
> > +             pixel_format =3D 0x00;
> > +             break;
> > +     case MIPI_DSI_FMT_RGB666_PACKED:
> > +             pixel_format =3D 0x01;
> > +             break;
> > +     case MIPI_DSI_FMT_RGB666:
> > +             pixel_format =3D 0x02;
> > +             break;
> > +     case MIPI_DSI_FMT_RGB888:
> > +     default:
> > +             pixel_format =3D 0x03;
> > +             break;
> > +     }
> > +
> > +     connector =3D drm_atomic_get_new_connector_for_encoder(state,
> > +                                                          bridge->enco=
der);
> > +     crtc =3D drm_atomic_get_new_connector_state(state, connector)->cr=
tc;
> > +     crtc_state =3D drm_atomic_get_new_crtc_state(state, crtc);
> > +     mode =3D &crtc_state->adjusted_mode;
> > +
> > +     /* Set panel timings */
> > +     ssd2825_write_reg(priv, SSD2825_RGB_INTERFACE_CTRL_REG_1,
> > +                       ((mode->vtotal - mode->vsync_end) << 8) |
> > +                       (mode->htotal - mode->hsync_end));
> > +     ssd2825_write_reg(priv, SSD2825_RGB_INTERFACE_CTRL_REG_2,
> > +                       ((mode->vtotal - mode->vsync_start) << 8) |
> > +                       (mode->htotal - mode->hsync_start));
> > +     ssd2825_write_reg(priv, SSD2825_RGB_INTERFACE_CTRL_REG_3,
> > +                       ((mode->vsync_start - mode->vdisplay) << 8) |
> > +                       (mode->hsync_start - mode->hdisplay));
> > +     ssd2825_write_reg(priv, SSD2825_RGB_INTERFACE_CTRL_REG_4, mode->h=
display);
> > +     ssd2825_write_reg(priv, SSD2825_RGB_INTERFACE_CTRL_REG_5, mode->v=
display);
> > +
> > +     if (mode->flags & DRM_MODE_FLAG_PHSYNC)
> > +             flags |=3D SSD2825_HSYNC_HIGH;
> > +
> > +     if (mode->flags & DRM_MODE_FLAG_PVSYNC)
> > +             flags |=3D SSD2825_VSYNC_HIGH;
> > +
> > +     if (dsi_dev->mode_flags & MIPI_DSI_MODE_VIDEO)
> > +             flags |=3D SSD2825_NON_BURST_EV;
> > +
> > +     if (dsi_dev->mode_flags & MIPI_DSI_MODE_VIDEO_BURST)
> > +             flags |=3D SSD2825_BURST;
> > +
> > +     if (input_bus_flags & DRM_BUS_FLAG_PIXDATA_SAMPLE_POSEDGE)
> > +             flags |=3D SSD2825_PCKL_HIGH;
> > +
> > +     ssd2825_write_reg(priv, SSD2825_RGB_INTERFACE_CTRL_REG_6, flags |=
 pixel_format);
> > +     ssd2825_write_reg(priv, SSD2825_LANE_CONFIGURATION_REG, dsi_dev->=
lanes - 1);
> > +     ssd2825_write_reg(priv, SSD2825_TEST_REG, 0x0004);
> > +
> > +     /* Call PLL configuration */
> > +     ssd2825_setup_pll(priv, mode);
> > +
> > +     usleep_range(10000, 11000);
> > +
> > +     /* Initial DSI configuration register set */
> > +     ssd2825_write_reg(priv, SSD2825_CONFIGURATION_REG,
> > +                       SSD2825_CONF_REG_CKE | SSD2825_CONF_REG_DCS |
> > +                       SSD2825_CONF_REG_ECD | SSD2825_CONF_REG_EOT);
> > +     ssd2825_write_reg(priv, SSD2825_VC_CTRL_REG, 0);
> > +}
> > +
> > +static void ssd2825_bridge_atomic_disable(struct drm_bridge *bridge,
> > +                                       struct drm_bridge_state *old_br=
idge_state)
> > +{
> > +     struct ssd2825_priv *priv =3D bridge_to_ssd2825(bridge);
> > +     int ret;
> > +
> > +     if (!priv->enabled)
> > +             return;
> > +
> > +     msleep(100);
> > +
> > +     /* Exit DSI configuration register set */
> > +     ssd2825_write_reg(priv, SSD2825_CONFIGURATION_REG,
> > +                       SSD2825_CONF_REG_ECD | SSD2825_CONF_REG_EOT);
> > +     ssd2825_write_reg(priv, SSD2825_VC_CTRL_REG, 0);
> > +
> > +     /* HW disable */
> > +     gpiod_set_value_cansleep(priv->reset_gpio, 1);
> > +     usleep_range(5000, 6000);
> > +
> > +     ret =3D regulator_bulk_disable(ARRAY_SIZE(ssd2825_supplies),
> > +                                  priv->supplies);
> > +     if (ret < 0)
> > +             dev_err(priv->dev, "error disabling regulators (%d)\n", r=
et);
> > +
> > +     clk_disable_unprepare(priv->tx_clk);
> > +
> > +     priv->enabled =3D false;
> > +}
> > +
> > +static int ssd2825_bridge_attach(struct drm_bridge *bridge,
> > +                              enum drm_bridge_attach_flags flags)
> > +{
> > +     struct ssd2825_priv *priv =3D bridge_to_ssd2825(bridge);
> > +
> > +     return drm_bridge_attach(bridge->encoder, priv->output.bridge, br=
idge,
> > +                              flags);
> > +}
> > +
> > +static enum drm_mode_status
> > +ssd2825_bridge_mode_valid(struct drm_bridge *bridge,
> > +                       const struct drm_display_info *info,
> > +                       const struct drm_display_mode *mode)
> > +{
> > +     struct videomode vm;
> > +
> > +     drm_display_mode_to_videomode(mode, &vm);
> > +
> > +     /* maximum bit field size is 0xff apart active area which is 0xff=
ff */
> > +     if (vm.hsync_len > 0xff || vm.hback_porch > 0xff ||
> > +         vm.hfront_porch > 0xff || vm.hactive > 0xffff)
>
> Some of these limitations are artificial or don't match the specs:
>
> Maximum pixels per display row  1366    2560
>
> etc.
>

1366 and 2560 still fit into u16 which is maximum size of v/hactive. I
took those bit field  sizes from datasheet.

> > +             return MODE_H_ILLEGAL;
> > +
> > +     if (vm.vsync_len > 0xff || vm.vback_porch > 0xff ||
> > +         vm.vfront_porch > 0xff || vm.vactive > 0xffff)
> > +             return MODE_V_ILLEGAL;
> > +
> > +     return MODE_OK;
> > +}
> > +
> > +static bool ssd2825_mode_fixup(struct drm_bridge *bridge,
> > +                            const struct drm_display_mode *mode,
> > +                            struct drm_display_mode *adjusted_mode)
> > +{
> > +     /* Default to positive sync */
> > +
> > +     if (!(adjusted_mode->flags &
> > +           (DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NHSYNC)))
> > +             adjusted_mode->flags |=3D DRM_MODE_FLAG_PHSYNC;
> > +
> > +     if (!(adjusted_mode->flags &
> > +           (DRM_MODE_FLAG_PVSYNC | DRM_MODE_FLAG_NVSYNC)))
> > +             adjusted_mode->flags |=3D DRM_MODE_FLAG_PVSYNC;
>
> Why? I think that it is an error for the mode not to have one of those
> flags. Do you have an actual usecase?
>

Yes, LG Optimus 4G P880 and Optimus Vu P895 both use this bridge and
require positive v/hsync to work. I am not sure if it is a good idea
to add those flags to panel driver.

> > +
> > +     return true;
> > +}
> > +
> > +static const struct drm_bridge_funcs ssd2825_bridge_funcs =3D {
> > +     .attach =3D ssd2825_bridge_attach,
> > +     .mode_valid =3D ssd2825_bridge_mode_valid,
> > +     .mode_fixup =3D ssd2825_mode_fixup,
> > +
> > +     .atomic_pre_enable =3D ssd2825_bridge_atomic_pre_enable,
> > +     .atomic_enable =3D ssd2825_bridge_atomic_enable,
> > +     .atomic_disable =3D ssd2825_bridge_atomic_disable,
> > +
> > +     .atomic_reset =3D drm_atomic_helper_bridge_reset,
> > +     .atomic_duplicate_state =3D drm_atomic_helper_bridge_duplicate_st=
ate,
> > +     .atomic_destroy_state =3D drm_atomic_helper_bridge_destroy_state,
> > +};
> > +
> > +static const struct drm_bridge_timings default_ssd2825_timings =3D {
> > +     .input_bus_flags =3D DRM_BUS_FLAG_PIXDATA_SAMPLE_POSEDGE
> > +              | DRM_BUS_FLAG_SYNC_SAMPLE_NEGEDGE
> > +              | DRM_BUS_FLAG_DE_HIGH,
> > +};
> > +
> > +static int ssd2825_probe(struct spi_device *spi)
> > +{
> > +     struct ssd2825_priv *priv;
> > +     struct device *dev =3D &spi->dev;
> > +     struct device_node *np =3D dev->of_node;
> > +     int ret;
> > +
> > +     /* Driver supports only 8 bit 3 Wire mode */
> > +     spi->bits_per_word =3D 9;
> > +
> > +     ret =3D spi_setup(spi);
> > +     if (ret)
> > +             return ret;
> > +
> > +     priv =3D devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
> > +     if (!priv)
> > +             return -ENOMEM;
> > +
> > +     spi_set_drvdata(spi, priv);
> > +     priv->spi =3D spi;
> > +
> > +     dev_set_drvdata(dev, priv);
> > +     priv->dev =3D dev;
> > +
> > +     mutex_init(&priv->mlock);
> > +
> > +     priv->tx_clk =3D devm_clk_get_optional(dev, NULL);
> > +     if (IS_ERR(priv->tx_clk))
> > +             return dev_err_probe(dev, PTR_ERR(priv->tx_clk),
> > +                                  "can't retrieve bridge tx_clk\n");
> > +
> > +     priv->reset_gpio =3D devm_gpiod_get_optional(dev, "reset",
> > +                                                GPIOD_OUT_HIGH);
> > +     if (IS_ERR(priv->reset_gpio))
> > +             return dev_err_probe(dev, PTR_ERR(priv->reset_gpio),
> > +                                  "failed to get reset GPIO\n");
> > +
> > +     ret =3D devm_regulator_bulk_get_const(dev, ARRAY_SIZE(ssd2825_sup=
plies),
> > +                                         ssd2825_supplies, &priv->supp=
lies);
> > +     if (ret)
> > +             return dev_err_probe(dev, ret, "failed to get regulators\=
n");
> > +
> > +     ret =3D device_property_read_u32(dev, "solomon,hs-zero-delay-ns",=
 &priv->hzd);
> > +     if (ret)
> > +             /* If no hs-zero-delay is set by device tree, use the def=
ault 133 ns */
> > +             priv->hzd =3D 133;
> > +
> > +     ret =3D device_property_read_u32(dev, "solomon,hs-prep-delay-ns",=
 &priv->hpd);
> > +     if (ret)
> > +             /* If no hs-prep-delay is set by device tree, use the def=
ault 40 ns */
> > +             priv->hzd =3D 40;
> > +
> > +     priv->dsi_host.dev =3D dev;
> > +     priv->dsi_host.ops =3D &ssd2825_dsi_host_ops;
> > +
> > +     priv->bridge.funcs =3D &ssd2825_bridge_funcs;
> > +     priv->bridge.timings =3D &default_ssd2825_timings;
> > +     priv->bridge.of_node =3D np;
> > +
> > +     return mipi_dsi_host_register(&priv->dsi_host);
> > +}
> > +
> > +static void ssd2825_remove(struct spi_device *spi)
> > +{
> > +     struct ssd2825_priv *priv =3D spi_get_drvdata(spi);
> > +
> > +     mipi_dsi_host_unregister(&priv->dsi_host);
> > +}
> > +
> > +static const struct of_device_id ssd2825_of_match[] =3D {
> > +     { .compatible =3D "solomon,ssd2825" },
> > +     { /* sentinel */ }
> > +};
> > +MODULE_DEVICE_TABLE(of, ssd2825_of_match);
> > +
> > +static struct spi_driver ssd2825_driver =3D {
> > +     .driver =3D {
> > +             .name =3D "ssd2825",
> > +             .of_match_table =3D ssd2825_of_match,
> > +     },
> > +     .probe =3D ssd2825_probe,
> > +     .remove =3D ssd2825_remove,
> > +};
> > +module_spi_driver(ssd2825_driver);
> > +
> > +MODULE_AUTHOR("Svyatoslav Ryhel <clamor95@gmail.com>");
> > +MODULE_DESCRIPTION("Solomon SSD2825 RGB to MIPI-DSI bridge driver SPI"=
);
> > +MODULE_LICENSE("GPL");
> > --
> > 2.43.0
> >
>
> --
> With best wishes
> Dmitry

