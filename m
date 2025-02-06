Return-Path: <devicetree+bounces-143697-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F65FA2AFA8
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 19:03:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 478E418872D5
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 18:03:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C915619AA56;
	Thu,  6 Feb 2025 18:03:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="MWCLsFYp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D7C8194A6B
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 18:03:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738865011; cv=none; b=ELHPk5DgZN2wJ6EHLZLid/xnzKnwMgMzAux7Pwi7GTXZ9gybtACpWBAWxlXcAWPMQQ9YTFDDCkgA7XatNSMlwJY5jwTW1ExQEAE6AzjWegjSSaME4L/In1fG6dmHVrjXeBPDg5AcK69Q6QvPYnYMpp4Bkiy3BAIOcSu2uZh53Q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738865011; c=relaxed/simple;
	bh=7hP+rSwoeE5qG5/Xty1ujjTbvLWD0qDtdgnqs4OOOQ8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=qR1vSQNErvUU3opK6LbMVGlUNJOmBVJ8odlYEZgfr2fPcL6x1//eOlcKlpIlAYCR/NdH5oSo70+fCcDEeaitFKjqm7OYptjJ2tr93fAF7vtRp/F6Lo6q5stH0i6cIR2ND2gGaIP4E/x4pY3ACKmo0FaewEnRbhWlcDOPu96JO84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=MWCLsFYp; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-43625c4a50dso8384695e9.0
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 10:03:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1738865008; x=1739469808; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1Q6D1glOjdgDWPkLJQVMYk7crGRTZz+YiQKf3N7w+Qk=;
        b=MWCLsFYpUk5a7tCxuYgPJCrZu4T/SwbDFYGW9/StH+vhjAj0dlbKBjQljjlTYnBzmP
         BxX3QJJuc7Kxkrim5q8M2dIP2FoXM5sCiD/GEt7qgtpX9d2k3lJaCa0q5fU27jcPmj5b
         D1nkbadcn4UzXMLpnKj1niOUife1U/XWPmdUQIdE0OiR66zPArQnzTRbB9MTM06Uj+7N
         iabgstb49BOpqC4t+7HLzK+u+WyvWYvLAQIvike90zzgLApk2cCpictL1kqVCortPeyZ
         P9cRp30QZQyZBFFFusJ/EF6S5PFZ23aePoKqgyV0gbmoMpOhL/7GWfXbh3Xw2U9BwJe/
         hbNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738865008; x=1739469808;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1Q6D1glOjdgDWPkLJQVMYk7crGRTZz+YiQKf3N7w+Qk=;
        b=Bn+Qb/XLeD59LY8/g6dMmFt/yDpLuKvFElT3RHMqP1e4r09ImiJvCpAULOxMCX2ocE
         9OWBZiB6V6GqJaQHygz6P3JexgLd+/s+BtMGyrNLjuIkaPC031gAPxFS2/+LYO8lWIFD
         QFkLXJZOU9l+GfqhSSeyNOB/2jVCusXiC1Dy6uDCiBe0vkmAbWXp+hGccrnqbQj9jgKu
         EjOv2dViKN9z8ChHf1F7maFEPjhLyafAg+I+dkCBBhU2DfgWTRwqoz9GBl5K9LFw3W8x
         qcIdME1bnQjYePGt/hKSPwZs1K+Uo1oHBgZ1LVT18pUwqo0jKoOZoHu1Cuof1YCycghz
         5byQ==
X-Forwarded-Encrypted: i=1; AJvYcCUSm4IJor05DiXfQ6q99iuuaVLQOwzwVP87+xmj85WmP4ueKzXwk+iWxlmY6QxF4NbkB2mA9gkkk1d7@vger.kernel.org
X-Gm-Message-State: AOJu0Yzbytf7BWL0WOlaPLRLUREKgZ9/qjcqGdo3bTY1PWu84qJYBmTt
	eIbIv8gqhGpDwG8hehq5TtTdDzZknmipyCOdU2uSpC/AOkG800v6+W6qJoT7qDPgxl4GjP2q0tJ
	6
X-Gm-Gg: ASbGncufUazdAJHBtWME4M3nu36qCcnrapqU2S203jgql3L4kRrb+C8woj2uN8M3esS
	piRXqtJwETAivIQijrD6XYaPFX3WFh7aRv9JBsE4cZr6Uxqu0l2fjhRYFxcEiUn2uVAkFTma7b1
	crorziTBdoPfDBT/ZMO8mKUNv5oXJarhdpqKFA83lpGrtelVk4omfkHQPS3Xu/+dgcOMmdeB3D2
	IT1Gy3Bo8hAyu9j4/MOygel0jgqsA+4wpET8BrGG74ndswbpCThxCkvST5KCuv0zQIGa+m9bOKQ
	LscnZQY=
X-Google-Smtp-Source: AGHT+IGNUmERthsVAqfy55sBzjIZT/AqZ0R6NQBJaWfyZ87mms552FZe0heIPp2GuyTIoDQsMLA6lw==
X-Received: by 2002:a5d:47a3:0:b0:38d:bf09:aa47 with SMTP id ffacd0b85a97d-38dbf09ad1amr2340371f8f.13.1738865007343;
        Thu, 06 Feb 2025 10:03:27 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-38dbdd3856fsm2278858f8f.28.2025.02.06.10.03.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 10:03:26 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Subject: [PATCH v2 0/5] Raspberry Pi HEVC decoder driver
Date: Thu, 06 Feb 2025 18:02:33 +0000
Message-Id: <20250206-media-rpi-hevc-dec-v2-0-69353c8805b2@raspberrypi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADn5pGcC/22NQQ6CMBBFr0Jm7Zh2wBhdeQ/DgraDzAJopqSRE
 O5uJS5dvpf89zdIrMIJ7tUGylmSzFMBOlXgh256MUooDGSosWQJRw7SoUbBgbPHwB5rd3F8rW9
 97QKUYVTu5X1En23hQdIy63p8ZPu1vxyZf7ls0aBh571pODTED+1SdKy6Rjn7eYR23/cPMrZN9
 LoAAAA=
To: Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 John Cox <john.cox@raspberrypi.com>, Dom Cobley <dom@raspberrypi.com>, 
 review list <kernel-list@raspberrypi.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: John Cox <jc@kynesim.co.uk>, linux-media@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.14.1

Hi All

This has been in the pipeline for a while, but I've finally cleaned
up our HEVC decoder driver to be in a shape to at least get a first
review.
John Cox has done almost all of the work under contract to Raspberry
Pi, and I'm largely just doing the process of patch curation and
sending.

There are a couple of questions raised in frameworks.
The main one is that the codec has 2 independent phases to the decode,
CABAC and reconstruction. To keep the decoder operating optimally
means that two requests need to be in process at once, whilst the
current frameworks don't want to allow as there is an implicit
assumption of only a single job being active at once, and
completition returns both buffers and releases the media request.

The OUTPUT queue buffer is finished with and can be returned at the
end of phase 1, but the media request is still required for phase 2.
The frameworks currently force the driver to be returning both
together via v4l2_m2m_buf_done_and_job_finish. v4l2_m2m_job_finish
would complete the job without returning the buffer as we need,
however if the driver has set VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF
then we have a WARN in v4l2_m2m_job_finish.
Dropping the WARN as this series is currently doing isn't going to be
the right answer, but it isn't obvious what the right answer is.
Discussion required.

We also have a need to hold on to the media request for phase 2. John
had discussed this with Ezequiel (and others) a couple of years back,
and hence suggested a patch that adds media_request_{pin,unpin} to
grab references on the media request. Discussion required on that
or a better way of handling it.

I will apologise in advance for sending this V1 just before I head off
on the Christmas break, but will respond to things as soon as possible.

Thanks
  Dave

v4l2-compliance output:
$ ./v4l-utils/build/utils/v4l2-compliance/v4l2-compliance
v4l2-compliance 1.29.0-5324, 64 bits, 64-bit time_t
v4l2-compliance SHA: 3116b579c38d 2025-02-05 14:42:29

Compliance test for rpi-hevc-dec device /dev/video0:

Driver Info:
	Driver name      : rpi-hevc-dec
	Card type        : rpi-hevc-dec
	Bus info         : platform:rpi-hevc-dec
	Driver version   : 6.13.0
	Capabilities     : 0x84204000
		Video Memory-to-Memory Multiplanar
		Streaming
		Extended Pix Format
		Device Capabilities
	Device Caps      : 0x04204000
		Video Memory-to-Memory Multiplanar
		Streaming
		Extended Pix Format
	Detected Stateless Decoder
