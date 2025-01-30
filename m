Return-Path: <devicetree+bounces-141957-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F41A237AE
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 00:14:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A2C2616469D
	for <lists+devicetree@lfdr.de>; Thu, 30 Jan 2025 23:14:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7DCE1F1300;
	Thu, 30 Jan 2025 23:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="A9qYZsUj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79E5E1ADC6E
	for <devicetree@vger.kernel.org>; Thu, 30 Jan 2025 23:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738278874; cv=none; b=IRZ1/G8OuDx7rZug8/5JehToiaeYGNPex2Kx5dj4/ex05YmA3GiN6PdOZE+wXMxPSyCKwpDF8Tpn8ESCsk6m8dU3o7VA/NkBjsqIOOFfV5/HyHU2tZ97Ee1/2Mb5N7ZfDWEE/NVrvgdVjmPfa0PWzfJtb1NwAaopS/dW6cERboY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738278874; c=relaxed/simple;
	bh=8Q2HjqJPbaVhow4NFnSVnVK+CKZ2y+Hypsx9jZq8DDw=;
	h=From:Message-ID:To:Subject:Date:MIME-Version:Content-Type; b=uwo596nJPN1jYTr2L2H1Zn3m3eMKWlwa2Q+NEJ1LnfIDrqHx7wOKiApE/AnTcbNV+q1rROWlEOEKddbqeCL6nTHFcqXKX//0/6rtMvpY5VOTOUrrmUnFw3odQbosZto4oHzNF1DG5DGPWCv5/Mi+Z/Vxp1xq7RbibiMBZxiMNl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=A9qYZsUj; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-216634dd574so16436815ad.2
        for <devicetree@vger.kernel.org>; Thu, 30 Jan 2025 15:14:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738278872; x=1738883672; darn=vger.kernel.org;
        h=mime-version:date:subject:to:reply-to:message-id:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8Q2HjqJPbaVhow4NFnSVnVK+CKZ2y+Hypsx9jZq8DDw=;
        b=A9qYZsUjInq3hwYTwHWzoydHp97XoNknbGBoGBIBVEya6AvnHmGOEJES4YvlHFuTaS
         HwmN1un6UHLUBuIDYid4NzWSJDAiy99KabbTD7DMrA++wmcRLXxiHjFm987mEXXgcMr4
         nGuQ3S9HR0wK0Q847HwSY/pOS0/akbVz5/rKf//qERTTRM3E5quOAlqs8UDlrMTvh3Sz
         JXVzE5zu7EdfwU26FJPKYjE4znnAoFALA1AobTS8vLY5cOwD5RcyjyxgyQISpUfpbU98
         xd9Q/hPL7dtK8gQ82Wotgk/x+xAcqX+w8rNGBiNOk8i5hQGU48ArQ8UBAya491SXGgbl
         gcgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738278872; x=1738883672;
        h=mime-version:date:subject:to:reply-to:message-id:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8Q2HjqJPbaVhow4NFnSVnVK+CKZ2y+Hypsx9jZq8DDw=;
        b=i9WjRAygrqsaUsHlsNgP/NWWTt5LHVKNI9eW3nOBfcZ246nj4cePiBi87r3B/TD7VB
         JRMPypFHc/ET6XGUHBd2HzqPi2y6c1iBgRZRmQAfxPLbDdWhgAXHPWM9YF3ULMtBfJWa
         qUFt86Oml9XMwcpzKZu7GVgz5gmrl/YVsSMM8890yJ/SzDuklayeSaLBo4MwLQrSGRNj
         mz/Phx09g76odm1WYOLwl4AdssOkIw6ke+KWwpTFtV9E+DogJdsKqlAdIvkzPryz9+LU
         GHHn+H08FWKhy7mcwlOM3yPqMVb+pID0PgQyhBUG5oEVcVUHrr0dMUp53/B3iox7CHaS
         26vA==
X-Gm-Message-State: AOJu0YxbcMbWv9ZO9ZXq56onU5/49xPBLO301QXkCmZSqmJoehNXP/Zy
	x/LPc3h60MCWeIIKCmkLca2lmmee20AdAGINnhLHFbkKKNSE7eSlP7ZwWQ==
X-Gm-Gg: ASbGncvRQvC2s+1qNt6Z8vPZp0CBAsQQOFsaUMPFMSaG7761X7HiTy/jrseNmkhnL5/
	4Tqv4ZvL2gfEed7wlZASs+EcsAt1XdTW6mfR5lrxnA9ev/2z5Rf5ZKEdVdCKqybtX+tNxGkZvzL
	39fEJnQo6DVPROBsV6OFNsnrl9ttN4/5O9PBQHH1m/MoW/2PAKAWBSf414Jl/x1beoW/eh5eLA5
	F3czj/BuvT8p/iNZNE8fWMZs8UMJARC39zRttXRPqu7xAe9qynM5GPS9mI3KiRQTd7ETRY3rNzN
	ndMYOIlwmKZI5tIZhD0vV7ZTsZdP9vM/Ig==
X-Google-Smtp-Source: AGHT+IE3wbbtr5dIcRoL8CAwojYS9E6foC5xrtT5NHQ/qrIXnVcaaqjAP62iJ5gNYMucqd1uofYsNA==
X-Received: by 2002:a05:6a21:3511:b0:1ed:75f4:d289 with SMTP id adf61e73a8af0-1ed7a52b048mr13990286637.19.1738278872528;
        Thu, 30 Jan 2025 15:14:32 -0800 (PST)
Received: from [103.67.163.162] ([103.67.163.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72fe631be20sm2029106b3a.34.2025.01.30.15.14.31
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Jan 2025 15:14:32 -0800 (PST)
From: Solera Capital <dewayne1lint@gmail.com>
X-Google-Original-From: Solera Capital <info@administration.com>
Message-ID: <dbdf25ec4a6d758d1de98123ad509be3f2b70260982dd5c4267fa6effa465117@mx.google.com>
Reply-To: h.nwangi025capitalinvest@gmail.com
To: devicetree@vger.kernel.org
Subject: Jan/30/25
Date: Thu, 30 Jan 2025 18:14:31 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii

Hello,

I?m the, Head of Regional Investments for Sub-Saharan Africa at Solera Capital Investment Partners. Our firm connects global investors with project owners, focusing on opportunities with strong ROI potential.

Our current investor is ready to partner on promising ventures. Let?s discuss how we can work together.

Best regards,
Henry N.

