Return-Path: <devicetree+bounces-167554-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 07EEEA8AC5E
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 02:02:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C04747A47BC
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 00:01:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BCFFC8CE;
	Wed, 16 Apr 2025 00:02:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="b+IOVZmR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84A402F2A
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 00:02:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744761734; cv=none; b=pOnM1ulzXWc4hEokIumVWPYTSxOCXNr/EYFxi2hg813CQX1JpsqSEqJOqRic87iuC67F7JfFElE0Q2whwe1qWptValVrzHwtSYlKarR9efCu+Wj9rZgSZyjDDZvrls7UCOqP/2OhHLnix3X2X3KgOMENp/aKe0s2vB8Zcm8k6Yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744761734; c=relaxed/simple;
	bh=cRmda5bmrfCcBQPE77qN3/UFddHhyZ+FKubxHJT/wkw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=jsXPDcbKy7LwtHgEqPk2Kj/X5O7R3UVlhpLhS3iBXz79IzQbjTu7mHw60pD510fZV+gGNpLOHhVS0Oj3vDQ6ikl6KvHVymjF8AyqY9aKTdPiov3P9cmQpan4xt8rC0bhx0OGhuxb+Ovfr3N3bZpluY1Z8l+qckZah/MTdUdcv3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=b+IOVZmR; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-30549dacd53so139500a91.1
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 17:02:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1744761732; x=1745366532; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bgdhLXqZmm02+iuTYg8IYzdl8VvNi9VMKk7v6vfTzwQ=;
        b=b+IOVZmRWvXP7dxekykI47UwBU4k+7TRxs43A1LpgzkzUgu0hOsPHKvLmuymkjfdcv
         ULi4aEc+wIZO2orJE97BGh8QVRIFCtb1DJ5PTT1EnqEVYZAR8hxKDASF1dxYqfHAauZ5
         cGPM/kcAoII60f0Et8CN+OFstOcHsX5uKQ1nM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744761732; x=1745366532;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bgdhLXqZmm02+iuTYg8IYzdl8VvNi9VMKk7v6vfTzwQ=;
        b=PsBdtc6mj/fEFGhKww0K+1AN8JWnjbg7SXGckeGFBmmkfFnPkg8uSa6pJ1bGtOMuqW
         gD3C8WKTYrdJc+Scx+IE171+ynvMjlqYXCR/3BiTiFY6N0WtV8OYnj830gIaeyze3ura
         BFEl2VUc3dlaIVC8R30ksyQ1NFf39mxAIqiy9y9t6DRIOxn9c1ecmhvIbO3CRTfWSFt6
         dXqXm3GJpL4Wh1TvzNCaokqffecPJWbrsY077h6gO66f0Hm1TS0UDnaZmbLTerdNE25E
         /dGiKjy4B6QocMOl7tRrDHC9hdQpQeuwQhrBzRQ40LvSeUf1uA72MnB/gXoOe0+F81Xj
         7WsA==
X-Forwarded-Encrypted: i=1; AJvYcCW+w7I2OowLJfgrrYSyPNLtPH7RZzZ7GU/48eVbHPVXnqxD4tBXiSUERqaOUKDfcMv5oRUxVd5KUlOS@vger.kernel.org
X-Gm-Message-State: AOJu0YxtxNbISm2a/nd7NmbVnoKLpiwD25/Cr++W2+Pv0CJM2cVLEqvD
	YF1HeqWcomVcUfDc0O2Uo6FpEdMwZMcz4fZQq3UoQuD+T2hsRZjAcpeFZKp/gA==
