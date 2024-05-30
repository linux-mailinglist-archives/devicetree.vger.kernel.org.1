Return-Path: <devicetree+bounces-70771-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 297C58D46F4
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 10:23:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C52501F23148
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 08:23:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 661591474DA;
	Thu, 30 May 2024 08:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="R4koJsgD";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="cmwSW2nD"
X-Original-To: devicetree@vger.kernel.org
Received: from wfhigh2-smtp.messagingengine.com (wfhigh2-smtp.messagingengine.com [64.147.123.153])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A407F14387F
	for <devicetree@vger.kernel.org>; Thu, 30 May 2024 08:23:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=64.147.123.153
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717057413; cv=none; b=pJ9YUYwnozhVuyf5NzIjrwEDYsSni9W9f69s/iXcfE7ypVaID9AAHM95qmidqUd+prrqkl4qybB1joXcMvAGAe1Kf7LWPl9I1o5GJTYfPA9lZ3UJ74wD/nJk8e5LbxXSqTLF9akN7MVSgp6pDTk9XUTA03V5MMnjJsbPGh38ZmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717057413; c=relaxed/simple;
	bh=JSRSay5EhTeWG044GMdO+MLOg273FYO7vdGB05gCxWk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=uPBStYyIvyTsqoc8cp9CpZPUHxEGjrif4zfxeJ/bBXIMVfHLy4bXNPYCmXyje96503tjFghEItSvG00H/Nw5HJrjPCWyfdW+rbZtPOUbBqxw2V6jZElKATw60Jfeb98QYTom5erFU2vr8WGxOfLL6ww+rdFBXhIeaB7Fx1QIQBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=R4koJsgD; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=cmwSW2nD; arc=none smtp.client-ip=64.147.123.153
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
	by mailfhigh.west.internal (Postfix) with ESMTP id 9A4C41800144;
	Thu, 30 May 2024 04:23:29 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute7.internal (MEProxy); Thu, 30 May 2024 04:23:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to; s=fm1; t=1717057409; x=1717143809; bh=1nD+zEVZEi
	FmMKsUN9POQ9akkpV8PDc9ZBtuTWX1uLI=; b=R4koJsgDBm1WuAOrgZij8t/FFE
	iA1XL6q+kOXLO4502tXdbSI3LOpzpimkIBwIcfU8QvUzn5nELN7dIrzF6yuRVFqf
	YCQNOnywwCqDx4elqU18NWoW2warEd2W4Kn+8rfEvRSCi64rUsIdPr9lmzqyVkh9
	6pDDmAz4S/oLX+8Ca8wgVmQ2TFf7JXDiqZPidH7mqWxOznM70O/rDIuF0nykYhn6
	lavTuI06DQlMX5L5r5dmYcfdi6YLdtApPklaM+7GuPVLzvrdX6f24FNzrb5gk6/o
	6O3Kd4CG+Hz9xzYXlJT57coAXVTsri98wYkwo/FtgewrrDYuwvLh+gQXPa/w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1717057409; x=1717143809; bh=1nD+zEVZEiFmMKsUN9POQ9akkpV8
	PDc9ZBtuTWX1uLI=; b=cmwSW2nD+NUU3U5d/ZBkSNSrHBDafSid9XycsJ5p6nrM
	PzBCzSCr9Cafv1V2LYiQQQZwTW3mvLLEEKp7lq3KPHEW9ABZ7DECAhN7WkyM4fc1
	I+QBFZjwEhpF1QIIMOFGN8GgklQDUzL1S3jcJ063YxfdFEYXw6P5csDn+1WX5mhS
	Y4IkqsaBAvTVBXZ5jB3d5pLGyU60tn7TjxF15wsjSUf47KOiZyY7w34pHPAyH0Lw
	IzGTl+a3fxEYIHQMKF3aMoXfNMJio0GXxtOL8naQgI2h08D0XVnX/oesJF46FqyC
	4IYQEtjDEPJNR/tUP5YhayYgDIugO3fOIFnc8L+eRg==
X-ME-Sender: <xms:gDdYZiyVG2p6pqXYNCGxPRMGkLiurFolCwB6B_dDwO3ZjOEho075VQ>
    <xme:gDdYZuQnSursPEsL2XrKi7J295OTi4suzrlXcqyQImDkVs4f410dXBIWcRgsBWe-b
    pJX8WDK6CFisquQlw>
X-ME-Received: <xmr:gDdYZkUs-tYZmP9TkJ0vsLmrhVyRbU1Qa089je4jVSMfQVWrVkPq47MfmGrmSsV_-i6WQ2g733DpLewaNzcd1YprrTSNd9fWVvDRzNfbrRJtsvIe>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdekgedgtdduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgggfestdekredtredttdenucfhrhhomheptfihrghnucgh
    rghlkhhlihhnuceorhihrghnsehtvghsthhtohgrshhtrdgtohhmqeenucggtffrrghtth
    gvrhhnpeduvdeuudeugedtueffteevveegheehvdfhfeduudevkefggfeftdehgeethffh
    ffenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehrhi
    grnhesthgvshhtthhorghsthdrtghomh
X-ME-Proxy: <xmx:gDdYZohDyjZEMUAn_vMyVRlIgD-K-4IOdW4c5bDkZuXbGlqscORdkA>
    <xmx:gDdYZkC1bnp5EEGwwc1aIhW7xLhhPv13c0KFfL2Cr8fawqeol_sqeQ>
    <xmx:gDdYZpJI4a8Md5tod46oO-BZneUgHBBCcJkDH1v-yWpkkqhL1hQmzw>
    <xmx:gDdYZrCjVD9kfLfs-AGLw71nbojffjFNgYoBJHkRxQ0zV-F2cmFwvw>
    <xmx:gTdYZs4sfH6pf6WhrazwWC3S5RkjqK8vgSXLVGzt5AupTnTFe3EPhRHi>
Feedback-ID: idc0145fc:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 30 May 2024 04:23:23 -0400 (EDT)
From: Ryan Walklin <ryan@testtoast.com>
To: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hironori KIKUCHI <kikuchan98@gmail.com>,
	Chris Morgan <macroalpha82@gmail.com>,
	Andre Przywara <andre.przywara@arm.com>,
	John Watts <contact@jookia.org>,
	Ryan Walklin <ryan@testtoast.com>
Subject: [PATCH v2 0/2] Add WL-355608-A8 panel
Date: Thu, 30 May 2024 20:22:20 +1200
Message-ID: <20240530082318.40516-1-ryan@testtoast.com>
X-Mailer: git-send-email 2.45.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hello,

V2 of this patch with discussed and recommended compatible string fixes and updates to DT binding example code.

Original cover below.
--

The WL_355608_A8 panel is a VGA LCD display with an NV3052C-compatible driver IC, used in a number of Anbernic handheld gaming devices. This patch adds a device tree binding, and support for the display timings and init sequence to the NV3052C SPI/RGB driver.

Regards,

Ryan


Ryan Walklin (2):
  dt-bindings: display: panel: Add WL-355608-A8 panel
  drm: panel: nv3052c: Add WL-355608-A8 panel

 .../bindings/display/panel/wl-355608-a8.yaml  |  60 +++++
 .../gpu/drm/panel/panel-newvision-nv3052c.c   | 225 ++++++++++++++++++
 2 files changed, 285 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/wl-355608-a8.yaml

-- 
2.45.1


