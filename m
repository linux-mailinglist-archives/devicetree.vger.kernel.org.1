Return-Path: <devicetree+bounces-21752-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 36010805036
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 11:32:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D6DE11F214E6
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 10:32:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 835CA51C36;
	Tue,  5 Dec 2023 10:32:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
X-Greylist: delayed 288 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 05 Dec 2023 02:32:37 PST
Received: from 189.cn (ptr.189.cn [183.61.185.102])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id B42F5BA;
	Tue,  5 Dec 2023 02:32:37 -0800 (PST)
HMM_SOURCE_IP:10.64.8.31:56582.66917648
HMM_ATTACHE_NUM:0000
HMM_SOURCE_TYPE:SMTP
Received: from clientip-106.39.148.68 (unknown [10.64.8.31])
	by 189.cn (HERMES) with SMTP id C166E1001E8;
	Tue,  5 Dec 2023 18:27:44 +0800 (CST)
Received: from  ([106.39.148.68])
	by gateway-151646-dep-64bdf77f94-vkj2l with ESMTP id b40fada1729c49d09c097b89903bb9bf for keith.zhao@starfivetech.com;
	Tue, 05 Dec 2023 18:27:46 CST
X-Transaction-ID: b40fada1729c49d09c097b89903bb9bf
X-Real-From: 15330273260@189.cn
X-Receive-IP: 106.39.148.68
X-MEDUSA-Status: 0
Sender: 15330273260@189.cn
Message-ID: <f6beefa7-ebff-49a6-aa58-5aced4eeb1fb@189.cn>
Date: Tue, 5 Dec 2023 18:27:43 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [v3 0/6] DRM driver for verisilicon
To: Keith Zhao <keith.zhao@starfivetech.com>, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org
Cc: aou@eecs.berkeley.edu, tzimmermann@suse.de, paul.walmsley@sifive.com,
 mripard@kernel.org, xingyu.wu@starfivetech.com, jack.zhu@starfivetech.com,
 palmer@dabbelt.com, krzysztof.kozlowski+dt@linaro.org,
 william.qiu@starfivetech.com, shengyang.chen@starfivetech.com,
 changhuang.liang@starfivetech.com
References: <20231204123315.28456-1-keith.zhao@starfivetech.com>
Content-Language: en-US
From: Sui Jingfeng <15330273260@189.cn>
In-Reply-To: <20231204123315.28456-1-keith.zhao@starfivetech.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

HI,

This series are very interesting and nice!


On 2023/12/4 20:33, Keith Zhao wrote:
> This patch is a drm driver for Starfive Soc JH7110,

'SoC' : System on Chip, no more 'Soc' or 'soc' please.

> I am sending Drm driver part and HDMI driver part.


'DRM' or 'drm' nor Drm. DRM: Direct Rendering Manager.

Typically you should only *capitalize* the *first* letter of the first word
in a sentence, while this Drm appears in the middle of this sentence.

Please also improve the English written also, for example:

This series is a DRM driver for Starfive Soc JH7110, which contains (consists of)
a KMS driver for the vivante DC8200 display controller and a HDMI transmitter driver.


>
> We used GEM framework for buffer management,
> and for buffer allocation,we use DMA APIs.
>
> the Starfive HDMI servers as interface between a LCD Controller

'servers' -> 'serve as', because server is a noun.

