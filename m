Return-Path: <devicetree+bounces-4009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF6747B0FFE
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 02:30:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 153D7281BA5
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 00:30:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E66C399;
	Thu, 28 Sep 2023 00:30:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D83A137C
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 00:30:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 79B0FC433CB;
	Thu, 28 Sep 2023 00:30:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695861003;
	bh=bMT9IxhC+TNBsZCKniLy1v2Qfy6SFvVS8eBjXCrZ3BI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=hvA+oy0tl44XIOyXLhCwdasZIY8+R/RFvsM2YCWymp4MhJDBJ3QL0yYAHK7pApCrl
	 KHJYURAXxaz9D/JNABijsONbhSXSfD6jHrFAX6nnobRN2jOgiSMaq+qqu96EUF4qzg
	 lwhiGs1aH8RQ93+JsW/3Fc12rRiXPQo6puQm9QXnxGEVYMmHTd6f5gw+nIxvYyKQvb
	 7k9AhFHO9V7/TIa9slJAqI+TxpYP5z0NcGSu3xI+ADQWSo6GbS7ZUJ/V8ScvQ8TG+r
	 o+km8BWuNckna4saUxEBftiElcY+v8WyIlMvKJjjj+dnfErA+miwCftkbGPZCdTNqh
	 Hds7TEdZIR9BA==
From: Bjorn Andersson <andersson@kernel.org>
To: linux-arm-msm@vger.kernel.org,
	=?UTF-8?q?Matti=20Lehtim=C3=A4ki?= <matti.lehtimaki@gmail.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] Add rpm-master-stats nodes for MSM8226 and MSM8974
Date: Wed, 27 Sep 2023 17:34:07 -0700
Message-ID: <169586125032.1226038.15416891451357190920.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230922003533.107835-1-matti.lehtimaki@gmail.com>
References: <20230922003533.107835-1-matti.lehtimaki@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Fri, 22 Sep 2023 03:35:31 +0300, Matti Lehtimäki wrote:
> Add rpm-master-stats nodes and the required RPM MSG RAM slices
> for MSM8226 and MSM8974.
> 
> Matti Lehtimäki (2):
>   ARM: qcom: msm8226: Add rpm-master-stats node
>   ARM: qcom: msm8974: Add rpm-master-stats node
> 
> [...]

Applied, thanks!

[1/2] ARM: qcom: msm8226: Add rpm-master-stats node
      commit: bd837be0ff3879209df6fb85cf9e22fd1ba7f79b
[2/2] ARM: qcom: msm8974: Add rpm-master-stats node
      commit: 02c58ac774a03ffefd3708f9c17ea4d911e0ade7

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

