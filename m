Return-Path: <devicetree+bounces-165488-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C516A846E5
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 16:53:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 56FB57B130E
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 14:51:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E210B28CF71;
	Thu, 10 Apr 2025 14:52:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="mS+kGmyf"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3214C284B31
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 14:52:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744296767; cv=none; b=f8VkWdsGdPoPmS00DdmFEvvXPrB3/hkSdxK4+HVDpp/L0+6w0epQYjve3xZ2LIW1l74FQysNxvp06OCTpEeCwzahvi22ILusF0A0WJvAFbA0PAzgpPPu2J4Ple/dm0E4IOA8gXaG6lZ8eOQINSVVhVfSpD4cf5Elui2V2hky2W8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744296767; c=relaxed/simple;
	bh=9D1gIrM4mFJe9WQ5NfQyeL0bXrwlqIMy0tLJoIjz8Vw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Z46YV506QYFCq0w02NRyu1hsDHUaGlkKN6pFQ5ykHwF0p2v9/kp3mKyxGj8RgoR5vHlHsGffymIjkCsV8VkB9fcgH7s2IlNNtj9Lv/9aU2X8bRnOAjc4xkY3O4unDSM4tBwuL+GcRW/1Z0X9BAk/NcXeurMrNfTwGZEXpOsmpH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=mS+kGmyf; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=dveFduEAR4wcUxntQQKa+u55nEh007JPx8uugieZS9s=; b=mS+kGmyfQU950a6RkZkU03uziY
	ejMomVXWT48ZAI+mOhdQcexZaR7YFG+inYXvayYGqT6OhFRrMaGefJpuO5MFfWgfFdkzSGTfX6d9Y
	O61H3JcXrUK8/FRVXnj3/bYRsXUMlKPKgMYRAdhgkeU6MdtReKPoKGlrMmNuv4TbZhD+/bmHKHMiJ
	Uhxr1sv/afTKRNprZvd4t7JBeZaqfB6IhZf12mmdt8gZ2nLVTTM5m5ZMpnQv9RnWo1yKeBe9If9uE
	ypTkMTHkkUdVU+0675SzHPFi2oXhBjCYYs+BHsscqOWxinfJbQcRiXnXVWDEOLIWLYsxzPE6wMOti
	LdTbznOw==;
Received: from i53875b95.versanet.de ([83.135.91.149] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1u2tGi-00012N-Me; Thu, 10 Apr 2025 16:52:40 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Rename vcc3v3_pcie0 to vcc3v3_pcie1 for rk3576-evb1-v10
Date: Thu, 10 Apr 2025 16:52:28 +0200
Message-ID: <174429674410.910874.1345384910546779704.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <1744079475-211962-1-git-send-email-shawn.lin@rock-chips.com>
References: <1744079475-211962-1-git-send-email-shawn.lin@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 08 Apr 2025 10:31:15 +0800, Shawn Lin wrote:
> It's for pcie1, correct the name.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Rename vcc3v3_pcie0 to vcc3v3_pcie1 for rk3576-evb1-v10
      commit: cdba8e71599a1a1cf9ca6e9573c243c9a21f899c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

