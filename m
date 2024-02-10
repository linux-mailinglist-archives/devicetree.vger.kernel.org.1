Return-Path: <devicetree+bounces-40424-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 70096850741
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 00:15:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9C6481C20FDD
	for <lists+devicetree@lfdr.de>; Sat, 10 Feb 2024 23:15:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 659085FEEE;
	Sat, 10 Feb 2024 23:15:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="SxDJ+Uav"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD1925C604
	for <devicetree@vger.kernel.org>; Sat, 10 Feb 2024 23:15:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707606921; cv=none; b=OVaA7YriKXxZQDr7S8/HzL/zAf58TUAcC4brlCRFBFwIEb2o78YsGawy6cZvB5UZO24B82yKS73D6vLYs8oTU9R6noqJ7pAtLQkpcXDzbsqaWlWS/tVgjQUnP5K/R6ecMN+eUqTeJ/MmIbeV9BJQByoiaYiskVy37CuG1oj0yTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707606921; c=relaxed/simple;
	bh=/3YzkBLodMNUrjnwjELpDTo92n8iOXA1+uqd9b5AE1c=;
	h=Date:Message-Id:Mime-Version:Subject:From:To:Cc:Content-Type; b=dw9iGBeblLBqeURhYeF+FjygXAEch3CZyWf7uzZnLjsmL4llRkOK3gxEcxB/lr08LZ5d1NjuTy4TZYP7Nbft38zwnZff8K6s4zk7J8uY6VQYhNxbhYd9Rtaq3ksJenSBbp3ZevoRIxL6gr6B3dLCKw8+JEbArJ7KlzBGMTzheRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=SxDJ+Uav; arc=none smtp.client-ip=209.85.219.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com
Received: by mail-yb1-f202.google.com with SMTP id 3f1490d57ef6-dc74f8d953fso2639349276.3
        for <devicetree@vger.kernel.org>; Sat, 10 Feb 2024 15:15:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1707606919; x=1708211719; darn=vger.kernel.org;
        h=cc:to:from:subject:mime-version:message-id:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=X74cf6T8C4bXDHMgSvTgHCjENEzriqu7nAo5Mgz+MM4=;
        b=SxDJ+Uav1JT1xkr11P8EWEEH4aiXtqA/CIPkKFuknE8oeTqX2JHCgSUINDuODtOmpq
         pObCE5xGnFRkDYuBH9S0dR8GJtn58SBdpwz711//joxiINoHdiESNXrSXHHNQPmmPSGr
         noebh6eRIBWeXMnrPEIJCsjCYa/MewornumtwWDCwKZvuTacIdfkiYrs+GFLv/uxpTjM
         /sRHtp6Pv0BKDFoXrWNVgASVNLj5AA53fwHqWqSSjb2J5v7vwjO6Cn2swRXggb5tuaFt
         J7yxGEWnqt0IBWXbzpnP4uG0J9DZ0Yi1mzweIxc6PXf2Y1RUcfwXFymIyTyG4oqiRxuA
         MDjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707606919; x=1708211719;
        h=cc:to:from:subject:mime-version:message-id:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=X74cf6T8C4bXDHMgSvTgHCjENEzriqu7nAo5Mgz+MM4=;
        b=SCMjvhl6N/wQ/ZEUGWtLshk399mJmH7/KATb+G6WIKYPDumgdQFZmFhabykVSX/JJG
         wC/9F9S5CSB2HOmRgHSWWud473rYg70BKTs2D8F8qMZ49XxcfQ8NiyzK/tbF64HXIh4E
         ZPhupr7B7y6V7c8/51TEtEVt7MsBkrTO1EYBtIptC+4WWfVyQ1X9V1Jn2iVLGssQPzK4
         q4mNHXSKIlcsB6yzAc2PVzd83Zt/QSaZtt1eiCnAXK0Jb6VzvqstIEpS9fKcQCN7jrW6
         1Y4DKxvjfUQPS9e/0ObA95M2I51sxMqNtkoGuzgZod4V0pG8gQSTEg2xTgQF+JyYF98o
         Lt1A==
X-Gm-Message-State: AOJu0YyePuftD91DN2/lQwDKzjw7Uk+4dUW2uEZ3W6hB4g0MxSpiHBsK
	SFc2xHyQzvaszGQUmhlDr2CQrsMj8fodZrmCaerzJZZq4a78UEUjweuG1aDZIRHDRKQLfHRe5Qy
	LOqLD0bvSvnQxuw==
X-Google-Smtp-Source: AGHT+IH2Adref4+yil6FrbE6d/7iC18rjqbq852WHMSpdwSZBvXZFSyEt1R4atXsHCbl3PmMo9FKTKBDAQtPReQ=
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:80ad:1a11:8cc3:735])
 (user=saravanak job=sendgmr) by 2002:a05:6902:2213:b0:dc6:ebd4:cca2 with SMTP
 id dm19-20020a056902221300b00dc6ebd4cca2mr118406ybb.11.1707606918832; Sat, 10
 Feb 2024 15:15:18 -0800 (PST)
Date: Sat, 10 Feb 2024 15:15:12 -0800
Message-Id: <20240210231513.111117-1-saravanak@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.43.0.687.g38aa6559b0-goog
Subject: [PATCH] MAINTAINERS: of: Add Saravana Kannan
From: Saravana Kannan <saravanak@google.com>
To: Rob Herring <robh@kernel.org>
Cc: Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org, 
	kernel-team@android.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Adding myself as a second maintainer for Open Firmware and Device Tree
to help Rob out with reviews and other maintainer work.

Cc: devicetree@vger.kernel.org
Signed-off-by: Saravana Kannan <saravanak@google.com>
---
Discussed this with Rob.

 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index b01f890ec789..45c6c13b4edf 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -16359,6 +16359,7 @@ F:	drivers/infiniband/ulp/opa_vnic
 
 OPEN FIRMWARE AND FLATTENED DEVICE TREE
 M:	Rob Herring <robh@kernel.org>
+M:	Saravana Kannan <saravanak@google.com>
 L:	devicetree@vger.kernel.org
 S:	Maintained
 W:	http://www.devicetree.org/
-- 
2.43.0.687.g38aa6559b0-goog


