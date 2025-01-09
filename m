Return-Path: <devicetree+bounces-136973-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC6DA07248
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 10:56:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 868211888F60
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 09:57:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7D0321576F;
	Thu,  9 Jan 2025 09:56:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="byV23tlw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DD4F215766;
	Thu,  9 Jan 2025 09:56:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736416610; cv=none; b=UebSAe1QoCdDr781XX1GREWbYQ1iwUwmVNoxANNPpiA2OZDIPL/iTAAX3xBqy90zxk9wLlVjqdRs64MpyBmSWFYB+8B630U75Y3E/NRbHROuKwFHRJaoDGzwgLMrxIv5NYUrJfJivohIrIk8PGdqJE9RqQyWmlfTDpEe8KDeFZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736416610; c=relaxed/simple;
	bh=64XnG81dvegszDHatnKGkr+uKpnq7BE2fBkdTFvV69A=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=rBsbpgYJqxBwhnTvkeIMy5qkHPjHJcsh/GEGSS+icDo9p1wN1dHYaIkSwstaehseGz6P2Zyw7IOU7AZFR+WcJafBNEQ2T4aR9hZ8hW1TRNVwNU10rDfO9uKFisRQiExDqlkfUygnGJzonqLoFkjmJlVLuL2GGU9TDMEgxN2nhDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=byV23tlw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E21C3C4CED2;
	Thu,  9 Jan 2025 09:56:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736416610;
	bh=64XnG81dvegszDHatnKGkr+uKpnq7BE2fBkdTFvV69A=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=byV23tlwc2Kj2rqomAIqJlzpgKdiN7z/7CJ5cZh9W+6l4usMaF/VD/KP7o8lWnL25
	 lMW48OWGUjuRuwVCWlE9ZdqzjOTt2R/0BVO7QP93hevXH3sYFYDMAqIie1LN1JYXQp
	 mjATNsKy2ti1Ll90GyLYwhSDLd3A4e23//QuOmxVNHrwsXfvoWS/rJOAsMD9PHHsAJ
	 Cd5TJC9fb8d6IbPyEyvl2+t20XPlgQsuIHbqjoAAbtjuPn+IWqI9p0FHXfeTbtM4ky
	 ryVvLT4ljxcIuP+d6rZBx8wLhsbeDj3fprq97CoG6PYwzfFMvm4strI9WfGyr7OW1e
	 0TBo3W5GoUlJg==
From: Lee Jones <lee@kernel.org>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Stanislav Jakubek <stano.jakubek@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <Z1_9ROiI2ZHKsbAD@standask-GA-A55M-S2HP>
References: <Z1_9ROiI2ZHKsbAD@standask-GA-A55M-S2HP>
Subject: Re: (subset) [PATCH v4] dt-bindings: mfd: sprd,sc2731: reference
 sprd,sc2731-efuse bindings
Message-Id: <173641660766.2550513.6922552989282608838.b4-ty@kernel.org>
Date: Thu, 09 Jan 2025 09:56:47 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.13.0

On Mon, 16 Dec 2024 11:13:24 +0100, Stanislav Jakubek wrote:
> Directly reference the sc2731-efuse bindings to simplify the schema.
> Remove the duplicate example from the efuse bindings.
> While at it, add the "pmic_adc" label that was missed during the
> initial YAML conversion.
> 
> 

Applied, thanks!

[1/1] dt-bindings: mfd: sprd,sc2731: reference sprd,sc2731-efuse bindings
      commit: 81b82147e7114ed78c819d1157db45b5b848a7d6

--
Lee Jones [李琼斯]


