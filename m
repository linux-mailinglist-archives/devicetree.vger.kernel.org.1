Return-Path: <devicetree+bounces-1973-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C40507A9540
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 16:30:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2D2DDB20A04
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 14:30:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0FBFBA48;
	Thu, 21 Sep 2023 14:29:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF5E9BA26
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 14:29:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0C98C4E74F;
	Thu, 21 Sep 2023 14:29:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695306574;
	bh=4bbc4KFxteB/Ul25CGRhUsPNrRkXu49opVZPwgJoYRY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=cO+X4/GgnHxtTIggHp57WsfT0grOdhO6tbul7FG+POvV+KkKMnzn59Ghk2DDzlZtL
	 AOCYZgeQJHjgzhx/GHpmddYZMcNvn/+VoEzRKEXOewRvhCya7ZG59a57WowOPeNXbt
	 9W2/8adcznrGqEebf/rqhYimiuJAI4HuqQDKUoD8yTTneBDYPT6rXIKTBiy7ZcMGs4
	 dfTPPZh5CC04+Xmx1f998CZcT5Ju5Drjze0UB/Ny7DRJesqfkcVeQo8/Z6YHdTpNa+
	 OHGaOf1IpdzEQlenymzCNjT8xxYtquBD5140sNSSbrTTUIL3nO01q9VgpvFGKwEEUT
	 oB01lwrxnHE8g==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Patrice Chotard <patrice.chotard@foss.st.com>, 
 Raphael Gallais-Pou <rgallaispou@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20230823132224.111326-1-rgallaispou@gmail.com>
References: <20230823132224.111326-1-rgallaispou@gmail.com>
Subject: Re: [PATCH v3] dt-bindings: phy: st: convert phy-stih407-usb to DT
 schema
Message-Id: <169530657238.106263.8150878577535547665.b4-ty@kernel.org>
Date: Thu, 21 Sep 2023 16:29:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3


On Wed, 23 Aug 2023 15:22:24 +0200, Raphael Gallais-Pou wrote:
> Convert the st,stih407-usb2-phy binding to DT schema format.
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: st: convert phy-stih407-usb to DT schema
      commit: d61644df75d07863386e0a66fc7306de8b6c5fb0

Best regards,
-- 
~Vinod



