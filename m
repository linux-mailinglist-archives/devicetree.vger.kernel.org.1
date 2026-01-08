Return-Path: <devicetree+bounces-252946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F0AD05640
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 19:11:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 977C93048796
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 17:34:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5469E2D7DEA;
	Thu,  8 Jan 2026 17:34:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="MKJtDEtG"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.144.205])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F14BE2BF00B;
	Thu,  8 Jan 2026 17:34:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.144.205
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767893677; cv=none; b=VIvR31kyry4ETdW/dCZtSK7Y5RjzigSbwj1KM73r7fF5SoFhT68NGdXQIz9AslK6pRmPzZxCruTGg/nAW1rj+UtexNeJQa7bezAKm4lk1idFaWbnhkbRRDmo7tNdz92206NrpaWuAUYYIn+lzktHgqROebBvX+coK8awQb17Kw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767893677; c=relaxed/simple;
	bh=/KyvcfvHWyosG730uOsQN/0sPYQCXSe8bJOfXfsFNcI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aJA3hAcwRqTleb4RCdvLdJyyKoJd+Zbp3ATfPJET1+UETzjy0HBg9LkwJ2IgQVPCsXaFZPxjeqHV5FlPJFTSo36cDdFuBjXXA3BzhcYckw3XNq9Qx8DSSKbZjQyBf+e17aYnhRRYX0ZK1x7xNzVve68jL8HjKPlzgujIyl9nv10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=MKJtDEtG; arc=none smtp.client-ip=192.19.144.205
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.broadcom.com (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id 17AA6C0005C6;
	Thu,  8 Jan 2026 09:34:35 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com 17AA6C0005C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1767893675;
	bh=/KyvcfvHWyosG730uOsQN/0sPYQCXSe8bJOfXfsFNcI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=MKJtDEtG2zbj+qr7PpkvkceZPszrBeLmi0FW4lfBTTfKD8fQs11kxgOgmwbgcvU9I
	 SF3i1+UkrEaGUu+52IhHHkXY9hrQYHSMrXTxVn38q+QNxhgJ8R92xNDV4lUBy2B5Wh
	 lKXBIa+URPHDNPAnsmbcpSAfw8Trtj7sXfNsI6Zo=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail-lvn-it-01.broadcom.com (Postfix) with ESMTPSA id AEC4E1CAF2;
	Thu,  8 Jan 2026 09:34:34 -0800 (PST)
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
Subject: Re: [PATCH 06/13] arm64: dts: broadcom: stingray: Fix 'simple-bus' node names
Date: Thu,  8 Jan 2026 09:34:34 -0800
Message-ID: <20260108173434.3784528-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260106-dt-dtbs-broadcom-fixes-v1-6-ba45874e4553@kernel.org>
References: <20260106-dt-dtbs-broadcom-fixes-v1-0-ba45874e4553@kernel.org> <20260106-dt-dtbs-broadcom-fixes-v1-6-ba45874e4553@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Tue, 06 Jan 2026 20:09:45 -0600, "Rob Herring (Arm)" <robh@kernel.org> wrote:
> Fix 'simple-bus' node names to follow the defined pattern. Nodes with 'reg'
> or 'ranges' addresses should also have a unit-address.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
--
Florian

