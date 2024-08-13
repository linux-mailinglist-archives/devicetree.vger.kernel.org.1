Return-Path: <devicetree+bounces-93436-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E08E7950DD0
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 22:25:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 96B201F2156B
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 20:25:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AE7A1A4F2C;
	Tue, 13 Aug 2024 20:25:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="e9BtjqjB"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (saphodev.broadcom.com [192.19.144.205])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C81FF1A7042
	for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 20:25:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.144.205
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723580707; cv=none; b=jKiBvyApiDpId1GkPd8ESdMADzdKcS9+hYg8yajDv/bgl6jzrzJI24P4Dv5J+H7SY0nK5NmnjcFo0ZhAa04xHrNUKNqWQQEG074CWU9AqlNoKowxeDDpmtSi96GI/kVu9tXj39vsrLgCemrW9Hf6okWV2ub5dQheXBTWRIO8cYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723580707; c=relaxed/simple;
	bh=8HswKVBWCL33OcK7IJ+iBxMRVHIg+ltPgjxekOR5Z3Y=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=htGCv/tqX/gnIQ0XKR3FL6K3epDM1fe2tigtG4uqj8679zlFg9tsrdz78aUueq2C9/6Yfw/QfMviXrN0eZ6PFn0GNuWM3G+UoEBgd+fDg0c5OIhXSBIE8rqWjioOWvkfVb6RBZAtFocvvQ1m8rnzXOOYepZxLBZJjR90EhUS7Jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=e9BtjqjB; arc=none smtp.client-ip=192.19.144.205
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.lvn.broadcom.net (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id 8E890C00280B;
	Tue, 13 Aug 2024 13:25:04 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com 8E890C00280B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1723580704;
	bh=8HswKVBWCL33OcK7IJ+iBxMRVHIg+ltPgjxekOR5Z3Y=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=e9BtjqjBnKM5GioK/TQnT/Om3n1/kG0GjhQcVfY673FarrHVCJRNCU+K6YrEqq47s
	 qzf9SBdF76BotW5qJ4JMbEPx8F4TNsiCbhJzBtuAlPFYIA4L1XBDduB/vuIY8EolA5
	 io/pC8+T1EQf2XjRMxRMEeLnZF/Fw8cU4wXLcIRI=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail-lvn-it-01.lvn.broadcom.net (Postfix) with ESMTPSA id B206018041CAC6;
	Tue, 13 Aug 2024 13:25:01 -0700 (PDT)
From: Florian Fainelli <florian.fainelli@broadcom.com>
To: bcm-kernel-feedback-list@broadcom.com,
	Stefan Wahren <wahrenst@gmx.net>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	linux-arm-kernel@lists.infradead.org,
	kernel-list@raspberrypi.com,
	devicetree@vger.kernel.org
Subject: Re: [PATCH V3 RESEND 3/4] ARM: dts: bcm2837/bcm2712: adjust local intc node names
Date: Tue, 13 Aug 2024 13:25:03 -0700
Message-Id: <20240813202503.3857322-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240812200358.4061-4-wahrenst@gmx.net>
References: <20240812200358.4061-1-wahrenst@gmx.net> <20240812200358.4061-4-wahrenst@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Mon, 12 Aug 2024 22:03:57 +0200, Stefan Wahren <wahrenst@gmx.net> wrote:
> After converting the bcm2836-l1-intc DT binding to YAML, the DT schema
> checks gave warnings like:
> 
> 'local_intc@40000000' does not match '^interrupt-controller(@[0-9a-f,]+)*$'
> 
> So fix them accordingly.
> 
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
--
Florian

