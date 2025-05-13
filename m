Return-Path: <devicetree+bounces-176774-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0C4AB5764
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 16:41:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B46637A964A
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 14:40:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C805211486;
	Tue, 13 May 2025 14:41:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0A8F1AF0A7
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 14:41:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747147281; cv=none; b=W947TmQ7t41/s7loJ46wweWXn4D4XfyZ35lRDAwQ+w3Ay6kHomcNlqegn+efOFC/H7NWF8rJNeqKQ66XXBmFgo3fwWfMhBGIag9VzqkiIqdMxiKZOklz1nFGKrvr1VuCrO4TirG+DpZpvDtrt4w+1EcQ0w/XOP7UnJMRFu8YWCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747147281; c=relaxed/simple;
	bh=ut6UGx9BTGP3vooI//9Y/1sKQmIvapKk/GccAw1g3DA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Oa+cDmnXIVIEY+aoqbXu3XfRt6bZ7gDH7/kdbeR7BV596wxaImbMTRkzsfWgkQdAQFDwbVpZ+b3gZwVSzn1Xm2wcVuAii+zsiIecgazOPfxHi9l6492478n5GhPB8MVK/jKM6Enx8hWOXPlJTE+lGyOTMDjzthtV1xsMU33UkvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com; spf=none smtp.mailfrom=foss.arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=foss.arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3ECA5113E;
	Tue, 13 May 2025 07:41:08 -0700 (PDT)
Received: from usa.arm.com (e133711.arm.com [10.1.196.55])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B98213F63F;
	Tue, 13 May 2025 07:41:17 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: Liviu Dudau <liviu.dudau@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Suzuki K Poulose <suzuki.poulose@arm.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Leo Yan <leo.yan@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH v2] arm64: dts: fvp: Add ETE and TRBE nodes for Rev C model
Date: Tue, 13 May 2025 15:41:10 +0100
Message-Id: <174714724795.3607672.3411861765856358209.b4-ty@arm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250512151149.13111-1-leo.yan@arm.com>
References: <20250512151149.13111-1-leo.yan@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Mon, 12 May 2025 16:11:49 +0100, Leo Yan wrote:
> The FVP Rev C model includes CoreSight ETE and TRBE support.  These
> features can be enabled by specifying parameters when launching the
> model:
> 
>   -C cluster0.has_ete: 1
>   -C cluster1.has_ete: 1
>   -C cluster0.has_trbe: 1
>   -C cluster1.has_trbe: 1
> 
> [...]

Applied to sudeep.holla/linux (for-next/juno/updates), thanks!

[1/1] arm64: dts: fvp: Add ETE and TRBE nodes for Rev C model
      https://git.kernel.org/sudeep.holla/c/6332351622db
--
Regards,
Sudeep