X-Gm-Gg: ASbGncujAtihzuC+mfVZm1mWt2vkYWbwfxQtuTiv1aimCeEncntrg8hPeRED3Hv4iBq
	ohnbVX6u/rWNBPCsr4Fv8QAsScQJMBbDXrq/zsl1ELViUrsyULA6V1TRjzoZgfuVypMJAr8OBy9
	RlxaePr5iD2/lv1fAykUm5PbQYqkxaSGePyFV7hMQM+e2JvWBGBBXdPJy0yjWMxh4nlIl2xJS3p
	tz9HQKABHqyu+qTH+dTqNbGLV7KY+TKc9DmjgweYi8XVg5J/LDbdEbA/lNI+z70qCzB/HXKbCS4
	zvm0KyCmoIxiA05nHJ1pa4Rn5UB/cgWrpNQJoHs7EJG/iZtbTSqdBMGyFF+BJdvB5SbQZb5KA3X
	4Mw==
X-Google-Smtp-Source: AGHT+IEW2BUyetqEJqp2Byr5gKAPoyPMy/3pBAQDFJR2uAF5E8DZzaAi+L5qSZqV09GCAbzUezOZCQ==
X-Received: by 2002:a17:90b:5243:b0:2fa:2268:1af4 with SMTP id 98e67ed59e1d1-3084f3176d1mr7881903a91.7.1744761731705;
        Tue, 15 Apr 2025 17:02:11 -0700 (PDT)
Received: from localhost (199.24.125.34.bc.googleusercontent.com. [34.125.24.199])
        by smtp.gmail.com with UTF8SMTPSA id 98e67ed59e1d1-308613b3849sm196226a91.38.2025.04.15.17.02.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Apr 2025 17:02:11 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: Tzung-Bi Shih <tzungbi@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	patches@lists.linux.dev,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	devicetree@vger.kernel.org,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	Benson Leung <bleung@chromium.org>,
	chrome-platform@lists.linux.dev,
	Pin-yen Lin <treapking@chromium.org>,
	Abhishek Pandit-Subedi <abhishekpandit@chromium.org>,
	=?UTF-8?q?=C5=81ukasz=20Bartosik?= <ukaszb@chromium.org>,
	Jameson Thies <jthies@google.com>,
	Andrei Kuchynski <akuchynski@chromium.org>
Subject: [PATCH 0/7] platform/chrome: Support for USB DP altmode muxing w/ DT
Date: Tue, 15 Apr 2025 17:02:00 -0700
Message-ID: <20250416000208.3568635-1-swboyd@chromium.org>
X-Mailer: git-send-email 2.49.0.604.gff1f9ca942-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This is a continuation of an earlier series[1] split out to become more
manageable. After discussions at LPC2024 with Dmitry, I've settled on
using the DisplayPort altmode driver to signal HPD to the DP controller
through the out of band API. This series patches up the ChromeOS EC
driver enough to the point that Chromebooks that use EC driven entry can
bind the DP altmode driver (CONFIG_TYPEC_DP_ALTMODE) and signal the HPD
state to the drm_connector.

The first few patches make the DP altmode driver work on Trogdor and
other EC mode entry based Chromebooks. The next couple patches add
support to the cros-ec-typec binding to describe the DP graph
connections between the DP controller and the DP altmode. I chose to put
the graph into the altmode node, but I suspect it can just as easily be
added to the usb-c-connector graph as another port or endpoint within
the port@1 if we want to keep it close to the SuperSpeed endpoint. The
final patches support creating a drm_bridge in the cros-ec-typec driver.
They workaround a problem on Trogdor where HPD doesn't signal properly
so we have to capture the HPD signal from the upstream drm_bridge and
inject it into the USB type-c framework. We will pretty much only use
this bridge on Trogdor where we're steering the DP lanes from the EC.

With this series the USB type-c sysfs entries reflect the state of the
port when the DP altmode driver binds. Trying to control the mode from
the sysfs entries doesn't really work because the EC is in control and
most writes are blocked if they try to exit DP altmode for example.

