Return-Path: <devicetree+bounces-142081-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A9A9A240D2
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 17:41:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9986E18849AF
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 16:40:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4077D1EF0B8;
	Fri, 31 Jan 2025 16:36:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Pb4H5z1+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBEEB1E3784
	for <devicetree@vger.kernel.org>; Fri, 31 Jan 2025 16:36:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738341412; cv=none; b=IaNfYTa6/Byl+o2zPEyLhhb7WfmchHU6rpEi9ZzT7vpCK1ETz+WV9I1KE3qsQMQv/eEaNfu47Xbe6lw1577LAAE2on4y65+fOQDPGpLCxDGJqfJ5HozrKotssO7Muf+jWqaboSmWgn6Mpn2egopnDYyBJkCLr21ST6pNpy1scB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738341412; c=relaxed/simple;
	bh=p0VPgA+jkv871ikjZhyvSRtdccIWBvWj2uD+8piZL4A=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=r1uAPaF8AsakuHOaWhqMzl+6l/WQZ4OaPtKHmKoG5QXEXcNTdPhkIvUAQYWaDpx0g1oTX2UeuA7uUCPajuPcr/a0OMQQGzcM6nAG/QFDaLJoeq9d8Miiya4NV0quRqfnDpPu6lxBnmye94s2Q1ADXzcvc5RX7vBxg5qTERnLlTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Pb4H5z1+; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-435f8f29f8aso17020955e9.2
        for <devicetree@vger.kernel.org>; Fri, 31 Jan 2025 08:36:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738341408; x=1738946208; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jtFQ9J65cFd3o5+YuJiRQk+pzjY2xY2gR0s0VLRS55E=;
        b=Pb4H5z1+Uu1LC8ZqRqt/P5NWQsurbhn7JcySfZX6An198Q2IsO9PhH23acJmjw4Zau
         W3XZrvsjczpr5olBdeyCdVUhkLlOptsiwxF3BDl1ZS29KcVUN4cK630K+cruTKbbrYp3
         c7vd+tLuv+7N0shWqkB2n2p1pXoAf+c2yvvAaTB2RuTubC9S2qQnjVu4sGPkdkiCjhzf
         Cuf2uqhlD6HkMi9W6WwaXphSti3XL28YMPgpngbvjfLb5ONeuen7Fimgfb6g+3FPOmYN
         h4dS+RYMZC1rljFPJfTDqC9RxtQVLHOf0rS5xtPUK/+ca5NGziTU5rkxJNBglDZ9hm88
         4sPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738341408; x=1738946208;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jtFQ9J65cFd3o5+YuJiRQk+pzjY2xY2gR0s0VLRS55E=;
        b=qYWsAnzlPAOSnTHOwSKIcYsEpL87CI7NJeJcS/cRj4lsEwZgek0gRTqPdR2nM3Kl34
         pq1Bg+Y9xsHUhyojfrT1e4VDl2elhC/wWGGJTqd/IY1s3E1TLcDk48deec0ZFY03ms7N
         YmcCzFWyALuPAT2Lp1bRYz0OnWnyZXkUas1BelASN4lAE3Hni+peb3pP5QdwiKKLEKrI
         ORkRpQ6DnS3UwqX6y5l4bfsysXpMgaxHu3iy8jyA0hd141JtkD2x1OGOE9sV2BzH+470
         hyDDeP4i9FXYvrg5TyefVYhTSX+KujiBzzQbtNFdl5CXFbCVnTySXMfERB5laMp5axum
         v+YQ==
X-Forwarded-Encrypted: i=1; AJvYcCU4QQw9HDp7r3MdbMz9OwuIb9uTWo0yl/rwq/RqMzU7wZInCKhnwmPoqK8gg1qJDBeFj127cByCDuQ/@vger.kernel.org
X-Gm-Message-State: AOJu0YyD7Nqr3U37JLrVTYPryyiesKzLymvVRC8rx+vLGywOHmSLxoxk
	8CUplKhD/qEOKiDsQcx1tTxVeLQF7xGj1oqd9xr2PCdleT0rrgYT6lCYW8drfsE=
