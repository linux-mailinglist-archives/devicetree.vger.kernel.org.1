Return-Path: <devicetree+bounces-135076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC279FFADD
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 16:16:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 449AE3A31E9
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 15:16:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDA091B4236;
	Thu,  2 Jan 2025 15:16:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Dhm6tefD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA211B4147
	for <devicetree@vger.kernel.org>; Thu,  2 Jan 2025 15:16:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735830971; cv=none; b=ViZXMQWJoJYlfWqYfyxk5txfMrVE0bfRzc9XzM2kzIxwskL+11t1hQGm25ma3kkJ8/MFpZB/HKafnJwCsRcpWnoejOffHEOC/sfE8X+Vy9dTAbqCoJENkqyPbREWA9CXdDkmz60wyPPZDiUe8bcIH3nD7tfuXhNZzNYTLRfNTcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735830971; c=relaxed/simple;
	bh=tZGIFZlGbFMuabhoD1PH16qlCdOqDD9qVctfSH4QbGY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SDRAPgiRBW7dvSb559i1ZJRkueP5QbS50RExAyK5+1As4OFG7eS/J96NItxt7BF7OG3Ieq78suTV6PsKO7xgCaTKLO5KNmAkmxUgyE1CHmi2AMCLfBTvDf0GREJgnkBCZ56asfwFOUv6lLhTxM/ishIgWartqNlLQwa0+bNeIeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Dhm6tefD; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2161d4b820bso14979365ad.1
        for <devicetree@vger.kernel.org>; Thu, 02 Jan 2025 07:16:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735830969; x=1736435769; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZtcDWrQ73jqFojmLKyQfLZ0En+VUeMI1nsaGNeWKho4=;
        b=Dhm6tefDtmxCSOtM31/4OiNuEY9cOVcNtVHy22g6vprnSLHyoARl9TINs8p3rC3fmJ
         Uv0KChDIG8r2tE8Em2cNkOCvLiga9Deg5ler3l17Tz1wKVCQtMJ2HskN94tOh4Er2emW
         VQMtUS4yxAfxCR3oqKQNha+nZnilL97nUx/Qu1JrEuqFxQS14pJeqRS3TFme46U1ysky
         jE+7GmoI/4pZS7O2vXFM1uXzMsoG576YDM3GgvdGyzZEmYITFnCTCaxoi3hmrGieO/Zy
         n7irbBjI4Xm9UD+Dwb6t10ExCd0iCXC4Ee2dGlhOUAC3EKC9GCScNy8QuYk7ZZpDeTt7
         hmzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735830969; x=1736435769;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZtcDWrQ73jqFojmLKyQfLZ0En+VUeMI1nsaGNeWKho4=;
        b=eWK/jk6kYbXOP6TUUn5avqrDsllW+1ctugm1T023bgAOoac1h65R3cdExWRjVx+9YD
         1VPgtCbk5bnBiLigP+dQycwEhgAFEBFQtL8C4Q4Bgz3hiNx/7nvLUZlERDiDDjI6+F+m
         UUgA8b34avXXeA9SAe9zcexu/BSyxlz6mR4ZkpU9n2n6CAjmcQbdcQdFtaeEoU1Ud1PN
         P8dDHDabIYcUKiNqUQ0+EONbLh1F/PLL5EMPdYjc4nHX3SAeAq5sXy1rEzu264V5Quao
         bDvtsiQHip60HuTZH00NItpgekij6DLKPLxsvO1dp3/4OhztKD9Zo8GtCJKEYNYpu0/1
         DXhQ==
X-Forwarded-Encrypted: i=1; AJvYcCWdY1qXHL+62B3C1Havg0+pYSxcE6L2m+PmH7TFrqkHWpQracmqmXkTRyv4zFJGz4TNzOXkGYS09mAo@vger.kernel.org
X-Gm-Message-State: AOJu0YwitSEAnT3yqqeTSiFxS2txfcJMl3PFue5e9dl7iQggj7FO0CZc
	oSywah8iUSqbH1/XF2IZCoOMc1/fgLeItyDKHlua/s/eUjG7iD9c
X-Gm-Gg: ASbGnct9HRdURlvfZrxI09dbsFWnSZM1dyK8aAgquF9SvhTm1iOcxNiBSr5ePnQM00T
	nKS7mpE72Yd1mITM2joNB8NxAdXFgyHUKHjrPOgOPzvinCOIpvHiaXZ5XEWcnHodDoHJ1bWenmS
	bR5EbpsCjmftqEmG7GBvutLco0N0QjwikYo0pWVTaHd0KO8HERXEvoYecirJeBkfDJEAD54wcvo
	NOyoCtS25SGQL5pgoyHSR2gc9LdCYAHpELDMDKmKC4UelIIKEMxprAJ9kZbLQ==
X-Google-Smtp-Source: AGHT+IHe+s25vVgZEo61TLbYoVVK5tzaLM84BfZLH2ZP8ydnTSroc2lABkTLtHU9g42UECtOP/2X8g==
X-Received: by 2002:a17:902:db07:b0:215:2bfb:3cd7 with SMTP id d9443c01a7336-219e6f0982cmr236749285ad.10.1735830969185;
        Thu, 02 Jan 2025 07:16:09 -0800 (PST)
Received: from rock-5b.. ([221.220.131.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-219dc972b29sm228998815ad.111.2025.01.02.07.16.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jan 2025 07:16:08 -0800 (PST)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: vkoul@kernel.org
Cc: amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	kishon@kernel.org,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	p.zabel@pengutronix.de,
	robh@kernel.org,
	yifeng.zhao@rock-chips.com
Subject: Re: (subset) [PATCH 1/2] arm64: dts: rockchip: rk3568: add reset-names for combphy
Date: Thu,  2 Jan 2025 23:16:01 +0800
Message-ID: <20250102151601.2615178-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <173367712869.1031947.3262464465649332012.b4-ty@kernel.org>
References: <173367712869.1031947.3262464465649332012.b4-ty@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

On Sun, 08 Dec 2024 22:28:48 +0530, Vinod Koul wrote:
>Applied, thanks!
>
>[2/2] phy: rockchip: naneng-combphy: fix phy reset
>      commit: fbcbffbac994aca1264e3c14da96ac9bfd90466e

The other patch in this series:
arm64: dts: rockchip: rk3568: add reset-names for combphy
is missing in v6.13-rc5, which will break pcie2 of rk3568 because the phy
driver has changed.

Best regards,
Jianfeng