There's still one part left though; finding the drm_connector from the
DP altmode driver. The way that the binding is written for the Corsola
case where a four lane DP bridge is hard-wired to two USB-C connectors
requires more work, but we're pretty much setup to tackle the problem
even on Trogdor with this proposed binding. I'm imagining in the Corsola
scenario the DP chip has a binding like this:

  it6505 {
    ports {
      port@0 { }; // input port from MIPI DSI
      port@1 {  // output port for DP
        dp_ml0_1: endpoint@0 { // output port for DP lanes ML0/1
          data-lanes = <0 1>;
          remote-endpoint = <&usbc0_dp>;
        };
        dp_ml2_3: endpoint@1 { // output port for DP lanes ML2/3
          data-lanes = <2 3>;
          remote-endpoint = <&usbc1_dp>;
        };
    };
  };

  cros-ec {
    typec {
      connector@0 {
        altmodes {
          displayport {
            port {
              usbc0_dp: endpoint {
                remote-endpoint = <&dp_ml0_1>;
              };
            };
          };
        };
      };
      connector@1 {
        altmodes {
          displayport {
            port {
              usbc1_dp: endpoint {
                remote-endpoint = <&dp_ml2_3>;
              };
            };
          };
        };
      };
    };
  };

We'll need to implement a drm_bridge in the connector's altmode node
that can be connected to the dp_ml0_1 or dp_ml2_3 endpoint. That final
drm_bridge that lives in the DP altmode driver needs to be implemented
on top of this series[2] that supports hotpluggable DRM bridges. If we
do that we can hotplug the it6505 bridge and the usb-c-connector bridge
when DP altmode is entered on the port. We'll also be able to easily
associate the drm_connector with the usb-c connector because the bridge
will be implemented there. Once we do that it should be possible to get
rid of the out of band HPD API and signal HPD state from the drm_bridge
created in the DP altmode driver while hotplugging the bridge chain upon
DP altmode entry.

[1] https://lore.kernel.org/r/20240901040658.157425-1-swboyd@chromium.org
[2] https://lore.kernel.org/r/20250206-hotplug-drm-bridge-v6-0-9d6f2c9c3058@bootlin.com

Cc: Benson Leung <bleung@chromium.org>
Cc: Tzung-Bi Shih <tzungbi@kernel.org>
Cc: <chrome-platform@lists.linux.dev>
Cc: Pin-yen Lin <treapking@chromium.org>
Cc: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
Cc: Łukasz Bartosik <ukaszb@chromium.org>
Cc: Jameson Thies <jthies@google.com>
Cc: Andrei Kuchynski <akuchynski@chromium.org>

Stephen Boyd (7):
  platform/chrome: cros_ec_typec: No pending status means attention
  platform/chrome: cros_ec_typec: Allow DP configure to work
  platform/chrome: cros_ec_typec: Support EC mode entry
  dt-bindings: Move google,cros-ec-typec binding to usb
  dt-bindings: usb: google,cros-ec-typec: Add ports for DP altmode
  platform/chrome: cros_ec_typec: Add support for DP altmode via
    drm_bridge
  platform/chrome: cros_ec_typec: Support DP muxing

 .../bindings/chrome/google,cros-ec-typec.yaml |  66 -----
 .../bindings/connector/usb-connector.yaml     |   6 +
 .../bindings/mfd/google,cros-ec.yaml          |   7 +-
 .../bindings/usb/google,cros-ec-typec.yaml    | 231 ++++++++++++++++++
 drivers/platform/chrome/Kconfig               |   1 +
 drivers/platform/chrome/cros_ec_typec.c       | 167 ++++++++++++-
 drivers/platform/chrome/cros_ec_typec.h       |  21 ++
 drivers/platform/chrome/cros_typec_altmode.c  | 121 +++++----
 8 files changed, 508 insertions(+), 112 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/chrome/google,cros-ec-typec.yaml
 create mode 100644 Documentation/devicetree/bindings/usb/google,cros-ec-typec.yaml


base-commit: 2014c95afecee3e76ca4a56956a936e23283f05b
-- 
https://chromeos.dev


