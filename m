Return-Path: <devicetree+bounces-233118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 027FEC1F3AA
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 10:17:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A0E1B34D62F
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 09:17:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97070340286;
	Thu, 30 Oct 2025 09:17:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZjyamIo9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274AB33EAE3
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 09:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761815831; cv=none; b=vAc8g6HAPlYmZebxQT3KvzMBl+Tvb4GuMWPTA4H33Hnl+F8tRTtNPoZHM03u4RyitdgJhKhMHA+BFVyh/l7C0zJFscXcxcUcUBLbs3k60oLle5PRaJ6wgC2fGHRWYuPIWfkJ/oHd3v5rWdwYTx9/V8xGKsrBngNXSxdknyNY+d4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761815831; c=relaxed/simple;
	bh=BnIpf9hcG8I6QANI+v+HvnUpylMPQT5dEVYGSmlgmkY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ofSoJ818Z0vwIekDVYC9g3kIRVL7FngeQTnk6gh02FVLyXVafO0NXoLCjK/9qnjw1M2KPqCvFHwIl+1F3RY2OgVQnrNRjX4u+Qd9ZTjEQa8CGftyXaTsg3XFt0bs5Og2yW9nIUq/OkQLIr9BFEXM9GYvlQnv29+sX+PLrL9B/1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZjyamIo9; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2699ef1b4e3so1057055ad.0
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 02:17:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761815829; x=1762420629; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xiJKIWzvTq177G5Z1HqBbhq6LXsLpoXZ8DAbP1RW7sI=;
        b=ZjyamIo9fQVodqwAKhg7S0fbJbZzga+mt5KgDX77Ly5eCcdwsNj3dJk+3rwVI/9W95
         oa8aE8nmeTixmXYONeudtZkN++jVW0BP9Cq6vu4jDa7l3yv7XesXAJVAch7YymotdOGU
         gqtQOOysbpvh3lWjfDKHLT5t6D9xeLRzne7kcSZQL7uypSSE+LB89qHvkLVdjjdJd/EX
         l4zlcXG/2tRVIPZnrdvjZMtF+5G9te6bBNoFH2n8cnOlx4fJLCA/gKE/cYWUdhPPW6VI
         FWgSuQwzAsSgwbwzm+2uiGzXY9DDRyofFBJjCa2fyOY8aqFbfrQ27fqQJ/3B4ufi0xXO
         wUZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761815829; x=1762420629;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xiJKIWzvTq177G5Z1HqBbhq6LXsLpoXZ8DAbP1RW7sI=;
        b=dJcH9qKT2MHKpAnaT535dif8EIQkoeR10Nb/ijZmL2lDynYeeOZ2mUnmlun5BS/3OL
         R0wujq8iCq38AOxfp1hpfLu42gmxe3zgGI5bOY18G/RXkDkMiVPomfkmpw9JEN1v3UIG
         M9SHBemHE+5fFUPcocNhUOIietKLSvGjPpSICMePmmNnvQFLJNBuDeXuDOucpqtnDLun
         CiuXjuJscO4yDavRF1Im9GfDj6RwkR6IfGfG5wAvP/JDJrWrYaA0Pk+3QVpntsv3ZIbm
         sbkkzfOi7nmjxOkRLYPsTckBoOfS8QMLWuIhMDT3NMiOLG7eELWs4e092btiDLbPr4g2
         qtBw==
X-Forwarded-Encrypted: i=1; AJvYcCUykvVUb4kNvLKqfdMAbUekoRnvBV5IMzdVNXuwVTVM2tpImJoA45q2k1X+EGV+pGpeE3FVH8/tXpvt@vger.kernel.org
X-Gm-Message-State: AOJu0YyXixFIhkDOJuagUIXYWuQbcYL8t7i20ZtgPZjbn0cD0z9D2UxD
	yUAkTN7u95VIpf3t8KLt1UDnI9KdGR85zDOlbqJhtT6gfh9FoPOvE55U
X-Gm-Gg: ASbGncuicMfoDirLjep2tHInELblf+z0AyvRbzROdezapJVXuaBVBiUAwniR7dMoaFv
	r4tgKtVJ3hs4ap+ujemBE1r0qeT82BSiYyq/eL0og9RV2uqK06GeODGBou16jCrsYDqq5oHhEIx
	wP6CJSr1ZnmPbDOF6sjnRbrpzFstbGWrvkNTk+G5Twf1hXsDkETPyRQBLCbzm2O9IfeGRmBAUm4
	vGvT69EtWu/HB5eVKiAxtScQn+mAu8L9zU6OM0rbiGmQcD8ggJRWWwCflNUWVy1TIo9Nx7uu+js
	8WqkGBvOcIfYDGXwhkaTJEC9KCcgkh8tJlLjzVugKGlsHVduY+H9Aky7vqhRPfy/Orbgi3idviN
	NC+arfVCvjT285kPXuwlZVF2j9SvWYEi3KWfDbgqxloPsQ0M/HFNeOB2f1UCH76yBPnD7J2kk5h
	xQ
X-Google-Smtp-Source: AGHT+IEHwddQUWpun54rQcO7TrQwu6s7Rbw0jMDLSLHGGO431eRobH10Dl1uhW5PbFwDQhRzruCIvw==
X-Received: by 2002:a17:902:8c92:b0:294:9847:fbfc with SMTP id d9443c01a7336-294def6c333mr27333195ad.11.1761815829218;
        Thu, 30 Oct 2025 02:17:09 -0700 (PDT)
Received: from rock-5b.. ([45.32.55.39])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498e42f3fsm178469605ad.103.2025.10.30.02.16.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 02:17:08 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: cnsztl@gmail.com
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dsimic@manjaro.org,
	grzegorz@sternicz.uk,
	heiko@sntech.de,
	jonas@kwiboo.se,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	liujianfeng1994@gmail.com,
	robh@kernel.org,
	shawn.lin@rock-chips.com
Subject: Re: [PATCH] arm64: dts: rockchip: fix eMMC corruption on NanoPC-T6 with A3A444 chips
Date: Thu, 30 Oct 2025 17:16:49 +0800
Message-ID: <20251030091649.25396-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <5af928c4-4b6e-489c-ad39-26cef3dd7473@gmail.com>
References: <5af928c4-4b6e-489c-ad39-26cef3dd7473@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi Tianling,

On Tue, 28 Oct 2025 01:34:25 +0800, Tianling Shen wrote:
>>> May I ask you to test another patch I just posted to see if it fixes
>>> your issue?
>>>
>>> https://patchwork.kernel.org/project/linux-mmc/ 
>>> patch/1760924981-52339-1- git-send-email-shawn.lin@rock-chips.com/
>> 
>> Thank you for the patch! I will ask my friend to test it but he uses 
>> this board as a home router, so it may take a few days or weeks to 
>> report the result.
>
>Hi all, sorry for the late. My friend has tested this patch and it works 
>fine after 50 times dd operation. A big thanks to Shawn!
>
>And hi Jianfeng, I found you made a similiar patch[1] for the ROCK 5 ITX 
>board to lower down the mmc speed, could you please check if this patch 
>also fixes your issue?

I don't have rock 5 itx near my hand to test, but I have another board
ROCK 5B with similar issue. And after applying the patch from Shawn, this
board can run HS400 mode with max freq 200000000.

I will test on rock 5 itx later when I have chance.

Best regards,
Jianfeng

