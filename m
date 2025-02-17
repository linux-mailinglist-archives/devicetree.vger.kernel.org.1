Return-Path: <devicetree+bounces-147341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 432C8A38050
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 11:37:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 16B0F1675F6
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 10:37:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 810F0216E1E;
	Mon, 17 Feb 2025 10:36:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Mz1MrXcL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D330217F2E
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 10:36:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739788607; cv=none; b=pIHRtUx0yWJ3qHqQQkCqtlv218qVkeBip6R5xFEfqW83pKSc72Pq2Q03hEvi/pzWglijlpjqWZ9i5szD1tyBGK+rQE9Q+sWWqkau68Myo+Z7pe1ArmrHZp5pT91vjwQFfZJUa/Io7H4b1guZdhbSXjkCIVdJ7B0pyLuykkX/4p8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739788607; c=relaxed/simple;
	bh=HnkP/kpNRRh3mtnxaRpe1uO4+q+YSsKHfwC2hyaD4NY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=IvKPjR2rQi5rz6+FvCllECoh6MsMPL1+VX+Nm57sWnRrFpAUCXInAi6NT6gNFGA+EHuE6i8yNk/FLSqqwAhSoSrw8txNVlGFnAW2eLLw09n0iHaBbo2Q8mXVJNUZVHPsyOrpn5RipeW6a6X4bQCAhkfoKCaDFTOfmROoVUKbelw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Mz1MrXcL; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-abb9e81c408so18755366b.2
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 02:36:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739788604; x=1740393404; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N/PEWwDl9MB7g9G1AMh/oGEgtW4u5T+aVOkhOdQ40XU=;
        b=Mz1MrXcLPjiPCNcIYWdn/LvHvX/2Y+rNc9XD6k+xc29gLNdnU9hmpqLZPaDQ8QXpvI
         ITdW1tj06LuO+hVBWO6Eb6L1F7kFEJVqY+KXBNv3M3hCBAy7C8XDe+d5dQFlVSTDGQC+
         P85q4IjM0XYwlwfrMDAthc0k3Qyn5lfiJ2eUajLGttzAf5es5Hg8sXUEWiAntpp8hYbg
         7PTN8xSAV2nQQCQWpFz2RKeWqVn856m68tFDwlRtjmhqvwDXJ6WlI3c2YU/dnVabKJPz
         1wjbh3Y8+VRz7viP+1x5oW4az7TTc/CVrloRnPyVymkDlbv4TNs0xJ0NmLXZdqaFZecB
         rCNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739788604; x=1740393404;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N/PEWwDl9MB7g9G1AMh/oGEgtW4u5T+aVOkhOdQ40XU=;
        b=J3P+tc0BPF5mYdo/R8HtKwkngTnyJemJJ4XyKdTza961Bq8jheNC3Der6pfS2B96Iq
         iWhDdm2h6/vnSgRIdRr8vMLezPwWg7EhCA8PqnUVxEmzYi2tv1UxPGa36Wbs0+CA5Pqn
         coGRlbE1I5WuFgA4LeEp1B12uMO4gRK0yIOxU0uP6Rm73DWHZhLBUIlT5EZqaPXQru58
         tSz6uinmCMRu3zIcrgtAkLCt5oi8X2nz8QuN7Rm3BKdTyJeIw5RaKS2HRKxKSRZW4rNt
         qKPpTlJv956fpiaZ6HUduHesLKuqEbP5P5P7cAUqRRUXGWnlxzf8VtJxfmYTpAENXBv+
         /d4w==
X-Gm-Message-State: AOJu0Yy6IHAA1/6b+ly56jTIG8HOSZ36LrVa9au8zalNRznYDSz4s3bk
	PgwgXym5XAwYvLwkRLmXKSRcNvsaqk1W1ICzD/6hPjOm0wQLYxqLkKFEXUlCFvI=
X-Gm-Gg: ASbGncvbT5RpEr6f3X4tZSbb2sz84hub/2JQODHhC2Bp3h9UnwvJDip5/c2x9bx4xhv
	xRI3sDZf49aLh9J7HrX/Bb7BZfkxmObwEs5PZ5oUVoCHENeI5xZ1HdV9YUTm2tT5w80H9M/65mC
	4jvW8vmDYLIUK28P7LXE9+LZ5tPsVb+R0BW7r7AHAiTu1ovFc1e3Nk7MS0YVhDQc60RrauR3SJp
	lyCbEZafnzKZF/BxzrAm8qtDoW3zPrIfyMagp1G1k2NAzqjHi395pbYKXN3/miuda7eebV+5s/4
	4OBKi1gHe/hquTj3elCCp4091EzxluQ=
X-Google-Smtp-Source: AGHT+IGmMJF4ViTaqLqJAPAEqki9C4gvYmwTm6OvO86oLDWZLtgcjDXJ1cUh7+WEg2+muDpD9D2hyg==
X-Received: by 2002:a17:907:94d6:b0:ab7:c28f:de59 with SMTP id a640c23a62f3a-abb70e5eca0mr311989366b.13.1739788603832;
        Mon, 17 Feb 2025 02:36:43 -0800 (PST)
Received: from [127.0.1.1] ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abb961594absm230383566b.111.2025.02.17.02.36.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2025 02:36:42 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: alim.akhtar@samsung.com, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, Devang Tailor <dev.tailor@samsung.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 faraz.ata@samsung.com
In-Reply-To: <20250108055012.1938530-1-dev.tailor@samsung.com>
References: <CGME20250108054224epcas5p399f3d734f8d9f82e5ae75d183d1a5344@epcas5p3.samsung.com>
 <20250108055012.1938530-1-dev.tailor@samsung.com>
Subject: Re: [PATCH v2] arm64: dts: add cpu cache information to
 ExynosAuto-v920
Message-Id: <173978860144.144850.3570517854379450471.b4-ty@linaro.org>
Date: Mon, 17 Feb 2025 11:36:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Wed, 08 Jan 2025 11:20:12 +0530, Devang Tailor wrote:
> Add CPU caches information to its dt nodes so that the same is
> available to userspace via sysfs. This SoC has 64/64 KB I/D cache and
> 256KB of L2 cache for each core, 2 MB of shared L3 cache for each quad
> cpu cluster and 1 MB of shared L3 cache for the dual cpu cluster.
> 
> 

Applied, thanks!

[1/1] arm64: dts: add cpu cache information to ExynosAuto-v920
      https://git.kernel.org/krzk/linux/c/bbfc70ca7fd26ee3e7eb16872cf7b1f1be5907e3

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


