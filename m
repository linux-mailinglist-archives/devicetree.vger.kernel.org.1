Return-Path: <devicetree+bounces-59930-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F6AB8A7AE6
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 05:11:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 18E8028466D
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 03:11:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79ADC5680;
	Wed, 17 Apr 2024 03:11:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="MlwpWeQH"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.144.209])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5857279C0;
	Wed, 17 Apr 2024 03:11:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.144.209
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713323469; cv=none; b=NZ5f3e2yqvtRsZFuRn+z6fK8ROld+LXr3tIOyAG+YOV8jwhpABE13eQkyaKgi7xJ841xx4SvJlCyHPXp0vIUzMkvAIdmCjZYcWd1XhMdfjtNFju1ZXF/af0Gor2X464s/CGDhVufob4mGnSP2nye+Nzlh+qvBTm++dMSmnIz4Cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713323469; c=relaxed/simple;
	bh=W1Z7AmKI837+ZWoaK3hQ9hHDpdVtRyT7UbrEBrKNu80=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=MBhG6OGOyw8DlLqYV1ODz5eqcIpqrDw5osQP/wag+1lyxbomFATFH1RW1bB0f+w5fQIRDZg7/Q87GseGRMFP5F5xvUmAT22LUIgeAtkrtM/ql+vFpiB2YXDl/Df2BZOafSp8+adq6ZasveLhh1ZO7kygWijEDd7xEZuQzu8pr7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=MlwpWeQH; arc=none smtp.client-ip=192.19.144.209
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.lvn.broadcom.net (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id 6465FC0000F6;
	Tue, 16 Apr 2024 20:11:05 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com 6465FC0000F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1713323465;
	bh=W1Z7AmKI837+ZWoaK3hQ9hHDpdVtRyT7UbrEBrKNu80=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=MlwpWeQH4NkAm0wfgK9M1Nnt8/Mm79jx/ZWSvILp8mtpEHdg5VhKH+47I9hlfEfhE
	 trOhP6kvireafO/y2pRCYImJuaPDQxpfynRnHem45oLC8sDFM2+4zqZjWOXtNR/fBT
	 JjbXaBcyAmTyazUWoMLpDYGlgnpMH+ah3NI+Zt4c=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail-lvn-it-01.lvn.broadcom.net (Postfix) with ESMTPSA id 7C30B18041CAC4;
	Tue, 16 Apr 2024 20:11:03 -0700 (PDT)
From: Florian Fainelli <florian.fainelli@broadcom.com>
To: bcm-kernel-feedback-list@broadcom.com,
	=?iso-8859-9?b?QXL9bucg3E5BTA==?= via B4 Relay <devnull+arinc.unal.arinc9.com@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Hauke Mehrtens <hauke@hauke-m.de>,
	=?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	=?iso-8859-9?b?QXL9bucg3E5BTA==?= <arinc.unal@arinc9.com>
Subject: Re: [PATCH 4/4] ARM: dts: BCM5301X: remove earlycon on ASUS RT-AC3100 and ASUS RT-AC88U
Date: Tue, 16 Apr 2024 20:11:04 -0700
Message-Id: <20240417031104.919484-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240414-for-soc-asus-rt-ac3100-improvements-v1-4-0e40caf1a70a@arinc9.com>
References: <20240414-for-soc-asus-rt-ac3100-improvements-v1-0-0e40caf1a70a@arinc9.com> <20240414-for-soc-asus-rt-ac3100-improvements-v1-4-0e40caf1a70a@arinc9.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Sun, 14 Apr 2024 20:01:24 +0300, Arınç ÜNAL via B4 Relay <devnull+arinc.unal.arinc9.com@kernel.org> wrote:
> From: Arınç ÜNAL <arinc.unal@arinc9.com>
> 
> Remove the earlycon boot argument. As Krzysztof pointed out, earlycon is
> for debugging, not regular mainline usage.
> 
> Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian

