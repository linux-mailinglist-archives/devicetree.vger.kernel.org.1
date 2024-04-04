Return-Path: <devicetree+bounces-56368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5166B898C79
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 18:47:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8264C1C21465
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 16:47:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC6841C6BF;
	Thu,  4 Apr 2024 16:47:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="X0G3zFuV"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.144.208])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEE991C6A5
	for <devicetree@vger.kernel.org>; Thu,  4 Apr 2024 16:47:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.144.208
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712249222; cv=none; b=PmBFCXs0hjsxE0fZdKWOfy2lj+9gTId00jm2Tq8zfSxOvHghDtkr6zfqyAwoA9cEFu/X00RQ9bZN41r9e7e7LI6m5cEyZNvXpVf8w7BMt7zWEuKZCT/9s6+/Z2LOz99WYjSB5jfmVUoe5N/+/jxOSgu+OmfYp39Cij5dvVMfgis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712249222; c=relaxed/simple;
	bh=DTki/MoV8bztqiawIGvg1tXQhkORgVuj92eKUrpM8ug=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=mmTeiANhSrE3TZBVPTUAgzqBau2iLOwNE00vPrwCDv5w0hmoRBkf8hL9BjeOKbwW2z/8QYtOE1g5io2/pAK+jxRTHZ06tAJndXJi5P0/ad0pvke0xoCZtPZi17C+tGzs59Z/pQKIVY6aGJhrkJNIRqsgz7djRvXU4U47M9CLdUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=X0G3zFuV; arc=none smtp.client-ip=192.19.144.208
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.lvn.broadcom.net (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id 3F5FFC0000EA;
	Thu,  4 Apr 2024 09:46:54 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com 3F5FFC0000EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1712249214;
	bh=DTki/MoV8bztqiawIGvg1tXQhkORgVuj92eKUrpM8ug=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=X0G3zFuV83tobfV5LOUU/XuvTgMuvyi34UopwzGnlobVdwjektcN5QWNo0T3GTYH3
	 O0ZX+cYePBGCi4CN8eJi6Ijlm3Rqy9ZA8qEDgCbPBp5o8ObakS7ekIOHJCY/cRS4jG
	 0gDdleTRzPOhNu29wtefA2+MasOocByqIjA4KzM4=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail-lvn-it-01.lvn.broadcom.net (Postfix) with ESMTPSA id 6423318041CAC4;
	Thu,  4 Apr 2024 09:46:52 -0700 (PDT)
From: Florian Fainelli <florian.fainelli@broadcom.com>
To: bcm-kernel-feedback-list@broadcom.com,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Cc: Florian Fainelli <f.fainelli@gmail.com>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	Naushir Patuck <naush@raspberrypi.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Nicolas Saenz Julienne <nsaenz@kernel.org>,
	Ray Jui <rjui@broadcom.com>,
	Rob Herring <robh@kernel.org>,
	Scott Branden <sbranden@broadcom.com>,
	Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH v2 2/3] firmware: raspberrypi: Use correct device for DMA mappings
Date: Thu,  4 Apr 2024 09:46:53 -0700
Message-Id: <20240404164653.2598364-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240326195807.15163-3-laurent.pinchart@ideasonboard.com>
References: <20240326195807.15163-1-laurent.pinchart@ideasonboard.com> <20240326195807.15163-3-laurent.pinchart@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Tue, 26 Mar 2024 21:58:06 +0200, Laurent Pinchart <laurent.pinchart@ideasonboard.com> wrote:
> The buffer used to transfer data over the mailbox interface is mapped
> using the client's device. This is incorrect, as the device performing
> the DMA transfer is the mailbox itself. Fix it by using the mailbox
> controller device instead.
> 
> This requires including the mailbox_controller.h header to dereference
> the mbox_chan and mbox_controller structures. The header is not meant to
> be included by clients. This could be fixed by extending the client API
> with a function to access the controller's device.
> 
> Fixes: 4e3d60656a72 ("ARM: bcm2835: Add the Raspberry Pi firmware driver")
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian

