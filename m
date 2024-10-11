Return-Path: <devicetree+bounces-110406-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0798A99A5B9
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 16:05:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 89E8C2851C3
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 14:05:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADFC62141BB;
	Fri, 11 Oct 2024 14:05:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OP2ZZYJZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1141C4431
	for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 14:05:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728655511; cv=none; b=MLb6Upg6CG4maQQ9OcQXC99nNwK+AvW6WR+NLTEXNKLFdBlr+Civxa16nQGW0O5dNf94m6d0gOAeiDY5oxs6jJCLqHy7O7FyRCDXpE8BIHfDNzHrvKTvKcoWUEo4RGNKQOjrcUnegI30BlA9ik0Q61a1vpd2FsNaDGC1qjtaPy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728655511; c=relaxed/simple;
	bh=/dJZWNQ0JGDprPegQ9bqLZD5D6cCOmTT7d5l/dvZz/8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=IfHLN/toGAe1iyZd4Z8BdDv8AFe41E+cIwNzj1Y+7rcEtWbVId0vtNaqc7mezNrPaxvsDhkzgGPC8EkwJo//wsl4Q+flxKJSBhlrIgsQ1RzCLb8CYLMlBg/2Xch0blGdKded0+L5KYSB+VhNAboQ3ZG9Y4NlaIVwmnxP+B4apWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OP2ZZYJZ; arc=none smtp.client-ip=209.85.222.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-7afcf50e2d0so99296385a.3
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 07:05:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728655509; x=1729260309; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eVD5WGtgFy4iT8mZySY5sG2jQ7mHiLKJSVqOlN2xeBk=;
        b=OP2ZZYJZQvq76W3jC9A+KyT5dW7eV40wEIKl5YL703aNMR9ErC+mpLWVJBbf13ZD8H
         m0GJqm+bZvL8dAdG5BW5WzlpmTHQQ4ORdh99lub85lhcKAqWqnsIh7YTtLhb3/n9Pfzv
         9LdqiyWD+nd4cyYWYXWh/rDqVFu6PMLUZXEvcwrBzz53VHnkJSKqa9b9/T8yl9CoZBKu
         h9BKuldSHvZAqaW+lKpI+7apfhgQEsgOcMcs3gX7Gu/yVfvECCv7VydSNPIAAFrpuOxy
         kyiKchpLMb9yLBsUYiyYM50ngU7tgu6Vp4/WQ/m8FS1YQ0Hh9J8pGoWuOf+fH9Z9Ghe/
         Fohg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728655509; x=1729260309;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eVD5WGtgFy4iT8mZySY5sG2jQ7mHiLKJSVqOlN2xeBk=;
        b=l+bLbamiYrIq2QopJ4hz6o9Mqa4ZSUyGhxkdf2qwd0+NPeaP1XyIvf/Bij9j8etlGm
         sHjy7VUWef/qVMlXCOvzxfi1uA61KcQzxxBf1joyh1pmyme4ztig82UBB2vFlZ6KclUK
         FXjGQduX2DdGE7XK66XBpn8D6lrAKu/1MDhQViQFmU6vPcA053V35nEcpwH+7W+6XdcY
         xPeubBjDKJREt5TPPGKRlUKUV3u7WZc/TQP8hRAFEbN07yOGLeTQxV0rtOVByXZeewih
         74ZQD9j3vePWq/IWpsiV6EPr6E638lgUns4uoCXlThNVyfzhkMcWbqUKOgvI/k2My/Ct
         cfhg==
X-Gm-Message-State: AOJu0Yyw+j8qeyGF8KNLCoFMiAmb29UMv5DPdDABJM+sXSBaWQe+kYZK
	mkRnYKUFSoIujDpfgk3tplQMoZ9HDf98PZRd7jdFVtFLKAGHtMLUI1cNcg==
X-Google-Smtp-Source: AGHT+IFGDJoHdQiCeZ/cSIu6mFB7sCM9TuNEqHCI0yBMIqVQfQm9iuc+FDkHFww42VtsO0sI2j9MZA==
X-Received: by 2002:a05:620a:460e:b0:7a9:bcd1:527a with SMTP id af79cd13be357-7b11a3b6b04mr397401985a.55.1728655508591;
        Fri, 11 Oct 2024 07:05:08 -0700 (PDT)
Received: from localhost ([2620:10d:c091:400::5:7799])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-460427d53bfsm15567971cf.29.2024.10.11.07.05.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2024 07:05:08 -0700 (PDT)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
To: devicetree@vger.kernel.org
Cc: tnovak@meta.com,
	Jes Sorensen <jes@trained-monkey.org>
Subject: [RFC PATCH 0/1] Only build dtc when DTC= is not set on the command line
Date: Fri, 11 Oct 2024 10:05:06 -0400
Message-ID: <20241011140507.3703348-1-Jes.Sorensen@gmail.com>
X-Mailer: git-send-email 2.46.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Jes Sorensen <jes@trained-monkey.org>

RFC on Android it is quite common to have a prebuilt version of dtc. In
this case one doesn't really want to build dtc in the kernel tree, as it
is unused and to avoid the risk of mixing and matching dtc versions.

This is the simplest fix I see for this. An alternative would be to define
a new DTC_USE_PREBUILT flag.

Thoughts?

Jes


Jes Sorensen (1):
  Skip building dtc if a prebuilt binary is specified via DTC=

 scripts/dtc/Makefile | 3 +++
 1 file changed, 3 insertions(+)

-- 
2.46.1


