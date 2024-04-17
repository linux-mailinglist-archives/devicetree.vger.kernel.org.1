Return-Path: <devicetree+bounces-59933-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EEAC88A7AF7
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 05:17:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8ED201F231FF
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 03:17:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AE9579C8;
	Wed, 17 Apr 2024 03:17:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="hdyq7XQ0"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.144.209])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 065C023B0;
	Wed, 17 Apr 2024 03:17:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.144.209
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713323868; cv=none; b=gqVQIT/oNMbv9wokN9S/c/6C2qG7ONWi6v8Vj9jz10JVTYy2WAczRCLMY7/Zv22qbf6ret3Q5pRo2bmFLpR9uhOibjlaEKfZyYodLbwlVOSUVIOwHJtU0XVODxj6kCpbHv/GQBeIHLMvRSyaaOnLOqCgXz1j5nXjMKexUCU0tZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713323868; c=relaxed/simple;
	bh=vuXIoBFd/G4dVk7Xw2oPBbSsNgLVzGcMa5RJskZYC/g=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=YQLsatn1NVCdw/7LGy22imv/ek9ELRlrcucUDBv6t+mrRLVvG/pAilO8dYPwlk4E+E1DSzmIZaGj5ZbrzB0qcit8MsBVTIOUdRAhOUcG5YEmk6zYjy+R7mEHzIQegg7aHMXKU5SyFAgPtlpruaJ7RR6CpekxoWHscRoo4N4ekL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=hdyq7XQ0; arc=none smtp.client-ip=192.19.144.209
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.lvn.broadcom.net (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id A890BC0000F3;
	Tue, 16 Apr 2024 20:09:36 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com A890BC0000F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1713323376;
	bh=vuXIoBFd/G4dVk7Xw2oPBbSsNgLVzGcMa5RJskZYC/g=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=hdyq7XQ05CPaPgauvI+P/6tuLzxQWNgcEzD4IQoPx9SET0MvqYT4E6Cv7ipwpSrTw
	 2c7mwYIgUazv1Mjws/mt7TmZL2hu0eVWs93lvWTO1i489AtCPiQ7vYdAF+s+GdJqKk
	 ZAyQTN93fEOiIWQwcx006Ff7PkPp6bwwv5HEFtdQ=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail-lvn-it-01.lvn.broadcom.net (Postfix) with ESMTPSA id BBAA518041CAC4;
	Tue, 16 Apr 2024 20:09:34 -0700 (PDT)
From: Florian Fainelli <florian.fainelli@broadcom.com>
To: bcm-kernel-feedback-list@broadcom.com,
	=?iso-8859-9?b?QXL9bucg3E5BTA==?= via B4 Relay <devnull+arinc.unal.arinc9.com@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Hauke Mehrtens <hauke@hauke-m.de>,
	=?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	=?iso-8859-9?b?QXL9bucg3E5BTA==?= <arinc.unal@arinc9.com>
Subject: Re: [PATCH 2/4] ARM: dts: BCM5301X: provide address for SoC MACs on ASUS RT-AC3100 & AC88U
Date: Tue, 16 Apr 2024 20:09:36 -0700
Message-Id: <20240417030936.919227-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240414-for-soc-asus-rt-ac3100-improvements-v1-2-0e40caf1a70a@arinc9.com>
References: <20240414-for-soc-asus-rt-ac3100-improvements-v1-0-0e40caf1a70a@arinc9.com> <20240414-for-soc-asus-rt-ac3100-improvements-v1-2-0e40caf1a70a@arinc9.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Sun, 14 Apr 2024 20:01:22 +0300, Arınç ÜNAL via B4 Relay <devnull+arinc.unal.arinc9.com@kernel.org> wrote:
> From: Arınç ÜNAL <arinc.unal@arinc9.com>
> 
> Do not leave the providing of a MAC address for an SoC MAC to a driver.
> Describe it on the bindings. Provide a distinct MAC address for each SoC
> MAC.
> 
> Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian

