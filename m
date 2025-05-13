Return-Path: <devicetree+bounces-176776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EA26CAB5772
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 16:43:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4E2E71B4653F
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 14:43:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA7F628DF0E;
	Tue, 13 May 2025 14:42:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FF8B19F40B
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 14:42:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747147334; cv=none; b=B6IpJi08WEY09LkPM0Lz9tOv1U82HsdNP3Ebhg1YZpMK4fS/esXBoDy+FF088xkRsVCli6pzZMmp2vNdpl+juLsCMw5iCiSZMauQctXsezcOI0Y1KkOJNnCYxnO3dxbH7BCQqn2gHikimN9g8LikXqYfxW6pJEmHJTv5HwxDsQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747147334; c=relaxed/simple;
	bh=JdRhtTL20j+8deW+X1+dcb2tr569Ybi5HUPk1ZuddWE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bbXrBD64wrOGdKX7EKRdR2lp2JG5/S4ukSvaYwwLvBLpGMUsV2hTkXvzjF/52hjQK7PTRIfHgR8roEqEgI/vWZtKEUYrlizxOAUAztXhZgh9ZuvIVAcn8LVMdVol/SxhXSa/a+NK/EOqf18DQdr30sbU/u7ly8wp7Ylj2dI+Kzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com; spf=none smtp.mailfrom=foss.arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=foss.arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 082E2113E;
	Tue, 13 May 2025 07:42:02 -0700 (PDT)
Received: from usa.arm.com (e133711.arm.com [10.1.196.55])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id CC1723F63F;
	Tue, 13 May 2025 07:42:11 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Sudeep Holla <sudeep.holla@arm.com>
Cc: Liviu Dudau <liviu.dudau@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm64: dts: arm: Drop the clock-frequency property from timer nodes
Date: Tue, 13 May 2025 15:42:08 +0100
Message-Id: <174714730381.3608105.12769749620212383258.b4-ty@arm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250512101132.1743920-1-sudeep.holla@arm.com>
References: <20250512101132.1743920-1-sudeep.holla@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Mon, 12 May 2025 11:11:32 +0100, Sudeep Holla wrote:
> Drop the clock-frequency property from the timer nodes, since it must be
> configured by the boot/secure firmware.
> 
> 

Applied to sudeep.holla/linux (for-next/juno/updates), thanks!

[1/1] arm64: dts: arm: Drop the clock-frequency property from timer nodes
      https://git.kernel.org/sudeep.holla/c/1fa3ed04ac55
--
Regards,
Sudeep