Media Driver Info:
	Driver name      : rpi-hevc-dec
	Model            : rpi-hevc-dec
	Serial           : 
	Bus info         : platform:rpi-hevc-dec
	Media version    : 6.13.0
	Hardware revision: 0x00000000 (0)
	Driver version   : 6.13.0
Interface Info:
	ID               : 0x0300000c
	Type             : V4L Video
Entity Info:
	ID               : 0x00000001 (1)
	Name             : rpi-hevc-dec-source
	Function         : V4L2 I/O
	Pad 0x01000002   : 0: Source
	  Link 0x02000008: to remote pad 0x1000004 of entity
'rpi-hevc-dec-proc' (Video Decoder): Data, Enabled, Immutable

Required ioctls:
	test MC information (see 'Media Driver Info' above): OK
	test VIDIOC_QUERYCAP: OK
	test invalid ioctls: OK

Allow for multiple opens:
	test second /dev/video0 open: OK
	test VIDIOC_QUERYCAP: OK
	test VIDIOC_G/S_PRIORITY: OK
	test for unlimited opens: OK

Debug ioctls:
	test VIDIOC_DBG_G/S_REGISTER: OK (Not Supported)
	test VIDIOC_LOG_STATUS: OK (Not Supported)

Input ioctls:
	test VIDIOC_G/S_TUNER/ENUM_FREQ_BANDS: OK (Not Supported)
	test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
	test VIDIOC_S_HW_FREQ_SEEK: OK (Not Supported)
	test VIDIOC_ENUMAUDIO: OK (Not Supported)
	test VIDIOC_G/S/ENUMINPUT: OK (Not Supported)
	test VIDIOC_G/S_AUDIO: OK (Not Supported)
	Inputs: 0 Audio Inputs: 0 Tuners: 0

Output ioctls:
	test VIDIOC_G/S_MODULATOR: OK (Not Supported)
	test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
	test VIDIOC_ENUMAUDOUT: OK (Not Supported)
	test VIDIOC_G/S/ENUMOUTPUT: OK (Not Supported)
	test VIDIOC_G/S_AUDOUT: OK (Not Supported)
	Outputs: 0 Audio Outputs: 0 Modulators: 0

Input/Output configuration ioctls:
	test VIDIOC_ENUM/G/S/QUERY_STD: OK (Not Supported)
	test VIDIOC_ENUM/G/S/QUERY_DV_TIMINGS: OK (Not Supported)
	test VIDIOC_DV_TIMINGS_CAP: OK (Not Supported)
	test VIDIOC_G/S_EDID: OK (Not Supported)

Control ioctls:
	test VIDIOC_QUERY_EXT_CTRL/QUERYMENU: OK
	test VIDIOC_QUERYCTRL: OK
	test VIDIOC_G/S_CTRL: OK
		fail: v4l2-test-controls.cpp(939): try_ext_ctrls
returned an error (22)
	test VIDIOC_G/S/TRY_EXT_CTRLS: FAIL
	test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: OK
	test VIDIOC_G/S_JPEGCOMP: OK (Not Supported)
	Standard Controls: 3 Private Controls: 0
	Standard Compound Controls: 5 Private Compound Controls: 0

Format ioctls:
	test VIDIOC_ENUM_FMT/FRAMESIZES/FRAMEINTERVALS: OK
	test VIDIOC_G/S_PARM: OK (Not Supported)
	test VIDIOC_G_FBUF: OK (Not Supported)
	test VIDIOC_G_FMT: OK
	test VIDIOC_TRY_FMT: OK
	test VIDIOC_S_FMT: OK
	test VIDIOC_G_SLICED_VBI_CAP: OK (Not Supported)
	test Cropping: OK (Not Supported)
	test Composing: OK (Not Supported)
	test Scaling: OK (Not Supported)

Codec ioctls:
	test VIDIOC_(TRY_)ENCODER_CMD: OK (Not Supported)
	test VIDIOC_G_ENC_INDEX: OK (Not Supported)
	test VIDIOC_(TRY_)DECODER_CMD: OK

Buffer ioctls:
	test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: OK
	test CREATE_BUFS maximum buffers: OK
	test VIDIOC_REMOVE_BUFS: OK
	test VIDIOC_EXPBUF: OK
	test Requests: OK
	test blocking wait: OK

