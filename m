Return-Path: <devicetree+bounces-174803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 266BCAAEA8F
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 20:57:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2BA3952372B
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 18:57:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DEDD28C5B0;
	Wed,  7 May 2025 18:57:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="byBmq9J0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1F01289823
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 18:57:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746644223; cv=none; b=IzlpowpYzc/Sk4rNKW/saQKRtj/jXzK6mkAoGQWAx7efD64d/XN5BAgvRwg/Jw52UstxhjuyhD95GyDfgGruMoA4VyrIe5c3qJYELD2oVkiLG0teQGxMi66odRtlo7QAaXwlYS+5dAMv+yXJb1+PgpjcWyiCV0WJBUqnsetKfJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746644223; c=relaxed/simple;
	bh=pe3tyzUnuTHHV9wY+pcDILJl9icjd/4bGQ8VCrn/BHA=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=k1mU8arfzb9UdCI8UCdkL2aRHJ3Xxlu9XF6YfzgG49l6FZXGmyWVst/eb6VumnKdvH+ZBrJb9HPcDMsr1FFLKUsKqM1k/EHXG2S5CulYYc7Gb4nPWIC3SVHAV6+Cu9TuVbwkcWkzj0BoV0hLu9LFONapHcvOeEzDPlT2vklPK1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=byBmq9J0; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-736c3e7b390so292451b3a.2
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 11:57:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1746644220; x=1747249020; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0D7Z3FNBB3xDX5RO0FZQrmLI3qnCJ7UO3XkdhJ32m+0=;
        b=byBmq9J0BMzGUW2oBf42qoORUcDgUlFE3wFaB8cqTPOUaKk2DtgfSZnUduQX+NxQXi
         JaZJpaTqPH+ePjESJDw/tC7aI4xmkXxR4pykLReKqndmUo3INRJfyHHRLO7ccJo7ksRp
         OgUqzkXnTg/tov4QyM1nisO1uvMUQVf/SMeB76Vp0R94DHmRp5kmXtpFxtRaJxLZHOVB
         IFTCFduzGAuDaLpeNJwD0LnKc6bt8cfWE7DDQuS3F8FmaPiHrP2UDQ3dAPSH+zKbIG33
         te9rj1aksaleiDWPAKY2Bn5ITFoFY8tGTIGLhvLpaiyb9AatvtPioMCy496dKXbVOfif
         jaHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746644220; x=1747249020;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0D7Z3FNBB3xDX5RO0FZQrmLI3qnCJ7UO3XkdhJ32m+0=;
        b=wKRDJ/FFMX0cwTommA+53ygNL5L1+UzWB3lyHT2wcfZu9G+XU7aMIRVpVJfKOZCvdl
         lPeqtkWgjtbfAIILIngHVs27jnl8m8blrM3m6Jfi6n//Bo9agvGJ86lhSGZPa9MyE9Ev
         1n14BcpYDWMLzubz6+M9OiTVFB3r4C+pjYH/0bRctBMnOHbUUpz5T6r/1hRPujj+p1Iu
         x9cW3MjZh05RrVqYFM8lP7/U5Jc7adIz7BSieta/ayfxQnKy1ddDfPJoD0M0WWCvHHqc
         2WN55AjEi16khaG4bau/2pTnGzIuqOLJWZKCPMa8A2rPCFce48D4RXeuw3KhhVT/QUwF
         P+wg==
X-Gm-Message-State: AOJu0Ywja2iUfKC6CgydL48lk2oZmAsi126lLjwguL7XLKWiGpp6vaJe
	EMpupJaVc0yXDXAu+4BRbiPsi9IdVE0F+3VUlsdYyH4+qcWxvpihmmECJCfnfmE=
X-Gm-Gg: ASbGncuwKnt1lUEeMZpGyxI5uIazPA3+YuAqRVNiRWIIKmwCtO19UyXaS6Ql+yQxh+2
	SU1o3Krjf0R8mQC15NSMao1gfIE8aSvtXv2Lc37m9K2P2iokRMd+5Eo9UpGOaSZGM+tI21ZDHyc
	aenD7WA+UCLuKaeqayWjME2uc+Qlsy1hxNw7n3sQkzWBo8HhN6vQgEQ3S0jhVuGhu2gjz1zjen0
	6cROrVKECR8nOUn6DZLFh7xTz1ZlXbowuiK60ndzQackT8vM6Gj6INzk6MhSSp9jdnPKWNg6u8Z
	d6f/8301SamIxYuIkmchebPpq663/bBBvhCAmvO0/A51OxA=
X-Google-Smtp-Source: AGHT+IEdnDHavMVVsk2ZTJfyzX7ew+kWTOFVAkNqTxlCa/8qxYi15T/lhuGRhufPsi1FCD90sh72qQ==
X-Received: by 2002:a05:6a00:e0b:b0:736:32d2:aa93 with SMTP id d2e1a72fcca58-740a9a91092mr595573b3a.20.1746644220028;
        Wed, 07 May 2025 11:57:00 -0700 (PDT)
Received: from x1 (97-120-122-6.ptld.qwest.net. [97.120.122.6])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-740590a2735sm12068773b3a.176.2025.05.07.11.56.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 11:56:59 -0700 (PDT)
Date: Wed, 7 May 2025 11:56:57 -0700
From: Drew Fustini <drew@pdp7.com>
To: Stephen Boyd <sboyd@kernel.org>
Cc: devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	Michael Turquette <mturquette@baylibre.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>, Fu Wei <wefu@redhat.com>,
	Guo Ren <guoren@kernel.org>, Jisheng Zhang <jszhang@kernel.org>,
	Palmer Dabbelt <palmer@rivosinc.com>,
	Michal Wilczynski <m.wilczynski@samsung.com>
Subject: [GIT PULL] clk: thead: Updates for v6.16
Message-ID: <aBus+Yc7kf/H2HE5@x1>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

The following changes since commit 0af2f6be1b4281385b618cb86ad946eded089ac8:

  Linux 6.15-rc1 (2025-04-06 13:11:33 -0700)

are available in the Git repository at:

  git@github.com:pdp7/linux.git tags/thead-clk-for-v6.16

for you to fetch changes up to 50d4b157fa96bfeb4f383d7dad80f8bdef0d1d2a:

  clk: thead: Add clock support for VO subsystem in T-HEAD TH1520 SoC (2025-05-07 10:09:28 -0700)

----------------------------------------------------------------
T-HEAD clock changes for v6.16

Add clock support for the Video Output (VO) subsystem in the T-HEAD
TH1520 SoC. This includes the device tree bindings for the VO clock
controller as well as extending the TH1520 clk driver to provide
clock functionality for the VO subsystem.

Signed-off-by: Drew Fustini <drew@pdp7.com>

----------------------------------------------------------------
Michal Wilczynski (2):
      dt-bindings: clock: thead: Add TH1520 VO clock controller
      clk: thead: Add clock support for VO subsystem in T-HEAD TH1520 SoC

 .../bindings/clock/thead,th1520-clk-ap.yaml        |  17 +-
 drivers/clk/thead/clk-th1520-ap.c                  | 196 ++++++++++++++++++---
 include/dt-bindings/clock/thead,th1520-clk-ap.h    |  34 ++++
 3 files changed, 216 insertions(+), 31 deletions(-)

