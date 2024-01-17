Return-Path: <devicetree+bounces-32881-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2D4830E7A
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 22:19:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 396EA2894B6
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 21:19:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2966925562;
	Wed, 17 Jan 2024 21:19:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="VE6Zl+/p"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (unknown [192.19.166.231])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EE3825560
	for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 21:19:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.166.231
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705526390; cv=none; b=PpBbPk57zfA7Fuxv/1hGnIAld4Zjmad5qz0Ahty7LCB8ZU2+m/BExz5fMmOwrW34mQOCuIrLlogM591xlJKyXKBXqgjRd0Ygb63iTPNZFr/o2DnEgpN7/9w/6DIhLEc+RIUXFzXR46H7I0bLp1sfsDQ2OOsUUkNDrcTJKy3RbVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705526390; c=relaxed/simple;
	bh=v/hkuTJHH/l6xm3MzWXbqybr/aROzjuc5niRRLaz8tw=;
	h=Received:DKIM-Filter:DKIM-Signature:Received:From:To:Cc:Subject:
	 Date:Message-Id:X-Mailer:In-Reply-To:References:MIME-Version:
	 Content-Type:Content-Transfer-Encoding; b=KNxUJKuZhYEth7XhSNV4JDPPaUA3IMUYgQOPc9dHjAvlOu5Tt4H3aRNJEQDI1lSFBNuysY9MBEnoSJh5kSky0Y3147K3nfH5nTEUQvu0j1leQY0HhjeI6T1eB2veeFuvBO+c/nJ5bSRP78CVkuuW2mFB/1NgbIE/7d8btLqoh9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=VE6Zl+/p; arc=none smtp.client-ip=192.19.166.231
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.lvn.broadcom.net (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id 3C966C001121;
	Wed, 17 Jan 2024 13:19:42 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com 3C966C001121
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1705526382;
	bh=v/hkuTJHH/l6xm3MzWXbqybr/aROzjuc5niRRLaz8tw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=VE6Zl+/pD436R2Ku3cCqhbmOhhYHDJPh+FR8zRk7hbp8irkva7AVjEIuBTscVc4Os
	 cEOpGSIIXWqFhgCYAKCPwwpD88APnMSnGbOkTBBVdNJEPlUZmz7MD0b79SeNLX1fR2
	 6SUdrQ7FBvvq1JyuwmByaEJmWGkLgnQuR5zw+LTk=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail-lvn-it-01.lvn.broadcom.net (Postfix) with ESMTPSA id A9E3F18041CAC4;
	Wed, 17 Jan 2024 13:19:40 -0800 (PST)
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
Subject: Re: [PATCH] arm64: dts: broadcom: bcmbca: bcm4908: use NVMEM layout for Asus GT-AC5300
Date: Wed, 17 Jan 2024 13:19:41 -0800
Message-Id: <20240117211941.1315356-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240111115617.12072-1-zajec5@gmail.com>
References: <20240111115617.12072-1-zajec5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Thu, 11 Jan 2024 12:56:17 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Defining NVMEM cells as direct subnodes is deprecated since commit
> bd912c991d2e ("dt-bindings: nvmem: layouts: add fixed-layout"). Use new
> syntax based on NVMEM layout.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
--
Florian

