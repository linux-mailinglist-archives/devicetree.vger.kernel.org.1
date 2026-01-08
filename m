Return-Path: <devicetree+bounces-252957-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 15956D0524A
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 18:45:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B1EBF3000B27
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 17:39:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E2B32DB795;
	Thu,  8 Jan 2026 17:39:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="ktRikbev"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.166.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 546103398A;
	Thu,  8 Jan 2026 17:39:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.166.228
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767893979; cv=none; b=cjUf7GNmgKaQ2HmjI0YO9mMwiU6/twR7meOny9kOmSfU6x3OtbOU84wRCrsu7CLZ0c2C0DJ2zu2jDYsK93Bq2Lk8lKzY1U3THVE9AnTelrJunqAvz6me8ZeGxwEEtRGZ41d37BWCWKBTUPiiS3YUV9x9c88ftnGxINNb+mWItWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767893979; c=relaxed/simple;
	bh=Se/6JXoHQKKuVJRrd4dLdXBsREb8I6hCj3VwBIQI0UU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qvkWdXFYcmZJ2ju2XJyDkjzumMlfu9sheos2x11ZLgkO5yE7k3YVmv7wDLVhRwbu8p7NGRYUhGT0jUiagHZQazJrATTSl0F3Ge8M0xyBrNw2v1Xh1uDmf2fiSILdvjvnV14768Gl2BypvvIaakKfSqLmHHQd1jYhquaQMdb8pgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=ktRikbev; arc=none smtp.client-ip=192.19.166.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.broadcom.com (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id 5AF2CC01E08E;
	Thu,  8 Jan 2026 09:32:41 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com 5AF2CC01E08E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1767893561;
	bh=Se/6JXoHQKKuVJRrd4dLdXBsREb8I6hCj3VwBIQI0UU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ktRikbevWSQNGjHOzluqBaUzlB3HqQ9UYRwXqbcwM+Ihh2gCWvc1WuIwY0tZ7Nj49
	 S7Qg6Cnc/rFbK2JpdFmtuBmFcaaRz2vEigfQe7ejKhnm+cIYstoIf9RtwhQ3dIkHQR
	 S0KvzZodNUqrwWFVzQGpaX6UiyJsmlddbtdkPViI=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail-lvn-it-01.broadcom.com (Postfix) with ESMTPSA id 2BF9A1CAF3;
	Thu,  8 Jan 2026 09:32:41 -0800 (PST)
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
Subject: Re: [PATCH 01/13] ARM: dts: broadcom: bcm2711: Fix 'simple-bus' node names
Date: Thu,  8 Jan 2026 09:32:40 -0800
Message-ID: <20260108173240.3783748-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260106-dt-dtbs-broadcom-fixes-v1-1-ba45874e4553@kernel.org>
References: <20260106-dt-dtbs-broadcom-fixes-v1-0-ba45874e4553@kernel.org> <20260106-dt-dtbs-broadcom-fixes-v1-1-ba45874e4553@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Tue, 06 Jan 2026 20:09:40 -0600, "Rob Herring (Arm)" <robh@kernel.org> wrote:
> Fix 'simple-bus' node names to follow the defined pattern. Nodes with 'reg'
> or 'ranges' addresses should also have a unit-address.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian

