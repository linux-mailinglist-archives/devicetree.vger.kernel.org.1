Return-Path: <devicetree+bounces-15485-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 541A77EA5D2
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 23:15:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EBD7CB20A12
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 22:15:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B37792E3E0;
	Mon, 13 Nov 2023 22:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FofDm00y"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308662D638
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 22:15:33 +0000 (UTC)
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41D43DC
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 14:15:31 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-507adc3381cso6615494e87.3
        for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 14:15:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699913729; x=1700518529; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CavqYbpJDhm0OKuh4STOsXUdXIvRsCGtB4InVaES23I=;
        b=FofDm00yUf4ACJaFKDl1isGSOwGscsQjQksuo3C2m7L/cNffYutXe0yKjSbAPlUso6
         NRSK5C4L4RLoZ9tAIauzhYmdfoNIp67bHquMTQj2HoymtXyq4aR74nGWSh2O52LEbWyK
         rMLQuESuU4KhTZ28c/ViiMF3xrGuxk2Zh3UD+9cGlwZRk4wHWil9i4TBi77SUXm8neZM
         QVDlHKz6l8tYBLr5b1LJuckYABKSq7hYojEEs0pE4vKNdukBhKyEGrwvQX74AkaVuy+b
         FOsYFxn1oXQ6vglRCFibiTjZU7h/d2ANe+5jhYr7g0kLea/us6SlAUMtPNx9JPuhUxod
         /s0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699913729; x=1700518529;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CavqYbpJDhm0OKuh4STOsXUdXIvRsCGtB4InVaES23I=;
        b=P8QTsU02keVwV6A5rW2KWykrcchBEs3/pYYvUHOmsHbwQVeGxhLFnDkS30Rs6Ucc+o
         Pw/uHCPhM8DGcbHvkb9grYgLZND+AON5D0/p9FsKiiEDBYaR9UaU88lyRTmqhc3q08S0
         NHBVEKiMX6fhDm/imxaVQTLhyBd9hYIwzoO3XOtyn71IH/RVM1CCkKN/h3crVNSob6fs
         dEyqgsK9NzKm8JpBy9oJQZ6cZmhbt8AM9842HDQcAKDLamJhRUIsLf1VPhtUjA06yBk9
         fNZ0eU4Fg7JincqhRyEldzzkufWgEsbwSY0KfiZsCmSOAOXUuERrJUo7NHL9j8tKrc+7
         dDNw==
X-Gm-Message-State: AOJu0YydlRz094lPN7T+Amn7se2qTnBrdqrRY2+0OHoAfJgR7HNrRQgD
	AlZvbKt4ULGiXsIUaxp74oqfEQ==
X-Google-Smtp-Source: AGHT+IGReEDcnEERO89WQ2VhevAyWOeYn9OJtVWGTf7awX8F6nWP1bv1VZ+A0hyce6bKbkbjmUVZ5g==
X-Received: by 2002:a05:6512:1087:b0:507:b7db:1deb with SMTP id j7-20020a056512108700b00507b7db1debmr6898125lfg.38.1699913729380;
        Mon, 13 Nov 2023 14:15:29 -0800 (PST)
Received: from eriador.lan (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id w8-20020a0565120b0800b00507f18af7e0sm1097578lfu.4.2023.11.13.14.15.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Nov 2023 14:15:28 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Hans de Goede <hdegoede@redhat.com>,
	=?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
	Mark Gross <markgross@kernel.org>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	platform-driver-x86@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: [PATCH v2 0/3] dt-bindings: connector: usb: provide bindings for altmodes
Date: Tue, 14 Nov 2023 00:13:26 +0200
Message-ID: <20231113221528.749481-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In some cases we need a way to specify USB-C AltModes that can be
supportd on the particular USB-C connector. For example, x86 INT33FE
driver does this by populating fwnode properties internally. For the
Qualcomm Robotics RB5 platform (and several similar devices which use
Qualcomm PMIC TCPM) we have to put this information to the DT.

Provide the DT bindings for this kind of information and while we are at
it, change svid property to be 16-bit unsigned integer instead of a
simple u32.

NOTE: usage of u16 is not compatible with the recenty extended
qcom/qrb5165-rb5.dts DT file. I'm looking for the guidance from DT and
USB maintainers whether to retain u32 usage or it's better to switch to
u16.

Changes since v1:
- Added type:object and fixed 'description' string in the altmodes-list
  definition.

Dmitry Baryshkov (3):
  dt-bindings: connector: usb: add altmodes description
  usb: typec: change altmode SVID to u16 entry
  arm64: dts: qcom: qrb5165-rb5: use u16 for DP altmode svid

 .../bindings/connector/usb-connector.yaml     | 36 +++++++++++++++++++
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts      |  2 +-
 drivers/platform/x86/intel/chtwc_int33fe.c    |  2 +-
 drivers/usb/typec/class.c                     |  5 +--
 4 files changed, 41 insertions(+), 4 deletions(-)

-- 
2.42.0


