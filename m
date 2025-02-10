Return-Path: <devicetree+bounces-144694-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E870A2EEA2
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 14:47:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 87CCC18839F0
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 13:47:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B339221DA9;
	Mon, 10 Feb 2025 13:47:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDCFC1DA4E;
	Mon, 10 Feb 2025 13:46:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739195219; cv=none; b=XHdHR4q7bLVQXSobUqgmWzk4VfzK9SnYkfp3aYAQP8vMrb/qmqg57g2257Bd9wKf2qYLHw3OYyUhtrtcXS91gBHasfgB5JB/cVI1A/YjbPa7MSwdSlvfgdW4lkkr+0BLXuy2X2vm+KbtwNHk5mBRKC7qp9hC6KJeAFduxJtcdns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739195219; c=relaxed/simple;
	bh=/ZsdoI4/AqxM6oDnDk1cRfOhl+NSKVOfrtkytg31fbo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=soqRU1k6QwBTm9iw2RTM9dpTXZWeJNCCzzf55/vrLQye95pFw43TKwq5II7gWn6XVMEbgupl0lGezVgQzppAWZkypjnrYOVpFnixr62a5bvqY0EJ/qVXtcehjmbnhEjzrxzI4AkhrHHA4LIk5dsoNNYq3q0iaSTL3cT0oaN/nnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF60EC4CED1;
	Mon, 10 Feb 2025 13:46:54 +0000 (UTC)
Message-ID: <b6ee761c-6941-473b-aa5e-2dadb69767f2@xs4all.nl>
Date: Mon, 10 Feb 2025 14:46:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND PATCH v5 4/4] media: platform: synopsys: Add support for
 HDMI input driver
To: Shreeya Patel <shreeya.patel@collabora.com>, heiko@sntech.de,
 mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 p.zabel@pengutronix.de, jose.abreu@synopsys.com, nelson.costa@synopsys.com,
 shawn.wen@rock-chips.com, nicolas.dufresne@collabora.com,
 hverkuil-cisco@xs4all.nl
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 dmitry.osipenko@collabora.com
References: <20241210193904.883225-1-shreeya.patel@collabora.com>
 <20241210193904.883225-5-shreeya.patel@collabora.com>
Content-Language: en-US, nl
From: Hans Verkuil <hverkuil@xs4all.nl>
Autocrypt: addr=hverkuil@xs4all.nl; keydata=
 xsFNBFQ84W0BEAC7EF1iL4s3tY8cRTVkJT/297h0Hz0ypA+ByVM4CdU9sN6ua/YoFlr9k0K4
 BFUlg7JzJoUuRbKxkYb8mmqOe722j7N3HO8+ofnio5cAP5W0WwDpM0kM84BeHU0aPSTsWiGR
 yw55SOK2JBSq7hueotWLfJLobMWhQii0Zd83hGT9SIt9uHaHjgwmtTH7MSTIiaY6N14nw2Ud
 C6Uykc1va0Wqqc2ov5ihgk/2k2SKa02ookQI3e79laOrbZl5BOXNKR9LguuOZdX4XYR3Zi6/
 BsJ7pVCK9xkiVf8svlEl94IHb+sa1KrlgGv3fn5xgzDw8Z222TfFceDL/2EzUyTdWc4GaPMC
 E/c1B4UOle6ZHg02+I8tZicjzj5+yffv1lB5A1btG+AmoZrgf0X2O1B96fqgHx8w9PIpVERN
 YsmkfxvhfP3MO3oHh8UY1OLKdlKamMneCLk2up1Zlli347KMjHAVjBAiy8qOguKF9k7HOjif
 JCLYTkggrRiEiE1xg4tblBNj8WGyKH+u/hwwwBqCd/Px2HvhAsJQ7DwuuB3vBAp845BJYUU3
 06kRihFqbO0vEt4QmcQDcbWINeZ2zX5TK7QQ91ldHdqJn6MhXulPKcM8tCkdD8YNXXKyKqNl
 UVqXnarz8m2JCbHgjEkUlAJCNd6m3pfESLZwSWsLYL49R5yxIwARAQABzSFIYW5zIFZlcmt1
 aWwgPGh2ZXJrdWlsQHhzNGFsbC5ubD7CwZUEEwEKAD8CGwMGCwkIBwMCBhUIAgkKCwQWAgMB
 Ah4BAheAFiEEBSzee8IVBTtonxvKvS1hSGYUO0wFAmaU3GkFCRf7lXsACgkQvS1hSGYUO0wZ
 cw//cLMiaV+p2rCyzdpDjWon2XD6M646THYvqXLb9eVWicFlVG78kNtHrHyEWKPhN3OdWWjn
 kOzXseVR/nS6vZvqCaT3rwgh3ZMb0GvOQk1/7V8UbcIERy036AjQoZmKo5tEDIv48MSvqxjj
 H6wbKXbCyvnIwpGICLyb0xAwvvpTaJkwZjvGqeo5EL0Z+cQ8fCelfKNO5CFFP3FNd3dH8wU6
 CHRtdZE03iIVEWpgCTjsG2zwsX/CKfPx0EKcrQajW3Tc50Jm0uuRUEKCVphlYORAPtFAF1dj
 Ly8zpN1bEXH+0FDXe/SHhzbvgS4sL0J4KQCCZ/GcbKh/vsDC1VLsGS5C7fKOhAtOkUPWRjF+
 kOEEcTOROMMvSUVokO+gCdb9nA/e3WMgiTwWRumWy5eCEnCpM9+rfI2HzTeACrVgGEDkOTHW
 eaGHEy8nS9a25ejQzsBhi+T7MW53ZTIjklR7dFl/uuK+EJ6DLbDpVbwyYo2oeiwP+sf8/Rgv
 WfJv4wzfUo/JABwrsbfWfycVZwFWBzqq+TaKFkMPm017dkLdg4MzxvvTMP7nKfJxU1bQ2OOr
 xkPk5KDcz+aRYBvTqEXgYZ6OZtnOUFKD+uPlbWf68vuz/1iFbQYnNJkTxwWhiIMN7BULK74d
 Ek89MU7JlbYNSv0v21lRF+uDo0J6zyoTt0ZxSPzOwU0EVDzhbQEQANzLiI6gHkIhBQKeQaYs
 p2SSqF9c++9LOy5x6nbQ4s0X3oTKaMGfBZuiKkkU6NnHCSa0Az5ScRWLaRGu1PzjgcVwzl5O
 sDawR1BtOG/XoPRNB2351PRp++W8TWo2viYYY0uJHKFHML+ku9q0P+NkdTzFGJLP+hn7x0RT
 DMbhKTHO3H2xJz5TXNE9zTJuIfGAz3ShDpijvzYieY330BzZYfpgvCllDVM5E4XgfF4F/N90
 wWKu50fMA01ufwu+99GEwTFVG2az5T9SXd7vfSgRSkzXy7hcnxj4IhOfM6Ts85/BjMeIpeqy
 TDdsuetBgX9DMMWxMWl7BLeiMzMGrfkJ4tvlof0sVjurXibTibZyfyGR2ricg8iTbHyFaAzX
 2uFVoZaPxrp7udDfQ96sfz0hesF9Zi8d7NnNnMYbUmUtaS083L/l2EDKvCIkhSjd48XF+aO8
 VhrCfbXWpGRaLcY/gxi2TXRYG9xCa7PINgz9SyO34sL6TeFPSZn4bPQV5O1j85Dj4jBecB1k
 z2arzwlWWKMZUbR04HTeAuuvYvCKEMnfW3ABzdonh70QdqJbpQGfAF2p4/iCETKWuqefiOYn
 pR8PqoQA1DYv3t7y9DIN5Jw/8Oj5wOeEybw6vTMB0rrnx+JaXvxeHSlFzHiD6il/ChDDkJ9J
 /ejCHUQIl40wLSDRABEBAAHCwXwEGAEKACYCGwwWIQQFLN57whUFO2ifG8q9LWFIZhQ7TAUC
 ZpTcxwUJF/uV2gAKCRC9LWFIZhQ7TMlPD/9ppgrN4Z9gXta9IdS8a+0E7lj/dc0LnF9T6MMq
 aUC+CFffTiOoNDnfXh8sfsqTjAT50TsVpdlH6YyPlbU5FR8bC8wntrJ6ZRWDdHJiCDLqNA/l
 GVtIKP1YW8fA01thMcVUyQCdVUqnByMJiJQDzZYrX+E/YKUTh2RL5Ye0foAGE7SGzfZagI0D
 OZN92w59e1Jg3zBhYXQIjzBbhGIy7usBfvE882GdUbP29bKfTpcOKkJIgO6K+w82D/1d5TON
 SD146+UySmEnjYxHI8kBYaZJ4ubyYrDGgXT3jIBPq8i9iZP3JSeZ/0F9UIlX4KeMSG8ymgCR
 SqL1y9pl9R2ewCepCahEkTT7IieGUzJZz7fGUaxrSyexPE1+qNosfrUIu3yhRA6AIjhwPisl
 aSwDxLI6qWDEQeeWNQaYUSEIFQ5XkZxd/VN8JeMwGIAq17Hlym+JzjBkgkm1LV9LXw9D8MQL
 e8tSeEXX8BZIen6y/y+U2CedzEsMKGjy5WNmufiPOzB3q2JwFQCw8AoNic7soPN9CVCEgd2r
 XS+OUZb8VvEDVRSK5Yf79RveqHvmhAdNOVh70f5CvwR/bfX/Ei2Szxz47KhZXpn1lxmcds6b
 LYjTAZF0anym44vsvOEuQg3rqxj/7Hiz4A3HIkrpTWclV6ru1tuGp/ZJ7aY8bdvztP2KTw==