> and a HDMI bus.
> A HDMI TX consists of one HDMI transmitter controller
> and one HDMI transmitter PHY.
> (Sound support is not include in this patch)
>
> This patchset should be applied on next branch.
>
> V1:
> Changes since v1:
> - Further standardize the yaml file.
> - Dts naming convention improved.
> - Fix the problem of compiling and loading ko files.
> - Use drm new api to automatically manage resources.
> - Drop vs_crtc_funcs&vs_plane_funcs, subdivide the plane's help interface.
> - Reduce the modifiers unused.
> - Optimize the hdmi driver code
>
> V2:
> Changes since v2:
> - fix the error about checking the yaml file.
> - match drm driver GEM DMA API.
> - Delete the custom crtc property .
> - hdmi use drmm_ new api to automatically manage resources.
> - update the modifiers comments.
> - enabling KASAN, fix the error during removing module
>
> V3:
> Changes since v3:
> - Delete the custom plane property.
> - Delete the custom fourcc modifiers.
> - Adjust the calculation mode of hdmi pixclock.
> - Add match data for dc8200 driver.
> - Adjust some magic values.
> - Add a simple encoder for dsi output.
>
> Keith Zhao (6):
>    dt-bindings: display: Add yamls for JH7110 display system
>    riscv: dts: starfive: jh7110: display subsystem
>    drm/vs: Register DRM device
>    drm/vs: Add KMS crtc&plane
>    drm/vs: Add hdmi driver
>    drm/vs: simple encoder
>
>   .../starfive/starfive,display-subsystem.yaml  |  104 ++
>   .../starfive/starfive,dsi-encoder.yaml        |   92 ++
>   .../starfive/starfive,jh7110-dc8200.yaml      |  113 ++
>   .../starfive/starfive,jh7110-inno-hdmi.yaml   |   82 ++
>   .../soc/starfive/starfive,jh7110-syscon.yaml  |    1 +
>   MAINTAINERS                                   |    8 +
>   .../jh7110-starfive-visionfive-2.dtsi         |  134 ++
>   arch/riscv/boot/dts/starfive/jh7110.dtsi      |   49 +
>   drivers/gpu/drm/Kconfig                       |    2 +
>   drivers/gpu/drm/Makefile                      |    1 +
>   drivers/gpu/drm/verisilicon/Kconfig           |   21 +
>   drivers/gpu/drm/verisilicon/Makefile          |   12 +
>   drivers/gpu/drm/verisilicon/starfive_hdmi.c   |  849 ++++++++++++
>   drivers/gpu/drm/verisilicon/starfive_hdmi.h   |  304 +++++
>   drivers/gpu/drm/verisilicon/vs_crtc.c         |  208 +++
>   drivers/gpu/drm/verisilicon/vs_crtc.h         |   42 +
>   drivers/gpu/drm/verisilicon/vs_dc.c           | 1192 +++++++++++++++++
>   drivers/gpu/drm/verisilicon/vs_dc.h           |   67 +
>   drivers/gpu/drm/verisilicon/vs_dc_hw.c        | 1022 ++++++++++++++
>   drivers/gpu/drm/verisilicon/vs_dc_hw.h        |  580 ++++++++
>   drivers/gpu/drm/verisilicon/vs_drv.c          |  323 +++++
>   drivers/gpu/drm/verisilicon/vs_drv.h          |   46 +
>   drivers/gpu/drm/verisilicon/vs_modeset.c      |   39 +
>   drivers/gpu/drm/verisilicon/vs_modeset.h      |   10 +
>   drivers/gpu/drm/verisilicon/vs_plane.c        |  301 +++++
>   drivers/gpu/drm/verisilicon/vs_plane.h        |   39 +
>   drivers/gpu/drm/verisilicon/vs_simple_enc.c   |  195 +++
>   drivers/gpu/drm/verisilicon/vs_simple_enc.h   |   23 +
>   drivers/gpu/drm/verisilicon/vs_type.h         |   69 +
>   29 files changed, 5928 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/display/starfive/starfive,display-subsystem.yaml
>   create mode 100644 Documentation/devicetree/bindings/display/starfive/starfive,dsi-encoder.yaml
>   create mode 100644 Documentation/devicetree/bindings/display/starfive/starfive,jh7110-dc8200.yaml
>   create mode 100644 Documentation/devicetree/bindings/display/starfive/starfive,jh7110-inno-hdmi.yaml
>   create mode 100644 drivers/gpu/drm/verisilicon/Kconfig
>   create mode 100644 drivers/gpu/drm/verisilicon/Makefile
>   create mode 100644 drivers/gpu/drm/verisilicon/starfive_hdmi.c
>   create mode 100644 drivers/gpu/drm/verisilicon/starfive_hdmi.h
>   create mode 100644 drivers/gpu/drm/verisilicon/vs_crtc.c
>   create mode 100644 drivers/gpu/drm/verisilicon/vs_crtc.h
>   create mode 100644 drivers/gpu/drm/verisilicon/vs_dc.c
>   create mode 100644 drivers/gpu/drm/verisilicon/vs_dc.h
>   create mode 100644 drivers/gpu/drm/verisilicon/vs_dc_hw.c
>   create mode 100644 drivers/gpu/drm/verisilicon/vs_dc_hw.h
>   create mode 100644 drivers/gpu/drm/verisilicon/vs_drv.c
>   create mode 100644 drivers/gpu/drm/verisilicon/vs_drv.h
>   create mode 100644 drivers/gpu/drm/verisilicon/vs_modeset.c
>   create mode 100644 drivers/gpu/drm/verisilicon/vs_modeset.h
>   create mode 100644 drivers/gpu/drm/verisilicon/vs_plane.c
>   create mode 100644 drivers/gpu/drm/verisilicon/vs_plane.h
>   create mode 100644 drivers/gpu/drm/verisilicon/vs_simple_enc.c
>   create mode 100644 drivers/gpu/drm/verisilicon/vs_simple_enc.h
>   create mode 100644 drivers/gpu/drm/verisilicon/vs_type.h
>

