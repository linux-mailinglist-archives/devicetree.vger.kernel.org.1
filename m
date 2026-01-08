Return-Path: <devicetree+bounces-252961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 70EF0D056FB
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 19:17:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D917D3020B56
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 17:43:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7662D2EB85E;
	Thu,  8 Jan 2026 17:43:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="k8u42McT"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.166.231])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5874D2EBBB2;
	Thu,  8 Jan 2026 17:43:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.166.231
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767894221; cv=none; b=IV7eyB1pNJM8H0FhYF3muW+90n3snJHJoNo2WD2ChB76db/KIoNgkMscK0WTfsPEAyyjZZ99zJbhB01dyVxQ2EwQxbtmor6j5NVBN6yroTDcGqeKC+uGX0Z4YZymsCapQTPqkIfOLm3xQQEVcEDlP/FEsk7dWSE3Nobkwz46uQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767894221; c=relaxed/simple;
	bh=0dYNCLP+iLu9aUT3nOreZPUXXZNRN/UbIGDKR9EQhcM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LOvscSO7DIZ4vg5KHeD1KaoTnXJlj2BHIwDlN/NM4BPe+0F6YNCYIQkomcCLYUwdP5oQ/qKh1n5f8GM1UFVE6k8eDq0eEZq6BpNtjULm/uZ50qVyYFIE7KjKBfLToRrCz90RpLfAin/y77JiEAnIBfGafXKrWBlkABMvFRIAm+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=k8u42McT; arc=none smtp.client-ip=192.19.166.231
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.broadcom.com (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id 9291DC05F2B6;
	Thu,  8 Jan 2026 09:33:51 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com 9291DC05F2B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1767893631;
	bh=0dYNCLP+iLu9aUT3nOreZPUXXZNRN/UbIGDKR9EQhcM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=k8u42McTENLIPQAqPdsfDpPiRmh5w0VFOpee+ZLJzgbR3C0HzuSRALpcjm6HECNMp
	 P5tTn5cjdugSjOpXT5+v1o1/8uIjvaOTzjxYpWCalZR0k7mcvMjkVR0eodO3fASJ6z
	 gYMXiGrI5qJf1x0vnauFt2N7jxmecpwDPGZ86thk=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail-lvn-it-01.broadcom.com (Postfix) with ESMTPSA id 675891CAF4;
	Thu,  8 Jan 2026 09:33:51 -0800 (PST)
From: Florian Fainelli <florian.fainelli@broadcom.com>
To: bcm-kernel-feedback-list@broadcom.com,
	"Rob Herring (Arm)" <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 04/13] arm64: dts: broadcom: Remove unused and undocumented nodes
Date: Thu,  8 Jan 2026 09:33:51 -0800
Message-ID: <20260108173351.3784288-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260106-dt-dtbs-broadcom-fixes-v1-4-ba45874e4553@kernel.org>
References: <20260106-dt-dtbs-broadcom-fixes-v1-0-ba45874e4553@kernel.org> <20260106-dt-dtbs-broadcom-fixes-v1-4-ba45874e4553@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Tue, 06 Jan 2026 20:09:43 -0600, "Rob Herring (Arm)" <robh@kernel.org> wrote:
> The "silabs,si3226x" and "brcm,bdc-v0.16" nodes have no documentation
> and no driver in the kernel, so remove them. They can be added back with
> proper documentation if there is a need for them.
> 
> Note that if both USB ports have similar memory maps in relationship to
> their USB PHY nodes, it looks like the device controller should have
> been at 0x12000, not 0x21000?
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
--
Florian

