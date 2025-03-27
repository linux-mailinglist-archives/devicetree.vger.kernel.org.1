Return-Path: <devicetree+bounces-161128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A806A72A7E
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 08:21:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2AB4E174CCA
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 07:21:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4E3A1CCEDB;
	Thu, 27 Mar 2025 07:21:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp134-82.sina.com.cn (smtp134-82.sina.com.cn [180.149.134.82])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29690145323
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 07:21:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=180.149.134.82
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743060112; cv=none; b=mfwadVxcskfmMVCdmhLSaHYamfC+Xb+PCFrU8UgV6ma4aFLaW3UjY/HIRJU1bOLbSkNqntlYt1UyIop9cW3uQFBx+2MxJm7JBVHMyGgvlsjxgN/mCp2q/Nc5vkzoZNQvola+i8YBebarYpbOBiYXNBevmmBk9Jgp/6EX7I9WR5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743060112; c=relaxed/simple;
	bh=HtcJBRcji1PRKXBwY0XsB493BGzvqaZ482Ek8DgyPZI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=m4+9OVVfiJ090yq4wQZLatwoFP31svWzLGiWocZdXQJNXwKNIl8v/UkRcLzlnp9chidyIjvOfD8TfWTLzhQqKHEgaaqXllK8Cp8au1x4oog7RqPMYTIzRiI6DNaQItfkojMTbW2Hryq5alCvk5ISlY2ZlW1O/+xpqh+Tkdu0Zag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=180.149.134.82
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([180.159.108.242])
	by sina.net (10.185.250.29) with ESMTP
	id 67E4FC6100003255; Thu, 27 Mar 2025 15:21:07 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: 4E9AAF2645294B74814EDBFDDBFDDA18
X-SMAIL-UIID: 4E9AAF2645294B74814EDBFDDBFDDA18-20250327-152107
From: Zhang Yi <zhangyi@everest-semi.com>
To: broonie@kernel.org,
	robh@kernel.org,
	tiwai@suse.com,
	devicetree@vger.kernel.org,
	conor+dt@kernel.org,
	lgirdwood@gmail.com,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	perex@perex.cz,
	krzk+dt@kernel.org
Cc: amadeuszx.slawinski@linux.intel.com,
	krzk@kernel.org
Subject: RE: [RESEND v5 2/2] ASoC: dt-bindings: Add Everest ES8389 audio CODEC
Date: Thu, 27 Mar 2025 15:21:05 +0800
Message-Id: <20250327072105.47223-2-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250327072105.47223-1-zhangyi@everest-semi.com>
References: <20250327072105.47223-1-zhangyi@everest-semi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

> So you not only ignored review but I gave you long instruction what to
> do, so that will not happen. And what happened? You wrote:
> 
> "Thank you for the explanation.I will do it in a following patch"
> 
> and then ignored it entirely!
> 
> That entire instruction was on purpose - to prevent possible mistake, to
> explain how the process works, because I assume you will not read our
> documents like submitting-patches. Well, you should read them prior to
> sending, but it happens, so thus my instruction.
> 
> And yet we are in the same spot.
> 
> I am not doing the same work twice.

I'm sorry I forgot about this issue.

