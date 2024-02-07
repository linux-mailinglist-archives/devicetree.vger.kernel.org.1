Return-Path: <devicetree+bounces-39307-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D632E84C1BF
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 02:18:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 14C721C24678
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 01:18:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BCE64A1B;
	Wed,  7 Feb 2024 01:18:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="c71qFAMk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f202.google.com (mail-yw1-f202.google.com [209.85.128.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C0AB63CF
	for <devicetree@vger.kernel.org>; Wed,  7 Feb 2024 01:18:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707268693; cv=none; b=D6WUUMx1Es/2vfi+H23IzD/ifkTTmC7pqX2oP4pjEocFotwE9BwKyPkCq8LDpokI3tkkhwVCV6xqLt+ULREj+zQYp3mlVryKbcTOrG0SEJQm/Go3uCC7WFK4Xk06yRjSETI6IuBOZCDA4KLNgKElK/47EB/mGMd24h45PmUvltA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707268693; c=relaxed/simple;
	bh=wrL2jNNKKhbi8/viDh62hnYuSFxSKbu2NpzPTnqEhKQ=;
	h=Date:Message-Id:Mime-Version:Subject:From:To:Cc:Content-Type; b=rNRxSzKLNCMyRFS2uhq1nC9kpsTXi4KGF1gYwFuYNKBcTEEJdo6GDV4WZj/+UI1uh0F6eE3wa6zPuTM9t3V9IXJeDg+Vyus+GhtJ46GMB5SF8HxJxj0wofjwtSuz91YCDiH+urmPV1spwwns/MZIKS2xZ6aVGsw2B/deo9+JlxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=c71qFAMk; arc=none smtp.client-ip=209.85.128.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com
Received: by mail-yw1-f202.google.com with SMTP id 00721157ae682-6041dbb7a78so2166767b3.0
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 17:18:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1707268690; x=1707873490; darn=vger.kernel.org;
        h=cc:to:from:subject:mime-version:message-id:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UexJNRXrO9O5AbEP/1DqD+ioDnk3bGMvlBeoNd1TAjw=;
        b=c71qFAMkYrKhLxVsq3o0RdXCYUMlDTgYxkiC/2z5wvGPfrHCtHgm+QL3VbXNpJOTEu
         NlXk2rG4R/oTEXFz0FtaNWaiYXk55+xYn8XU3nCraDARvCeKYUWwAxzNg026qC4tJq45
         Iy6wASKtjlKtStBf7l8ZlW//JyCXKLvUr6Tn/LuYs59LqOCVC36Avnp9pgXJWxcE/Oz6
         /33NdXiY8fWLP/2/ClNJ/BHxK5htnRDFjXW/X/5CKg2U8Au4S/dzVGZh4PNM6MngrPQm
         2uGAH+ElT7XPCn6jhf0KjxPcc1x4k3SBuYiGhfmmtIj6qTd5j2iRvBNA7PmXQOuEURbU
         NOPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707268690; x=1707873490;
        h=cc:to:from:subject:mime-version:message-id:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UexJNRXrO9O5AbEP/1DqD+ioDnk3bGMvlBeoNd1TAjw=;
        b=j71KypZ1j+wgQ/f3JFjIQKYyCuhHhlS3692av60OqGSRvWcX30KAf86hL4gFzVsFKH
         d43OR/HYebQSOoXrNCC5+AFncyPccXxKU2FIpQoI4fGunrbEMwsa3h5dPTEUIHQV2LGE
         rfLgcp4dEN9xwmd+rXQr0xsBRD8XKi6hZN5hNzR+gWiIchBtpi1FasmIedRClVMfgvQN
         EnqaWJKa400DVeCC5VtwCKvatOHFoY2Bi3vkOEmFE5W6AiClqWYuHRMaufqS3nCvdrRc
         6H4DG4Ajw9cMPZQD6U3dv6RSxzNHC5y4AsUO/Ky7DG0a7g2zOnbS236wgIxn2ucpRvcF
         /n7A==
X-Forwarded-Encrypted: i=1; AJvYcCUg7DkAw7QgG3FneU5DAGIOGj60VgeZits5LJxvIZd9pUn/OfTXXkGClCCXSab+3nfqvE4t2nKko2L6fwnW+UkGfdHDW+Rg8ZUZww==
X-Gm-Message-State: AOJu0YwBRVFVv32+2Cq1D4EIFPZ6fNY9xRMPFrTQl48PUca7nhWZmzX/
	PDZ4Qii6IoZeBrkFQKMIBYPqzrtmnxHFGKQXNcIsGzJV0i9salXyViOPP554TWP0BwFiwDA1Lu1
	cUGeGKaHoq1Ilew==
X-Google-Smtp-Source: AGHT+IHfqADdfz6fZ2KpBKfhEALh227q5cvBjI3VmGcT2CqheeQtt9yLZDlPtN8WRPSmjwB7GIBnR84YC++NeT4=
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:dc84:66b8:120:935a])
 (user=saravanak job=sendgmr) by 2002:a81:4cca:0:b0:5ff:dac0:6524 with SMTP id
 z193-20020a814cca000000b005ffdac06524mr676661ywa.3.1707268690450; Tue, 06 Feb
 2024 17:18:10 -0800 (PST)
Date: Tue,  6 Feb 2024 17:17:59 -0800
Message-Id: <20240207011803.2637531-1-saravanak@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.43.0.594.gd9cf4e227d-goog
Subject: [PATCH v2 0/3] Improve remote-endpoint parsing
From: Saravana Kannan <saravanak@google.com>
To: Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Saravana Kannan <saravanak@google.com>
Cc: Xu Yang <xu.yang_2@nxp.com>, kernel-team@android.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Some changes to do a more accurate parsing of remote-endpoints. Making
fw_devlink a tiny bit more efficient and the debug logs a bit cleaner when
trying to debug fw_devlink.

Rob,

Can we get this into 6.8-rcX please?

Thanks,
Saravana

v1->v2:
- Switched from fwnode_graph_get_port_parent() to of_graph_get_port_parent()
- Added Patch 3

Saravana Kannan (3):
  of: property: Improve finding the consumer of a remote-endpoint
    property
  of: property: Improve finding the supplier of a remote-endpoint
    property
  of: property: Add in-ports/out-ports support to
    of_graph_get_port_parent()

 drivers/of/property.c | 63 +++++++++++++++++--------------------------
 1 file changed, 24 insertions(+), 39 deletions(-)

-- 
2.43.0.594.gd9cf4e227d-goog


