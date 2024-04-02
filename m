Return-Path: <devicetree+bounces-55657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D09895E01
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 22:51:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5736928778A
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 20:51:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B62EF15B542;
	Tue,  2 Apr 2024 20:51:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="ZLPMOjwj"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.144.208])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCAE1E4AE
	for <devicetree@vger.kernel.org>; Tue,  2 Apr 2024 20:51:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.144.208
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712091072; cv=none; b=R7K/i2CZr8tQQmulDjRnmD9kr3Nb0pLNWAw1S34Uuz8AqJ9O63ksIE/xohjrX3Q/+N2Fs6j47nTP19yTWxZdg90pEz/BL8qyo49Ts1u0hQ5Z9huuL24ojpdzs4cJ0SvSqINrQmbU8yF+XmaI4SCxVfrnucy7bpuAyRdTjQDbIZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712091072; c=relaxed/simple;
	bh=O7yg1mHxAG4Cbk82QOCffk70sF+nCwV1T90tsOwTCtc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ZAzJSoVpAhcDzjraJBZh+YDIJl32TDIEswjDKvh+B45h48Ex4cwH9i0nSNF7hSZwECn1aP+OxYEqQtqmzPasxeZqA9ImSeMv7uOBR4Cg+sKLEEnOsJ/LNY+tFYNkZlt2LBMcR/zZM6AutsYLoAybSA5MVJPOhYuOZrVeBe8MoSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=ZLPMOjwj; arc=none smtp.client-ip=192.19.144.208
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.lvn.broadcom.net (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id 9FB16C0000EA;
	Tue,  2 Apr 2024 13:41:02 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com 9FB16C0000EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1712090462;
	bh=O7yg1mHxAG4Cbk82QOCffk70sF+nCwV1T90tsOwTCtc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ZLPMOjwjQw45QUw0U9O2nMn/nevCeXgcdpM1OoA6sv+58DmjX+GnYZ/2VP4Sb70n8
	 NoJBriOSiCR2rWB5B6l+6CTNjZE2cAIrTg2JsVPazjhgOnI5b0JEaxEwZSwWRjXcQl
	 amZvVkSJLkgHUL7Ldunz27ILtyCaU+Z/lY0sKvSU=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail-lvn-it-01.lvn.broadcom.net (Postfix) with ESMTPSA id B96F718041CAC4;
	Tue,  2 Apr 2024 13:41:00 -0700 (PDT)
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
Subject: Re: [PATCH] arm64: dts: broadcom: bcmbca: bcm4908: set brcm,wp-not-connected
Date: Tue,  2 Apr 2024 13:41:01 -0700
Message-Id: <20240402204101.2519170-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240328093710.28206-1-zajec5@gmail.com>
References: <20240328093710.28206-1-zajec5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Thu, 28 Mar 2024 10:37:10 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Every described BCM4908 board has WP pin not connected. This caused
> problems for drivers since day 0 but there was no property to describe
> that properly. Projects like OpenWrt were modifying Linux driver to deal
> with it.
> 
> It's not clear if that is hardware limitation or just reference design
> being copied over and over but this applies to all known / supported
> BCM4908 boards. Handle it by marking WP as not connected by default.
> 
> Fixes: 2961f69f151c ("arm64: dts: broadcom: add BCM4908 and Asus GT-AC5300 early DTS files")
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
--
Florian

