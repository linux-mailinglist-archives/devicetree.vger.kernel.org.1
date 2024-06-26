Return-Path: <devicetree+bounces-80168-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 454CD917F75
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 13:20:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 00B9F281128
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 11:20:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A3C316631D;
	Wed, 26 Jun 2024 11:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="5BqrJaai";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="hSGRcJnS"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh3-smtp.messagingengine.com (fhigh3-smtp.messagingengine.com [103.168.172.154])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F43113AD11
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 11:20:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.154
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719400818; cv=none; b=MQtZUmqZxN79i0UZ6kvlJtvpgrJZFIHQnA1jmwFKFhcN7f8I/XhD82IFkWDBsSfhAEmmvFwcCddopWbzvFks63zE3+SPCiSgp6WJ03lK5WC+TKiXGp6Vzo5FEkS0qiwHcbvOctLxt6OxKq+K9zoBb/hxe0fd7zWLfVXwfp3Anr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719400818; c=relaxed/simple;
	bh=DqhrCYBIvHEpsrM9C7b1bzkv7e7CzcTjKQH4fqvwVtA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YLwvwyKoQaiQxliO7LfWv3n0K0RDHT3H7y6O/OvOdTw+G+86tn6Fjx+lLGKucb3ecocdC/l85RyevWSwPtI4I8lQtpD7vHvS/JrQ2kJt+JraY7IsbhujXm9GWbq1GQtZo8LL0xLThBh0CQClZwr4bIG0Zjn0PSz15Z2Xxuxg4Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=5BqrJaai; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=hSGRcJnS; arc=none smtp.client-ip=103.168.172.154
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id 7BE7C11403B7;
	Wed, 26 Jun 2024 07:20:15 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Wed, 26 Jun 2024 07:20:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to; s=fm2; t=1719400815; x=1719487215; bh=fkOGLKTKKu
	fIvxA5SItl5LCFUub24XZOe7xquE5snEY=; b=5BqrJaailBsUYuKzXmNr1uTHjT
	fMTM2xb18DZG8jd8VWp9FVFhxdRjN4K8XBr9X7dzUM9ZGFpaIwIL3h6N6ldlcIwd
	uRg9Ro2rc4ZbyS+e0o5Q80CHre/cfTfOd0b+isFPke/sl3lY4jcSzilFC6OYjtt/
	0iKKq1io8M4UIIZ5ChpPAtBkJbE2O5T1YYOTSnlHnR+gjSdoaz2fXlhYAtOFdoYF
	N1B3BUOqTeyJgiP4m0krXlSTLCsJ2tjEVAagEKV3R6dleM/ConRid2oySO1OU/Ep
	bFaNckGlYvQpG8hWSfW7aVLwB4UL3zex6fZwYCKiE5azqhHwYktb6Ut9UOLg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1719400815; x=1719487215; bh=fkOGLKTKKufIvxA5SItl5LCFUub2
	4XZOe7xquE5snEY=; b=hSGRcJnSRIDDjyKwxBXuXfHvLitxr7CdgsLfbSQfZzCr
	SZZvG6XY0Uy5XU1y+6pBCPh8UIYPyyask3VNwMw5GaCDbi7eficUTL4z/WzTWeU2
	8QRx9L6R/gIjvWQ/HTpJg8/3afrllAip8c+lBsPwm6tNS+EFGRWxRDMufU2zPghi
	rzngdFv/CKFQGt7ZlqxmtJmI/6iruXL2bTssWXMmhgG2efu8OhZoF8CxowaJEE7+
	fHWQbPxETBHM5MG7oEO9yYOAwXxbk2G9eDr2lFWHbQ+YbXlJANSBGXkIUXHbbQ+V
	8ncR9JGKvfoqRncSrWVvjX9nehNSqxp9qQoLmdIyWQ==
X-ME-Sender: <xms:bvl7Zrg23EMdEqhckCxFtUfobG7c0Y3Tk7Jdqevs1lPI0g_iGkNm5Q>
    <xme:bvl7ZoC4ggen1yItOkmOYDNryh2cuULTixdWezGtaUpAaOoA-zeHmNXkeE-M2Y70D
    VNeC_RN3OXKSOV-6w>
X-ME-Received: <xmr:bvl7ZrHmy7HmTpJTEgDPkm4YGBN4w9p1fVeyjhMK3ngDgQUx8Smwkn96s_9vCjAIl-ms_9R8XKsmCHJVFnLi0TSMvRik4aL97VQ_Ih8xcEYj5Ufh>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrtddvgdeflecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvfevufffkffoggfgsedtkeertdertddtnecuhfhrohhmpefthigrnhcuhggr
    lhhklhhinhcuoehrhigrnhesthgvshhtthhorghsthdrtghomheqnecuggftrfgrthhtvg
    hrnhepfeejjefhjefhgfeitdellefhueekfeetueektdejvdeuueegudehudffkeevudeu
    necuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtne
    curfgrrhgrmhepmhgrihhlfhhrohhmpehrhigrnhesthgvshhtthhorghsthdrtghomh
X-ME-Proxy: <xmx:bvl7ZoSrI1PbmcRKjOVk_a1_HwO-eT-c_REpHGbNLRtURCegqMBYbw>
    <xmx:bvl7ZoxjPEQA1wUXu1wa_zLWDcav4DFfEf2HqSyOGQnA9SijBEXMOA>
    <xmx:bvl7Zu7GHP0DWcYNqfnd2OQVc2xFygoUYIda_NRLjE_1HmgNnm6mGQ>
    <xmx:bvl7ZtwYANrF6ad9tLlShhIJj0oMwZCALF81DvNG9-ZJ_GIq8myFGg>
    <xmx:b_l7Ztgd4yqkwl-dvezHthPCn0XPYzEv08Di0P3npp15WeiM81oQM8KK>
Feedback-ID: idc0145fc:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 26 Jun 2024 07:20:09 -0400 (EDT)
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
	Ryan Walklin <ryan@testtoast.com>
Subject: [PATCH 0/3] Correct WL-355608-A8 panel compatible
Date: Wed, 26 Jun 2024 23:17:47 +1200
Message-ID: <20240626112005.248576-1-ryan@testtoast.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The previous patch adding support for this panel [1] referred to previously by its serial number only. As discussed after the patch was committed, the preference is to use the integrating device vendor and name in this circumstance.

This series corrects the panel compatible to reflect the vendor (Anbernic, already in the vendor prefix table), updates the NV3052C panel driver with the new compatible, and lastly adds num-chipselects and sck-gpios to the DT binding example, identified by make dt_bindings_check as required for bit-banged SPI over GPIO lines.

Regards,

Ryan

[1] https://lore.kernel.org/dri-devel/20240530211415.44201-1-ryan@testtoast.com/

Ryan Walklin (3):
  dt-bindings: display: panel: Rename WL-355608-A8 panel
  drm: panel: nv3052c: Correct WL-355608-A8 panel compatible
  dt-bindings: display: panel: correct Anbernic RG35XX panel example

 .../{wl-355608-a8.yaml => anbernic,rg35xx-panel.yaml} | 11 +++++++----
 drivers/gpu/drm/panel/panel-newvision-nv3052c.c       |  2 +-
 2 files changed, 8 insertions(+), 5 deletions(-)
 rename Documentation/devicetree/bindings/display/panel/{wl-355608-a8.yaml => anbernic,rg35xx-panel.yaml} (76%)

-- 
2.45.2


