Return-Path: <devicetree+bounces-269390-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oPx1GpzaoWlcwgQAu9opvQ
	(envelope-from <devicetree+bounces-269390-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 18:55:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C88321BBAD7
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 18:55:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C1CFB315A6B7
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 17:52:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55183363C69;
	Fri, 27 Feb 2026 17:52:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nHJl3mv2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E1C3624AB;
	Fri, 27 Feb 2026 17:52:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772214725; cv=none; b=PQdFI+Tr1DZX+WeTFowlDa06GEa7LPUgKjqI11s1ASk/xua5gE82l8ulL0B8Er99Q9S5B26TI8A2jl1LvG0KJG+LwGyXBikBn9UstpmsdT4rbcGqaqVfaUvfaQ7ggggYUYA4Qe1Zfdxb5FPkabDSTBldJpEkQzUcsuMr8BjEaaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772214725; c=relaxed/simple;
	bh=7/mNYFgufSdB6BoZBYMJzzr2bJpmHixlEJwwGWkR4yU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=m8xyLoDwXVDI0nNLLZUKcsVPxor6wRYMHb1LaGBVJ3cOGZoQnLj/uIQaExEzaUlvbYsFKGL/jTMAcvOa9NDUQep2Tk9nF/yErzFzF1Rg9dPz7zBb9RhP8cMtLClWLC25dLjrBFRiEYNfVl8WlM8Fk/lET1KuWFqFUWtt8G+MbBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nHJl3mv2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90BFFC2BC86;
	Fri, 27 Feb 2026 17:52:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772214724;
	bh=7/mNYFgufSdB6BoZBYMJzzr2bJpmHixlEJwwGWkR4yU=;
	h=From:To:Cc:Subject:Date:From;
	b=nHJl3mv29lUbaGLD1RfzlNxAcOILEaDl/Vv70oToycDi4XWRLApSVVY4X0bxwio7P
	 rHJO67CO8ZCYdUEpeMPwmB2R1QKoAehF90iapkiSpnx5YIwH32jScLP9R9LJ0WMQpz
	 LAfpL+pyIaL3zD2O82cso/eleaRb2FGk/FAvvuCiXslsD8BOQJV13+z/lOhKOa0iWO
	 TORze1c4hGoZTixoQY0KAJAHDDKi/XnEmmZ1McKbjJ6ChAzZAbTVZ3KOTxXYXY9Ei9
	 CbGIjUfiIrvh7wv9S2Q/nVxiLf1eAW3GHBNpKK3qY3P0XAKP+C5Dr7rWB0aZFKywu0
	 8VLCaEqfvQkkA==
Received: by wens.tw (Postfix, from userid 1000)
	id 1388E5FDB1; Sat, 28 Feb 2026 01:52:02 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej@kernel.org>,
	Samuel Holland <samuel@sholland.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Mark Brown <broonie@kernel.org>
Cc: linux-sunxi@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] arm64: allwinner: sun55i-t527: avaota-a1: Add SPI NAND
Date: Sat, 28 Feb 2026 01:51:52 +0800
Message-ID: <20260227175157.2339758-1-wens@kernel.org>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269390-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wens@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C88321BBAD7
X-Rspamd-Action: no action

Hi,

This series enables the SPI NAND found on the Avaota A1 in Quad SPI
mode. The SPI driver already supports Dual SPI and Quad SPI, but the
bindings need to be updated to allow it.

Patch 1 updates the binding to allow Dual SPI and Quad SPI on the newer
SoCs. It also allows describing no TX or no RX available.

Patch 2 adds another set of pins for spi0 on the A523 SoC family. This
set is used for the SPI NAND on the Avaota A1 board.

Patch 3 enables the SPI NAND found on the board. No partition layout
is provided at the moment.


Please have a look.


Thanks
ChenYu


Chen-Yu Tsai (3):
  spi: dt-bindings: sun6i: Allow Dual SPI and Quad SPI for newer SoCs
  arm64: dts: allwinner: sun55i-a523: Add pinmux for spi0 on PJ pins
  arm64: dts: allwinner: sun55i-t527: avaota-a1: Add SPI NAND

 .../bindings/spi/allwinner,sun6i-a31-spi.yaml | 31 +++++++++++++---
 .../arm64/boot/dts/allwinner/sun55i-a523.dtsi | 35 +++++++++++++++++++
 .../dts/allwinner/sun55i-t527-avaota-a1.dts   | 15 ++++++++
 3 files changed, 76 insertions(+), 5 deletions(-)

-- 
2.47.3


