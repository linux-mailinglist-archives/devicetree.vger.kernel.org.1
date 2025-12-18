Return-Path: <devicetree+bounces-247668-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B5823CCA231
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 04:05:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 42CA53063F59
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 03:04:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE3732FFF8D;
	Thu, 18 Dec 2025 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qMFTpekn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82BF72C08AB;
	Thu, 18 Dec 2025 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766027033; cv=none; b=LbxaZAEgfSVWiRGuCQt4Xw6LwZGiMQ7+S+5pUYd2MucZx9lbNQT8Is/35pSzvh7aLU4zV96KcEbwh/UA4IuxSYH2v7q2f0sL9pYkttfI9gvtWwjsXVhAerelo4rsB3LRZf4nNvRt4naYcmLuvecZMvsBWWBvnvZXexRfPENj9Fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766027033; c=relaxed/simple;
	bh=UWiGYQmRYsaK1fVmvHOoUkRyK/0YeQXDOkeZnA3V3TE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=XZDOntS887v/gWfO52tkM7pjrl0951xd60Zi2rxAMuCD0KaEGNP61eLzQo8kdHQF13s3HYRputXKVkcf1pOVDVY9WmfZJ+DrVfRKDCrUUVvriJSXSQN3lde5GFb4zoY+zqVJKrIa1DPsDXnltRkGmNTm6nE9dxPebAOdfE3XQ1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qMFTpekn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3BF32C116B1;
	Thu, 18 Dec 2025 03:03:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766027033;
	bh=UWiGYQmRYsaK1fVmvHOoUkRyK/0YeQXDOkeZnA3V3TE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=qMFTpeknI632Wgjv9kDViimiSDwTAZBe//BYlgGOAUZNhVx9+Bt+ukuQ5EZFa1frw
	 9QEdQONBy5ff0DDGdZ/p79AGLy7nFVCwWIXubsDMKpSTfp/Xzdzngv9NOjD4zJ7i66
	 5YTs0xM0RD7qRsxYkNTK8nxail7Y7FqJPeoqCIRJMQTy+QRtpgRbGCGDerbKhnFQiw
	 TqeMhaZOPTCi0BWCf1fwKpO/FrsOJVDIyFouKBLLzXhN4JDjEcH6f+j1wZ9agTrQSp
	 k5eeZ88KfT6D69CmgeGMcbynQHP7jNCmT4+Vwe9beQN/c1ewhqUzbaHzarJkWLG5pw
	 o3bH7b8zLLXsA==
From: Bjorn Andersson <andersson@kernel.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	konrad.dybcio@oss.qualcomm.com,
	dmitry.baryshkov@oss.qualcomm.com,
	Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: aiqun.yu@oss.qualcomm.com,
	tingwei.zhang@oss.qualcomm.com,
	trilok.soni@oss.qualcomm.com,
	yijie.yang@oss.qualcomm.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4] dt-bindings: sram: Document qcom,kaanapali-imem and its child node
Date: Wed, 17 Dec 2025 21:11:52 -0600
Message-ID: <176602747932.229487.5206861377272854808.b4-ty@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251123-knp-soc-binding-v4-1-42b349a66c59@oss.qualcomm.com>
References: <20251123-knp-soc-binding-v4-1-42b349a66c59@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sun, 23 Nov 2025 23:31:54 -0800, Jingyi Wang wrote:
> On Qualcomm Kaanapali platform, IMEM is a block of SRAM shared across
> multiple IP blocks which can falk back to "mmio-sram". Documnent it and
> its child node "qcom,pil-reloc-info" which is used for collecting
> remoteproc ramdumps.
> 
> 

Applied, thanks!

[1/1] dt-bindings: sram: Document qcom,kaanapali-imem and its child node
      commit: 6c4bbcdad042b876c8e480ed75121756b1acfde7

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

