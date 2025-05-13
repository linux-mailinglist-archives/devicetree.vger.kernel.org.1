Return-Path: <devicetree+bounces-176777-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A34AAB5771
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 16:43:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B2A9B4A5792
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 14:43:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 875C728C87E;
	Tue, 13 May 2025 14:42:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FABD1E5B65
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 14:42:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747147374; cv=none; b=Oc5cN4stDqyjzeAi+K0DoLoKBOKW1jTJi6N9s4MIVlwnsRbVt0tqH3P/yIgGajOALMzpvqCo8Y7e5HLMkD41MTr6KB7vGk4uRgcDPk7RmXc7tqM7yfFkm4qX66ULUcYm7YHlbidkbIu7DsOj64gWP7zeDaUeTVU9mAl7s5xgxv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747147374; c=relaxed/simple;
	bh=9+/mZa84rhQ71C9XzoZ2CWSdPVheuLGzkDHzBmCRu2Y=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=U6aHnIkqkFZpFKk9P5ZomzNUQoNo+dCxt/4hyvfXvjss9r5nXitK/cfYjgyK+/JF+0byh/SrSdzWpvv5UxqstYWgZc6lFTob9NmdvfbpGEk7yCXexSiTmfsD1V2htEk3OV4l5QPyF+dk3yZoaYfXALXBOjOJCRiV54u6pf/Tl3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com; spf=none smtp.mailfrom=foss.arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=foss.arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4EE00113E;
	Tue, 13 May 2025 07:42:40 -0700 (PDT)
Received: from usa.arm.com (e133711.arm.com [10.1.196.55])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 1F07F3F63F;
	Tue, 13 May 2025 07:42:49 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Sudeep Holla <sudeep.holla@arm.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Leo Yan <leo.yan@arm.com>
Subject: Re: [PATCH v2 1/3] arm64: dts: fvp: Add system timer for broadcast during CPU idle
Date: Tue, 13 May 2025 15:42:47 +0100
Message-Id: <174714733954.3608361.17082559112187564341.b4-ty@arm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250509154640.836093-1-sudeep.holla@arm.com>
References: <20250509154640.836093-1-sudeep.holla@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Fri, 09 May 2025 16:46:38 +0100, Sudeep Holla wrote:
> Introduce a system-level timer node in the FVP device tree to act as
> a broadcast timer when CPUs are in context losing idle states where
> the local timer stops on entering such low power states.
> 
> This change complements recent CPU idle state additions.
> 
> 
> [...]

Applied to sudeep.holla/linux (for-next/juno/updates), thanks!

[1/3] arm64: dts: fvp: Add system timer for broadcast during CPU idle
      https://git.kernel.org/sudeep.holla/c/7556a55b07c0
[2/3] arm64: dts: fvp: Add CPU idle states for Rev C model
      https://git.kernel.org/sudeep.holla/c/44845ea83d5e
[3/3] arm64: dts: fvp: Reserve 64MB for the FF-A firmware in memory map
      https://git.kernel.org/sudeep.holla/c/bbb59b3614a7
--
Regards,
Sudeep


