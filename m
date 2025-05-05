Return-Path: <devicetree+bounces-173705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 114E8AA94C5
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 15:45:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 12C4C1891714
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 13:45:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 844D054670;
	Mon,  5 May 2025 13:45:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="Q2C4wR13"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.166.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1219F19067C
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 13:45:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.166.228
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746452728; cv=none; b=FD3CKnnEOT6XbJKEck+QrmPLhkaYTJ/GoVXQEAI0vQTK1Yu76nnAcPoKhJzYWglFDBN9q8iJicWTjFGmXMUFU567IP5PqvanPzpRDf5RW8dgQqmkm6YNLBfNVmB9WiC0z6u942BNsNEjEly36fj4JzE5DFwYYOiurIJj9vCxjHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746452728; c=relaxed/simple;
	bh=gMioFIAUZaQoL1UVj8FghoejDT8EHwOCyQJXBYdyvZk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gELC3/xczZCtF1bclZNSuIxz9ERE4KU7s3xzPRYMYsCvTnUDMynptdgN31UwhcnNzTvTYx9pFEpS5rnEgjq/bv3dVR+jen6ynVY0CzSUNqI+sjVdEHl8vB++ais5cpbrXCR3KjnxbJqNCX4s9duZDi3YxamQcMzQJXPRQO0FpMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=Q2C4wR13; arc=none smtp.client-ip=192.19.166.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.broadcom.com (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id 9EBA9C000907;
	Mon,  5 May 2025 06:38:56 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com 9EBA9C000907
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1746452336;
	bh=gMioFIAUZaQoL1UVj8FghoejDT8EHwOCyQJXBYdyvZk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Q2C4wR13GmL44/GtN3HKKIXQcIgoJv9MMMFKydnUSt4VnkQ0yZBQja7ULivWnuOKC
	 /AQvKssQBRzWmJ/kq3wqXG2wmpUQR1JkjR6WdwoRiY47gTUcHIrV2PNW0mFYZQMFmA
	 +3sNJ9oLDiZ8GgS9IcITh1bhVexe6fj+VBHgdubc=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail-lvn-it-01.broadcom.com (Postfix) with ESMTPSA id 6C4AD18000847;
	Mon,  5 May 2025 06:38:56 -0700 (PDT)
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
Subject: Re: [PATCH 3/3] arm64: dts: bcm: Add reference to RPi 2 (2nd rev)
Date: Mon,  5 May 2025 06:38:56 -0700
Message-ID: <20250505133856.1140890-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250418143307.59235-4-wahrenst@gmx.net>
References: <20250418143307.59235-1-wahrenst@gmx.net> <20250418143307.59235-4-wahrenst@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Fri, 18 Apr 2025 16:33:07 +0200, Stefan Wahren <wahrenst@gmx.net> wrote:
> This adds a reference to the dts of the Raspberry Pi 2 (2nd rev),
> so we don't need to maintain the content in arm64.
> 
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
--
Florian

