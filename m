Return-Path: <devicetree+bounces-117801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C409B9B7DCE
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 16:07:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 012101C209E3
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 15:07:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AD9D19F406;
	Thu, 31 Oct 2024 15:07:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DP7tRCmv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CB1019DF4F
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 15:07:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730387251; cv=none; b=FXRml7SXaTgIiJPDtSNSXyiTnB0lS0Id3OVr8iYMAo9NAm6xG6yKrBsU3am0s0YUh4IGilPBmUEiE7M3DnpOPQJ7q8700XsotUzyGLJmewPye47bWIxWw5m6IWSK7UXyUdTW+KEunWtZqsv/NSZoStf9DKMkikF0hW+3dO946h8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730387251; c=relaxed/simple;
	bh=ul9I3CtYcbG7oX/hn6TR/r31D1EUHU+iwUHUGGmiJLE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=QOhsQc/ZRUy+MY+N1wNaymCFXNW7/+yDDimfCJLB9BItpy0VhVtKKsQs0LJhbrTtIcwJepbJ/u9uiGw9ptPsLwSK30xFvQWV3T8Byjrckc9gNa5M2zokSbn/1No54Puj0rYl0+hrdEkqx0+zBq/zVTWCEu3XBc9sD3y2gDwi4Kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DP7tRCmv; arc=none smtp.client-ip=209.85.161.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-5ebc1af9137so548533eaf.2
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 08:07:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730387248; x=1730992048; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8IW7rqcs1hAjHGL4wafrL1bmpgkKuuHkt2ZuAKXwYMc=;
        b=DP7tRCmvEUcOrhp47RWYHmtCcgamvPlAB2nL5TO29dNAp00yyvysPpQI7skb4Yuzc+
         42xph3M24Syvr+wIa5T/FS8sh8qk98ZSuSCkgJsKI/55yoPS+CSggmuomxYNrDl2uoIP
         RxyIUO2T9xjOR1pO65szbYqm+R+Ar5kY57GyCzEO8oyCWsW/Mw5roevXNcZbOOib6dbs
         f3pvrBl7SQPX94uLSBRoP2hFpd+faG0iNWfv/68aTIIzhs2UeDyYhKj0JPuGqMIKeLkh
         8h0OBhMgXmzBorBSVV+LPxN4id22jupEklY2W1zaOYra0xc+GWdDVAEqMydomyUlx8k7
         mSHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730387248; x=1730992048;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8IW7rqcs1hAjHGL4wafrL1bmpgkKuuHkt2ZuAKXwYMc=;
        b=ifXKckRF+s80T+4HlIf2dq1SsOkL5YSERTcLdq9nRZUcJq0CAbcPzFALifDyxpghJo
         +mPDlh/Ee6FFDO1769CYNRZnaU1e9UhGiT/6SZhWIH9xlMX9DaOl0eHp4LxymEkyEL86
         Bc9yKJboo1w7NsXY2DS8Z1k4muHGz6S7/R8E26rcOLckpqF+Ogew3eoMgo2eUAB2H3sn
         snV3GOjrQ4m0RbfVyjoxd7M4ba6gEwz4AnfgLbQjmIH/hQDk5DyTfVd1wWNUMK9BzDVh
         eAzb7d1xCnZz+oTpdMDLkua7B7oCmm4bk/QbmZdzslY9w0YtXoppMgJ2y2VMPAIf5f93
         AG8g==
X-Gm-Message-State: AOJu0YyIMSf2r6ss+vOf37ZuO6NtHic1kMg8MWGyt16x2moqMuKnv2S7
	mSIV+4zNJGzR735rpdTiW2guUBarWzjXUcbdcHK7988aTyHfpVQ6e2e/9w==
X-Google-Smtp-Source: AGHT+IEDCmjGLQ1ZymVIFF98NcczWDg5QGWiz4qeA4bXzBZvsrz23YDqDNWAKMgzVh7If7fnJtIABw==
X-Received: by 2002:a05:6820:2221:b0:5e5:c456:8996 with SMTP id 006d021491bc7-5ec23a1b95bmr15017385eaf.4.1730387248309;
        Thu, 31 Oct 2024 08:07:28 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5ec704bfefdsm317330eaf.4.2024.10.31.08.07.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2024 08:07:28 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	honyuenkwun@gmail.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 0/3] Indiedroid Nova Audio/HDMI Updates
Date: Thu, 31 Oct 2024 10:05:02 -0500
Message-ID: <20241031150505.967909-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

This series is for a handful of fixes and updates for the Indiedroid
Nova. This series corrects the device name of the audio card to stop
a kernel log error, and adds support for both the HDMI and GPU (now
that HDMI support has been queued for linux-next).

Changes since v1:
 - Corrected HDMI port from mini HDMI (c) to micro HDMI (d).
 - Explained why I enable hdmim0_rx_hpdin in contrast to the other
   rk3588 boards.
 - Split HDMI0 and GPU patches into different patches.

Changes since v2:
 - Removed hdmim0_rx_hpdin as it is not necessary.

Chris Morgan (3):
  arm64: dts: rockchip: correct analog audio name on Indiedroid Nova
  arm64: dts: rockchip: Enable GPU on Indiedroid Nova
  arm64: dts: rockchip: Enable HDMI0 on Indiedroid Nova

 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 57 ++++++++++++++++++-
 1 file changed, 56 insertions(+), 1 deletion(-)

-- 
2.43.0


