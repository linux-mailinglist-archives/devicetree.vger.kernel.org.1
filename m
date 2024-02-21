Return-Path: <devicetree+bounces-44414-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F3DE085E272
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 17:03:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 238C41C245C3
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 16:03:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4566881ABE;
	Wed, 21 Feb 2024 16:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="aHeBsY2A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f74.google.com (mail-wr1-f74.google.com [209.85.221.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCFD981AA3
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 16:02:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708531354; cv=none; b=nBrm972E5KbVjusLs5TeY3wGgYNzRkAal6yzwGwCj4nxjAJFW6zqFKi7wWL95KiUuF5TR7pRS+j50B5hwV6fs+JThF5LaCDyMI3djFFj7ouQBY9ECU5qu5h2LkE78Rov81riWwmWhC6YwwOko9mOU4zPrQV1xFmODM0kDy/bdNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708531354; c=relaxed/simple;
	bh=+H6rvSd1RmIYXLWsmSKmwveEp9WRJgJ4LAtwMlLEhJw=;
	h=Date:Mime-Version:Message-ID:Subject:From:To:Cc:Content-Type; b=Z4v8QPiXC5R5/8AdHRbVCr4nJZru0rsJpU9MUeaigHklvNNIvc5qZkj65/oo4TD+uNDfq8dHlW7xTqpUJUrHmaMSjX/x833syAnJ+fOOAITTNhzFPETAX62E3Ukb3K1+9LABFY4usWqGtAZRq2ZrPJ1eDflmKNo7RyVs1j8a9W8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--panikiel.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=aHeBsY2A; arc=none smtp.client-ip=209.85.221.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--panikiel.bounces.google.com
Received: by mail-wr1-f74.google.com with SMTP id ffacd0b85a97d-33d7fcb70c2so336570f8f.1
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 08:02:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1708531350; x=1709136150; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FJVga6C02gm8F+WILMx3neboftdensw7Cuuwer2cEQA=;
        b=aHeBsY2A1d5dLni4sszxx1Kfw4UTKs8Dcae5lAqXWLgldgh0ewWtnEaVs8Cfw77Oso
         wqFt6NUS4r3WPt0otOow0bklN7Cu7gCg7znY37sDDy/wgn/R/0cJPG3ZlgUOUAdPtQnO
         7E75bgnQfzXQ7iOQUKg45UqnnzUU2XgFIGc/4O6I5tkSVL+MlnlEX0V42gTkz3c6JGoD
         D3oELuDLAVMzyMXV0TOBWVBXz2gql9khbPt80WU3M2zkml4nm3AiMlRodYL5okSeUCuJ
         pEmqbD52NK6aii0xSZnX3RMcULbBZ8hlyZyx8FZ6eCSjhJQX2/E1a/hClzgddelN3sqx
         XvIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708531350; x=1709136150;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FJVga6C02gm8F+WILMx3neboftdensw7Cuuwer2cEQA=;
        b=aICd2YoC3aMUSARxsiG7+bHWbn1x0m0ioRJTlU62F34B8HTWztuHAZ24rorR8annNc
         /niuiPV1TPH6WfWyrG8fKUxarnvpTAQDr9u7cZ+zxHK7gWvWHejLSABTIII8sgK6fwrk
         Gn7n3lBAmO4NoJ9Lw2XYWYxCA83WyIbbXOjDksuGSQlxXIm0LgwaJLql5iiB+U4qjVCr
         H/q8pZGze7tv5sKorIhRhLb8rj25rROv5+NCDMuy3VJ4AjUJGHXf7q7bEpovznCHyOfF
         JYEdABMqN0iegqzLOZ4/6LYEbzPj7vb++kZEvHR4zegj4q0jZVPmQW0DTRGuhNM11dHX
         Cstg==
X-Gm-Message-State: AOJu0YwmCa99CkeeBeB+PY1z4Na1WRyIQjZzjI7dSwglRtKrbDnFe6Vl
	oL4gfg9a5rxIAdpR6MKXAJEdn+r/F8BbRr1wdvB9lKiTcNTNT5KI8cr0vCsToUODGyaEeeAg26/
	tSufYKHSBHw==
X-Google-Smtp-Source: AGHT+IEooKRp2zKGUK2syFgTA3tTV4kAt1EwuYhu4+TtSMP3vQ9G88kPNi9mc3bYpxIMwIx+9Ey3AiIC1zmmfQ==
X-Received: from szatan.c.googlers.com ([fda3:e722:ac3:cc00:28:9cb1:c0a8:2d83])
 (user=panikiel job=sendgmr) by 2002:adf:ce90:0:b0:33d:87e6:c960 with SMTP id
 r16-20020adfce90000000b0033d87e6c960mr89wrn.6.1708531350183; Wed, 21 Feb 2024
 08:02:30 -0800 (PST)
