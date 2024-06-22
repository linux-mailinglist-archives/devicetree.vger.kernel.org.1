Return-Path: <devicetree+bounces-78754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BE512913487
	for <lists+devicetree@lfdr.de>; Sat, 22 Jun 2024 16:53:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 77402283C6B
	for <lists+devicetree@lfdr.de>; Sat, 22 Jun 2024 14:53:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D3C214D43D;
	Sat, 22 Jun 2024 14:53:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hLVyehxn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com [209.85.214.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED0F31E4A2
	for <devicetree@vger.kernel.org>; Sat, 22 Jun 2024 14:53:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719067989; cv=none; b=cKbCH69p27fgiLPVQDvdOpja8UH4xL1rWieoZ72LU3bATDDIodW1uCmfo1IH3DKN9aiRct8tkuBDT2t8NVHV+bgyZLHyKkdkEgEDpQe+EPF0WS9HIEyvN6qhaGYCAIfi+2nnasXAOimcKkSZk9r0gHbUaCVoXOcYJV1mad3Lrw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719067989; c=relaxed/simple;
	bh=29hom0yIUKXyxGpaBfQEDkClvVe6uzQV9qrVVpyHZAQ=;
	h=From:Message-ID:To:Subject:Date:MIME-Version:Content-Type; b=geLxs4Pxk3tSSmmXwM8AXAamI6L/ktDN+DCMWmOZLn9fWF/983Dg+hkvRZ5YNauFgfYPqF3a5TQ8euEiXpTtGSFzE3zGt8OO4ZbJDn1U5dqJPJe7WFSa2AsbZQisLco/BMReTytgE/TnsKA+IK+1pGd537kv34CB5rM5oC0Bg5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hLVyehxn; arc=none smtp.client-ip=209.85.214.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f195.google.com with SMTP id d9443c01a7336-1fa0f143b85so3231075ad.3
        for <devicetree@vger.kernel.org>; Sat, 22 Jun 2024 07:53:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719067984; x=1719672784; darn=vger.kernel.org;
        h=mime-version:date:subject:to:reply-to:message-id:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=29hom0yIUKXyxGpaBfQEDkClvVe6uzQV9qrVVpyHZAQ=;
        b=hLVyehxnm03n3y7vDpCOeSw6NfL5V4ZRrkCfAVfFIqAMZBlZauMzWGYVzOMpK+aRDP
         2BwyuxaAQYlZnennAY0hcHE+65JBk2r+38YX7eUXqAd2fNrKNJj4PYY/cg1Iopo9g7dy
         vDfeeH1KMPPxllTH4UGhWcDNYDup6KtpUB+Ne6tnXWlcyKjBwaSdeHTOQzMpzB4gyXRU
         zPGDL6n+680L6rVxpubt1wth9lnbif+LwlE7TDZHbSn/wY2O4kHLRDzchgFbXDTBA9AP
         iHqmhASftVKutWTFE36/BCymNm40CKYSmaLkzhZ+lelobaEVqCMH/ixjoSDw94GGkl5r
         hSsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719067984; x=1719672784;
        h=mime-version:date:subject:to:reply-to:message-id:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=29hom0yIUKXyxGpaBfQEDkClvVe6uzQV9qrVVpyHZAQ=;
        b=vggwbGl0TBQksFWpls1DPTwy1O60LdWGWI7ckjxG1vRwKZaxYKqPK//y63KlFhjVQg
         p4lA3WgBe6QCceNledSXK7yEr+/DfyaJh1zYX6MN77dUcw3WC8eROD1u4a7Tf+8ckaY0
         xv5ngSZBvvxtxVkD+mvvkfuyPhum4MV8eKlu8Nc8gFy3HUSoLFeVvgi2WRlgsCJ0i3vB
         HvDDBVm8PsqTFVOwD2WF6xLVKoIfEg3XThkMULqo/OmZr6JxN8P25vHDh4YV0b9NiQcm
         8yXGbzEdZ7WoMt6++45dva/CFYax72aHGiJ1yHhkXz/+cDnPULYlprdqCjLFvXcy6zlT
         rqMw==
X-Gm-Message-State: AOJu0YwfvNrotEXMrC4wGq8iRygUPPQJ+c+InBI6JQq+KflieP31T3Ix
	H2AC9MhcPRfoYqQ+PhwzrqHB6/Owd9Ni20AMSX99m6IJ0ldXZDjfL9wQao+Q
X-Google-Smtp-Source: AGHT+IFdo9pPH65a5zTbiOBDGjWN528e0UADYB1qxXXIxmvphdlCluhzJ29vHjZ+ZGo0YuxBRwLNrw==
X-Received: by 2002:a17:902:e846:b0:1f9:f217:83d with SMTP id d9443c01a7336-1fa23be177dmr1803625ad.2.1719067984085;
        Sat, 22 Jun 2024 07:53:04 -0700 (PDT)
Received: from [103.67.163.162] ([103.67.163.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f9eb3205f3sm31769075ad.76.2024.06.22.07.53.03
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 22 Jun 2024 07:53:03 -0700 (PDT)
From: Gina Fogle <km8099407@gmail.com>
X-Google-Original-From: Gina Fogle <ginafogle@outlook.com>
Message-ID: <07b2470865484bd47e7f980c76f49c7ad3a109db3d2ed7de44db7334b4bd5d55@mx.google.com>
Reply-To: ginafogle@outlook.com
To: devicetree@vger.kernel.org
Subject: Grand Piano 06/22/2024
Date: Sat, 22 Jun 2024 21:53:02 +0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii

Hello,

I'm offering my late husband's Yamaha Piano to any music enthusiast who may appreciate it. If you or someone you know might be interested in receiving this instrument for free, please feel free to reach out to me.

Warm regards,
Gina