In-Reply-To: <20241210193904.883225-5-shreeya.patel@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/12/2024 20:39, Shreeya Patel wrote:
> Add initial support for the Synopsys DesignWare HDMI RX
> Controller Driver used by Rockchip RK3588. The driver
> supports:
>  - HDMI 1.4b and 2.0 modes (HDMI 4k@60Hz)
>  - RGB888, YUV422, YUV444 and YCC420 pixel formats
>  - CEC
>  - EDID configuration
> 
> The hardware also has Audio and HDCP capabilities, but these are
> not yet supported by the driver.
> 
> Co-developed-by: Dingxian Wen <shawn.wen@rock-chips.com>
> Signed-off-by: Dingxian Wen <shawn.wen@rock-chips.com>
> Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
> Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
> ---
> 
> Changes in v5 :-
> - Change the MODULE_DESCRIPTION
> - Add VIDEO_SYNOPSYS_HDMIRX as prefix to the default edid config
> - Drop the enabling of default edid in the Kconfig
> - Replace the default EDID with hdmi-4k-300mhz EDID produced
>   by v4l2-ctl tool for better compatibility with various HDMI
>   cables and adapters
> - Rework the write_edid and set_edid functions
> - During format change, retrieve the current pixel format,
>   color depth, and AVI infoframe details instead of only
>   detecting the format
> - Improve the logging mechanism and delays in the
>   hdmirx_wait_signal_lock function
> - Fix the 4K@60 capturing for RGB format
> - Document what hdmirx_check_timing_valid function does
> - Rework the hdmirx_get_detected_timings function
> - Fix the NV16/24 size image value
> - Add the implementation from Benjamin Hoff to expose the
>   ITC type to v4l2
> - Remove all the firmware related code
> 
> Changes in v4 :-
> - Create a separate config option for selecting the EDID
> and enable it by default
> - Improve the comment related to DV timings and move it
> to the side of hdmirx_get_detected_timings
> - Add 100ms delay before pulling the HPD high
> - Do not return the detected timings from VIDIOC_G_DV_TIMINGS
> - Drop the bus info from hdmirx_querycap
> - If *num_planes != 0 then return 0 in hdmirx_queue_setup
> - Set queue->min_queued_buffers to 1
> - Drop q->allow_cache_hints = 0; as it's always 0 by default
> - Add a comment for q->dma_attrs = DMA_ATTR_FORCE_CONTIGUOUS;
> - Drop .read = vb2_fop_read as it's not supported by driver
> - Remove redundant edid_init_data_600M
> - Make HPD low when driver is loaded
> - Add support for reading AVI Infoframe
> - Remove msg_len checks from hdmirx_cec_transmit
> - Add info about the CEC compliance test in the cover letter
> - Add arbitration lost status
> - Validate the physical address inside the EDID
> 
> Changes in v3 :-
> - Use v4l2-common helper functions
> 
> Changes in v2 :-
> - Fix checkpatch --strict warnings
> - Rename resets, vo1-grf and HPD node names as per the DT changes
> 
>  drivers/media/platform/Kconfig                |    1 +
>  drivers/media/platform/Makefile               |    1 +
>  drivers/media/platform/synopsys/Kconfig       |    3 +
>  drivers/media/platform/synopsys/Makefile      |    2 +
>  .../media/platform/synopsys/hdmirx/Kconfig    |   27 +
>  .../media/platform/synopsys/hdmirx/Makefile   |    4 +
>  .../platform/synopsys/hdmirx/snps_hdmirx.c    | 2663 +++++++++++++++++
>  .../platform/synopsys/hdmirx/snps_hdmirx.h    |  394 +++
>  .../synopsys/hdmirx/snps_hdmirx_cec.c         |  283 ++
>  .../synopsys/hdmirx/snps_hdmirx_cec.h         |   44 +
>  10 files changed, 3422 insertions(+)
>  create mode 100644 drivers/media/platform/synopsys/Kconfig
>  create mode 100644 drivers/media/platform/synopsys/Makefile
>  create mode 100644 drivers/media/platform/synopsys/hdmirx/Kconfig
>  create mode 100644 drivers/media/platform/synopsys/hdmirx/Makefile
>  create mode 100644 drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c
>  create mode 100644 drivers/media/platform/synopsys/hdmirx/snps_hdmirx.h
>  create mode 100644 drivers/media/platform/synopsys/hdmirx/snps_hdmirx_cec.c
>  create mode 100644 drivers/media/platform/synopsys/hdmirx/snps_hdmirx_cec.h
> 
> diff --git a/drivers/media/platform/Kconfig b/drivers/media/platform/Kconfig
> index 85d2627776b6..9287faafdce5 100644
> --- a/drivers/media/platform/Kconfig
> +++ b/drivers/media/platform/Kconfig
> @@ -85,6 +85,7 @@ source "drivers/media/platform/rockchip/Kconfig"
>  source "drivers/media/platform/samsung/Kconfig"
>  source "drivers/media/platform/st/Kconfig"
>  source "drivers/media/platform/sunxi/Kconfig"
> +source "drivers/media/platform/synopsys/Kconfig"
>  source "drivers/media/platform/ti/Kconfig"
>  source "drivers/media/platform/verisilicon/Kconfig"
>  source "drivers/media/platform/via/Kconfig"
> diff --git a/drivers/media/platform/Makefile b/drivers/media/platform/Makefile
> index ace4e34483dd..6fd7db0541c7 100644
> --- a/drivers/media/platform/Makefile
> +++ b/drivers/media/platform/Makefile
> @@ -28,6 +28,7 @@ obj-y += rockchip/
>  obj-y += samsung/
>  obj-y += st/
>  obj-y += sunxi/
> +obj-y += synopsys/
>  obj-y += ti/
>  obj-y += verisilicon/
>  obj-y += via/
> diff --git a/drivers/media/platform/synopsys/Kconfig b/drivers/media/platform/synopsys/Kconfig
> new file mode 100644
> index 000000000000..4fd521f78425
> --- /dev/null
> +++ b/drivers/media/platform/synopsys/Kconfig
> @@ -0,0 +1,3 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +
> +source "drivers/media/platform/synopsys/hdmirx/Kconfig"
> diff --git a/drivers/media/platform/synopsys/Makefile b/drivers/media/platform/synopsys/Makefile
> new file mode 100644
> index 000000000000..3b12c574dd67
> --- /dev/null
> +++ b/drivers/media/platform/synopsys/Makefile
> @@ -0,0 +1,2 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +obj-y += hdmirx/
> diff --git a/drivers/media/platform/synopsys/hdmirx/Kconfig b/drivers/media/platform/synopsys/hdmirx/Kconfig
> new file mode 100644
> index 000000000000..3f96f6c97cf0
> --- /dev/null
> +++ b/drivers/media/platform/synopsys/hdmirx/Kconfig
> @@ -0,0 +1,27 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +config VIDEO_SYNOPSYS_HDMIRX
> +	tristate "Synopsys DesignWare HDMI Receiver driver"
> +	depends on VIDEO_DEV
> +	select MEDIA_CONTROLLER
> +	select VIDEO_V4L2_SUBDEV_API
> +	select VIDEOBUF2_DMA_CONTIG
> +	select CEC_CORE
> +	select CEC_NOTIFIER
> +	select HDMI
> +	help
> +	  Support for Synopsys HDMI HDMI RX Controller.
> +	  This driver supports HDMI 2.0 version.
> +
> +	  To compile this driver as a module, choose M here. The module
> +	  will be called synopsys_hdmirx.
> +
> +config VIDEO_SYNOPSYS_HDMIRX_LOAD_DEFAULT_EDID
> +	bool "Load default EDID"
> +	depends on VIDEO_SYNOPSYS_HDMIRX
> +	help
> +	  Preload default EDID (Extended Display Identification Data).
> +	  EDID contains information about the capabilities of the display,
> +	  such as supported resolutions, refresh rates, and audio formats.
> +
> +	  Enabling this option is recommended for a non-production use-cases.
> diff --git a/drivers/media/platform/synopsys/hdmirx/Makefile b/drivers/media/platform/synopsys/hdmirx/Makefile
> new file mode 100644
> index 000000000000..2fa2d9e25300
> --- /dev/null
> +++ b/drivers/media/platform/synopsys/hdmirx/Makefile
> @@ -0,0 +1,4 @@
> +# SPDX-License-Identifier: GPL-2.0
> +synopsys-hdmirx-objs := snps_hdmirx.o snps_hdmirx_cec.o
> +
> +obj-$(CONFIG_VIDEO_SYNOPSYS_HDMIRX) += synopsys-hdmirx.o
> diff --git a/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c b/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c
> new file mode 100644
> index 000000000000..7b530b134c2d
> --- /dev/null
> +++ b/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c
> @@ -0,0 +1,2663 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2024 Collabora, Ltd.
> + * Author: Shreeya Patel <shreeya.patel@collabora.com>
> + *
> + * Copyright (c) 2021 Rockchip Electronics Co. Ltd.
> + * Author: Dingxian Wen <shawn.wen@rock-chips.com>
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/completion.h>
> +#include <linux/delay.h>
> +#include <linux/dma-mapping.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/hdmi.h>
> +#include <linux/interrupt.h>
> +#include <linux/irq.h>
> +#include <linux/mfd/syscon.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_platform.h>
> +#include <linux/of_reserved_mem.h>
> +#include <linux/pinctrl/consumer.h>
> +#include <linux/platform_device.h>
> +#include <linux/property.h>
> +#include <linux/regmap.h>
> +#include <linux/reset.h>
> +#include <linux/v4l2-dv-timings.h>
> +#include <linux/workqueue.h>
> +
> +#include <media/cec.h>
> +#include <media/cec-notifier.h>
> +#include <media/v4l2-common.h>
> +#include <media/v4l2-ctrls.h>
> +#include <media/v4l2-device.h>
> +#include <media/v4l2-dv-timings.h>
> +#include <media/v4l2-event.h>
> +#include <media/v4l2-fh.h>
> +#include <media/v4l2-ioctl.h>
> +#include <media/videobuf2-dma-contig.h>
> +#include <media/videobuf2-v4l2.h>
> +#include <media/v4l2-common.h>
> +
> +#include <sound/hdmi-codec.h>
> +
> +#include "snps_hdmirx.h"
> +#include "snps_hdmirx_cec.h"
> +
> +#define EDID_NUM_BLOCKS_MAX				2
> +#define EDID_BLOCK_SIZE					128
> +#define HDMIRX_PLANE_Y					0
> +#define HDMIRX_PLANE_CBCR				1
> +#define FILTER_FRAME_CNT				6
> +
> +static int debug;
> +module_param(debug, int, 0644);
> +MODULE_PARM_DESC(debug, "debug level (0-3)");
> +
> +enum hdmirx_pix_fmt {
> +	HDMIRX_RGB888 = 0,
> +	HDMIRX_YUV422 = 1,
> +	HDMIRX_YUV444 = 2,
> +	HDMIRX_YUV420 = 3,
> +};
> +
> +enum ddr_store_fmt {
> +	STORE_RGB888 = 0,
> +	STORE_RGBA_ARGB,
> +	STORE_YUV420_8BIT,
> +	STORE_YUV420_10BIT,
> +	STORE_YUV422_8BIT,
> +	STORE_YUV422_10BIT,
> +	STORE_YUV444_8BIT,
> +	STORE_YUV420_16BIT = 8,
> +	STORE_YUV422_16BIT = 9,
> +};
> +
> +enum hdmirx_reg_attr {
> +	HDMIRX_ATTR_RW = 0,
> +	HDMIRX_ATTR_RO = 1,
> +	HDMIRX_ATTR_WO = 2,
> +	HDMIRX_ATTR_RE = 3,
> +};
> +
> +enum {
> +	HDMIRX_RST_A,
> +	HDMIRX_RST_P,
> +	HDMIRX_RST_REF,
> +	HDMIRX_RST_BIU,
> +	HDMIRX_NUM_RST,
> +};
> +
> +static const char * const pix_fmt_str[] = {
> +	"RGB888",
> +	"YUV422",
> +	"YUV444",
> +	"YUV420",
> +};
> +
> +struct hdmirx_buffer {
> +	struct vb2_v4l2_buffer vb;
> +	struct list_head queue;
> +	u32 buff_addr[VIDEO_MAX_PLANES];
> +};
> +
> +struct hdmirx_stream {
> +	struct snps_hdmirx_dev *hdmirx_dev;
> +	struct video_device vdev;
> +	struct vb2_queue buf_queue;
> +	struct list_head buf_head;
> +	struct hdmirx_buffer *curr_buf;
> +	struct hdmirx_buffer *next_buf;
> +	struct v4l2_pix_format_mplane pixm;
> +	const struct v4l2_format_info *out_finfo;
> +	struct mutex vlock; /* to lock resources associated with video buffer and video device */
> +	spinlock_t vbq_lock; /* to lock video buffer queue */
> +	bool stopping;
> +	wait_queue_head_t wq_stopped;
> +	u32 frame_idx;
> +	u32 line_flag_int_cnt;
> +	u32 irq_stat;
> +};
> +
> +struct snps_hdmirx_dev {
> +	struct device *dev;
> +	struct device *codec_dev;
> +	struct hdmirx_stream stream;
> +	struct v4l2_device v4l2_dev;
> +	struct v4l2_ctrl_handler hdl;
> +	struct v4l2_ctrl *detect_tx_5v_ctrl;
> +	struct v4l2_ctrl *rgb_range;
> +	struct v4l2_ctrl *content_type;
> +	struct v4l2_dv_timings timings;
> +	struct gpio_desc *detect_5v_gpio;
> +	struct delayed_work delayed_work_hotplug;
> +	struct delayed_work delayed_work_res_change;
> +	struct cec_notifier *cec_notifier;
> +	struct hdmirx_cec *cec;
> +	struct mutex stream_lock; /* to lock video stream capture */
> +	struct mutex work_lock; /* to lock the critical section of hotplug event */
> +	struct reset_control_bulk_data resets[HDMIRX_NUM_RST];
> +	struct clk_bulk_data *clks;
> +	struct regmap *grf;
> +	struct regmap *vo1_grf;
> +	struct completion cr_write_done;
> +	struct completion timer_base_lock;
> +	struct completion avi_pkt_rcv;
> +	enum hdmirx_pix_fmt pix_fmt;
> +	void __iomem *regs;
> +	int hdmi_irq;
> +	int dma_irq;
> +	int det_irq;
> +	bool hpd_trigger_level_high;
> +	bool tmds_clk_ratio;
> +	u32 num_clks;
> +	u32 edid_blocks_written;
> +	u32 cur_fmt_fourcc;
> +	u32 color_depth;
> +	u8 edid[EDID_BLOCK_SIZE * 2];
> +	hdmi_codec_plugged_cb plugged_cb;
> +	spinlock_t rst_lock; /* to lock register access */
> +};
> +
> +static const struct v4l2_dv_timings cea640x480 = V4L2_DV_BT_CEA_640X480P59_94;
> +
> +static const struct v4l2_dv_timings_cap hdmirx_timings_cap = {
> +	.type = V4L2_DV_BT_656_1120,
> +	.reserved = { 0 },
> +	V4L2_INIT_BT_TIMINGS(640, 4096,			/* min/max width */
> +			     480, 2160,			/* min/max height */
> +			     20000000, 600000000,	/* min/max pixelclock */
> +			     /* standards */
> +			     V4L2_DV_BT_STD_CEA861,
> +			     /* capabilities */
> +			     V4L2_DV_BT_CAP_PROGRESSIVE |
> +			     V4L2_DV_BT_CAP_INTERLACED)
> +};
> +
> +static void hdmirx_writel(struct snps_hdmirx_dev *hdmirx_dev, int reg, u32 val)
> +{
> +	guard(spinlock_irqsave)(&hdmirx_dev->rst_lock);
> +
> +	writel(val, hdmirx_dev->regs + reg);
> +}
> +
> +static u32 hdmirx_readl(struct snps_hdmirx_dev *hdmirx_dev, int reg)
> +{
> +	u32 val;
> +
> +	guard(spinlock_irqsave)(&hdmirx_dev->rst_lock);
> +
> +	val = readl(hdmirx_dev->regs + reg);
> +
> +	return val;
> +}
> +
> +static void hdmirx_reset_dma(struct snps_hdmirx_dev *hdmirx_dev)
> +{
> +	guard(spinlock_irqsave)(&hdmirx_dev->rst_lock);
> +
> +	reset_control_reset(hdmirx_dev->resets[0].rstc);
> +}
> +
> +static void hdmirx_update_bits(struct snps_hdmirx_dev *hdmirx_dev, int reg,
> +			       u32 mask, u32 data)
> +{
> +	u32 val;
> +
> +	guard(spinlock_irqsave)(&hdmirx_dev->rst_lock);
> +
> +	val = readl(hdmirx_dev->regs + reg) & ~mask;
> +	val |= (data & mask);
> +	writel(val, hdmirx_dev->regs + reg);
> +}
> +
> +static int hdmirx_subscribe_event(struct v4l2_fh *fh,
> +				  const struct v4l2_event_subscription *sub)
> +{
> +	switch (sub->type) {
> +	case V4L2_EVENT_SOURCE_CHANGE:
> +		if (fh->vdev->vfl_dir == VFL_DIR_RX)
> +			return v4l2_src_change_event_subscribe(fh, sub);
> +		break;
> +	case V4L2_EVENT_CTRL:
> +		return v4l2_ctrl_subscribe_event(fh, sub);
> +	default:
> +		break;
> +	}
> +
> +	return -EINVAL;
> +}
> +
> +static bool tx_5v_power_present(struct snps_hdmirx_dev *hdmirx_dev)
> +{
> +	const unsigned int detection_threshold = 7;
> +	int val, i, cnt = 0;
> +	bool ret;
> +
> +	for (i = 0; i < 10; i++) {
> +		usleep_range(1000, 1100);
> +		val = gpiod_get_value(hdmirx_dev->detect_5v_gpio);
> +		if (val > 0)
> +			cnt++;
> +		if (cnt >= detection_threshold)
> +			break;
> +	}
> +
> +	ret = (cnt >= detection_threshold) ? true : false;
> +	v4l2_dbg(3, debug, &hdmirx_dev->v4l2_dev, "%s: %d\n", __func__, ret);
> +
> +	return ret;
> +}
> +
> +static bool signal_not_lock(struct snps_hdmirx_dev *hdmirx_dev)
> +{
> +	u32 mu_status, dma_st10, cmu_st;
> +
> +	mu_status = hdmirx_readl(hdmirx_dev, MAINUNIT_STATUS);
> +	dma_st10 = hdmirx_readl(hdmirx_dev, DMA_STATUS10);
> +	cmu_st = hdmirx_readl(hdmirx_dev, CMU_STATUS);
> +
> +	if ((mu_status & TMDSVALID_STABLE_ST) &&
> +	    (dma_st10 & HDMIRX_LOCK) &&
> +	    (cmu_st & TMDSQPCLK_LOCKED_ST))
> +		return false;
> +
> +	return true;
> +}
> +
> +static void hdmirx_get_timings(struct snps_hdmirx_dev *hdmirx_dev,
> +			       struct v4l2_bt_timings *bt)
> +{
> +	struct v4l2_device *v4l2_dev = &hdmirx_dev->v4l2_dev;
> +	u32 hact, vact, htotal, vtotal, fps;
> +	u32 hfp, hs, hbp, vfp, vs, vbp;
> +	u32 val;
> +
> +	val = hdmirx_readl(hdmirx_dev, DMA_STATUS2);
> +	hact = (val >> 16) & 0xffff;
> +	vact = val & 0xffff;
> +
> +	val = hdmirx_readl(hdmirx_dev, DMA_STATUS3);
> +	htotal = (val >> 16) & 0xffff;
> +	vtotal = val & 0xffff;
> +
> +	val = hdmirx_readl(hdmirx_dev, DMA_STATUS4);
> +	hs = (val >> 16) & 0xffff;
> +	vs = val & 0xffff;
> +
> +	val = hdmirx_readl(hdmirx_dev, DMA_STATUS5);
> +	hbp = (val >> 16) & 0xffff;
> +	vbp = val & 0xffff;
> +
> +	if (hdmirx_dev->pix_fmt == HDMIRX_YUV420) {
> +		htotal *= 2;
> +		hbp *= 2;
> +		hs *= 2;
> +	}
> +
> +	hfp = htotal - hact - hs - hbp;
> +	vfp = vtotal - vact - vs - vbp;
> +
> +	fps = (bt->pixelclock + (htotal * vtotal) / 2) / (htotal * vtotal);
> +	bt->width = hact;
> +	bt->height = vact;
> +	bt->hfrontporch = hfp;
> +	bt->hsync = hs;
> +	bt->hbackporch = hbp;
> +	bt->vfrontporch = vfp;
> +	bt->vsync = vs;
> +	bt->vbackporch = vbp;
> +
> +	v4l2_dbg(1, debug, v4l2_dev, "get timings from dma\n");
> +	v4l2_dbg(1, debug, v4l2_dev,
> +		 "act:%ux%u%s, total:%ux%u, fps:%u, pixclk:%llu\n",
> +		 bt->width, bt->height, bt->interlaced ? "i" : "p",
> +		 htotal, vtotal, fps, bt->pixelclock);
> +
> +	v4l2_dbg(2, debug, v4l2_dev,
> +		 "hfp:%u, hact:%u, hs:%u, hbp:%u, vfp:%u, vact:%u, vs:%u, vbp:%u\n",
> +		 bt->hfrontporch, hact, bt->hsync, bt->hbackporch,
> +		 bt->vfrontporch, vact, bt->vsync, bt->vbackporch);
> +
> +	if (bt->interlaced == V4L2_DV_INTERLACED) {
> +		bt->height *= 2;
> +		bt->il_vfrontporch = bt->vfrontporch;
> +		bt->il_vsync = bt->vsync + 1;
> +		bt->il_vbackporch = bt->vbackporch;
> +	}
> +}
> +
> +static bool hdmirx_check_timing_valid(struct v4l2_bt_timings *bt)
> +{
> +	if (bt->width < 100 || bt->width > 5000 ||
> +	    bt->height < 100 || bt->height > 5000)
> +		return false;
> +
> +	if (!bt->hsync || bt->hsync > 200 ||
> +	    !bt->vsync || bt->vsync > 100)
> +		return false;
> +
> +	if (!bt->hbackporch || bt->hbackporch > 2000 ||
> +	    !bt->vbackporch || bt->vbackporch > 2000)
> +		return false;
> +
> +	if (!bt->hfrontporch || bt->hfrontporch > 2000 ||
> +	    !bt->vfrontporch || bt->vfrontporch > 2000)
> +		return false;

I asked before, but are these hardware limitations or just sanity checks?
Please document.

> +
> +	return true;
> +}
> +
> +static void hdmirx_toggle_polarity(struct snps_hdmirx_dev *hdmirx_dev)
> +{
> +	u32 val = hdmirx_readl(hdmirx_dev, DMA_CONFIG6);
> +
> +	if (!(val & (VSYNC_TOGGLE_EN | HSYNC_TOGGLE_EN))) {
> +		hdmirx_update_bits(hdmirx_dev, DMA_CONFIG6,
> +				   VSYNC_TOGGLE_EN | HSYNC_TOGGLE_EN,
> +				   VSYNC_TOGGLE_EN | HSYNC_TOGGLE_EN);
> +		hdmirx_update_bits(hdmirx_dev, VIDEO_CONFIG2,
> +				   VPROC_VSYNC_POL_OVR_VALUE |
> +				   VPROC_VSYNC_POL_OVR_EN |
> +				   VPROC_HSYNC_POL_OVR_VALUE |
> +				   VPROC_HSYNC_POL_OVR_EN,
> +				   VPROC_VSYNC_POL_OVR_EN |
> +				   VPROC_HSYNC_POL_OVR_EN);
> +		return;
> +	}
> +
> +	hdmirx_update_bits(hdmirx_dev, DMA_CONFIG6,
> +			   VSYNC_TOGGLE_EN | HSYNC_TOGGLE_EN, 0);
> +
> +	hdmirx_update_bits(hdmirx_dev, VIDEO_CONFIG2,
> +			   VPROC_VSYNC_POL_OVR_VALUE |
> +			   VPROC_VSYNC_POL_OVR_EN |
> +			   VPROC_HSYNC_POL_OVR_VALUE |
> +			   VPROC_HSYNC_POL_OVR_EN, 0);
> +}
> +
> +/*
> + * When querying DV timings during preview, if the DMA's timing is stable,
> + * we retrieve the timings directly from the DMA. However, if the current
> + * resolution is negative, obtaining the timing from CTRL may require a
> + * change in the sync polarity, potentially leading to DMA errors.
> + */
> +static int hdmirx_get_detected_timings(struct snps_hdmirx_dev *hdmirx_dev,
> +				       struct v4l2_dv_timings *timings)
> +{
> +	struct v4l2_device *v4l2_dev = &hdmirx_dev->v4l2_dev;
> +	struct v4l2_bt_timings *bt = &timings->bt;
> +	u32 val, tmdsqpclk_freq, pix_clk;
> +	u32 field_type, deframer_st;
> +	u64 tmp_data, tmds_clk;
> +	bool is_dvi_mode;
> +	int num_retries = 0;
> +	int ret;
> +
> +	mutex_lock(&hdmirx_dev->work_lock);
> +retry:
> +	memset(timings, 0, sizeof(struct v4l2_dv_timings));
> +	timings->type = V4L2_DV_BT_656_1120;
> +
> +	val = hdmirx_readl(hdmirx_dev, DMA_STATUS11);
> +	field_type = (val & HDMIRX_TYPE_MASK) >> 7;
> +
> +	if (field_type & BIT(0))
> +		bt->interlaced = V4L2_DV_INTERLACED;
> +	else
> +		bt->interlaced = V4L2_DV_PROGRESSIVE;
> +
> +	deframer_st = hdmirx_readl(hdmirx_dev, DEFRAMER_STATUS);
> +	is_dvi_mode = !(deframer_st & OPMODE_STS_MASK);
> +
> +	tmdsqpclk_freq = hdmirx_readl(hdmirx_dev, CMU_TMDSQPCLK_FREQ);
> +	tmds_clk = tmdsqpclk_freq * 4 * 1000;
> +	tmp_data = tmds_clk * 24;
> +	do_div(tmp_data, hdmirx_dev->color_depth);
> +	pix_clk = tmp_data;
> +	bt->pixelclock = pix_clk;
> +
> +	if (hdmirx_dev->pix_fmt == HDMIRX_YUV420)
> +		bt->pixelclock *= 2;
> +
> +	hdmirx_get_timings(hdmirx_dev, bt);
> +
> +	v4l2_dbg(2, debug, v4l2_dev, "tmds_clk:%llu, pix_clk:%d\n", tmds_clk, pix_clk);
> +	v4l2_dbg(1, debug, v4l2_dev, "interlace:%d, fmt:%d, color:%d, mode:%s\n",
> +		 bt->interlaced, hdmirx_dev->pix_fmt,
> +		 hdmirx_dev->color_depth,
> +		 is_dvi_mode ? "dvi" : "hdmi");
> +	v4l2_dbg(2, debug, v4l2_dev, "deframer_st:%#x\n", deframer_st);
> +
> +	/*
> +	 * Timing will be invalid until it's latched by HW or if signal's
> +	 * polarity doesn't match.
> +	 */
> +	if (!hdmirx_check_timing_valid(bt)) {
> +		if (num_retries++ < 20) {
> +			if (num_retries == 10)
> +				hdmirx_toggle_polarity(hdmirx_dev);
> +
> +			usleep_range(10 * 1000, 10 * 1100);
> +			goto retry;
> +		}
> +
> +		ret = -ERANGE;
> +	} else {
> +		ret = 0;
> +	}
> +
> +	mutex_unlock(&hdmirx_dev->work_lock);
> +
> +	return ret;
> +}
> +
> +static bool port_no_link(struct snps_hdmirx_dev *hdmirx_dev)
> +{
> +	return !tx_5v_power_present(hdmirx_dev);
> +}
> +
> +static int hdmirx_query_dv_timings(struct file *file, void *_fh,
> +				   struct v4l2_dv_timings *timings)
> +{
> +	struct hdmirx_stream *stream = video_drvdata(file);
> +	struct snps_hdmirx_dev *hdmirx_dev = stream->hdmirx_dev;
> +	struct v4l2_device *v4l2_dev = &hdmirx_dev->v4l2_dev;
> +	int ret;
> +
> +	if (port_no_link(hdmirx_dev)) {
> +		v4l2_err(v4l2_dev, "%s: port has no link\n", __func__);
> +		return -ENOLINK;
> +	}
> +
> +	if (signal_not_lock(hdmirx_dev)) {
> +		v4l2_err(v4l2_dev, "%s: signal is not locked\n", __func__);
> +		return -ENOLCK;
> +	}
> +
> +	ret = hdmirx_get_detected_timings(hdmirx_dev, timings);
> +	if (ret)
> +		return ret;
> +
> +	if (debug)
> +		v4l2_print_dv_timings(hdmirx_dev->v4l2_dev.name,
> +				      "query_dv_timings: ", timings, false);
> +
> +	if (!v4l2_valid_dv_timings(timings, &hdmirx_timings_cap, NULL, NULL)) {
> +		v4l2_dbg(1, debug, v4l2_dev, "%s: timings out of range\n", __func__);
> +		return -ERANGE;
> +	}
> +
> +	return 0;
> +}
> +
> +static void hdmirx_hpd_ctrl(struct snps_hdmirx_dev *hdmirx_dev, bool en)
> +{
> +	struct v4l2_device *v4l2_dev = &hdmirx_dev->v4l2_dev;
> +
> +	v4l2_dbg(1, debug, v4l2_dev, "%s: %sable, hpd_trigger_level_high:%d\n",
> +		 __func__, en ? "en" : "dis",
> +		 hdmirx_dev->hpd_trigger_level_high);
> +
> +	hdmirx_update_bits(hdmirx_dev, SCDC_CONFIG, HPDLOW, en ? 0 : HPDLOW);
> +	en = hdmirx_dev->hpd_trigger_level_high ? en : !en;
> +	hdmirx_writel(hdmirx_dev, CORE_CONFIG, en);
> +}
> +
> +static void hdmirx_write_edid(struct snps_hdmirx_dev *hdmirx_dev,
> +			      struct v4l2_edid *edid)
> +{
> +	u32 edid_len = edid->blocks * EDID_BLOCK_SIZE;
> +	char data[300];
> +	u32 i;
> +
> +	memset(edid->reserved, 0, sizeof(edid->reserved));
> +
> +	cec_s_phys_addr_from_edid(hdmirx_dev->cec->adap,
> +				  (const struct edid *)edid->edid);
> +
> +	memset(&hdmirx_dev->edid, 0, sizeof(hdmirx_dev->edid));
> +	hdmirx_update_bits(hdmirx_dev, DMA_CONFIG11,
> +			   EDID_READ_EN_MASK |
> +			   EDID_WRITE_EN_MASK |
> +			   EDID_SLAVE_ADDR_MASK,
> +			   EDID_READ_EN(0) |
> +			   EDID_WRITE_EN(1) |
> +			   EDID_SLAVE_ADDR(0x50));
> +	for (i = 0; i < edid_len; i++)
> +		hdmirx_writel(hdmirx_dev, DMA_CONFIG10, edid->edid[i]);
> +
> +	/* read out for debug */
> +	if (debug >= 2) {
> +		hdmirx_update_bits(hdmirx_dev, DMA_CONFIG11,
> +				   EDID_READ_EN_MASK |
> +				   EDID_WRITE_EN_MASK,
> +				   EDID_READ_EN(1) |
> +				   EDID_WRITE_EN(0));
> +		edid_len = edid_len > sizeof(data) ? sizeof(data) : edid_len;
> +		memset(data, 0, sizeof(data));
> +		for (i = 0; i < edid_len; i++)
> +			data[i] = hdmirx_readl(hdmirx_dev, DMA_STATUS14);
> +
> +		print_hex_dump(KERN_INFO, "", DUMP_PREFIX_NONE, 16, 1, data,
> +			       edid_len, false);
> +	}
> +
> +	/*
> +	 * You must set EDID_READ_EN & EDID_WRITE_EN bit to 0,
> +	 * when the read/write edid operation is completed.Otherwise, it
> +	 * will affect the reading and writing of other registers
> +	 */
> +	hdmirx_update_bits(hdmirx_dev, DMA_CONFIG11,
> +			   EDID_READ_EN_MASK | EDID_WRITE_EN_MASK,
> +			   EDID_READ_EN(0) | EDID_WRITE_EN(0));
> +
> +	hdmirx_dev->edid_blocks_written = edid->blocks;
> +	memcpy(&hdmirx_dev->edid, edid->edid, edid->blocks * EDID_BLOCK_SIZE);
> +}
> +
> +/*
> + * Before clearing interrupt, we need to read the interrupt status.
> + */
> +static inline void hdmirx_clear_interrupt(struct snps_hdmirx_dev *hdmirx_dev,
> +					  u32 reg, u32 val)
> +{
> +	/* (interrupt status register) = (interrupt clear register) - 0x8 */
> +	hdmirx_readl(hdmirx_dev, reg - 0x8);
> +	hdmirx_writel(hdmirx_dev, reg, val);
> +}
> +
> +static void hdmirx_interrupts_setup(struct snps_hdmirx_dev *hdmirx_dev, bool en)
> +{
> +	v4l2_dbg(1, debug, &hdmirx_dev->v4l2_dev, "%s: %sable\n",
> +		 __func__, en ? "en" : "dis");
> +
> +	disable_irq(hdmirx_dev->hdmi_irq);
> +
> +	/* Note: In DVI mode, it needs to be written twice to take effect. */
> +	hdmirx_clear_interrupt(hdmirx_dev, MAINUNIT_0_INT_CLEAR, 0xffffffff);
> +	hdmirx_clear_interrupt(hdmirx_dev, MAINUNIT_2_INT_CLEAR, 0xffffffff);
> +	hdmirx_clear_interrupt(hdmirx_dev, MAINUNIT_0_INT_CLEAR, 0xffffffff);
> +	hdmirx_clear_interrupt(hdmirx_dev, MAINUNIT_2_INT_CLEAR, 0xffffffff);
> +	hdmirx_clear_interrupt(hdmirx_dev, AVPUNIT_0_INT_CLEAR, 0xffffffff);
> +
> +	if (en) {
> +		hdmirx_update_bits(hdmirx_dev, MAINUNIT_0_INT_MASK_N,
> +				   TMDSQPCLK_OFF_CHG | TMDSQPCLK_LOCKED_CHG,
> +				   TMDSQPCLK_OFF_CHG | TMDSQPCLK_LOCKED_CHG);
> +		hdmirx_update_bits(hdmirx_dev, MAINUNIT_2_INT_MASK_N,
> +				   TMDSVALID_STABLE_CHG, TMDSVALID_STABLE_CHG);
> +		hdmirx_update_bits(hdmirx_dev, AVPUNIT_0_INT_MASK_N,
> +				   CED_DYN_CNT_CH2_IRQ |
> +				   CED_DYN_CNT_CH1_IRQ |
> +				   CED_DYN_CNT_CH0_IRQ,
> +				   CED_DYN_CNT_CH2_IRQ |
> +				   CED_DYN_CNT_CH1_IRQ |
> +				   CED_DYN_CNT_CH0_IRQ);
> +	} else {
> +		hdmirx_writel(hdmirx_dev, MAINUNIT_0_INT_MASK_N, 0);
> +		hdmirx_writel(hdmirx_dev, MAINUNIT_2_INT_MASK_N, 0);
> +		hdmirx_writel(hdmirx_dev, AVPUNIT_0_INT_MASK_N, 0);
> +	}
> +
> +	enable_irq(hdmirx_dev->hdmi_irq);
> +}
> +
> +static void hdmirx_plugout(struct snps_hdmirx_dev *hdmirx_dev)
> +{
> +	hdmirx_update_bits(hdmirx_dev, SCDC_CONFIG, POWERPROVIDED, 0);
> +	hdmirx_interrupts_setup(hdmirx_dev, false);
> +	hdmirx_hpd_ctrl(hdmirx_dev, false);
> +	hdmirx_update_bits(hdmirx_dev, DMA_CONFIG6, HDMIRX_DMA_EN, 0);
> +	hdmirx_update_bits(hdmirx_dev, DMA_CONFIG4,
> +			   LINE_FLAG_INT_EN |
> +			   HDMIRX_DMA_IDLE_INT |
> +			   HDMIRX_LOCK_DISABLE_INT |
> +			   LAST_FRAME_AXI_UNFINISH_INT_EN |
> +			   FIFO_OVERFLOW_INT_EN |
> +			   FIFO_UNDERFLOW_INT_EN |
> +			   HDMIRX_AXI_ERROR_INT_EN, 0);
> +	hdmirx_reset_dma(hdmirx_dev);
> +	hdmirx_update_bits(hdmirx_dev, PHY_CONFIG, HDMI_DISABLE | PHY_RESET |
> +			   PHY_PDDQ, HDMI_DISABLE);
> +	hdmirx_writel(hdmirx_dev, PHYCREG_CONFIG0, 0x0);
> +	cancel_delayed_work(&hdmirx_dev->delayed_work_res_change);
> +
> +	v4l2_ctrl_s_ctrl(hdmirx_dev->rgb_range, V4L2_DV_RGB_RANGE_AUTO);
> +	v4l2_ctrl_s_ctrl(hdmirx_dev->content_type, V4L2_DV_IT_CONTENT_TYPE_NO_ITC);
> +}
> +
> +static int hdmirx_set_edid(struct file *file, void *fh, struct v4l2_edid *edid)
> +{
> +	struct hdmirx_stream *stream = video_drvdata(file);
> +	struct snps_hdmirx_dev *hdmirx_dev = stream->hdmirx_dev;
> +	u16 phys_addr;
> +	int ret;
> +
> +	if (edid->pad)
> +		return -EINVAL;
> +
> +	if (edid->start_block)
> +		return -EINVAL;
> +
> +	if (edid->blocks > EDID_NUM_BLOCKS_MAX) {
> +		edid->blocks = EDID_NUM_BLOCKS_MAX;
> +		return -E2BIG;
> +	}
> +
> +	if (!edid->blocks) {
> +		cec_phys_addr_invalidate(hdmirx_dev->cec->adap);
> +		hdmirx_dev->edid_blocks_written = 0;

This must pull the HPD low, but that doesn't happen.

> +		return 0;
> +	}
> +
> +	phys_addr = cec_get_edid_phys_addr(edid->edid, edid->blocks * 128, NULL);
> +	ret = v4l2_phys_addr_validate(phys_addr, &phys_addr, NULL);
> +	if (ret)
> +		return ret;
> +
> +	disable_irq(hdmirx_dev->hdmi_irq);
> +	disable_irq(hdmirx_dev->dma_irq);
> +
> +	if (tx_5v_power_present(hdmirx_dev))
> +		hdmirx_plugout(hdmirx_dev);
> +
> +	hdmirx_hpd_ctrl(hdmirx_dev, false);
> +	hdmirx_write_edid(hdmirx_dev, edid);
> +
> +	enable_irq(hdmirx_dev->hdmi_irq);
> +	enable_irq(hdmirx_dev->dma_irq);
> +
> +	queue_delayed_work(system_unbound_wq,
> +			   &hdmirx_dev->delayed_work_hotplug,
> +			   msecs_to_jiffies(110));
> +	return 0;
> +}
> +
> +static int hdmirx_get_edid(struct file *file, void *fh, struct v4l2_edid *edid)
> +{
> +	struct hdmirx_stream *stream = video_drvdata(file);
> +	struct snps_hdmirx_dev *hdmirx_dev = stream->hdmirx_dev;
> +	struct v4l2_device *v4l2_dev = &hdmirx_dev->v4l2_dev;
> +
> +	memset(edid->reserved, 0, sizeof(edid->reserved));
> +
> +	if (edid->pad)
> +		return -EINVAL;
> +
> +	if (!edid->start_block && !edid->blocks) {
> +		edid->blocks = hdmirx_dev->edid_blocks_written;
> +		return 0;
> +	}
> +
> +	if (!hdmirx_dev->edid_blocks_written)
> +		return -ENODATA;
> +
> +	if (edid->start_block >= hdmirx_dev->edid_blocks_written || !edid->blocks)
> +		return -EINVAL;
> +
> +	if (edid->start_block + edid->blocks > hdmirx_dev->edid_blocks_written)
> +		edid->blocks = hdmirx_dev->edid_blocks_written - edid->start_block;
> +
> +	memcpy(edid->edid, &hdmirx_dev->edid, edid->blocks * EDID_BLOCK_SIZE);
> +
> +	v4l2_dbg(1, debug, v4l2_dev, "%s: read EDID:\n", __func__);
> +	if (debug > 0)
> +		print_hex_dump(KERN_INFO, "", DUMP_PREFIX_NONE, 16, 1,
> +			       edid->edid, edid->blocks * EDID_BLOCK_SIZE, false);
> +
> +	return 0;
> +}
> +
> +static int hdmirx_g_parm(struct file *file, void *priv,
> +			 struct v4l2_streamparm *parm)
> +{
> +	struct hdmirx_stream *stream = video_drvdata(file);
> +	struct snps_hdmirx_dev *hdmirx_dev = stream->hdmirx_dev;
> +	struct v4l2_fract fps;
> +
> +	if (parm->type != V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE)
> +		return -EINVAL;
> +
> +	fps = v4l2_calc_timeperframe(&hdmirx_dev->timings);
> +	parm->parm.capture.timeperframe.numerator = fps.numerator;
> +	parm->parm.capture.timeperframe.denominator = fps.denominator;
> +
> +	return 0;
> +}
> +
> +static int hdmirx_dv_timings_cap(struct file *file, void *fh,
> +				 struct v4l2_dv_timings_cap *cap)
> +{
> +	*cap = hdmirx_timings_cap;
> +	return 0;
> +}
> +
> +static int hdmirx_enum_dv_timings(struct file *file, void *_fh,
> +				  struct v4l2_enum_dv_timings *timings)
> +{
> +	return v4l2_enum_dv_timings_cap(timings, &hdmirx_timings_cap, NULL, NULL);
> +}
> +
> +static void hdmirx_scdc_init(struct snps_hdmirx_dev *hdmirx_dev)
> +{
> +	hdmirx_update_bits(hdmirx_dev, I2C_SLAVE_CONFIG1,
> +			   I2C_SDA_OUT_HOLD_VALUE_QST_MASK |
> +			   I2C_SDA_IN_HOLD_VALUE_QST_MASK,
> +			   I2C_SDA_OUT_HOLD_VALUE_QST(0x80) |
> +			   I2C_SDA_IN_HOLD_VALUE_QST(0x15));
> +	hdmirx_update_bits(hdmirx_dev, SCDC_REGBANK_CONFIG0,
> +			   SCDC_SINKVERSION_QST_MASK,
> +			   SCDC_SINKVERSION_QST(1));
> +}
> +
> +static int wait_reg_bit_status(struct snps_hdmirx_dev *hdmirx_dev, u32 reg,
> +			       u32 bit_mask, u32 expect_val, bool is_grf,
> +			       u32 ms)
> +{
> +	struct v4l2_device *v4l2_dev = &hdmirx_dev->v4l2_dev;
> +	u32 i, val;
> +
> +	for (i = 0; i < ms; i++) {
> +		if (is_grf)
> +			regmap_read(hdmirx_dev->grf, reg, &val);
> +		else
> +			val = hdmirx_readl(hdmirx_dev, reg);
> +
> +		if ((val & bit_mask) == expect_val) {
> +			v4l2_dbg(2, debug, v4l2_dev,
> +				 "%s:  i:%d, time: %dms\n", __func__, i, ms);
> +			break;
> +		}
> +		usleep_range(1000, 1010);
> +	}
> +
> +	if (i == ms)
> +		return -1;
> +
> +	return 0;
> +}
> +
> +static int hdmirx_phy_register_write(struct snps_hdmirx_dev *hdmirx_dev,
> +				     u32 phy_reg, u32 val)
> +{
> +	struct device *dev = hdmirx_dev->dev;
> +
> +	reinit_completion(&hdmirx_dev->cr_write_done);
> +	/* clear irq status */
> +	hdmirx_clear_interrupt(hdmirx_dev, MAINUNIT_2_INT_CLEAR, 0xffffffff);
> +	/* en irq */
> +	hdmirx_update_bits(hdmirx_dev, MAINUNIT_2_INT_MASK_N,
> +			   PHYCREG_CR_WRITE_DONE, PHYCREG_CR_WRITE_DONE);
> +	/* write phy reg addr */
> +	hdmirx_writel(hdmirx_dev, PHYCREG_CONFIG1, phy_reg);
> +	/* write phy reg val */
> +	hdmirx_writel(hdmirx_dev, PHYCREG_CONFIG2, val);
> +	/* config write enable */
> +	hdmirx_writel(hdmirx_dev, PHYCREG_CONTROL, PHYCREG_CR_PARA_WRITE_P);
> +
> +	if (!wait_for_completion_timeout(&hdmirx_dev->cr_write_done,
> +					 msecs_to_jiffies(20))) {
> +		dev_err(dev, "%s wait cr write done failed\n", __func__);
> +		return -1;
> +	}
> +
> +	return 0;
> +}
> +
> +static void hdmirx_tmds_clk_ratio_config(struct snps_hdmirx_dev *hdmirx_dev)
> +{
> +	struct v4l2_device *v4l2_dev = &hdmirx_dev->v4l2_dev;
> +	u32 val;
> +
> +	val = hdmirx_readl(hdmirx_dev, SCDC_REGBANK_STATUS1);
> +	v4l2_dbg(3, debug, v4l2_dev, "%s: scdc_regbank_st:%#x\n", __func__, val);
> +	hdmirx_dev->tmds_clk_ratio = (val & SCDC_TMDSBITCLKRATIO) > 0;
> +
> +	if (hdmirx_dev->tmds_clk_ratio) {
> +		v4l2_dbg(3, debug, v4l2_dev, "%s: HDMITX greater than 3.4Gbps\n", __func__);
> +		hdmirx_update_bits(hdmirx_dev, PHY_CONFIG,
> +				   TMDS_CLOCK_RATIO, TMDS_CLOCK_RATIO);
> +	} else {
> +		v4l2_dbg(3, debug, v4l2_dev, "%s: HDMITX less than 3.4Gbps\n", __func__);
> +		hdmirx_update_bits(hdmirx_dev, PHY_CONFIG,
> +				   TMDS_CLOCK_RATIO, 0);
> +	}
> +}
> +
> +static void hdmirx_phy_config(struct snps_hdmirx_dev *hdmirx_dev)
> +{
> +	struct device *dev = hdmirx_dev->dev;
> +
> +	hdmirx_clear_interrupt(hdmirx_dev, SCDC_INT_CLEAR, 0xffffffff);
> +	hdmirx_update_bits(hdmirx_dev, SCDC_INT_MASK_N, SCDCTMDSCCFG_CHG,
> +			   SCDCTMDSCCFG_CHG);
> +	/* cr_para_clk 24M */
> +	hdmirx_update_bits(hdmirx_dev, PHY_CONFIG, REFFREQ_SEL_MASK, REFFREQ_SEL(0));
> +	/* rx data width 40bit valid */
> +	hdmirx_update_bits(hdmirx_dev, PHY_CONFIG, RXDATA_WIDTH, RXDATA_WIDTH);
> +	hdmirx_update_bits(hdmirx_dev, PHY_CONFIG, PHY_RESET, PHY_RESET);
> +	usleep_range(100, 110);
> +	hdmirx_update_bits(hdmirx_dev, PHY_CONFIG, PHY_RESET, 0);
> +	usleep_range(100, 110);
> +	/* select cr para interface */
> +	hdmirx_writel(hdmirx_dev, PHYCREG_CONFIG0, 0x3);
> +
> +	if (wait_reg_bit_status(hdmirx_dev, SYS_GRF_SOC_STATUS1,
> +				HDMIRXPHY_SRAM_INIT_DONE,
> +				HDMIRXPHY_SRAM_INIT_DONE, true, 10))
> +		dev_err(dev, "%s: phy SRAM init failed\n", __func__);
> +
> +	regmap_write(hdmirx_dev->grf, SYS_GRF_SOC_CON1,
> +		     (HDMIRXPHY_SRAM_EXT_LD_DONE << 16) |
> +		     HDMIRXPHY_SRAM_EXT_LD_DONE);
> +	hdmirx_phy_register_write(hdmirx_dev, SUP_DIG_ANA_CREGS_SUP_ANA_NC, 2);
> +	hdmirx_phy_register_write(hdmirx_dev, SUP_DIG_ANA_CREGS_SUP_ANA_NC, 3);
> +	hdmirx_phy_register_write(hdmirx_dev, SUP_DIG_ANA_CREGS_SUP_ANA_NC, 2);
> +	hdmirx_phy_register_write(hdmirx_dev, SUP_DIG_ANA_CREGS_SUP_ANA_NC, 2);
> +	hdmirx_phy_register_write(hdmirx_dev, SUP_DIG_ANA_CREGS_SUP_ANA_NC, 3);
> +	hdmirx_phy_register_write(hdmirx_dev, SUP_DIG_ANA_CREGS_SUP_ANA_NC, 2);
> +	hdmirx_phy_register_write(hdmirx_dev, SUP_DIG_ANA_CREGS_SUP_ANA_NC, 0);
> +	hdmirx_phy_register_write(hdmirx_dev, SUP_DIG_ANA_CREGS_SUP_ANA_NC, 1);
> +	hdmirx_phy_register_write(hdmirx_dev, SUP_DIG_ANA_CREGS_SUP_ANA_NC, 0);
> +	hdmirx_phy_register_write(hdmirx_dev, SUP_DIG_ANA_CREGS_SUP_ANA_NC, 0);
> +
> +	hdmirx_phy_register_write(hdmirx_dev,
> +				  HDMIPCS_DIG_CTRL_PATH_MAIN_FSM_RATE_CALC_HDMI14_CDR_SETTING_3_REG,
> +				  CDR_SETTING_BOUNDARY_3_DEFAULT);
> +	hdmirx_phy_register_write(hdmirx_dev,
> +				  HDMIPCS_DIG_CTRL_PATH_MAIN_FSM_RATE_CALC_HDMI14_CDR_SETTING_4_REG,
> +				  CDR_SETTING_BOUNDARY_4_DEFAULT);
> +	hdmirx_phy_register_write(hdmirx_dev,
> +				  HDMIPCS_DIG_CTRL_PATH_MAIN_FSM_RATE_CALC_HDMI14_CDR_SETTING_5_REG,
> +				  CDR_SETTING_BOUNDARY_5_DEFAULT);
> +	hdmirx_phy_register_write(hdmirx_dev,
> +				  HDMIPCS_DIG_CTRL_PATH_MAIN_FSM_RATE_CALC_HDMI14_CDR_SETTING_6_REG,
> +				  CDR_SETTING_BOUNDARY_6_DEFAULT);
> +	hdmirx_phy_register_write(hdmirx_dev,
> +				  HDMIPCS_DIG_CTRL_PATH_MAIN_FSM_RATE_CALC_HDMI14_CDR_SETTING_7_REG,
> +				  CDR_SETTING_BOUNDARY_7_DEFAULT);
> +
> +	hdmirx_update_bits(hdmirx_dev, PHY_CONFIG, PHY_PDDQ, 0);
> +	if (wait_reg_bit_status(hdmirx_dev, PHY_STATUS, PDDQ_ACK, 0, false, 10))
> +		dev_err(dev, "%s: wait pddq ack failed\n", __func__);
> +
> +	hdmirx_update_bits(hdmirx_dev, PHY_CONFIG, HDMI_DISABLE, 0);
> +	if (wait_reg_bit_status(hdmirx_dev, PHY_STATUS, HDMI_DISABLE_ACK, 0,
> +				false, 50))
> +		dev_err(dev, "%s: wait hdmi disable ack failed\n", __func__);
> +
> +	hdmirx_tmds_clk_ratio_config(hdmirx_dev);
> +}
> +
> +static void hdmirx_controller_init(struct snps_hdmirx_dev *hdmirx_dev)
> +{
> +	const unsigned long iref_clk_freq_hz = 428571429;
> +	struct device *dev = hdmirx_dev->dev;
> +
> +	reinit_completion(&hdmirx_dev->timer_base_lock);
> +	hdmirx_clear_interrupt(hdmirx_dev, MAINUNIT_0_INT_CLEAR, 0xffffffff);
> +	/* en irq */
> +	hdmirx_update_bits(hdmirx_dev, MAINUNIT_0_INT_MASK_N,
> +			   TIMER_BASE_LOCKED_IRQ, TIMER_BASE_LOCKED_IRQ);
> +	/* write irefclk freq */
> +	hdmirx_writel(hdmirx_dev, GLOBAL_TIMER_REF_BASE, iref_clk_freq_hz);
> +
> +	if (!wait_for_completion_timeout(&hdmirx_dev->timer_base_lock,
> +					 msecs_to_jiffies(20)))
> +		dev_err(dev, "%s wait timer base lock failed\n", __func__);
> +
> +	hdmirx_update_bits(hdmirx_dev, CMU_CONFIG0,
> +			   TMDSQPCLK_STABLE_FREQ_MARGIN_MASK |
> +			   AUDCLK_STABLE_FREQ_MARGIN_MASK,
> +			   TMDSQPCLK_STABLE_FREQ_MARGIN(2) |
> +			   AUDCLK_STABLE_FREQ_MARGIN(1));
> +	hdmirx_update_bits(hdmirx_dev, DESCRAND_EN_CONTROL,
> +			   SCRAMB_EN_SEL_QST_MASK, SCRAMB_EN_SEL_QST(1));
> +	hdmirx_update_bits(hdmirx_dev, CED_CONFIG,
> +			   CED_VIDDATACHECKEN_QST |
> +			   CED_DATAISCHECKEN_QST |
> +			   CED_GBCHECKEN_QST |
> +			   CED_CTRLCHECKEN_QST |
> +			   CED_CHLOCKMAXER_QST_MASK,
> +			   CED_VIDDATACHECKEN_QST |
> +			   CED_GBCHECKEN_QST |
> +			   CED_CTRLCHECKEN_QST |
> +			   CED_CHLOCKMAXER_QST(0x10));
> +	hdmirx_update_bits(hdmirx_dev, DEFRAMER_CONFIG0,
> +			   VS_REMAPFILTER_EN_QST | VS_FILTER_ORDER_QST_MASK,
> +			   VS_REMAPFILTER_EN_QST | VS_FILTER_ORDER_QST(0x3));
> +}
> +
> +static void hdmirx_get_colordepth(struct snps_hdmirx_dev *hdmirx_dev)
> +{
> +	struct v4l2_device *v4l2_dev = &hdmirx_dev->v4l2_dev;
> +	u32 val, color_depth_reg;
> +
> +	val = hdmirx_readl(hdmirx_dev, DMA_STATUS11);
> +	color_depth_reg = (val & HDMIRX_COLOR_DEPTH_MASK) >> 3;
> +
> +	switch (color_depth_reg) {
> +	case 0x4:
> +		hdmirx_dev->color_depth = 24;
> +		break;
> +	case 0x5:
> +		hdmirx_dev->color_depth = 30;
> +		break;
> +	case 0x6:
> +		hdmirx_dev->color_depth = 36;
> +		break;
> +	case 0x7:
> +		hdmirx_dev->color_depth = 48;
> +		break;
> +	default:
> +		hdmirx_dev->color_depth = 24;
> +		break;
> +	}
> +
> +	v4l2_dbg(1, debug, v4l2_dev, "%s: color_depth: %d, reg_val:%d\n",
> +		 __func__, hdmirx_dev->color_depth, color_depth_reg);
> +}
> +
> +static void hdmirx_get_pix_fmt(struct snps_hdmirx_dev *hdmirx_dev)
> +{
> +	struct v4l2_device *v4l2_dev = &hdmirx_dev->v4l2_dev;
> +	u32 val;
> +
> +	val = hdmirx_readl(hdmirx_dev, DMA_STATUS11);
> +	hdmirx_dev->pix_fmt = val & HDMIRX_FORMAT_MASK;
> +
> +	switch (hdmirx_dev->pix_fmt) {
> +	case HDMIRX_RGB888:
> +		hdmirx_dev->cur_fmt_fourcc = V4L2_PIX_FMT_BGR24;
> +		break;
> +	case HDMIRX_YUV422:
> +		hdmirx_dev->cur_fmt_fourcc = V4L2_PIX_FMT_NV16;
> +		break;
> +	case HDMIRX_YUV444:
> +		hdmirx_dev->cur_fmt_fourcc = V4L2_PIX_FMT_NV24;
> +		break;
> +	case HDMIRX_YUV420:
> +		hdmirx_dev->cur_fmt_fourcc = V4L2_PIX_FMT_NV12;
> +		break;
> +	default:
> +		v4l2_err(v4l2_dev,
> +			 "%s: err pix_fmt: %d, set RGB888 as default\n",
> +			 __func__, hdmirx_dev->pix_fmt);
> +		hdmirx_dev->pix_fmt = HDMIRX_RGB888;
> +		hdmirx_dev->cur_fmt_fourcc = V4L2_PIX_FMT_BGR24;
> +		break;
> +	}
> +
> +	v4l2_dbg(1, debug, v4l2_dev, "%s: pix_fmt: %s\n", __func__,
> +		 pix_fmt_str[hdmirx_dev->pix_fmt]);
> +}
> +
> +static void hdmirx_get_avi_infoframe(struct snps_hdmirx_dev *hdmirx_dev)
> +{
> +	struct v4l2_device *v4l2_dev = &hdmirx_dev->v4l2_dev;
> +	union hdmi_infoframe frame = {};
> +	int err, i, b, itr = 0;
> +	u8 aviif[3 + 7 * 4];
> +	u32 val;
> +
> +	aviif[itr++] = HDMI_INFOFRAME_TYPE_AVI;
> +	val = hdmirx_readl(hdmirx_dev, PKTDEC_AVIIF_PH2_1);
> +	aviif[itr++] = val & 0xff;
> +	aviif[itr++] = (val >> 8) & 0xff;
> +
> +	for (i = 0; i < 7; i++) {
> +		val = hdmirx_readl(hdmirx_dev, PKTDEC_AVIIF_PB3_0 + 4 * i);
> +
> +		for (b = 0; b < 4; b++)
> +			aviif[itr++] = (val >> (8 * b)) & 0xff;
> +	}
> +
> +	err = hdmi_infoframe_unpack(&frame, aviif, sizeof(aviif));
> +	if (err) {
> +		v4l2_err(v4l2_dev, "failed to unpack AVI infoframe\n");
> +		return;
> +	}
> +
> +	v4l2_ctrl_s_ctrl(hdmirx_dev->rgb_range, frame.avi.quantization_range);
> +
> +	if (frame.avi.itc)
> +		v4l2_ctrl_s_ctrl(hdmirx_dev->content_type,
> +				 frame.avi.content_type);
> +	else
> +		v4l2_ctrl_s_ctrl(hdmirx_dev->content_type,
> +				 V4L2_DV_IT_CONTENT_TYPE_NO_ITC);

InfoFrames must now also be exported to debugfs. See e.g. drivers/media/i2c/tc358743.c
and include/media/v4l2-dv-timings.h (search for V4L2_DEBUGFS_IF_MAX_LEN).

This is a recent change: both drm and v4l2 can now export InfoFrames to debugfs,
and this is handy for debugging issues.

The edid-decode utility (part of v4l-utils) can parse these InfoFrames.

> +}
> +
> +static void hdmirx_format_change(struct snps_hdmirx_dev *hdmirx_dev)
> +{
> +	struct hdmirx_stream *stream = &hdmirx_dev->stream;
> +	struct v4l2_device *v4l2_dev = &hdmirx_dev->v4l2_dev;
> +	static const struct v4l2_event ev_src_chg = {
> +		.type = V4L2_EVENT_SOURCE_CHANGE,
> +		.u.src_change.changes = V4L2_EVENT_SRC_CH_RESOLUTION,
> +	};
> +
> +	hdmirx_get_pix_fmt(hdmirx_dev);
> +	hdmirx_get_colordepth(hdmirx_dev);
> +	hdmirx_get_avi_infoframe(hdmirx_dev);
> +
> +	v4l2_dbg(1, debug, v4l2_dev, "%s: queue res_chg_event\n", __func__);
> +	v4l2_event_queue(&stream->vdev, &ev_src_chg);
> +}
> +
> +static void hdmirx_set_ddr_store_fmt(struct snps_hdmirx_dev *hdmirx_dev)
> +{
> +	struct v4l2_device *v4l2_dev = &hdmirx_dev->v4l2_dev;
> +	enum ddr_store_fmt store_fmt;
> +	u32 dma_cfg1;
> +
> +	switch (hdmirx_dev->pix_fmt) {
> +	case HDMIRX_RGB888:
> +		store_fmt = STORE_RGB888;
> +		break;
> +	case HDMIRX_YUV444:
> +		store_fmt = STORE_YUV444_8BIT;
> +		break;
> +	case HDMIRX_YUV422:
> +		store_fmt = STORE_YUV422_8BIT;
> +		break;
> +	case HDMIRX_YUV420:
> +		store_fmt = STORE_YUV420_8BIT;
> +		break;
> +	default:
> +		store_fmt = STORE_RGB888;
> +		break;
> +	}
> +
> +	hdmirx_update_bits(hdmirx_dev, DMA_CONFIG1,
> +			   DDR_STORE_FORMAT_MASK, DDR_STORE_FORMAT(store_fmt));
> +	dma_cfg1 = hdmirx_readl(hdmirx_dev, DMA_CONFIG1);
> +	v4l2_dbg(1, debug, v4l2_dev, "%s: pix_fmt: %s, DMA_CONFIG1:%#x\n",
> +		 __func__, pix_fmt_str[hdmirx_dev->pix_fmt], dma_cfg1);
> +}
> +
> +static void hdmirx_dma_config(struct snps_hdmirx_dev *hdmirx_dev)
> +{
> +	hdmirx_set_ddr_store_fmt(hdmirx_dev);
> +
> +	/* Note: uv_swap, rb can not swap, doc err */
> +	if (hdmirx_dev->cur_fmt_fourcc != V4L2_PIX_FMT_NV16)
> +		hdmirx_update_bits(hdmirx_dev, DMA_CONFIG6, RB_SWAP_EN, RB_SWAP_EN);
> +	else
> +		hdmirx_update_bits(hdmirx_dev, DMA_CONFIG6, RB_SWAP_EN, 0);
> +
> +	hdmirx_update_bits(hdmirx_dev, DMA_CONFIG7,
> +			   LOCK_FRAME_NUM_MASK,
> +			   LOCK_FRAME_NUM(2));
> +	hdmirx_update_bits(hdmirx_dev, DMA_CONFIG1,
> +			   UV_WID_MASK | Y_WID_MASK | ABANDON_EN,
> +			   UV_WID(1) | Y_WID(2) | ABANDON_EN);
> +}
> +
> +static void hdmirx_submodule_init(struct snps_hdmirx_dev *hdmirx_dev)
> +{
> +	/* Note: if not config HDCP2_CONFIG, there will be some errors; */
> +	hdmirx_update_bits(hdmirx_dev, HDCP2_CONFIG,
> +			   HDCP2_SWITCH_OVR_VALUE |
> +			   HDCP2_SWITCH_OVR_EN,
> +			   HDCP2_SWITCH_OVR_EN);
> +	hdmirx_scdc_init(hdmirx_dev);
> +	hdmirx_controller_init(hdmirx_dev);
> +}
> +
> +static int hdmirx_enum_input(struct file *file, void *priv,
> +			     struct v4l2_input *input)
> +{
> +	if (input->index > 0)
> +		return -EINVAL;
> +
> +	input->type = V4L2_INPUT_TYPE_CAMERA;
> +	input->std = 0;
> +	strscpy(input->name, "HDMI IN", sizeof(input->name));
> +	input->capabilities = V4L2_IN_CAP_DV_TIMINGS;
> +
> +	return 0;
> +}
> +
> +static int hdmirx_get_input(struct file *file, void *priv, unsigned int *i)
> +{
> +	*i = 0;
> +	return 0;
> +}
> +
> +static int hdmirx_set_input(struct file *file, void *priv, unsigned int i)
> +{
> +	if (i)
> +		return -EINVAL;
> +	return 0;
> +}
> +
> +static void hdmirx_set_fmt(struct hdmirx_stream *stream,
> +			   struct v4l2_pix_format_mplane *pixm, bool try)
> +{
> +	struct snps_hdmirx_dev *hdmirx_dev = stream->hdmirx_dev;
> +	struct v4l2_device *v4l2_dev = &hdmirx_dev->v4l2_dev;
> +	struct v4l2_bt_timings *bt = &hdmirx_dev->timings.bt;
> +	const struct v4l2_format_info *finfo;
> +	unsigned int imagesize = 0;
> +	int i;
> +
> +	memset(&pixm->plane_fmt[0], 0, sizeof(struct v4l2_plane_pix_format));
> +	finfo = v4l2_format_info(pixm->pixelformat);
> +	if (!finfo) {
> +		finfo = v4l2_format_info(V4L2_PIX_FMT_BGR24);
> +		v4l2_dbg(1, debug, v4l2_dev,
> +			 "%s: set_fmt:%#x not supported, use def_fmt:%x\n",
> +			 __func__, pixm->pixelformat, finfo->format);
> +	}
> +
> +	if (!bt->width || !bt->height)
> +		v4l2_dbg(1, debug, v4l2_dev, "%s: invalid resolution:%#xx%#x\n",
> +			 __func__, bt->width, bt->height);
> +
> +	pixm->pixelformat = finfo->format;
> +	pixm->width = bt->width;
> +	pixm->height = bt->height;
> +	pixm->num_planes = finfo->mem_planes;
> +	pixm->quantization = V4L2_QUANTIZATION_DEFAULT;
> +	pixm->colorspace = V4L2_COLORSPACE_SRGB;
> +	pixm->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
> +
> +	if (bt->interlaced == V4L2_DV_INTERLACED)
> +		pixm->field = V4L2_FIELD_INTERLACED_TB;
> +	else
> +		pixm->field = V4L2_FIELD_NONE;
> +
> +	memset(pixm->reserved, 0, sizeof(pixm->reserved));
> +
> +	v4l2_fill_pixfmt_mp(pixm, finfo->format, pixm->width, pixm->height);
> +
> +	for (i = 0; i < finfo->comp_planes; i++) {
> +		struct v4l2_plane_pix_format *plane_fmt;
> +		int width, height, bpl, size, bpp = 0;
> +		const unsigned int hw_align = 64;
> +
> +		if (!i) {
> +			width = pixm->width;
> +			height = pixm->height;
> +		} else {
> +			width = pixm->width / finfo->hdiv;
> +			height = pixm->height / finfo->vdiv;
> +		}
> +
> +		switch (finfo->format) {
> +		case V4L2_PIX_FMT_NV24:
> +		case V4L2_PIX_FMT_NV16:
> +		case V4L2_PIX_FMT_NV12:
> +		case V4L2_PIX_FMT_BGR24:
> +			bpp = finfo->bpp[i];
> +			break;
> +		default:
> +			v4l2_dbg(1, debug, v4l2_dev,
> +				 "fourcc: %#x is not supported\n",
> +				 finfo->format);
> +			break;
> +		}
> +
> +		bpl = ALIGN(width * bpp, hw_align);
> +		size = bpl * height;
> +		imagesize += size;
> +
> +		if (finfo->mem_planes > i) {
> +			/* Set bpl and size for each mplane */
> +			plane_fmt = pixm->plane_fmt + i;
> +			plane_fmt->bytesperline = bpl;
> +			plane_fmt->sizeimage = size;
> +		}
> +
> +		v4l2_dbg(1, debug, v4l2_dev,
> +			 "C-Plane %i size: %d, Total imagesize: %d\n",
> +			 i, size, imagesize);
> +	}
> +
> +	/* Convert to non-MPLANE format as we want to unify non-MPLANE and MPLANE */
> +	if (finfo->mem_planes == 1)
> +		pixm->plane_fmt[0].sizeimage = imagesize;
> +
> +	if (!try) {
> +		stream->out_finfo = finfo;
> +		stream->pixm = *pixm;
> +		v4l2_dbg(1, debug, v4l2_dev,
> +			 "%s: req(%d, %d), out(%d, %d), fmt:%#x\n", __func__,
> +			 pixm->width, pixm->height, stream->pixm.width,
> +			 stream->pixm.height, finfo->format);
> +	}
> +}
> +
> +static int hdmirx_enum_fmt_vid_cap_mplane(struct file *file, void *priv,
> +					  struct v4l2_fmtdesc *f)
> +{
> +	struct hdmirx_stream *stream = video_drvdata(file);
> +	struct snps_hdmirx_dev *hdmirx_dev = stream->hdmirx_dev;
> +
> +	if (f->index >= 1)
> +		return -EINVAL;
> +
> +	f->pixelformat = hdmirx_dev->cur_fmt_fourcc;
> +
> +	return 0;
> +}
> +
> +static int hdmirx_s_fmt_vid_cap_mplane(struct file *file,
> +				       void *priv, struct v4l2_format *f)
> +{
> +	struct hdmirx_stream *stream = video_drvdata(file);
> +	struct snps_hdmirx_dev *hdmirx_dev = stream->hdmirx_dev;
> +	struct v4l2_device *v4l2_dev = &hdmirx_dev->v4l2_dev;
> +
> +	if (vb2_is_busy(&stream->buf_queue)) {
> +		v4l2_err(v4l2_dev, "%s: queue busy\n", __func__);
> +		return -EBUSY;
> +	}
> +
> +	hdmirx_set_fmt(stream, &f->fmt.pix_mp, false);
> +
> +	return 0;
> +}
> +
> +static int hdmirx_g_fmt_vid_cap_mplane(struct file *file, void *fh,
> +				       struct v4l2_format *f)
> +{
> +	struct hdmirx_stream *stream = video_drvdata(file);
> +	struct snps_hdmirx_dev *hdmirx_dev = stream->hdmirx_dev;
> +	struct v4l2_pix_format_mplane pixm = {};
> +
> +	pixm.pixelformat = hdmirx_dev->cur_fmt_fourcc;
> +	hdmirx_set_fmt(stream, &pixm, true);
> +	f->fmt.pix_mp = pixm;
> +
> +	return 0;
> +}
> +
> +static int hdmirx_g_dv_timings(struct file *file, void *_fh,
> +			       struct v4l2_dv_timings *timings)
> +{
> +	struct hdmirx_stream *stream = video_drvdata(file);
> +	struct snps_hdmirx_dev *hdmirx_dev = stream->hdmirx_dev;
> +	struct v4l2_device *v4l2_dev = &hdmirx_dev->v4l2_dev;
> +	u32 dma_cfg1;
> +
> +	*timings = hdmirx_dev->timings;
> +	dma_cfg1 = hdmirx_readl(hdmirx_dev, DMA_CONFIG1);
> +	v4l2_dbg(1, debug, v4l2_dev, "%s: pix_fmt: %s, DMA_CONFIG1:%#x\n",
> +		 __func__, pix_fmt_str[hdmirx_dev->pix_fmt], dma_cfg1);
> +
> +	return 0;
> +}
> +
> +static int hdmirx_s_dv_timings(struct file *file, void *_fh,
> +			       struct v4l2_dv_timings *timings)
> +{
> +	struct hdmirx_stream *stream = video_drvdata(file);
> +	struct snps_hdmirx_dev *hdmirx_dev = stream->hdmirx_dev;
> +	struct v4l2_device *v4l2_dev = &hdmirx_dev->v4l2_dev;
> +
> +	if (!timings)
> +		return -EINVAL;
> +
> +	if (debug)
> +		v4l2_print_dv_timings(hdmirx_dev->v4l2_dev.name,
> +				      "s_dv_timings: ", timings, false);
> +
> +	if (!v4l2_valid_dv_timings(timings, &hdmirx_timings_cap, NULL, NULL)) {
> +		v4l2_dbg(1, debug, v4l2_dev,
> +			 "%s: timings out of range\n", __func__);
> +		return -ERANGE;
> +	}
> +
> +	/* Check if the timings are part of the CEA-861 timings. */
> +	v4l2_find_dv_timings_cap(timings, &hdmirx_timings_cap, 0, NULL, NULL);
> +
> +	if (v4l2_match_dv_timings(&hdmirx_dev->timings, timings, 0, false)) {
> +		v4l2_dbg(1, debug, v4l2_dev, "%s: no change\n", __func__);
> +		return 0;
> +	}
> +
> +	/*
> +	 * Changing the timings implies a format change, which is not allowed
> +	 * while buffers for use with streaming have already been allocated.
> +	 */
> +	if (vb2_is_busy(&stream->buf_queue))
> +		return -EBUSY;
> +
> +	hdmirx_dev->timings = *timings;
> +	/* Update the internal format */
> +	hdmirx_set_fmt(stream, &stream->pixm, false);
> +
> +	return 0;
> +}
> +
> +static int hdmirx_querycap(struct file *file, void *priv,
> +			   struct v4l2_capability *cap)
> +{
> +	struct hdmirx_stream *stream = video_drvdata(file);
> +	struct device *dev = stream->hdmirx_dev->dev;
> +
> +	strscpy(cap->driver, dev->driver->name, sizeof(cap->driver));
> +	strscpy(cap->card, dev->driver->name, sizeof(cap->card));
> +
> +	return 0;
> +}
> +
> +static int hdmirx_queue_setup(struct vb2_queue *queue,
> +			      unsigned int *num_buffers,
> +			      unsigned int *num_planes,
> +			      unsigned int sizes[],
> +			      struct device *alloc_ctxs[])
> +{
> +	struct hdmirx_stream *stream = vb2_get_drv_priv(queue);
> +	struct snps_hdmirx_dev *hdmirx_dev = stream->hdmirx_dev;
> +	struct v4l2_device *v4l2_dev = &hdmirx_dev->v4l2_dev;
> +	const struct v4l2_pix_format_mplane *pixm = NULL;
> +	const struct v4l2_format_info *out_finfo;
> +	u32 i, height;
> +
> +	pixm = &stream->pixm;
> +	out_finfo = stream->out_finfo;
> +
> +	if (!out_finfo) {
> +		v4l2_err(v4l2_dev, "%s: out_fmt not set\n", __func__);
> +		return -EINVAL;
> +	}
> +
> +	if (*num_planes) {
> +		if (*num_planes != pixm->num_planes)
> +			return -EINVAL;
> +
> +		for (i = 0; i < *num_planes; i++)
> +			if (sizes[i] < pixm->plane_fmt[i].sizeimage)
> +				return -EINVAL;
> +		return 0;
> +	}
> +
> +	*num_planes = out_finfo->mem_planes;
> +	height = pixm->height;
> +
> +	for (i = 0; i < out_finfo->mem_planes; i++)
> +		sizes[i] = pixm->plane_fmt[i].sizeimage;
> +
> +	v4l2_dbg(1, debug, v4l2_dev, "%s: count %d, size %d\n",
> +		 v4l2_type_names[queue->type], *num_buffers, sizes[0]);
> +
> +	return 0;
> +}
> +
> +/*
> + * The vb2_buffer are stored in hdmirx_buffer, in order to unify
> + * mplane buffer and none-mplane buffer.
> + */
> +static void hdmirx_buf_queue(struct vb2_buffer *vb)
> +{
> +	const struct v4l2_pix_format_mplane *pixm;
> +	const struct v4l2_format_info *out_finfo;
> +	struct hdmirx_buffer *hdmirx_buf;
> +	struct vb2_v4l2_buffer *vbuf;
> +	struct hdmirx_stream *stream;
> +	struct vb2_queue *queue;
> +	unsigned long flags;
> +	int i;
> +
> +	vbuf = to_vb2_v4l2_buffer(vb);
> +	hdmirx_buf = container_of(vbuf, struct hdmirx_buffer, vb);
> +	queue = vb->vb2_queue;
> +	stream = vb2_get_drv_priv(queue);
> +	pixm = &stream->pixm;
> +	out_finfo = stream->out_finfo;
> +
> +	memset(hdmirx_buf->buff_addr, 0, sizeof(hdmirx_buf->buff_addr));
> +
> +	/*
> +	 * If mplanes > 1, every c-plane has its own m-plane,
> +	 * otherwise, multiple c-planes are in the same m-plane
> +	 */
> +	for (i = 0; i < out_finfo->mem_planes; i++)
> +		hdmirx_buf->buff_addr[i] = vb2_dma_contig_plane_dma_addr(vb, i);
> +
> +	if (out_finfo->mem_planes == 1) {
> +		if (out_finfo->comp_planes == 1) {
> +			hdmirx_buf->buff_addr[HDMIRX_PLANE_CBCR] =
> +				hdmirx_buf->buff_addr[HDMIRX_PLANE_Y];
> +		} else {
> +			for (i = 0; i < out_finfo->comp_planes - 1; i++)
> +				hdmirx_buf->buff_addr[i + 1] =
> +					hdmirx_buf->buff_addr[i] +
> +					pixm->plane_fmt[i].bytesperline *
> +					pixm->height;
> +		}
> +	}
> +
> +	spin_lock_irqsave(&stream->vbq_lock, flags);
> +	list_add_tail(&hdmirx_buf->queue, &stream->buf_head);
> +	spin_unlock_irqrestore(&stream->vbq_lock, flags);
> +}
> +
> +static void return_all_buffers(struct hdmirx_stream *stream,
> +			       enum vb2_buffer_state state)
> +{
> +	struct hdmirx_buffer *buf, *tmp;
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&stream->vbq_lock, flags);
> +	if (stream->curr_buf)
> +		list_add_tail(&stream->curr_buf->queue, &stream->buf_head);
> +	if (stream->next_buf && stream->next_buf != stream->curr_buf)
> +		list_add_tail(&stream->next_buf->queue, &stream->buf_head);
> +	stream->curr_buf = NULL;
> +	stream->next_buf = NULL;
> +
> +	list_for_each_entry_safe(buf, tmp, &stream->buf_head, queue) {
> +		list_del(&buf->queue);
> +		vb2_buffer_done(&buf->vb.vb2_buf, state);
> +	}
> +	spin_unlock_irqrestore(&stream->vbq_lock, flags);
> +}
> +
> +static void hdmirx_stop_streaming(struct vb2_queue *queue)
> +{
> +	struct hdmirx_stream *stream = vb2_get_drv_priv(queue);
> +	struct snps_hdmirx_dev *hdmirx_dev = stream->hdmirx_dev;
> +	struct v4l2_device *v4l2_dev = &hdmirx_dev->v4l2_dev;
> +	int ret;
> +
> +	v4l2_dbg(1, debug, v4l2_dev, "stream start stopping\n");
> +	mutex_lock(&hdmirx_dev->stream_lock);
> +	WRITE_ONCE(stream->stopping, true);
> +
> +	/* wait last irq to return the buffer */
> +	ret = wait_event_timeout(stream->wq_stopped, !stream->stopping,
> +				 msecs_to_jiffies(500));
> +	if (!ret)
> +		v4l2_dbg(1, debug, v4l2_dev, "%s: timeout waiting last irq\n",
> +			 __func__);
> +
> +	hdmirx_update_bits(hdmirx_dev, DMA_CONFIG6, HDMIRX_DMA_EN, 0);
> +	return_all_buffers(stream, VB2_BUF_STATE_ERROR);
> +	mutex_unlock(&hdmirx_dev->stream_lock);
> +	v4l2_dbg(1, debug, v4l2_dev, "stream stopping finished\n");
> +}
> +
> +static int hdmirx_start_streaming(struct vb2_queue *queue, unsigned int count)
> +{
> +	struct hdmirx_stream *stream = vb2_get_drv_priv(queue);
> +	struct snps_hdmirx_dev *hdmirx_dev = stream->hdmirx_dev;
> +	struct v4l2_device *v4l2_dev = &hdmirx_dev->v4l2_dev;
> +	struct v4l2_dv_timings timings = hdmirx_dev->timings;
> +	struct v4l2_bt_timings *bt = &timings.bt;
> +	unsigned long lock_flags = 0;
> +	int line_flag;
> +
> +	mutex_lock(&hdmirx_dev->stream_lock);
> +	stream->frame_idx = 0;
> +	stream->line_flag_int_cnt = 0;
> +	stream->curr_buf = NULL;
> +	stream->next_buf = NULL;
> +	stream->irq_stat = 0;
> +
> +	WRITE_ONCE(stream->stopping, false);
> +
> +	spin_lock_irqsave(&stream->vbq_lock, lock_flags);
> +	if (!stream->curr_buf) {
> +		if (!list_empty(&stream->buf_head)) {
> +			stream->curr_buf = list_first_entry(&stream->buf_head,
> +							    struct hdmirx_buffer,
> +							    queue);
> +			list_del(&stream->curr_buf->queue);
> +		} else {
> +			stream->curr_buf = NULL;
> +		}
> +	}
> +	spin_unlock_irqrestore(&stream->vbq_lock, lock_flags);
> +
> +	if (!stream->curr_buf) {
> +		mutex_unlock(&hdmirx_dev->stream_lock);
> +		return -ENOMEM;
> +	}
> +
> +	v4l2_dbg(2, debug, v4l2_dev,
> +		 "%s: start_stream cur_buf y_addr:%#x, uv_addr:%#x\n",
> +		 __func__, stream->curr_buf->buff_addr[HDMIRX_PLANE_Y],
> +		 stream->curr_buf->buff_addr[HDMIRX_PLANE_CBCR]);
> +	hdmirx_writel(hdmirx_dev, DMA_CONFIG2,
> +		      stream->curr_buf->buff_addr[HDMIRX_PLANE_Y]);
> +	hdmirx_writel(hdmirx_dev, DMA_CONFIG3,
> +		      stream->curr_buf->buff_addr[HDMIRX_PLANE_CBCR]);
> +
> +	if (bt->height) {
> +		if (bt->interlaced == V4L2_DV_INTERLACED)
> +			line_flag = bt->height / 4;
> +		else
> +			line_flag = bt->height / 2;
> +		hdmirx_update_bits(hdmirx_dev, DMA_CONFIG7,
> +				   LINE_FLAG_NUM_MASK,
> +				   LINE_FLAG_NUM(line_flag));
> +	} else {
> +		v4l2_err(v4l2_dev, "height err: %d\n", bt->height);
> +	}
> +
> +	hdmirx_writel(hdmirx_dev, DMA_CONFIG5, 0xffffffff);
> +	hdmirx_writel(hdmirx_dev, CED_DYN_CONTROL, 0x1);
> +	hdmirx_update_bits(hdmirx_dev, DMA_CONFIG4,
> +			   LINE_FLAG_INT_EN |
> +			   HDMIRX_DMA_IDLE_INT |
> +			   HDMIRX_LOCK_DISABLE_INT |
> +			   LAST_FRAME_AXI_UNFINISH_INT_EN |
> +			   FIFO_OVERFLOW_INT_EN |
> +			   FIFO_UNDERFLOW_INT_EN |
> +			   HDMIRX_AXI_ERROR_INT_EN,
> +			   LINE_FLAG_INT_EN |
> +			   HDMIRX_DMA_IDLE_INT |
> +			   HDMIRX_LOCK_DISABLE_INT |
> +			   LAST_FRAME_AXI_UNFINISH_INT_EN |
> +			   FIFO_OVERFLOW_INT_EN |
> +			   FIFO_UNDERFLOW_INT_EN |
> +			   HDMIRX_AXI_ERROR_INT_EN);
> +	hdmirx_update_bits(hdmirx_dev, DMA_CONFIG6, HDMIRX_DMA_EN, HDMIRX_DMA_EN);
> +	v4l2_dbg(1, debug, v4l2_dev, "%s: enable dma", __func__);
> +	mutex_unlock(&hdmirx_dev->stream_lock);
> +
> +	return 0;
> +}
> +
> +/* vb2 queue */
> +static const struct vb2_ops hdmirx_vb2_ops = {
> +	.queue_setup = hdmirx_queue_setup,
> +	.buf_queue = hdmirx_buf_queue,
> +	.wait_prepare = vb2_ops_wait_prepare,
> +	.wait_finish = vb2_ops_wait_finish,
> +	.stop_streaming = hdmirx_stop_streaming,
> +	.start_streaming = hdmirx_start_streaming,
> +};
> +
> +static int hdmirx_init_vb2_queue(struct vb2_queue *q,
> +				 struct hdmirx_stream *stream,
> +				 enum v4l2_buf_type buf_type)
> +{
> +	struct snps_hdmirx_dev *hdmirx_dev = stream->hdmirx_dev;
> +
> +	q->type = buf_type;
> +	q->io_modes = VB2_MMAP | VB2_DMABUF;
> +	q->drv_priv = stream;
> +	q->ops = &hdmirx_vb2_ops;
> +	q->mem_ops = &vb2_dma_contig_memops;
> +	q->buf_struct_size = sizeof(struct hdmirx_buffer);
> +	q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
> +	q->lock = &stream->vlock;
> +	q->dev = hdmirx_dev->dev;
> +	q->min_queued_buffers = 1;
> +
> +	return vb2_queue_init(q);
> +}
> +
> +/* video device */
> +static const struct v4l2_ioctl_ops hdmirx_v4l2_ioctl_ops = {
> +	.vidioc_querycap = hdmirx_querycap,
> +	.vidioc_try_fmt_vid_cap_mplane = hdmirx_g_fmt_vid_cap_mplane,
> +	.vidioc_s_fmt_vid_cap_mplane = hdmirx_s_fmt_vid_cap_mplane,
> +	.vidioc_g_fmt_vid_cap_mplane = hdmirx_g_fmt_vid_cap_mplane,
> +	.vidioc_enum_fmt_vid_cap = hdmirx_enum_fmt_vid_cap_mplane,
> +
> +	.vidioc_s_dv_timings = hdmirx_s_dv_timings,
> +	.vidioc_g_dv_timings = hdmirx_g_dv_timings,
> +	.vidioc_enum_dv_timings = hdmirx_enum_dv_timings,
> +	.vidioc_query_dv_timings = hdmirx_query_dv_timings,
> +	.vidioc_dv_timings_cap = hdmirx_dv_timings_cap,
> +	.vidioc_enum_input = hdmirx_enum_input,
> +	.vidioc_g_input = hdmirx_get_input,
> +	.vidioc_s_input = hdmirx_set_input,
> +	.vidioc_g_edid = hdmirx_get_edid,
> +	.vidioc_s_edid = hdmirx_set_edid,
> +	.vidioc_g_parm = hdmirx_g_parm,
> +
> +	.vidioc_reqbufs = vb2_ioctl_reqbufs,
> +	.vidioc_querybuf = vb2_ioctl_querybuf,
> +	.vidioc_create_bufs = vb2_ioctl_create_bufs,
> +	.vidioc_qbuf = vb2_ioctl_qbuf,
> +	.vidioc_expbuf = vb2_ioctl_expbuf,
> +	.vidioc_dqbuf = vb2_ioctl_dqbuf,
> +	.vidioc_prepare_buf = vb2_ioctl_prepare_buf,
> +	.vidioc_streamon = vb2_ioctl_streamon,
> +	.vidioc_streamoff = vb2_ioctl_streamoff,
> +
> +	.vidioc_log_status = v4l2_ctrl_log_status,
> +	.vidioc_subscribe_event = hdmirx_subscribe_event,
> +	.vidioc_unsubscribe_event = v4l2_event_unsubscribe,
> +};
> +
> +static const struct v4l2_file_operations hdmirx_fops = {
> +	.owner = THIS_MODULE,
> +	.open = v4l2_fh_open,
> +	.release = vb2_fop_release,
> +	.unlocked_ioctl = video_ioctl2,
> +	.poll = vb2_fop_poll,
> +	.mmap = vb2_fop_mmap,
> +};
> +
> +static int hdmirx_register_stream_vdev(struct hdmirx_stream *stream)
> +{
> +	struct snps_hdmirx_dev *hdmirx_dev = stream->hdmirx_dev;
> +	struct v4l2_device *v4l2_dev = &hdmirx_dev->v4l2_dev;
> +	struct video_device *vdev = &stream->vdev;
> +	int ret = 0;
> +
> +	strscpy(vdev->name, "stream_hdmirx", sizeof(vdev->name));
> +	INIT_LIST_HEAD(&stream->buf_head);
> +	spin_lock_init(&stream->vbq_lock);
> +	mutex_init(&stream->vlock);
> +	init_waitqueue_head(&stream->wq_stopped);
> +	stream->curr_buf = NULL;
> +	stream->next_buf = NULL;
> +
> +	vdev->ioctl_ops = &hdmirx_v4l2_ioctl_ops;
> +	vdev->release = video_device_release_empty;
> +	vdev->fops = &hdmirx_fops;
> +	vdev->minor = -1;
> +	vdev->v4l2_dev = v4l2_dev;
> +	vdev->lock = &stream->vlock;
> +	vdev->device_caps = V4L2_CAP_VIDEO_CAPTURE_MPLANE |
> +			    V4L2_CAP_STREAMING;
> +	video_set_drvdata(vdev, stream);
> +	vdev->vfl_dir = VFL_DIR_RX;
> +
> +	hdmirx_init_vb2_queue(&stream->buf_queue, stream,
> +			      V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
> +	vdev->queue = &stream->buf_queue;
> +
> +	ret = video_register_device(vdev, VFL_TYPE_VIDEO, -1);
> +	if (ret < 0) {
> +		v4l2_err(v4l2_dev, "video_register_device failed: %d\n", ret);
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static void process_signal_change(struct snps_hdmirx_dev *hdmirx_dev)
> +{
> +	hdmirx_update_bits(hdmirx_dev, DMA_CONFIG6, HDMIRX_DMA_EN, 0);
> +	hdmirx_update_bits(hdmirx_dev, DMA_CONFIG4,
> +			   LINE_FLAG_INT_EN |
> +			   HDMIRX_DMA_IDLE_INT |
> +			   HDMIRX_LOCK_DISABLE_INT |
> +			   LAST_FRAME_AXI_UNFINISH_INT_EN |
> +			   FIFO_OVERFLOW_INT_EN |
> +			   FIFO_UNDERFLOW_INT_EN |
> +			   HDMIRX_AXI_ERROR_INT_EN, 0);
> +	hdmirx_reset_dma(hdmirx_dev);
> +	queue_delayed_work(system_unbound_wq,
> +			   &hdmirx_dev->delayed_work_res_change,
> +			   msecs_to_jiffies(50));
> +}
> +
> +static void avpunit_0_int_handler(struct snps_hdmirx_dev *hdmirx_dev,
> +				  int status, bool *handled)
> +{
> +	struct v4l2_device *v4l2_dev = &hdmirx_dev->v4l2_dev;
> +
> +	if (status & (CED_DYN_CNT_CH2_IRQ |
> +		      CED_DYN_CNT_CH1_IRQ |
> +		      CED_DYN_CNT_CH0_IRQ)) {
> +		process_signal_change(hdmirx_dev);
> +		v4l2_dbg(2, debug, v4l2_dev, "%s: avp0_st:%#x\n",
> +			 __func__, status);
> +		*handled = true;
> +	}
> +
> +	hdmirx_clear_interrupt(hdmirx_dev, AVPUNIT_0_INT_CLEAR, 0xffffffff);
> +	hdmirx_writel(hdmirx_dev, AVPUNIT_0_INT_FORCE, 0x0);
> +}
> +
> +static void avpunit_1_int_handler(struct snps_hdmirx_dev *hdmirx_dev,
> +				  int status, bool *handled)
> +{
> +	struct v4l2_device *v4l2_dev = &hdmirx_dev->v4l2_dev;
> +
> +	if (status & DEFRAMER_VSYNC_THR_REACHED_IRQ) {
> +		v4l2_dbg(2, debug, v4l2_dev,
> +			 "Vertical Sync threshold reached interrupt %#x", status);
> +		hdmirx_update_bits(hdmirx_dev, AVPUNIT_1_INT_MASK_N,
> +				   DEFRAMER_VSYNC_THR_REACHED_MASK_N, 0);
> +		*handled = true;
> +	}
> +}
> +
> +static void mainunit_0_int_handler(struct snps_hdmirx_dev *hdmirx_dev,
> +				   int status, bool *handled)
> +{
> +	struct v4l2_device *v4l2_dev = &hdmirx_dev->v4l2_dev;
> +
> +	v4l2_dbg(2, debug, v4l2_dev, "mu0_st:%#x\n", status);
> +	if (status & TIMER_BASE_LOCKED_IRQ) {
> +		hdmirx_update_bits(hdmirx_dev, MAINUNIT_0_INT_MASK_N,
> +				   TIMER_BASE_LOCKED_IRQ, 0);
> +		complete(&hdmirx_dev->timer_base_lock);
> +		*handled = true;
> +	}
> +
> +	if (status & TMDSQPCLK_OFF_CHG) {
> +		process_signal_change(hdmirx_dev);
> +		v4l2_dbg(2, debug, v4l2_dev, "%s: TMDSQPCLK_OFF_CHG\n", __func__);
> +		*handled = true;
> +	}
> +
> +	if (status & TMDSQPCLK_LOCKED_CHG) {
> +		process_signal_change(hdmirx_dev);
> +		v4l2_dbg(2, debug, v4l2_dev, "%s: TMDSQPCLK_LOCKED_CHG\n", __func__);
> +		*handled = true;
> +	}
> +
> +	hdmirx_clear_interrupt(hdmirx_dev, MAINUNIT_0_INT_CLEAR, 0xffffffff);
> +	hdmirx_writel(hdmirx_dev, MAINUNIT_0_INT_FORCE, 0x0);
> +}
> +
> +static void mainunit_2_int_handler(struct snps_hdmirx_dev *hdmirx_dev,
> +				   int status, bool *handled)
> +{
> +	struct v4l2_device *v4l2_dev = &hdmirx_dev->v4l2_dev;
> +
> +	v4l2_dbg(2, debug, v4l2_dev, "mu2_st:%#x\n", status);
> +	if (status & PHYCREG_CR_WRITE_DONE) {
> +		hdmirx_update_bits(hdmirx_dev, MAINUNIT_2_INT_MASK_N,
> +				   PHYCREG_CR_WRITE_DONE, 0);
> +		complete(&hdmirx_dev->cr_write_done);
> +		*handled = true;
> +	}
> +
> +	if (status & TMDSVALID_STABLE_CHG) {
> +		process_signal_change(hdmirx_dev);
> +		v4l2_dbg(2, debug, v4l2_dev, "%s: TMDSVALID_STABLE_CHG\n", __func__);
> +		*handled = true;
> +	}
> +
> +	hdmirx_clear_interrupt(hdmirx_dev, MAINUNIT_2_INT_CLEAR, 0xffffffff);
> +	hdmirx_writel(hdmirx_dev, MAINUNIT_2_INT_FORCE, 0x0);
> +}
> +
> +static void pkt_2_int_handler(struct snps_hdmirx_dev *hdmirx_dev,
> +			      int status, bool *handled)
> +{
> +	struct v4l2_device *v4l2_dev = &hdmirx_dev->v4l2_dev;
> +
> +	v4l2_dbg(2, debug, v4l2_dev, "%s: pk2_st:%#x\n", __func__, status);
> +	if (status & PKTDEC_AVIIF_RCV_IRQ) {
> +		hdmirx_update_bits(hdmirx_dev, PKT_2_INT_MASK_N,
> +				   PKTDEC_AVIIF_RCV_IRQ, 0);
> +		complete(&hdmirx_dev->avi_pkt_rcv);
> +		v4l2_dbg(2, debug, v4l2_dev, "%s: AVIIF_RCV_IRQ\n", __func__);
> +		*handled = true;
> +	}
> +
> +	hdmirx_clear_interrupt(hdmirx_dev, PKT_2_INT_CLEAR, 0xffffffff);
> +}
> +
> +static void scdc_int_handler(struct snps_hdmirx_dev *hdmirx_dev,
> +			     int status, bool *handled)
> +{
> +	struct v4l2_device *v4l2_dev = &hdmirx_dev->v4l2_dev;
> +
> +	v4l2_dbg(2, debug, v4l2_dev, "%s: scdc_st:%#x\n", __func__, status);
> +	if (status & SCDCTMDSCCFG_CHG) {
> +		hdmirx_tmds_clk_ratio_config(hdmirx_dev);
> +		*handled = true;
> +	}
> +
> +	hdmirx_clear_interrupt(hdmirx_dev, SCDC_INT_CLEAR, 0xffffffff);
> +}
> +
> +static irqreturn_t hdmirx_hdmi_irq_handler(int irq, void *dev_id)
> +{
> +	struct snps_hdmirx_dev *hdmirx_dev = dev_id;
> +	struct v4l2_device *v4l2_dev = &hdmirx_dev->v4l2_dev;
> +	u32 mu0_st, mu2_st, pk2_st, scdc_st, avp1_st, avp0_st;
> +	u32 mu0_mask, mu2_mask, pk2_mask, scdc_mask, avp1_msk, avp0_msk;
> +	bool handled = false;
> +
> +	mu0_mask = hdmirx_readl(hdmirx_dev, MAINUNIT_0_INT_MASK_N);
> +	mu2_mask = hdmirx_readl(hdmirx_dev, MAINUNIT_2_INT_MASK_N);
> +	pk2_mask = hdmirx_readl(hdmirx_dev, PKT_2_INT_MASK_N);
> +	scdc_mask = hdmirx_readl(hdmirx_dev, SCDC_INT_MASK_N);
> +	mu0_st = hdmirx_readl(hdmirx_dev, MAINUNIT_0_INT_STATUS);
> +	mu2_st = hdmirx_readl(hdmirx_dev, MAINUNIT_2_INT_STATUS);
> +	pk2_st = hdmirx_readl(hdmirx_dev, PKT_2_INT_STATUS);
> +	scdc_st = hdmirx_readl(hdmirx_dev, SCDC_INT_STATUS);
> +	avp0_st = hdmirx_readl(hdmirx_dev, AVPUNIT_0_INT_STATUS);
> +	avp1_st = hdmirx_readl(hdmirx_dev, AVPUNIT_1_INT_STATUS);
> +	avp0_msk = hdmirx_readl(hdmirx_dev, AVPUNIT_0_INT_MASK_N);
> +	avp1_msk = hdmirx_readl(hdmirx_dev, AVPUNIT_1_INT_MASK_N);
> +	mu0_st &= mu0_mask;
> +	mu2_st &= mu2_mask;
> +	pk2_st &= pk2_mask;
> +	avp1_st &= avp1_msk;
> +	avp0_st &= avp0_msk;
> +	scdc_st &= scdc_mask;
> +
> +	if (avp0_st)
> +		avpunit_0_int_handler(hdmirx_dev, avp0_st, &handled);
> +	if (avp1_st)
> +		avpunit_1_int_handler(hdmirx_dev, avp1_st, &handled);
> +	if (mu0_st)
> +		mainunit_0_int_handler(hdmirx_dev, mu0_st, &handled);
> +	if (mu2_st)
> +		mainunit_2_int_handler(hdmirx_dev, mu2_st, &handled);
> +	if (pk2_st)
> +		pkt_2_int_handler(hdmirx_dev, pk2_st, &handled);
> +	if (scdc_st)
> +		scdc_int_handler(hdmirx_dev, scdc_st, &handled);
> +
> +	if (!handled) {
> +		v4l2_dbg(2, debug, v4l2_dev, "%s: hdmi irq not handled", __func__);
> +		v4l2_dbg(2, debug, v4l2_dev,
> +			 "avp0:%#x, avp1:%#x, mu0:%#x, mu2:%#x, pk2:%#x, scdc:%#x\n",
> +			 avp0_st, avp1_st, mu0_st, mu2_st, pk2_st, scdc_st);
> +	}
> +
> +	v4l2_dbg(2, debug, v4l2_dev, "%s: en_fiq", __func__);
> +
> +	return handled ? IRQ_HANDLED : IRQ_NONE;
> +}
> +
> +static void hdmirx_vb_done(struct hdmirx_stream *stream,
> +			   struct vb2_v4l2_buffer *vb_done)
> +{
> +	const struct v4l2_format_info *finfo = stream->out_finfo;
> +	u32 i;
> +
> +	/* Dequeue a filled buffer */
> +	for (i = 0; i < finfo->mem_planes; i++) {
> +		vb2_set_plane_payload(&vb_done->vb2_buf, i,
> +				      stream->pixm.plane_fmt[i].sizeimage);
> +	}
> +
> +	vb_done->vb2_buf.timestamp = ktime_get_ns();
> +	vb2_buffer_done(&vb_done->vb2_buf, VB2_BUF_STATE_DONE);
> +}
> +
> +static void dma_idle_int_handler(struct snps_hdmirx_dev *hdmirx_dev,
> +				 bool *handled)
> +{
> +	struct hdmirx_stream *stream = &hdmirx_dev->stream;
> +	struct v4l2_device *v4l2_dev = &hdmirx_dev->v4l2_dev;
> +	struct v4l2_dv_timings timings = hdmirx_dev->timings;
> +	struct v4l2_bt_timings *bt = &timings.bt;
> +	struct vb2_v4l2_buffer *vb_done = NULL;
> +
> +	if (!(stream->irq_stat) && !(stream->irq_stat & LINE_FLAG_INT_EN))
> +		v4l2_dbg(1, debug, v4l2_dev,
> +			 "%s: last time have no line_flag_irq\n", __func__);
> +
> +	if (stream->line_flag_int_cnt <= FILTER_FRAME_CNT)
> +		goto DMA_IDLE_OUT;
> +
> +	if (bt->interlaced != V4L2_DV_INTERLACED ||
> +	    !(stream->line_flag_int_cnt % 2)) {
> +		if (stream->next_buf) {
> +			if (stream->curr_buf)
> +				vb_done = &stream->curr_buf->vb;
> +
> +			if (vb_done) {
> +				vb_done->vb2_buf.timestamp = ktime_get_ns();
> +				vb_done->sequence = stream->frame_idx;
> +
> +				if (bt->interlaced)
> +					vb_done->field = V4L2_FIELD_INTERLACED_TB;
> +				else
> +					vb_done->field = V4L2_FIELD_NONE;
> +
> +				hdmirx_vb_done(stream, vb_done);
> +				stream->frame_idx++;
> +				if (stream->frame_idx == 30)
> +					v4l2_dbg(1, debug, v4l2_dev,
> +						 "rcv frames\n");
> +			}
> +
> +			stream->curr_buf = NULL;
> +			if (stream->next_buf) {
> +				stream->curr_buf = stream->next_buf;
> +				stream->next_buf = NULL;
> +			}
> +		} else {
> +			v4l2_dbg(3, debug, v4l2_dev,
> +				 "%s: next_buf NULL, skip vb_done\n", __func__);
> +		}
> +	}
> +
> +DMA_IDLE_OUT:
> +	*handled = true;
> +}
> +
> +static void line_flag_int_handler(struct snps_hdmirx_dev *hdmirx_dev,
> +				  bool *handled)
> +{
> +	struct hdmirx_stream *stream = &hdmirx_dev->stream;
> +	struct v4l2_device *v4l2_dev = &hdmirx_dev->v4l2_dev;
> +	struct v4l2_dv_timings timings = hdmirx_dev->timings;
> +	struct v4l2_bt_timings *bt = &timings.bt;
> +	u32 dma_cfg6;
> +
> +	stream->line_flag_int_cnt++;
> +	if (!(stream->irq_stat) && !(stream->irq_stat & HDMIRX_DMA_IDLE_INT))
> +		v4l2_dbg(1, debug, v4l2_dev,
> +			 "%s: last have no dma_idle_irq\n", __func__);
> +	dma_cfg6 = hdmirx_readl(hdmirx_dev, DMA_CONFIG6);
> +	if (!(dma_cfg6 & HDMIRX_DMA_EN)) {
> +		v4l2_dbg(2, debug, v4l2_dev, "%s: dma not on\n", __func__);
> +		goto LINE_FLAG_OUT;
> +	}
> +
> +	if (stream->line_flag_int_cnt <= FILTER_FRAME_CNT)
> +		goto LINE_FLAG_OUT;
> +
> +	if (bt->interlaced != V4L2_DV_INTERLACED ||
> +	    !(stream->line_flag_int_cnt % 2)) {
> +		if (!stream->next_buf) {
> +			spin_lock(&stream->vbq_lock);
> +			if (!list_empty(&stream->buf_head)) {
> +				stream->next_buf = list_first_entry(&stream->buf_head,
> +								    struct hdmirx_buffer,
> +								    queue);
> +				list_del(&stream->next_buf->queue);
> +			} else {
> +				stream->next_buf = NULL;
> +			}
> +			spin_unlock(&stream->vbq_lock);
> +
> +			if (stream->next_buf) {
> +				hdmirx_writel(hdmirx_dev, DMA_CONFIG2,
> +					      stream->next_buf->buff_addr[HDMIRX_PLANE_Y]);
> +				hdmirx_writel(hdmirx_dev, DMA_CONFIG3,
> +					      stream->next_buf->buff_addr[HDMIRX_PLANE_CBCR]);
> +			} else {
> +				v4l2_dbg(3, debug, v4l2_dev,
> +					 "%s: no buffer is available\n", __func__);
> +			}
> +		}
> +	} else {
> +		v4l2_dbg(3, debug, v4l2_dev, "%s: interlace:%d, line_flag_int_cnt:%d\n",
> +			 __func__, bt->interlaced, stream->line_flag_int_cnt);
> +	}
> +
> +LINE_FLAG_OUT:
> +	*handled = true;
> +}
> +
> +static irqreturn_t hdmirx_dma_irq_handler(int irq, void *dev_id)
> +{
> +	struct snps_hdmirx_dev *hdmirx_dev = dev_id;
> +	struct hdmirx_stream *stream = &hdmirx_dev->stream;
> +	struct v4l2_device *v4l2_dev = &hdmirx_dev->v4l2_dev;
> +	u32 dma_stat1, dma_stat13;
> +	bool handled = false;
> +
> +	dma_stat1 = hdmirx_readl(hdmirx_dev, DMA_STATUS1);
> +	dma_stat13 = hdmirx_readl(hdmirx_dev, DMA_STATUS13);
> +	v4l2_dbg(3, debug, v4l2_dev, "dma_irq st1:%#x, st13:%d\n",
> +		 dma_stat1, dma_stat13);
> +
> +	if (READ_ONCE(stream->stopping)) {
> +		v4l2_dbg(1, debug, v4l2_dev, "%s: stop stream\n", __func__);
> +		hdmirx_writel(hdmirx_dev, DMA_CONFIG5, 0xffffffff);
> +		hdmirx_update_bits(hdmirx_dev, DMA_CONFIG4,
> +				   LINE_FLAG_INT_EN |
> +				   HDMIRX_DMA_IDLE_INT |
> +				   HDMIRX_LOCK_DISABLE_INT |
> +				   LAST_FRAME_AXI_UNFINISH_INT_EN |
> +				   FIFO_OVERFLOW_INT_EN |
> +				   FIFO_UNDERFLOW_INT_EN |
> +				   HDMIRX_AXI_ERROR_INT_EN, 0);
> +		WRITE_ONCE(stream->stopping, false);
> +		wake_up(&stream->wq_stopped);
> +		return IRQ_HANDLED;
> +	}
> +
> +	if (dma_stat1 & HDMIRX_DMA_IDLE_INT)
> +		dma_idle_int_handler(hdmirx_dev, &handled);
> +
> +	if (dma_stat1 & LINE_FLAG_INT_EN)
> +		line_flag_int_handler(hdmirx_dev, &handled);
> +
> +	if (!handled)
> +		v4l2_dbg(3, debug, v4l2_dev,
> +			 "%s: dma irq not handled, dma_stat1:%#x\n",
> +			 __func__, dma_stat1);
> +
> +	stream->irq_stat = dma_stat1;
> +	hdmirx_writel(hdmirx_dev, DMA_CONFIG5, 0xffffffff);
> +
> +	return IRQ_HANDLED;
> +}
> +
> +static int hdmirx_wait_signal_lock(struct snps_hdmirx_dev *hdmirx_dev)
> +{
> +	struct v4l2_device *v4l2_dev = &hdmirx_dev->v4l2_dev;
> +	u32 mu_status, scdc_status, dma_st10, cmu_st;
> +	u32 i;
> +
> +	for (i = 0; i < 300; i++) {
> +		mu_status = hdmirx_readl(hdmirx_dev, MAINUNIT_STATUS);
> +		scdc_status = hdmirx_readl(hdmirx_dev, SCDC_REGBANK_STATUS3);
> +		dma_st10 = hdmirx_readl(hdmirx_dev, DMA_STATUS10);
> +		cmu_st = hdmirx_readl(hdmirx_dev, CMU_STATUS);
> +
> +		if ((mu_status & TMDSVALID_STABLE_ST) &&
> +		    (dma_st10 & HDMIRX_LOCK) &&
> +		    (cmu_st & TMDSQPCLK_LOCKED_ST))
> +			break;
> +
> +		if (!tx_5v_power_present(hdmirx_dev)) {
> +			v4l2_dbg(1, debug, v4l2_dev,
> +				 "%s: HDMI pull out, return\n", __func__);
> +			return -1;
> +		}
> +
> +		hdmirx_tmds_clk_ratio_config(hdmirx_dev);
> +	}
> +
> +	if (i == 300) {
> +		v4l2_err(v4l2_dev, "%s: signal not lock, tmds_clk_ratio:%d\n",
> +			 __func__, hdmirx_dev->tmds_clk_ratio);
> +		v4l2_err(v4l2_dev, "%s: mu_st:%#x, scdc_st:%#x, dma_st10:%#x\n",
> +			 __func__, mu_status, scdc_status, dma_st10);
> +		return -1;
> +	}
> +
> +	v4l2_dbg(1, debug, v4l2_dev, "%s: signal lock ok, i:%d\n", __func__, i);
> +	hdmirx_writel(hdmirx_dev, GLOBAL_SWRESET_REQUEST, DATAPATH_SWRESETREQ);
> +
> +	reinit_completion(&hdmirx_dev->avi_pkt_rcv);
> +	hdmirx_clear_interrupt(hdmirx_dev, PKT_2_INT_CLEAR, 0xffffffff);
> +	hdmirx_update_bits(hdmirx_dev, PKT_2_INT_MASK_N,
> +			   PKTDEC_AVIIF_RCV_IRQ, PKTDEC_AVIIF_RCV_IRQ);
> +
> +	if (!wait_for_completion_timeout(&hdmirx_dev->avi_pkt_rcv,
> +					 msecs_to_jiffies(300))) {
> +		v4l2_err(v4l2_dev, "%s wait avi_pkt_rcv failed\n", __func__);
> +		hdmirx_update_bits(hdmirx_dev, PKT_2_INT_MASK_N,
> +				   PKTDEC_AVIIF_RCV_IRQ, 0);
> +	}
> +
> +	msleep(50);
> +	hdmirx_format_change(hdmirx_dev);
> +
> +	return 0;
> +}
> +
> +static void hdmirx_plugin(struct snps_hdmirx_dev *hdmirx_dev)
> +{
> +	hdmirx_submodule_init(hdmirx_dev);
> +	hdmirx_update_bits(hdmirx_dev, SCDC_CONFIG, POWERPROVIDED,
> +			   POWERPROVIDED);
> +	hdmirx_hpd_ctrl(hdmirx_dev, true);
> +	hdmirx_phy_config(hdmirx_dev);
> +	hdmirx_interrupts_setup(hdmirx_dev, true);
> +}
> +
> +static void hdmirx_delayed_work_hotplug(struct work_struct *work)
> +{
> +	struct snps_hdmirx_dev *hdmirx_dev;
> +	bool plugin;
> +
> +	hdmirx_dev = container_of(work, struct snps_hdmirx_dev,
> +				  delayed_work_hotplug.work);
> +
> +	mutex_lock(&hdmirx_dev->work_lock);
> +	plugin = tx_5v_power_present(hdmirx_dev);
> +	v4l2_ctrl_s_ctrl(hdmirx_dev->detect_tx_5v_ctrl, plugin);
> +	v4l2_dbg(1, debug, &hdmirx_dev->v4l2_dev, "%s: plugin:%d\n",
> +		 __func__, plugin);
> +
> +	if (plugin)
> +		hdmirx_plugin(hdmirx_dev);
> +	else
> +		hdmirx_plugout(hdmirx_dev);
> +
> +	mutex_unlock(&hdmirx_dev->work_lock);
> +}
> +
> +static void hdmirx_delayed_work_res_change(struct work_struct *work)
> +{
> +	struct snps_hdmirx_dev *hdmirx_dev;
> +	bool plugin;
> +
> +	hdmirx_dev = container_of(work, struct snps_hdmirx_dev,
> +				  delayed_work_res_change.work);
> +
> +	mutex_lock(&hdmirx_dev->work_lock);
> +	plugin = tx_5v_power_present(hdmirx_dev);
> +	v4l2_dbg(1, debug, &hdmirx_dev->v4l2_dev, "%s: plugin:%d\n",
> +		 __func__, plugin);
> +	if (plugin) {
> +		hdmirx_interrupts_setup(hdmirx_dev, false);
> +		hdmirx_submodule_init(hdmirx_dev);
> +		hdmirx_update_bits(hdmirx_dev, SCDC_CONFIG, POWERPROVIDED,
> +				   POWERPROVIDED);
> +		hdmirx_hpd_ctrl(hdmirx_dev, true);
> +		hdmirx_phy_config(hdmirx_dev);
> +
> +		if (hdmirx_wait_signal_lock(hdmirx_dev)) {
> +			hdmirx_plugout(hdmirx_dev);
> +			queue_delayed_work(system_unbound_wq,
> +					   &hdmirx_dev->delayed_work_hotplug,
> +					   msecs_to_jiffies(200));
> +		} else {
> +			hdmirx_dma_config(hdmirx_dev);
> +			hdmirx_interrupts_setup(hdmirx_dev, true);
> +		}
> +	}
> +	mutex_unlock(&hdmirx_dev->work_lock);
> +}
> +
> +static irqreturn_t hdmirx_5v_det_irq_handler(int irq, void *dev_id)
> +{
> +	struct snps_hdmirx_dev *hdmirx_dev = dev_id;
> +	u32 val;
> +
> +	val = gpiod_get_value(hdmirx_dev->detect_5v_gpio);
> +	v4l2_dbg(3, debug, &hdmirx_dev->v4l2_dev, "%s: 5v:%d\n", __func__, val);
> +
> +	queue_delayed_work(system_unbound_wq,
> +			   &hdmirx_dev->delayed_work_hotplug,
> +			   msecs_to_jiffies(10));
> +
> +	return IRQ_HANDLED;
> +}
> +
> +static const struct hdmirx_cec_ops hdmirx_cec_ops = {
> +	.write = hdmirx_writel,
> +	.read = hdmirx_readl,
> +};
> +
> +static int hdmirx_parse_dt(struct snps_hdmirx_dev *hdmirx_dev)
> +{
> +	struct device *dev = hdmirx_dev->dev;
> +	int ret;
> +
> +	hdmirx_dev->num_clks = devm_clk_bulk_get_all(dev, &hdmirx_dev->clks);
> +	if (hdmirx_dev->num_clks < 1)
> +		return -ENODEV;
> +
> +	hdmirx_dev->resets[HDMIRX_RST_A].id = "axi";
> +	hdmirx_dev->resets[HDMIRX_RST_P].id = "apb";
> +	hdmirx_dev->resets[HDMIRX_RST_REF].id = "ref";
> +	hdmirx_dev->resets[HDMIRX_RST_BIU].id = "biu";
> +
> +	ret = devm_reset_control_bulk_get_exclusive(dev, HDMIRX_NUM_RST,
> +						    hdmirx_dev->resets);
> +	if (ret < 0) {
> +		dev_err(dev, "failed to get reset controls\n");
> +		return ret;
> +	}
> +
> +	hdmirx_dev->detect_5v_gpio =
> +		devm_gpiod_get_optional(dev, "hpd", GPIOD_IN);
> +
> +	if (IS_ERR(hdmirx_dev->detect_5v_gpio)) {
> +		dev_err(dev, "failed to get hdmirx hot plug detection gpio\n");
> +		return PTR_ERR(hdmirx_dev->detect_5v_gpio);
> +	}
> +
> +	hdmirx_dev->grf = syscon_regmap_lookup_by_phandle(dev->of_node,
> +							  "rockchip,grf");
> +	if (IS_ERR(hdmirx_dev->grf)) {
> +		dev_err(dev, "failed to get rockchip,grf\n");
> +		return PTR_ERR(hdmirx_dev->grf);
> +	}
> +
> +	hdmirx_dev->vo1_grf = syscon_regmap_lookup_by_phandle(dev->of_node,
> +							      "rockchip,vo1-grf");
> +	if (IS_ERR(hdmirx_dev->vo1_grf)) {
> +		dev_err(dev, "failed to get rockchip,vo1-grf\n");
> +		return PTR_ERR(hdmirx_dev->vo1_grf);
> +	}
> +
> +	if (!device_property_read_bool(dev, "hpd-is-active-low"))
> +		hdmirx_dev->hpd_trigger_level_high = true;
> +
> +	ret = of_reserved_mem_device_init(dev);
> +	if (ret)
> +		dev_warn(dev, "No reserved memory for HDMIRX, use default CMA\n");
> +
> +	return 0;
> +}
> +
> +static void hdmirx_disable_all_interrupts(struct snps_hdmirx_dev *hdmirx_dev)
> +{
> +	hdmirx_writel(hdmirx_dev, MAINUNIT_0_INT_MASK_N, 0);
> +	hdmirx_writel(hdmirx_dev, MAINUNIT_1_INT_MASK_N, 0);
> +	hdmirx_writel(hdmirx_dev, MAINUNIT_2_INT_MASK_N, 0);
> +	hdmirx_writel(hdmirx_dev, AVPUNIT_0_INT_MASK_N, 0);
> +	hdmirx_writel(hdmirx_dev, AVPUNIT_1_INT_MASK_N, 0);
> +	hdmirx_writel(hdmirx_dev, PKT_0_INT_MASK_N, 0);
> +	hdmirx_writel(hdmirx_dev, PKT_1_INT_MASK_N, 0);
> +	hdmirx_writel(hdmirx_dev, PKT_2_INT_MASK_N, 0);
> +	hdmirx_writel(hdmirx_dev, SCDC_INT_MASK_N, 0);
> +	hdmirx_writel(hdmirx_dev, CEC_INT_MASK_N, 0);
> +
> +	hdmirx_clear_interrupt(hdmirx_dev, MAINUNIT_0_INT_CLEAR, 0xffffffff);
> +	hdmirx_clear_interrupt(hdmirx_dev, MAINUNIT_1_INT_CLEAR, 0xffffffff);
> +	hdmirx_clear_interrupt(hdmirx_dev, MAINUNIT_2_INT_CLEAR, 0xffffffff);
> +	hdmirx_clear_interrupt(hdmirx_dev, AVPUNIT_0_INT_CLEAR, 0xffffffff);
> +	hdmirx_clear_interrupt(hdmirx_dev, AVPUNIT_1_INT_CLEAR, 0xffffffff);
> +	hdmirx_clear_interrupt(hdmirx_dev, PKT_0_INT_CLEAR, 0xffffffff);
> +	hdmirx_clear_interrupt(hdmirx_dev, PKT_1_INT_CLEAR, 0xffffffff);
> +	hdmirx_clear_interrupt(hdmirx_dev, PKT_2_INT_CLEAR, 0xffffffff);
> +	hdmirx_clear_interrupt(hdmirx_dev, SCDC_INT_CLEAR, 0xffffffff);
> +	hdmirx_clear_interrupt(hdmirx_dev, HDCP_INT_CLEAR, 0xffffffff);
> +	hdmirx_clear_interrupt(hdmirx_dev, HDCP_1_INT_CLEAR, 0xffffffff);
> +	hdmirx_clear_interrupt(hdmirx_dev, CEC_INT_CLEAR, 0xffffffff);
> +}
> +
> +static int hdmirx_init(struct snps_hdmirx_dev *hdmirx_dev)
> +{
> +	hdmirx_update_bits(hdmirx_dev, PHY_CONFIG, PHY_RESET | PHY_PDDQ, 0);
> +
> +	regmap_write(hdmirx_dev->vo1_grf, VO1_GRF_VO1_CON2,
> +		     (HDMIRX_SDAIN_MSK | HDMIRX_SCLIN_MSK) |
> +		     ((HDMIRX_SDAIN_MSK | HDMIRX_SCLIN_MSK) << 16));
> +	/*
> +	 * Some interrupts are enabled by default, so we disable
> +	 * all interrupts and clear interrupts status first.
> +	 */
> +	hdmirx_disable_all_interrupts(hdmirx_dev);
> +
> +	return 0;
> +}
> +
> +/* hdmi-4k-300mhz EDID produced by v4l2-ctl tool */
> +static u8 edid_default[] = {
> +	0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00,
> +	0x31, 0xd8, 0x34, 0x12, 0x00, 0x00, 0x00, 0x00,
> +	0x22, 0x1a, 0x01, 0x03, 0x80, 0x60, 0x36, 0x78,
> +	0x0f, 0xee, 0x91, 0xa3, 0x54, 0x4c, 0x99, 0x26,
> +	0x0f, 0x50, 0x54, 0x2f, 0xcf, 0x00, 0x31, 0x59,
> +	0x45, 0x59, 0x81, 0x80, 0x81, 0x40, 0x90, 0x40,
> +	0x95, 0x00, 0xa9, 0x40, 0xb3, 0x00, 0x04, 0x74,
> +	0x00, 0x30, 0xf2, 0x70, 0x5a, 0x80, 0xb0, 0x58,
> +	0x8a, 0x00, 0xc0, 0x1c, 0x32, 0x00, 0x00, 0x1e,
> +	0x00, 0x00, 0x00, 0xfd, 0x00, 0x18, 0x55, 0x18,
> +	0x87, 0x1e, 0x00, 0x0a, 0x20, 0x20, 0x20, 0x20,
> +	0x20, 0x20, 0x00, 0x00, 0x00, 0xfc, 0x00, 0x68,
> +	0x64, 0x6d, 0x69, 0x2d, 0x34, 0x6b, 0x2d, 0x33,
> +	0x30, 0x30, 0x0a, 0x20, 0x00, 0x00, 0x00, 0x10,
> +	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> +	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xc5,
> +
> +	0x02, 0x03, 0x40, 0xf1, 0x4f, 0x5f, 0x5e, 0x5d,
> +	0x10, 0x1f, 0x04, 0x13, 0x22, 0x21, 0x20, 0x05,
> +	0x14, 0x02, 0x11, 0x01, 0x23, 0x09, 0x07, 0x07,
> +	0x83, 0x01, 0x00, 0x00, 0x6d, 0x03, 0x0c, 0x00,
> +	0x10, 0x00, 0x00, 0x3c, 0x21, 0x00, 0x60, 0x01,
> +	0x02, 0x03, 0x67, 0xd8, 0x5d, 0xc4, 0x01, 0x00,
> +	0x00, 0x00, 0xe2, 0x00, 0xca, 0xe3, 0x05, 0x00,
> +	0x00, 0xe3, 0x06, 0x01, 0x00, 0xe2, 0x0d, 0x5f,
> +	0xa3, 0x66, 0x00, 0xa0, 0xf0, 0x70, 0x1f, 0x80,
> +	0x30, 0x20, 0x35, 0x00, 0xc0, 0x1c, 0x32, 0x00,
> +	0x00, 0x1e, 0x1a, 0x36, 0x80, 0xa0, 0x70, 0x38,
> +	0x1f, 0x40, 0x30, 0x20, 0x35, 0x00, 0xc0, 0x1c,
> +	0x32, 0x00, 0x00, 0x1a, 0x1a, 0x1d, 0x00, 0x80,
> +	0x51, 0xd0, 0x1c, 0x20, 0x40, 0x80, 0x35, 0x00,
> +	0xc0, 0x1c, 0x32, 0x00, 0x00, 0x1c, 0x00, 0x00,
> +	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xa1
> +};
> +
> +static void hdmirx_load_default_edid(struct snps_hdmirx_dev *hdmirx_dev)
> +{
> +	struct v4l2_edid def_edid;
> +
> +	hdmirx_hpd_ctrl(hdmirx_dev, false);
> +
> +	/* disable hpd and write edid */
> +	def_edid.pad = 0;
> +	def_edid.start_block = 0;
> +	def_edid.blocks = EDID_NUM_BLOCKS_MAX;
> +
> +	if (IS_ENABLED(CONFIG_VIDEO_SYNOPSYS_HDMIRX_LOAD_DEFAULT_EDID))
> +		def_edid.edid = edid_default;
> +	else
> +		def_edid.edid = hdmirx_dev->edid;

So if you are not loading the default EDID, then you load a zeroed EDID?

This is much too complicated: if there is no default EDID, then just
pull the HPD low (you do that already at the start) and return.

BTW, please check with CONFIG_VIDEO_SYNOPSYS_HDMIRX_LOAD_DEFAULT_EDID set
and unset and make sure there are no compile warnings/errors relating to that.

> +
> +	hdmirx_write_edid(hdmirx_dev, &def_edid);
> +
> +	if (tx_5v_power_present(hdmirx_dev))
> +		hdmirx_hpd_ctrl(hdmirx_dev, true);
> +}
> +
> +static void hdmirx_disable_irq(struct device *dev)
> +{
> +	struct snps_hdmirx_dev *hdmirx_dev = dev_get_drvdata(dev);
> +
> +	disable_irq(hdmirx_dev->hdmi_irq);
> +	disable_irq(hdmirx_dev->dma_irq);
> +	disable_irq(hdmirx_dev->det_irq);
> +
> +	cancel_delayed_work_sync(&hdmirx_dev->delayed_work_hotplug);
> +	cancel_delayed_work_sync(&hdmirx_dev->delayed_work_res_change);
> +}
> +
> +static int hdmirx_disable(struct device *dev)
> +{
> +	struct snps_hdmirx_dev *hdmirx_dev = dev_get_drvdata(dev);
> +	struct v4l2_device *v4l2_dev = &hdmirx_dev->v4l2_dev;
> +
> +	clk_bulk_disable_unprepare(hdmirx_dev->num_clks, hdmirx_dev->clks);
> +
> +	v4l2_dbg(2, debug, v4l2_dev, "%s: suspend\n", __func__);
> +
> +	return pinctrl_pm_select_sleep_state(dev);
> +}
> +
> +static void hdmirx_enable_irq(struct device *dev)
> +{
> +	struct snps_hdmirx_dev *hdmirx_dev = dev_get_drvdata(dev);
> +
> +	enable_irq(hdmirx_dev->hdmi_irq);
> +	enable_irq(hdmirx_dev->dma_irq);
> +	enable_irq(hdmirx_dev->det_irq);
> +
> +	queue_delayed_work(system_unbound_wq, &hdmirx_dev->delayed_work_hotplug,
> +			   msecs_to_jiffies(20));
> +}
> +
> +static int hdmirx_enable(struct device *dev)
> +{
> +	struct snps_hdmirx_dev *hdmirx_dev = dev_get_drvdata(dev);
> +	struct v4l2_device *v4l2_dev = &hdmirx_dev->v4l2_dev;
> +	int ret;
> +
> +	v4l2_dbg(2, debug, v4l2_dev, "%s: resume\n", __func__);
> +	ret = pinctrl_pm_select_default_state(dev);
> +	if (ret < 0)
> +		return ret;
> +
> +	ret = clk_bulk_prepare_enable(hdmirx_dev->num_clks, hdmirx_dev->clks);
> +	if (ret) {
> +		dev_err(dev, "failed to enable hdmirx bulk clks: %d\n", ret);
> +		return ret;
> +	}
> +
> +	reset_control_bulk_assert(HDMIRX_NUM_RST, hdmirx_dev->resets);
> +	usleep_range(150, 160);
> +	reset_control_bulk_deassert(HDMIRX_NUM_RST, hdmirx_dev->resets);
> +	usleep_range(150, 160);
> +
> +	return 0;
> +}
> +
> +static int hdmirx_suspend(struct device *dev)
> +{
> +	hdmirx_disable_irq(dev);
> +
> +	return hdmirx_disable(dev);
> +}
> +
> +static int hdmirx_resume(struct device *dev)
> +{
> +	int ret = hdmirx_enable(dev);
> +
> +	if (ret)
> +		return ret;
> +
> +	hdmirx_enable_irq(dev);
> +
> +	return 0;
> +}
> +
> +static const struct dev_pm_ops snps_hdmirx_pm_ops = {
> +	SET_SYSTEM_SLEEP_PM_OPS(hdmirx_suspend, hdmirx_resume)
> +};
> +
> +static int hdmirx_setup_irq(struct snps_hdmirx_dev *hdmirx_dev,
> +			    struct platform_device *pdev)
> +{
> +	struct device *dev = hdmirx_dev->dev;
> +	int ret, irq;
> +
> +	irq = platform_get_irq_byname(pdev, "hdmi");
> +	if (irq < 0) {
> +		dev_err_probe(dev, irq, "failed to get hdmi irq\n");
> +		return irq;
> +	}
> +
> +	irq_set_status_flags(irq, IRQ_NOAUTOEN);
> +
> +	hdmirx_dev->hdmi_irq = irq;
> +	ret = devm_request_irq(dev, irq, hdmirx_hdmi_irq_handler, 0,
> +			       "rk_hdmirx-hdmi", hdmirx_dev);
> +	if (ret) {
> +		dev_err_probe(dev, ret, "failed to request hdmi irq\n");
> +		return ret;
> +	}
> +
> +	irq = platform_get_irq_byname(pdev, "dma");
> +	if (irq < 0) {
> +		dev_err_probe(dev, irq, "failed to get dma irq\n");
> +		return irq;
> +	}
> +
> +	irq_set_status_flags(irq, IRQ_NOAUTOEN);
> +
> +	hdmirx_dev->dma_irq = irq;
> +	ret = devm_request_threaded_irq(dev, irq, NULL, hdmirx_dma_irq_handler,
> +					IRQF_ONESHOT, "rk_hdmirx-dma",
> +					hdmirx_dev);
> +	if (ret) {
> +		dev_err_probe(dev, ret, "failed to request dma irq\n");
> +		return ret;
> +	}
> +
> +	irq = gpiod_to_irq(hdmirx_dev->detect_5v_gpio);
> +	if (irq < 0) {
> +		dev_err_probe(dev, irq, "failed to get hdmirx-5v irq\n");
> +		return irq;
> +	}
> +
> +	irq_set_status_flags(irq, IRQ_NOAUTOEN);
> +
> +	hdmirx_dev->det_irq = irq;
> +	ret = devm_request_irq(dev, irq, hdmirx_5v_det_irq_handler,
> +			       IRQF_TRIGGER_FALLING | IRQF_TRIGGER_RISING,
> +			       "rk_hdmirx-5v", hdmirx_dev);
> +	if (ret) {
> +		dev_err_probe(dev, ret, "failed to request hdmirx-5v irq\n");
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static int hdmirx_register_cec(struct snps_hdmirx_dev *hdmirx_dev,
> +			       struct platform_device *pdev)
> +{
> +	struct device *dev = hdmirx_dev->dev;
> +	struct hdmirx_cec_data cec_data;
> +	int irq;
> +
> +	irq = platform_get_irq_byname(pdev, "cec");
> +	if (irq < 0) {
> +		dev_err_probe(dev, irq, "failed to get cec irq\n");
> +		return irq;
> +	}
> +
> +	hdmirx_dev->cec_notifier = cec_notifier_conn_register(dev, NULL, NULL);
> +	if (!hdmirx_dev->cec_notifier)
> +		return -EINVAL;
> +
> +	cec_data.hdmirx = hdmirx_dev;
> +	cec_data.dev = hdmirx_dev->dev;
> +	cec_data.ops = &hdmirx_cec_ops;
> +	cec_data.irq = irq;
> +
> +	hdmirx_dev->cec = snps_hdmirx_cec_register(&cec_data);
> +	if (!hdmirx_dev->cec) {
> +		cec_notifier_conn_unregister(hdmirx_dev->cec_notifier);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static int hdmirx_probe(struct platform_device *pdev)
> +{
> +	struct snps_hdmirx_dev *hdmirx_dev;
> +	struct device *dev = &pdev->dev;
> +	struct v4l2_ctrl_handler *hdl;
> +	struct hdmirx_stream *stream;
> +	struct v4l2_device *v4l2_dev;
> +	int ret;
> +
> +	hdmirx_dev = devm_kzalloc(dev, sizeof(*hdmirx_dev), GFP_KERNEL);
> +	if (!hdmirx_dev)
> +		return -ENOMEM;
> +
> +	ret = dma_coerce_mask_and_coherent(dev, DMA_BIT_MASK(32));
> +	if (ret)
> +		return ret;
> +
> +	hdmirx_dev->dev = dev;
> +	dev_set_drvdata(dev, hdmirx_dev);
> +
> +	ret = hdmirx_parse_dt(hdmirx_dev);
> +	if (ret)
> +		return ret;
> +
> +	ret = hdmirx_setup_irq(hdmirx_dev, pdev);
> +	if (ret)
> +		return ret;
> +
> +	hdmirx_dev->regs = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(hdmirx_dev->regs))
> +		return dev_err_probe(dev, PTR_ERR(hdmirx_dev->regs),
> +				     "failed to remap regs resource\n");
> +
> +	mutex_init(&hdmirx_dev->stream_lock);
> +	mutex_init(&hdmirx_dev->work_lock);
> +	spin_lock_init(&hdmirx_dev->rst_lock);
> +
> +	init_completion(&hdmirx_dev->cr_write_done);
> +	init_completion(&hdmirx_dev->timer_base_lock);
> +	init_completion(&hdmirx_dev->avi_pkt_rcv);
> +
> +	INIT_DELAYED_WORK(&hdmirx_dev->delayed_work_hotplug,
> +			  hdmirx_delayed_work_hotplug);
> +	INIT_DELAYED_WORK(&hdmirx_dev->delayed_work_res_change,
> +			  hdmirx_delayed_work_res_change);
> +
> +	hdmirx_dev->cur_fmt_fourcc = V4L2_PIX_FMT_BGR24;
> +	hdmirx_dev->timings = cea640x480;
> +
> +	hdmirx_enable(dev);
> +	hdmirx_init(hdmirx_dev);
> +
> +	v4l2_dev = &hdmirx_dev->v4l2_dev;
> +	strscpy(v4l2_dev->name, dev_name(dev), sizeof(v4l2_dev->name));
> +
> +	hdl = &hdmirx_dev->hdl;
> +	v4l2_ctrl_handler_init(hdl, 3);
> +
> +	hdmirx_dev->detect_tx_5v_ctrl = v4l2_ctrl_new_std(hdl, NULL,
> +							  V4L2_CID_DV_RX_POWER_PRESENT,
> +							  0, 1, 0, 0);
> +
> +	hdmirx_dev->rgb_range = v4l2_ctrl_new_std_menu(hdl, NULL,
> +						       V4L2_CID_DV_RX_RGB_RANGE,
> +						       V4L2_DV_RGB_RANGE_FULL, 0,
> +						       V4L2_DV_RGB_RANGE_AUTO);
> +
> +	hdmirx_dev->rgb_range->flags |= V4L2_CTRL_FLAG_READ_ONLY;
> +
> +	hdmirx_dev->content_type =
> +		v4l2_ctrl_new_std_menu(hdl, NULL, V4L2_CID_DV_RX_IT_CONTENT_TYPE,
> +				       V4L2_DV_IT_CONTENT_TYPE_NO_ITC, 0,
> +				       V4L2_DV_IT_CONTENT_TYPE_NO_ITC);
> +
> +	if (hdl->error) {
> +		dev_err(dev, "v4l2 ctrl handler init failed\n");
> +		ret = hdl->error;
> +		goto err_pm;
> +	}
> +	hdmirx_dev->v4l2_dev.ctrl_handler = hdl;
> +
> +	ret = v4l2_device_register(dev, &hdmirx_dev->v4l2_dev);
> +	if (ret < 0) {
> +		dev_err(dev, "register v4l2 device failed\n");
> +		goto err_hdl;
> +	}
> +
> +	stream = &hdmirx_dev->stream;
> +	stream->hdmirx_dev = hdmirx_dev;
> +	ret = hdmirx_register_stream_vdev(stream);
> +	if (ret < 0) {
> +		dev_err(dev, "register video device failed\n");
> +		goto err_unreg_v4l2_dev;
> +	}
> +
> +	ret = hdmirx_register_cec(hdmirx_dev, pdev);
> +	if (ret)
> +		goto err_unreg_video_dev;
> +
> +	hdmirx_load_default_edid(hdmirx_dev);
> +
> +	hdmirx_enable_irq(dev);
> +
> +	return 0;
> +
> +err_unreg_video_dev:
> +	video_unregister_device(&hdmirx_dev->stream.vdev);
> +err_unreg_v4l2_dev:
> +	v4l2_device_unregister(&hdmirx_dev->v4l2_dev);
> +err_hdl:
> +	v4l2_ctrl_handler_free(&hdmirx_dev->hdl);
> +err_pm:
> +	hdmirx_disable(dev);
> +
> +	return ret;
> +}
> +
> +static void hdmirx_remove(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct snps_hdmirx_dev *hdmirx_dev = dev_get_drvdata(dev);
> +
> +	snps_hdmirx_cec_unregister(hdmirx_dev->cec);
> +	cec_notifier_conn_unregister(hdmirx_dev->cec_notifier);
> +
> +	hdmirx_disable_irq(dev);
> +
> +	video_unregister_device(&hdmirx_dev->stream.vdev);
> +	v4l2_ctrl_handler_free(&hdmirx_dev->hdl);
> +	v4l2_device_unregister(&hdmirx_dev->v4l2_dev);
> +
> +	hdmirx_disable(dev);
> +
> +	reset_control_bulk_assert(HDMIRX_NUM_RST, hdmirx_dev->resets);
> +
> +	of_reserved_mem_device_release(dev);
> +}
> +
> +static const struct of_device_id hdmirx_id[] = {
> +	{ .compatible = "rockchip,rk3588-hdmirx-ctrler" },
> +	{ },
> +};
> +MODULE_DEVICE_TABLE(of, hdmirx_id);
> +
> +static struct platform_driver hdmirx_driver = {
> +	.probe = hdmirx_probe,
> +	.remove = hdmirx_remove,
> +	.driver = {
> +		.name = "snps_hdmirx",
> +		.of_match_table = hdmirx_id,
> +		.pm = &snps_hdmirx_pm_ops,
> +	}
> +};
> +module_platform_driver(hdmirx_driver);
> +
> +MODULE_DESCRIPTION("Synopsys HDMI Receiver Driver");
> +MODULE_AUTHOR("Dingxian Wen <shawn.wen@rock-chips.com>");
> +MODULE_AUTHOR("Shreeya Patel <shreeya.patel@collabora.com>");
> +MODULE_LICENSE("GPL");

Regards,

	Hans

