Return-Path: <devicetree+bounces-309554-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dP8QO1YlKWrjRQMAu9opvQ
	(envelope-from <devicetree+bounces-309554-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 10:50:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E5FFB66768D
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 10:50:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=chromium.org header.s=google header.b=JPrvhs+W;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309554-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-309554-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=chromium.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6511D3038ACF
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 08:41:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97FDC3B14C3;
	Wed, 10 Jun 2026 08:41:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A95133AFD0A
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 08:41:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781080881; cv=none; b=oiOggYf7CAq/jE6s69x7q6OglE267pISqYtAaUEoDlbLQHLG3H0WnTqq1VXWLhR/Dcj611rilmdGDiI6fvcxUiru3d4AePlU1Eo+iRkQ9AljF7woROylN5UFkWFQcJA8iW3n1c8PnAoB8CgdtuM718BhtxObkvo8ro4PemZTmMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781080881; c=relaxed/simple;
	bh=ZuOVxM6SCrtrNZ59Qzz16xkLgZG0V6ly6c5cBQo7Q3g=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=fGotmUjUhrhxEjq8f08DuEPd/MBjtqcJiD9p7uKH+3/In3T9razpFosU/oTFwLENXQ9pSIwgRfcuUaGP82Z8CceoNXjv3E2N/uOGr+V/mEehP4iT4fFj3LWDGw0uFxj8fBX71w63pf1ctuHIIpJ8MQkO4S0gj6NUskjlEjKfn7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=JPrvhs+W; arc=none smtp.client-ip=209.85.214.182
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2c27fc587ebso13995185ad.0
        for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 01:41:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1781080879; x=1781685679; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=t8gJIv7IXV+GGLqttV7BJHv8HtnJej0L7a6gfaEYMf4=;
        b=JPrvhs+WDBmaJ7x/7TbuEcdDiDOj22yLg0O0dBD5qyuIhw5WZmsrJWUUChf06pzpjH
         CPNICFAopld2sYS+9Dgf2rVSXAs5gN72yUWQ21E6BWmUoQjPnadHthKi7bDZOzDPDdp8
         eM39MpbZ1fRRATKGSSt7NlKThB0pugnmLnH/I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781080879; x=1781685679;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t8gJIv7IXV+GGLqttV7BJHv8HtnJej0L7a6gfaEYMf4=;
        b=RW5KVTzgZcLV40H7UQbIJAqixNF7H5UmzRfxtZjocdJmWXWzyQfQoSY4XsrEvVpe2P
         4/ktK0o+7hTTpgLMUcZ+Xy9+Atf6yZMS5kSF3ETfkQ507BusXI8YTmQk/mStV6m9h0jI
         XrDPaaihMHAqOjKeWfYYD/XRk1yhhIA+aYagSNON92EV4eTdbw7S+X/OHfFzR6IjPCF/
         rfxfnUqZ2mcAzQ/E5zCCidHCMc8BhZuf7xHP4bJfCwiOfjNcWAekeXJuZzC380p5mvha
         k8v4nD5w5xN3/rPO+PdJDI6ZwH26lIRvj1K81qQyyF7nc3khkqS2dj4AKojb44sj7zHV
         CU8w==
X-Forwarded-Encrypted: i=1; AFNElJ+M3R3zgSjs8VY3rR4pM2NUBuqRsvP1FL3GAuJtWYG4iFmRZijuZ/BgZMe0Qnfo8yLBkKfTd5luSqrh@vger.kernel.org
X-Gm-Message-State: AOJu0Yy78yrc/vs8WQDnfrNNPJunk45Atgoh2EKHwiTTajTcKboMwavo
	Y5vMvxMP/3U4HoSmiA7Hc5D4t8lmGJKkRzv40skBi+980pagcf8SSl+CDfTplmQsfQ==
X-Gm-Gg: Acq92OG2LmGwkPsdakRQWnciooVKJwWThgr1o4avYjNzOBi/VoZ97sIZslSVpTiDKCo
	VsLhqlHF6mB5dtpxgeFBLr5GnFScpqSrOqbY7C//zQDaNlt6Tc157IBaH6tNJoCY7BOwjBLQpVV
	NFFavr+OVvPXKIDvEo7EA7A7SStbq15ejynO+ggD8IOKxp3tv6pU+HVhZpPTgFPNSF9J+p6csEU
	tvokKEzZxD32f1JDI7yYrWQcuPTDqrOhpO7F+2C0uYceYOUEI451Bipy5b0Uc2Zz+e2SlB0g8li
	Gjj5Gir9bIPs6yoXzIB4eAEhhhRZfpcIROhVxMZo+73U4hT6YQ2KxhEG1Z0iyw5Ukg8kC7R/gR4
	DPVlC4xI0EVQ6pus07mLeGcaPEH1MvlFQ5h3anbvaV8k4ya2ST8JMvH3WHUvP7jDMtSCbZkWUG6
	bmA87XU0OZLxP71yl13GGZdN559hSkcbGxhYuAo2T3G7ImbuDHRnqmOe5KPFsCTAfTQD0Rfc1ii
	ljYkSx3rWx2ejR0Zw==
X-Received: by 2002:a17:903:1b67:b0:2c2:c0db:964a with SMTP id d9443c01a7336-2c2c0db9991mr33186765ad.26.1781080878941;
        Wed, 10 Jun 2026 01:41:18 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:3870:6325:16c:d35c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c164f890b2sm239223725ad.26.2026.06.10.01.41.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 01:41:18 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Bartosz Golaszewski <brgl@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Daniel Scally <djrscally@gmail.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Danilo Krummrich <dakr@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Alan Stern <stern@rowland.harvard.edu>,
	Chen-Yu Tsai <wenst@chromium.org>,
	linux-acpi@vger.kernel.org,
	driver-core@lists.linux.dev,
	linux-pm@vger.kernel.org,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Manivannan Sadhasivam <mani@kernel.org>
Subject: [PATCH v2 00/16] arm64: mediatek: Add M.2 E-key slot on Chromebooks
Date: Wed, 10 Jun 2026 16:40:34 +0800
Message-ID: <20260610084053.2059858-1-wenst@chromium.org>
X-Mailer: git-send-email 2.54.0.1099.g489fc7bff1-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-309554-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[24];
	FREEMAIL_TO(0.00)[kernel.org,linuxfoundation.org,linux.intel.com,gmail.com,collabora.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:brgl@kernel.org,m:gregkh@linuxfoundation.org,m:andriy.shevchenko@linux.intel.com,m:djrscally@gmail.com,m:heikki.krogerus@linux.intel.com,m:sakari.ailus@linux.intel.com,m:rafael@kernel.org,m:dakr@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:stern@rowland.harvard.edu,m:wenst@chromium.org,m:linux-acpi@vger.kernel.org,m:driver-core@lists.linux.dev,m:linux-pm@vger.kernel.org,m:linux-usb@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-mediatek@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:mani@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,chromium.org:dkim,chromium.org:mid,chromium.org:from_mime,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E5FFB66768D

Hi everyone,

This is v2 of my attempt at integrating the power sequencing API into
the USB core to support the USB connection on M.2 E-key slots. M.2
E-key was enabled in v7.1-rc1 with just PCIe and UART supported [1].

Major changes since v1:
- No longer adding the "index" parameter the power sequencing API
- Switched from OF graph to fwnode graph APIs
- Tie "port@" node to usb_port device, and use this device as consumer
  to acquire power sequencing descriptor
- Power sequencing descriptor now only tied to USB 2.0 port to avoid
  double reference
- Power sequencing state tracking added
- Link to v1
  https://lore.kernel.org/all/20260515090149.3169406-1-wenst@chromium.org/

The series is based on next-20260608.


Patch 1 and 2 add new fwnode graph helpers. These are used by the patch
5 and 7, respectively.

Patch 3 changes the power sequencing framework's Kconfig symbol from
tristate to bool. This is needed as the USB core is bool. And since a
later patch introduces power sequencing API usage to the USB core, the
power sequencing framework cannot be built as a module anymore. This
patch needs to go in with "usb: hub: Power on connected M.2 E-key
connectors", or we will get allmodconfig build failures.

Patch 4 reworks the USB hub driver to return the actual error code from
hub_configure() in hub_probe(). This is needed in the next patch to
correctly return -EPROBE_DEFER returned by pwrseq_get() in patch 7.

Patch 5 makes the USB port device associated with a "port@" fwnode if
available. This depends on patch 1.

Patch 6 changes usb_port_is_power_on() so that |struct usb_port*| is
passed in instead of |struct usb_hub*|. This patch does not change any
functionality.

Patch 7 lets the USB hub driver look for power sequencers for each port.
Currently this only works for M.2 E-key connections, but it could be
extended to cover other cases. It should also make port reset via turning
off the port VBUS work, even when VBUS is not directly controlled by the
hub. This depends on patch 2 (for the new helper) and patch 3 (to avoid
allmodconfig link failures).

Patch 8 reverts an incorrectly modeled OF graph connection for the
MediaTek XHCI controller.

Patch 9 then adds a proper representation.

Patch 10 adds matching pwrseq consumer by "port@" node to the M.2 slot
driver. This is only used for the USB target, but there is no attempt
to differentiate the connection type. The driver simply tries matching
the "port@" node first, then falling back to the port parent or device's
node.

Patch 11 reworks the power sequencing targets for the E-key connector in
the pcie-m2 driver to add targets for USB and SDIO. The former is used
later on in this series.

Patches 12 through 16 enable the M.2 E-key slots (used for WiFi/BT) and
USB type-A connectors found on MediaTek-based Chromebooks. These are
provided in this series for reference. The USB type-A connector changes,
while not directly related, have overlapping context, and was easier to
include. They were also used to test some extra local changes I tried
to convert the USB A connector from an onboard USB device to a power
sequencing provider.


This series unfortunately spans multiple trees. The way I see it:

  - Patch 1 and 2 go through the driver core, and an immutable tag is
    provided to be merged together with the USB patches.

  - Patch 3 gets an ack from Bartosz, and goes through the USB tree.

  - Patch 4 through 9 (all the USB related ones) go through the USB
    tree, along with the dependencies above.

  - Patch 10 and 11 go through the power sequencing tree.

  - Patch 12 through 16 (device tree only) go through the soc tree via
    the mediatek tree.

Some of us discussed v1 at Embedded Recipes, and I believe Bartosz, Mani
and I agree on this approach. The debate is likely going to be on
whether this should be integrated into the USB core or not. I believe it
should, so that the power sequencing timing is tied to the USB port
being brought up. I do have a fallback option of just enabling the USB
power sequencing target inside the M.2 slot driver if a valid OF graph
connection is seen. But this is less desired for the reason given above.

Please have a look and share your thoughts.


Thanks
ChenYu


[1] https://lore.kernel.org/all/20260326-pci-m2-e-v7-0-43324a7866e6@oss.qualcomm.com/

Chen-Yu Tsai (16):
  device property: Add fwnode_graph_get_port_by_id()
  device property: Add fwnode_graph_get_next_port_endpoint()
  power: sequencing: Change CONFIG_POWER_SEQUENCING to bool
  usb: hub: Return actual error from hub_configure() in hub_probe()
  usb: hub: Associate port@ fwnode with USB port device
  usb: hub: Pass |struct usb_port*| to usb_port_is_power_on()
  usb: hub: Power on connected M.2 E-key connectors
  Revert "dt-bindings: usb: mediatek,mtk-xhci: Add port for SuperSpeed
    EP"
  dt-bindings: usb: mediatek,mtk-xhci: Allow ports for USB connections
  power: sequencing: pcie-m2: support matching on remote "port" node
  power: sequencing: pcie-m2: Add usb and sdio targets for E-key
    connector
  arm64: dts: mediatek: mt8192-asurada: Add USB type-A connector
  arm64: dts: mediatek: mt8192-asurada: Add M.2 E-key slot
  arm64: dts: mediatek: mt8195-cherry: Add M.2 E-key slot
  arm64: dts: mediatek: mt8195-cherry: Add USB type-A connector
  arm64: dts: mediatek: mt8188-geralt: Add WiFi/BT as M.2 E-key slot

 .../bindings/usb/mediatek,mtk-xhci.yaml       |  17 +-
 .../boot/dts/mediatek/mt8188-geralt.dtsi      |  93 ++++++++++-
 .../boot/dts/mediatek/mt8192-asurada.dtsi     | 139 +++++++++++++++--
 .../boot/dts/mediatek/mt8195-cherry.dtsi      | 147 +++++++++++++++++-
 drivers/base/property.c                       |  55 +++++++
 drivers/power/sequencing/Kconfig              |   2 +-
 drivers/power/sequencing/pwrseq-pcie-m2.c     |  50 ++++--
 drivers/usb/core/hub.c                        |  55 +++++--
 drivers/usb/core/hub.h                        |   6 +-
 drivers/usb/core/port.c                       |  72 ++++++++-
 include/linux/property.h                      |   3 +
 11 files changed, 583 insertions(+), 56 deletions(-)

-- 
2.54.0.1099.g489fc7bff1-goog