Date: Wed, 21 Feb 2024 16:02:06 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.44.0.rc0.258.g7320e95886-goog
Message-ID: <20240221160215.484151-1-panikiel@google.com>
Subject: [PATCH v2 0/9] Add Chameleon v3 video support
From: "=?UTF-8?q?Pawe=C5=82=20Anikiel?=" <panikiel@google.com>
To: airlied@gmail.com, akpm@linux-foundation.org, conor+dt@kernel.org, 
	daniel@ffwll.ch, dinguyen@kernel.org, hverkuil-cisco@xs4all.nl, 
	krzysztof.kozlowski+dt@linaro.org, maarten.lankhorst@linux.intel.com, 
	mchehab@kernel.org, mripard@kernel.org, robh+dt@kernel.org, 
	tzimmermann@suse.de
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	chromeos-krk-upstreaming@google.com, ribalda@chromium.org, 
	"=?UTF-8?q?Pawe=C5=82=20Anikiel?=" <panikiel@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Google Chameleon v3 is a testing device capable of emulating multiple
DisplayPort monitors, used for testing purposes.  It is based on an Arria
10 SoCFPGA.  This patchset adds V4L2 drivers for two IP blocks used in
the device's FPGA: the Chameleon v3 framebuffer, and the Intel DisplayPort
RX IP.  The former is a video capture device that takes video signal and
writes frames into memory, which can be later processed by userspace.
The latter is a DisplayPort receiver IP from Intel, its datasheet can
be found at:
https://www.intel.com/programmable/technical-pdfs/683273.pdf

The framebuffer driver is a regular v4l2 capture device driver, while
the DP RX driver is a v4l2 subdevice driver. In order to avoid code
duplication, some parts of the DisplayPort code from the DRM subsystem
were put into headers usable by the DP RX driver. Apart from that, the
patchset adds a new callback to the internal v4l2 subdevice API to allow
querying the dv timings of individual video streams of the DP receiver.

v2 changes:
  - Add missing includes in dt binding examples
  - Add version number to intel,dprx compatible
  - Use generic node names in dts
  - Add and document IP configuration parameters
  - Remove IRQ registers from intel-dprx (they're not a part of the IP)
  - Remove no-endpoint property and check for "port" node instead

Pawe=C5=82 Anikiel (9):
  media: v4l2-subdev: Add a pad variant of .query_dv_timings()
  media: Add Chameleon v3 framebuffer driver
  drm/dp_mst: Move DRM-independent structures to separate header
  lib: Move DisplayPort CRC functions to common lib
  drm/display: Add mask definitions for DP_PAYLOAD_ALLOCATE_* registers
  media: intel: Add Displayport RX IP driver
  media: dt-bindings: Add Chameleon v3 framebuffer
  media: dt-bindings: Add Intel Displayport RX IP
  ARM: dts: chameleonv3: Add video device nodes

 .../bindings/media/google,chv3-fb.yaml        |   67 +
 .../devicetree/bindings/media/intel,dprx.yaml |  160 ++
 .../socfpga/socfpga_arria10_chameleonv3.dts   |  152 ++
 drivers/gpu/drm/display/Kconfig               |    1 +
 drivers/gpu/drm/display/drm_dp_mst_topology.c |   76 +-
 drivers/media/platform/Kconfig                |    1 +
 drivers/media/platform/Makefile               |    1 +
 drivers/media/platform/google/Kconfig         |    3 +
 drivers/media/platform/google/Makefile        |    2 +
 .../media/platform/google/chameleonv3/Kconfig |   13 +
 .../platform/google/chameleonv3/Makefile      |    3 +
 .../platform/google/chameleonv3/chv3-fb.c     |  895 +++++++
 drivers/media/platform/intel/Kconfig          |   12 +
 drivers/media/platform/intel/Makefile         |    1 +
 drivers/media/platform/intel/intel-dprx.c     | 2176 +++++++++++++++++
 drivers/media/v4l2-core/v4l2-subdev.c         |   11 +
 include/drm/display/drm_dp.h                  |    9 +-
 include/drm/display/drm_dp_mst.h              |  238 ++
 include/drm/display/drm_dp_mst_helper.h       |  232 +-
 include/linux/crc-dp.h                        |   10 +
 include/media/v4l2-subdev.h                   |    5 +
 lib/Kconfig                                   |    8 +
 lib/Makefile                                  |    1 +
 lib/crc-dp.c                                  |   78 +
 24 files changed, 3851 insertions(+), 304 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/google,chv3-fb.=
yaml
 create mode 100644 Documentation/devicetree/bindings/media/intel,dprx.yaml
 create mode 100644 drivers/media/platform/google/Kconfig
 create mode 100644 drivers/media/platform/google/Makefile
 create mode 100644 drivers/media/platform/google/chameleonv3/Kconfig
 create mode 100644 drivers/media/platform/google/chameleonv3/Makefile
 create mode 100644 drivers/media/platform/google/chameleonv3/chv3-fb.c
 create mode 100644 drivers/media/platform/intel/intel-dprx.c
 create mode 100644 include/drm/display/drm_dp_mst.h
 create mode 100644 include/linux/crc-dp.h
 create mode 100644 lib/crc-dp.c

--=20
2.44.0.rc0.258.g7320e95886-goog


