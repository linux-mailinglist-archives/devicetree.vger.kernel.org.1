Return-Path: <devicetree+bounces-52874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 620D088A4B0
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 15:36:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 98AFA2E6C64
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 14:36:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C82BE1B6FD6;
	Mon, 25 Mar 2024 11:29:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xOj+/INo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D9B1B7F47
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 11:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711364723; cv=none; b=uRI0x+6ym1j8rAedgQPEWuBP+2baRPTmOg3fP+qfYl5EFp+gF9bf2jfAnKRy1WSIu2xGNYsnNxDM2dj6ScitdUwaeIfTSZhb4xATmkbUM+AJChcLTL6FELprfPZXJzjrjboNWGCUybbMAIfNP2X8eiBHwGBkV81kN+q/9EG7zh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711364723; c=relaxed/simple;
	bh=Y2nmC+14ezRMy2mustue2MVUzVXwhFpv6ampXT6eUHg=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=B82iUx9wz29vZA5BuQPrOsTO7fhwQQPoCNubNJt/NRCCWekZ6ofLIhtIUvQaueYB+Y+PDpO+aWd66s5MuNHJIyu2430Ow4p5C3xAkIFKppXiWetzR18hvMIbRaXa/1YStwJggjYSmEEk2Oqy1eS38+YVVKXLAbiXzafiiwonK/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xOj+/INo; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-414881d8956so5640905e9.3
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 04:05:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711364720; x=1711969520; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wsjoNh+K8kiEw/9D4H6Eni8rIjOxLmAIKVvEa2HpqNg=;
        b=xOj+/INoYkyS4CfUNaK387Z4RrUDm/SPaTVARPxeFGeiizHmt8LbuK7UJ2rOEJV2R5
         DsxC+BBv2ffiw22F7BqLSwEAANP/zmu7NUtuRRXdijV+8c4Ur7C+92x7tS4lNIb/vc26
         76S+w8+/WhEJrAbIpZ90U2fCmdlLLRtxEFXvhxIg3SddXWnYLusdBxijD83aLa57TNS9
         7SbYtlc6qo1AdCjznK7LhVUy7eWY3DXd9vM8wX1RhgJFCgw+bwIGhSuiQ3GlTp9j0x7d
         n44gfqyHZQ22d2dbeZ6IIm+nDchUQnAxr1+2TV7KmmRBWk3hXfeDjhjouFi42r9TrJnH
         Y4qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711364720; x=1711969520;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wsjoNh+K8kiEw/9D4H6Eni8rIjOxLmAIKVvEa2HpqNg=;
        b=MXFp9FjJz+6n6LB1e0vh7XSxLFr5fMFguLZwPQ1rmHpe0AmMXhYcuZHwWuxk18G6XF
         Z9qws+ZhrIb+GcJ9SCrEK02AzvpkS2//g04Qh7WFqiZ0rGcAkUBZfNI7Fa+8YNHLdIwM
         FZJUgV6jQZh6peVFegcQ2Zz/FpJ/Ug3b81LrbMEKnYo0OuI54zNflQSRRwbX1/QXm7z4
         Pl09l8gKRPi6dr5Cs1aHZ1MT9nHZOntG7lofITDd/oEEuI4yf/wlh1An1uCC4p0IWGJ9
         uHW02MwegwLCt6JZd6BQBA3pDiBklFurItYDNJBhWSSulEb1kg/pwdtNTUQPKQ+FXEa9
         nB3w==
X-Forwarded-Encrypted: i=1; AJvYcCUOB/WBKvWY2HjDfISvEfVO7gn5Z51+s1UYzfEBTNAojK+slNcCjail86f3Tlf5xEEHhxuDwGTPHgq7Ymw3Zt+sQdaWjpfzrE8EDQ==
X-Gm-Message-State: AOJu0Yy7P/dr2tWQcHZ4ni0dBvvmo2IflXyaMeaVxe9PKx4EmG30PkJl
	PLFSNzujj6eAhrYyRkMl+RoQSE6KbYAYK/Ihr7o+AavgEnS5ZektUp3lmlb6zpA=
X-Google-Smtp-Source: AGHT+IFf2BzSEVIyACoTBERhcHBMEiFMPo7KU1PU5LY5EETHIWOeFxhfF8SpIWBWaQEdNiEhHW38zw==
X-Received: by 2002:a05:600c:1389:b0:414:64d3:f33f with SMTP id u9-20020a05600c138900b0041464d3f33fmr4665364wmf.23.1711364720697;
        Mon, 25 Mar 2024 04:05:20 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.44])
        by smtp.gmail.com with ESMTPSA id gw8-20020a05600c850800b004146dd6bfe2sm8053538wmb.47.2024.03.25.04.05.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 04:05:20 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Brad Larson <blarson@amd.com>,
	Suravee Suthikulpanit <suravee.suthikulpanit@amd.com>,
	Tom Lendacky <thomas.lendacky@amd.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] arm64: dts: amd: use capital "OR" for multiple licenses in SPDX
Date: Mon, 25 Mar 2024 12:05:15 +0100
Message-Id: <171136466537.36729.48377468659514562.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240208105314.129095-1-krzysztof.kozlowski@linaro.org>
References: <20240208105314.129095-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 08 Feb 2024 11:53:14 +0100, Krzysztof Kozlowski wrote:
> Documentation/process/license-rules.rst and checkpatch expect the SPDX
> identifier syntax for multiple licenses to use capital "OR".  Correct it
> to keep consistent format and avoid copy-paste issues.
> 
> 

Applied, thanks!

This was waiting on the lists for some time and no one picked it up, so... let
me know if I should drop it from my tree.

[1/1] arm64: dts: amd: use capital "OR" for multiple licenses in SPDX
      https://git.kernel.org/krzk/linux-dt/c/0ee41698e633d5d370fad06284cfa9b693937499

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

