Return-Path: <devicetree+bounces-69694-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B878D12B8
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 05:35:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0FBB61F22C87
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 03:35:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7EBE71743;
	Tue, 28 May 2024 03:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OqFocltI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ECBC71738;
	Tue, 28 May 2024 03:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716867174; cv=none; b=gtx1opmejEJQrYXMplQE0MleVtlKd/YRSmDncXhuoKWnD4JD+dr3+SBguB5khw91j8+idtC5z1oKHW7BS910yy80VUGsbaUE82iPkuz5QDVXfAXTtJFkt0e1fAlo21sfmlGImD9pGsSqZ2qMbsLbkFc9/jqmuNVOD2rcp4QT4hU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716867174; c=relaxed/simple;
	bh=3F/iaj0sTdKEfYQ0arvZB59GOP1po3xc0soM7qZz6PU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Lz5ReMRWtCiab0iyH8aqBxeERnqokQOo6oMGPFbpPAHmJY4sDEWTHetv5iB9Qh1A97zVRu6L0DN1lRIgbLsrDsmHkmqx+YMc+CLV6Pwnp59L5GMlGc51uXYXv7blc4INIyke3mbXgOOYkfwsPCGsyGYqs736VKprHSDPU06n7bQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OqFocltI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A258AC3277B;
	Tue, 28 May 2024 03:32:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716867174;
	bh=3F/iaj0sTdKEfYQ0arvZB59GOP1po3xc0soM7qZz6PU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OqFocltIbdFzaKisUygv8yxZG4W/JiwZFNtF1U5K0YP3gdpSawVb0o+Ck2XaSICV6
	 xW93I6ZrUGLaDeryGBpjRxAJ+E7skovCP8noKxSmMW+8ZsFPSN0X01wj0504rnXlhK
	 GLdz2HZNkaC894UnEOLW1bksLMDMSLO2wiYM2NhihvkBvyevbcNSnBUziTgy/K52/9
	 xW1NgrUYW7g22jN5iu2PLrhHPNAnwaJ0rhigQrpKEOAmVUBNtBqMXUjo1px8s4OBlL
	 SyiUOqu1S0W89fNnncX0yLBO/g38SM5sfrNQoMzVDrZrDXQQHXNbYLoet3tEurHjP6
	 Tq96luckpkxTg==
From: Bjorn Andersson <andersson@kernel.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	Steev Klimaszewski <steev@kali.org>
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp: Set status = "reserved" on PSHOLD
Date: Mon, 27 May 2024 22:32:17 -0500
Message-ID: <171686715156.523693.3470722678035389426.b4-ty@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240510-topic-8280_off-v1-1-bcc70cda449e@linaro.org>
References: <20240510-topic-8280_off-v1-1-bcc70cda449e@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Fri, 10 May 2024 15:39:59 +0200, Konrad Dybcio wrote:
> On most devices, TZ seems to be blocking access to the PSHOLD reboot
> register. This seems to be TZ, as even kicking the hypervisor doesn't
> seem to make it writable.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: sc8280xp: Set status = "reserved" on PSHOLD
      commit: 8a1fd54d007279207c1dfe090084749706fb413b

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

