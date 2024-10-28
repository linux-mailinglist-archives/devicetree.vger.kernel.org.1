Return-Path: <devicetree+bounces-116597-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E55B9B35A1
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 17:02:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E7D4528342F
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 16:02:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AECD1DE89A;
	Mon, 28 Oct 2024 16:02:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tIvAN/mF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEFC21D9324
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 16:02:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730131326; cv=none; b=Aql1GgtWQuILxXdhq9xqpVGISpNHbvGxpfzx9FyFgaP+P+ZCkFrh2u6THcEzgyGa1jdMZyxQVvGp31NP5LBOL55I0A2AB9/pe7JsDHMHlF+I7CdbrPvYEvHjWIF9YFyehuWG8nBI1qCwWsJzSnqgNXu4j1AGZgsqxhfhkuZ888I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730131326; c=relaxed/simple;
	bh=Ja+nztUw8OHVMpGwlTFOEkyEgHREGqCIwKgRmk4ByUs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=uejZBX/YGj1RDkUSlVejwCzvfGUjf9szEjaZMPTGZsS3kWdKArNHDoTq3/CuwdgyWzqrZ1VXp3tBqjgm+xjGXjFOXLGtbFhXiO8u+iTx/t/OwzIgyPUKu4Ru192BTSaf0qLP2FPyeN2GeEo7kCb0y1+/3trQsY0Dj0Ug4aS3S6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tIvAN/mF; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-539f72c8fc1so5468015e87.1
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 09:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730131322; x=1730736122; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yVgI1AZPmSCTdx25fOhCvnKk8USN7BfMDJrb3FGOE1A=;
        b=tIvAN/mFpP+mCSxKsPnQrR5w/Dekw02oR4wHv8bATZ+x2obp605RcGuh/6pRLku2Gt
         gXDFabjZn5MTCpVe5l9VoLwynaLXkf9PpcuiqdnNB3R29x2NX70YXdq5r8k3/J5JIvn3
         leNTqanWJay4Vzb9M0U+NkJ9rL6iklU/yhi3k67EUCulKuctX5Dlak2loenYwrrpwyYw
         pERImiskZGDtDZVHKCoZmmDLotH9uraGo/cVcK+HFMM4I7dVJ/ydFn7TixQ/XEOENxW0
         i/A56xKKpfbpd22cYOkw86KN84vsY690egeMtHYaJ6NK5mP8gE7GZKbr231DfQgaomVn
         NBow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730131322; x=1730736122;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yVgI1AZPmSCTdx25fOhCvnKk8USN7BfMDJrb3FGOE1A=;
        b=FxSN52+IbiNs/gvhHHzmMoXcgJGVBhrZPiJjRiNQrnYRjZIINrw5abMTCbvyDJ8PZX
         ZGTEbltkl7ZzP5+hNTcx+A/KitkszjW/1kK48cR8yvplQGF9p18abeGOhLwfmOR50Fku
         qR8DqPKX2nVpyPKSiTQ48INeN8kaXnGs3IxDeQVKHxVzQxPQ27BN4ElQKe2brsjKSIXy
         stkExK1g8rSXoICuAso3/daGJfYTJaruW5qJ9uACteFbvpjTtyKFchliLrEkmG9BKyVj
         pqhTpiU2z9rpzV7NSzE1jfZuVlE6+Tkb+iFyoF4GaJSZZa+y0x1sAGR3BPXEC6MvhFAx
         3BFQ==
X-Gm-Message-State: AOJu0YxwqD2ExzFu9hSicikpPyrdzzKZOL2Drz4KeeM6rHZ2043SaWnX
	hDHALWZI6GQ62rKpWNkK/DEUGbXnLkaX6RwbiQ+/Ixyke9ER86wmKcqYCUYiNgQ=
X-Google-Smtp-Source: AGHT+IHUdHgbCbryOriMuf4RJqVJqghNeLBvZJVumcq7AKcBSYtQ1e4J3BwijcR++iMPq2zZfGvWiQ==
X-Received: by 2002:a05:6512:e88:b0:539:f37f:7d5b with SMTP id 2adb3069b0e04-53b34c43009mr2853707e87.60.1730131320232;
        Mon, 28 Oct 2024 09:02:00 -0700 (PDT)
Received: from [192.168.68.111] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-431935f7213sm114084545e9.32.2024.10.28.09.01.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 09:01:59 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, 
 Yanxin Huang <yanxin.huang@unisoc.com>, 
 huang yanxin <yanxin.huang07@gmail.com>, Wenming Wu <wenming.wu@unisoc.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Stanislav Jakubek <stano.jakubek@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <c487bff193db7a06b846976a80c02c37509943ac.1722841057.git.stano.jakubek@gmail.com>
References: <c487bff193db7a06b846976a80c02c37509943ac.1722841057.git.stano.jakubek@gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: nvmem: sprd,sc2731-efuse: convert
 to YAML
Message-Id: <173013131920.328405.6378963521136172479.b4-ty@linaro.org>
Date: Mon, 28 Oct 2024 16:01:59 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.2


On Mon, 05 Aug 2024 09:03:02 +0200, Stanislav Jakubek wrote:
> Convert the Spreadtrum SC27XX eFuse bindings to DT schema.
> Rename the file after the only in-tree user, SC2731.
> 
> 

Applied, thanks!

[1/2] dt-bindings: nvmem: sprd,sc2731-efuse: convert to YAML
      commit: 786700e267b0ebe89d72eaa18146f1cc602461a4
[2/2] dt-bindings: nvmem: sprd,ums312-efuse: convert to YAML
      commit: 24c50e7003bf699194f223711f06c1a5fb3eca29

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


