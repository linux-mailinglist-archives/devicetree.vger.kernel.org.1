Return-Path: <devicetree+bounces-103701-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E86A597BD0E
	for <lists+devicetree@lfdr.de>; Wed, 18 Sep 2024 15:31:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6E46FB2385D
	for <lists+devicetree@lfdr.de>; Wed, 18 Sep 2024 13:31:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FC40189B94;
	Wed, 18 Sep 2024 13:31:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nl+azVW/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com [209.85.210.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D1C18858E
	for <devicetree@vger.kernel.org>; Wed, 18 Sep 2024 13:31:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726666263; cv=none; b=oJfT1T9/jKxPoVdzD8MXou+HEK7/PSwgu1mZLwQHuk0Pat04j+/f/sVDh+H1quV9HQ2ERSPXrEXDEwG1GDm/hB6m1f4j0pfZHDOBEMy9HXMiKwddPS1a7CkNTlD04l7S7xJHfLfJnt83pp75SXFK+E5/15JXfOzTc2BgJfwA5yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726666263; c=relaxed/simple;
	bh=dNOyc6yx3NH63mp4ylHB1CXRSC1Yw4nnqKxpT7UdOEw=;
	h=From:Message-ID:To:Subject:Date:MIME-Version:Content-Type; b=Eyx4ZL2FzlM49KyTXoRfFq03AZuqYmLbYpHSZcCxIyCtsoTqg2NiHRIWTqsRT0NIY7VpkcxohB1ukcczdBtnQ1kOpfJxuF5ZhHLKtXJwgbYRVW5sAexIRYod217LlAq8AKsu8CAjxvgtTOEnhMZoIFU4AOuZK+LR0+ljsUfy7LA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nl+azVW/; arc=none smtp.client-ip=209.85.210.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f196.google.com with SMTP id d2e1a72fcca58-71798661a52so673336b3a.0
        for <devicetree@vger.kernel.org>; Wed, 18 Sep 2024 06:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726666261; x=1727271061; darn=vger.kernel.org;
        h=mime-version:date:subject:to:reply-to:message-id:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MxitZxgmvoGPY/D0MWsatY/SG1INnyxTi18mvHYSZYE=;
        b=nl+azVW/NeKSN16wEMjbXlAEdrxc7Cdbj//MSDrWBWfL7cSubcuAF9XrhS8fQrgxP2
         DfNBAyj6DxrRFfTiBy0Whxurno3ovGhlOxt/Qu28XL6XGj3RvEJ/sMBxPibP9oWYF6t0
         6zGz9r1QeZNQc1l98p3KHazl3cu260HU7p2yWMlpt3HsFFWoP+NrPm0/8QdsFa5/MoTO
         WdkJcN+z6XihU1vbu1dzS03nGgRb3cVYnOFLgBBnmZQt+75PQeT3xEGrXKPHP0XKFLQ0
         3fxkidRE1VVQoZUcdZQjB1K5v4VX3ArjpxiXYXQUdw8dmN6ZYM3y58S4bj6KBYmyrJNp
         2Oug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726666261; x=1727271061;
        h=mime-version:date:subject:to:reply-to:message-id:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MxitZxgmvoGPY/D0MWsatY/SG1INnyxTi18mvHYSZYE=;
        b=r/NECI4PlfyoBOOHnUv6b1/aZCxOA9dLjecpydqH2tv6NfWe1My9G44/BwC7Vc1Zh6
         8jaX1HXxjtkzP00Lvr7G25PIRLqTa1CDfHumrVKtOiqmGIwV9tqu4ZEAlrRH6s9fFGHc
         3AN1SUxMgSc3dnOBYklgoj+VOkWhtEE4b/zBhX+xC6Hlo2al9dY+GUdcvxeq4Z42jzj7
         ZDDktytTwXnvNsPHAp1aVze0PBojg/Fazl6e2ytmeui2qQi/q2JCJGUArSG+rLOmBTSv
         gUdU0SH/byKr9lSQSkE9HwQWp0lSYCo3IUFOADPlYHB7vT0aVyS6byTOrTBQSCOr03RX
         ODUw==
X-Gm-Message-State: AOJu0YzRLHSjqnWCV4hoJBV5yRYNXmxOmLt6Pm+Tm9SOCRV699j4qPSz
	mbHn8hhAs1oWTVxQfri5GqHBkQG402hQvxIYMcWbi3sPwU24pZdeq6NFqr+9
X-Google-Smtp-Source: AGHT+IEFlqr0nTEjDkBfToacEtqW0QMxESSV29A5uzLkMBoICqti3AmWShEqb5xZImOcxDCwmamcqQ==
X-Received: by 2002:a05:6a00:b92:b0:717:8a98:8169 with SMTP id d2e1a72fcca58-719263abd5bmr34707727b3a.1.1726666260612;
        Wed, 18 Sep 2024 06:31:00 -0700 (PDT)
Received: from [103.67.163.162] ([103.67.163.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71944a98092sm6728556b3a.41.2024.09.18.06.30.59
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Sep 2024 06:31:00 -0700 (PDT)
From: Michelle Fangman <mitmitila81@gmail.com>
X-Google-Original-From: Michelle Fangman <michfangman@outlook.com>
Message-ID: <116a1a9d675afade01d1787e25c0ab058d3a60e404a6d8b95e3c7ba9d0dd1568@mx.google.com>
Reply-To: michfangman@outlook.com
To: devicetree@vger.kernel.org
Subject: Baby Grand Piano  09/18
Date: Wed, 18 Sep 2024 09:30:54 -0400
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
Michelle 

