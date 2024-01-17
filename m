Return-Path: <devicetree+bounces-32887-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6415D830EA2
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 22:28:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 967541C21D83
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 21:28:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E088325573;
	Wed, 17 Jan 2024 21:28:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="lUqODCmI"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (unknown [192.19.166.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 819D82556C
	for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 21:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.166.228
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705526935; cv=none; b=TN3IUaW7J/Kse0lICVxgEHGSs1mxXPuUZldfesDsOkw87Bku8LizhNacd2z0xMDequwWBg08aq/poNPHrDUjp8np4/ZEMUIgX1rbeYZkWiuBkn38uE1/J3HEifYDwyKnrtOoIdsEd9yeUiflK2cJZbj2QiGdWpU1ls3tRYyaBzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705526935; c=relaxed/simple;
	bh=Rf1uP3gEaL82/m4zo+TFv4Qh0Qa2BQDzgsBBM5SVrsw=;
	h=Received:DKIM-Filter:DKIM-Signature:Received:From:To:Cc:Subject:
	 Date:Message-Id:X-Mailer:In-Reply-To:References:MIME-Version:
	 Content-Type:Content-Transfer-Encoding; b=EHuMUPjbaLYkO0OJkwzYlpqT8WmhnFt7RvIbsLufeDA6J7i6VI/PoxYsWKy/gO1W+OKMLDJEE3T426K8+FTRuUHkbpmztdFTnrGtHDPKobWJh5mnx7Hx14+L5mVAByKIxNieITko3sfjvrZ6RgEHh/aELwC1dbNxxZtB5g7Lunk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=lUqODCmI; arc=none smtp.client-ip=192.19.166.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.lvn.broadcom.net (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id DB47AC007099;
	Wed, 17 Jan 2024 13:19:54 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com DB47AC007099
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1705526394;
	bh=Rf1uP3gEaL82/m4zo+TFv4Qh0Qa2BQDzgsBBM5SVrsw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=lUqODCmIUbIehVJHDLLClFz7srwmZ/AlFLDjT4HUz6d+yzaJMc2Q/2Y9UN9uPHwmF
	 S9nrEH+mLTgLSKgKUOmCQOrgetoFTnAL6i9gPPG9dc7DtqPY5sg3tDHqvVQxwE77kx
	 OfEp/83Iepdn6hjc6MS1jfKGAgGXpdx/iy8I6AHw=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail-lvn-it-01.lvn.broadcom.net (Postfix) with ESMTPSA id 5070D18041CAC4;
	Wed, 17 Jan 2024 13:19:53 -0800 (PST)
From: Florian Fainelli <florian.fainelli@broadcom.com>
To: bcm-kernel-feedback-list@broadcom.com,
	=?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	William Zhang <william.zhang@broadcom.com>,
	Anand Gore <anand.gore@broadcom.com>,
	Kursad Oney <kursad.oney@broadcom.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	=?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH] arm64: dts: broadcom: bcmbca: bcm4908: drop invalid switch cells
Date: Wed, 17 Jan 2024 13:19:54 -0800
Message-Id: <20240117211954.1315450-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240111115636.12095-1-zajec5@gmail.com>
References: <20240111115636.12095-1-zajec5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Thu, 11 Jan 2024 12:56:36 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Ethernet switch does not have addressable subnodes.
> 
> This fixes:
> arch/arm64/boot/dts/broadcom/bcmbca/bcm4908-asus-gt-ac5300.dtb: ethernet-switch@0: '#address-cells', '#size-cells' do not match any of the regexes: 'pinctrl-[0-9]+'
>         from schema $id: http://devicetree.org/schemas/net/dsa/brcm,sf2.yaml#
> 
> Fixes: 527a3ac9bdf8 ("arm64: dts: broadcom: bcm4908: describe internal switch")
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
--
Florian

