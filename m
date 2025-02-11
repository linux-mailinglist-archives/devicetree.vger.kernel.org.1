Return-Path: <devicetree+bounces-145033-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 613C5A3026C
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 05:03:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 08378167AAB
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 04:03:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE55835962;
	Tue, 11 Feb 2025 04:03:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="i/rAizDq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488F48488
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 04:03:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739246616; cv=none; b=TGOmk0MgpcZXaOY2y+VQ+Oa7Rgfl7Aq/cbuPzgHYZJFbGgeSYmbc3H3ErzlxSXNu/Ic7aOOk580c4Fd7SRr294JSp1rFpeStSAzs6T7JXhmq/5BtD2BeBE8zOavTwTXWXCW7fL5DR8VQgf1fk7pz1VsLPSboMxopnmjZGAQH01w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739246616; c=relaxed/simple;
	bh=OeRqRe07ZqKihZZTamAJJ2u6GKCn88VuON/VyWZMNR4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IJ57HXNw9X21lwEoAQCFQTTDrh42LigSYugMoD3CSyKi2b1Vj1SJxYk0U1cYH8b7rWd9HFmyaLB0qYmNbM4KYKIbuBtIsXaoSs9kiNStSoLASGrBKZUQBVnNdZeesiyUNBaCirgKmJg6nj5LJdCxhWd93SimMP6U10hbRPUr/Ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=i/rAizDq; arc=none smtp.client-ip=209.85.160.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-2b832eab8cdso2461210fac.0
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 20:03:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739246613; x=1739851413; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xoJ5mElxKk9yvVUb0i6F/KwQgRj0dudGNWq8IqQblk8=;
        b=i/rAizDqD+Z2mCaZdjnEyHFWIIvL5pW/gYw7daZ0t2+Rw15P3txrIXDDF+q1ZLRPBs
         4Z2/fRy7R74TDB7po/clzS4MMZuknx+LhNah1irFPqjbEjcdQsUw4HZEkyrZ9SJqntzm
         vHrbwzN8kfkg7AgeOyaVVlhcmlu9tLP3u2htgEXtK3SRlmKXsmVoqERrUPe7WjSJbaAN
         wQenweMxU4umXyaY2wUNW7Yo49ZfbToqW+5kFCTY7cBsporFgmuJBocX+BY57+VgHhvf
         Dyb87xTJOg8xVEbvWqGk0TzFSyW/Qy9wXvEcChSlQxF8Ij2mYxhA6IZ6eQxj04woV4iI
         24Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739246613; x=1739851413;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xoJ5mElxKk9yvVUb0i6F/KwQgRj0dudGNWq8IqQblk8=;
        b=u+cAi+kubat/dSa3qifNpZsvFcrazz1LoPks0A/0vxXQcf+H0uuVDvzon2sZQlH1ua
         Am+q3ka2kKbrbe2/lbmTz8hz+ww68ac1//PKzx77LBHw9KM+C/CcAqjzjmppDH3LKt1i
         k2h5AB0+PviiK31AKL0dYAt0/7vipE/ocVV53vCk/bKMJ4AAWukCOLErymrpXlWGaPBV
         v8WxYl3QRpcmhZLeBEP5tLabnHgoSpdtIlK506VzUTNR/CUgQmhorAUXcybj5R2cLzIv
         SuvsLV0fUBT/SX5Hy10NTTb6G/PhhlPutBX1Jh2jY3uunhvK0FORl8u/AY6g0ieGXHRX
         9bAw==
X-Forwarded-Encrypted: i=1; AJvYcCVY34zdn0mj8t88j85WnryBrI3vva/wC0de60gCfDjJqYcbIpszHJGtHip7ISqja7Z3kJTD/VEmVbwe@vger.kernel.org
X-Gm-Message-State: AOJu0YzUxWfJsvdz574XPlWBezW0JFZUq1svGv+fgvNvBuVpcucy3hAO
	6RVPPmuCz2Vmf4y6TTKzL5YCPHNv3kOvnfIwUY/Xg6XoK3b4zegN
X-Gm-Gg: ASbGncsETtY+b/pg1/7mZaEyVE87dWxzE8LL3Ll1Uw7dHuHqFh7ICMIBlVYJqGIBYqB
	xttyeXmw8ydS/zod6YDyloJDON/TjxGeEEOOpw8XIGjE31IlYLZlegqlt0H4WibRODKvW4HmMvH
	VwJCvUyePIA/zPeF+fDxqzONy093H9cx0UYBADU8dkaqmglbbP6m/D+WvX70hy7Oj38MrbxsODR
	bzrsLaY6fCttOAEQmIasppDD+Ct+KIeJDT9UT10UIyGIs21uqxIu6N7rRIMp0iu0MI8aGjM55Jj
	r847M85BqNga3gw65HKt7g==
X-Google-Smtp-Source: AGHT+IENrTWZ1c0wp2TPerlNKzvAOVlUwQI7xND1PGvNe4mKp3oVwD++MKmG+bBpbEQqclu2AFkjQw==
X-Received: by 2002:a05:6870:d14e:b0:29e:76c8:be2e with SMTP id 586e51a60fabf-2b8b5956561mr1541389fac.28.1739246613240;
        Mon, 10 Feb 2025 20:03:33 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:4b2:23d:64fe:f3dc])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2b825ff504bsm3081397fac.26.2025.02.10.20.03.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 20:03:32 -0800 (PST)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: patrick@blueri.se
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	kever.yang@rock-chips.com,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org
Subject: RE: [PATCH v2 2/2] arm64: dts: rockchip: add MNT Reform 2
Date: Mon, 10 Feb 2025 22:03:00 -0600
Message-ID: <20250211040300.1905-1-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <Z6p68brg5itgYdO1@windev.fritz.box>
References: <Z6p68brg5itgYdO1@windev.fritz.box>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The RCORE looks like a carrier board for the Firefly iCore RK3588Q SoM [1].
So it would be better to restructure the DTS as a dtsi for the SoM and
a board DTS which includes the SoM dtsi.

That's similar to the structure of the Firefly ITX-RK3558J board which 
uses the rk3588-firefly-core-3588j.dtsi. [2]

[1] https://source.mnt.re/reform/mnt-reform-rk3588-som
[2] https://lore.kernel.org/linux-rockchip/20241216214152.58387-1-shimrrashai@gmail.com/#t

