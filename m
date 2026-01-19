Return-Path: <devicetree+bounces-256778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BEA8D3A4FE
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 11:27:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E46563047914
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 10:22:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 644693090E4;
	Mon, 19 Jan 2026 10:22:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="1A1btftq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 564BC1624D5
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:22:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768818176; cv=none; b=D6RibQ2V0/RKR+O/hedLFDA/P6goJ1k8O1kwHt+b2XcTcANF6xRGkOwhmF05n4EYCnfR1tL2OUpEx83ITI+hwBW3BY7ap++7N39zz00eeNO6Dp/Eg/GEzCJC3iFTCTm4ipe6StWAKE7vDJ0DKBfGJu3XdOXufbityoxdhyEPxlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768818176; c=relaxed/simple;
	bh=mQ+F5iuw4uXH02D6/6nCwEqu6J8z9zlnp1XZVDNYA9g=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=FBHUgQ0GBU1vI9Lu4BQlPHKp+jSzLCCEQX4+/Kkej1rsTXrBP7W30LPvoTs17x1F1Ey/23tsGG9IB54j9+ph0qJhAHQB7UVra1KnDk2iapJIOwzAbPrNmZrKYycZ+iof3ZrWMcBbODJKh2PzE0Z96AfxH4QsWrji0mTogY9ewmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=1A1btftq; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id AD569C214C1;
	Mon, 19 Jan 2026 10:22:26 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id B004E60731;
	Mon, 19 Jan 2026 10:22:53 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 63CA910B6AE4D;
	Mon, 19 Jan 2026 11:22:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1768818173; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=uEDoUoozLjfjt5t9KOCLyNTAT0rrA6448282ApOfd0Y=;
	b=1A1btftql7gevm6uwERTmgJrkW/fDX+Wt8OoSx63UtpQke2oXfVu3ETn79bkRtoMK5s06M
	TgtFIkqJNRPObt/cWub3V7aKyAylV59Mv86gtTEpB0DRPuXZ19EZozy35w7jxHi/YI5Ey2
	coQxyoQHRpbqTlSLqlW7WMGpq4g54bpkSslO2r/PB1/GsP/2g32hZsj9cfEla7SgPja+F+
	V1e/z8f79pqO0YCPCwzvFzQjWyECiqbhLlpqrenJ41vCONPi5T8MsJ0UE9W4aEJb2ZK6ms
	md5+nj76RbqORiaWSFJ8NMMgW2ESh3j9/q4qybqzXQJbkbXIs1rqyEFSDFb70Q==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Angus Clark <angus.clark@st.com>, 
 Akhila YS <akhilayalmati@gmail.com>
Cc: linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260106-st-fsm-v2-1-7e0a2e18127a@gmail.com>
References: <20260106-st-fsm-v2-1-7e0a2e18127a@gmail.com>
Subject: Re: [PATCH v2] dt-bindings: mtd: st,spi-fsm: convert to DT schema
Message-Id: <176881817026.2448784.8568722678066926802.b4-ty@bootlin.com>
Date: Mon, 19 Jan 2026 11:22:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3

On Tue, 06 Jan 2026 15:25:43 +0000, Akhila YS wrote:
> Convert STMicroelectronics SPI FSM Serial NOR Flash Controller binding
> to DT Schema.
> 
> 

Applied to mtd/next, thanks!

[1/1] dt-bindings: mtd: st,spi-fsm: convert to DT schema
      commit: 90541270967837c996631faa94e43d465e2a20c7

Patche(s) should be available on mtd/linux.git and will be
part of the next PR (provided that no robot complains by then).

Kind regards,
Miquèl


