Return-Path: <devicetree+bounces-204019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 304ACB23B59
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 23:56:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E0BD66E5DC0
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 21:56:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FF682DE1FA;
	Tue, 12 Aug 2025 21:56:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hPlAnokc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71DC72DA75B;
	Tue, 12 Aug 2025 21:56:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755035797; cv=none; b=Tj73BPWGxJvRJ/8iCa7F3CxB7alIKJp+wpvtb5WHJbKJPIYR8IJs5ZJVZ2lvKu28EKMWHnHDhYUYtY/bYXcMIyhchFZ/chKY8IHLd37X+ot1iEwulsj5gakvO5jSGV1WUyywm90HM8VRo1XR6sPwSwvOdzZrYajh7haJ9iUoNTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755035797; c=relaxed/simple;
	bh=Q3c4MC5rDf2gMQI33FsItoO2jYwr1g+W2GEJzxzNhUE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=a6UBy1A7amA38vySXCUyyfnlhSFX55WKUVxa9U4PTQG3yoUvTNdUkA7Vo30lo/V3i6Z1jYAFnV1n5TW4sFaQwUcymCB2bmZy7FmlkhlTnb1zNDa1v428q9e7IX+B9W6lrIyuWSRXxd0VWPj4btf4RGkzSHvZfQqpvXo5REPCbY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hPlAnokc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0428CC4CEF0;
	Tue, 12 Aug 2025 21:56:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755035795;
	bh=Q3c4MC5rDf2gMQI33FsItoO2jYwr1g+W2GEJzxzNhUE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=hPlAnokccbRTu189OBuTxCb7KrbgpZWBudkr2/0OEUboXVU1paW+SXQzGwpDYJXiv
	 yspjbTO6oP8stTmQx9F0JBc643DoBGCoCPETNAmll5k1FQzqFBMMYYQ4o6QsZngpDp
	 g6LX9BG1Z4Ob+78VFq78zdZCLYa4rJk+CXj9x5yFzWUWfhlFqm4ZcK1lIij0GtXZxs
	 CoJ9syEFrE5UCbgs2VbYUpsz81a/D/low2DE3RXjPvCNPdg8FMqva4pLSJrfzejLAC
	 BEcUgd277BzX6bbL3oIrvnB1Yi2yE2oD+/HFOIlrC6jgDsvfWuQW0bj12HGUf0iCB5
	 tqxzh9uLECEVg==
From: Bjorn Andersson <andersson@kernel.org>
To: cros-qcom-dts-watchers@chromium.org,
	konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Pushpendra Singh <quic_pussin@quicinc.com>
Cc: kernel@quicinc.com,
	kernel@oss.qualcomm.com
Subject: Re: [PATCH v2] arm64: dts: qcom: sc7280: Add support for two additional DDR frequencies
Date: Tue, 12 Aug 2025 16:56:18 -0500
Message-ID: <175503322845.231048.8592460381842700019.b4-ty@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250702000120.2902158-1-quic_pussin@quicinc.com>
References: <20250702000120.2902158-1-quic_pussin@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 02 Jul 2025 05:31:20 +0530, Pushpendra Singh wrote:
> The SC7280 SoC now supports two additional frequencies. This patch
> add those frequencies to the BWMON OPP table and updates the frequency
> mapping table accordingly.
> 
> These changes do not impact existing platforms, as the updated mapping
> only affects the highest OPP. On any given platform, this will continue
> to vote for the maximum available OPP.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: qcom: sc7280: Add support for two additional DDR frequencies
      commit: 393d69df0fda903dc41e071fef76baf485510672

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