X-Gm-Gg: ASbGnctqjk3y0wNO0K9d/4pV+ZLbolPU+TKh0qySED5Cbm7cTk8XI3fVhucVP0eIetT
	3NM2Zz/0wj3RcEbURPq6HBzzWvrcmIuJA+jUOZW0tSLxS94V9f7ZPvPEvVKZcJfcrQc4YxSBaGx
	tF3Dw6bKYlqg3XfMQU0fetCuj0YqSvlzF0SMe+MphkOObuUfvP6Le0SgmoQGkNTo5g9MDIJazEO
	X6zvtgW4gBRCuAncGhHhWGiPI2ugtshp/l9h7KO+vtTg9KZ/smF83ZyptKqlk8fMrSdC68eGwVr
	JXmmI+fo/Sbpe8Y=
X-Google-Smtp-Source: AGHT+IF5Phsc9N8X46dajNfJWnr4UVEjpzVbx4Mq2WI4DCkq1bHDvZhiQxOuFhDTImar5RTr5xSPFA==
X-Received: by 2002:a05:6000:4008:b0:386:459e:655d with SMTP id ffacd0b85a97d-38c51952173mr9891268f8f.20.1738341407991;
        Fri, 31 Jan 2025 08:36:47 -0800 (PST)
Received: from pop-os.. ([145.224.90.107])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c5c1e8f53sm4975118f8f.100.2025.01.31.08.36.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jan 2025 08:36:39 -0800 (PST)
From: James Clark <james.clark@linaro.org>
To: quic_jiegan@quicinc.com
Cc: quic_tingweiz@quicinc.com,
	quic_jinlmao@quicinc.com,
	coresight@lists.linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	suzuki.poulose@arm.com,
	mike.leach@linaro.org,
	alexander.shishkin@linux.intel.com,
	mcoquelin.stm32@gmail.com,
	alexandre.torgue@foss.st.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andersson@kernel.org,
	konradybcio@kernel.org,
	James Clark <james.clark@linaro.org>
Subject: [PATCH 0/3] coresight: Alloc trace ID after building the path
Date: Fri, 31 Jan 2025 16:36:12 +0000
Message-Id: <20250131163617.1730505-1-james.clark@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <d5332d6d-237f-4b78-9eaf-2619bd97b7bd@quicinc.com>
References: <d5332d6d-237f-4b78-9eaf-2619bd97b7bd@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Proof of concept to support CTCU device. Applies to Jie's patchset in
the parent email. I think this would be a good simplification, it
removes some code and makes things a bit clearer, and works for both the
old and new CTCU requirements. It will require merging into the parent
patchset somehow as it undoes some of those changes.

James Clark (3):
  coresight: Don't save handle in path
  coresight: Export coresight_get_sink()
  coresight: Alloc trace ID after building the path

 drivers/hwtracing/coresight/coresight-core.c  | 107 +++++++++++++-----
 drivers/hwtracing/coresight/coresight-dummy.c |   9 +-
 drivers/hwtracing/coresight/coresight-etb10.c |   8 +-
 .../hwtracing/coresight/coresight-etm-perf.c  |  20 ++--
 drivers/hwtracing/coresight/coresight-etm.h   |   1 -
 .../coresight/coresight-etm3x-core.c          |  84 ++------------
 .../coresight/coresight-etm3x-sysfs.c         |   3 +-
 .../coresight/coresight-etm4x-core.c          |  83 ++------------
 .../coresight/coresight-etm4x-sysfs.c         |   4 +-
 drivers/hwtracing/coresight/coresight-etm4x.h |   1 -
 drivers/hwtracing/coresight/coresight-priv.h  |  17 +--
 drivers/hwtracing/coresight/coresight-stm.c   |   5 +-
 drivers/hwtracing/coresight/coresight-sysfs.c |   6 +-
 .../hwtracing/coresight/coresight-tmc-etf.c   |   9 +-
 .../hwtracing/coresight/coresight-tmc-etr.c   |  13 +--
 drivers/hwtracing/coresight/coresight-tmc.h   |   2 +-
 drivers/hwtracing/coresight/coresight-tpda.c  |   3 +-
 drivers/hwtracing/coresight/coresight-tpdm.c  |   3 +-
 drivers/hwtracing/coresight/coresight-tpiu.c  |   2 +-
 drivers/hwtracing/coresight/coresight-trbe.c  |   4 +-
 drivers/hwtracing/coresight/ultrasoc-smb.c    |   8 +-
 include/linux/coresight.h                     |  25 +++-
 22 files changed, 159 insertions(+), 258 deletions(-)

-- 
2.34.1


