Return-Path: <devicetree+bounces-173702-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AB767AA94B3
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 15:39:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EAD333B0EE6
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 13:38:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0357213AA53;
	Mon,  5 May 2025 13:39:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="bvb2ot7S"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.166.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C18F1F4639
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 13:39:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.166.228
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746452347; cv=none; b=RIfx1C7D76y2iESLG7Ug0Auac09Ge/J7OwKq8lTPftZBYie0P0pKcxrNDUESRoax+V0pHeczHfDYY4B3XWaLcH2BdiD7ZNLgx4nVGszQt6RKZRjItdlY44980AaU2K38RYVjH9fVxaVAinU0nPz9ge8KZEw8E4+sI9Oslafar/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746452347; c=relaxed/simple;
	bh=o5XJ0ORMHY7f8scgbSjvR6Xk0oK+80O29JiSpuvmXwg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZG68C+FgBIi/foUo2TiOTUsk0hPh5jeu+PzQZR4UmykWKMMgPO3M9AGhGna7HkYagPlTaLE+o6ymIyUgHa/4DzZQqsKE6+K/q3bToOf0svS9wkOQNuQVd4hZgZUtHgQZT0Sl1sYZzpoh3gi5RuAO5Ge6JOstkEkqyeY+Hpb63bY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=bvb2ot7S; arc=none smtp.client-ip=192.19.166.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.broadcom.com (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id B86C2C00057E;
	Mon,  5 May 2025 06:39:05 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com B86C2C00057E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1746452345;
	bh=o5XJ0ORMHY7f8scgbSjvR6Xk0oK+80O29JiSpuvmXwg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=bvb2ot7SVfk6THUHHdgESjrnDpB/Fc61DQTjfNRtYNvyuSn0p1Soop7XywRy07P4Y
	 +svjlwszWWiCMbbDLZsQqG44fntBebFN1yvl6Eukd+ouAcn+OFmfkIBndfcBF3i6Ca
	 du0dK0b6O/rQMskjf9aPb2eYgTD3FyU8KG7Rb7dY=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail-lvn-it-01.broadcom.com (Postfix) with ESMTPSA id 7B097180004FC;
	Mon,  5 May 2025 06:38:35 -0700 (PDT)
From: Florian Fainelli <florian.fainelli@broadcom.com>
To: bcm-kernel-feedback-list@broadcom.com,
	Stefan Wahren <wahrenst@gmx.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	linux-arm-kernel@lists.infradead.org,
	kernel-list@raspberrypi.com,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: arm: bcm2835: Add Raspberry Pi 2 (2nd rev)
Date: Mon,  5 May 2025 06:38:34 -0700
Message-ID: <20250505133834.1140684-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250418143307.59235-2-wahrenst@gmx.net>
References: <20250418143307.59235-1-wahrenst@gmx.net> <20250418143307.59235-2-wahrenst@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Fri, 18 Apr 2025 16:33:05 +0200, Stefan Wahren <wahrenst@gmx.net> wrote:
> Add the Raspberry Pi 2 (2nd rev) based on BCM2837 to DT schema.
> 
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian

