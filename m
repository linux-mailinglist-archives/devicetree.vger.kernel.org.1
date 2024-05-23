Return-Path: <devicetree+bounces-68821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E31928CDCDB
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 00:27:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 987D01F250AE
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 22:27:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0FF4126F33;
	Thu, 23 May 2024 22:27:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="Nb+B0Lc/"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.144.207])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6780D823B0
	for <devicetree@vger.kernel.org>; Thu, 23 May 2024 22:27:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.144.207
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716503224; cv=none; b=T7y0HOZ2VgQXUbQfyeBmz/GnfkEEJ0w9aaOyPIJAxX4xlXywIcajFvnyyiiEdqoVB2/B04PR8i/b5zRnUXmUKas+lheA7k5WX4fXqf7tIf3ZMucPscVFKu872UKo5TFVfnFUJeMsqdUg+/c5gqKo4sRSoUktEEHIDDn2DBglZgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716503224; c=relaxed/simple;
	bh=RrGCY7YddOlpucNQnYiw/gwUjngDx84aasjtI9pDdw0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bGxYUxVJ73UOYqJK8++pZwheFiZDW+i/pPMhsdBqcFfqQ1hqfNr9io+zI9oIgIHJCorqAsB/Ufb+Uaq4j8qW6X3DjFbSPYwckIJzgXUNpVxq3PyHmj45GkzYlmhpm6XPSfb4M4NrvjbRFOn6ul0WqQC4XMaUZrjDfKBm9cO6eZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=Nb+B0Lc/; arc=none smtp.client-ip=192.19.144.207
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.lvn.broadcom.net (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id 4EBA6C0000D4;
	Thu, 23 May 2024 15:27:02 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com 4EBA6C0000D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1716503222;
	bh=RrGCY7YddOlpucNQnYiw/gwUjngDx84aasjtI9pDdw0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Nb+B0Lc/gxBJOqNXJ7PkgGZ4AlPoycqldVKAeN1QZPQhOuqojN75pu9xJBS7tXrLN
	 SuUcpqPSLT5ekpzUM67abYRwP07++nsPBL21Z9LgR2ZcGG9YYLUkC+NDsKe3HxVd4Z
	 H/o+PC47FK5tRVMQ5rRSVDWo6Xn3CjW29CdvmOJo=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail-lvn-it-01.lvn.broadcom.net (Postfix) with ESMTPSA id 2402518041CAC4;
	Thu, 23 May 2024 15:27:00 -0700 (PDT)
From: Florian Fainelli <florian.fainelli@broadcom.com>
To: bcm-kernel-feedback-list@broadcom.com,
	=?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Hauke Mehrtens <hauke@hauke-m.de>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Andre Przywara <andre.przywara@arm.com>,
	Tony Lindgren <tony@atomide.com>,
	Alexandre TORGUE <alexandre.torgue@st.com>,
	Peter Rosin <peda@axentia.se>,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	=?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH] ARM: dts: broadcom: convert NVMEM content to layout syntax
Date: Thu, 23 May 2024 15:27:01 -0700
Message-Id: <20240523222701.2827345-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240516084737.2789-1-zajec5@gmail.com>
References: <20240516084737.2789-1-zajec5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Thu, 16 May 2024 10:47:37 +0200, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Use cleaner (and non-deprecated) bindings syntax. See commit
> bd912c991d2e ("dt-bindings: nvmem: layouts: add fixed-layout") for
> details.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian

