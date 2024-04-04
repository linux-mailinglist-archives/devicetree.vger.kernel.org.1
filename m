Return-Path: <devicetree+bounces-56367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BE21F898C77
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 18:46:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BF55B1C21465
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 16:46:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC3061CA84;
	Thu,  4 Apr 2024 16:46:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="sMwiRra1"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.144.205])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1B21BDCD
	for <devicetree@vger.kernel.org>; Thu,  4 Apr 2024 16:46:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.144.205
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712249211; cv=none; b=dP0+mSC2fRImqKrgLKDOqcnqahIdewckUvtIzBllYCR76SVJfaraqSJJfC8Q+gT6bIBBIaI8F26wCV7d6SA16TqXCt7Gct3m70WjbESWEdSZyR3DLRnAwvOAjCcqh67sTI/vLozfJVTXbJYxH7B/zQ8LpUuHiwaX9/XaVkL9Wac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712249211; c=relaxed/simple;
	bh=gYcRzLmwDOU0zotiBjYSsFEyAV9WB7UV2OzWD7A3stk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=C1Y2HgIIVOW3dga6aAN/dDykmFN1iaIVFzM1YD6hLpiTXqgJxDLUz/aP7ThFVxRek17H599aq+C1zC5Iohswtldo2J5q6KzHRcNznmajJppdZyIpWr4Ua5W50tP/ANdtL5x3ZdOoN0u15odRA05Fd6SgRa5vqXIJQqzxbm2n0mA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=sMwiRra1; arc=none smtp.client-ip=192.19.144.205
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.lvn.broadcom.net (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id AA115C0000ED;
	Thu,  4 Apr 2024 09:46:41 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com AA115C0000ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1712249201;
	bh=gYcRzLmwDOU0zotiBjYSsFEyAV9WB7UV2OzWD7A3stk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=sMwiRra1/+WlNL8oBaeZKwWLwXyApApc8K5/BlHmXfaI/5RrnSNo5C3PyxuH/jp8h
	 mehvMe3fnx7Y9dnjyDP7OSKTzQorn6WJ0cvZIejTKyBcZxjeWKFAFo6DCOw96CTKdu
	 2D9qWccbL7dYL/tIc5/Re8N3DJW0UN0rvYNj/FdA=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail-lvn-it-01.lvn.broadcom.net (Postfix) with ESMTPSA id C75B718041CAC4;
	Thu,  4 Apr 2024 09:46:39 -0700 (PDT)
From: Florian Fainelli <florian.fainelli@broadcom.com>
To: bcm-kernel-feedback-list@broadcom.com,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Cc: Florian Fainelli <f.fainelli@gmail.com>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	Naushir Patuck <naush@raspberrypi.com>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Ray Jui <rjui@broadcom.com>,
	Rob Herring <robh@kernel.org>,
	Scott Branden <sbranden@broadcom.com>,
	Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: bcm: raspberrypi,bcm2835-firmware: Add gpio child node
Date: Thu,  4 Apr 2024 09:46:40 -0700
Message-Id: <20240404164641.2598280-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240326195807.15163-2-laurent.pinchart@ideasonboard.com>
References: <20240326195807.15163-1-laurent.pinchart@ideasonboard.com> <20240326195807.15163-2-laurent.pinchart@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Tue, 26 Mar 2024 21:58:05 +0200, Laurent Pinchart <laurent.pinchart@ideasonboard.com> wrote:
> Unlike the other child nodes of the raspberrypi,bcm2835-firmware device,
> the gpio child is documented in a legacy text-based binding in
> gpio/raspberrypi,firmware-gpio.txt. This causes DT validation failures:
> 
> arch/arm64/boot/dts/broadcom/bcm2711-rpi-4-b.dtb: 'gpio' does not match any of the regexes: 'pinctrl-[0-9]+'
>         from schema $id: http://devicetree.org/schemas/arm/bcm/raspberrypi,bcm2835-firmware.yaml#
> 
> Convert the binding to YAML and move it to
> raspberrypi,bcm2835-firmware.yaml.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian

