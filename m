Return-Path: <devicetree+bounces-93434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A28950DC6
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 22:24:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6B145284317
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 20:24:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C27AE1A705C;
	Tue, 13 Aug 2024 20:24:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="IH1/HPEY"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.144.208])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 587C11A7050
	for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 20:24:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.144.208
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723580651; cv=none; b=lSX9ZAbb/16cW3teygezMKfyVbT4UbazSUUX+CG2jeAqkm2Dxg8vJNAc8tIVkKmfRqb6TtWGKTdLWjpk/Nb5MouiRXTVuQmRi3lEw056Ehe/dg7rKc7Y3jj8AQOHuNJusQh0k+J11+c5T2X3pOR3gf3e9Lbk3OCeSIwL/uYZGGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723580651; c=relaxed/simple;
	bh=Ml7KknqPPUOAH7EYc2uhPYO1VOStUzWxPnMmoZP6+Xo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ciEW7ODkC0M+GPzi4mICeaZ/cmkIfuH4FQhgQjRPBa9AHtarR2ptM4VOoMZFzaSD1fDUWQWuz58q6/WJCHo7gEbpp8bjESPLwVa2I4Np2qqcJDu2NvnJnnxKwxoiSL/XBpgM37APFIWZBToYPndjIfBFdbkjm6IWPESl1WZCVsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=IH1/HPEY; arc=none smtp.client-ip=192.19.144.208
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.lvn.broadcom.net (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id 41D60C0003C8;
	Tue, 13 Aug 2024 13:24:09 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com 41D60C0003C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1723580649;
	bh=Ml7KknqPPUOAH7EYc2uhPYO1VOStUzWxPnMmoZP6+Xo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=IH1/HPEYw45XA7O6gC6rZk4TZB8CACF47Z5ytkmEMSQled12Pjpwv18NkbQIhi+jo
	 /CBsZUipP1suog4G8ZOchmm7MUWyvWhUt2MTysOir9zDwSkhCL6FYdRffXwW0c/GeV
	 TrBBfaD4B4fAuGEAhF9AtWGoUn0oatdgeMvrvkAY=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail-lvn-it-01.lvn.broadcom.net (Postfix) with ESMTPSA id 5608618041CAC6;
	Tue, 13 Aug 2024 13:24:06 -0700 (PDT)
From: Florian Fainelli <florian.fainelli@broadcom.com>
To: bcm-kernel-feedback-list@broadcom.com,
	Stefan Wahren <wahrenst@gmx.net>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	linux-arm-kernel@lists.infradead.org,
	kernel-list@raspberrypi.com,
	devicetree@vger.kernel.org
Subject: Re: [PATCH V3 RESEND 1/4] dt-bindings: timer: convert bcm2835-system-timer bindings to YAML
Date: Tue, 13 Aug 2024 13:24:08 -0700
Message-Id: <20240813202408.3856876-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240812200358.4061-2-wahrenst@gmx.net>
References: <20240812200358.4061-1-wahrenst@gmx.net> <20240812200358.4061-2-wahrenst@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Mon, 12 Aug 2024 22:03:55 +0200, Stefan Wahren <wahrenst@gmx.net> wrote:
> Convert the DT binding document for bcm2835-system-timer from .txt
> to YAML.
> 
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian

