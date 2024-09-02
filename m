Return-Path: <devicetree+bounces-99061-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AAD69688D1
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 15:26:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7D9101C21B30
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 13:26:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4544620FA82;
	Mon,  2 Sep 2024 13:26:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PV/GovAk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7459D201269
	for <devicetree@vger.kernel.org>; Mon,  2 Sep 2024 13:26:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725283591; cv=none; b=nh2eFEiZRQM4XwSPCmsRrVpAWrHos+4UDTUbWlyok4xm8AsfXHhRkikKq0S73VIToYA2aTQ5Wx63SUhUGqdnHuiTAQAsdDpGlGAyQ5Rwr8SJtXEze7GxLO3w5XIDvq7F6Rc2ePqO8T3KfFocfkY+OHD0f6sitBXuQnur/925w+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725283591; c=relaxed/simple;
	bh=tdAxk7fpD0jtrHX4ghnakK3f7Dx8Y0RnwL1ShMGYpec=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=a2hl0ioUYJGYUsXmDw4SLD/rTZF8rGkFsFjHaKWnWLtxk0ulno850g5Xxvo249k8+jg/0WGJCfvMX+TxCbX4NYKbmZ7ICAmbgrR+TTGPbQIvik4/doIG0Z706zUx/eisI96IP/RnaUV68lni3cNOCGCLosyg3GpJgEUFWBLE0iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PV/GovAk; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a7a843bef98so426984966b.2
        for <devicetree@vger.kernel.org>; Mon, 02 Sep 2024 06:26:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725283588; x=1725888388; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ll17WnEq2QD1v4kzvbpjRXliFn5RtBtmZ4P8lOA7hyE=;
        b=PV/GovAkVgY2uCWSrT2b8Hrc6v+f81wYTAcfJjLH6tR12QdEN+JOwD1rkTZHTyYY+X
         y04TNBuNGQP3k3FE2BGbSVjECrj/5lAsfC16H8ZUuN+w3j8fMfoWYrAlEYiq7EHRg4Yh
         O9y/uZXWqiL37Y++8FtVyzAMO8iaEaraZNgVxMJq6Mk/goWOgE5OlXLJ0dxJRpY75dXy
         0Ks6kXeBGyPPOGCpSShwNua1jWW2uKe8Jn3Pp9rSchkaTWf7TrDUGjUJTb4m5zBxD7uv
         nPNVl+qNQXbyUBZIvFHhbIzTaodagXUPYSJnC7LTAONxrPtVJYS4Zsi1pM5YTMmqbFN/
         LjSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725283588; x=1725888388;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ll17WnEq2QD1v4kzvbpjRXliFn5RtBtmZ4P8lOA7hyE=;
        b=WqdbYqDxVe/nFRPqLWYyshqvGZqv5n7E9g01NGqRLXsio8ThCyq5BfxNkwEbwJPQAV
         ESgIdyDO+3ZQvd0b5qGru/W6y2cZCMi80IeZxdJ29/fMdKhQaftMHYQbLXtkGU0JgiKc
         sCeibpGaWUihdSE5T9v2/TcYD9Ue+jfoPJM12i7u9jbQ8wbbsgqHg0skzrLYh+aBQ4pc
         aEZdZhVeQPWdm6IHZ0dqkSct/Qk7xb0ccLtwGoLVn+7OPBZlfERShUHQaFCo9isYxV4x
         BthXRrEo++rP+Ye2TqyFunS2GSwAM0DvODjYrK3wzFn/QgGUARW6oIt/4bQbkPNBskk+
         n3/Q==
X-Forwarded-Encrypted: i=1; AJvYcCVRKpcLtJ0Bb0mrSywaupSe+yqCgHJA/uy1lJ0yjS6I0s6B2Di8Vcfm8hvnADMCOI/gbXU6GyrQM2VB@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7rCt9i0S92ZNODqezWcjS7WFpVpMVTYPyoKaCQep8VgJwTl5/
	tjn6mYeZrEwXKsbya6Z/Pad4AoHa6YwghGSiWUtKvkbigYT2n0dXp1JI3AExVmU=
X-Google-Smtp-Source: AGHT+IFUW2mrfci/YBXvvFfNGauk7QgRCbm/4yOkk5/74QQP3pIjCOiFOKRkNbdfo/C0jQM2jKH/gg==
X-Received: by 2002:a17:907:1c9d:b0:a77:c9cc:f96f with SMTP id a640c23a62f3a-a89d87243fdmr484488266b.7.1725283587638;
        Mon, 02 Sep 2024 06:26:27 -0700 (PDT)
Received: from [192.168.68.116] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a89891d8345sm566658566b.173.2024.09.02.06.26.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Sep 2024 06:26:27 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Michael Walle <michael@walle.cc>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Frank Li <Frank.Li@nxp.com>
Cc: imx@lists.linux.dev
In-Reply-To: <20240821195419.581889-1-Frank.Li@nxp.com>
References: <20240821195419.581889-1-Frank.Li@nxp.com>
Subject: Re: [PATCH v2 1/1] dt-bindings: nvmem: sfp: add ref to
 nvmem-deprecated-cells.yaml
Message-Id: <172528358655.66088.6710003370220252451.b4-ty@linaro.org>
Date: Mon, 02 Sep 2024 14:26:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.2


On Wed, 21 Aug 2024 15:54:19 -0400, Frank Li wrote:
> Add ref nvmem-deprecated-cells.yaml to support old style binding.
> 
> Fix below CHECK_DTBS warning.
> efuse@1e80000: Unevaluated properties are not allowed ('unique-id@1c' was unexpected)
> 
> 

Applied, thanks!

[1/1] dt-bindings: nvmem: sfp: add ref to nvmem-deprecated-cells.yaml
      commit: f0202d0eaa04a74b1cced013394cb346e9900a00

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