Total for rpi-hevc-dec device /dev/video0: 49, Succeeded: 48, Failed: 1,
Warnings: 0

I'm still working on getting Fluster running by adding support for SAND.
First stumbling block is finding all the points to add the new format -
pointers to an example would be very welcome. I have had it decoding with
Robert Mader's opaque DRM type and modifiers patches, but in a slightly
hacky manner.

Testing is mainly with a downstream patchset to FFmpeg. I'm told FFmpeg
currently has no stateless decode support, but we will be reviewing
works that have been in progress and our downstream patches to see
whether that can be pushed onwards.
Downstream tree is at
https://github.com/jc-kynesim/rpi-ffmpeg/tree/dev/5.1.6/sandm_1

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
Changes in v2:
- Rebased to use Hans' manual request completion scheme.
  https://lore.kernel.org/linux-media/cover.1724928939.git.hverkuil-cisco@xs4all.nl/
- Require all slices for a frame to be submitted in one request.
- Added the missing header file.
- Used the full macro name for pix format docs (Sakari)
- Dropped unneeded |- from dtbinding (Rob)
- Made reg and reg-names match in order (Rob)
- Removed clock-names from dtbinding (Rob)
- Driver changed to not request the clock by name
- Dropped clock-names from DTS file
- Minor fixes for compliance failures
  fail: v4l2-test-formats.cpp(958): fmt_cap.g_colorspace() != col
  fail: v4l2-test-buffers.cpp(901): q.create_bufs(node, 1, &fmt) != EINVAL
- v4l2-compliance output added to cover letter (Nicholas)
  I believe the "fail: v4l2-test-controls.cpp(939): try_ext_ctrls
  returned an error (22)" is expected as it is validating the SPS.
  Hantro and Cedrus certainly both appear to return errors in the same place
- Link to v1: https://lore.kernel.org/r/20241220-media-rpi-hevc-dec-v1-0-0ebcc04ed42e@raspberrypi.com

---
Dave Stevenson (4):
      docs: uapi: media: Document Raspberry Pi NV12 column format
      media: ioctl: Add pixel formats NV12MT_COL128 and NV12MT_10_COL128
      media: dt-bindings: media: Add binding for the Raspberry Pi HEVC decoder
      arm: dts: bcm2711-rpi: Add HEVC decoder node

John Cox (1):
      media: platform: Add Raspberry Pi HEVC decoder driver

 .../bindings/media/raspberrypi,hevc-dec.yaml       |   67 +
 .../userspace-api/media/v4l/pixfmt-yuv-planar.rst  |   42 +
 MAINTAINERS                                        |   10 +
 arch/arm/boot/dts/broadcom/bcm2711-rpi.dtsi        |    4 +
 arch/arm/boot/dts/broadcom/bcm2711.dtsi            |    9 +
 drivers/media/platform/raspberrypi/Kconfig         |    1 +
 drivers/media/platform/raspberrypi/Makefile        |    1 +
 .../media/platform/raspberrypi/hevc_dec/Kconfig    |   17 +
 .../media/platform/raspberrypi/hevc_dec/Makefile   |    5 +
 .../media/platform/raspberrypi/hevc_dec/hevc_d.c   |  450 ++++
 .../media/platform/raspberrypi/hevc_dec/hevc_d.h   |  189 ++
 .../platform/raspberrypi/hevc_dec/hevc_d_h265.c    | 2542 ++++++++++++++++++++
 .../platform/raspberrypi/hevc_dec/hevc_d_h265.h    |   23 +
 .../platform/raspberrypi/hevc_dec/hevc_d_hw.c      |  376 +++
 .../platform/raspberrypi/hevc_dec/hevc_d_hw.h      |  303 +++
 .../platform/raspberrypi/hevc_dec/hevc_d_video.c   |  688 ++++++
 .../platform/raspberrypi/hevc_dec/hevc_d_video.h   |   38 +
 drivers/media/v4l2-core/v4l2-ioctl.c               |    2 +
 include/uapi/linux/videodev2.h                     |    4 +
 19 files changed, 4771 insertions(+)
---
base-commit: 0e02a8f2bbac83262a7f2029d4682657de9d4bbe
change-id: 20241212-media-rpi-hevc-dec-3b5be739f3bd

Best regards,
-- 
Dave Stevenson <dave.stevenson@raspberrypi.com>


