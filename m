Return-Path: <devicetree+bounces-11775-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BBDDD7D6903
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 12:40:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4413AB210A2
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:40:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F159920314;
	Wed, 25 Oct 2023 10:40:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04A5815491
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 10:40:09 +0000 (UTC)
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2A2AD7D;
	Wed, 25 Oct 2023 03:40:04 -0700 (PDT)
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id 7C8DC24E277;
	Wed, 25 Oct 2023 18:39:58 +0800 (CST)
Received: from EXMBX061.cuchost.com (172.16.6.61) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 25 Oct
 2023 18:39:58 +0800
Received: from xiaofei.localdomain (180.164.60.184) by EXMBX061.cuchost.com
 (172.16.6.61) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 25 Oct
 2023 18:39:57 +0800
From: Keith Zhao <keith.zhao@starfivetech.com>
To: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
	<linux-media@vger.kernel.org>, <linaro-mm-sig@lists.linaro.org>
CC: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, "Rob
 Herring" <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
	"Emil Renner Berthing" <kernel@esmil.dk>, Paul Walmsley
	<paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou
	<aou@eecs.berkeley.edu>, Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, Philipp Zabel
	<p.zabel@pengutronix.de>, Sumit Semwal <sumit.semwal@linaro.org>,
	<christian.koenig@amd.com>, Bjorn Andersson <andersson@kernel.org>, "Heiko
 Stuebner" <heiko@sntech.de>, Shawn Guo <shawnguo@kernel.org>, Jagan Teki
	<jagan@edgeble.ai>, Chris Morgan <macromorgan@hotmail.com>, Keith Zhao
	<keith.zhao@starfivetech.com>, Jack Zhu <jack.zhu@starfivetech.com>,
	Shengyang Chen <shengyang.chen@starfivetech.com>, Changhuang Liang
	<changhuang.liang@starfivetech.com>
Subject: [PATCH v2 0/6] DRM driver for verisilicon
Date: Wed, 25 Oct 2023 18:39:51 +0800
Message-ID: <20231025103957.3776-1-keith.zhao@starfivetech.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="y"
X-Originating-IP: [180.164.60.184]
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX061.cuchost.com
 (172.16.6.61)
X-YovoleRuleAgent: yovoleflag
Content-Transfer-Encoding: quoted-printable

This patch is a drm driver for Starfive Soc JH7110,
I am sending Drm driver part and HDMI driver part.

We used GEM framework for buffer management , and=20
for buffer allocation,we use DMA APIs.

the Starfive HDMI servers as interface between a LCD=20
Controller and a HDMI bus. A HDMI TX consists of one=20
HDMI transmitter controller and one HDMI transmitter PHY.
(Sound support is not include in this patch)

This patchset should be applied after the patchset:
https://patchwork.kernel.org/project/linux-clk/cover/20230713113902.56519=
-1-xingyu.wu@starfivetech.com/

V1:
Changes since v1:
- Further standardize the yaml file.
- Dts naming convention improved.
- Fix the problem of compiling and loading ko files.
- Use drm new api to automatically manage resources.
- Drop struct vs_crtc_funcs&vs_plane_funcs=A3=ACsubdivide the plane's hel=
p interface
- Reduce the modifiers unused.
- Optimize the hdmi driver code

V2:
Changes since v2:
- fix the error about checking the yaml file.
- match drm driver GEM DMA API.
- Delete the custom crtc property .
- hdmi use drmm_ new api to automatically manage resources.
- update the modifiers comments.
- enabling KASAN, fix the error during removing module=20

Keith Zhao (6):
  dt-bindings: display: Add yamls for JH7110 display system
  riscv: dts: starfive: jh7110: add dc controller and hdmi node
  drm/fourcc: Add drm/vs tiled modifiers
  drm/vs: Register DRM device
  drm/vs: Add KMS crtc&plane
  drm/vs: Add hdmi driver

 .../starfive/starfive,display-subsystem.yaml  |   41 +
 .../starfive/starfive,jh7110-dc8200.yaml      |  109 +
 .../starfive/starfive,jh7110-inno-hdmi.yaml   |   85 +
 MAINTAINERS                                   |    7 +
 .../jh7110-starfive-visionfive-2.dtsi         |   91 +
 arch/riscv/boot/dts/starfive/jh7110.dtsi      |   41 +
 drivers/gpu/drm/Kconfig                       |    2 +
 drivers/gpu/drm/Makefile                      |    1 +
 drivers/gpu/drm/verisilicon/Kconfig           |   21 +
 drivers/gpu/drm/verisilicon/Makefile          |   12 +
 drivers/gpu/drm/verisilicon/starfive_hdmi.c   |  949 ++++++++
 drivers/gpu/drm/verisilicon/starfive_hdmi.h   |  295 +++
 drivers/gpu/drm/verisilicon/vs_crtc.c         |  257 +++
 drivers/gpu/drm/verisilicon/vs_crtc.h         |   43 +
 drivers/gpu/drm/verisilicon/vs_dc.c           | 1002 +++++++++
 drivers/gpu/drm/verisilicon/vs_dc.h           |   80 +
 drivers/gpu/drm/verisilicon/vs_dc_hw.c        | 1959 +++++++++++++++++
 drivers/gpu/drm/verisilicon/vs_dc_hw.h        |  492 +++++
 drivers/gpu/drm/verisilicon/vs_drv.c          |  234 ++
 drivers/gpu/drm/verisilicon/vs_drv.h          |   31 +
 drivers/gpu/drm/verisilicon/vs_modeset.c      |   36 +
 drivers/gpu/drm/verisilicon/vs_modeset.h      |   10 +
 drivers/gpu/drm/verisilicon/vs_plane.c        |  526 +++++
 drivers/gpu/drm/verisilicon/vs_plane.h        |   58 +
 drivers/gpu/drm/verisilicon/vs_type.h         |   69 +
 include/uapi/drm/drm_fourcc.h                 |   57 +
 include/uapi/drm/vs_drm.h                     |   50 +
 27 files changed, 6558 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/starfive/st=
arfive,display-subsystem.yaml
 create mode 100644 Documentation/devicetree/bindings/display/starfive/st=
arfive,jh7110-dc8200.yaml
 create mode 100644 Documentation/devicetree/bindings/display/starfive/st=
arfive,jh7110-inno-hdmi.yaml
 create mode 100644 drivers/gpu/drm/verisilicon/Kconfig
 create mode 100644 drivers/gpu/drm/verisilicon/Makefile
 create mode 100644 drivers/gpu/drm/verisilicon/starfive_hdmi.c
 create mode 100644 drivers/gpu/drm/verisilicon/starfive_hdmi.h
 create mode 100644 drivers/gpu/drm/verisilicon/vs_crtc.c
 create mode 100644 drivers/gpu/drm/verisilicon/vs_crtc.h
 create mode 100644 drivers/gpu/drm/verisilicon/vs_dc.c
 create mode 100644 drivers/gpu/drm/verisilicon/vs_dc.h
 create mode 100644 drivers/gpu/drm/verisilicon/vs_dc_hw.c
 create mode 100644 drivers/gpu/drm/verisilicon/vs_dc_hw.h
 create mode 100644 drivers/gpu/drm/verisilicon/vs_drv.c
 create mode 100644 drivers/gpu/drm/verisilicon/vs_drv.h
 create mode 100644 drivers/gpu/drm/verisilicon/vs_modeset.c
 create mode 100644 drivers/gpu/drm/verisilicon/vs_modeset.h
 create mode 100644 drivers/gpu/drm/verisilicon/vs_plane.c
 create mode 100644 drivers/gpu/drm/verisilicon/vs_plane.h
 create mode 100644 drivers/gpu/drm/verisilicon/vs_type.h
 create mode 100644 include/uapi/drm/vs_drm.h

--=20
2.34.1


