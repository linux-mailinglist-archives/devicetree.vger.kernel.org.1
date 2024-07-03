Return-Path: <devicetree+bounces-82753-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E499258D3
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 12:37:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 97C5C1F21691
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 10:37:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BFDE14430D;
	Wed,  3 Jul 2024 10:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="KYvYfsP9";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="fz63JBYu"
X-Original-To: devicetree@vger.kernel.org
Received: from fout6-smtp.messagingengine.com (fout6-smtp.messagingengine.com [103.168.172.149])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43608142904
	for <devicetree@vger.kernel.org>; Wed,  3 Jul 2024 10:37:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.149
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720003043; cv=none; b=qnjoojy7u7/ygTo3p/hUTDixbl/+C6VzroCPwmVANlj/mhr7+Stj/INsTaUtUFCq6bgdhmpfFELtjLCfw04XZvYAhsLuBvwZLJoeGGbscMAcgzaLC/3narcqAJw6HbRFDCL3HQJNHfrKvK3Ssjp65p80ApP9pxP9ZYN3HK4wVPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720003043; c=relaxed/simple;
	bh=mlNZnYt5lBv0wbs9cZmj0hUIo7Z1TGM2gWIHahH72Qo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=b+jUlGdY67ZAaJCqFqhH2xtD93+l4Em/xkEbZRLBTa1ujgWDTPHOiZkiT3R12nfExTStJVg/SZGZeaXJN1ne7hw3qyf7Xy1yFBJfCS/G+GXsSpIiICFfWgngF4vwSxUrFM/zVNbIZ57KDgikpg+O7JcejVqSySWLyzU41m2l3OY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=KYvYfsP9; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=fz63JBYu; arc=none smtp.client-ip=103.168.172.149
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailfout.nyi.internal (Postfix) with ESMTP id 2C4101380508;
	Wed,  3 Jul 2024 06:37:20 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Wed, 03 Jul 2024 06:37:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to; s=fm2; t=1720003040; x=1720089440; bh=G6cVu6Mlds
	8QUJjdA1rJyQ1UDV54Q/orV87nudERv2o=; b=KYvYfsP9qoTXs7wdrQlrpsLBpO
	6SBDc+FtsS6A4SWcwZ++SRG5DgjG/27tiPlYcMT3aHkf5XvVlqzTEK+SgBfMd+jC
	fYA5BEDrYV7Kdfhis//b+grhPE7U6MkORmAxiKb2KOG7BsWO+Ax8XyDBLaVzLEhb
	yLxSNOAiH15hMoTiG6uM1dHn0VTgl9Ujjg1W1GAuLYrW48NZTvIaLiLF0dedVuG/
	XQXlCIvg4tHo9BE0mmJrP5IP7AR3shsIdxFTlC+WIbChzxOEqMSUNDxYN4/HmilY
	071DZTqH6evvDP7PpCOnDYbasHmNoX140Abpaf4Q5loKBSG77/u4s6vDqkpg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1720003040; x=1720089440; bh=G6cVu6Mlds8QUJjdA1rJyQ1UDV54
	Q/orV87nudERv2o=; b=fz63JBYuxpuYfNc4yiDbRT2evPYlVapX7Ya7rZ4CcqpY
	a5rG9e4GY0Aonq+YrzCyDo7eQKAscOKBLjIi3Qf+o6ObHQzxflByeLIRzt/AfeJH
	DEhRIY6q3vw72DSgwtOhm2N2h4n8du63uAjQ7LsCoAK1TM+ATvGe9ZEl5W/jGou4
	OIQ/SkPNpROwiUdyLTFb/H1xR0LSn6R4UWTTe0e4JkBgBwE8BZSNfPLG5hHzF7RA
	wEtYjjDrC5/E17S+euZymm5y6oY5iBuemTCPzRTbOYCMtp0RDIDfXL5xLowLkeYf
	jEkHMuVCuYXkizUV3UfHs21G9ero/wZmXPKpAdTJkQ==
X-ME-Sender: <xms:3ymFZgTzkBCu1BX8ID3teAFZFei8KSTM_01gR3xvgnfVNjnYEwNakQ>
    <xme:3ymFZtwssw9E6TqzFSHW3x3z6gV-AOuX4Jr_5pciZBC9_hA861Pa_JvGxmikHA881
    bEbTK0Zehoj6MHeug>
X-ME-Received: <xmr:3ymFZt0ZyMOZkwZIRtnTjqyzBg_dDO3unXJwpN64dZMv173JKkT9i1LwM7antdKMd27G0OmGOw2skiloRf40MGjkTF9F76Qr0nGPO6mOOGPUMbnM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudejgdeftdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvfevufffkffoggfgsedtkeertdertddtnecuhfhrohhmpefthigrnhcuhggr
    lhhklhhinhcuoehrhigrnhesthgvshhtthhorghsthdrtghomheqnecuggftrfgrthhtvg
    hrnhepuddvueduueegtdeuffetveevgeehhedvhfefudduveekgffgfedtheegtefhhfff
    necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprhihrg
    hnsehtvghsthhtohgrshhtrdgtohhm
X-ME-Proxy: <xmx:3ymFZkD9Dub9HW1hfmaPZbJdIw_bbE3eNCoxSC7PDmFDI958IJVK1w>
    <xmx:3ymFZpgYLZ9Fs-AgEo7KSjyyzAiX3SRD-BLoehiJCDvUllZRXST66w>
    <xmx:3ymFZgqlUkeNZReC9nUepdysc8JqMjjpqDbaFZ50Ulo6natbB6jhyg>
    <xmx:3ymFZsjSTOLYynN_cKq2QoLfIURNLKBLAe8V40OcZfCTR0_ArsdapQ>
    <xmx:4CmFZoSNDo_mB1krSeDIJWK_ICSpq8qo4KvbxUrL5ywd7AIprn71aHNs>
Feedback-ID: idc0145fc:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 3 Jul 2024 06:37:15 -0400 (EDT)
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
Subject: [PATCH v2 0/3] Correct WL-355608-A8 panel compatible
Date: Wed,  3 Jul 2024 22:31:43 +1200
Message-ID: <20240703103710.31169-1-ryan@testtoast.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi All,

V2 of this patch for this LCD panel used in Anbernic handheld devices, with updated compatible string as agreed, in the format <device vendor>,<component serial>.

Original blurb below:

The previous patch adding support for this panel [1] referred to previously by its serial number only. As discussed after the patch was committed, the preference is to use the integrating device vendor and name in this circumstance.

This series corrects the panel compatible to reflect the vendor (Anbernic, already in the vendor prefix table), updates the NV3052C panel driver with the new compatible, and lastly adds num-chipselects and sck-gpios to the DT binding example, identified by make dt_bindings_check as required for bit-banged SPI over GPIO lines.

Ryan Walklin (3):
  dt-bindings: display: panel: Rename WL-355608-A8 panel
  drm: panel: nv3052c: Correct WL-355608-A8 panel compatible
  dt-bindings: display: panel: correct Anbernic RG35XX panel example

 .../{wl-355608-a8.yaml => anbernic,wl-355608-a8.yaml} | 11 +++++++----
 drivers/gpu/drm/panel/panel-newvision-nv3052c.c       |  2 +-
 2 files changed, 8 insertions(+), 5 deletions(-)
 rename Documentation/devicetree/bindings/display/panel/{wl-355608-a8.yaml => anbernic,wl-355608-a8.yaml} (76%)

-- 
2.45.2


