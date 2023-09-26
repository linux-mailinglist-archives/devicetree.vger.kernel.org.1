Return-Path: <devicetree+bounces-3291-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD0E7AE251
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 01:35:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 9B48D281475
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 23:35:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 422D2262BA;
	Mon, 25 Sep 2023 23:35:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BE6E262B3
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 23:35:07 +0000 (UTC)
Received: from mo-csw.securemx.jp (mo-csw1801.securemx.jp [210.130.202.135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A495010A;
	Mon, 25 Sep 2023 16:35:05 -0700 (PDT)
Received: by mo-csw.securemx.jp (mx-mo-csw1801) id 38PNYYKI916596; Tue, 26 Sep 2023 08:34:34 +0900
X-Iguazu-Qid: 2yAaOS3aFSpfO9O1tT
X-Iguazu-QSIG: v=2; s=0; t=1695684873; q=2yAaOS3aFSpfO9O1tT; m=7wX4E90bFd4ma85p1R3YT6pZKoeimqEkQGdwTD8cSwU=
Received: from imx2-a.toshiba.co.jp (imx2-a.toshiba.co.jp [106.186.93.35])
	by relay.securemx.jp (mx-mr1802) id 38PNYWHb3789012
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Tue, 26 Sep 2023 08:34:33 +0900
X-SA-MID: 8623328
From: Yuji Ishikawa <yuji2.ishikawa@toshiba.co.jp>
To: Hans Verkuil <hverkuil@xs4all.nl>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
        Yuji Ishikawa <yuji2.ishikawa@toshiba.co.jp>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v8 0/5] Add Toshiba Visconti Video Input Interface driver
Date: Tue, 26 Sep 2023 08:28:01 +0900
X-TSB-HOP2: ON
Message-Id: <20230925232806.950683-1-yuji2.ishikawa@toshiba.co.jp>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This series is the Video Input Interface driver
for Toshiba's ARM SoC, Visconti.
This provides DT binding documentation,
device driver, documentation and MAINTAINER files.

A visconti VIIF driver instance exposes
1 media control device file and 3 video device files
for a VIIF hardware.
Detailed HW/SW are described in documentation directory.
The VIIF hardware has CSI2 receiver,
image signal processor and DMAC inside.
The subdevice for image signal processor provides
vendor specific V4L2 controls.

The device driver depends on two other drivers under development;
clock framework driver and IOMMU driver.
Corresponding features will be added later.

Best regards,
Yuji

Changelog v2:
- Resend v1 because a patch exceeds size limit.

Changelog v3:
- Add documentation to describe SW and HW
- Adapted to media control framework
- Introduced ISP subdevice, capture device
- Remove private IOCTLs and add vendor specific V4L2 controls
- Change function name avoiding camelcase and uppercase letters

Changelog v4:
- Split patches because a patch exceeds size limit
- fix dt-bindings document
- stop specifying ID numbers for driver instance explicitly at device tree
- use pm_runtime to trigger initialization of HW
  along with open/close of device files.
- add a entry for a header file at MAINTAINERS file

Changelog v5:
- Fix coding style problem in viif.c (patch 2/6)

Changelog v6:
- add register definition of BUS-IF and MPU in dt-bindings
- add CSI2RX subdevice (separeted from ISP subdevice)
- change directory layout (moved to media/platform/toshiba/visconti)
- change source file layout (removed hwd_xxxx.c)
- pointer to userland memory is removed from uAPI parameters
- change register access (from struct style to macro style)
- remove unused macros

Changelog v7:
- remove redundant "bindings" from header and description text
- fix multiline text of "description"
- change "compatible" to "visconti5-viif"
- explicitly define allowed properties for port::endpoint
- remove unused variables
- update kerneldoc comments
- update references to headers

Changelog v8:
- rename bindings description file
- remove/simplify items in bindings
- update operations around v4l2_async_notifier
- use v4l2_async_connection instead of v4l2_async_subdev
- use dev_err_probe()
- better error handling at probe
- remove redundant mutex
- add V4L2_CTRL_TYPE_VISCONTI_ISP constant

Yuji Ishikawa (5):
  dt-bindings: media: platform: visconti: Add Toshiba Visconti Video
    Input Interface
  media: platform: visconti: Add Toshiba Visconti Video Input Interface
    driver
  media: add V4L2 vendor specific control handlers
  documentation: media: add documentation for Toshiba Visconti Video
    Input Interface driver
  MAINTAINERS: Add entries for Toshiba Visconti Video Input Interface

 .../media/toshiba,visconti5-viif.yaml         |  105 +
 .../driver-api/media/drivers/index.rst        |    1 +
 .../media/drivers/visconti-viif.rst           |  462 +++
 .../media/v4l/vidioc-g-ext-ctrls.rst          |    4 +
 .../media/v4l/vidioc-queryctrl.rst            |    5 +
 MAINTAINERS                                   |    4 +
 drivers/media/platform/Kconfig                |    1 +
 drivers/media/platform/Makefile               |    1 +
 drivers/media/platform/toshiba/Kconfig        |    6 +
 drivers/media/platform/toshiba/Makefile       |    2 +
 .../media/platform/toshiba/visconti/Kconfig   |   18 +
 .../media/platform/toshiba/visconti/Makefile  |    8 +
 .../media/platform/toshiba/visconti/viif.c    |  650 ++++
 .../media/platform/toshiba/visconti/viif.h    |  374 ++
 .../platform/toshiba/visconti/viif_capture.c  | 1489 ++++++++
 .../platform/toshiba/visconti/viif_capture.h  |   22 +
 .../platform/toshiba/visconti/viif_common.c   |  199 +
 .../platform/toshiba/visconti/viif_common.h   |   38 +
 .../platform/toshiba/visconti/viif_controls.c | 3394 +++++++++++++++++
 .../platform/toshiba/visconti/viif_controls.h |   18 +
 .../platform/toshiba/visconti/viif_csi2rx.c   |  691 ++++
 .../platform/toshiba/visconti/viif_csi2rx.h   |   24 +
 .../toshiba/visconti/viif_csi2rx_regs.h       |  102 +
 .../platform/toshiba/visconti/viif_isp.c      | 1259 ++++++
 .../platform/toshiba/visconti/viif_isp.h      |   24 +
 .../platform/toshiba/visconti/viif_regs.h     |  716 ++++
 drivers/media/v4l2-core/v4l2-ctrls-core.c     |    7 +-
 include/uapi/linux/v4l2-controls.h            |    6 +
 include/uapi/linux/videodev2.h                |    2 +
 include/uapi/linux/visconti_viif.h            | 1800 +++++++++
 30 files changed, 11431 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/media/toshiba,visconti5-viif.yaml
 create mode 100644 Documentation/driver-api/media/drivers/visconti-viif.rst
 create mode 100644 drivers/media/platform/toshiba/Kconfig
 create mode 100644 drivers/media/platform/toshiba/Makefile
 create mode 100644 drivers/media/platform/toshiba/visconti/Kconfig
 create mode 100644 drivers/media/platform/toshiba/visconti/Makefile
 create mode 100644 drivers/media/platform/toshiba/visconti/viif.c
 create mode 100644 drivers/media/platform/toshiba/visconti/viif.h
 create mode 100644 drivers/media/platform/toshiba/visconti/viif_capture.c
 create mode 100644 drivers/media/platform/toshiba/visconti/viif_capture.h
 create mode 100644 drivers/media/platform/toshiba/visconti/viif_common.c
 create mode 100644 drivers/media/platform/toshiba/visconti/viif_common.h
 create mode 100644 drivers/media/platform/toshiba/visconti/viif_controls.c
 create mode 100644 drivers/media/platform/toshiba/visconti/viif_controls.h
 create mode 100644 drivers/media/platform/toshiba/visconti/viif_csi2rx.c
 create mode 100644 drivers/media/platform/toshiba/visconti/viif_csi2rx.h
 create mode 100644 drivers/media/platform/toshiba/visconti/viif_csi2rx_regs.h
 create mode 100644 drivers/media/platform/toshiba/visconti/viif_isp.c
 create mode 100644 drivers/media/platform/toshiba/visconti/viif_isp.h
 create mode 100644 drivers/media/platform/toshiba/visconti/viif_regs.h
 create mode 100644 include/uapi/linux/visconti_viif.h

-- 
2.34.1



