Return-Path: <devicetree+bounces-1859-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2067A8A20
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 19:10:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EBD952819F1
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 17:10:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45BF63E49F;
	Wed, 20 Sep 2023 17:10:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352E23D399
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 17:10:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33C01C433CA;
	Wed, 20 Sep 2023 17:10:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695229810;
	bh=bB0qjLN3xu5fQIW9naPhTUwyRS4e4yTiLxdyWnBr1FM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=JOI+g9FUzO2kYK0xRnWTKznj1kBkZ1EwHnucg1uwQMzzb4zy8AUMIZ1mMkDbzvWEH
	 NMg98QzVe+3k/okbzfrIG1S2TqqXr36Yhwu8D40vys7/gOikX1rnwqn64r0mobbwsE
	 38+PIozAsPvGCDw3UjdUONdCQgXXlLQPIMYF7bpJB05j+85710wpEvOsGyLeuu6bTr
	 dpnMQ1+BXJLFzjvGPrrpJL426D+yDVAm8tU72dMISJWXir+vCw9Ou2Si8iTxxEBcD/
	 dQEQlTidWHSrOVmv3zM0RqfuC56JH+sF91OXb2U8K1wSdGpry+AnBVGniE+ZCAO8Te
	 KitgXm6KnXpHA==
From: Bjorn Andersson <andersson@kernel.org>
To: agross@kernel.org,
	konrad.dybcio@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	robimarko@gmail.com,
	quic_gurus@quicinc.com,
	Danila Tikhonov <danila@jiaxyga.com>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: firmware: document Qualcomm SM7150 SCM
Date: Wed, 20 Sep 2023 10:13:58 -0700
Message-ID: <169523004955.2665018.14207587632973139123.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230913194418.30272-1-danila@jiaxyga.com>
References: <20230913194418.30272-1-danila@jiaxyga.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 13 Sep 2023 22:44:18 +0300, Danila Tikhonov wrote:
> Document the compatible for Qualcomm SM7150 SCM.
> 
> 

Applied, thanks!

[1/1] dt-bindings: firmware: document Qualcomm SM7150 SCM
      commit: eb3da369ccd07c0e3d65cd9cd31ca44f9f709673

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

